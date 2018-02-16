unit uFrmPesAplicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions, uFrmPadraoPesquisa;

type
  TFrmPesAplicacao = class(TFrmPadraoPesqEmpContabil)
    FindFornecedor: TCFind;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsGrid2: TClientDataSet;
    dsGrid2: TDataSource;
    dspGrid2: TDataSetProvider;
    sdsGrid2: TSQLDataSet;
    cdsGrid2idEmpresa: TIntegerField;
    cdsGrid2idAplicacao: TIntegerField;
    cdsGrid2idProduto: TIntegerField;
    cdsGrid2descProduto: TStringField;
    cdsGrid2qtAplicacao: TFMTBCDField;
    cdsGrid2vlAplicacao: TFMTBCDField;
    cdsPadraoidAplicacaoIni: TIntegerField;
    cdsPadraoidAplicacaoFim: TIntegerField;
    cdsPadraoidResultadoIni: TIntegerField;
    cdsPadraoidResultadoFim: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProdDeposito: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    DBEidAplicacaoIni: TCDBEdit;
    CLabel4: TCLabel;
    CLabel3: TCLabel;
    DBEidAplicacaoFim: TCDBEdit;
    CLabel2: TCLabel;
    DBEidResultadoIni: TCDBEdit;
    CLabel1: TCLabel;
    DBEidResultadoFim: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel8: TCLabel;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    CLabel23: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel10: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CLabel9: TCLabel;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididAplicacao: TIntegerField;
    cdsGriddtAplicacao: TSQLTimeStampField;
    cdsGrididSafra: TIntegerField;
    cdsGriddescSafra: TStringField;
    cdsGrididResultado: TIntegerField;
    cdsGriddescResultado: TStringField;
    cdsGrididProdDeposito: TSmallintField;
    cdsGriddescProdDeposito: TStringField;
    cdsGridstAplicacao: TStringField;
    CPanelGradient2: TCPanelGradient;
    CLabel7: TCLabel;
    lblAplicacao: TCLabel;
    DBGridProd: TCDBGrid;
    DBCKconsolidaemp: TCDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure cdsGridAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa : integer;
    idAplicacao : integer;
  end;

var
  FrmPesAplicacao: TFrmPesAplicacao;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind;

{$R *.dfm}

procedure TFrmPesAplicacao.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  idAplicacao := 0;
  status := '';

  if trim(DBEidProduto.Text) = '' then
    sql := 'SELECT * FROM vAplicacao a WHERE 1=1'
  else
    sql := 'SELECT a.* FROM vAplicacao a INNER JOIN vAplicacaoProd p ON a.idEmpresa = p.idEmpresa AND a.idAplicacao = p.idAplicacao ' +
           ' WHERE p.idProduto = ' + funcao.RetornaValorEField(DBEidProduto, 3);

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
    sql := sql + ' AND a.idEmpresa = ' + cdsPadraoidEmpresa.AsString;

  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND a.dtAplicacao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND a.dtAplicacao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idAplicacaoIni').AsString) <> '' then
    sql := sql + ' AND a.idAplicacao >= ' + QuotedStr(cdsPadrao.FieldByName('idAplicacaoIni').AsString);
  if trim(cdsPadrao.FieldByName('idAplicacaoFim').AsString) <> '' then
    sql := sql + ' AND a.idAplicacao <= ' + QuotedStr(cdsPadrao.FieldByName('idAplicacaoFim').AsString);
  if trim(cdsPadrao.FieldByName('idResultadoIni').AsString) <> '' then
    sql := sql + ' AND a.idResultado >= ' + QuotedStr(cdsPadrao.FieldByName('idResultadoIni').AsString);
  if trim(cdsPadrao.FieldByName('idResultadoFim').AsString) <> '' then
    sql := sql + ' AND a.idResultado <= ' + QuotedStr(cdsPadrao.FieldByName('idResultadoFim').AsString);
  if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
    sql := sql + ' AND a.idResultado = ' + QuotedStr(cdsPadrao.FieldByName('idResultado').AsString);
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND a.idSafra = ' + QuotedStr(cdsPadrao.FieldByName('idSafra').AsString);
  if trim(cdsPadrao.FieldByName('idProdDeposito').AsString) <> '' then
    sql := sql + ' AND a.idProdDeposito = ' + QuotedStr(cdsPadrao.FieldByName('idProdDeposito').AsString);

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidAplicacaoIni.SetFocus;
  inherited;
end;

procedure TFrmPesAplicacao.cdsGridAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsGrid.RecordCount > 0 then
    lblAplicacao.Caption := cdsGrididAplicacao.AsString
  else
    lblAplicacao.Caption := '';
end;

procedure TFrmPesAplicacao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
end;

procedure TFrmPesAplicacao.DBGridDblClick(Sender: TObject);
begin
  if (not cdsGrid.IsEmpty) then
    idAplicacao := cdsGrididAplicacao.AsInteger;
  inherited;
end;

procedure TFrmPesAplicacao.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not cdsGrid.IsEmpty) then
    idAplicacao := cdsGrididAplicacao.AsInteger;
  inherited;
end;

procedure TFrmPesAplicacao.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidAplicacaoIni;
end;

procedure TFrmPesAplicacao.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;

end;

end.
