unit uFrmRelComparativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CGroupBox, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CLabel, CLookUp, Mask, DBCtrls, CDBEdit, uFrmPadraoRelEmpresa,
  uFrmPadraoRel, CFind, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls,
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
  cxDataStorage, cxEdit, cxDBData, FMTBcd, ExtDlgs, cxShellBrowserDialog, Menus,
  cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, CDBCheckBox, cxCurrencyEdit, cxNavigator, System.Actions;

type
  TFrmRelComparativo = class(TFrmPadraoPesquisaDevExpress)
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    FindGerencial: TCFind;
    FrxRel: TfrxReport;
    cdsPadraoidFornecedor: TIntegerField;
    FindClassificacao: TCFind;
    Bevel1: TBevel;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBEidCadEmpresa: TCDBEdit;
    DBEidEmpresa: TCDBEdit;
    CLabel1: TCLabel;
    FindEmpresa: TCFind;
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    lblCliFor: TCLabel;
    CLabel2: TCLabel;
    Label1: TLabel;
    CLabel9: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    CLabel8: TCLabel;
    DBEidFornecedor: TCDBEdit;
    LookCliente: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEclass_fim: TCDBEdit;
    DBEclass_ini: TCDBEdit;
    DBEdtLancamentoIni: TCDBEdit;
    DBEdtLancamentoFim: TCDBEdit;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    DBEdtRealizadosIni: TCDBEdit;
    DBEdtRealizadosFim: TCDBEdit;
    frxDataset: TfrxDBDataset;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    LookGerenciaR: TCLookUp;
    DBEidGerencial: TCDBEdit;
    CLabel10: TCLabel;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    BtnImprimir: TCBitBtn;
    cdsPadraoclass_ini: TStringField;
    cdsPadraoclass_fim: TStringField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraodtLancamentoIni: TDateField;
    cdsPadraodtLancamentoFim: TDateField;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    cdsPadraodtRealizadosIni: TDateField;
    cdsPadraodtRealizadosFim: TDateField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    DBViewidGerencial: TcxGridDBColumn;
    DBViewvlPrevisao: TcxGridDBColumn;
    DBViewvlRealizado: TcxGridDBColumn;
    DBViewdescGerencial: TcxGridDBColumn;
    DBViewvlDiferenca: TcxGridDBColumn;
    DBViewtpGerencial: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfigLookEmpresa;
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actPesquisarExecute(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure actExportaExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    relatorio : string;
  end;

var
  FrmRelComparativo: TFrmRelComparativo;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao;

{$R *.dfm}

procedure TFrmRelComparativo.actExportaExcelExecute(Sender: TObject);
begin
  funcao.ExportaExcell(FrmRelComparativo.Caption, cxGrid);
end;

procedure TFrmRelComparativo.actPesquisarExecute(Sender: TObject);
var
  sql : string;
begin
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text;
  dmPadrao.cdsEmpresaContabil.Active := true;
  sql := 'EXEC spRelComparativo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEclass_ini, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEclass_fim, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtVencimentoIni, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtVencimentoFim, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtLancamentoIni, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtLancamentoFim, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtRealizadosIni, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtRealizadosFim, 3) + ', ' +
                                    funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                    funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidGerencial, 3);
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;

end;

procedure TFrmRelComparativo.BtnImprimirClick(Sender: TObject);
var
  caminho_rel : string;
begin
//  inherited;
  caminho_rel := dmPadrao.RetornaConfig('caminho_rel');
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelComparativo.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'S';
end;

procedure TFrmRelComparativo.ConfigLookEmpresa;
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

procedure TFrmRelComparativo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelComparativo := nil;
end;

procedure TFrmRelComparativo.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
  relatorio := 'RelComparativo.fr3'
end;

procedure TFrmRelComparativo.FormShow(Sender: TObject);
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
