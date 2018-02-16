unit uFrmRelGerencialDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, ExtDlgs, cxShellBrowserDialog,
  Menus, cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr, Provider,
  DBClient, ActnList, ImgList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLookUp, Mask, DBCtrls,
  CDBEdit, CDBCheckBox, frxClass, frxDBSet, cxCurrencyEdit, CFind, cxNavigator,
  System.Actions, System.ImageList;

type
  TFrmRelGerencialDet = class(TFrmPadraoPesquisaDevExpress)
    LookidCnpjCpfCliente: TCLookUp;
    CLabel9: TCLabel;
    LookDescAbreviadaCliente: TCLookUp;
    LookDescCadCliente: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel7: TCLabel;
    CLabel5: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerencialP: TCLookUp;
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
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    frxDataset: TfrxDBDataset;
    FrxRel: TfrxReport;
    cdsRelatorioidEmpresa: TIntegerField;
    cdsRelatorioidCadEmpresa: TSmallintField;
    cdsRelatoriodtMovimento: TSQLTimeStampField;
    cdsRelatorioidGerencial: TIntegerField;
    cdsRelatorionrTitulo: TStringField;
    cdsRelatorioidFornecedor: TIntegerField;
    cdsRelatorioobs: TStringField;
    cdsRelatorioidProduto: TIntegerField;
    cdsRelatoriodescProduto: TStringField;
    cdsRelatorioidNfE: TIntegerField;
    cdsRelatorioqtNfe: TFMTBCDField;
    cdsRelatoriovlNfE: TFMTBCDField;
    cdsRelatorioidContaCorrente: TStringField;
    cdsRelatoriodescFornecedor: TStringField;
    cdsRelatoriodescGerencial: TStringField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewdtMovimento: TcxGridDBColumn;
    DBViewidGerencial: TcxGridDBColumn;
    DBViewnrTitulo: TcxGridDBColumn;
    DBViewidFornecedor: TcxGridDBColumn;
    DBViewobs: TcxGridDBColumn;
    DBViewidProduto: TcxGridDBColumn;
    DBViewdescProduto: TcxGridDBColumn;
    DBViewidNfE: TcxGridDBColumn;
    DBViewqtNfe: TcxGridDBColumn;
    DBViewvlNfE: TcxGridDBColumn;
    DBViewidContaCorrente: TcxGridDBColumn;
    DBViewdescFornecedor: TcxGridDBColumn;
    DBViewdescGerencial: TcxGridDBColumn;
    BtnImprimir: TCBitBtn;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    FindEmpresa: TCFind;
    procedure actPesquisarExecute(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure FormShow(Sender: TObject);
    procedure actExportaExcel1Click(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelGerencialDet: TFrmRelGerencialDet;

implementation

uses uFuncao, uDmFind, uDmPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelGerencialDet.actExportaExcel1Click(Sender: TObject);
begin
//  inherited;
  funcao.ExportaExcell(FrmRelGerencialDet.Caption, cxGrid);
end;

procedure TFrmRelGerencialDet.actPesquisarExecute(Sender: TObject);
var
  sql : string;
begin
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text;
  dmPadrao.cdsEmpresaContabil.Active := true;
  sql := 'EXEC spRelGerencialDet ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidGerencial, 3)+ ', ' +
                                    funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                    funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                    funcao.RetornaValorEField(DBCKconsolidafilial, 3);
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
end;

procedure TFrmRelGerencialDet.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelGerencialNfE.fr3');
  frxRel.ShowReport;
end;

procedure TFrmRelGerencialDet.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmRelGerencialDet.ConfigLookEmpresa;
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

procedure TFrmRelGerencialDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelGerencialDet := nil;
end;

procedure TFrmRelGerencialDet.FormCreate(Sender: TObject);
begin
  inherited;
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
end;
procedure TFrmRelGerencialDet.FormShow(Sender: TObject);
begin
  inherited;
  DBEidFornecedor.SetFocus;
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
end;
end.


