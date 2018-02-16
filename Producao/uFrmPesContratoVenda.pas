unit uFrmPesContratoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, ExtDlgs,
  cxShellBrowserDialog, Menus, cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr,
  Provider, DBClient, ActnList, ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, DBCtrls,
  CDBCheckBox, CLookUp, Mask, CDBEdit, cxCurrencyEdit, cxMaskEdit, cxCalc,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions, System.ImageList, cxTextEdit, cxEditRepositoryItems;

type
  TFrmPesContratoVenda = class(TFrmPadraoPesquisaDevExpress)
    PanEmpresa: TCPanelGradient;
    lblEmpresa: TCLabel;
    lblCNPJ: TCLabel;
    lblInscricao: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    LookidInscEstadual: TCLookUp;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    CLabel23: TCLabel;
    CLabel11: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookDescAbreviadaCliente: TCLookUp;
    LookidCnpjCpfCliente: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidContratoIni: TCDBEdit;
    DBEidContratoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBCKstAtivo: TCDBCheckBox;
    DBCKstCancelado: TCDBCheckBox;
    DBCKstEncerrado: TCDBCheckBox;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    DBEnrOrigFim: TCDBEdit;
    DBEnrOrigIni: TCDBEdit;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraostCancelado: TBooleanField;
    cdsPadraostEncerrado: TBooleanField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraonrOrigIni: TStringField;
    cdsPadraonrOrigFim: TStringField;
    cdsPadraoidContratoIni: TStringField;
    cdsPadraoidContratoFim: TStringField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidCliente: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewidContratoVenda: TcxGridDBColumn;
    DBViewdtEmissao: TcxGridDBColumn;
    DBViewvlContratoVenda: TcxGridDBColumn;
    DBViewstContratoVenda: TcxGridDBColumn;
    DBViewqtProduto: TcxGridDBColumn;
    DBViewvlProduto: TcxGridDBColumn;
    DBViewqtArrobas: TcxGridDBColumn;
    DBViewqtSacas: TcxGridDBColumn;
    DBViewvlIcms: TcxGridDBColumn;
    DBViewvlImposto: TcxGridDBColumn;
    DBViewvlOutrosImp: TcxGridDBColumn;
    DBViewvlIcmsFrete: TcxGridDBColumn;
    DBViewvlFrete: TcxGridDBColumn;
    DBViewvlComissao: TcxGridDBColumn;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididCliente: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGrididContratoVenda: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridvlContratoVenda: TFMTBCDField;
    cdsGridstContratoVenda: TStringField;
    cdsGridqtProduto: TFMTBCDField;
    cdsGridvlProduto: TFMTBCDField;
    cdsGridqtArrobas: TFMTBCDField;
    cdsGridqtSacas: TFMTBCDField;
    cdsGridvlIcms: TFMTBCDField;
    cdsGridvlImposto: TFMTBCDField;
    cdsGridvlOutrosImp: TFMTBCDField;
    cdsGridvlIcmsFrete: TFMTBCDField;
    cdsGridvlFrete: TFMTBCDField;
    cdsGridvlComissao: TFMTBCDField;
    cdsGridvlTotalProdutos: TFMTBCDField;
    cdsGriddescSafra: TStringField;
    DBViewvlTotalProdutos: TcxGridDBColumn;
    DBViewdescSafra: TcxGridDBColumn;
    UniQryPadraostPrevisao: TStringField;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1MaskItem1: TcxEditRepositoryMaskItem;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure DBViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actExportaExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa, idCliente : integer;
    Previsao : Boolean;
  end;

var
  FrmPesContratoVenda: TFrmPesContratoVenda;

implementation

uses uFuncao, uDmPadrao, uDmFind, uFrmPrincipal;
{$R *.dfm}

procedure TFrmPesContratoVenda.actExportaExcelExecute(Sender: TObject);
begin
  DBViewqtProduto.PropertiesClass := TcxTextEditProperties;
  DBViewqtSacas.PropertiesClass := TcxTextEditProperties;
  DBViewqtArrobas.PropertiesClass := TcxTextEditProperties;
  inherited;
  DBViewqtProduto.PropertiesClass := TcxCurrencyEditProperties;
  DBViewqtSacas.PropertiesClass := TcxCurrencyEditProperties;
  DBViewqtArrobas.PropertiesClass := TcxCurrencyEditProperties;
  TcxCurrencyEditProperties(DBViewqtProduto.Properties).DisplayFormat := ' ,0.00;- ,0.00';
  TcxCurrencyEditProperties(DBViewqtSacas.Properties).DisplayFormat := ' ,0.00;- ,0.00';
  TcxCurrencyEditProperties(DBViewqtArrobas.Properties).DisplayFormat := ' ,0.00;- ,0.00';
end;

procedure TFrmPesContratoVenda.actPesquisarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT con.idEmpresa, con.idCadEmpresa, con.idCliente, cad.descAbreviada, ' +
         ' idContratoVenda, dtEmissao, vlContratoVenda, stContratoVenda, con.qtProduto, ' +
         ' con.vlProduto, con.qtArrobas, con.qtSacas, vlIcms, vlImposto, vlOutrosImp, vlIcmsFrete, ' +
         ' vlFrete, vlComissao, SUM(vlTotalProduto) vlTotalProdutos, s.descSafra FROM ContratoVenda con ' +
         ' INNER JOIN vCadClienteContabil cad ON con.idCliente = cad.idCliente INNER JOIN Safra s ' +
         ' ON con.idSafra = s.idSafra AND con.idEmpresa = s.idEmpresa WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND con.idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND con.idCliente = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND con.idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND con.idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idContratoIni').AsString) <> '' then
    sql := sql + ' AND idContratoVenda >= ' + QuotedStr(cdsPadrao.FieldByName('idContratoIni').AsString);
  if trim(cdsPadrao.FieldByName('idContratoFim').AsString) <> '' then
    sql := sql + ' AND idContratoVenda <= ' + QuotedStr(cdsPadrao.FieldByName('idContratoFim').AsString);
  if trim(cdsPadrao.FieldByName('nrOrigIni').AsString) <> '' then
    sql := sql + ' AND nrOriginal >= ' + QuotedStr(cdsPadrao.FieldByName('nrOrigIni').AsString);
  if trim(cdsPadrao.FieldByName('nrOrigFim').AsString) <> '' then
    sql := sql + ' AND nrOriginal <= ' + QuotedStr(cdsPadrao.FieldByName('nrOrigFim').AsString);

  if not Previsao then
  begin
    if cdsPadrao.FieldByName('stAtivo').AsBoolean then
      status := QuotedStr('ATIVO');
    if cdsPadrao.FieldByName('stEncerrado').AsBoolean then
      if trim(status) = '' then
        status := QuotedStr('ENCERRADO')
      else
        status := status + ',' + QuotedStr('ENCERRADO');
    if cdsPadrao.FieldByName('stCancelado').AsBoolean then
      if trim(status) = '' then
        status := QuotedStr('CANCELADO')
      else
        status := status + ',' + QuotedStr('CANCELADO');
    if cdsPadrao.FieldByName('stPrevisao').AsBoolean then
      if trim(status) = '' then
        status := QuotedStr('PREVISÃO')
      else
        status := status + ',' + QuotedStr('PREVISÃO');

    if trim(status) <> '' then
      sql := sql + ' AND stContratoVenda IN (' + status + ')';
  end
  else
  begin
    status := QuotedStr('PREVISÃO');
    sql := sql + ' AND stContratoVenda IN (' + status + ')';
  end;

  sql := sql + ' GROUP BY con.idEmpresa, con.idCadEmpresa, con.idCliente, cad.descAbreviada, idContratoVenda, dtEmissao, ' +
               ' vlContratoVenda, stContratoVenda, con.qtProduto,  con.vlProduto, con.qtArrobas, con.qtSacas, vlIcms, ' +
               ' vlImposto, vlOutrosImp, vlIcmsFrete,  vlFrete, vlComissao, s.descSafra ';

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
//  inherited;
end;

procedure TFrmPesContratoVenda.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesContratoVenda.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TFrmPesContratoVenda.DBViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not (formulario.FindComponent('cdsGrid') as TClientDataSet).IsEmpty then
    close;
end;

procedure TFrmPesContratoVenda.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidCliente;
  idCliente := 0;
  WindowState := wsNormal;
end;

procedure TFrmPesContratoVenda.FormShow(Sender: TObject);
begin
  inherited;
  Height := 650;
  Width := 1150;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stCancelado').AsBoolean := false;
  cdsPadrao.FieldByName('stEncerrado').AsBoolean := true;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBCKconsolidafilial.Visible := filial;

  //verifica se o idCliente é maior que zero se for desabilita o campo
  if idCliente > 0 then
  begin
    cdsPadrao.FieldByName('idCliente').AsInteger := idCliente;
    funcao.SomenteLeitura([DBEidCliente], true);
    if not DBCKconsolidafilial.Enabled then
      cdsPadraoconsolidafilial.AsString := 'N';
    actPesquisar.Execute;
  end;

  if Previsao then
  begin
    DBCKstAtivo.Visible := False;
    DBCKstEncerrado.Visible := False;
    DBCKstCancelado.Visible := False;
  end;

end;

end.
