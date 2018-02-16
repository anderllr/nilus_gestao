unit uFrmCadRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, CDBRadioGroup, Math, System.Actions, System.ImageList;

type
  TFrmCadRomaneio = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    sdsRomaneio: TSQLDataSet;
    CLabel7: TCLabel;
    DBEdtRomaneio: TCDBEdit;
    DBEstRomaneio: TCDBEdit;
    CLabel14: TCLabel;
    DBEidRomaneio: TCDBEdit;
    CLabel5: TCLabel;
    LookCliente: TCLookUp;
    DBEidArmazem: TCDBEdit;
    lblCliFor: TCLabel;
    DBEidRomaneioArm: TCDBEdit;
    CLabel3: TCLabel;
    CBitBtn1: TCBitBtn;
    LookProdDeposito: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    CLabel10: TCLabel;
    DBEidArmOperacao: TCDBEdit;
    LookOperacao: TCLookUp;
    CLabel19: TCLabel;
    LookTpArmOperacao: TCLookUp;
    EDvlFinanc: TCEdit;
    EDPar: TCEdit;
    EDDoc: TCEdit;
    cdsPadraoqtArrobas: TFloatField;
    cdsPadraoqtSacas: TFloatField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidRomaneio: TIntegerField;
    cdsPadraoidArmOperacao: TSmallintField;
    cdsPadraoidRomaneioArm: TIntegerField;
    cdsPadraodtRomaneio: TSQLTimeStampField;
    cdsPadraoidArmazem: TIntegerField;
    cdsPadraoidProdDeposito: TSmallintField;
    cdsPadraoidMotorista: TIntegerField;
    cdsPadraodescMotorista: TStringField;
    cdsPadraoidContratoFrete: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidVariedade: TSmallintField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoqtPesoBruto: TIntegerField;
    cdsPadraoqtPesoTara: TIntegerField;
    cdsPadraoqtPesoProduto: TIntegerField;
    cdsPadraoqtPesoDesconto: TIntegerField;
    cdsPadraoqtPesoLiquido: TIntegerField;
    cdsPadraoobsRomaneio: TStringField;
    cdsPadraostRomaneio: TStringField;
    cdsPadraovlLiquido: TFMTBCDField;
    cdsPadraovlContribSocial: TFMTBCDField;
    cdsPadraovlOutrosImp: TFMTBCDField;
    cdsPadraovlIcmsFrete: TFMTBCDField;
    cdsPadraovlIcms: TFMTBCDField;
    cdsPadraovlTotal: TFMTBCDField;
    FindVariedade: TCFind;
    cdsPadraoidContratoVenda: TStringField;
    cdsPadraoidProdutor: TIntegerField;
    cdsPadraoidCadEmpresaFilial: TSmallintField;
    CGroupBox7: TCGroupBox;
    CLabel23: TCLabel;
    CLabel11: TCLabel;
    CLabel2: TCLabel;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEidSafra: TCDBEdit;
    DBEidProduto: TCDBEdit;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    CBitBtn2: TCBitBtn;
    DBEidVariedade: TCDBEdit;
    LookVariedade: TCLookUp;
    CLookUp2: TCLookUp;
    CBitBtn4: TCBitBtn;
    DBEidResultado: TCDBEdit;
    LookProdutor: TCLookUp;
    DBEidProdutor: TCDBEdit;
    TabFinanceiro: TTabSheet;
    CGroupBox5: TCGroupBox;
    CLabel13: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel27: TCLabel;
    CLabel28: TCLabel;
    CLabel29: TCLabel;
    lbl1: TCLabel;
    DBEqtPesoBruto: TCDBEdit;
    DBEqtPesoTara: TCDBEdit;
    DBEqtPesoProduto: TCDBEdit;
    DBEqtPesoDesconto: TCDBEdit;
    DBEqtPesoLiquido: TCDBEdit;
    DBEqtArrobas: TCDBEdit;
    DBEqtSacas: TCDBEdit;
    DBEvlTotal: TCDBEdit;
    DBEvlUnitario: TCDBEdit;
    CGroupBox6: TCGroupBox;
    CLabel21: TCLabel;
    CLabel22: TCLabel;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLabel26: TCLabel;
    DBEvlIcms: TCDBEdit;
    DBEvlIcmsFrete: TCDBEdit;
    DBEvlOutrosImp: TCDBEdit;
    DBEvlLiquido: TCDBEdit;
    DBEvlContribSocial: TCDBEdit;
    cdsPadraotpContratoFrete: TStringField;
    cdsPadraovlFrete: TFMTBCDField;
    CGroupBox3: TCGroupBox;
    CLabel9: TCLabel;
    CLabel8: TCLabel;
    CLabel1: TCLabel;
    CLabel20: TCLabel;
    CLabel30: TCLabel;
    DBEplaca: TCDBEdit;
    DBEdescMotorista: TCDBEdit;
    DBEidMotorista: TCDBEdit;
    DBEidContratoFrete: TCDBEdit;
    LookEmissaoFrete: TCLookUp;
    LookMotorista: TCLookUp;
    DBRGtpContratoFrete: TCDBRadioGroup;
    DBEvlFrete: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBMobsRomaneio: TCDBMemo;
    cdsPadraoidNF: TIntegerField;
    DBEidNF: TCDBEdit;
    CLabel31: TCLabel;
    CGroupBox8: TCGroupBox;
    CLabel32: TCLabel;
    CLookUp1: TCLookUp;
    DBEidContratoVenda: TCDBEdit;
    CLookUp4: TCLookUp;
    CLookUp5: TCLookUp;
    cdsPadraoplaca: TStringField;
    TabContratoCompra: TTabSheet;
    CGroupBox9: TCGroupBox;
    CLabel33: TCLabel;
    CLabel38: TCLabel;
    CLabel40: TCLabel;
    DBEidContratoCompra: TCDBEdit;
    LookProdutoCompra: TCLookUp;
    LookValorProdutoCompra: TCLookUp;
    CLookUp6: TCLookUp;
    CLookUp10: TCLookUp;
    cdsCompra: TClientDataSet;
    dsCompra: TDataSource;
    dspCompra: TDataSetProvider;
    sdsCompra: TSQLDataSet;
    cdsCompraidEmpresa: TIntegerField;
    cdsCompraidCadEmpresa: TSmallintField;
    cdsCompraidRomaneio: TIntegerField;
    cdsCompraidContratoCompra: TStringField;
    cdsCompraqtProduto: TIntegerField;
    cdsCompraaceitaClassifDestino: TStringField;
    DBEqtProduto: TCDBEdit;
    CLabel12: TCLabel;
    DBCKaceitaClassifDestino: TCDBCheckBox;
    CGroupBox10: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox11: TCGroupBox;
    CDBGrid1: TCDBGrid;
    cdsFornecedor: TClientDataSet;
    cdsCompradescCadFornecedor: TStringField;
    CGroupBox4: TCGroupBox;
    DBEqtPesoLiquidoC: TCDBEdit;
    CLabel37: TCLabel;
    cdsCompraqtProdutoTotal: TAggregateField;
    cdsCompraqtSaldoTotal: TIntegerField;
    CLabel39: TCLabel;
    DBEqtProdutoTotal: TCDBEdit;
    CLabel41: TCLabel;
    DBEqtSaldoTotal: TCDBEdit;
    TabDesembarque: TTabSheet;
    CGroupBox12: TCGroupBox;
    CLabel42: TCLabel;
    CLabel48: TCLabel;
    DBEidDesconto: TCDBEdit;
    CLookUp18: TCLookUp;
    DBEprDesconto: TCDBEdit;
    CGroupBox13: TCGroupBox;
    CDBGrid2: TCDBGrid;
    CGroupBox14: TCGroupBox;
    BtnAdicionarClas: TCBitBtn;
    BtnCancelarClas: TCBitBtn;
    BtnRetirarClas: TCBitBtn;
    BtnNovoClas: TCBitBtn;
    CGroupBox15: TCGroupBox;
    CLabel49: TCLabel;
    CLabel50: TCLabel;
    CLabel51: TCLabel;
    DBEqtPesoProdutoD: TCDBEdit;
    DBEqtTotalDesconto: TCDBEdit;
    DBEqtPesoLiquidoD: TCDBEdit;
    cdsClassificacao: TClientDataSet;
    dsClassificacao: TDataSource;
    dspClassificacao: TDataSetProvider;
    sdsClassificacao: TSQLDataSet;
    cdsClassificacaoidEmpresa: TIntegerField;
    cdsClassificacaoidCadEmpresa: TSmallintField;
    cdsClassificacaoidRomaneio: TIntegerField;
    cdsClassificacaoidDesconto: TSmallintField;
    cdsClassificacaoprDesconto: TFMTBCDField;
    cdsClassificacaoqtDesconto: TIntegerField;
    cdsClassificacaoqtTotalDesconto: TAggregateField;
    CLabel43: TCLabel;
    DBEqtDesconto: TCDBEdit;
    cdsDesconto: TClientDataSet;
    cdsClassificacaodescDesconto: TStringField;
    cdsCompraidFornecedor: TIntegerField;
    CLookUp11: TCLookUp;
    DBEidCliente: TCDBEdit;
    CLabel45: TCLabel;
    cdsCompraidCadFornecedor: TSmallintField;
    DBEidFornecedor: TCDBEdit;
    CLabel44: TCLabel;
    DBEidCadFornecedor: TCDBEdit;
    CLookUp3: TCLookUp;
    CLookUp12: TCLookUp;
    BtnVerFinanceiro: TCBitBtn;
    CLookUp7: TCLookUp;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel36: TCLabel;
    CLookUp8: TCLookUp;
    CLookUp9: TCLookUp;
    lookInscricaoCompra: TCLookUp;
    LookCnpjCompra: TCLookUp;
    lookFornecedor: TCLookUp;
    cdsPadraovlUnitario: TFMTBCDField;
    cdsPadraonrCartaFrete: TIntegerField;
    DBEnrCartaFrete: TCDBEdit;
    CLabel46: TCLabel;
    cdsCompraidEmbarque: TIntegerField;
    cdsCompraidCadEmbarque: TSmallintField;
    LookDescarga: TCLookUp;
    CLookUp13: TCLookUp;
    DBEidCadEmbarque: TCDBEdit;
    DBEidEmbarque: TCDBEdit;
    CLabel47: TCLabel;
    dspFinanc: TDataSetProvider;
    sdsFinanc: TSQLDataSet;
    cdsFinanc: TClientDataSet;
    cdsFinancidEmpresa: TIntegerField;
    cdsFinancidCadEmpresa: TSmallintField;
    cdsFinancidAdiantamento: TIntegerField;
    cdsFinancidTituloRec: TIntegerField;
    cdsFinancidMovCaixa: TIntegerField;
    cdsFinancidMovConta: TIntegerField;
    dsFinanc: TDataSource;
    cdsFinancidRomaneio: TIntegerField;
    CLabel52: TCLabel;
    DBEprMedido: TCDBEdit;
    cdsClassificacaoprMedido: TFMTBCDField;
    cdsClassificacaoqtDestino: TIntegerField;
    DBEqtDestino: TCDBEdit;
    CLabel53: TCLabel;
    lookalteraQtde: TCLookUp;
    DBEdtEntrega: TCDBEdit;
    CLabel54: TCLabel;
    cdsPadraodtEntrega: TSQLTimeStampField;
    DBEdtRecebimento: TCDBEdit;
    CLabel55: TCLabel;
    BtnFinanceiroRom: TCBitBtn;
    cdsPadraodtRecebimento: TSQLTimeStampField;
    CLabel56: TCLabel;
    DBEqtDescontoC: TCDBEdit;
    cdsCompraqtDesconto: TIntegerField;
    panDesconto: TPanel;
    BtnConfirmar: TCBitBtn;
    cdsCompraDesc: TClientDataSet;
    dsCompraDesc: TDataSource;
    dspCompraDesc: TDataSetProvider;
    sdsCompraDesc: TSQLDataSet;
    cdsCompraDescidEmpresa: TIntegerField;
    cdsCompraDescidCadEmpresa: TSmallintField;
    cdsCompraDescidRomaneio: TIntegerField;
    cdsCompraDescidFornecedor: TIntegerField;
    cdsCompraDescidCadFornecedor: TSmallintField;
    cdsCompraDescidContratoCompra: TStringField;
    cdsCompraDescidDesconto: TSmallintField;
    cdsCompraDescprMedido: TFMTBCDField;
    cdsCompraDescprDesconto: TFMTBCDField;
    cdsCompraDescqtDesconto: TIntegerField;
    DBEqtPesoBrutoC: TCDBEdit;
    CLabel57: TCLabel;
    BtnDesconto: TSpeedButton;
    cdsCompraqtPesoBruto: TIntegerField;
    CGroupBox16: TCGroupBox;
    CLabel58: TCLabel;
    CLabel59: TCLabel;
    CLabel60: TCLabel;
    CLabel61: TCLabel;
    DBEidDescontoC: TCDBEdit;
    lookDescontoC: TCLookUp;
    DBEprDescontoC: TCDBEdit;
    DBEqtDescontoCD: TCDBEdit;
    DBEprMedidoC: TCDBEdit;
    CGroupBox17: TCGroupBox;
    CDBGrid3: TCDBGrid;
    CGroupBox18: TCGroupBox;
    BtnAdicionarDesc: TCBitBtn;
    BtnCancelarDesc: TCBitBtn;
    BtnRetirarDesc: TCBitBtn;
    BtnNovoDesc: TCBitBtn;
    CGroupBox19: TCGroupBox;
    CLabel62: TCLabel;
    CLabel63: TCLabel;
    CLabel64: TCLabel;
    DBEqtPesoBrutoCD: TCDBEdit;
    DBEqtTotDesconto: TCDBEdit;
    DBEqtProdutoC: TCDBEdit;
    cdsCompraDescqtTotDesconto: TAggregateField;
    cdsCompraDescdescDesconto: TStringField;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    CLabel65: TCLabel;
    cdsPadraoidDocSerie: TStringField;
    CLabel69: TCLabel;
    DBEvlFreteTotal: TCDBEdit;
    CLabel68: TCLabel;
    DBEvlAdiantamento: TCDBEdit;
    DBEvlSeguro: TCDBEdit;
    DBEvlTarifaClassif: TCDBEdit;
    CLabel66: TCLabel;
    CLabel67: TCLabel;
    cdsPadraovlFreteTotal: TFMTBCDField;
    cdsPadraovlAdiantamento: TFMTBCDField;
    cdsPadraovlSeguro: TFMTBCDField;
    cdsPadraovlTarifaClassif: TFMTBCDField;
    BtnAjustar: TCBitBtn;
    BtnOrdemFrete: TCBitBtn;
    panAjuste: TPanel;
    CGroupBox20: TCGroupBox;
    CLabel72: TCLabel;
    CLabel73: TCLabel;
    DBEqtDescontoAnt: TCDBEdit;
    DBEprDescontoAnt: TCDBEdit;
    CGroupBox21: TCGroupBox;
    gridAjuste: TCDBGrid;
    cdsAjuste: TClientDataSet;
    dsAjuste: TDataSource;
    dspAjuste: TDataSetProvider;
    sdsAjuste: TSQLDataSet;
    cdsAjusteidEmpresa: TIntegerField;
    cdsAjusteidCadEmpresa: TSmallintField;
    cdsAjusteidRomaneio: TIntegerField;
    cdsAjusteidDesconto: TSmallintField;
    cdsAjusteidAjuste: TSmallintField;
    cdsAjustedtAjuste: TSQLTimeStampField;
    cdsAjusteprDescontoAnt: TFMTBCDField;
    cdsAjusteprDescontoNovo: TFMTBCDField;
    cdsAjusteqtDescontoAnt: TIntegerField;
    cdsAjusteqtDescontoNovo: TIntegerField;
    cdsAjustealteraOrdemFrete: TStringField;
    cdsAjustedescMotivo: TStringField;
    cdsAjusteidUsuario: TSmallintField;
    cdsAjustedescUsuario: TStringField;
    CLabel70: TCLabel;
    DBEdtAjuste: TCDBEdit;
    DBCKalteraOrdemFrete: TCDBCheckBox;
    CLabel71: TCLabel;
    DBEdescMotivo: TCDBEdit;
    CLabel74: TCLabel;
    DBEidUsuario: TCDBEdit;
    DBEdescUsuario: TCDBEdit;
    BtnConfirmaAjuste: TCBitBtn;
    BtnVerAjuste: TCBitBtn;
    lookgeraEstoque: TCLookUp;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidRomaneioExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidRomaneioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoFreteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidArmOperacaoEnter(Sender: TObject);
    procedure DBEidArmOperacaoExit(Sender: TObject);
    procedure DBEidProdDepositoExit(Sender: TObject);
    procedure DBEidArmazemExit(Sender: TObject);
    procedure GravaFinanceiro(tpFinanceiro : string; vlUnitario: currency);
    procedure DBEidMotoristaExit(Sender: TObject);
    procedure CalculaPeso;
    procedure DBEqtPesoBrutoExit(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure CalcConversao;
    procedure actNovoExecute(Sender: TObject);
    procedure DBEvlTotalExit(Sender: TObject);
    procedure DBEvlTotalEnter(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure DBEidProdutoEnter(Sender: TObject);
    procedure DBEidContratoVendaExit(Sender: TObject);
    procedure DBMobsRomaneioExit(Sender: TObject);
    procedure DBEidContratoFreteExit(Sender: TObject);
    procedure dspCompraBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure cdsCompraAfterInsert(DataSet: TDataSet);
    procedure dsCompraStateChange(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoCompraExit(Sender: TObject);
    procedure DBEidDescontoExit(Sender: TObject);
    procedure cdsClassificacaoAfterInsert(DataSet: TDataSet);
    procedure dsClassificacaoStateChange(Sender: TObject);
    procedure BtnAdicionarClasClick(Sender: TObject);
    procedure DBEprDescontoExit(Sender: TObject);
    procedure DBEqtDescontoExit(Sender: TObject);
    procedure cdsCompraCalcFields(DataSet: TDataSet);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidEmbarqueKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFinanceiroRomClick(Sender: TObject);
    procedure cdsClassificacaoAfterScroll(DataSet: TDataSet);
    procedure DBEidNFExit(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure HabilitaFinanc;
    procedure DBEidClienteExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEqtPesoBrutoCExit(Sender: TObject);
    procedure DBEqtDescontoCExit(Sender: TObject);
    procedure dsCompraDescStateChange(Sender: TObject);
    procedure BtnAdicionarDescClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnDescontoClick(Sender: TObject);
    procedure DBEidDescontoCExit(Sender: TObject);
    procedure DBEprDescontoCExit(Sender: TObject);
    procedure DBEqtDescontoCDExit(Sender: TObject);
    procedure CalcFrete;
    procedure DBEvlFreteExit(Sender: TObject);
    procedure BtnOrdemFreteClick(Sender: TObject);
    procedure BtnAjustarClick(Sender: TObject);
    procedure BtnConfirmaAjusteClick(Sender: TObject);
    procedure BtnVerAjusteClick(Sender: TObject);
    procedure cdsAjusteAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    vlAnterior : string;
    Salvar, browser, ajusteDesc : Boolean;
  public
    { Public declarations }
  end;

var
  FrmCadRomaneio: TFrmCadRomaneio;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao, uDmFind,
  uFrmPesContratoFrete, uFrmPesContratoVenda, uFrmCadAdiantamento,
  uCadTituloRec, uFrmCadMovCaixa, uFrmCadMovConta, uFrmPesRomaneio,
  uFrmPesContratoCompra, uFrmPesClienteFiscal, uFrmCadOrdemFrete;

{$R *.dfm}


procedure TFrmCadRomaneio.actCancelarExecute(Sender: TObject);
begin
  inherited;
  BtnFinanceiroRom.Visible := false;
end;

procedure TFrmCadRomaneio.actExcluirExecute(Sender: TObject);
var
  sql : string;
begin
//  inherited;

  sql := 'SELECT * FROM RomaneioFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idRomaneio = ' + DBEidRomaneio.Text;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      messagedlg('Romaneio vinculado a um lançamento financeiro, não pode ser excluido!' + #13 +
                 'Exclua primeiramente o lançamento financeiro!', mtwarning, [mbok], 0);
      exit;
    end;
  end;
  if messagedlg('Tem certeza que deseja excluir esse romaneio?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

  Screen.Cursor := crSqlWait;

  if (trim(DBEstRomaneio.Text) <> 'CANCELADO') then //Altera Status de Aplicação
  begin
    if not (cdsPadrao.State in [dsEdit]) then
      cdsPadrao.Edit;

    cdsPadrao.FieldByName('stRomaneio').AsString := 'CANCELADO';
    cdsPadrao.Post;
    cdsPadrao.ApplyUpdates(0);
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, EDDoc, nil, DBEidRomaneio, nil, nil, EdPar], 'spAtualizaEstoque');
  end;
  //Exclui o relacionamento com o embarque se houver
  sql := 'DELETE FROM RomaneioEmbarqueNf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa,3) +
         ' AND idRomaneio = ' + funcao.RetornaValorEField(DBEidRomaneio, 3);
  dmPadrao.dbConexao.ExecuteDirect(sql);

  //Exclui as classificações se houverem
  sql := 'DELETE FROM RomaneioClassificacao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa,3) +
         ' AND idRomaneio = ' + funcao.RetornaValorEField(DBEidRomaneio, 3);
  dmPadrao.dbConexao.ExecuteDirect(sql);

  sql := 'DELETE FROM Romaneio WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa,3) +
         ' AND idRomaneio = ' + funcao.RetornaValorEField(DBEidRomaneio, 3);
  dmPadrao.dbConexao.ExecuteDirect(sql);
  cdsPadrao.Refresh;
  DBEidRomaneio.SetFocus;
  Screen.Cursor := crDefault;

  BtnFinanceiroRom.Visible := false;
end;

procedure TFrmCadRomaneio.actNovoExecute(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEidArmazem, DBEidProdDeposito], False);
  BtnFinanceiroRom.Visible := false;
end;

procedure TFrmCadRomaneio.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesRomaneio, FrmPesRomaneio);
  FrmPesRomaneio.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesRomaneio.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesRomaneio.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesRomaneio.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesRomaneio.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesRomaneio.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesRomaneio.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesRomaneio.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idRomaneio').Value := FrmPesRomaneio.cdsGrid.FieldByName('idRomaneio').Value;
      PagAbas.ActivePageIndex := 0;
      DBEidRomaneio.SetFocus;
      DBEidRomaneioExit(DBEidRomaneio);
    end;
  end;

end;

procedure TFrmCadRomaneio.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  ok, ajCarta : boolean;
  tpFinanceiro, sql, tp, est : string;
  vlUnitario, vlProduto : currency;
  qtProduto : double;
begin
  if cdsCompra.State = dsInsert then
    cdsCompra.Cancel;

  if cdsClassificacao.State = dsInsert then
    cdsClassificacao.Cancel;

  if cdsCompraDesc.State = dsInsert then
    cdsCompraDesc.Cancel;

  //Tratamento pq em alguns momentos estava dando problema de foreign key
  if trim(DBEidDocSerie.Text) = '' then
    cdsPadraoidDocSerie.Clear;

  //Tratamento para obrigar a inserção do depósito
  est := Trim(lookgeraEstoque.Caption);

  if (est = 'S') and (trim(DBEidProdDeposito.Text) = '') and (trim(DBEidArmazem.Text) = '') then
  begin
    messagedlg('Para esta operação é obrigatória a informação do depósito próprio ou terceiro!', mtwarning, [mbok], 0);
    exit;
  end;

  ok := False;
  vlUnitario := 0;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //Inicia a na página 0
  PagAbas.ActivePageIndex := 0;
  //marca a transação
  dmPadrao.dbConexao.CloseDataSets;
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try

    if (cdsPadraostRomaneio.AsString = 'A CONFIRMAR') then
      if messagedlg('Deseja confirmar o Romaneio? ', mtconfirmation, [mbyes, mbno], 0 ) = mryes then
        cdsPadraostRomaneio.AsString := 'ATIVO';

    //Tentativa de corrigir possivel
    if cdsPadraoqtPesoDesconto.IsNull then
      cdsPadraoqtPesoDesconto.AsFloat := 0;

    GravaChave(1, '', nil);
    inherited;
    if DBEidProdDeposito.Text <> '' then
    begin
      sql := 'EXEC spFechaRomaneio ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidRomaneio, 3) + ', ' +
                                       QuotedStr('OUT');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end
    else
      ok := true;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    Salvar := True;
    //Variável para controlar se vai replicar o ajuste na Ordem de Frete
    ajCarta := true;
    if PanAjuste.Visible then
      ajCarta := cdsAjustealteraOrdemFrete.AsString = 'S'
    else
    begin
      if cdsAjuste.RecordCount > 0 then //vê se o último ajuste permite alteração da ordem de frete
      begin
        cdsAjuste.Last;
        ajCarta := cdsAjustealteraOrdemFrete.AsString = 'S';
      end;
    end;

    cdsClassificacao.IndexFieldNames := 'idDesconto';
    if not cdsClassificacao.FindKey([7]) then
    begin
      //Primeiro executa proc para atualizar romaneio no caso de não ter as pesagens
      sql := 'EXEC spInsereQuebraRom ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidRomaneio, 3) + ', 0';
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;

    //Ajusta o peso de chegada da carta frete se houver
//    if ajCarta then
//    begin
      sql := 'EXEC spVerPesoChegadaFrete ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
             funcao.RetornaValorEField(DBEnrCartaFrete, 3) + ', ' + funcao.RetornaValorEField(DBEidRomaneio, 3) + ', ' +
             funcao.RetornaValorEField(DBEidNf, 3);
      dmPadrao.dbConexao.ExecuteDirect(sql);
//    end;

  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  sql := 'EXEC spAtualizaPesoRom ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidRomaneio, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);

  tp := Trim(LookTpArmOperacao.Caption);
  if tp = 'S' then
  begin
    sql := 'EXEC spAtualizaEstoque ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(EDDoc, 3) + ', ' +
                                       'null' + ', ' +
                                       funcao.RetornaValorEField(DBEidRomaneio, 3) + ', ' +
                                       'null' + ', ' +
                                       'null' + ', ' +
                                       funcao.RetornaValorEField(EdPar, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;

  screen.Cursor := crDefault;
  DBEidRomaneioExit(DBEidRomaneio);
end;

procedure TFrmCadRomaneio.BtnAdicionarClasClick(Sender: TObject);
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  if ((sender as tcbitbtn).Name = 'BtnAdicionarClas') or ((sender as tcbitbtn).Name = 'BtnRetirarClas') then
  begin
    if ajusteDesc then //Significa que está ajustando então tem que abrir a tela para inserção das informações
    begin
      cdsAjuste.Append;
      cdsAjusteidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
      cdsAjusteidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
      cdsAjusteidRomaneio.AsInteger := cdsPadraoidRomaneio.AsInteger;
      cdsAjusteidDesconto.AsInteger := cdsClassificacaoidDesconto.AsInteger;
      cdsAjusteidAjuste.AsInteger := 0;
      cdsAjustedtAjuste.AsDateTime := date;
      //Busca para trazer os dados anteriores para não tratar via variável
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidRomaneio, DBEidDesconto], '', 'RomaneioClassificacao') do
      begin
        if RecordCount > 0 then
        begin
          cdsAjusteprDescontoAnt.AsFloat := FieldByName('prDesconto').AsFloat;
          cdsAjusteqtDescontoAnt.AsInteger := FieldByName('qtDesconto').AsInteger;
        end
        else
        begin
          cdsAjusteprDescontoAnt.AsFloat := 0;
          cdsAjusteqtDescontoAnt.AsInteger := 0;
        end;
      end;
      if ((sender as tcbitbtn).Name = 'BtnRetirarClas') then
      begin
        cdsAjusteprDescontoNovo.AsFloat := 0;
        cdsAjusteqtDescontoNovo.AsInteger := 0;
      end
      else
      begin
        cdsAjusteprDescontoNovo.AsFloat := cdsClassificacaoprDesconto.AsFloat;
        cdsAjusteqtDescontoNovo.AsFloat := cdsClassificacaoqtDesconto.AsInteger;
      end;
      cdsAjustealteraOrdemFrete.AsString := 'S';
      cdsAjusteidUsuario.AsString := frmPrincipal.idUsuario;
      cdsAjustedescUsuario.AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM Usuario WHERE idUsuario = ' + frmPrincipal.idUsuario).FieldByName('descUsuario').AsString;
      funcao.SomenteLeitura([DBEdescMotivo, DBCKalteraOrdemFrete], false);
      panAjuste.Left := 37;
      panAjuste.Top := 11;
      panAjuste.Visible := true;
      gridAjuste.Enabled := false;
      DBEdescMotivo.SetFocus;
      exit; //sai para executar de novo após a confirmação dos motivos
    end; //fim do if ajusteDesc then
    if ((sender as tcbitbtn).Name = 'BtnAdicionarClas') then
      if Trim(DBEprMedido.Text) = '' then
        cdsClassificacaoprMedido.AsFloat := 0;
  end;  // fim do if ((sender as tcbitbtn).Name = 'BtnAdicionarClas') or ((sender as tcbitbtn).Name = 'BtnRetirarClas') then

  funcao.GravaSec(chave, cdsClassificacao, BtnAdicionarClas, BtnCancelarClas, BtnRetirarClas, BtnNovoClas, (Sender as TCBitBtn), '');
  if ((sender as tcbitbtn).Name = 'BtnAdicionarClas') or ((sender as tcbitbtn).Name = 'BtnRetirarClas') then
  begin
    //ajusta o desconto do total do romaneio
    if cdsClassificacaoqtTotalDesconto.Value <> 0 then
      cdsPadraoqtPesoDesconto.AsInteger := cdsClassificacaoqtTotalDesconto.Value
    else
      cdsPadraoqtPesoDesconto.AsInteger := 0;
    CalculaPeso;
    BtnNovoClas.Click;
  end;
  if ((sender as tcbitbtn).Name = 'BtnNovoClas') then
    funcao.SomenteLeitura([DBEprMedido, DBEprDesconto, DBEqtDesconto, DBEqtDestino], false);
  DBEidDesconto.SetFocus;
end;

procedure TFrmCadRomaneio.BtnAdicionarDescClick(Sender: TObject);
begin
  inherited;
  if ((sender as tcbitbtn).Name = 'BtnAdicionarDesc') then
    if Trim(DBEprMedido.Text) = '' then
      cdsCompraDescprMedido.AsFloat := 0;

  funcao.GravaSec(chave, cdsCompraDesc, BtnAdicionarDesc, BtnCancelarDesc, BtnRetirarDesc, BtnNovoDesc, (Sender as TCBitBtn), '');
  if ((sender as tcbitbtn).Name = 'BtnAdicionarDesc') or ((sender as tcbitbtn).Name = 'BtnRetirarDesc') then
  begin
    if not (cdsCompra.State in [dsInsert, dsEdit]) then
      cdsCompra.Edit;
    //ajusta o desconto do total do romaneio
    if cdsCompraDescqtTotDesconto.Value <> 0 then
      cdsCompraqtDesconto.Value := cdsCompraDescqtTotDesconto.Value
    else
      cdsCompraqtDesconto.AsInteger := 0;
    vlAnterior := '';
    DBEqtDescontoCExit(DBEqtDescontoC);
    BtnNovoDesc.Click;
  end;
  DBEidDescontoC.SetFocus;

end;

procedure TFrmCadRomaneio.BtnAdicionarProdClick(Sender: TObject);
begin
  inherited;
  if ((sender as tcbitbtn).Name = 'BtnAdicionarProd') then
    if trim(DBEqtDescontoC.Text) = '' then
      cdsCompraqtDesconto.AsInteger := 0;

  funcao.GravaSec(chave, cdsCompra, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), '');
  if ((sender as tcbitbtn).Name = 'BtnAdicionarProd') or ((sender as tcbitbtn).Name = 'BtnRetirarProd') then
  begin
    if cdsCompra.ChangeCount > 0 then
      cdsCompra.ApplyUpdates(0);
  end
  else
    if ((sender as tcbitbtn).Name = 'BtnNovoProd') then
      DBEidFornecedor.SetFocus;
end;

procedure TFrmCadRomaneio.BtnAjustarClick(Sender: TObject);
begin
  inherited;
  ajusteDesc := true;
  DBEidDescontoExit(DBEidDesconto);
  DBEprMedido.SetFocus;
end;

procedure TFrmCadRomaneio.BtnConfirmaAjusteClick(Sender: TObject);
begin
  inherited;
  if ajusteDesc then
  begin
    if trim(DBEdescMotivo.Text) = '' then
    begin
      messagedlg('O motivo deve ser informado!', mtwarning, [mbok], 0);
      DBEdescMotivo.SetFocus;
      exit;
    end;
    cdsAjuste.Post;
    ajusteDesc := false;
    BtnAdicionarClas.Click;
    DBEidDescontoExit(DBEidDesconto);
    actSalvar.Execute;
  end;
  panAjuste.Visible := false;
  PagAbas.ActivePageIndex := 2;
  DBEidDesconto.SetFocus;
  DBEidRomaneioExit(DBEidRomaneio);
end;

procedure TFrmCadRomaneio.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  if cdsCompra.State in [dsEdit, dsInsert] then
    BtnAdicionarProd.Click;
  panDesconto.Visible := false;
  DBEqtProduto.SetFocus;
end;

procedure TFrmCadRomaneio.BtnDescontoClick(Sender: TObject);
begin
  inherited;
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or (trim(DBEidContratoCompra.Text) = '') then
  begin
    messagedlg('É preciso informar o fornecedor e o contrato!', mtwarning, [mbok], 0);
  end;

  cdsCompraDesc.Filtered := false;
  cdsCompraDesc.Filter := ' idFornecedor = ' + cdsCompraidFornecedor.AsString + ' AND idCadFornecedor = ' + cdsCompraidCadFornecedor.AsString +
                          ' AND idContratoCompra = ' + QuotedStr(cdsCompraidContratoCompra.AsString);
  cdsCompraDesc.Filtered := true;

  panDesconto.Top := 22;
  panDesconto.Visible := true;
  DBEidDescontoC.SetFocus;
end;

procedure TFrmCadRomaneio.BtnFinanceiroRomClick(Sender: TObject);
var
  tpFinanceiro : string;
  vlProduto, vlUnitario : currency;
  qtProduto : double;
begin
  inherited;
  if (cdsFinanc.RecordCount = 0) then
    if messagedlg('Financeiro ainda não gerado! Deseja gerar agora?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      if (trim(DBEdtEntrega.Text) = '') or (trim(DBEdtRecebimento.Text) = '') or (trim(DBEidNf.Text) = '') then
      begin
        messagedlg('A data da entrega/recebimento e o número da NF devem ser informados!', mtwarning, [mbok], 0);
        exit;
      end;

      if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEidCliente, DBEidContratoVenda,
                 DBEqtPesoLiquido, DBEdtRecebimento, DBEdtEntrega, DBEidRomaneio, DBEidNf], 'spGeraTituloRecRom') then
      begin
        messagedlg('Título gerado com sucesso!', mtinformation, [mbok], 0);
        cdsFinanc.Active := false;
        cdsFinanc.CommandText := cdsFinanc.CommandText + ' AND 1=1';
        cdsFinanc.Active := true;
        exit;
      end;

    end;
  if cdsFinancidAdiantamento.AsInteger > 0 then
  begin
    if not Assigned(frmCadAdiantamento) then
      frmCadAdiantamento := TfrmCadAdiantamento.create(Self, [cdsFinancidAdiantamento.AsString]);
      FrmCadAdiantamento.Show;
  end
  else
    if cdsFinancidTituloRec.AsInteger > 0 then
    begin
      if not Assigned(FrmCadTituloRec) then
        FrmCadTituloRec := TFrmCadTituloRec.create(Self, [cdsFinancidTituloRec.AsString]);
        FrmCadTituloRec.Show;
    end
    else
      if cdsFinancidMovCaixa.AsInteger > 0 then
      begin
        if not Assigned(FrmCadMovCaixa) then
          FrmCadMovCaixa := TFrmCadMovCaixa.create(Self, [cdsFinancidMovCaixa.AsString]);
          FrmCadMovCaixa.Show;
      end
      else
        if cdsFinancidMovConta.AsInteger > 0 then
        begin
          if not Assigned(FrmCadMovConta) then
            FrmCadMovConta := TFrmCadMovConta.create(Self, [cdsFinancidMovConta.AsString]);
            FrmCadMovConta.Show;
        end;
end;

procedure TFrmCadRomaneio.BtnOrdemFreteClick(Sender: TObject);
begin
  inherited;
  if cdsPadraonrCartaFrete.AsInteger > 0 then
  begin
    if not Assigned(frmCadOrdemFrete) then
      frmCadOrdemFrete := TfrmCadOrdemFrete.create(Self, [cdsPadraoidEmpresa.AsString, cdsPadraoidCadEmpresa.AsString, cdsPadraonrCartaFrete.AsString]);
    frmCadOrdemFrete.Show;
  end
end;

procedure TFrmCadRomaneio.BtnVerAjusteClick(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdescMotivo, DBCKalteraOrdemFrete], true);
  GridAjuste.Enabled := true;
  ajusteDesc := false;
  panAjuste.Left := 37;
  panAjuste.Top := 11;
  panAjuste.Visible := true;
end;

procedure TFrmCadRomaneio.CalcConversao;
var
  sql, idIndice : string;
  qtSacas, qtArrobas : Double;
begin
  qtSacas := 0;
  qtArrobas := 0;
  if Trim(DBEqtPesoBruto.Text) <> '' then
  begin
    sql := 'SELECT qtSacas, qtArrobas, idIndice FROM Produto WHERE idProduto = ' + DBEidProduto.Text;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      idIndice := FieldByName('idIndice').AsString;
      if not (cdsPadrao.State in [dsInsert, dsEdit]) then
        cdsPadrao.Edit;
      if (FieldByName('qtSacas').AsFloat <> 0) then
      begin
        qtSacas := RoundTo(cdsPadrao.FieldByName('qtPesoLiquido').AsFloat / FieldByName('qtSacas').AsFloat, -4);
        cdsPadrao.FieldByName('qtSacas').AsFloat := qtSacas;
      end
      else
        DBEqtSacas.Text := '0';
      if (FieldByName('qtArrobas').AsFloat <> 0) then
      begin
        qtArrobas := RoundTo(cdsPadrao.FieldByName('qtPesoLiquido').AsFloat / FieldByName('qtArrobas').AsFloat, -2);
        cdsPadrao.FieldByName('qtArrobas').AsFloat := qtArrobas;
      end
      else
       DBEqtArrobas.Text := '0';
    end;
    if idIndice <> '' then
    begin
      sql := 'SELECT vlLancamento FROM vIndiceDia WHERE idIndice = ' + idIndice;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if (cdsPadrao.FieldByName('vlUnitario').AsFloat =
          FieldByName('vlLancamento').AsFloat) or (cdsPadrao.FieldByName('vlUnitario').AsString = '') then
          cdsPadrao.FieldByName('vlUnitario').AsFloat := RoundTo(FieldByName('vlLancamento').AsFloat, -4)
        else
          cdsPadrao.FieldByName('vlUnitario').AsFloat := RoundTo(cdsPadrao.FieldByName('vlUnitario').AsFloat, -4);
        cdsPadrao.FieldByName('vlTotal').AsFloat := cdsPadrao.FieldByName('vlUnitario').AsFloat*
        cdsPadrao.FieldByName('qtPesoLiquido').AsFloat;
        if cdsPadrao.FieldByName('vlTotal').AsFloat > 0 then
          cdsPadrao.FieldByName('vlLiquido').AsFloat := cdsPadrao.FieldByName('vlTotal').AsFloat;
      end;
    end;
    if browser then
      cdsPadrao.Post;
  end;
end;

procedure TFrmCadRomaneio.CalcFrete;
var
  qtTonelada, qtPesoTotal : double;
begin
  qtPesoTotal := cdsPadraoqtPesoBruto.Value;
  qtTonelada := qtPesoTotal/1000;
  cdsPadraovlFreteTotal.Value := qtTonelada * cdsPadraovlFrete.AsFloat;
end;

procedure TFrmCadRomaneio.CalculaPeso;
var
  qtBruto, qtTara, qtProduto, qtDesconto, qtLiquido : integer;
begin
  qtBruto := 0;
  qtTara := 0;
  qtLiquido := 0;
  qtDesconto := 0;

  if trim(DBEqtPesoBruto.Text) <> '' then
    qtBruto := cdsPadrao.FieldByName('qtPesoBruto').AsInteger;
  if trim(DBEqtPesoTara.Text) <> '' then
    qtTara := cdsPadrao.FieldByName('qtPesoTara').AsInteger;
  if trim(DBEqtPesoDesconto.Text) <> '' then
    qtDesconto := cdsPadrao.FieldByName('qtPesoDesconto').AsInteger;

  qtProduto := qtBruto-qtTara;
  qtLiquido := qtProduto-qtDesconto;

  cdsPadrao.FieldByName('qtPesoProduto').AsInteger := qtProduto;
  cdsPadrao.FieldByName('qtPesoLiquido').AsInteger := qtLiquido;
  CalcConversao;
end;

procedure TFrmCadRomaneio.cdsAjusteAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BtnVerAjuste.Visible := (cdsAjuste.RecordCount > 0) and (not ajusteDesc);
end;

procedure TFrmCadRomaneio.cdsClassificacaoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  if DataSet.State = dsInsert then
    if DataSet = cdsCompraDesc then
    begin
      cdsCompraDescidEmpresa.AsInteger := cdsPadraoidEmpresa.AsInteger;
      cdsCompraDescidCadEmpresa.AsInteger := cdsPadraoidCadEmpresa.AsInteger;
      cdsCompraDescidRomaneio.AsInteger := cdsPadraoidRomaneio.AsInteger;
      cdsCompraDescidFornecedor.AsInteger := cdsCompraidFornecedor.AsInteger;
      cdsCompraDescidCadFornecedor.AsInteger := cdsCompraidCadFornecedor.AsInteger;
      cdsCompraDescidContratoCompra.AsString := cdsCompraidContratoCompra.AsString;
    end;
end;

procedure TFrmCadRomaneio.cdsClassificacaoAfterScroll(DataSet: TDataSet);
var
  titGerado : boolean;
begin
  inherited;
  if trim(cdsClassificacaoidDesconto.AsString) <> '' then
  begin
     //Inicializa habilitado
     funcao.SomenteLeitura([DBEprMedido, DBEprDesconto, DBEqtDesconto, DBEqtDestino], false);

     funcao.SomenteLeitura([DBEqtDestino], trim(lookalteraQtde.Caption) <> 'S');

     //BtnAjustar.Visible := false;

     BtnRetirarClas.Visible := (cdsClassificacaoidDesconto.AsInteger <> 7); //sempre fica false quando é 7

     if (cdsClassificacaoidDesconto.AsInteger = 7) and (trim(DBEidRomaneio.Text) <> '') then //Quebra de balança pois altera o peso de chegada e influencia o frete
     begin
       funcao.SomenteLeitura([DBEprMedido, DBEprDesconto, DBEqtDesconto, DBEqtDestino], (cdsClassificacaoqtDesconto.AsInteger <> 0)
                                                                                        and (not ajusteDesc)
                                                                                        and (cdsPadrao.State in [dsEdit, dsBrowse])); //se já tiver desconto lançado ai é só pelo ajuste

       //Verifica se o título foi gerado
       titGerado := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEnrCartaFrete, DBEidRomaneio, DBEidNf], 'spVerFinancFrete', '').FieldByName('titGerado').AsString = 'S';

       {BtnAjustar.Visible := (cdsClassificacaoqtDesconto.AsInteger <> 0)
                             and (not ajusteDesc)
                             and (cdsPadrao.State in [dsEdit, dsBrowse])
                             and (not titGerado);}

       if cdsClassificacaoqtDesconto.AsInteger = 0 then
         funcao.SomenteLeitura([DBEprMedido, DBEprDesconto, DBEqtDesconto, DBEqtDestino], (titGerado));

       if BtnAdicionarClas.Enabled then
         BtnAdicionarClas.Enabled := not DBEqtDestino.ReadOnly;

//       if BtnRetirarClas.Enabled then
//         BtnRetirarClas.Enabled := not DBEqtDestino.ReadOnly;

     end; // fim do if (cdsClassificacaoidDesconto.AsInteger = 7) and (trim(DBEidRomaneio.Text) <> '') then //Quebra de balança pois altera o peso de chegada e influencia o frete
  end;
end;

procedure TFrmCadRomaneio.cdsCompraAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  if cdsCompra.State = dsInsert then
    cdsCompraaceitaClassifDestino.AsString := 'N';
end;

procedure TFrmCadRomaneio.cdsCompraCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsCompraqtProdutoTotal.Value > 0 then
    cdsCompraqtSaldoTotal.AsInteger := cdsPadraoqtPesoLiquido.AsInteger - cdsCompraqtProdutoTotal.Value;
end;

procedure TFrmCadRomaneio.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('dtRomaneio').AsDateTime := date;
    DataSet.FieldByName('stRomaneio').AsString := 'ATIVO';
  end;
end;

procedure TFrmCadRomaneio.DBEidArmazemExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidArmazem.Text) <> vlAnterior then
    funcao.SomenteLeitura([DBEidProdDeposito], trim(DBEidArmazem.Text) <> '');
end;

procedure TFrmCadRomaneio.DBEidArmOperacaoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim((Sender as TCDBEdit).Text);
end;

procedure TFrmCadRomaneio.DBEidArmOperacaoExit(Sender: TObject);
var
  tp, est : string;
begin
  inherited;
  //verifica as opções de validação da operação
  if trim(DBEidArmOperacao.Text) <> vlAnterior then
  begin
    tp := Trim(LookTpArmOperacao.Caption);
    est := Trim(lookgeraEstoque.Caption);

    //Se estiver marcado para gerar estoque na operação vai buscar o depósito padrão na configuração
    if (est = 'S') and (cdsPadrao.State in [dsEdit, dsInsert]) then
    begin
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigProducao') do
      begin
        if FieldByName('idProdDepositoRom').AsInteger > 0 then
        begin
          cdsPadraoidProdDeposito.AsInteger := FieldByName('idProdDepositoRom').AsInteger;
          //desabilita e limpa o Armazém/Loca
          cdsPadraoidArmazem.Clear;
          funcao.SomenteLeitura([DBEidArmazem], true);
        end;

      end;
    end;


    {if tp = 'E' then //Entrada
    begin
      funcao.SomenteLeitura([DBEidCliente, DBEidContratoVenda, DBEvlIcms, DBEvlIcmsFrete, DBEvlContribSocial, DBEvlOutrosImp,
                            DBEvlLiquido, DBEqtPesoLiquido], true);
      funcao.SomenteLeitura([DBEdtRomaneio, DBEidProdDeposito, DBEidArmazem, DBEidRomaneioArm,
                             DBEidSafra, DBEidProduto, DBEidVariedade, DBEidResultado,
                             DBEplaca, DBEidMotorista, DBEdescMotorista, DBEidContratoFrete,
                             DBEqtPesoBruto, DBEqtPesoTara, DBEqtPesoDesconto, DBMobsRomaneio], false);

    end
    else
    begin
      funcao.SomenteLeitura([DBEidResultado], true);
      funcao.SomenteLeitura([DBEdtRomaneio, DBEidProdDeposito, DBEidArmazem, DBEidRomaneioArm,
                             DBEidSafra, DBEidProduto, DBEidVariedade, DBEidCliente, DBEidContratoVenda,
                             DBEplaca, DBEidMotorista, DBEdescMotorista, DBEidContratoFrete,
                             DBEqtPesoBruto, DBEqtPesoTara, DBEqtPesoDesconto, DBMobsRomaneio, DBEqtPesoLiquido,
                             DBEvlIcms, DBEvlIcmsFrete, DBEvlContribSocial, DBEvlOutrosImp,
                            DBEvlLiquido], false);
    end;       }
//    DBEdtRomaneio.SetFocus;
  end;
end;

procedure TFrmCadRomaneio.DBEidClienteExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim(DBEidCliente.Text) then
    if (trim(DBEidCliente.Text) <> '') and (trim(DBEidContratoVenda.Text) <> '') then
      HabilitaFinanc;
end;

procedure TFrmCadRomaneio.DBEidContratoCompraExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCompra, [DBEidFornecedor, DBEidCadFornecedor, DBEidContratoCompra]);
end;

procedure TFrmCadRomaneio.DBEidContratoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoCompra, FrmPesContratoCompra);
    FrmPesContratoCompra.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoCompra.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    if trim(DBEidFornecedor.Text) <> '' then
      FrmPesContratoCompra.idFornecedor := StrToInt(DBEidFornecedor.Text);
    if trim(DBEidCadFornecedor.Text) <> '' then
      FrmPesContratoCompra.idCadFornecedor := StrToInt(DBEidCadFornecedor.Text);
    FrmPesContratoCompra.ShowModal;
    with cdsCompra do
    begin
      if not (FrmPesContratoCompra.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idFornecedor').Value;
        FieldByName('idCadFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadFornecedor').Value;
        FieldByName('idContratoCompra').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').Value;
        DBEidContratoCompra.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmCadRomaneio.DBEidContratoFreteExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if Trim(DBEidContratoFrete.Text) <> '' then
  begin
    sql := 'SELECT * FROM ContratoFrete WHERE idContratoFrete = ' + DBEidContratoFrete.Text;
    with frmprincipal.ExecutaSQLRet([], '', sql ) do
    begin
      cdsPadraotpContratoFrete.AsString := FieldByName('tpContratoFrete').AsString;
      if cdsPadraotpContratoFrete.AsString = 'T' then
        cdsPadraovlFrete.AsFloat := (cdsPadraoqtPesoBruto.AsFloat/1000)*FieldByName('vlContratoFrete').AsFloat
      else
        if cdsPadraotpContratoFrete.AsString = 'S' then
          cdsPadraovlFrete.AsFloat := (cdsPadraoqtPesoBruto.AsFloat/60)*FieldByName('vlContratoFrete').AsFloat
        else
          if cdsPadraotpContratoFrete.AsString = 'C' then
            cdsPadraovlFrete.AsFloat := FieldByName('vlContratoFrete').AsFloat;
    end;
  end;
end;

procedure TFrmCadRomaneio.DBEidContratoFreteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoFrete, FrmPesContratoFrete);
    FrmPesContratoFrete.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoFrete.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoFrete.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoFrete.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idContratoFrete').Value := FrmPesContratoFrete.cdsGrid.FieldByName('idContratoFrete').Value;
        DBEidContratoFrete.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmCadRomaneio.DBEidContratoVendaExit(Sender: TObject);
var
  sql : string;
  idVariedade : integer;
begin
  inherited;
  if vlAnterior <> trim(DBEidCliente.Text) then
    if (trim(DBEidCliente.Text) <> '') and (trim(DBEidContratoVenda.Text) <> '') then
    begin
      HabilitaFinanc;
      if cdsPadrao.State in [dsEdit, dsInsert] then
      begin
        sql := 'SELECT * FROM ContratoVenda' +
               ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
               '   AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
               '   AND idCliente = ' + DBEidCliente.Text +
               '   AND idContratoVenda = ' + QuotedStr(DBEidContratoVenda.Text);
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if FieldByName('idProdutor').AsInteger > 0 then
            cdsPadraoidProdutor.AsInteger := FieldByName('idProdutor').AsInteger;
          if FieldByName('idProduto').AsInteger > 0 then
            cdsPadraoidProduto.AsInteger := FieldByName('idProduto').AsInteger;
          if FieldByName('idSafra').AsInteger > 0 then
            cdsPadraoidSafra.AsInteger := FieldByName('idSafra').AsInteger;
          if FieldByName('idProduto').AsInteger > 0 then
            idVariedade := frmPrincipal.ExecutaSQLRet([], '', 'SELECT idVariedade FROM ProdutoVariedade WHERE idProduto = ' + FieldByName('idProduto').AsString).FieldByName('idVariedade').AsInteger;
              if idVariedade > 0 then
                cdsPadraoidVariedade.AsInteger := idVariedade;
        end;
      end;
    end;
end;

procedure TFrmCadRomaneio.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sql : String;
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadraoidCliente.AsInteger;
    FrmPesContratoVenda.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idContratoVenda').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        FieldByName('idCadEmpresaFilial').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCadEmpresa').Value;
        FieldByName('idCliente').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').Value;
        DBEidContratoVenda.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmCadRomaneio.DBEidDescontoCExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCompraDesc, [DBEidDescontoC]);
end;

procedure TFrmCadRomaneio.DBEidDescontoExit(Sender: TObject);
var
  titGerado : boolean;
begin
  inherited;
  BuscaChaveSec(cdsClassificacao, [DBEidDesconto]);
  if trim(cdsClassificacaoidDesconto.AsString) <> '' then
  begin
     //Inicializa habilitado
     funcao.SomenteLeitura([DBEprMedido, DBEprDesconto, DBEqtDesconto, DBEqtDestino], false);

     funcao.SomenteLeitura([DBEqtDestino], trim(lookalteraQtde.Caption) <> 'S');

     //BtnAjustar.Visible := false;

     BtnRetirarClas.Visible := (cdsClassificacaoidDesconto.AsInteger <> 7); //sempre fica false quando é 7

     {if (cdsClassificacaoidDesconto.AsInteger = 7) and (trim(DBEidRomaneio.Text) <> '') then //Quebra de balança pois altera o peso de chegada e influencia o frete
     begin
       funcao.SomenteLeitura([DBEprMedido, DBEprDesconto, DBEqtDesconto, DBEqtDestino], (cdsClassificacaoqtDesconto.AsInteger <> 0)
                                                                                        and (not ajusteDesc)
                                                                                        and (cdsPadrao.State in [dsEdit, dsBrowse])); //se já tiver desconto lançado ai é só pelo ajuste

       //Verifica se o título foi gerado
       titGerado := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEnrCartaFrete, DBEidRomaneio, DBEidNf], 'spVerFinancFrete', '').FieldByName('titGerado').AsString = 'S';

       {BtnAjustar.Visible := (cdsClassificacaoqtDesconto.AsInteger <> 0)
                             and (not ajusteDesc)
                             and (cdsPadrao.State in [dsEdit, dsBrowse])
                             and (not titGerado);

       if cdsClassificacaoqtDesconto.AsInteger = 0 then
         funcao.SomenteLeitura([DBEprMedido, DBEprDesconto, DBEqtDesconto, DBEqtDestino], (titGerado));

       if BtnAdicionarClas.Enabled then
         BtnAdicionarClas.Enabled := not DBEqtDestino.ReadOnly;

//       if BtnRetirarClas.Enabled then
//         BtnRetirarClas.Enabled := not DBEqtDestino.ReadOnly;
     end;                                        }
  end;
end;

procedure TFrmCadRomaneio.DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with cdsCompra do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadEmbarque') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmCadRomaneio.DBEidEmbarqueKeyPress(Sender: TObject; var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsCompra.State in [dsEdit, dsInsert]) then
        cdsCompra.Edit;
      cdsCompra.FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsCompra.FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmCadRomaneio.DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsCompra') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmCadRomaneio.DBEidFornecedorKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsCompra.State in [dsEdit, dsInsert]) then
        cdsCompra.Edit;
      cdsCompra.FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsCompra.FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmCadRomaneio.DBEidMotoristaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim(DBEidMotorista.Text) then
    cdsPadrao.FieldByName('descMotorista').AsString := trim(LookMotorista.Caption);
end;

procedure TFrmCadRomaneio.DBEidNFExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidNf.Text) <> vlAnterior) and (trim(DBEidNf.Text) <> '') then
  begin
    sql := 'SELECT * FROM Romaneio WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString + ' AND idCadEmpresa = ' +
           cdsEmpresaidCadEmpresa.AsString + ' AND idNf = ' + funcao.RetornaValorEField(DBEidNf, 3) + ' AND stRomaneio <> ' +
           QuotedStr('CANCELADO');
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if (FieldByName('idRomaneio').AsInteger <> cdsPadraoidRomaneio.AsInteger) and (FieldByName('idRomaneio').AsInteger > 0) then
        if messagedlg('Já existe um romaneio com está Nota Fiscal!' + #13 + 'Deseja abri-lo?', mtwarning, [mbyes, mbno], 0) = mryes then
        begin
          if not (cdsPadrao.State in [dsInsert, dsEdit]) then
            cdsPadrao.Edit;
          cdsPadraoidRomaneio.AsInteger := FieldByName('idRomaneio').AsInteger;
          DBEidRomaneioExit(DBEidRomaneio);
        end;
    end;
  end;
end;

procedure TFrmCadRomaneio.DBEidProdDepositoExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidProdDeposito.Text) <> vlAnterior then
    funcao.SomenteLeitura([DBEidArmazem], trim(DBEidProdDeposito.Text) <> '');
end;

procedure TFrmCadRomaneio.DBEidProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidProduto.Text;
end;

procedure TFrmCadRomaneio.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEidProduto.Text) <> vlAnterior then
    CalcConversao;
end;

procedure TFrmCadRomaneio.DBEidRomaneioExit(Sender: TObject);
begin
  inherited;
  if not (BuscaChave(tabelas[0], chave)) then
    if trim(DBEidRomaneio.Text) <> '' then
    begin
      messagedlg('Romaneio não encontrado! Deixe em branco para novo!', mtwarning, [mbok], 0);
      DBEidRomaneio.Clear;
      DBEidRomaneio.SetFocus;
      exit;
    end;

  AbreTabSecundaria;

  BtnFinanceiroRom.Visible := false;

  if (trim(DBEidRomaneio.Text) = '') then //Modo de inserção
  begin
    //Deixa tudo desabilitado até a escolha da Operação
    funcao.SomenteLeitura([DBEidArmOperacao], false);
  end
  else
  begin //valida as regras para romaneio existente -
    if trim(DBEidProdDeposito.Text) <> '' then
    begin
      funcao.SomenteLeitura([DBEidArmazem], true);
      funcao.SomenteLeitura([DBEidProdDeposito], False);
    end
    else
    begin
      funcao.SomenteLeitura([DBEidArmazem], False);
      funcao.SomenteLeitura([DBEidProdDeposito], True)
    end;

    //Procura o financeiro
    HabilitaFinanc;
    cdsFinanc.Active := false;
    cdsFinanc.CommandText := 'SELECT * FROM RomaneioFinanc WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString + ' AND idCadEmpresa = '+
                             cdsPadraoidCadEmpresa.AsString + ' AND idRomaneio = ' + cdsPadraoidRomaneio.AsString;
    cdsFinanc.Active := true;
  end;
  funcao.SomenteLeitura([DBEqtSacas, DBEqtArrobas], True);
  if not Salvar then
  begin
    browser := true;
    CalcConversao;
  end;
  if trim(DBEidRomaneio.Text) = '' then
    browser := false;

  //se estiver a confirmar já entra em modo de edição só para a pessoal confirmar
  if (browser) and (cdsPadraostRomaneio.AsString = 'A CONFIRMAR') then
    cdsPadrao.Edit;
end;


procedure TFrmCadRomaneio.DBEidRomaneioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadRomaneio.DBEprDescontoCExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then
  begin
    cdsCompraDescqtDesconto.AsInteger := Trunc((cdsCompraqtPesoBruto.AsFloat*cdsCompraDescprDesconto.AsFloat)/100);
  end;
end;

procedure TFrmCadRomaneio.DBEprDescontoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then
  begin
    cdsClassificacaoqtDesconto.AsInteger := Trunc((cdsPadraoqtPesoProduto.AsFloat*cdsClassificacaoprDesconto.AsFloat)/100);
  end;
end;

procedure TFrmCadRomaneio.DBEqtDescontoCDExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then
  begin
    cdsCompraDescprDesconto.AsFloat := RoundTo((cdsCompraDescqtDesconto.AsFloat/cdsCompraqtPesoBruto.AsFloat)*100, -3);
  end;
end;

procedure TFrmCadRomaneio.DBEqtDescontoCExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> DBEqtDescontoC.Text) and (trim(DBEqtDescontoC.Text) <> '') then
    cdsCompraqtProduto.AsInteger := cdsCompraqtPesoBruto.AsInteger - cdsCompraqtDesconto.AsInteger;
end;

procedure TFrmCadRomaneio.DBEqtDescontoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then
  begin
    if (Sender = DBEqtDestino) and (not DBEqtDestino.ReadOnly) then
    begin
      if cdsClassificacaoqtDestino.AsInteger > 0 then
        cdsClassificacaoqtDesconto.AsInteger := cdsPadraoqtPesoProduto.AsInteger - cdsClassificacaoqtDestino.AsInteger;
    end
    else
      if (Sender = DBEqtDesconto) and (not DBEqtDestino.ReadOnly) then
        cdsClassificacaoqtDestino.AsInteger := cdsPadraoqtPesoProduto.AsInteger - cdsClassificacaoqtDesconto.AsInteger;


    cdsClassificacaoprDesconto.AsFloat := RoundTo((cdsClassificacaoqtDesconto.AsFloat/cdsPadraoqtPesoProduto.AsFloat)*100, -3);
  end;

end;

procedure TFrmCadRomaneio.DBEqtPesoBrutoCExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> DBEqtPesoBrutoC.Text) and (trim(DBEqtPesoBrutoC.Text) <> '') then
    cdsCompraqtProduto.AsInteger := cdsCompraqtPesoBruto.AsInteger - cdsCompraqtDesconto.AsInteger;
end;

procedure TFrmCadRomaneio.DBEqtPesoBrutoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then
    CalculaPeso;
end;

procedure TFrmCadRomaneio.DBEvlFreteExit(Sender: TObject);
begin
  inherited;
  if DBEvlFrete.Text <> vlAnterior then
    CalcFrete;
end;

procedure TFrmCadRomaneio.DBEvlTotalEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEvlTotal.Text;
end;

procedure TFrmCadRomaneio.DBEvlTotalExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEvlTotal.Text) <> vlAnterior then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
//    if cdsPadraoqtArrobas.AsInteger > 0 then
//      cdsPadrao.FieldByName('vlUnitario').AsFloat := cdsPadrao.FieldByName('vlTotal').AsFloat/cdsPadrao.FieldByName('qtArrobas').AsFloat;
//    if cdsPadraoqtSacas.AsInteger > 0 then
    cdsPadrao.FieldByName('vlUnitario').AsFloat := RoundTo(cdsPadrao.FieldByName('vlTotal').AsFloat/cdsPadrao.FieldByName('qtPesoLiquido').AsFloat, -4);
    cdsPadrao.FieldByName('vlLiquido').AsFloat := cdsPadrao.FieldByName('vlTotal').AsFloat;
  end;
end;

procedure TFrmCadRomaneio.DBMobsRomaneioExit(Sender: TObject);
begin
  inherited;
  PagAbas.ActivePageIndex := 1;
//  DBEqtPesoBruto.SetFocus;
end;

procedure TFrmCadRomaneio.dsClassificacaoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsClassificacao, BtnAdicionarClas, BtnCancelarClas, BtnRetirarClas, btnNovoClas);
end;

procedure TFrmCadRomaneio.dsCompraDescStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCompraDesc, BtnAdicionarDesc, BtnCancelarDesc, BtnRetirarDesc, btnNovoDesc);
end;

procedure TFrmCadRomaneio.dsCompraStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCompra, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadRomaneio.dspCompraBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);

  if (Sender as TDataSetProvider).Name = 'dspAjuste' then
    GeraAutoInc(DeltaDS, 'RomaneioClassAjuste', 'idAjuste', chave);
end;

procedure TFrmCadRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadRomaneio := nil;
end;

procedure TFrmCadRomaneio.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 5);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCompra;
  Tabelas[2] := cdsClassificacao;
  Tabelas[3] := cdsCompraDesc;
  Tabelas[4] := cdsAjuste;

  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidRomaneio;
  foco := DBEidRomaneio;
  tab_chave := 'Romaneio';
end;

procedure TFrmCadRomaneio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F7) and (BtnFinanceiroRom.Visible) then
    BtnFinanceiroRom.Click
  else
    if (key = VK_F8) and (PagAbas.ActivePageIndex = 3) and (panDesconto.Visible = false) then
      BtnDesconto.Click
    else
      if (key = VK_ESCAPE) and (PagAbas.ActivePageIndex = 3) and (panDesconto.Visible = true) then
        BtnConfirmar.Click;

end;

procedure TFrmCadRomaneio.FormShow(Sender: TObject);
begin
  inherited;
  Height := 570;
  Width := 670;
  Salvar := False;
  browser := False;
  ajusteDesc := false;
  //BtnAjustar.Visible := false;
//  funcao.SomenteLeitura([DBEvlIcms, DBEvlIcmsFrete, DBEvlContribSocial, DBEvlOutrosImp, DBEvlLiquido], true);
end;

procedure TFrmCadRomaneio.GravaFinanceiro(tpFinanceiro: string;
  vlUnitario: currency);
begin
  EDvlFinanc.Value := RoundTo(vlUnitario, -2);
  if tpFinanceiro = 'A' then
  begin
    if not Assigned(frmCadAdiantamento) then
      frmCadAdiantamento := TfrmCadAdiantamento.create(Self, ['ROMANEIO', cdsPadrao.FieldByName('idRomaneio').AsString]);
      FrmCadAdiantamento.Show;
  end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
  else
    if tpFinanceiro = 'T' then
    begin
      if not Assigned(FrmCadTituloRec) then
        FrmCadTituloRec := TFrmCadTituloRec.create(Self, ['ROMANEIO', cdsPadrao.FieldByName('idRomaneio').AsString, DBEidContratoVenda.Text]);
        FrmCadTituloRec.Show;
    end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
    else
      if tpFinanceiro = 'C' then
      begin
        if not Assigned(FrmCadMovCaixa) then
          FrmCadMovCaixa := TFrmCadMovCaixa.create(Self, ['ROMANEIO', cdsPadrao.FieldByName('idRomaneio').AsString]);
          FrmCadMovCaixa.Show;
      end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
      else
        if tpFinanceiro = 'B' then
        begin
          if not Assigned(FrmCadMovConta) then
            FrmCadMovConta := TFrmCadMovConta.create(Self, ['ROMANEIO', cdsPadrao.FieldByName('idRomaneio').AsString]);
            FrmCadMovConta.Show;
        end; //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
end;

procedure TFrmCadRomaneio.HabilitaFinanc;
begin
  BtnFinanceiroRom.Visible := false;
  if (trim(DBEidCliente.Text) = '') or (trim(DBEidContratoVenda.Text) = '') then
    exit;

  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ContratoVenda WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                          ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idCliente = ' + DBEidCliente.Text +
                                          ' AND idContratoVenda = ' + QuotedStr(DBEidContratoVenda.Text)) do
    BtnFinanceiroRom.Visible := (FieldByName('tpCobranca').AsString = 'R');
end;

procedure TFrmCadRomaneio.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 2 then
  begin
    ajusteDesc := false;
    //BtnAjustar.Visible := false;
  end;

  if PagAbas.ActivePageIndex = 3 then
  begin
    if cdsPadrao.State = dsInsert then
    begin
      messagedlg('Você deve gravar o romaneio primeiro para posteriormente lançar o contrato de compra!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
    end;
  end
  else
  begin
    //Para no caso de sair da aba de desconto esconder o painel
    panDesconto.Visible := false;
    panAjuste.Visible := false;
  end;

end;

end.
