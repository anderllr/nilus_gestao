unit uFrmRelRomaneioProdutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CGroupBox, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, CDBCheckBox,
  cxShellBrowserDialog, ExtDlgs, Menus, cxGridExportLink, ShellAPI,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, CDBRadioGroup,
  cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelRomaneioProdutor = class(TFrmPadraoRelEmpresa)
    PanCliente: TCPanelGradient;
    Bevel2: TBevel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    CLabel23: TCLabel;
    CLabel11: TCLabel;
    lblCliFor: TCLabel;
    CLabel1: TCLabel;
    CLabel13: TCLabel;
    DBEidMotorista: TCDBEdit;
    LookdescMotorista: TCLookUp;
    LookDescAbreviadaCliente: TCLookUp;
    LookidCnpjCpfCliente: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    DBEidArmazem: TCDBEdit;
    LookArmazem: TCLookUp;
    LookdescCadCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    DBEidProdutor: TCDBEdit;
    LookProdutor: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidRomaneioIni: TCDBEdit;
    DBEidRomaneioFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CPanelGradient1: TCPanelGradient;
    BtnExecutar: TCBitBtn;
    CBitBtn1: TCBitBtn;
    BtnImprimir: TCBitBtn;
    frxRel: TfrxReport;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidArmazem: TIntegerField;
    cdsPadraoidMotorista: TIntegerField;
    cdsPadraoidRomaneioIni: TIntegerField;
    cdsPadraoidRomaneioFim: TIntegerField;
    cdsPadraoidContratoIni: TStringField;
    cdsPadraoidContratoFim: TStringField;
    cdsPadraoidProdutor: TIntegerField;
    cxGrid: TcxGrid;
    DBView: TcxGridDBTableView;
    Nivel1: TcxGridLevel;
    dsRelatorio: TDataSource;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    PopupMenu: TPopupMenu;
    actExportaExcel1: TMenuItem;
    AbreArq: TOpenTextFileDialog;
    AbrePasta: TcxShellBrowserDialog;
    cdsPadraonrOrigIni: TIntegerField;
    cdsPadraonrOrigFim: TIntegerField;
    cdsRelatorioidEmpresa: TIntegerField;
    cdsRelatorioidCadEmpresa: TIntegerField;
    cdsRelatorioidArmazem: TIntegerField;
    cdsRelatoriodescArmazem: TStringField;
    cdsRelatorioidRomaneio: TIntegerField;
    cdsRelatoriodtRomaneio: TSQLTimeStampField;
    cdsRelatorioqtPesoLiquido: TFMTBCDField;
    cdsRelatoriodescMotorista: TStringField;
    cdsRelatorioidContratoVenda: TStringField;
    cdsRelatorioidRomaneioArm: TIntegerField;
    cdsRelatorioidProdutor: TIntegerField;
    cdsRelatoriodescCadProdutor: TStringField;
    cdsRelatoriovlLiquido: TFMTBCDField;
    cdsRelatoriovlIcms: TFMTBCDField;
    cdsRelatoriovlIcmsFrete: TFMTBCDField;
    cdsRelatoriovlTotal: TFMTBCDField;
    cdsRelatorioidContratoFrete: TIntegerField;
    cdsRelatoriovlFrete: TFMTBCDField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidArmazem: TcxGridDBColumn;
    DBViewdescArmazem: TcxGridDBColumn;
    DBViewidRomaneio: TcxGridDBColumn;
    DBViewdtRomaneio: TcxGridDBColumn;
    DBViewqtPesoLiquido: TcxGridDBColumn;
    DBViewdescMotorista: TcxGridDBColumn;
    DBViewidContratoVenda: TcxGridDBColumn;
    DBViewidRomaneioArm: TcxGridDBColumn;
    DBViewidProdutor: TcxGridDBColumn;
    DBViewdescCadProdutor: TcxGridDBColumn;
    DBViewvlLiquido: TcxGridDBColumn;
    DBViewvlIcms: TcxGridDBColumn;
    DBViewvlIcmsFrete: TcxGridDBColumn;
    DBViewvlTotal: TcxGridDBColumn;
    DBViewidContratoFrete: TcxGridDBColumn;
    DBViewvlFrete: TcxGridDBColumn;
    DBEidContratoFim: TCDBEdit;
    DBEnrOrigIni: TCDBEdit;
    DBEnrOrigFim: TCDBEdit;
    DBEidContratoIni: TCDBEdit;
    CLabel14: TCLabel;
    CLabel12: TCLabel;
    CLabel10: TCLabel;
    CLabel3: TCLabel;
    cdsRelatoriodescCadCliente: TStringField;
    cdsRelatoriovlContribSocial: TFMTBCDField;
    DBViewdescCadCliente: TcxGridDBColumn;
    DBViewvlContribSocial: TcxGridDBColumn;
    cdsRelatoriovlFreterom: TFMTBCDField;
    cdsRelatoriotpRomaneio: TStringField;
    DBViewvlFreterom: TcxGridDBColumn;
    DBViewtpRomaneio: TcxGridDBColumn;
    cdsPadraoidArmOperacao: TIntegerField;
    CLabel19: TCLabel;
    DBEidArmOperacao: TCDBEdit;
    LookOperacao: TCLookUp;
    DBRGcomNF: TCDBRadioGroup;
    cdsPadraocomNF: TStringField;
    cdsRelatorioidNF: TIntegerField;
    DBViewidNF: TcxGridDBColumn;
    cdsPadraoidNfIni: TIntegerField;
    cdsPadraoidNfFim: TIntegerField;
    CLabel15: TCLabel;
    DBEidNfIni: TCDBEdit;
    CLabel16: TCLabel;
    DBEidNfFim: TCDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnExecutarClick(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actExportaExcel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelRomaneioProdutor: TFrmRelRomaneioProdutor;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao;

{$R *.dfm}

procedure TFrmRelRomaneioProdutor.actExportaExcel1Click(Sender: TObject);
begin
  funcao.ExportaExcell(FrmRelRomaneioProdutor.Caption, cxGrid);
end;

procedure TFrmRelRomaneioProdutor.BtnExecutarClick(Sender: TObject);
var
  sql, status : string;
begin
  //Faz busca baseado nos parametros preenchidos
  if trim(DBEidArmOperacao.Text) = '' then
  begin
    messagedlg('Informe a operação!', mtwarning, [mbok], 0);
    exit;
  end;

  status := '';
  sql := 'EXEC spRelRomaneioProdutor ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidMotorista, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidArmazem, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidCliente, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidProdutor, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidRomaneioIni, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidRomaneioFim, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidContratoIni, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidContratoFim, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEnrOrigIni, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEnrOrigFim, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidArmOperacao, 3) + ', ' +
                                         funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                         funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', ' +
                                         funcao.RetornaValorEField(DBRGcomNF, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidNfIni, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidNfFim, 3);
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := true;
end;

procedure TFrmRelRomaneioProdutor.BtnImprimirClick(Sender: TObject);
var
  caminho_rel : string;
begin
  //Faz busca baseado nos parametros preenchidos
  if trim(DBEidArmOperacao.Text) = '' then
  begin
    messagedlg('Informe a operação!', mtwarning, [mbok], 0);
    exit;
  end;
  BtnExecutar.Click;
//  inherited;
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;
  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  (frxRel.FindComponent('MdescMotorista') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescMotorista') as TFrxMemoView).Memo.Add(DBEidMotorista.Text + ' - ' + LookdescMotorista.Caption);
  (frxRel.FindComponent('MdescSafra') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescSafra') as TFrxMemoView).Memo.Add(DBEidSafra.Text + ' - ' + LookSafra.Caption);
  (frxRel.FindComponent('MdescProduto') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescProduto') as TFrxMemoView).Memo.Add(DBEidProduto.Text + ' - ' + LookProduto.Caption);
  (frxRel.FindComponent('MdescArm') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescArm') as TFrxMemoView).Memo.Add(DBEidArmazem.Text + ' - ' + LookArmazem.Caption);
  (frxRel.FindComponent('MdescCliente') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescCliente') as TFrxMemoView).Memo.Add(DBEidCliente.Text + ' - ' + LookdescCadCliente.Caption);
  (frxRel.FindComponent('MdescProdutor') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescProdutor') as TFrxMemoView).Memo.Add(DBEidProdutor.Text + ' - ' + LookProdutor.Caption);
  (frxRel.FindComponent('MromIni') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MromIni') as TFrxMemoView).Memo.Add(DBEidRomaneioIni.Text);
  (frxRel.FindComponent('MromFim') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MromFim') as TFrxMemoView).Memo.Add(DBEidRomaneioFim.Text);
  (frxRel.FindComponent('MdtIni') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdtIni') as TFrxMemoView).Memo.Add(DBEdtInicial.Text);
  (frxRel.FindComponent('MdtFim') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdtFim') as TFrxMemoView).Memo.Add(DBEdtFinal.Text);
  (frxRel.FindComponent('McontIni') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('McontIni') as TFrxMemoView).Memo.Add(DBEidContratoIni.Text);
  (frxRel.FindComponent('McontFim') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('McontFim') as TFrxMemoView).Memo.Add(DBEidContratoFim.Text);
  (frxRel.FindComponent('MnrOriIni') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MnrOriIni') as TFrxMemoView).Memo.Add(DBEnrOrigIni.Text);
  (frxRel.FindComponent('MnrOriFim') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MnrOriFim') as TFrxMemoView).Memo.Add(DBEnrOrigFim.Text);
  (frxRel.FindComponent('MdescOperacao') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescOperacao') as TFrxMemoView).Memo.Add(LookOperacao.Caption);
  frxRel.ShowReport;
end;

procedure TFrmRelRomaneioProdutor.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';

  DataSet.FieldByName('comNF').AsString := 'T';
end;

procedure TFrmRelRomaneioProdutor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelRomaneioProdutor := nil;
end;

procedure TFrmRelRomaneioProdutor.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelRomaneioProducao.fr3';
  par := 0;
  foco := DBEidMotorista;
  WindowState := wsMaximized;
end;

end.
