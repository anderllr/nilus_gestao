unit uFrmCadLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, DB, Provider, DBClient, ActnList, ImgList, StdCtrls,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, FMTBcd,
  CLabel, Mask, DBCtrls, CDBEdit, CGroupBox, SqlExpr, CDBRadioGroup, CFind,
  CLookUp;

type
  TFrmLote = class(TFrmCadPadrao)
    DBRGtpLote: TCDBRadioGroup;
    sdsPadrao: TSQLDataSet;
    CGroupBox2: TCGroupBox;
    DBEdtLote: TCDBEdit;
    DBEidLote: TCDBEdit;
    CLabel2: TCLabel;
    DBEstLote: TCDBEdit;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEdescLote: TCDBEdit;
    CLabel4: TCLabel;
    GPPeriodo: TCGroupBox;
    CLabel5: TCLabel;
    DBEdtLoteIni: TCDBEdit;
    DBEdtLoteFin: TCDBEdit;
    CLabel6: TCLabel;
    TabSheet1: TTabSheet;
    FindLote: TCFind;
    PanEmpresa: TCPanelGradient;
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    dspEmpresa: TDataSetProvider;
    lookidCnpjCpf: TCLookUp;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBEidEmpresa: TCDBEdit;
    CLabel7: TCLabel;
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBRGtpLoteChange(Sender: TObject);
    procedure FindLoteClose(Sender: TObject);
    procedure DBEidLoteExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLote: TFrmLote;

implementation

uses uFrmPrincipal,uFuncao, uDmPadrao;

{$R *.dfm}

procedure TFrmLote.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State in [dsInsert] then
    cdsPadrao.FieldByName('tpLote').AsString := 'O';
end;

procedure TFrmLote.DBEidEmpresaExit(Sender: TObject);
var
  mascara : string;
begin
  inherited;
  mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
  if trim(mascara) = '' then
  begin
    messagedlg('Empresa sem máscara cadastrada! Entre em configuração e informe a máscara!', mtwarning, [mbok], 0);
    close;
    exit;
  end;
end;

procedure TFrmLote.DBEidLoteExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
end;

procedure TFrmLote.DBRGtpLoteChange(Sender: TObject);
begin
  inherited;
 if DBRGtpLote.Value = 'O' then
    GpPeriodo.Enabled:=true
 else
    GpPeriodo.Enabled:=false;
 end;

procedure TFrmLote.FindLoteClose(Sender: TObject);
begin
  inherited;
  if trim(FindLote.Value) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idLote').AsString := FindLote.Value;
    DBEidLoteExit(DBEidLote);
  end;
end;

procedure TFrmLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
frmLote:= nil;
end;

procedure TFrmLote.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 1);
  chave[0] := DBEidLote;


  tab_chave := 'Lote';
  situacao := 'stLote';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
//  Grid := true;
  FindPesquisa := FindLote;
  Height := 311;
  Width := 308;
  foco := DBEidLote;
end;

end.
