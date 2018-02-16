unit uFrmRelAbastecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpFiscal, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CDBCheckBox, CGroupBox, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, ExtDlgs, cxShellBrowserDialog, Menus,
  cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, cxNavigator, System.Actions, System.ImageList;

type
  TFrmRelAbastecimento = class(TFrmPadraoPesquisaDevExpress)
    FrxRel: TfrxReport;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidAbastecimentoIni: TIntegerField;
    cdsPadraoidAbastecimentoFim: TIntegerField;
    cdsPadraodtAbastecimentoIni: TDateField;
    cdsPadraodtAbastecimentoFim: TDateField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    PanEmpresa: TCPanelGradient;
    CLabel10: TCLabel;
    CDBEdit1: TCDBEdit;
    CDBEdit2: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    lblCliFor: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookCliente: TCLookUp;
    CLabel4: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel5: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel9: TCLabel;
    DBEidFornecedor: TCDBEdit;
    LookRazao: TCLookUp;
    CLabel8: TCLabel;
    LookGerencial: TCLookUp;
    DBEidGerencial: TCDBEdit;
    CLabel1: TCLabel;
    CLabel7: TCLabel;
    DBEidAbastecimentoIni: TCDBEdit;
    DBEidAbastecimentoFim: TCDBEdit;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEdtAbastecimentoFim: TCDBEdit;
    DBEdtAbastecimentoIni: TCDBEdit;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    CBitBtn1: TCBitBtn;
    BtnImprimir: TCBitBtn;
    frxReport1: TfrxReport;
    frxDataset: TfrxDBDataset;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidAbastecimento: TcxGridDBColumn;
    DBViewidProdDeposito: TcxGridDBColumn;
    DBViewidProduto: TcxGridDBColumn;
    DBViewidMaquina: TcxGridDBColumn;
    DBViewidTipoAtividade: TcxGridDBColumn;
    DBViewdtAbastecimento: TcxGridDBColumn;
    DBViewtpAbastecimento: TcxGridDBColumn;
    DBViewtanqueCheio: TcxGridDBColumn;
    DBViewhr_kmAtual: TcxGridDBColumn;
    DBViewqtAbastecimento: TcxGridDBColumn;
    DBViewvlAbastecimento: TcxGridDBColumn;
    DBViewvlTotal: TcxGridDBColumn;
    DBViewbomba: TcxGridDBColumn;
    DBViewdescResponsavel: TcxGridDBColumn;
    DBViewvlUltAbastecimento: TcxGridDBColumn;
    DBViewqtEstoque: TcxGridDBColumn;
    DBViewidSafra: TcxGridDBColumn;
    DBViewidGerencial: TcxGridDBColumn;
    DBViewidResultado: TcxGridDBColumn;
    DBViewidRateio: TcxGridDBColumn;
    DBViewidFornecedor: TcxGridDBColumn;
    DBViewdescMaquina: TcxGridDBColumn;
    DBViewdescProduto: TcxGridDBColumn;
    DBViewdescCadFornecedor: TcxGridDBColumn;
    FindEmpresa: TCFind;
    cdsPadraoexterno: TStringField;
    cdsPadraointerno: TStringField;
    cdsPadraomaquina: TStringField;
    cdsPadraoveiculo: TStringField;
    DBCKinterno: TCDBCheckBox;
    DBCKexterno: TCDBCheckBox;
    DBCKmaquina: TCDBCheckBox;
    DBCKveiculo: TCDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure ConfigLookEmpresa;
    procedure FormShow(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure actExportaExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    relatorio : string;
  end;

var
  FrmRelAbastecimento: TFrmRelAbastecimento;

implementation

uses uFuncao, uDmPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelAbastecimento.actExportaExcelExecute(Sender: TObject);
begin
//  inherited;
  funcao.ExportaExcell(FrmRelAbastecimento.Caption, cxGrid);
end;

procedure TFrmRelAbastecimento.actPesquisarExecute(Sender: TObject);
var
  sql, caminho_rel : string;
begin
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text;
  dmPadrao.cdsEmpresaContabil.Active := true;

  sql := 'EXEC spRelAbastecimento ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEidMaquina, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEidAbastecimentoIni, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEidAbastecimentoFim, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEdtAbastecimentoIni, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEdtAbastecimentoFim, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                      funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                      funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', ' +
                                      '0' + ', ' +
                                      funcao.RetornaValorEField(DBEidGerencial, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                                      funcao.RetornaValorEField(DBCKinterno, 3) + ', ' +
                                      funcao.RetornaValorEField(DBCKexterno, 3) + ', ' +
                                      funcao.RetornaValorEField(DBCKmaquina, 3) + ', ' +
                                      funcao.RetornaValorEField(DBCKveiculo, 3);
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;
end;

procedure TFrmRelAbastecimento.BtnImprimirClick(Sender: TObject);
var
  caminho_rel : string;
begin
  inherited;
  caminho_rel := dmPadrao.RetornaConfig('caminho_rel');
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelAbastecimento.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'S';
  cdsPadraointerno.AsString := 'S';
  cdsPadraoexterno.AsString := 'S';
  cdsPadraomaquina.AsString := 'S';
  cdsPadraoveiculo.AsString := 'S';
end;

procedure TFrmRelAbastecimento.ConfigLookEmpresa;
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

procedure TFrmRelAbastecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelAbastecimento := nil;
end;

procedure TFrmRelAbastecimento.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidMaquina;
  relatorio := 'RelAbastecimento.fr3'
end;

procedure TFrmRelAbastecimento.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  if not filial then
  begin
    DBEidCadEmpresa.Visible := false;
    LookdescCadEmpresa.Left := 109;
    LookdescAbreviada.Left := 341;
    cdsPadrao.FieldByName('idCadEmpresa').Value := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
    if not cdsPadraoidCadEmpresa.AsInteger > 0 then
      cdsPadraoidCadEmpresa.AsInteger := 1;

    FindEmpresa.JoinClause.Clear;
    FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                               ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                               ' AND acessa = ' + QuotedStr('S') + ')');

    DBEidEmpresa.Find := FindEmpresa;

  end
  else
    cdsPadraoidCadEmpresa.AsString := FrmPrincipal.idCadEmpresa;

  DBCKconsolidafilial.Visible := filial;
end;

end.
