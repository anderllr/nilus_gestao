unit uFrmCadMotorista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, StdCtrls, DBCtrls, CDBMemo, CLookUp, Mask, CDBEdit,
  CLabel, CGroupBox, DB, Provider, DBClient, ActnList, ImgList, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, Grids, DBGrids,
  CDBGrid, DBXpress, CFind;

type
  TFrmCadMotorista = class(TFrmCadPadrao)
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
    CGroupBox9: TCGroupBox;
    f: TBevel;
    CLabel1: TCLabel;
    DBEidMotorista: TCDBEdit;
    CLabel14: TCLabel;
    DBEstMotorista: TCDBEdit;
    Bevel3: TBevel;
    DBGrid: TCDBGrid;
    FindCidade: TCFind;
    FindMotorista: TCFind;
    procedure cdsPadraoBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidMotoristaExit(Sender: TObject);
    procedure DBEidCnpjCpfExit(Sender: TObject);
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
var
t: TTransactionDesc;
begin
  inherited;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  t.TransactionID := 9998;
//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported

  dmPadrao.dbConexao.StartTransaction(t);
  try
    GravaChave(1, '', nil);
    inherited;

  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
    dmPadrao.dbConexao.Commit(t)
  else
  begin
    dmPadrao.dbConexao.Rollback(t);
  end;
end;

procedure TFrmCadMotorista.cdsPadraoBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
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
    id := cdsPadrao.FieldByName('idMotorista').AsString;
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
      cdsPadrao.FieldByName('idCnpjCpf').AsString := funcao.Mascara(cdsPadrao.FieldByName('idCnpjCpf').AsString, 1, '');

    sql := 'SELECT * FROM Motorista WHERE idCnpjCpf Like ' + quotedstr('%'+idCnpjCpf+'%');
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
  cdsPadrao.FieldByName('idCnpjCpf').AsString := idCnpjCpf;
end;

procedure TFrmCadMotorista.DBEidMotoristaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], [DBEidMotorista]);
end;

procedure TFrmCadMotorista.FormClose(Sender: TObject; var Action: TCloseAction);
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
  Height := 509;
  Width := 645;
end;

end.
