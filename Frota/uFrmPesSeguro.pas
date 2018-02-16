unit uFrmPesSeguro;

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
  cxGrid, StdCtrls, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLookUp,
  Mask, DBCtrls, CDBEdit, cxCurrencyEdit, cxCalendar, ClipBrd, cxNavigator,
  System.Actions;

type
  TFrmPesSeguro = class(TFrmPadraoPesquisaDevExpress)
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    CLabel7: TCLabel;
    CLabel23: TCLabel;
    LblCad: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    LookFornecedorFiscal: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidSeguroIni: TCDBEdit;
    DBEidSeguroFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidSeguroIni: TIntegerField;
    cdsPadraoidSeguroFim: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidSeguradora: TIntegerField;
    CLabel1: TCLabel;
    DBEidSeguradora: TCDBEdit;
    LookSeguradora: TCLookUp;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididSeguro: TIntegerField;
    cdsGridvlSeguro: TFMTBCDField;
    cdsGriddescMaquina: TStringField;
    cdsGridhr_kmAtual: TFMTBCDField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGriddescCadFornecedor: TStringField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidSeguro: TcxGridDBColumn;
    DBViewvlSeguro: TcxGridDBColumn;
    DBViewdescMaquina: TcxGridDBColumn;
    DBViewhr_kmAtual: TcxGridDBColumn;
    DBViewdtEmissao: TcxGridDBColumn;
    DBViewdtVencimento: TcxGridDBColumn;
    DBViewdescCadFornecedor: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure FormShow(Sender: TObject);
    procedure DBViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa : string;
  end;

var
  FrmPesSeguro: TFrmPesSeguro;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao;
{$R *.dfm}

procedure TFrmPesSeguro.actPesquisarExecute(Sender: TObject);
var
  sql, status : string;
begin
  sql  := 'SELECT DISTINCT S.idEmpresa, S.idCadEmpresa, idSeguro, vlSeguro, M.descMaquina, S.hr_kmAtual, ' +
          ' dtEmissao, dtVencimento, descCadFornecedor FROM MaquinaSeguro S INNER JOIN vcadEmpresaFiscal cad ' +
          ' ON S.idEmpresa = cad.idEmpresa AND S.idCadEmpresa = cad.idCadEmpresa ' +
          ' INNER JOIN vCadFornecedorContabil F ON S.idFornecedor = F.idFornecedor INNER JOIN Maquina M ' +
          ' ON S.idMaquina = M.idMaquina' +
          ' WHERE S.idEmpresa = ' + DBEidEmpresa.Text +
          ' AND S.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(cdsPadrao.FieldByName('idMaquina').AsString) <> '' then
    sql := sql + ' AND S.idMaquina = ' + cdsPadrao.FieldByName('idMaquina').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idFornecedor').AsString) <> '' then
    sql := sql + ' AND S.idFornecedor = ' + QuotedStr(cdsPadrao.FieldByName('idFornecedor').AsString);
  if trim(cdsPadrao.FieldByName('idSeguroIni').AsString) <> '' then
    sql := sql + ' AND S.idSeguro >= ' + QuotedStr(cdsPadrao.FieldByName('idSeguroIni').AsString);
  if trim(cdsPadrao.FieldByName('idSeguroFim').AsString) <> '' then
    sql := sql + ' AND S.idSeguro <= ' + QuotedStr(cdsPadrao.FieldByName('idSeguroFim').AsString);
  Screen.Cursor := crSqlWait;
  dmPadrao.dbConexao.CloseDataSets;
  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
//  Clipboard.AsText := sql;
  cdsGrid.Active := true;
  screen.Cursor := crDefault;
  if cdsGrid.RecordCount = 0 then
  begin
    ShowMessage('Sem dados para listar!');
    exit;
  end;

  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
//  inherited;
end;

procedure TFrmPesSeguro.ConfigLookEmpresa;
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

procedure TFrmPesSeguro.DBViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not (formulario.FindComponent('cdsGrid') as TClientDataSet).IsEmpty then
    close;
end;

procedure TFrmPesSeguro.FormCreate(Sender: TObject);
begin
  inherited;
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
  WindowState := wsNormal;
end;

procedure TFrmPesSeguro.FormShow(Sender: TObject);
begin
  inherited;
  Height := 500;
  Width := 1000;
  FrmPesSeguro.cdsPadrao.FieldByName('idEmpresa').AsString := idEmpresa;
  FrmPesSeguro.cdsPadrao.FieldByName('idCadEmpresa').AsString := idCadEmpresa;
end;

end.

