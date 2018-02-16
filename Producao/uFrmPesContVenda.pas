unit uFrmPesContVenda;

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
  CDBCheckBox, CLookUp, Mask, CDBEdit;

type
  TFrmPesContVenda = class(TFrmPadraoPesquisaDevExpress)
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
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididCliente: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGrididContratoVenda: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridvlContratoVenda: TFMTBCDField;
    cdsGridstContratoVenda: TStringField;
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
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa, idCliente : integer;
  end;

var
  FrmPesContVenda: TFrmPesContVenda;

implementation

uses uFuncao, uDmPadrao, uDmFind, uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesContVenda.actPesquisarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT con.idEmpresa, con.idCadEmpresa, con.idCliente, cad.descAbreviada, ' +
         ' idContratoVenda, dtEmissao, vlContratoVenda, stContratoVenda FROM ContratoVenda con ' +
         ' INNER JOIN vCadClienteContabil cad ON con.idCliente = cad.idCliente';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND con.idCliente = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND con.idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
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

  if trim(status) <> '' then
    sql := sql + ' AND stContratoVenda IN (' + status + ')';

  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  inherited;
end;

procedure TFrmPesContVenda.ConfigLookEmpresa;
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

procedure TFrmPesContVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesContVenda := nil;
end;

procedure TFrmPesContVenda.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidCliente;
  idCliente := 0;
  WindowState := wsNormal;
end;

procedure TFrmPesContVenda.FormShow(Sender: TObject);
begin
  inherited;
  Height := 500;
  Width := 1000;
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
  end;
end;

end.
