unit uFrmPesTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, EditAlign, CEdit, System.Actions, System.ImageList;

type
  TFrmPesTitulos = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanCliente: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookidCnpjCpfCliente: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel11: TCLabel;
    DBEidTituloIni: TCDBEdit;
    DBEidTituloFim: TCDBEdit;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtEmissaoFim: TCDBEdit;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidDocSerie: TStringField;
    CGroupBox1: TCGroupBox;
    DBCKstEstornado: TCDBCheckBox;
    DBCKstLiquidado: TCDBCheckBox;
    DBCKstAberto: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostAberto: TBooleanField;
    cdsPadraostLiquidado: TBooleanField;
    cdsPadraostEstornado: TBooleanField;
    FindCliente: TCFind;
    CGroupBox2: TCGroupBox;
    DBCKtitReceber: TCDBCheckBox;
    DBCKtitPagar: TCDBCheckBox;
    CLabel3: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel10: TCLabel;
    DBEdtVencimentoFim: TCDBEdit;
    CGroupBox3: TCGroupBox;
    BtnPesquisar: TCBitBtn;
    BtnFechar1: TCBitBtn;
    CLabel30: TCLabel;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    cdsPadraodtEmissaoIni: TDateTimeField;
    cdsPadraodtEmissaoFim: TDateTimeField;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    cdsPadraotitPagar: TBooleanField;
    cdsPadraotitReceber: TBooleanField;
    cdsPadraoprevPagar: TBooleanField;
    cdsPadraoprevReceber: TBooleanField;
    EDsomaPagar: TCEdit;
    EDsomaReceber: TCEdit;
    EDsomaResultado: TCEdit;
    sdsConfigFinancCons: TSQLDataSet;
    dspConfigFinancCons: TDataSetProvider;
    cdsConfigFinancCons: TClientDataSet;
    cdsConfigFinancConsidEmpresa: TIntegerField;
    cdsConfigFinancConsCorTREC: TStringField;
    cdsConfigFinancConsCorTPAG: TStringField;
    cdsConfigFinancConsCorPREC: TStringField;
    cdsConfigFinancConsCorPPAG: TStringField;
    cdsConfigFinancConsCorREC: TStringField;
    cdsConfigFinancConsCorPAG: TStringField;
    CGroupBox4: TCGroupBox;
    DBCKprevPagar: TCDBCheckBox;
    DBCKprevReceber: TCDBCheckBox;
    DBEidTitulo: TCDBEdit;
    cdsPadraoidTituloIni: TStringField;
    cdsPadraoidTituloFim: TStringField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure SomaGeral;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    parSql : string;
  public
    { Public declarations }
    //Variavel criada para comparações, e para
    //realizar a procedure spVerStatusTPag
  end;

var
  FrmPesTitulos: TFrmPesTitulos;

implementation

uses uFuncao, uFrmPrincipal, uCadTituloRec, uCadTituloPag, uCadPrevisaoRec,
  uCadPrevisaoPag, uDmPadrao, uFrmPadraoPesquisa;

{$R *.dfm}

procedure TFrmPesTitulos.actExecutarExecute(Sender: TObject);
var
  sql, status, tpConsulta : string;
begin
  parSql := '';
  //Preenche a tabela de cores
  with cdsConfigFinancCons do
  begin
    Active := false;
    CommandText := 'SELECT * FROM ConfigFinancCons WHERE idEmpresa = ' + DBEidEmpresa.Text;
    Active := true;
  end;
  status := '';
  tpConsulta := '';
  sql := ' WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND idCadGeral = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('dtEmissaoIni').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtEmissaoIni').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtEmissaoFim').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtEmissaoFim').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoIni').AsString) <> '' then
    sql := sql + ' AND dtVencimento >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoFim').AsString) <> '' then
    sql := sql + ' AND dtVencimento <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoFim').AsDateTime);
  if trim(cdsPadrao.FieldByName('idTituloIni').AsString) <> '' then
    sql := sql + ' AND nrTitulo >= ' + QuotedStr(cdsPadrao.FieldByName('idTituloIni').AsString);
  if trim(cdsPadrao.FieldByName('idTituloFim').AsString) <> '' then
    sql := sql + ' AND nrTitulo <= ' + QuotedStr(cdsPadrao.FieldByName('idTituloFim').AsString);

  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stAberto').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('ABERTO')
    else
      status := status + ',' + QuotedStr('ABERTO');
  if cdsPadrao.FieldByName('stLiquidado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('LIQUIDADO')
    else
      status := status + ',' + QuotedStr('LIQUIDADO');
  if cdsPadrao.FieldByName('stEstornado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('ESTORNADO')
    else
      status := status + ',' + QuotedStr('ESTORNADO');

  if trim(status) = '' then
    status := QuotedStr(status);

//  sql := sql + ' AND stTitulo IN (' + status + ')';

  sql := sql + ' AND stParcela IN (' + status + ')';

  if cdsPadrao.FieldByName('titPagar').AsBoolean then
    tpConsulta := QuotedStr('TPAG');
  if cdsPadrao.FieldByName('titReceber').AsBoolean then
    if trim(tpConsulta) = '' then
      tpConsulta := QuotedStr('TREC')
    else
      tpConsulta := tpConsulta + ',' + QuotedStr('TREC');
  if cdsPadrao.FieldByName('prevReceber').AsBoolean then
    if trim(tpConsulta) = '' then
      tpConsulta := QuotedStr('PREC')
    else
      tpConsulta := tpConsulta + ',' + QuotedStr('PREC');
  if cdsPadrao.FieldByName('prevPagar').AsBoolean then
    if trim(tpConsulta) = '' then
      tpConsulta := QuotedStr('PPAG')
    else
      tpConsulta := tpConsulta + ',' + QuotedStr('PPAG');

  if trim(tpConsulta) = '' then
    tpConsulta := QuotedStr(tpConsulta);

  sql := sql + ' AND tpConsulta IN (' + tpConsulta + ')';

//  showmessage(sql);
  parSql := sql;
  cdsGrid.Active := false;
  cdsGrid.CommandText := 'SELECT * FROM vConsultaTitulos ' + sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  SomaGeral;
  if trim(cdsGrid.IndexFieldNames) = '' then
  begin
    cdsGrid.IndexFieldNames := 'dtVencimento';
    DBGrid.Columns[8].Title.Font.Style := DBGrid.Columns[8].Title.Font.Style + [fsBold];
  end;
  inherited;
end;

procedure TFrmPesTitulos.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesTitulos.DBGridDblClick(Sender: TObject);
begin
//  inherited;
  if cdsGrid.IsEmpty then
    exit;
  if cdsGrid.fieldByName('tpConsulta').AsString = 'TREC' then
  begin
    frmCadTituloRec := TfrmCadTituloRec.create(Self, [cdsGrid.fieldByName('id').AsString]);
    frmCadTituloRec.excluiRec := true;
    frmCadTituloRec.Show;
  end;
  if cdsGrid.fieldByName('tpConsulta').AsString = 'TPAG' then
  begin
    frmCadTituloPag := TfrmCadTituloPag.create(Self, [cdsGrid.fieldByName('id').AsString]);
    frmCadTituloPag.excluiPag := true;
    frmCadTituloPag.Show;
  end;
  if cdsGrid.fieldByName('tpConsulta').AsString = 'PREC' then
  begin
    frmCadPrevisaoRec := TfrmCadPrevisaoRec.create(Self, cdsGrid.fieldByName('id').AsString);
    frmCadPrevisaoRec.Show;
  end;
  if cdsGrid.fieldByName('tpConsulta').AsString = 'PPAG' then
  begin
    frmCadPrevisaoPag := TfrmCadPrevisaoPag.create(Self, cdsGrid.fieldByName('id').AsString);
    frmCadPrevisaoPag.Show;
  end;
 end;

procedure TFrmPesTitulos.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  cor : String;
begin
  inherited;
  if cdsGrid.IsEmpty then
    exit;
  Cor := cdsConfigFinancCons.FieldByName('Cor' +  cdsGrid.FieldByName('tpConsulta').AsString).AsString;
  if Cor = 'clWhite' then
    exit;
  DBGrid.Canvas.Brush.Color := StringToColor(Cor); // coloque aqui a cor desejada
  DBGrid.DefaultDrawDataCell(Rect, DBGrid.columns[datacol].field, State);

end;

procedure TFrmPesTitulos.dsPadraoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if cdsPadrao.State in [dsEdit, dsInsert] then
  begin
    EDsomaPagar.Value := 0;
    EDsomaReceber.Value := 0;
    EDsomaResultado.Value := 0;
  end;
end;

procedure TFrmPesTitulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesTitulos := nil;
end;

procedure TFrmPesTitulos.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
  Width := 780;
  Height := 485;
end;

procedure TFrmPesTitulos.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;  
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stAberto').AsBoolean := false;
  cdsPadrao.FieldByName('stLiquidado').AsBoolean := False;
  cdsPadrao.FieldByName('stEstornado').AsBoolean := False;
  cdsPadrao.FieldByName('titPagar').AsBoolean := false;
  cdsPadrao.FieldByName('titReceber').AsBoolean := false;
  cdsPadrao.FieldByName('prevPagar').AsBoolean := False;
  cdsPadrao.FieldByName('prevReceber').AsBoolean := False;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;

  //trata da consolidação da filial quando vier a consulta da tela de contratos
  if not (DBCKconsolidafilial.Enabled) then
    cdsPadraoconsolidafilial.AsString := 'N';

end;

procedure TFrmPesTitulos.SomaGeral;
var
  sql : string;
begin
  if not cdsGrid.IsEmpty then
  begin
    //Irá executar o sql da consulta pois fazer laço está deixando lento
    sql := 'SELECT SUM(Saldo) AS somaRec FROM vConsultaTitulos ' + parSql + ' AND tpConsulta IN (' + QuotedStr('TREC') + ', ' + QuotedStr('PREC') + ')';
    EDsomaReceber.Value := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('somaRec').AsCurrency;

    sql := 'SELECT SUM(Saldo) AS somaPag FROM vConsultaTitulos ' + parSql + ' AND tpConsulta IN (' + QuotedStr('TPAG') + ' , ' + QuotedStr('PPAG') + ')';
    EDsomaPagar.Value := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('somaPag').AsCurrency;

    EDsomaResultado.Value := EDsomaReceber.Value-EDsomaPagar.Value;
  end;
end;

end.












