unit uFrmCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CCheckBox, CDBCheckBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions, CDBRadioGroup, System.ImageList;

type
  TFrmCadProduto = class(TFrmCadPadrao)
    sdsCadGeral: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    DBEdescProduto: TCDBEdit;
    CLabel2: TCLabel;
    CLabel4: TCLabel;
    DBEdtCadastro: TCDBEdit;
    actCadCidade: TAction;
    FindCategoria: TCFind;
    FindMedida: TCFind;
    CLabel1: TCLabel;
    DBEidProduto: TCDBEdit;
    CLabel14: TCLabel;
    DBEstProduto: TCDBEdit;
    CLabel3: TCLabel;
    DBEidProdCategoria: TCDBEdit;
    LookCategoria: TCLookUp;
    CLabel5: TCLabel;
    DBEidProdMedida: TCDBEdit;
    LookMedida: TCLookUp;
    CLabel6: TCLabel;
    DBEidProdGrupo: TCDBEdit;
    LookGrupo: TCLookUp;
    CLabel7: TCLabel;
    DBEidProdSubGrupo: TCDBEdit;
    LookSubGrupo: TCLookUp;
    DBMobsProduto: TCDBMemo;
    CLabel8: TCLabel;
    FindGrupo: TCFind;
    FindSubGrupo: TCFind;
    BtnCadProdMedida: TCBitBtn;
    BtnCadProdSubGrupo: TCBitBtn;
    BtnCadProdGrupo: TCBitBtn;
    LookAbreviacao: TCLookUp;
    FindProduto: TCFind;
    FindTributacao: TCFind;
    TabImpostos: TTabSheet;
    FindNatureza: TCFind;
    CGroupBox2: TCGroupBox;
    CLabel11: TCLabel;
    DBEidNatureza: TCDBEdit;
    LookNatureza: TCLookUp;
    LookIdCfop: TCLookUp;
    CLabel12: TCLabel;
    DBEprIss: TCDBEdit;
    CLabel13: TCLabel;
    DBEprInss: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    DBEprReducao: TCDBEdit;
    DBEprIcms: TCDBEdit;
    CLabel15: TCLabel;
    DBEidEstadoOri: TCDBEdit;
    LookEstadoOri: TCLookUp;
    CLabel16: TCLabel;
    DBEidEstadoDes: TCDBEdit;
    LookEstadoDes: TCLookUp;
    CLabel9: TCLabel;
    DBEidStTributaria: TCDBEdit;
    LookTributacao: TCLookUp;
    CGroupBox4: TCGroupBox;
    DBGrid: TCDBGrid;
    CGroupBox5: TCGroupBox;
    BtnSalvarImp: TCBitBtn;
    BtnCancelarImp: TCBitBtn;
    BtnExcluirImp: TCBitBtn;
    BtnNovoImp: TCBitBtn;
    TabOutros: TTabSheet;
    CGroupBox6: TCGroupBox;
    CLabel10: TCLabel;
    DBEidNaturezaO: TCDBEdit;
    CGroupBox7: TCGroupBox;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    CLabel21: TCLabel;
    CLabel22: TCLabel;
    CLabel23: TCLabel;
    DBEprFaturamento: TCDBEdit;
    DBEprQtdeProduto: TCDBEdit;
    DBEidEstadoOriO: TCDBEdit;
    LookEstadoOriO: TCLookUp;
    DBEidEstadoDesO: TCDBEdit;
    LookEstadoDesO: TCLookUp;
    CHKidEstadoOriO: TCCheckBox;
    CHKidEstadoDesO: TCCheckBox;
    DBEidImpostoOutro: TCDBEdit;
    LookidImpostoOutro: TCLookUp;
    CLabel24: TCLabel;
    DBEvlQtdeProduto: TCDBEdit;
    CGroupBox8: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox9: TCGroupBox;
    BtnSalvarOut: TCBitBtn;
    BtnCancelarOut: TCBitBtn;
    BtnExcluirOut: TCBitBtn;
    BtnNovoOut: TCBitBtn;
    CLabel25: TCLabel;
    DBEvlPauta: TCDBEdit;
    sdsProdImposto: TSQLDataSet;
    dspProdImposto: TDataSetProvider;
    cdsProdImposto: TClientDataSet;
    dsProdImposto: TDataSource;
    cdsStTributaria: TClientDataSet;
    LookNaturezaO: TCLookUp;
    LookCfopO: TCLookUp;
    sdsProdImpostoOutro: TSQLDataSet;
    dspProdImpostoOutro: TDataSetProvider;
    cdsProdImpostoOutro: TClientDataSet;
    dsProdImpostoOutro: TDataSource;
    cdsImpostoOutro: TClientDataSet;
    cdsProdImpostoOutrodescImpostoOutro: TStringField;
    FindImpostoOutro: TCFind;
    FindEstado: TCFind;
    CLabel26: TCLabel;
    DBEprIpi: TCDBEdit;
    TabGerencial: TTabSheet;
    sdsProdGerencial: TSQLDataSet;
    dspProdGerencial: TDataSetProvider;
    cdsProdGerencial: TClientDataSet;
    dsProdGerencial: TDataSource;
    CGroupBox10: TCGroupBox;
    CGroupBox11: TCGroupBox;
    CDBGrid2: TCDBGrid;
    CGroupBox12: TCGroupBox;
    BtnSalvarGer: TCBitBtn;
    BtnCancelarGer: TCBitBtn;
    BtnExcluirGer: TCBitBtn;
    BtnNovoGer: TCBitBtn;
    CLabel27: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    FindGerencial: TCFind;
    CLabel28: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerencial: TCLookUp;
    CBitBtn8: TCBitBtn;
    cdsProdGerencialidProduto: TIntegerField;
    cdsProdGerencialidEmpresa: TIntegerField;
    cdsProdGerencialidGerencial: TIntegerField;
    cdsProdGerencialdescGerencial: TStringField;
    FindEmpresa: TCFind;
    CLabel29: TCLabel;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    FindIndice: TCFind;
    BtnIndice: TCBitBtn;
    CLabel30: TCLabel;
    DBEidCultura: TCDBEdit;
    LookCultura: TCLookUp;
    BtnCadCultura: TCBitBtn;
    FindCultura: TCFind;
    cdsProdImpostoOutroidProduto: TIntegerField;
    cdsProdImpostoOutroidNatureza: TSmallintField;
    cdsProdImpostoOutroidImpostoOutro: TSmallintField;
    cdsProdImpostoOutroidProdImpostoOutro: TIntegerField;
    cdsProdImpostoOutroidEstadoOri: TStringField;
    cdsProdImpostoOutroidEstadoDes: TStringField;
    cdsProdImpostoOutroprFaturamento: TFMTBCDField;
    cdsProdImpostoOutroprQtdeProduto: TFMTBCDField;
    cdsProdImpostoOutrovlQtdeProduto: TFMTBCDField;
    LookFabricante: TCLookUp;
    DBEidFabricante: TCDBEdit;
    CLabel31: TCLabel;
    DBEcodFabricante: TCDBEdit;
    CLabel32: TCLabel;
    DBMdescAplicacao: TCDBMemo;
    CLabel33: TCLabel;
    TabSimilar: TTabSheet;
    CGroupBox13: TCGroupBox;
    CLabel35: TCLabel;
    LookProduto: TCLookUp;
    DBEidProdutoSimilar: TCDBEdit;
    CGroupBox14: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox15: TCGroupBox;
    GridProdutoSimilar: TCDBGrid;
    dsProdutoSimilar: TDataSource;
    cdsProdutoSimilar: TClientDataSet;
    dspProdutoSimilar: TDataSetProvider;
    sdsProdutoSimilar: TSQLDataSet;
    cdsProdutoSimilaridProduto: TIntegerField;
    cdsProdutoSimilaridProdutoSimilar: TIntegerField;
    cdsProduto: TClientDataSet;
    cdsProdutoSimilardescProduto: TStringField;
    TabFornecedor: TTabSheet;
    dsFornecedor: TDataSource;
    cdsFornecedor: TClientDataSet;
    dspFornecedor: TDataSetProvider;
    sdsFornecedor: TSQLDataSet;
    CGroupBox16: TCGroupBox;
    CLabel34: TCLabel;
    LookFornecedor: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CGroupBox17: TCGroupBox;
    BtnAdicionarFor: TCBitBtn;
    BtnCancelarFor: TCBitBtn;
    BtnRetirarFor: TCBitBtn;
    BtnNovoFor: TCBitBtn;
    CGroupBox18: TCGroupBox;
    CDBGrid3: TCDBGrid;
    cdsFornecedoridProduto: TIntegerField;
    cdsFornecedoridFornecedor: TIntegerField;
    cdsCadFornecedor: TClientDataSet;
    cdsFornecedordescFornecedor: TStringField;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    DBENcm: TCDBEdit;
    DBEprCofins: TCDBEdit;
    CLabel39: TCLabel;
    DBEprPis: TCDBEdit;
    CLabel38: TCLabel;
    cdsVariedade: TClientDataSet;
    dsVariedade: TDataSource;
    dspVariedade: TDataSetProvider;
    sdsVariedade: TSQLDataSet;
    TabVariedade: TTabSheet;
    CGroupBox19: TCGroupBox;
    CLabel40: TCLabel;
    DBEidVariedade: TCDBEdit;
    CGroupBox20: TCGroupBox;
    BtnAdicionarVar: TCBitBtn;
    BtnCancelarVar: TCBitBtn;
    BtnRetirarVar: TCBitBtn;
    BtnNovoVar: TCBitBtn;
    CGroupBox21: TCGroupBox;
    CDBGrid4: TCDBGrid;
    DBEdescVariedade: TCDBEdit;
    cdsVariedadeidProduto: TIntegerField;
    cdsVariedadeidVariedade: TSmallintField;
    cdsVariedadedescVariedade: TStringField;
    DBEqtSacas: TCDBEdit;
    CLabel41: TCLabel;
    DBEqtArrobas: TCDBEdit;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    DBEidResultado: TCDBEdit;
    LookTalhao: TCLookUp;
    CBitBtn5: TCBitBtn;
    cdsProdGerencialidResultado: TIntegerField;
    CLabel44: TCLabel;
    DBEidGerencialSaida: TCDBEdit;
    CLookUp1: TCLookUp;
    CBitBtn1: TCBitBtn;
    cdsProdGerencialidGerencialSaida: TIntegerField;
    cdsProdGerencialdescGerencialSaida: TStringField;
    FindGerenciaP: TCFind;
    FindGerencialR: TCFind;
    chkCombustivel: TCDBCheckBox;
    TabEstoque: TTabSheet;
    Group1: TCGroupBox;
    CDBEdit1: TCDBEdit;
    CLabel45: TCLabel;
    CLookUp2: TCLookUp;
    LookProdMedida: TCLookUp;
    BtnReculculaEstoque: TCBitBtn;
    CGroupBox22: TCGroupBox;
    cxGrid: TcxGrid;
    DBView: TcxGridDBTableView;
    Nivel1: TcxGridLevel;
    dsDeposito: TDataSource;
    cdsDeposito: TClientDataSet;
    dspDeposito: TDataSetProvider;
    sdsDeposito: TSQLDataSet;
    cdsDepositoidEmpresa: TIntegerField;
    cdsDepositoidCadEmpresa: TSmallintField;
    cdsDepositodescEmpresa: TStringField;
    cdsDepositodescCadEmpresa: TStringField;
    cdsDepositoidCnpjCpf: TStringField;
    cdsDepositoidInscEstadual: TStringField;
    cdsDepositoidProdDeposito: TSmallintField;
    cdsDepositodescProdDeposito: TStringField;
    cdsDepositoidProduto: TIntegerField;
    cdsDepositodescProduto: TStringField;
    cdsDepositocodFabricante: TStringField;
    cdsDepositovlCustoMedio: TFMTBCDField;
    cdsDepositoqtProduto: TFMTBCDField;
    cdsDepositovlTotal: TFMTBCDField;
    cdsDepositoidGrupo: TStringField;
    DBViewidProdDeposito: TcxGridDBColumn;
    DBViewdescProdDeposito: TcxGridDBColumn;
    DBViewvlCustoMedio: TcxGridDBColumn;
    DBViewqtProduto: TcxGridDBColumn;
    CGroupBox23: TCGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsDepEmpresa: TDataSource;
    cdsDepEmpresa: TClientDataSet;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    SmallintField2: TSmallintField;
    StringField5: TStringField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    StringField8: TStringField;
    dspDepEmpresa: TDataSetProvider;
    sdsDepEmpresa: TSQLDataSet;
    cxGridDBTableView1idEmpresa: TcxGridDBColumn;
    cxGridDBTableView1idCadEmpresa: TcxGridDBColumn;
    cxGridDBTableView1idProdDeposito: TcxGridDBColumn;
    cxGridDBTableView1descProdDeposito: TcxGridDBColumn;
    cxGridDBTableView1vlCustoMedio: TcxGridDBColumn;
    cxGridDBTableView1qtProduto: TcxGridDBColumn;
    DBViewidProduto: TcxGridDBColumn;
    cxGridDBTableView1idProduto: TcxGridDBColumn;
    BtnHistorico: TCBitBtn;
    DBElocacao: TCDBEdit;
    CLabel46: TCLabel;
    cdsDepositolocacao: TStringField;
    cdsDepEmpresalocacao: TStringField;
    DBEidCSTPis: TCDBEdit;
    LookPis: TCLookUp;
    CLabel47: TCLabel;
    DBEidCSTCofins: TCDBEdit;
    CLookUp3: TCLookUp;
    CLabel48: TCLabel;
    DBCKproducao: TCDBCheckBox;
    DBEidProdOrigem: TCDBEdit;
    LookOrigem: TCLookUp;
    CLabel49: TCLabel;
    DBEidModBC: TCDBEdit;
    CLookUp8: TCLookUp;
    CLabel92: TCLabel;
    CLabel50: TCLabel;
    DBMobsNF: TCDBMemo;
    CLabel51: TCLabel;
    DBEvlTonelada: TCDBEdit;
    cdsProdImpostoOutrovlTonelada: TFMTBCDField;
    cdsProdImpostoOutrovlSaca: TFMTBCDField;
    DBEvlSaca: TCDBEdit;
    CLabel52: TCLabel;
    DBRGtpCredito: TCDBRadioGroup;
    CLabel53: TCLabel;
    DBEprCredPresumido: TCDBEdit;
    CLabel54: TCLabel;
    DBEprCredOutorgado: TCDBEdit;
    cdsFornecedorcodFornecedor: TStringField;
    CLabel55: TCLabel;
    DBEcodFornecedor: TCDBEdit;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodescProduto: TStringField;
    cdsPadraoidProdCategoria: TSmallintField;
    cdsPadraoidProdMedida: TSmallintField;
    cdsPadraoidProdGrupo: TSmallintField;
    cdsPadraoidProdSubGrupo: TSmallintField;
    cdsPadraodtCadastro: TSQLTimeStampField;
    cdsPadraoobsProduto: TStringField;
    cdsPadraostProduto: TStringField;
    cdsPadraoidIndice: TSmallintField;
    cdsPadraoidCultura: TSmallintField;
    cdsPadraoidFabricante: TIntegerField;
    cdsPadraocodFabricante: TStringField;
    cdsPadraodescAplicacao: TStringField;
    cdsPadraoNcm: TStringField;
    cdsPadraoqtSacas: TFMTBCDField;
    cdsPadraoqtArrobas: TFMTBCDField;
    cdsPadraoCombustivel: TStringField;
    cdsPadraolocacao: TStringField;
    cdsPadraoproducao: TStringField;
    cdsPadraoidProdOrigem: TSmallintField;
    procedure cdsProdGerencialAfterScroll(DataSet: TDataSet);
    procedure dsProdGerencialStateChange(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure BtnSalvarGerClick(Sender: TObject);
    procedure cdsProdGerencialCalcFields(DataSet: TDataSet);
    procedure cdsProdImpostoAfterEdit(DataSet: TDataSet);
    procedure DBEidNaturezaExit(Sender: TObject);
    procedure DBEidEstadoDesOExit(Sender: TObject);
    procedure cdsProdImpostoOutroAfterScroll(DataSet: TDataSet);
    procedure dspProdImpostoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure CHKidEstadoDesOClick(Sender: TObject);
    procedure CHKidEstadoOriOClick(Sender: TObject);
    procedure CHKidEstadoDesClick(Sender: TObject);
    procedure BtnSalvarOutClick(Sender: TObject);
    procedure dsProdImpostoOutroStateChange(Sender: TObject);
    procedure DBEidEstadoDesExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CHKidEstadoOriClick(Sender: TObject);
    procedure cdsProdImpostoAfterScroll(DataSet: TDataSet);
    procedure cdsProdImpostoAfterInsert(DataSet: TDataSet);
    procedure BtnSalvarImpClick(Sender: TObject);
    procedure dsProdImpostoStateChange(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure DBEidProdutoSimilarExit(Sender: TObject);
    procedure dsProdutoSimilarStateChange(Sender: TObject);
    procedure BtnAdicionarForClick(Sender: TObject);
    procedure dsFornecedorStateChange(Sender: TObject);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAdicionarVarClick(Sender: TObject);
    procedure DBEidVariedadeExit(Sender: TObject);
    procedure dsVariedadeStateChange(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure BtnReculculaEstoqueClick(Sender: TObject);
    procedure CarregaDepositos;
    procedure BtnHistoricoClick(Sender: TObject);
    procedure dspVariedadeBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure DBEidNaturezaOExit(Sender: TObject);
    procedure DBEidNaturezaOEnter(Sender: TObject);
    procedure DBRGtpCreditoEnter(Sender: TObject);
    procedure DBRGtpCreditoExit(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
  public
    { Public declarations }
  end;

var
  FrmCadProduto: TFrmCadProduto;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesProduto,
  uFrmCarregaEstoque, uFrmImportaNFe;

{$R *.dfm}

procedure TFrmCadProduto.actPesquisarExecute(Sender: TObject);
begin
//  inherited;
  Application.CreateForm(TFrmPesProduto, FrmPesProduto);
  FrmPesProduto.ShowModal;
  if FrmPesProduto.idProduto <> 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
    DBEidProduto.SetFocus;
    DBEidProdutoExit(DBEidProduto);
  end;
end;

procedure TFrmCadProduto.actSalvarExecute(Sender: TObject);
var
  cont : integer;
  msg : string;
begin
  msg := '';
  //Verifica se o código do fabricante está informado sem fabricante
  if (trim(DBEcodFabricante.text) <> '') and (trim(DBEidFabricante.Text) = '') then
    msg := 'É preciso informar o fabricante!';

  if trim(DBEidProdGrupo.Text) = '' then
    msg := 'É preciso informar o grupo do produto!';

  if trim(DBEidProdSubGrupo.Text) = '' then
    msg := 'É preciso informar o sub grupo do produto!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEcodFabricante.text) <> '') and (trim(DBEidFabricante.Text) <> '') then
  begin
    if trim(DBEidProduto.Text) = '' then
      cont := frmPrincipal.ExecutaSQLRet([], '', 'SELECT COUNT(*) AS qtde FROM Produto WHERE idFabricante = '
         + DBEidFabricante.Text + ' AND RTRIM(codFabricante) = ' + QuotedStr(trim(DBEcodFabricante.Text))).FieldByName('qtde').AsInteger
    else
      cont := frmPrincipal.ExecutaSQLRet([], '', 'SELECT COUNT(*) AS qtde FROM Produto WHERE idFabricante = '
         + DBEidFabricante.Text + ' AND RTRIM(codFabricante) = ' + QuotedStr(trim(DBEcodFabricante.Text)) +
         ' AND idProduto <> ' + DBEidProduto.Text).FieldByName('qtde').AsInteger;

    if cont > 0 then
    begin
      messagedlg('Código de Fabricante já cadastrado!', mtwarning, [mbok], 0);
      exit;
    end;
  end;

  if Trim(cdsPadrao.FieldByName('dtCadastro').AsString) = '' then
    cdsPadrao.FieldByName('dtCadastro').AsDateTime := date;
  if cdsProdImposto.State in [dsInsert, dsEdit] then
    cdsProdImposto.Cancel;
  if cdsProdutoSimilar.State in [dsInsert, dsEdit] then
    cdsProdutoSimilar.Cancel;
  if cdsFornecedor.State in [dsInsert, dsEdit] then
    cdsFornecedor.Cancel;
  if cdsVariedade.State in [dsInsert, dsEdit] then
    cdsVariedade.Cancel;

  if cdsProdImpostoOutro.State in [dsInsert, dsEdit] then
    cdsProdImpostoOutro.Cancel;

  GravaChave(1, '', nil);
  inherited;

  //grava novos registros para tabela de pendencias
  GravaIntegracao('Produto', 'idProduto', cdsPadrao.FieldByName('idProduto').AsString, 'I', 'AGUARDANDO');
end;


procedure TFrmCadProduto.BtnAdicionarForClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsFornecedor, BtnAdicionarFor, BtnCancelarFor, BtnRetirarFor, BtnNovoFor, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarFor' then
    BtnNovoFor.Click;

  DBEidFornecedor.SetFocus;
end;

procedure TFrmCadProduto.BtnAdicionarProdClick(Sender: TObject);
begin
  inherited;
  if ((sender as tcbitbtn).Name = 'BtnAdicionarProd') and (DBEidProdutoSimilar.Text = DBEidProduto.Text) then
  begin
    messagedlg('Você não pode adicionar como similar o mesmo produto do cadastro!', mtwarning, [mbok], 0);
    exit;
  end;

  funcao.GravaSec(chave, cdsProdutoSimilar, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
    BtnNovoProd.Click;

  DBEidProdutoSimilar.SetFocus;

end;

procedure TFrmCadProduto.BtnAdicionarVarClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsVariedade, BtnAdicionarVar, BtnCancelarVar, BtnRetirarVar, BtnNovoVar, (Sender as TCBitBtn), 'idVariedade');
  if (sender as tcbitbtn).Name = 'BtnAdicionarVar' then
    BtnNovoVar.Click;

  DBEidVariedade.SetFocus;

end;

procedure TFrmCadProduto.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmCarregaEstoque, FrmCarregaEstoque);
  FrmCarregaEstoque.idEmpresa := frmPrincipal.idEmpresa;
  FrmCarregaEstoque.idCadEmpresa := frmPrincipal.idCadEmpresa;
  FrmCarregaEstoque.idProduto := cdsPadrao.FieldByName('idProduto').AsString;
  FrmCarregaEstoque.BtnExecutar.Click;
  FrmCarregaEstoque.ShowModal;
end;

procedure TFrmCadProduto.BtnReculculaEstoqueClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (MessageDlg('Deseja realmente recalcular o estoque desse produto? Esse processo é irreversivel!', mtConfirmation, [mbYes, mbNo], 0)  = mrYes) then
  begin
    sql := 'EXEC spRecalcEstoqueGeral ' + frmPrincipal.idEmpresa + ', ' +
           QuotedStr(DBEdtCadastro.Text) + ', ' + QuotedStr(DBEidProduto.Text) + ', ' + QuotedStr('0') + ', ' +
           QuotedStr('S');
    dmPadrao.dbConexao.ExecuteDirect(sql);
    CarregaDepositos;
  end;
end;

procedure TFrmCadProduto.BtnSalvarGerClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsProdGerencial, BtnSalvarGer, BtnCancelarGer, BtnExcluirGer, BtnNovoGer, (Sender as TCBitBtn), '');
  DBEidEmpresa.SetFocus;
end;

procedure TFrmCadProduto.BtnSalvarImpClick(Sender: TObject);
var
  idNatureza : string;
  prIss, prInss : double;
begin
  inherited;
  prIss := 0;
  prInss := 0;  
  if ((Sender as TCBitBtn).Name = 'BtnSalvarImp') or ((Sender as TCBitBtn).Name = 'BtnNovoImp') then
  begin
    idNatureza := DBEidNatureza.Text;
    prIss := cdsProdImposto.FieldByName('prIss').Value;
    prInss := cdsProdImposto.FieldByName('prInss').Value;
    if trim(DBEprPis.Text) = '' then
      cdsProdImposto.FieldByName('prPis').AsFloat := 0;
    if trim(DBEprCofins.Text) = '' then
      cdsProdImposto.FieldByName('prCofins').AsFloat := 0;
  end;
  funcao.GravaSec(chave, cdsProdImposto, BtnSalvarImp, BtnCancelarImp, BtnExcluirImp, BtnNovoImp, (Sender as TCBitBtn), 'idProdImposto');
  if (Sender as TCBitBtn).Name = 'BtnSalvarImp' then
    cdsProdImposto.Append;
  if ((Sender as TCBitBtn).Name = 'BtnSalvarImp') or ((Sender as TCBitBtn).Name = 'BtnNovoImp') then
  begin
    cdsProdImposto.FieldByName('idNatureza').AsString := idNatureza;
    cdsProdImposto.FieldByName('prIss').Value := prIss;
    cdsProdImposto.FieldByName('prInss').Value := prInss;
  end;
  DBEidEstadoOri.SetFocus;
end;

procedure TFrmCadProduto.BtnSalvarOutClick(Sender: TObject);
var
  idNatureza, idImpostoOutro : string;
begin
  inherited;
  if ((Sender as TCBitBtn).Name = 'BtnSalvarOut') or ((Sender as TCBitBtn).Name = 'BtnNovoOut') then
  begin
    idNatureza := DBEidNaturezaO.Text;
    idImpostoOutro := DBEidImpostoOutro.Text;
  end;

  funcao.GravaSec(chave, cdsProdImpostoOutro, BtnSalvarOut, BtnCancelarOut, BtnExcluirOut, BtnNovoOut, (Sender as TCBitBtn), 'idProdImpostoOutro');
  if (Sender as TCBitBtn).Name = 'BtnSalvarOut' then
    cdsProdImpostoOutro.Append;
  if ((Sender as TCBitBtn).Name = 'BtnSalvarOut') or ((Sender as TCBitBtn).Name = 'BtnNovoOut') then
  begin
    cdsProdImpostoOutro.FieldByName('idNatureza').AsString := idNatureza;
    cdsProdImpostoOutro.FieldByName('idImpostoOutro').AsString := idImpostoOutro;
  end;
  DBEidEstadoOriO.SetFocus;
end;

procedure TFrmCadProduto.CarregaDepositos;
var
  sql : string;
begin
  sql := 'EXEC spRelEstoque ' + FrmPrincipal.idEmpresa + ', ' +
                                FrmPrincipal.idCadEmpresa + ', ' +
                                QuotedStr('0') + ', ' +
                                DBEidProduto.Text + ', ' +
                                DBEidProduto.Text + ', ' +
                                QuotedStr('') + ', ' +
                                QuotedStr('') + ', ' +
                                QuotedStr('0') + ', ' +
                                QuotedStr('N') + ', ' +
                                QuotedStr('S') + ', ' +
                                QuotedStr('N') + ', ' +
                                QuotedStr('N') + ', ' +
                                QuotedStr('N') + ', 0, 0, 0, 0, ' + QuotedStr('D') + ', 0';
  cdsDeposito.Active := False;
  cdsDeposito.CommandText := sql;
  cdsDeposito.Active := True;

  sql := 'EXEC spRelEstoque ' + FrmPrincipal.idEmpresa + ', ' +
                                FrmPrincipal.idCadEmpresa + ', ' +
                                QuotedStr('0') + ', ' +
                                DBEidProduto.Text + ', ' +
                                DBEidProduto.Text + ', ' +
                                QuotedStr('') + ', ' +
                                QuotedStr('') + ', ' +
                                QuotedStr('0') + ', ' +
                                QuotedStr('N') + ', ' +
                                QuotedStr('S') + ', ' +
                                QuotedStr('N') + ', ' +
                                QuotedStr('N') + ', ' +
                                QuotedStr('N') + ', 0, 0, 0, 0, ' + QuotedStr('D') + ', 0';
  cdsDepEmpresa.Active := False;
  cdsDepEmpresa.CommandText := sql;
  cdsDepEmpresa.Active := True;
end;

procedure TFrmCadProduto.CHKidEstadoOriOClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCCheckBox).Checked then //se estiver checado é para anular
  begin
    if not (cdsProdImpostoOutro.State in [dsInsert, dsEdit]) then
      cdsProdImpostoOutro.Edit;
    cdsProdImpostoOutro.FieldByName('idEstadoOri').Clear;
  end;
end;

procedure TFrmCadProduto.CHKidEstadoDesOClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCCheckBox).Checked then //se estiver checado é para anular
  begin
    if not (cdsProdImpostoOutro.State in [dsInsert, dsEdit]) then
      cdsProdImpostoOutro.Edit;
    cdsProdImpostoOutro.FieldByName('idEstadoDes').Clear;
  end;
end;

procedure TFrmCadProduto.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
  begin
    cdsPadrao.FieldByName('Combustivel').AsString := 'N';
    cdsPadrao.FieldByName('producao').AsString := 'S';
    cdsPadrao.FieldByName('idProdOrigem').AsInteger := 0;
  end;
end;

procedure TFrmCadProduto.cdsProdGerencialAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (not (Dataset.State = dsInsert)) and (cdsProdGerencial.ChangeCount <= 0) then
  begin
    LookGerencial.Refresh;
    DataSet.Refresh;
  end;
end;

procedure TFrmCadProduto.cdsProdGerencialCalcFields(DataSet: TDataSet);
var
  sql : string;
begin
  inherited;
  if not DataSet.IsEmpty then
  begin
    if trim(DataSet.FieldByName('idGerencial').AsString) <> '' then
    begin
      sql := 'SELECT descGerencial FROM Gerencial WHERE idEmpresa = ' + DataSet.FieldByName('idEmpresa').AsString +
             ' AND idGerencial = ' + DataSet.FieldByName('idGerencial').AsString;
      DataSet.FieldByName('descGerencial').AsString := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descGerencial').AsString;
    end;
    if trim(DataSet.FieldByName('idGerencialSaida').AsString) <> '' then
    begin
      sql := 'SELECT descGerencial FROM Gerencial WHERE idEmpresa = ' + DataSet.FieldByName('idEmpresa').AsString +
             ' AND idGerencial = ' + DataSet.FieldByName('idGerencialSaida').AsString;
      DataSet.FieldByName('descGerencialSaida').AsString := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descGerencial').AsString;
    end;
  end;
end;

procedure TFrmCadProduto.cdsProdImpostoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadProduto.cdsProdImpostoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    if name = 'cdsProdImposto' then
    begin
      if trim(DBEidProduto.Text) <> '' then
        FieldByName('idProduto').AsString := DBEidProduto.Text
      else
        FieldByName('idProduto').AsString := '0';
      FieldByName('prIss').Value := 0;
      FieldByName('prIpi').Value := 0;      
      FieldByName('prInss').Value := 0;
      FieldByName('prIcms').Value := 0;
      FieldByName('prReducao').Value := 0;
      FieldByName('vlPauta').Value := 0;
      FieldByName('prPis').Value := 0;
      FieldByName('prCofins').Value := 0;
      FieldByName('tpCredito').Value := 'N';
      FieldByName('prCredPresumido').Value := 0;
      FieldByName('prCredOutorgado').Value := 0;
    end
    else
      if name = 'cdsProdImpostoOutro' then
      begin
        if trim(DBEidProduto.Text) <> '' then
          FieldByName('idProduto').AsString := DBEidProduto.Text
        else
          FieldByName('idProduto').AsString := '0';
        FieldByName('prFaturamento').Value := 0;
        FieldByName('prQtdeProduto').Value := 0;
        FieldByName('vlQtdeProduto').Value := 0;
        FieldByName('vlTonelada').Value := 0;
        FieldByName('vlSaca').Value := 0;
      end;
  end;
  cdsPadrao.Edit;
end;

procedure TFrmCadProduto.cdsProdImpostoAfterScroll(DataSet: TDataSet);
begin
  inherited;
{  with DataSet do
  begin
    if not (State in [dsInsert]) then
    begin
      if trim(DBEidEstadoOri.Text) = '' then
        CHKidEstadoOri.Checked := true;
      if trim(DBEidEstadoDes.Text) = '' then
        CHKidEstadoDes.Checked := true;
    end;
  end;}
end;

procedure TFrmCadProduto.cdsProdImpostoOutroAfterScroll(DataSet: TDataSet);
begin
  inherited;
{  with DataSet do
  begin
    if not (State in [dsInsert]) then
    begin
      if trim(DBEidEstadoOriO.Text) = '' then
        CHKidEstadoOriO.Checked := true;
      if trim(DBEidEstadoDesO.Text) = '' then
        CHKidEstadoDesO.Checked := true;
    end;
  end;}
end;

procedure TFrmCadProduto.CHKidEstadoDesClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCCheckBox).Checked then //se estiver checado é para anular
  begin
    if not (cdsProdImposto.State in [dsInsert, dsEdit]) then
      cdsProdImposto.Edit;
    cdsProdImposto.FieldByName('idEstadoDes').AsString := '';
  end;
end;

procedure TFrmCadProduto.CHKidEstadoOriClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCCheckBox).Checked then //se estiver checado é para anular
  begin
    if not (cdsProdImposto.State in [dsInsert, dsEdit]) then
      cdsProdImposto.Edit;
    cdsProdImposto.FieldByName('idEstadoOri').Clear;
  end;
end;

procedure TFrmCadProduto.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsProdGerencial, [DBEidEmpresa]);
end;

procedure TFrmCadProduto.DBEidEstadoDesExit(Sender: TObject);
begin
  inherited;
//  CHKidEstadoDes.Checked := trim(DBEidEstadoDes.Text) = '';
  if (trim(DBEidEstadoOri.text) = '') and (trim(DBEidEstadoDes.text) = '') then
    BuscaChaveSec(cdsProdImposto, [DBEidProduto, DBEidNatureza])
  else
    if trim(DBEidEstadoDes.text) = '' then
      BuscaChaveSec(cdsProdImposto, [DBEidProduto, DBEidNatureza, DBEidEstadoOri])
    else
      if trim(DBEidEstadoOri.text) = '' then
        BuscaChaveSec(cdsProdImposto, [DBEidProduto, DBEidNatureza, DBEidEstadoDes])
      else
        BuscaChaveSec(cdsProdImposto, [DBEidProduto, DBEidNatureza, DBEidEstadoOri, DBEidEstadoDes]);
end;

procedure TFrmCadProduto.DBEidEstadoDesOExit(Sender: TObject);
begin
  inherited;
  CHKidEstadoDesO.Checked := trim(DBEidEstadoDesO.Text) = '';
  if (trim(DBEidEstadoOriO.text) = '') and (trim(DBEidEstadoDesO.text) = '') then
    BuscaChaveSec(cdsProdImpostoOutro, [DBEidProduto, DBEidNatureza, DBEidImpostoOutro])
  else
    if trim(DBEidEstadoDesO.text) = '' then
      BuscaChaveSec(cdsProdImpostoOutro, [DBEidProduto, DBEidNatureza, DBEidImpostoOutro, DBEidEstadoOri])
    else
      if trim(DBEidEstadoOriO.text) = '' then
        BuscaChaveSec(cdsProdImpostoOutro, [DBEidProduto, DBEidNatureza, DBEidImpostoOutro, DBEidEstadoDes])
      else
        BuscaChaveSec(cdsProdImpostoOutro, [DBEidProduto, DBEidNatureza, DBEidImpostoOutro, DBEidEstadoOri, DBEidEstadoDes]);
end;

procedure TFrmCadProduto.DBEidFornecedorExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsFornecedor, [DBEidFornecedor]);
end;

procedure TFrmCadProduto.DBEidNaturezaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsProdImposto, [DBEidNatureza]);
end;

procedure TFrmCadProduto.DBEidNaturezaOEnter(Sender: TObject);
begin
  inherited;
 vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TFrmCadProduto.DBEidNaturezaOExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsProdImpostoOutro, [DBEidNaturezaO]);
end;

procedure TFrmCadProduto.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
  if Trim(DbeidProduto.Text) <> '' then
    CarregaDepositos;
end;

procedure TFrmCadProduto.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadProduto.DBEidProdutoSimilarExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsProdutoSimilar, [DBEidProdutoSimilar]);
end;

procedure TFrmCadProduto.DBEidVariedadeExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsVariedade, [DBEidVariedade]);
end;

procedure TFrmCadProduto.DBRGtpCreditoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsProdImposto.FieldByName('tpCredito').AsString;
end;

procedure TFrmCadProduto.DBRGtpCreditoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> cdsProdImposto.FieldByName('tpCredito').AsString then
  begin
    if cdsProdImposto.FieldByName('tpCredito').AsString = 'N' then //Nenhum
    begin
      funcao.SomenteLeitura([DBEprCredPresumido, DBEprCredOutorgado], true);
      cdsProdImposto.FieldByName('prCredPresumido').Value := 0;
      cdsProdImposto.FieldByName('prCredOutorgado').Value := 0;
    end
    else
      if cdsProdImposto.FieldByName('tpCredito').AsString = 'P' then //presumido
      begin
        funcao.SomenteLeitura([DBEprCredPresumido], false);
        funcao.SomenteLeitura([DBEprCredOutorgado], true);
        cdsProdImposto.FieldByName('prCredOutorgado').Value := 0;
      end
      else
        if cdsProdImposto.FieldByName('tpCredito').AsString = 'O' then //outorgado
        begin
          funcao.SomenteLeitura([DBEprCredPresumido], true);
          funcao.SomenteLeitura([DBEprCredOutorgado], false);
          cdsProdImposto.FieldByName('prCredPresumido').Value := 0;
        end;

  end;
end;

procedure TFrmCadProduto.dsFornecedorStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsFornecedor, BtnAdicionarFor, BtnCancelarFor, BtnRetirarFor, btnNovoFor);
end;

procedure TFrmCadProduto.dspProdImpostoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);  
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspProdImposto' then
      GeraAutoInc(DeltaDS, 'ProdImposto', 'idProdImposto', [])
    else
      if (Sender as TDataSetProvider).Name = 'dspProdImpostoOutro' then
        GeraAutoInc(DeltaDS, 'ProdImpostoOutro', 'idProdImpostoOutro', [])
      else
        if (Sender as TDataSetProvider).Name = 'dspVariedade' then
          GeraAutoInc(DeltaDS, 'ProdutoVariedade', 'idVariedade', chave);

  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadProduto.dsProdGerencialStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarGer, BtnCancelarGer, BtnExcluirGer, BtnNovoGer);
end;

procedure TFrmCadProduto.dsProdImpostoOutroStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarOut, BtnCancelarOut, BtnExcluirOut, BtnNovoOut);
end;

procedure TFrmCadProduto.dsProdImpostoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarImp, BtnCancelarImp, BtnExcluirImp, BtnNovoImp);
end;

procedure TFrmCadProduto.dsProdutoSimilarStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsProdutoSimilar, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadProduto.dspVariedadeBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmCadProduto.dsVariedadeStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsVariedade, BtnAdicionarVar, BtnCancelarVar, BtnRetirarVar, btnNovoVar);
end;

procedure TFrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FrmImportaNfe) then
  begin
    if cdsPadraoidProduto.AsInteger > 0 then
    begin
    if not (FrmImportaNfe.cdsProdutos.State in [dsEdit, dsInsert]) then
        FrmImportaNfe.cdsProdutos.Edit;
      FrmImportaNfe.cdsProdutosidProduto.AsInteger := cdsPadraoidProduto.AsInteger;
    end;
  end;

  frmCadProduto := nil;
end;

procedure TFrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 7);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsProdImposto;
  Tabelas[2] := cdsProdImpostoOutro;
  Tabelas[3] := cdsProdGerencial;
  Tabelas[4] := cdsProdutoSimilar;
  Tabelas[5] := cdsFornecedor;
  Tabelas[6] := cdsVariedade;
//  Tabelas[2] := cdsCadEmpresa;
  chave[0] := DBEidProduto;
  foco := DBEidProduto;
  tab_chave := 'Produto';
  situacao := 'stProduto';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  Height := 500;
  Width := 585;
end;

procedure TFrmCadProduto.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex in [0,1,2] then
  begin
    Height
     := 500;
    Width := 585;
  end;
  if (PagAbas.ActivePageIndex in [1,2,3,4,5]) then
  begin
    if trim(DBEidProduto.Text) = '' then
    begin
      messagedlg('O produto deve ser gravado primeiramente!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;
  end;
  if PagAbas.ActivePageIndex = 3 then
  begin
    Height := 590;
    Width := 760;
  end;
  if PagAbas.ActivePageIndex = 4 then
  begin
    Height := 495;
    Width := 615;
  end;
  if PagAbas.ActivePageIndex = 5 then
  begin
    Height := 495;
    Width := 630;
  end;
  if PagAbas.ActivePageIndex = 7 then
  begin
    Height := 605;
    Width := 577;
  end;
end;

end.
