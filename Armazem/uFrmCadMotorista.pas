unit uFrmCadMotorista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  DB, Provider, DBClient, ActnList, ImgList, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls, CPageControl,
  CFind, DBXCommon, FMTBcd, SqlExpr;

type
  TFrmCadMotorista = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    CLabel31: TCLabel;
    DBEdescMotorista: TCDBEdit;
    DBEidCnpjCpf: TCDBEdit;
    DBECnh: TCDBEdit;
    CGroupBox8: TCGroupBox;
    CLabel28: TCLabel;
    CLabel29: TCLabel;
    CLabel32: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    CLabel38: TCLabel;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    DBEcomplemento: TCDBEdit;
    DBEbairro: TCDBEdit;
    DBEendereco: TCDBEdit;
    DBEcep: TCDBEdit;
    DBEnumero: TCDBEdit;
    DBEidCidade: TCDBEdit;
    LookCidade: TCLookUp;
    DBEfone: TCDBEdit;
    LookDDD: TCLookUp;
    DBEfax: TCDBEdit;
    DBEcelular: TCDBEdit;
    DBEemail: TCDBEdit;
    BtnCadCidade: TCBitBtn;
    LookEstado2: TCLookUp;
    f: TBevel;
    CLabel1: TCLabel;
    DBEidMotorista: TCDBEdit;
    CLabel14: TCLabel;
    DBEstMotorista: TCDBEdit;
    Bevel3: TBevel;
    FindCidade: TCFind;
    FindMotorista: TCFind;
    cdsPadraoidMotorista: TSmallintField;
    cdsPadraodescMotorista: TStringField;
    cdsPadraoidCnpjCpf: TStringField;
    cdsPadraoCnh: TStringField;
    cdsPadraoendereco: TStringField;
    cdsPadraonumero: TIntegerField;
    cdsPadraocomplemento: TStringField;
    cdsPadraobairro: TStringField;
    cdsPadraocep: TStringField;
    cdsPadraoidCidade: TIntegerField;
    cdsPadraofone: TStringField;
    cdsPadraofax: TStringField;
    cdsPadraocelular: TStringField;
    cdsPadraoemail: TStringField;
    cdsPadraostMotorista: TStringField;
    sdsMotorista: TSQLDataSet;
    procedure DBEemailExit(Sender: TObject);
    procedure DBEidMotoristaExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidCnpjCpfExit(Sender: TObject);
    procedure cdsPadraoBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMotorista: TFrmCadMotorista;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmPesCnpj;

{$R *.dfm}

procedure TFrmCadMotorista.actSalvarExecute(Sender: TObject);
begin
  inherited;
  GravaChave(1, '', nil);
end;

procedure TFrmCadMotorista.cdsPadraoBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMotorista.DBEemailExit(Sender: TObject);
begin
  inherited;
  BtnSalvar.Click;
end;

procedure TFrmCadMotorista.DBEidCnpjCpfExit(Sender: TObject);
var
id, idCnpjCpf, sql :string;
begin
  inherited;
  if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
    exit
  else
  begin //se existe verifica se já existe cadastro
    idCnpjCpf := cdsPadrao.FieldByName('idCnpjCpf').AsString;
    cdsPadrao.FieldByName('idCnpjCpf').AsString := funcao.Mascara(cdsPadrao.FieldByName('idCnpjCpf').AsString, 1, '');
    id := cdsPadrao.FieldByName('idMotorista').AsString;
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    sql := 'SELECT * FROM Motorista WHERE LTRIM(RTRIM(REPLACE((REPLACE(idCnpjCpf,'+ quotedstr('.')+',' + quotedstr('') + '))'+','+quotedstr('-')+','+quotedstr('')+
           '))) LIKE LTRIM(RTRIM(REPLACE((REPLACE(' + quotedstr(cdsPadrao.FieldByName('idCnpjCpf').AsString) + ',' + quotedstr('.')+',' + quotedstr('') + '))'+','+quotedstr('-')+','+quotedstr('')+  ')))';
    with frmPrincipal.ExecutaSQLRet([DBEidCnpjCpf], '', sql) do
    if (FieldByName('idMotorista').AsInteger > 0 )then
    begin
      cdsPadrao.FieldByName('idMotorista').AsInteger := FieldByName('idMotorista').AsInteger;
    end
    else
      cdsPadrao.FieldByName('idMotorista').AsInteger :=  StrtoInt(id);
      cdsPadrao.FieldByName('idCnpjCpf').AsString := idCnpjCpf;
  end;
  DBEidMotoristaExit(DBEidMotorista);
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  cdsPadrao.FieldByName('idCnpjCpf').AsString := funcao.Mascara(idCnpjCpf, 1, '');
 end;

procedure TFrmCadMotorista.DBEidMotoristaExit(Sender: TObject);
var
sql : string;
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  if (trim(DBEidMotorista.text) = '') then
  begin
    // Auto - Incremento ==================================================================
    sql := 'SELECT MAX(idMotorista) AS idMotorista FROM Motorista ';
    With FrmPrincipal.ExecutaSQLRet([],'',sql) do
    begin
      if (cdsPadrao.State in [dsInsert]) then
        cdsPadrao.FieldByName('idMotorista').AsInteger :=  (FieldByName('idMotorista').AsInteger + 1);
    end;
    //=====================================================================================
  end;
end;

procedure TFrmCadMotorista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadMotorista := nil;
end;

procedure TFrmCadMotorista.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidMotorista;
  foco := DBEidMotorista;
  tab_chave := 'Motorista';
  situacao := 'stMotorista';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindMotorista;
end;

procedure TFrmCadMotorista.FormShow(Sender: TObject);
begin
  inherited;
  Height := 485;
  Width := 635;
end;

end.
