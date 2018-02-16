unit uFrmNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, Math, CRadioButton, CDBRadioGroup, System.Actions, ACBrNFe,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, pcnConversao, DateUtils, ClipBrd, CPanel,
  ACBrNFeDANFEFRDM, frxClass, ACBrBase, ACBrDFe, System.ImageList;

type
  TFrmNotaFiscal = class(TFrmCadPadraoEmpFiscal)
    CPanelGradient1: TCPanelGradient;
    CGroupBox2: TCGroupBox;
    DBMobsNf: TCDBMemo;
    CGroupBox3: TCGroupBox;
    DBMcompNf: TCDBMemo;
    TabProdutos: TTabSheet;
    CGroupBox12: TCGroupBox;
    BtnSalvarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnExcluirProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox14: TCGroupBox;
    DBProdutos: TCDBGrid;
    TabImpostos: TTabSheet;
    CGroupBox5: TCGroupBox;
    CLabel30: TCLabel;
    CLabel31: TCLabel;
    CLabel32: TCLabel;
    DBEvlProdutos: TCDBEdit;
    DBEprDescontoN: TCDBEdit;
    DBEvlDescontoN: TCDBEdit;
    CLabel29: TCLabel;
    DBEvlServicos: TCDBEdit;
    CLabel33: TCLabel;
    DBEvlDespesas: TCDBEdit;
    CGroupBox6: TCGroupBox;
    CLabel48: TCLabel;
    CLabel49: TCLabel;
    CLabel51: TCLabel;
    CLabel53: TCLabel;
    CLabel54: TCLabel;
    DBEvlReducaoN: TCDBEdit;
    DBEvlBaseIcmsN: TCDBEdit;
    DBEvlIcmsN: TCDBEdit;
    DBEvlIssN: TCDBEdit;
    DBEvlBaseIssN: TCDBEdit;
    CLabel34: TCLabel;
    DBEvlIsentasIcmsN: TCDBEdit;
    CLabel35: TCLabel;
    DBEvlOutrasIcmsN: TCDBEdit;
    CLabel36: TCLabel;
    DBEvlFrete: TCDBEdit;
    CLabel37: TCLabel;
    DBEvlSeguro: TCDBEdit;
    CLabel38: TCLabel;
    DBEvlBaseIpiN: TCDBEdit;
    CLabel39: TCLabel;
    DBEvlIpiN: TCDBEdit;
    CLabel40: TCLabel;
    DBEvlNotaFiscal: TCDBEdit;
    CGroupBox7: TCGroupBox;
    CLabel41: TCLabel;
    CLabel44: TCLabel;
    CLabel45: TCLabel;
    CLabel47: TCLabel;
    DBEdescTransportador: TCDBEdit;
    DBEufPlaca: TCDBEdit;
    DBEPlaca: TCDBEdit;
    DBEidCnpjCpf: TCDBEdit;
    DBEidInscEstadual: TCDBEdit;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    DBEdescEndereco: TCDBEdit;
    CLabel46: TCLabel;
    DBEidCidade: TCDBEdit;
    CLabel50: TCLabel;
    DBEqtProdutoN: TCDBEdit;
    CLabel52: TCLabel;
    DBEdescEspecie: TCDBEdit;
    CLabel55: TCLabel;
    DBEdescMarca: TCDBEdit;
    CLabel56: TCLabel;
    DBEdescNumero: TCDBEdit;
    CLabel57: TCLabel;
    DBEqtPesoBruto: TCDBEdit;
    CLabel58: TCLabel;
    DBEqtPesoLiquido: TCDBEdit;
    sdsNfProduto: TSQLDataSet;
    dspNfProduto: TDataSetProvider;
    cdsNfProduto: TClientDataSet;
    dsNfProduto: TDataSource;
    sdsNf: TSQLDataSet;
    FindSerie: TCFind;
    FindNatureza: TCFind;
    FindProdDeposito: TCFind;
    grpNotaSaida: TCGroupBox;
    CLabel4: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    CLabel5: TCLabel;
    DBEidNf: TCDBEdit;
    CLabel14: TCLabel;
    DBEstNf: TCDBEdit;
    LblCad: TCLabel;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    lookIeCliente: TCLookUp;
    CLabel59: TCLabel;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsNfProdutodescProduto: TStringField;
    CLabel20: TCLabel;
    FindProduto: TCFind;
    CLabel7: TCLabel;
    DBEdtEmissao: TCDBEdit;
    CLabel9: TCLabel;
    DBEdtSaida: TCDBEdit;
    CLabel8: TCLabel;
    DBEidNatureza: TCDBEdit;
    LookNatureza: TCLookUp;
    CLabel6: TCLabel;
    LookIdCfop: TCLookUp;
    LookDescCfop: TCLookUp;
    DBCKmovEstoque: TCDBCheckBox;
    CLabel10: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CLabel63: TCLabel;
    DBEidTab: TCDBEdit;
    LookTab: TCLookUp;
    FindTab: TCFind;
    sdsNfImpostoOutro: TSQLDataSet;
    dspNfImpostoOutro: TDataSetProvider;
    cdsNfImpostoOutro: TClientDataSet;
    dsNfImpostoOutro: TDataSource;
    tabImpostoOutro: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel64: TCLabel;
    CLabel73: TCLabel;
    CLabel77: TCLabel;
    DBEidProdutoO: TCDBEdit;
    CLookUp1: TCLookUp;
    DBEprFaturamento: TCDBEdit;
    CLookUp2: TCLookUp;
    DBEvlImpostoOutro: TCDBEdit;
    CGroupBox8: TCGroupBox;
    DBGridNfOutro: TCDBGrid;
    CGroupBox9: TCGroupBox;
    BtnSalvarOutro: TCBitBtn;
    BtnCancelarOutro: TCBitBtn;
    BtnExcluirOutro: TCBitBtn;
    BtnNovoOutro: TCBitBtn;
    CLabel65: TCLabel;
    DBEidImpostoOutro: TCDBEdit;
    LookidImpostoOutro: TCLookUp;
    CLabel66: TCLabel;
    DBEprQtdeProduto: TCDBEdit;
    CLabel67: TCLabel;
    DBEvlQtdeProduto: TCDBEdit;
    cdsNfImpostoOutrodescProduto: TStringField;
    dspImpostoOutro: TDataSetProvider;
    cdsImpostoOutro: TClientDataSet;
    cdsNfImpostoOutrodescImpostoOutro: TStringField;
    CLabel68: TCLabel;
    DBEvlOutrosImpostos: TCDBEdit;
    sdsNfValor: TSQLDataSet;
    dspNfValor: TDataSetProvider;
    cdsNfValor: TClientDataSet;
    dsNfValor: TDataSource;
    sdsNfTransporte: TSQLDataSet;
    dspNfTransporte: TDataSetProvider;
    cdsNfTransporte: TClientDataSet;
    dsNfTransporte: TDataSource;
    LookCidade: TCLookUp;
    LookEstado2: TCLookUp;
    TabFinancas: TTabSheet;
    CLabel72: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    CBitBtn1: TCBitBtn;
    TabResultado: TTabSheet;
    grpCaixa: TCGroupBox;
    CLabel75: TCLabel;
    CLabel74: TCLabel;
    DBEvlMovCaixa: TCDBEdit;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CBitBtn2: TCBitBtn;
    sdsMovCaixa: TSQLDataSet;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    dsMovCaixa: TDataSource;
    grpBanco: TCGroupBox;
    CLabel83: TCLabel;
    CLabel98: TCLabel;
    CLabel82: TCLabel;
    DBEvlMovConta: TCDBEdit;
    DBEdtCompensacao: TCDBEdit;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CGroupBox26: TCGroupBox;
    CLabel152: TCLabel;
    DBEvlNotaFiscalR: TCDBEdit;
    CGroupBox27: TCGroupBox;
    CDBGrid5: TCDBGrid;
    CGroupBox28: TCGroupBox;
    CLabel157: TCLabel;
    LblTotalRat: TCLabel;
    CLabel158: TCLabel;
    LblRestanteRat: TCLabel;
    BtnSalvarRat: TCBitBtn;
    BtnCancelarRat: TCBitBtn;
    BtnExcluirRat: TCBitBtn;
    sdsNfRateio: TSQLDataSet;
    dspNfRateio: TDataSetProvider;
    cdsNfRateio: TClientDataSet;
    dsNfRateio: TDataSource;
    CLabel78: TCLabel;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    FindMovFinanceira: TCFind;
    sdsMovConta: TSQLDataSet;
    dspMovConta: TDataSetProvider;
    cdsMovConta: TClientDataSet;
    dsMovConta: TDataSource;
    FindGerencial: TCFind;
    PagTituloRec: TCPageControl;
    TabTituloRec: TTabSheet;
    CGroupBox20: TCGroupBox;
    CLabel117: TCLabel;
    CLabel118: TCLabel;
    CLabel124: TCLabel;
    CLabel125: TCLabel;
    CLabel126: TCLabel;
    CLabel127: TCLabel;
    CLabel128: TCLabel;
    CLabel129: TCLabel;
    CLabel130: TCLabel;
    CLabel131: TCLabel;
    DBEvlTituloRec: TCDBEdit;
    DBEidBanco: TCDBEdit;
    LookBanco: TCLookUp;
    DBEprMulta: TCDBEdit;
    DBEprJuros: TCDBEdit;
    DBEprDescontoT: TCDBEdit;
    DBEdiasVencimento: TCDBEdit;
    DBEdtVencimentoIni: TCDBEdit;
    DBEqtParcelas: TCDBEdit;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    LookLancamento: TCLookUp;
    CBitBtn17: TCBitBtn;
    CBitBtn18: TCBitBtn;
    DBCKincMes: TCDBCheckBox;
    TabParcelas: TTabSheet;
    CGroupBox21: TCGroupBox;
    CLabel133: TCLabel;
    CLabel134: TCLabel;
    CLabel135: TCLabel;
    CLabel136: TCLabel;
    DBEidParcela: TCDBEdit;
    DBEvlParcela: TCDBEdit;
    DBEdtVencimento: TCDBEdit;
    DBEstTituloRecParc: TCDBEdit;
    CGroupBox22: TCGroupBox;
    CDBGrid3: TCDBGrid;
    GrpBtnParcelas: TCGroupBox;
    CLabel137: TCLabel;
    LblTotal: TCLabel;
    CLabel138: TCLabel;
    LblRestante: TCLabel;
    BtnSalvarParc: TCBitBtn;
    BtnCancelarParc: TCBitBtn;
    BtnExcluirParc: TCBitBtn;
    BtnNovoParc: TCBitBtn;
    FindRateio: TCFind;
    sdsTituloRec: TSQLDataSet;
    dspTituloRec: TDataSetProvider;
    cdsTituloRec: TClientDataSet;
    dsTituloRec: TDataSource;
    sdsTituloRecParc: TSQLDataSet;
    dspTituloRecParc: TDataSetProvider;
    cdsTituloRecParc: TClientDataSet;
    dsTituloRecParc: TDataSource;
    CLabel76: TCLabel;
    DBEidDocSerieT: TCDBEdit;
    CLookUp3: TCLookUp;
    CLabel80: TCLabel;
    DBEnrTituloRec: TCDBEdit;
    CLabel81: TCLabel;
    DBEdescMovConta: TCDBEdit;
    CLabel84: TCLabel;
    DBEobsTituloRec: TCDBEdit;
    CLabel85: TCLabel;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    BtnGerarRateio: TCBitBtn;
    actGerarRateio: TAction;
    cdsGerencial: TClientDataSet;
    cdsGerencialidGerencial: TIntegerField;
    cdsGerencialvlGerencial: TCurrencyField;
    FindCaixa: TCFind;
    FindConta: TCFind;
    DBEidMovCaixa: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    DBEidTituloRec: TCDBEdit;
    FindResultado: TCFind;
    cdsResultado: TClientDataSet;
    FindSafra: TCFind;
    FindSerieTit: TCFind;
    FindIndice: TCFind;
    FindBanco: TCFind;
    CGroupBox10: TCGroupBox;
    CLabel155: TCLabel;
    CLabel156: TCLabel;
    CLabel153: TCLabel;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    DBEidResultadoRT: TCDBEdit;
    CLookUp4: TCLookUp;
    CLabel86: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerencial: TCLookUp;
    BtnNovoRat: TCBitBtn;
    CLabel79: TCLabel;
    DBEdtMovCaixa: TCDBEdit;
    CLabel87: TCLabel;
    DBEdescMovCaixa: TCDBEdit;
    EDvlTotal: TCEdit;
    cdsNfRateiodescResultado: TStringField;
    lookEstadoEmp: TCLookUp;
    CLookUp5: TCLookUp;
    CLookUp6: TCLookUp;
    lookEstadoCli: TCLookUp;
    BtnExcluir2: TCBitBtn;
    actExcluir2: TAction;
    EDPar: TCEdit;
    EDtpDocumento: TCEdit;
    btnImprimir: TCBitBtn;
    actImprimir: TAction;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraoidNf: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TSmallintField;
    cdsPadraoidTab: TSmallintField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidTpNotaFiscal: TSmallintField;
    cdsPadraodtEmissao: TSQLTimeStampField;
    cdsPadraodtSaida: TSQLTimeStampField;
    cdsPadraoidNatureza: TSmallintField;
    cdsPadraomovEstoque: TStringField;
    cdsPadraomovCusto: TStringField;
    cdsPadraoidProdDeposito: TSmallintField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidRateio: TSmallintField;
    cdsPadraostNf: TStringField;
    cdsNfProdutoidEmpresa: TIntegerField;
    cdsNfProdutoidCadEmpresa: TSmallintField;
    cdsNfProdutoidDocSerie: TStringField;
    cdsNfProdutoidNf: TIntegerField;
    cdsNfProdutoidProduto: TIntegerField;
    cdsNfProdutoqtProduto: TFMTBCDField;
    cdsNfProdutovlBruto: TFMTBCDField;
    cdsNfProdutoprDesconto: TFMTBCDField;
    cdsNfProdutovlDesconto: TFMTBCDField;
    cdsNfProdutovlLiquido: TFMTBCDField;
    cdsNfProdutovlTotal: TFMTBCDField;
    cdsNfProdutoprReducao: TFMTBCDField;
    cdsNfProdutovlReducao: TFMTBCDField;
    cdsNfProdutovlBaseIcms: TFMTBCDField;
    cdsNfProdutoprIcms: TFMTBCDField;
    cdsNfProdutovlIcms: TFMTBCDField;
    cdsNfProdutovlBaseIpi: TFMTBCDField;
    cdsNfProdutoprIpi: TFMTBCDField;
    cdsNfProdutovlIpi: TFMTBCDField;
    cdsNfProdutovlIsentasIcms: TFMTBCDField;
    cdsNfProdutovlOutrasIcms: TFMTBCDField;
    cdsNfProdutovlBaseIss: TFMTBCDField;
    cdsNfProdutoprIss: TFMTBCDField;
    cdsNfProdutovlIss: TFMTBCDField;
    cdsNfProdutoidStTributaria: TSmallintField;
    cdsNfProdutoprInss: TFMTBCDField;
    cdsNfImpostoOutroidEmpresa: TIntegerField;
    cdsNfImpostoOutroidCadEmpresa: TSmallintField;
    cdsNfImpostoOutroidDocSerie: TStringField;
    cdsNfImpostoOutroidNf: TIntegerField;
    cdsNfImpostoOutroidProduto: TIntegerField;
    cdsNfImpostoOutroidImpostoOutro: TSmallintField;
    cdsNfImpostoOutroprFaturamento: TFMTBCDField;
    cdsNfImpostoOutroprQtdeProduto: TFMTBCDField;
    cdsNfImpostoOutrovlImpostoOutro: TFMTBCDField;
    cdsNfRateioidEmpresa: TIntegerField;
    cdsNfRateioidCadEmpresa: TSmallintField;
    cdsNfRateioidDocSerie: TStringField;
    cdsNfRateioidNf: TIntegerField;
    cdsNfRateioidResultado: TIntegerField;
    cdsNfRateioidGerencial: TIntegerField;
    cdsNfRateioprRateio: TFMTBCDField;
    cdsNfRateiovlRateio: TFMTBCDField;
    sdsTituloRecMov: TSQLDataSet;
    dspTituloRecMov: TDataSetProvider;
    cdsTituloRecMov: TClientDataSet;
    cdsNfProdutovlPis: TFMTBCDField;
    cdsNfProdutovlCofins: TFMTBCDField;
    CGroupBox4: TCGroupBox;
    CLabel11: TCLabel;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel21: TCLabel;
    CLabel22: TCLabel;
    CLabel23: TCLabel;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLabel26: TCLabel;
    CLabel27: TCLabel;
    CLabel28: TCLabel;
    CLabel61: TCLabel;
    CLabel62: TCLabel;
    CLabel69: TCLabel;
    CLabel70: TCLabel;
    CLabel71: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    DBEvlBruto: TCDBEdit;
    DBEprDesconto: TCDBEdit;
    DBEvlDesconto: TCDBEdit;
    DBEvlTotal: TCDBEdit;
    DBEqtProduto: TCDBEdit;
    DBEvlLiquido: TCDBEdit;
    DBEprReducao: TCDBEdit;
    DBEvlReducao: TCDBEdit;
    DBEvlBaseIcms: TCDBEdit;
    DBEprIcms: TCDBEdit;
    LookProdMedida: TCLookUp;
    DBEvlIcms: TCDBEdit;
    DBEprIss: TCDBEdit;
    DBEvlIss: TCDBEdit;
    DBEvlBaseIss: TCDBEdit;
    DBEvlIsentasIcms: TCDBEdit;
    DBEvlOutrasIcms: TCDBEdit;
    DBEprInss: TCDBEdit;
    DBEvlBaseIpi: TCDBEdit;
    DBEprIpi: TCDBEdit;
    DBEvlIpi: TCDBEdit;
    DBEprPis: TCDBEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    DBEvlPis: TCDBEdit;
    CLabel3: TCLabel;
    DBEprCofins: TCDBEdit;
    CLabel88: TCLabel;
    DBEvlCofins: TCDBEdit;
    cdsNfProdutoprPis: TFMTBCDField;
    cdsNfProdutoprCofins: TFMTBCDField;
    DBENcm: TCDBEdit;
    CLabel89: TCLabel;
    DBEidCSTPis: TCDBEdit;
    LookPis: TCLookUp;
    CLabel60: TCLabel;
    cdsNfProdutoidCSTPis: TSmallintField;
    cdsNfProdutoidCSTCofins: TSmallintField;
    DBEidCSTCofins: TCDBEdit;
    CLookUp7: TCLookUp;
    CLabel90: TCLabel;
    DBRGidFrete: TCDBRadioGroup;
    DBEchaveNFe: TCDBEdit;
    CLabel91: TCLabel;
    DBRGtpEmissao: TCDBRadioGroup;
    cdsPadraotpEmissao: TStringField;
    cdsPadraochaveNFe: TStringField;
    BtnEmail: TCBitBtn;
    BtnCartaCorrecao: TCBitBtn;
    BtnEnviar: TCBitBtn;
    TabNFe: TTabSheet;
    CGroupBox48: TCGroupBox;
    CGroupBox45: TCGroupBox;
    CLabel121: TCLabel;
    CLabel122: TCLabel;
    CLabel123: TCLabel;
    CLabel132: TCLabel;
    DBECOD_STATUS_RESP_SEFAZ: TCDBEdit;
    DBENUM_PROTOC_AUTORZ_SEFAZ: TCDBEdit;
    DBENUM_RECIBO_AUTORZ_SEFAZ: TCDBEdit;
    DBEDAT_HOR_PROC_SEFAZ: TCDBEdit;
    CGroupBox43: TCGroupBox;
    CLabel114: TCLabel;
    DBEA_ID: TCDBEdit;
    CGroupBox11: TCGroupBox;
    cdsNFe: TClientDataSet;
    dsNFe: TDataSource;
    dspNFe: TDataSetProvider;
    sdsNFe: TSQLDataSet;
    cdsNFeE_CNPJ: TStringField;
    cdsNFeB_SERIE: TFMTBCDField;
    cdsNFeidNFe: TFMTBCDField;
    cdsNFeA_ID: TStringField;
    cdsNFeCOD_STATUS_RESP_SEFAZ: TFMTBCDField;
    cdsNFeNUM_RECIBO_AUTORZ_SEFAZ: TStringField;
    cdsNFeNUM_PROTOC_AUTORZ_SEFAZ: TFMTBCDField;
    cdsNFeDAT_HOR_PROC_SEFAZ: TSQLTimeStampField;
    cdsNFeST_NOTA_NFE: TStringField;
    cdsNFeidEmpresa: TIntegerField;
    cdsNFeidCadEmpresa: TSmallintField;
    cdsNFeidDocSerie: TStringField;
    cdsNFeDSC_ARQUIVO_XML: TStringField;
    cdsNFeCritica: TClientDataSet;
    dsNFeCritica: TDataSource;
    dspNFeCritica: TDataSetProvider;
    sdsNFeCritica: TSQLDataSet;
    cdsNFeCriticaidEmpresa: TIntegerField;
    cdsNFeCriticaidCadEmpresa: TSmallintField;
    cdsNFeCriticaidDocSerie: TStringField;
    cdsNFeCriticaCD_CRITICA: TFMTBCDField;
    cdsNFeCriticaDESC_CRITICA: TStringField;
    cdsNFeErro: TClientDataSet;
    dsNFeErro: TDataSource;
    dspNFeErro: TDataSetProvider;
    sdsNFeErro: TSQLDataSet;
    CLabel115: TCLabel;
    DBEST_NOTA_NFE: TCDBEdit;
    CDBGrid1: TCDBGrid;
    CDBGrid2: TCDBGrid;
    cdsNFeErroidEmpresa: TIntegerField;
    cdsNFeErroidCadEmpresa: TSmallintField;
    cdsNFeErroidDocSerie: TStringField;
    cdsNFeErroCD_ERRO: TSmallintField;
    cdsNFeErroDESC_ERRO: TStringField;
    lookSerieFiscal: TCLookUp;
    DBEidModBC: TCDBEdit;
    CLookUp8: TCLookUp;
    CLabel92: TCLabel;
    cdsNfProdutoidModBC: TSmallintField;
    cdsValidacao: TClientDataSet;
    dsValidacao: TDataSource;
    dspValidacao: TDataSetProvider;
    sdsValidacao: TSQLDataSet;
    cdsValidacaodescValidacao: TStringField;
    CGroupBox13: TCGroupBox;
    CLabel93: TCLabel;
    CLabel94: TCLabel;
    CLabel95: TCLabel;
    DBEidNfProdutor: TCDBEdit;
    DBEnrSerieProdutor: TCDBEdit;
    DBEdtEmissaoProdutor: TCDBEdit;
    cdsPadraoidNfProdutor: TIntegerField;
    cdsPadraonrSerieProdutor: TFMTBCDField;
    cdsPadraodtEmissaoProdutor: TSQLTimeStampField;
    ACBrNFe1: TACBrNFe;
    cdsNfImpostoOutrovlQtdeProduto: TFMTBCDField;
    cdsNFeCriticaidNFe: TIntegerField;
    cdsNFeErroidNFe: TIntegerField;
    cdsPadraoobsNf: TStringField;
    LookTpNatureza: TCLookUp;
    cdsPadraocompNf: TStringField;
    CGroupBox15: TCGroupBox;
    CLabel96: TCLabel;
    DBEseloFiscal: TCDBEdit;
    cdsPadraoseloFiscal: TStringField;
    BtnNfComplemento: TCBitBtn;
    cdsNfComp: TClientDataSet;
    dsNfComp: TDataSource;
    dspNfComp: TDataSetProvider;
    sdsNfComp: TSQLDataSet;
    panNfComp: TPanel;
    LookDocSerieOri: TCLookUp;
    lookSerieFiscalOri: TCLookUp;
    DBEidDocSerieOri: TCDBEdit;
    CLabel97: TCLabel;
    DBEidNfOri: TCDBEdit;
    CLabel99: TCLabel;
    DBEchaveNFeOri: TCDBEdit;
    CLabel100: TCLabel;
    BtnConfirmar: TCBitBtn;
    DBEvlTonelada: TCDBEdit;
    CLabel101: TCLabel;
    cdsNfImpostoOutrovlTonelada: TFMTBCDField;
    cdsNfImpostoOutrovlSaca: TFMTBCDField;
    CLabel102: TCLabel;
    DBEvlSaca: TCDBEdit;
    DBEprCredPresumido: TCDBEdit;
    DBEvlCredPresumido: TCDBEdit;
    CLabel103: TCLabel;
    CLabel104: TCLabel;
    cdsNfProdutoprCredPresumido: TFMTBCDField;
    cdsNfProdutoprCredOutorgado: TFMTBCDField;
    cdsNfProdutovlCredPresumido: TFMTBCDField;
    cdsNfProdutovlCredOutorgado: TFMTBCDField;
    DBEvlCredOutorgado: TCDBEdit;
    CLabel105: TCLabel;
    DBEprCredOutorgado: TCDBEdit;
    CLabel106: TCLabel;
    BtnInutilizar: TCBitBtn;
    panInutiliza: TPanel;
    CLabel107: TCLabel;
    CLabel108: TCLabel;
    lookSerieInu: TCLookUp;
    lookSerieFiscalInu: TCLookUp;
    DBEidDocSerieInu: TCDBEdit;
    DBEidNfInu: TCDBEdit;
    BtnConfirmarInu: TCBitBtn;
    CPanel1: TCPanel;
    cdsInutilizar: TClientDataSet;
    dsInutilizar: TDataSource;
    cdsInutilizaridDocSerie: TStringField;
    cdsInutilizaridNf: TIntegerField;
    BtnCancelarInu: TCBitBtn;
    frxReport1: TfrxReport;
    cdsNfProdutoNcm: TStringField;
    CDBChaveNFPe: TCDBEdit;
    CLabel110: TCLabel;
    cdsPadraoChaveNFPe: TStringField;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    procedure actImprimirExecute(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure DBEobsTituloRecExit(Sender: TObject);
    procedure DBEvlBaseIcmsExit(Sender: TObject);
    procedure cdsNfProdutoAfterEdit(DataSet: TDataSet);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actExcluir2Execute(Sender: TObject);
    procedure DBEidClienteExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidResultadoRTExit(Sender: TObject);
    procedure cdsNfRateioAfterInsert(DataSet: TDataSet);
    procedure cdsTituloRecAfterInsert(DataSet: TDataSet);
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure cdsNfRateioCalcFields(DataSet: TDataSet);
    procedure cdsNfRateioAfterScroll(DataSet: TDataSet);
    procedure dsTituloRecParcStateChange(Sender: TObject);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure dsNfRateioStateChange(Sender: TObject);
    procedure DBEdiasVencimentoExit(Sender: TObject);
    procedure DBCKincMesExit(Sender: TObject);
    procedure actGerarRateioExecute(Sender: TObject);
    procedure dspMovCaixaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure PagTituloRecChange(Sender: TObject);
    procedure DBEidRateioExit(Sender: TObject);
    procedure DBEidRateioEnter(Sender: TObject);
    procedure DBEprRateioExit(Sender: TObject);
    procedure DBEprRateioEnter(Sender: TObject);
    procedure BtnSalvarRatClick(Sender: TObject);
    procedure DBEvlDespesasExit(Sender: TObject);
    procedure cdsNfValorAfterInsert(DataSet: TDataSet);
    procedure DBEidImpostoOutroExit(Sender: TObject);
    procedure DBEidProdutoOExit(Sender: TObject);
    procedure dsNfImpostoOutroStateChange(Sender: TObject);
    procedure BtnSalvarOutroClick(Sender: TObject);
    procedure DBEqtProdutoEnter(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBMcompNfExit(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure dsNfProdutoStateChange(Sender: TObject);
    procedure dspNfProdutoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNfProdutoAfterInsert(DataSet: TDataSet);
    procedure BtnSalvarProdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBCKmovEstoqueExit(Sender: TObject);
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidNfExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure calculaprodutos(Sender: TObject);
    procedure CalcOutrosImpostos;
    procedure CalcTotalNota;
    procedure SomaRateio;
    procedure GeraRateio;
    procedure HabilitaRatRes;
    procedure GeraParcelas;
    procedure SomaParcelas;
    procedure SomaProdutos;
    procedure ConfigNatureza;
    constructor create (Formulario: TComponent; Parametro: Array of String);
    procedure DBEPR_COFINSEnter(Sender: TObject);
    procedure DBEPR_COFINSExit(Sender: TObject);
    procedure DBEVL_PISEnter(Sender: TObject);
    procedure DBEVL_PISExit(Sender: TObject);
    procedure DBEPR_PISEnter(Sender: TObject);
    procedure DBEPR_PISExit(Sender: TObject);
    procedure DBEVL_COFINSEnter(Sender: TObject);
    procedure DBEVL_COFINSExit(Sender: TObject);
    procedure cdsNfImpostoOutroAfterEdit(DataSet: TDataSet);
    procedure DBEqtProdutoExit(Sender: TObject);
    procedure DBEvlBaseIcmsEnter(Sender: TObject);
    procedure cdsNfRateioidResultadoValidate(Sender: TField);
    procedure ExcluiRomaneio;
    procedure HabilitaBotaoNFe(usaNFe : boolean);
    procedure actNovoExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    function VerNFETemp: boolean;
    function ConfigACBR (forma: string) : boolean;
    procedure DBEidNaturezaExit(Sender: TObject);
    procedure DBEidCnpjCpfExit(Sender: TObject);
    procedure BtnEmailClick(Sender: TObject);
    procedure BtnCartaCorrecaoClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure DBEidNfOriEnter(Sender: TObject);
    procedure DBEidNfOriExit(Sender: TObject);
    procedure BtnNfComplementoClick(Sender: TObject);
    procedure MudaLabelCfop(idCfop : integer);
    procedure DBEidDocSerieEnter(Sender: TObject);
    procedure DBEidDocSerieExit(Sender: TObject);
    procedure BtnInutilizarClick(Sender: TObject);
    procedure BtnCancelarInuClick(Sender: TObject);
    procedure BtnConfirmarInuClick(Sender: TObject);
  private
    { Private declarations }
    vlAnterior, vlAtual, idEmpresa, idCadEmpresa, idDocSerie, idNf : String; //variáveis criadas para tratar da regras dos descontos
    vlTotalRateio, vlTotalParcelas : currency;
    Global, embarque, usaNFe : Boolean;

  public
    { Public declarations }
    bloqueada : boolean;
  end;

var
  FrmNotaFiscal: TFrmNotaFiscal;

implementation

uses uFrmPrincipal, uDmPadrao, uFrmPesClienteFiscal, uFuncao, uFrmCadPadrao,
  uFrmPesNotas, uFrmConfigNF, uFrmNFeValidacao, uDmFind, uFrmPesCartaCorrecao;

{$R *.dfm}

{ TFrmNotaFiscal }

procedure TFrmNotaFiscal.actCancelarExecute(Sender: TObject);
begin
  inherited;
  HabilitaBotaoNFe(false);
  BtnNfComplemento.Visible := false;
end;

procedure TFrmNotaFiscal.actExcluir2Execute(Sender: TObject);
begin
//  inherited;
  if (trim(DBEidDocSerie.Text) = '') or (trim(cdsPadraoidNf.AsString) = '')  then
  begin
    messagedlg('Nenhuma nota selecionada!', mtwarning, [mbok], 0);
    exit;
  end;
  
  if messagedlg('Deseja realmente excluir o registro selecionado? ' + #13 +
               'Todos os lançamentos financeiros associados serão excluídos!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    //Exclui romaneio se o mesmo estiver associado
    ExcluiRomaneio;
    EDPar.Text := 'E';
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
        DBEidDocSerie, DBEidNf, EDPar], 'spExcluiCancelaNf') then
    begin                                                                         
      EDPar.Text := 'SEL';
      EDtpDocumento.Text := 'NFS';
      funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
        EDtpDocumento, DBEidDocSerie, DBEidNf, nil, nil, EDPar], 'spAtualizaEstoque');
      actNovo.Execute;
    end;
  end;
end;

procedure TFrmNotaFiscal.actExcluirExecute(Sender: TObject);
begin
//  inherited;
 if messagedlg('Deseja realmente cancelar o registro selecionado? ' + #13 +
               'Todos os lançamentos financeiros associados serão excluídos!', mtconfirmation, [mbyes, mbno], 0) = mryes then
 begin
  EDPar.Text := 'C';

  //Exclui romaneio associado se houver
  ExcluiRomaneio;
  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
      DBEidDocSerie, DBEidNf, EDPar], 'spExcluiCancelaNf') then
  begin
    EDPar.Text := 'SEL';
    EDtpDocumento.Text := 'NFS';
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
                       EDtpDocumento, DBEidDocSerie, DBEidNf, nil, nil, EDPar], 'spAtualizaEstoque');
    DBMobsNf.SetFocus;
  end;
  DBEidNfExit(DBEidNf);
 end;
end;

procedure TFrmNotaFiscal.actGerarRateioExecute(Sender: TObject);
begin
  inherited;
  GeraRateio;
end;

procedure TFrmNotaFiscal.actImprimirExecute(Sender: TObject);
var
  arquivo, sql : string;
  via : integer;
begin
//  inherited;
//  arquivo := '';
  if not ConfigACBR(cdsPadraotpEmissao.AsString) then
    exit;
//  Showmessage('1');
  dmPadrao.cdsNotaNFe.Active := false;
  dmPadrao.cdsNotaNFe.CommandText := 'SELECT * FROM NOTA_NFE WHERE CNPJ_EMISSOR = ' + QuotedStr(trim(funcao.TiraMascara(LookidCnpjCpf.Caption))) +
      'AND NUM_SERIE_DOCTO_FISCAL = ' + trim(lookSerieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' + DBEidNf.Text;
  dmPadrao.cdsNotaNFe.Active := true;

  arquivo := ACBrNFe1.Configuracoes.Arquivos.PathNFe + 'Nfe\' + dmPadrao.cdsNotaNFe.FieldByName('DSC_ARQUIVO_XML').AsString;

    if not FileExists(arquivo) then
    begin
      messagedlg('Arquivo XML não encontrado!', mtwarning, [mbok], 0);
      ClipBoard.asText := arquivo;
      exit;
    end;
    ACBrNFeDANFEFR1.FastFile := dmPadrao.RetornaConfig('caminho_rel') + '\DANFeRetrato.fr3';
    ACBrNFe1.DANFE:= ACBrNFeDANFEFR1;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(arquivo);
    dmPadrao.cdsImpressao.Active := false;
    dmPadrao.cdsImpressao.CommandText := 'SELECT * FROM NOTA_IMPRESSAO WHERE CNPJ_EMISSOR = ' + QuotedStr(trim(funcao.TiraMascara(LookidCnpjCpf.Caption))) +
      'AND NUM_SERIE_DOCTO_FISCAL = ' + trim(lookSerieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' + DBEidNf.Text;
    dmPadrao.cdsImpressao.Active := true;


    if dmPadrao.cdsImpressao.RecordCount > 0 then
    begin
      dmPadrao.cdsImpressao.Edit;
      via := dmPadrao.cdsImpressaoVIA.AsInteger+1;
    end
    else
    begin
      dmPadrao.cdsImpressao.Append;
      dmPadrao.cdsImpressaoCNPJ_EMISSOR.AsString := trim(funcao.TiraMascara(LookidCnpjCpf.Caption));
      dmPadrao.cdsImpressaoNUM_SERIE_DOCTO_FISCAL.AsInteger := StrToInt(trim(lookSerieFiscal.Caption));
      dmPadrao.cdsImpressaoNUM_SEQ_NFE.AsInteger := cdsPadraoidNf.AsInteger;
      dmPadrao.cdsImpressaoDATA_HORA.AsDateTime := now;
      via := 1;
    end;

    dmPadrao.cdsImpressaoVIA.AsInteger := via;
    dmPadrao.cdsImpressao.Post;
    dmPadrao.cdsImpressao.ApplyUpdates(0);
    ACBrNFe1.NotasFiscais.Imprimir;
end;

procedure TFrmNotaFiscal.actNovoExecute(Sender: TObject);
begin
  inherited;
  HabilitaBotaoNFe(false);
  BtnNfComplemento.Visible := false;

end;

procedure TFrmNotaFiscal.actPesquisarExecute(Sender: TObject);
begin
  inherited;
    Application.CreateForm(TFrmPesNotas, FrmPesNotas);
    FrmPesNotas.tpNota := 'NFS';
    FrmPesNotas.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesNotas.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          cdsEmpresa.Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesNotas.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesNotas.cdsGrid.FieldByName('idCadEmpresa').Value;
        FieldByName('idCliente').Value := FrmPesNotas.cdsGrid.FieldByName('idCadastro').Value;
        FieldByName('idCadCliente').Value := FrmPesNotas.cdsGrid.FieldByName('idCadAdicional').Value;
        FieldByName('idDocSerie').Value := FrmPesNotas.cdsGrid.FieldByName('idDocSerie').Value;
        FieldByName('idNf').Value := FrmPesNotas.cdsGrid.FieldByName('nrNota').Value;
        PagAbas.ActivePageIndex := 0;
        DBEidNf.SetFocus;
        DBEidNfExit(DBEidNf);
        PagAbas.ActivePageIndex := 0;
        DBEidNatureza.SetFocus;
      end;
    end;
  ConfigNatureza;
end;

procedure TFrmNotaFiscal.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  idTituloRec : integer;
  sql : string;
begin
  //verifica os produtos
  if (cdsNfProduto.IsEmpty) and (cdsPadraostNf.AsString <> 'A INUTILIZAR') then
  begin
    messagedlg('Produtos não cadastrados!', mtwarning, [mbok], 0);
    exit;
  end;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if trim(LooktpNatureza.Caption) = 'SAIDA' then
      cdsPadrao.FieldByName('idTpNotaFiscal').AsInteger := 2
    else
      cdsPadrao.FieldByName('idTpNotaFiscal').AsInteger := 1;

    //verifica alterações na tabela caixa  -  modificado
    if (trim(DBEidCaixa.Text) <> '') or (trim(DBEvlMovCaixa.Text) <> '') or (trim(DBEdescMovCaixa.Text) <> '') then
    begin
      cdsMovCaixa.FieldByName('fator').AsString := '1'; //recebendo
      cdsMovCaixa.Post;
      cdsMovCaixa.ApplyUpdates(0);
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela conta -- modificado
    if (trim(DBEidConta.Text) <> '') or (trim(DBEvlMovConta.Text) <> '') or (trim(DBEdescMovConta.Text) <> '') then
    begin
      cdsMovConta.FieldByName('fator').AsString := '1'; //recebendo
      cdsMovConta.Post;
      cdsMovConta.ApplyUpdates(0);
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela caixa
    if funcao.VerificaAlteracoes([cdsTituloRec]) then
    begin
      if cdsTituloRecParc.IsEmpty then
        GeraParcelas;
      cdsTituloRec.ApplyUpdates(0);
      idTituloRec := cdsTituloRec.FieldByName('idTituloRec').AsInteger;
      cdsTituloRecParc.First;
      while not cdsTituloRecParc.Eof do
      begin
        cdsTituloRecParc.Edit;
        cdsTituloRecParc.FieldByName('idTituloRec').Value := idTituloRec;
        cdsTituloRecParc.Post;
        cdsTituloRecParc.Next;
      end;
      //
      If (cdsTituloRecMov.ChangeCount > 0) Then
         cdsTituloRecMov.ApplyUpdates(-1);
      //
      cdsTituloRecParc.ApplyUpdates(0);
      //
    end; //fim do verificação de alterações na tabela caixa

    if trim(cdsPadraoidNf.AsString) = '' then
    begin
      if TRIM(lookidCnpjCpf.Caption) = '07.218.848/0001-30' then
      begin
        sql := 'SELECT (MAX(ISNULL(idNf, 0)) + 1) AS maximo FROM Nf WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
             ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) + ' AND idNf < 70000';
        cdsPadrao.FieldByName('idNf').AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('maximo').AsInteger;
      end
      else
      begin
        sql := 'SELECT (MAX(ISNULL(idNf, 0)) + 1) AS maximo FROM Nf WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
               ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text);
        cdsPadrao.FieldByName('idNf').AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('maximo').AsInteger;
      end;
    end;
    GravaChave(0, '', nil);
    inherited;

    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup,
          [DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidNf, DBEidMovCaixa, DBEidMovConta, DBEidTituloRec], 'spFechaNfSaida');
    
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
    dmPadrao.dbConexao.CommitFreeAndNil(t)
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  PagAbas.ActivePageIndex := 0;
  DBEidNfExit(DBEidNf);
end;

procedure TFrmNotaFiscal.BtnCancelarInuClick(Sender: TObject);
begin
  inherited;
  panInutiliza.Visible := false;
  cdsInutilizar.Cancel;
end;

procedure TFrmNotaFiscal.BtnCartaCorrecaoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesCartaCorrecao, FrmPesCartaCorrecao);
  FrmPesCartaCorrecao.ShowModal;
  GravaLog('Carta de Correção enviada');
end;

procedure TFrmNotaFiscal.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  if (trim(DBEidDocSerieOri.Text) <> '') or (trim(DBEidNfOri.Text) <> '') then
    if not ((trim(DBEidDocSerieOri.Text) <> '') and (trim(DBEidNfOri.Text) <> '')) then
    begin
      messagedlg('É preciso informar a série e o número da Nota!', mtwarning, [mbok], 0);
      exit;
    end;

  panNfComp.Visible := false;
end;

procedure TFrmNotaFiscal.BtnConfirmarInuClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  sql := 'SELECT * FROM Nf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
//                           ' AND idCadEmrpesa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                           ' AND idDocSerie = ' + funcao.RetornaValorEField(DBEidDocSerieInu, 3) +
                           ' AND idNf = ' + funcao.RetornaValorEField(DBEidNfInu, 3);
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      messagedlg('Nota já gerada! Não pode ser inutilizada por essa opção!', mtwarning, [mbok], 0);
      exit;
    end;
  end;
  //fim do with frmPrincipal.ExecutaSQLRet([], '', sql) do

  //Agora gera uma nota e inutiliza ela
  BtnNovo.Click;
  cdsPadraoidCliente.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadCliente.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  cdsPadraoidDocSerie.AsString := cdsInutilizaridDocSerie.AsString;
  cdsPadraoidNf.AsInteger := cdsInutilizaridNf.AsInteger;
  DBEidNfExit(DBEidNf);
  cdsPadraoidTpNotaFiscal.AsInteger := 2;
  cdsPadraodtEmissao.AsDateTime := date;
  cdsPadraodtSaida.AsDateTime := date;

  sql := 'SELECT TOP 1 * FROM Natureza WHERE tpNatureza = ' + QuotedStr('SAIDA') + ' AND SUBSTRING(RTRIM(idCfop), 1, 1) = 5 ';
  cdsPadraoidNatureza.AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idNatureza').AsInteger;

  cdsPadraomovEstoque.AsString := 'N';
  cdsPadraomovCusto.AsString := 'N';
  cdsPadraostNf.AsString := 'A INUTILIZAR';
  BtnSalvar.Click;
  DBEidNf.SetFocus;
  DBEidNfExit(DBEidNf);

  panInutiliza.Visible := false;
end;

procedure TFrmNotaFiscal.BtnEmailClick(Sender: TObject);
var
  mens : TStringList;
  conSeg : boolean;
  email, sql, arquivo : string;
begin
  inherited;
  mens := TStringList.Create;
  //abre a tabela de cliente
  //abre a tabela com os dados do cliente com propriedade
  sql := 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + cdsPadraoidCliente.AsString +
         ' AND idCadCliente = ' + cdsPadraoidCadCliente.AsString;
  with frmPrincipal.ExecutaSqlRet([], '', sql) do
  begin
    if (not FieldByName('email').IsNull) and (trim(FieldByName('email').AsString) <> '') then ///envia o email para o cliente cadastrado
      email := FieldByName('email').AsString;
  end;


  if not(InputQuery('Selecione o email a enviar...', 'Email de destino', email)) then
      exit;

  if trim(email) <> '' then
  begin
    //configura o componente -- passa como normal pois só será enviado email de notas autorizadas
    if not ConfigACBR('Normal') then
      exit;

    dmPadrao.cdsNotaNFe.Active := false;
    dmPadrao.cdsNotaNFe.CommandText := 'SELECT * FROM NOTA_NFE WHERE CNPJ_EMISSOR = ' + QuotedStr(trim(funcao.TiraMascara(LookidCnpjCpf.Caption))) +
        'AND NUM_SERIE_DOCTO_FISCAL = ' + trim(lookSerieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' + DBEidNf.Text;
    dmPadrao.cdsNotaNFe.Active := true;

    arquivo := ACBrNFe1.Configuracoes.Arquivos.PathNFe + 'Nfe\' + dmPadrao.cdsNotaNFe.FieldByName('DSC_ARQUIVO_XML').AsString;

    if not FileExists(arquivo) then
    begin
      messagedlg('Nota não encontrada!', mtwarning, [mbok], 0);
      exit;
    end;

    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(arquivo);

    mens.Add('Segue em anexo arquivos referentes a NF-e: ' + DBEidNf.Text);
    mens.Add('');
    mens.Add('Não responder nesse email!');
    conSeg := false;

    sql := 'SELECT * FROM ConfigFiscal WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString + ' AND idCadEmpresa = ' +
           cdsPadraoidCadEmpresa.AsString;
    with frmPrincipal.ExecutaSqlRet([], '', sql) do
    begin
      conseg := FieldByName('CONEXAO_SEGURA').AsString = 'S';


{      ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(FieldByName('SERVIDOR_SMTP').AsString,
                                                 FieldByName('PORTA').AsString,
                                                 FieldByName('USUARIO').AsString,
                                                 FieldByName('SENHA').AsString,
                                                 FieldByName('EMAIL_ORIGEM').AsString,
                                                 email,
                                                 'NF-e: ' + DBEidNf.Text + ' - ' + trim(LookClienteFiscal.Caption),
                                                 mens,
                                                 conSeg,
                                                 true);}
      showmessage('Email enviado!');
    end;
  end;
end;

procedure TFrmNotaFiscal.BtnEnviarClick(Sender: TObject);
var
  sql, acao : string;
begin
  inherited;
  with dmPadrao do
  begin
    //primeiramente integra o CTe caso seja a opção a Enviar
    if (cdsPadraostNf.AsString = 'A ENVIAR') or (cdsPadraostNf.AsString = 'CRITICA') then
    begin
      //Primeiro executa a validação
      sql := 'EXEC spNFeValidacao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ', ' + funcao.RetornaValorEField(DBEidDocSerie, 3) + ', ' + funcao.RetornaValorEField(DBEidNf, 3);
      cdsValidacao.Active := false;
      cdsValidacao.CommandText := sql;
      cdsValidacao.Active := true;
      if cdsValidacao.RecordCount > 0 then
      begin
        Application.CreateForm(TFrmNfeValidacao, FrmNfeValidacao);
        FrmNFeValidacao.ShowModal;
        exit; //Não avança até que sejam corrigidos os problemas da validação
      end;
      sql := 'EXEC spNFeIntegracao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ', ' + funcao.RetornaValorEField(DBEidDocSerie, 3) + ', ' + funcao.RetornaValorEField(DBEidNf, 3);
      dbConexao.ExecuteDirect(sql);
      acao := 'E';
    end
    else
      if cdsPadraostNf.AsString = 'A CANCELAR' then
      begin
        sql := 'UPDATE NOTA_NFE SET ST_NOTA_NFE = ' + QuotedStr('A CANCELAR') + ' WHERE CNPJ_EMISSOR = ' +
               QuotedStr(cdsNFeE_CNPJ.AsString) + ' AND NUM_SERIE_DOCTO_FISCAL = ' + cdsNFeB_SERIE.AsString +
               ' AND NUM_SEQ_NFE = ' + cdsNFeidNFe.AsString;
        dbConexaoNfe.ExecuteDirect(sql);
        acao := 'X';
      end
      else
        if cdsPadraostNf.AsString = 'A INUTILIZAR' then
        begin
          sql := 'EXEC spNFeIntegracao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                 ', ' + funcao.RetornaValorEField(DBEidDocSerie, 3) + ', ' + funcao.RetornaValorEField(DBEidNf, 3);
          dbConexao.ExecuteDirect(sql);

          sql := 'UPDATE NOTA_NFE SET ST_NOTA_NFE = ' + QuotedStr('A INUTILIZAR') + ' WHERE CNPJ_EMISSOR = ' +
                 QuotedStr(cdsNFeE_CNPJ.AsString) + ' AND NUM_SERIE_DOCTO_FISCAL = ' + cdsNFeB_SERIE.AsString +
                 ' AND NUM_SEQ_NFE = ' + cdsNFeidNFe.AsString;
          dbConexaoNfe.ExecuteDirect(sql);
          acao := 'I';
        end
        else
        begin
          messagedlg('Opção não disponível!', mtwarning, [mbok], 0);
          exit;
        end;
    cdsTmpNFe.Active := false;
    cdsTmpNFe.CommandText := 'SELECT * FROM NOTA_TEMP WHERE CNPJ_EMISSOR = ' + funcao.TiraMascara(QuotedStr(trim(lookidCnpjCpf.Caption))) +
                          ' AND SERIE = ' + trim(lookserieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' +
                          cdsPadraoidNf.AsString;
    cdsTmpNFe.Active := true;
    if cdsTmpNFe.RecordCount <= 0 then
    begin
      cdsTmpNFe.Append;
      cdsTmpNFe.FieldByName('CNPJ_EMISSOR').AsString := funcao.TiraMascara(trim(lookidCnpjCpf.Caption));
      cdsTmpNFe.FieldByName('SERIE').AsString := trim(lookserieFiscal.Caption);
      cdsTmpNFe.FieldByName('NUM_SEQ_NFE').AsInteger := cdsPadraoidNf.AsInteger;
      cdsTmpNFe.FieldByName('ACAO').AsString := acao; //Enviar
      cdsTmpNFe.FieldByName('STATUS').AsString := cdsPadraostNf.AsString;
      cdsTmpNFe.FieldByName('TP_EMISSAO').AsString := cdsPadraotpEmissao.AsString;
      cdsTmpNFe.FieldByName('USUARIO').AsInteger := StrToInt(frmPrincipal.idUsuario);
      cdsTmpNFe.FieldByName('ORDEM').AsInteger := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(ORDEM) ORDEM FROM BDNFe..NOTA_TEMP').FieldByName('ORDEM').AsInteger + 1;
      cdsTmpNFe.Post;
      cdsTmpNFe.ApplyUpdates(0);
    end; //if cdsTemp.RecordCount <= 0 then
  end; // fim do with dmPadrao do
  try
    VerNFeTemp;
  finally
    PagAbas.ActivePageIndex := 0;
    DBEidNfExit(DBEidNf);
    GravaLog('Nota Fiscal Eletrônica enviada');
  end;

end;

procedure TFrmNotaFiscal.BtnInutilizarClick(Sender: TObject);
begin
  inherited;
  cdsInutilizar.Append;
  panInutiliza.Top := 67;
  panInutiliza.Visible := true;
  DBEidDocSerieInu.SetFocus;
  GravaLog('Nota Fiscal Eletrônica inutilizada');
end;

procedure TFrmNotaFiscal.BtnNfComplementoClick(Sender: TObject);
begin
  inherited;
  panNfComp.Top := 318;
  panNfComp.Visible := true;
  DBEidDocSerieOri.SetFocus;
  GravaLog('Nota Complementar enviada');
end;

procedure TFrmNotaFiscal.BtnSalvarOutroClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsNfImpostoOutro, BtnSalvarOutro, BtnCancelarOutro, BtnExcluirOutro, BtnNovoOutro, (Sender as TCBitBtn), '');
  if ((Sender as TCBitBtn).Name = 'BtnSalvarOutro') then
    CalcTotalNota;
  DBEidProdutoO.SetFocus;
end;

procedure TFrmNotaFiscal.BtnSalvarParcClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec([DBEidTituloRec], cdsTituloRecParc, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc, (Sender as TCBitBtn), 'idParcela');
  if (Sender as TBitBtn).Name <> 'BtnNovoParc' then
    SomaParcelas;
  DBEidParcela.SetFocus;
end;

procedure TFrmNotaFiscal.BtnSalvarProdClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsNfProduto, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd, (Sender as TCBitBtn), 'idProduto');
  if ((Sender as TCBitBtn).Name = 'BtnSalvarProd') then
  begin
//    if ( cdsNfProdutovlTotal.AsCurrency <> ( cdsNfProdutovlBaseIcms.AsCurrency + cdsNfProdutovlBaseIss.AsCurrency +
//                                             cdsNfProdutovlIsentasIcms.AsCurrency + cdsNfProdutovlOutrasIcms.AsCurrency )) then
//    begin
//      messagedlg(' Os valores estão incorretos ! Verifique a soma dos valores ! ', mtWarning, [mbOk], 0);
//      exit;
//    end;
    //valida campos obrigatórios quando for nfe
    if usaNFe then
    begin
      if trim(DBENcm.Text) = '' then
      begin
        messagedlg('Para o uso de NF-e o NCM é obrigatório!', mtwarning, [mbok], 0);
        exit;
      end;
      if trim(DBEidModBC.Text) = '' then
      begin
        messagedlg('Para o uso de NF-e a Modalidade da Base de Cálculo é obrigatória!', mtwarning, [mbok], 0);
        exit;
      end;
    end;
    CalcOutrosImpostos;
    CalcTotalNota;    
  end;
  if ((Sender as TCBitBtn).Name <> 'BtnNovoProd') then
    SomaProdutos;
  
  DBEidProduto.SetFocus;
end;

procedure TFrmNotaFiscal.BtnSalvarRatClick(Sender: TObject);
begin
  inherited;
  if (Sender as TBitBtn).Name = 'BtnSalvarRat' then
    if cdsNfRateio.FieldByName('vlRateio').Value >  cdsNfValor.FieldByName('vlNotaFiscal').Value then
    begin
      messagedlg('O valor do rateio não pode ser maior que a nota!', mtwarning, [mbok], 0);
      exit;
    end;

  funcao.GravaSec(chave, cdsNfRateio, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRat') and ((Sender as TBitBtn).Name <> 'BtnCancelarRat') then
    SomaRateio; //rateio

  DBEidGerencial.SetFocus;
end;

procedure TFrmNotaFiscal.CalcOutrosImpostos;
begin
  //deleta os registros que existirem
  if cdsNfImpostoOutro.State in [dsInsert, dsEdit] then
     cdsNfImpostoOutro.Cancel;
  cdsNfImpostoOutro.Filtered := false;
  cdsNfImpostoOutro.Filter := 'idProduto = ' + cdsNfProdutoidProduto.AsString;
  cdsNfImpostoOutro.Filtered := true;
  cdsNfImpostoOutro.First;
  while not cdsNfImpostoOutro.Eof do
    cdsNfImpostoOutro.Delete;
  cdsNfImpostoOutro.Filtered := false;
  with frmPrincipal.ExecutaSQLRet([DBEidProduto, DBEidNatureza, DBEidEmpresa, DBEidCadEmpresa,
            DBEidCliente, DBEidCadCliente, DBEqtProduto, DBEvlLiquido, DBEvlTotal], 'spRetProdImpostoOutro', '') do
  begin
    while not eof do
    begin
      cdsNfImpostoOutro.Append;
      cdsNfImpostoOutro.FieldByName('idEmpresa').AsInteger := cdsEmpresa.FieldByName('idEmpresa').AsInteger;
      cdsNfImpostoOutro.FieldByName('idCadEmpresa').AsInteger := cdsEmpresa.FieldByName('idCadEmpresa').AsInteger;
      cdsNfImpostoOutro.FieldByName('idDocSerie').Value := cdsPadrao.FieldByName('idDocSerie').Value;
      cdsNfImpostoOutro.FieldByName('idNf').Value := 0;
//      cdsNfImpostoOutro.FieldByName('idCliente').AsInteger := cdsPadrao.FieldByName('idCliente').AsInteger;
//      cdsNfImpostoOutro.FieldByName('idCadCliente').AsInteger := cdsPadrao.FieldByName('idCadCliente').AsInteger;
      cdsNfImpostoOutro.FieldByName('idProduto').AsString := cdsNfProdutoidProduto.AsString;
      cdsNfImpostoOutro.FieldByName('idImpostoOutro').Value := FieldByName('idImpostoOutro').Value;
      cdsNfImpostoOutro.FieldByName('prFaturamento').Value := FieldByName('prFaturamento').Value;
      cdsNfImpostoOutro.FieldByName('prQtdeProduto').Value := FieldByName('prQtdeProduto').Value;
      cdsNfImpostoOutro.FieldByName('vlQtdeProduto').Value := FieldByName('vlQtdeProduto').Value;
      cdsNfImpostoOutro.FieldByName('vlImpostoOutro').Value := FieldByName('vlImpostoOutro').Value;
      cdsNfImpostoOutro.FieldByName('vlTonelada').Value := FieldByName('vlTonelada').Value;
      cdsNfImpostoOutro.FieldByName('vlSaca').Value := FieldByName('vlSaca').Value;
      cdsNfImpostoOutro.Post;
      next;     
    end; // fim do laço
  end; //fim do with           
end;

procedure TFrmNotaFiscal.CalcTotalNota;
//totaliza a nota
var
  vlProdutos, vlServicos, vlBaseIpi, vlIpi, vlReducao, vlBaseIcms, vlIcms,
  vlIsentasIcms, vlOutrasIcms, vlBaseIss, vlIss, vlOutrosImpostos, vlPis, vlCofins : currency;
begin
  vlServicos := 0; vlProdutos := 0; vlBaseIpi := 0; vlIpi := 0; vlReducao := 0;
  vlBaseIcms := 0; vlIcms := 0; vlIsentasIcms := 0; vlOutrasIcms := 0;
  vlBaseIss := 0; vlIss := 0; vlOutrosImpostos := 0; vlPis := 0; vlCofins := 0;

  with cdsNfProduto do
  begin
    First;
    while not Eof do
    begin
      if frmPrincipal.ExecutaSQLRet([DBEidProduto], '', 'Produto').FieldByName('idProdCategoria').Value = 3 then //serviços
        vlServicos := vlServicos + FieldByName('vlTotal').Value
      else
        vlProdutos := vlProdutos + FieldByName('vlTotal').Value;
      if FieldByName('vlIpi').Value > 0 then
      begin
         vlBaseIpi := vlBaseIpi + FieldByName('vlBaseIpi').Value;
         vlIpi := vlIpi + FieldByName('vlIpi').Value;
      end;
      vlReducao := vlReducao + FieldByName('vlReducao').Value;
      vlBaseIcms := vlBaseIcms + FieldByName('vlBaseIcms').Value;
      vlIcms := vlIcms + FieldByName('vlIcms').Value;
      vlIsentasIcms := vlIsentasIcms + FieldByName('vlIsentasIcms').Value;
      vlOutrasIcms := vlOutrasIcms + FieldByName('vlOutrasIcms').Value;
     // vlPis := vlPis + FieldByName('prPis').Value;
     // vlCofins := vlCofins + FieldByName('prCofins').Value;
      if FieldByName('vlBaseIss').Value > 0 then
      begin
        vlBaseIss := vlBaseIss + FieldByName('vlBaseIss').Value;
        vlIss := vlIss + FieldByName('vlIss').Value;
      end;
      Next;
    end; //fim do while not cdsNfProduto.Eof do
  end; // fim do with cdsNfProduto
  //OUTROS IMPOSTOS
  with cdsNfImpostoOutro do
  begin
    if State in [dsEdit, dsInsert] then
      Cancel;
    if not (IsEmpty) then
    begin
      First;
      while not Eof do
      begin
        vlOutrosImpostos := vlOutrosImpostos + FieldByName('vlImpostoOutro').Value;
        Next;
      end; //fim do while not cdsNfProduto.Eof do
    end;
  end; // fim do with cdsNfProduto

  //inclui na tabela de totais
  with cdsNfValor do
  begin
    if not (State in [dsEdit, dsInsert]) then
      Edit;
    FieldByName('vlProdutos').Value := vlProdutos;
    FieldByName('vlServicos').Value := vlServicos;
    FieldByName('vlBaseIpi').Value := vlBaseIpi;
    FieldByName('vlIpi').Value := vlIpi;
    FieldByName('vlReducao').Value := vlReducao;
    FieldByName('vlBaseIcms').Value := vlBaseIcms;
    FieldByName('vlIcms').Value := vlIcms;
    FieldByName('vlIsentasIcms').Value := vlIsentasIcms;
    FieldByName('vlOutrasIcms').Value := vlOutrasIcms;
    FieldByName('vlBaseIss').Value := vlBaseIss;
    FieldByName('vlIss').Value := vlIss;
    FieldByName('vlOutrosImpostos').Value := vlOutrosImpostos;
    FieldByName('vlNotaFiscal').Value := (vlProdutos + vlServicos + vlIpi +
            FieldByName('vlDespesas').Value + FieldByName('vlFrete').Value + FieldByName('vlSeguro').Value) -
            FieldByName('vlDesconto').Value;
    //FieldByName('vlPis').Value := vlPis;
    //FieldByName('vlCofins').Value := vlCofins;
  end; // fim do with cdsNfValor do
end;

procedure TFrmNotaFiscal.calculaprodutos(Sender: TObject);
//Procedimento criado para calcular os valores dos produtos
var
  vlLiquido, vlTotal, vlDesconto : currency;
  prDesconto : double;
  stTributaria, idProdCategoria : byte;
  teste : string;
begin
  vlTotal := 0;
  vlLiquido := 0;
  prDesconto := 0;
  vlDesconto := 0;
  idProdCategoria := 0;
  With cdsNfProduto do
  begin
    StTributaria := FieldByName('idStTributaria').AsInteger;
    if not (State in [dsInsert, dsEdit]) then
      exit; //se não estiver em modo edição significa que não foi alterado
    if vlAnterior = vlAtual then
      exit; // tb significa que não houve alteração
    vlLiquido := FieldByName('vlLiquido').AsCurrency;
    vlTotal := FieldByName('vlTotal').AsCurrency;
    if ((trim(DBEvlBruto.Text) <> '') or (trim(DBEvlTotal.Text) <> '')) and (trim(DBEqtProduto.Text) <> '') and (trim(cdsNfProdutoidProduto.AsString) <> '') and (cdsNfProdutoqtProduto.AsFloat > 0) then
    begin
      //Inicializa as variáveis
      vlLiquido := FieldByName('vlLiquido').AsCurrency;
      if Sender <> DBEvlTotal then
        vlTotal := RoundTo(FieldByName('vlTotal').AsCurrency, -2);
      prDesconto := FieldByName('prDesconto').AsFloat;
      vlDesconto := FieldByName('vlDesconto').AsFloat;

      ///******  INICIA CALCULO DOS VALORES  -- SERVIRÁ PARA OS DOIS TIPOS DE NOTA  ******//
      if ((Sender as TCDBEdit).Name = 'DBEqtProduto') or ((Sender as TCDBEdit).Name = 'DBEvlBruto') or
         ((Sender as TCDBEdit).Name = 'DBEvlDesconto') or ((Sender as TCDBEdit).Name = 'DBEvlTotal')  then
      begin
        vlDesconto := FieldByName('vlDesconto').AsCurrency;
        vlTotal := FieldByName('vlTotal').AsCurrency;
        if ((Sender as TCDBEdit).Name = 'DBEvlTotal') and (vlTotal > 0) then
          FieldByName('vlBruto').AsCurrency := (vlTotal/ FieldByName('qtProduto').AsFloat)
        else
          vlTotal := RoundTo(FieldByName('qtProduto').AsFloat * (FieldByName('vlBruto').AsCurrency), -2);
        if Sender <> DBEvlLiquido then
          vlLiquido := RoundTo(vlTotal-vlDesconto, -2);
        if (vlLiquido > 0) and (vlTotal > 0) then
          prDesconto := RoundTo((1-(vlLiquido/vlTotal))*100, -3);

        if (Sender <> DBEvlDesconto) then
          vlDesconto := RoundTo(vlTotal-vlLiquido, -2);
      end;
      if (Sender = DBEvlLiquido) then
      begin
        vlDesconto := RoundTo(vlTotal-vlLiquido, -2);
        if (vlLiquido > 0) and (vlTotal > 0) then
          prDesconto := RoundTo((1-(vlLiquido/vlTotal))*100, -3);
      end;

      if (Sender as TCDBEdit).Name = 'DBEprDesconto' then
      begin
        prDesconto := FieldByName('prDesconto').AsFloat;
        vlDesconto := RoundTo(FieldByName('vlTotal').AsCurrency * (prDesconto/100), FieldByName('vlDesconto').Size*-1);
        vlTotal := RoundTo(FieldByName('qtProduto').AsFloat * (FieldByName('vlBruto').AsCurrency), -2);
        vlLiquido := RoundTo(vlTotal-vlDesconto, -2);
      end;

     ///******  TRATAMENTO DOS IMPOSTOS  -- SERVIRÁ PARA OS DOIS TIPOS DE NOTA  ******//
     with frmPrincipal.ExecutaSQLRet([DBEidProduto], '', 'Produto') do
     begin
       idProdCategoria := FieldByName('idProdCategoria').Value;
     end;
     if StTributaria = 0 then //tributada integralmente
       if (idProdCategoria = 3) then //serviços
       begin
         if (Sender <> DBEvlBaseIss) then //pois pode ter vindo de alteração manual
           cdsNfProduto.FieldByName('vlBaseIss').AsCurrency := vlLiquido - cdsNfProduto.FieldByName('vlReducao').AsCurrency;
       end
       else
       begin
         if Sender <> DBEvlBaseIcms then
           cdsNfProduto.FieldByName('vlBaseIcms').AsCurrency := vlLiquido - cdsNfProduto.FieldByName('vlReducao').AsCurrency;
       end;

     if StTributaria in [10, 50, 51, 60, 90] then //outras
       cdsNfProduto.FieldByName('vlOutrasIcms').AsCurrency := vlLiquido;


     end;// fim do if trim(EDtpNatureza.Text) <> 'ENTRADA' then
     if ((Sender as TCDBEdit).Name = 'DBEvlReducao') then
       FieldByName('prReducao').AsCurrency := RoundTo((FieldByName('prReducao').AsFloat/vlLiquido*100), FormatSettings.CurrencyDecimals*-1)
     else
       if FieldByName('prReducao').AsCurrency > 0 then
         FieldByName('vlReducao').AsCurrency := RoundTo(vlLiquido * (FieldByName('prReducao').AsFloat/100), FormatSettings.CurrencyDecimals*-1);
       if idProdCategoria IN [1, 2] then
       begin
         if FieldByName('vlOutrasIcms').Value > 0 then
         begin
           if Sender <> DBEvlBaseIcms then
           begin
             FieldByName('vlBaseIcms').AsCurrency := vlLiquido - FieldByName('vlReducao').AsCurrency;
             FieldByName('vlBaseIcms').AsCurrency := FieldByName('vlBaseIcms').AsCurrency - FieldByName('vlOutrasIcms').AsCurrency;
             if FieldByName('vlBaseIcms').AsCurrency < 0 then
               FieldByName('vlBaseIcms').AsCurrency := 0;
           end;
         end;
         if ((Sender as TCDBEdit).Name = 'DBEvlBaseIcms') then
           if vlAnterior <> DBEvlBaseIcms.Text then
             FieldByName('vlBaseIcms').AsCurrency := cdsNfProdutovlBaseIcms.AsCurrency //DBEvlBaseIcms.Text
           else
             FieldByName('vlBaseIcms').AsCurrency := vlLiquido - FieldByName('vlReducao').AsCurrency;
         if (Sender <> DBEvlIcms) then //pois a alteração pode ser manual
           FieldByName('vlIcms').AsCurrency := RoundTo(FieldByName('vlBaseIcms').AsCurrency * (FieldByName('prIcms').AsFloat/100), FormatSettings.CurrencyDecimals*-1);

         //agora verifica a questão de crédito presumido ou outorgado
         FieldByName('vlCredOutorgado').AsCurrency := 0;
         FieldByName('vlCredPresumido').AsCurrency := 0;
         if FieldByName('vlIcms').AsCurrency > 0 then
         begin
           if FieldByName('prCredOutorgado').AsFloat > 0 then
             FieldByName('vlCredOutorgado').AsCurrency := RoundTo((FieldByName('vlIcms').AsCurrency*FieldByName('prCredOutorgado').AsFloat)/100, FormatSettings.CurrencyDecimals*-1);

           if FieldByName('prCredPresumido').AsFloat > 0 then
             FieldByName('vlCredPresumido').AsCurrency := RoundTo((FieldByName('vlIcms').AsCurrency*FieldByName('prCredPresumido').AsFloat)/100, FormatSettings.CurrencyDecimals*-1);
         end;
       end
       else
       begin
         if Sender <> DBEvlBaseIss then
           FieldByName('vlBaseIss').AsCurrency := vlLiquido - FieldByName('vlReducao').AsCurrency;
         if Sender <> DBEvlIss then
           FieldByName('vlIss').AsCurrency := RoundTo(FieldByName('vlBaseIss').AsCurrency * (FieldByName('prIss').AsFloat/100), FormatSettings.CurrencyDecimals*-1);
       end;
     if StTributaria in [30, 40, 41] then //isentas
     begin
       if Sender <> DBEvlIsentasIcms then
         cdsNfProduto.FieldByName('vlIsentasIcms').AsCurrency := vlLiquido;
       if Sender <> DBEvlBaseIcms then
         cdsNfProduto.FieldByName('vlBaseIcms').AsCurrency := 0;
     end;
     if (vlLiquido > 0) and (FieldByName('prIpi').Value > 0) then
       FieldByName('vlBaseIpi').AsCurrency := vlLiquido;
    if ((Sender as TCDBEdit).Name = 'DBEvlBaseIcms') or ((Sender as TCDBEdit).Name = 'DBEprIcms') then
      FieldByName('vlIcms').AsCurrency := RoundTo((FieldByName('vlBaseIcms').AsCurrency * FieldByName('prIcms').AsFloat)/100, FormatSettings.CurrencyDecimals*-1);
    if ((Sender as TCDBEdit).Name = 'DBEvlBaseIss') or ((Sender as TCDBEdit).Name = 'DBEprIss') then
      FieldByName('vlIss').AsCurrency := RoundTo((FieldByName('vlBaseIss').AsCurrency * FieldByName('prIss').AsFloat)/100, FormatSettings.CurrencyDecimals*-1);
    if ((Sender as TCDBEdit).Name = 'DBEvlBaseIpi') or ((Sender as TCDBEdit).Name = 'DBEprIpi') then
      FieldByName('vlIpi').AsCurrency := RoundTo((FieldByName('vlBaseIpi').AsCurrency * FieldByName('prIpi').AsFloat)/100, FormatSettings.CurrencyDecimals*-1)
    else
      if FieldByName('prIpi').Value = 0 then
      begin
        FieldByName('vlIpi').AsCurrency := 0;
        FieldByName('prIpi').value := 0;
        FieldByName('vlBaseIpi').AsCurrency := 0;
      end;

    if (FieldByName('vlTotal').AsCurrency <> vlTotal) and (Sender <> DBEvlTotal) then
      FieldByName('vlTotal').AsCurrency := RoundTo(vlTotal, -2);
    if FieldByName('vlLiquido').Value <> vlLiquido then
      if Sender <> DBEvlLiquido then
        FieldByName('vlLiquido').Value := vlLiquido;
    if FieldByName('prDesconto').AsCurrency <> prDesconto then
      FieldByName('prDesconto').AsCurrency := prDesconto;
    if FieldByName('vlDesconto').Value <> vlDesconto then
      FieldByName('vlDesconto').Value := vlDesconto;
    cdsNfProdutovlOutrasIcms.AsCurrency := (cdsNfProdutovlLiquido.AsCurrency - cdsNfProdutovlBaseIcms.AsCurrency - cdsNfProdutovlIsentasIcms.AsCurrency);
    if cdsNfProdutovlOutrasIcms.AsCurrency < 0 then
      cdsNfProdutovlOutrasIcms.AsCurrency := 0;
  end; //fim do with cdsNfProduto
   //******  CÁLCULO DO PIS
    if (Sender = DBEprPis) then
    begin
      if (cdsNfProdutovlLiquido.AsCurrency > 0) and (cdsNfProdutoprPis.AsFloat > 0) then
        cdsNfProdutovlPis.AsCurrency := (cdsNfProdutovlLiquido.AsCurrency*cdsNfProdutoprPis.AsFloat)/100
      else
        cdsNfProdutovlPis.AsCurrency := 0;
    end; //fim do if (Sender = DBEPR_PIS) then

    if (Sender = DBEvlPis) then
    begin
      if (cdsNfProdutovlPis.AsCurrency > cdsNfProdutovlLiquido.AsCurrency) then
      begin
        messagedlg('O PIS não pode ser maior que o valor dos produtos!', mtwarning, [mbok], 0);
        DBEvlPis.SetFocus;
        exit;
      end; //if (cdsNfProdutoVL_PIS.AsCurrency > cdsNfProdutoVL_TOTAL.AsCurrency) then
      if (cdsNfProdutovlPis.AsCurrency > 0) then
        cdsNfProdutoprPis.AsCurrency := (cdsNfProdutovlPis.AsCurrency/cdsNfProdutovlLiquido.AsCurrency)*100
      else
        cdsNfProdutoprPis.AsCurrency := 0;
    end; //fim do if (Sender = DBEVL_PIS) then

    //******  CÁLCULO DO COFINS
    if (Sender = DBEprCofins) then
    begin
      if (cdsNfProdutovlLiquido.AsCurrency > 0) and (cdsNfProdutoprCofins.AsFloat > 0) then
        cdsNfProdutovlCofins.AsCurrency := (cdsNfProdutovlLiquido.AsCurrency*cdsNfProdutoprCofins.AsFloat)/100
      else
        cdsNfProdutovlCofins.AsCurrency := 0;
    end; //fim do if (Sender = DBEPR_PIS) then

    if (Sender = DBEvlCofins) then
    begin
      if (cdsNfProdutovlCofins.AsCurrency > cdsNfProdutovlLiquido.AsCurrency) then
      begin
        messagedlg('O COFINS não pode ser maior que o valor dos produtos!', mtwarning, [mbok], 0);
        DBEvlCofins.SetFocus;
        exit;
      end; //if (cdsNfProdutoVL_PIS.AsCurrency > cdsNfProdutoVL_TOTAL.AsCurrency) then
      if (cdsNfProdutovlCofins.AsCurrency > 0) then
        cdsNfProdutoprCofins.AsCurrency := (cdsNfProdutovlCofins.AsCurrency/cdsNfProdutovlLiquido.AsCurrency)*100
      else
        cdsNfProdutoprCofins.AsCurrency := 0;
    end; //fim do if (Sender = DBEVL_PIS) then

   //Cálculo do Pis e cofins
   if (cdsNfProduto.FieldByName('prPis').AsFloat > 0) and (Sender <> DBEvlPis) and (Sender <> DBEprPis) then
     cdsNfProduto.FieldByName('vlPis').AsCurrency := RoundTo((cdsNfProduto.FieldByName('vlLiquido').AsCurrency*cdsNfProduto.FieldByName('prPis').AsFloat)/100, FormatSettings.CurrencyDecimals*-1);

   if (cdsNfProduto.FieldByName('prCofins').AsFloat > 0) and (Sender <> DBEvlCofins) and (Sender <> DBEprCofins) then
     cdsNfProduto.FieldByName('vlCofins').AsCurrency := RoundTo((cdsNfProduto.FieldByName('vlLiquido').AsCurrency*cdsNfProduto.FieldByName('prCofins').AsFloat)/100, FormatSettings.CurrencyDecimals*-1);
end;

procedure TFrmNotaFiscal.cdsMovCaixaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := cdsEmpresaidEmpresa.AsString;
  if frmPrincipal.filial then
    DataSet.FieldByName('idCadEmpresa').AsString := cdsEmpresaidCadEmpresa.AsString
  else
    DataSet.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresaFin;
  DataSet.FieldByName('idMovCaixa').AsInteger := 0;
  DataSet.FieldByName('dtMovCaixa').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 8; //Valor recebido pelo caixa
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
end;

procedure TFrmNotaFiscal.cdsMovContaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := cdsEmpresaidEmpresa.AsString;
  if frmPrincipal.filial then
    DataSet.FieldByName('idCadEmpresa').AsString := cdsEmpresaidCadEmpresa.AsString
  else
    DataSet.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresaFin;
  DataSet.FieldByName('idMovConta').Value := 0;
  DataSet.FieldByName('dtMovConta').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 9; //Valor recebido pelo banco
  DataSet.FieldByName('impresso').AsString := 'N';
end;

procedure TFrmNotaFiscal.cdsNfImpostoOutroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmNotaFiscal.cdsNfProdutoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if ( not (cdsPadrao.State in [dsInsert, dsEdit]) ) then
    cdsPadrao.Edit;
end;

procedure TFrmNotaFiscal.cdsNfProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if ( not (cdsPadrao.State in [dsInsert, dsEdit]) ) then
    cdsPadrao.Edit;
  with Dataset do
  begin
    FieldByName('idEmpresa').AsInteger := 0;
    FieldByName('idCadEmpresa').AsInteger := 0;
    FieldByName('idDocSerie').AsString := '';
    FieldByName('idNf').AsInteger := 0;
//    FieldByName('idCliente').AsInteger := cdsPadrao.FieldByName('idCliente').AsInteger;
//    FieldByName('idCadCliente').AsInteger := cdsPadrao.FieldByName('idCadCliente').AsInteger;
    FieldByName('prDesconto').AsInteger := 0;
    FieldByName('vlDesconto').AsInteger := 0;
    FieldByName('prReducao').AsInteger := 0;
    FieldByName('vlReducao').AsInteger := 0;
    FieldByName('vlBaseIcms').AsInteger := 0;
    FieldByName('vlIcms').AsInteger := 0;
    FieldByName('prIcms').AsInteger := 0;
    FieldByName('vlBaseIss').AsInteger := 0;
    FieldByName('vlIss').AsInteger := 0;
    FieldByName('prIss').AsInteger := 0;
    FieldByName('vlIsentasIcms').AsInteger := 0;
    FieldByName('vlOutrasIcms').AsInteger := 0;
    cdsNfProdutovlPis.AsFloat := 0;
    cdsNfProdutovlCofins.AsFloat := 0;
  end;
end;

procedure TFrmNotaFiscal.cdsNfRateioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsInteger := 0;
  DataSet.FieldByName('idCadEmpresa').AsInteger := 0;
//  DataSet.FieldByName('idCliente').AsInteger := 0;
//  DataSet.FieldByName('idCadCliente').AsInteger := 0;
  DataSet.FieldByName('idDocSerie').AsString := '';
  DataSet.FieldByName('idNf').AsInteger := 0;
end;

procedure TFrmNotaFiscal.cdsNfRateioAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  if not (Dataset.State in [dsInsert, dsEdit]) then
//    DataSet.Refresh;
end;

procedure TFrmNotaFiscal.cdsNfRateioCalcFields(DataSet: TDataSet);
var
  sql : string;
begin
  inherited;
  if not DataSet.IsEmpty then
    if trim(DataSet.FieldByName('idResultado').AsString) <> '' then
    begin
      sql := 'SELECT descResultado FROM Resultado WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
             ' AND idResultado = ' + DataSet.FieldByName('idResultado').AsString;
      DataSet.FieldByName('descResultado').AsString := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descResultado').AsString;
    end;
end;

procedure TFrmNotaFiscal.cdsNfRateioidResultadoValidate(Sender: TField);
var
  sql : string;
begin
  inherited;
  if DBEidResultadoRT.Text <> '' then
  begin
    sql := 'SELECT * FROM Resultado WHERE idResultado = ' + cdsNfRateioidResultado.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if FieldByName('consolidaEmp').AsString = 'S' then
      begin
        CLookUp4.AlternateSQL.Clear;
        CLookUp4.CampoObrigatorio := False;
        CLookUp4.ValidaCampoObrigatorio := False;
      end;
    end;
  end;
end;

procedure TFrmNotaFiscal.cdsNfValorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With DataSet do
  begin
    FieldByName('idEmpresa').AsInteger := 0;
    FieldByName('idCadEmpresa').AsInteger := 0;
//    FieldByName('idCliente').AsInteger := 0;
//    FieldByName('idCadCliente').AsInteger := 0;
    FieldByName('idDocSerie').AsString := '';
    FieldByName('idNf').AsInteger := 0;
    FieldByName('vlDesconto').Value := 0;
    FieldByName('prDesconto').Value := 0;
    FieldByName('vlDespesas').Value := 0;
    FieldByName('vlFrete').Value := 0;
    FieldByName('vlSeguro').Value := 0;            
  end;
end;

procedure TFrmNotaFiscal.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('movCusto').AsString := 'S';
    cdsPadrao.FieldByName('movEstoque').AsString := 'S';
  end
  else
    //Critério para habilitação da Nota de complemento
    BtnNfComplemento.Visible := (usaNfe) and (cdsPadrao.State in [dsEdit, dsInsert]);
end;

procedure TFrmNotaFiscal.cdsPadraoAfterScroll(DataSet: TDataSet);
var
sql : string;
begin
  inherited;
  sql :=' SELECT Imprime, idDocSerie FROM DocSerie WHERE idDocSerie = ' + quotedstr(cdsPadrao.FieldByName('idDocSerie').AsString);

  actImprimir.Visible := (FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('Imprime').AsString = 'S') and (cdsPadrao.State = dsBrowse);
end;

procedure TFrmNotaFiscal.cdsTituloRecAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idTituloRec').Value := 0;
  DataSet.FieldByName('idEmpresa').Value := cdsEmpresa.FieldByName('idEmpresa').Value;
  DataSet.FieldByName('idCadEmpresa').Value := cdsEmpresa.FieldByName('idCadEmpresa').Value;  
  DataSet.FieldByName('idCliente').Value := cdsPadrao.FieldByName('idCliente').Value;
  DataSet.FieldByName('nrTituloRec').Value := cdsPadrao.FieldByName('idNf').Value;
  DataSet.FieldByName('dtEmissao').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  if cdsNfRateioidGerencial.AsInteger > 0 then
    DataSet.FieldByName('idGerencial').Value := cdsNfRateioidGerencial.Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 1; //Inclusão de titulo a receber
  DataSet.FieldByName('stTituloRec').Value := 'ATIVO'; //Status do titulo
  DataSet.FieldByName('incMes').Value := 'N'; //Mesmo dia  
end;

function TFrmNotaFiscal.ConfigACBR(forma: string): boolean;
var
  msg, caminho, caminhocce, cnpj, caminhorel, arqrel : string;
  ok : boolean;
begin
  msg := '';
  Application.ProcessMessages;
  try
    cnpj := trim(funcao.TiraMascara(lookidCnpjCpf.Caption));
    with dmPadrao do
    begin
      cdsConfigNFe.Active := false;
      if (cdsConfigNFe.CommandText = 'SELECT * FROM CONFIG_NFE WHERE CNPJ_EMISSOR = ' + QuotedStr(cnpj)) then
        cdsConfigNFe.CommandText := 'SELECT * FROM CONFIG_NFE WHERE CNPJ_EMISSOR = ' + QuotedStr(cnpj) + ' AND 1=1'
      else
        cdsConfigNFe.CommandText := 'SELECT * FROM CONFIG_NFE WHERE CNPJ_EMISSOR = ' + QuotedStr(cnpj);
      cdsConfigNFe.Active := true;
//      {$IFDEF ACBrNFeOpenSSL}
//        if not (cdsConfigNFeCAMINHO_CERTIFICADO.IsNull) then
//          ACBrNFe1.Configuracoes.Certificados.Certificado  := cdsConfigNFeCAMINHO_CERTIFICADO.AsString
//        else
//          msg := msg + 'Caminho do certificado não configurado!' + #13;
//        if not (cdsConfigNFeSENHA_CERTIFICADO.IsNull) then
//          ACBrNFe1.Configuracoes.Certificados.Senha := cdsConfigNFeSENHA_CERTIFICADO.AsString
//        else
//          msg :=  msg + 'Senha do certificado não informada!' + #13;
//      {$ELSE}
//        if not (cdsConfigNFeNR_SERIE_CERTIFICADO.IsNull) then
//          ACBrNFe1.Configuracoes.Certificados.NumeroSerie := cdsConfigNFeNR_SERIE_CERTIFICADO.AsString
//        else
//          msg :=  msg + 'Número de série do certificado não configurado!' + #13;
//      {$ENDIF}
      if not (trim(forma) = '') then
      begin
        if forma = 'Normal' then
          ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal
        else
          if forma = 'Contingência' then
            ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia
          else
            if forma = 'SVCRS' then
              ACBrNFe1.Configuracoes.Geral.FormaEmissao := teSVCRS
            else
              if forma = 'DPEC' then
                ACBrNFe1.Configuracoes.Geral.FormaEmissao := teDPEC
              else
                if forma = 'FSDA' then
                  ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA
                else
                  if forma = 'ESVCSP' then
                    ACBrNFe1.Configuracoes.Geral.FormaEmissao := tESVCSP;

      end //if not (cdsConfigNFeDANFE_FORMAEMISSAO.IsNull) then
      else
        msg :=  msg + 'Forma de emissão não configurada!' + #13;

      ACBrNFe1.Configuracoes.Geral.Salvar := true;
      if not (cdsConfigNFeCAMINHO_ARQUIVOS.IsNull) then
      begin
        caminho := cdsConfigNFeCAMINHO_ARQUIVOS.AsString + cnpj + '\';
//        caminho := 'D:\Sistemas\NFe\TransNFe\Cergrand' + '\' + cnpj + '\';

        caminhocce := caminho + 'CCE\';
        caminho := caminho + IntToStr(MonthOf(cdsPadraodtEmissao.AsDateTime)) + '-' + IntToStr(YearOf(cdsPadraodtEmissao.AsDateTime)) + '\';

        if not (DirectoryExists(caminho)) then
          CreateDir(caminho);
        ACBrNFe1.Configuracoes.Arquivos.PathSalvar := caminho;
        ACBrNFe1.Configuracoes.Arquivos.PathEvento := caminho;
//        ACBrNFe1.Configuracoes.Arquivos.PathDPEC := caminho;
        ACBrNFe1.Configuracoes.Arquivos.PathInu := caminho;
        ACBrNFe1.Configuracoes.Arquivos.PathNfe := caminho;

        //Caminho CCE -- será único sem as datas
//        ACBrNFe1.Configuracoes.Arquivos.PathEvento := caminhocce;
        ACBrNFe1.Configuracoes.Arquivos.Salvar := True;
        ACBrNFe1.Configuracoes.Arquivos.EmissaoPathNFe := True;
      end
      else
        msg :=  msg + 'Caminho dos arquivos não configurado!' + #13;

      if not (cdsConfigNFeUF_WEBSERVICE.IsNull) then
        ACBrNFe1.Configuracoes.WebServices.UF := cdsConfigNFeUF_WEBSERVICE.AsString
      else
        msg :=  msg + 'UF do Webservice não informado!' + #13;

      if not (cdsConfigNFeTP_AMBIENTE.IsNull) then
      begin
        if cdsConfigNFeTP_AMBIENTE.AsString = 'H' then
          ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao
        else
          ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
      end
      else
        msg :=  msg + 'Ambiente não informado!' + #13;
      ACBrNFe1.Configuracoes.WebServices.Visualizar := false;

      if not(cdsConfigNFePROXY_HOST.IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyHost := cdsConfigNFePROXY_HOST.AsString;
      if not(cdsConfigNFePROXY_PORTA.IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyPort := cdsConfigNFePROXY_PORTA.AsString;
      if not(cdsConfigNFePROXY_USUARIO.IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyUser := cdsConfigNFePROXY_USUARIO.AsString;
      if not(cdsConfigNFePROXY_SENHA.IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyPass := cdsConfigNFePROXY_SENHA.AsString;

      if ACBrNFe1.DANFE <> nil then
      begin
        if not (cdsConfigNFeDANFE_ORIENTACAO.IsNull) then
        begin
          if cdsConfigNFeDANFE_ORIENTACAO.AsString = 'R' then
            ACBrNFe1.DANFE.TipoDANFE  := tiRetrato
          else
            ACBrNFe1.DANFE.TipoDANFE  := tiPaisagem;
        end
        else
          ACBrNFe1.DANFE.TipoDANFE  := tiRetrato;

        if not (cdsConfigNFeCAMINHO_LOGOMARCA.IsNull) then
          ACBrNFe1.DANFE.Logo := cdsConfigNFeCAMINHO_LOGOMARCA.AsString;

        ACBrNFe1.DANFE.PathPDF := caminho;

        //configura o caminho do Danfe do FastReport
        caminhorel := dmPadrao.RetornaConfig('caminho_rel');
        arqrel := caminhorel + 'DANFeRetrato.fr3';

        if (trim(caminhorel) = '') or (not (DirectoryExists(caminhorel))) then
          msg := msg + 'Caminho do DANFE não encontrado! Verifique arquivo de configuração!' + #13
        else //se encontrou o caminho faz nova verificação para ver se encontra o arquivo do fastreport
          if (trim(arqrel) = '') or (not (FileExists(arqrel))) then
            msg := 'Arquivo do DANFE não encontrado! Verifique arquivo de configuração!' + #13
          else //encontrando irá configurar o componente
            ACBrNFeDanfeFR1.FastFile := arqrel;
      end;
    end;
  except
    on E: Exception do
    begin
      msg := E.Message;
    end;
  end;

  if trim(msg) = '' then
    Result := true
  else
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    Result := false;
  end;
end;

procedure TFrmNotaFiscal.ConfigNatureza;
var
  join, alt : string;
begin
  //configura o lookup e o find da natureza
  join := Format('WHERE tpNatureza = %s AND tipo = %s', [QuotedStr('SAIDA'), QuotedStr('DENTRO')]);
  FindNatureza.JoinClause.Clear;
  LookNatureza.AlternateSQL.Clear;

  if trim(lookEstadoCli.Caption) <> '' then
  begin
    if trim(lookEstadoCli.Caption) <> trim(lookEstadoEmp.Caption) then
    begin
      join := Format('WHERE tpNatureza = %s AND tipo = %s', [QuotedStr('SAIDA'), QuotedStr('FORA')]);
      alt := Format('SELECT descNatureza FROM vNatureza WHERE tpNatureza = %s AND tipo = %s AND idNatureza = ?', [QuotedStr('ENTRADA'), QuotedStr('FORA')]);
    end;
  end;
  FindNatureza.JoinClause.Add(join);
end;

constructor TFrmNotaFiscal.create(Formulario: TComponent;
  Parametro: array of String);
begin
  inherited create(formulario);
  Global := false;
  if trim(Parametro[0]) <> '' then
    if trim(Parametro[0]) = 'ARMAZEM' then
    begin
      TabResultado.TabVisible := false;
      TabFinancas.TabVisible := false;
    end;

  if trim(Parametro[0]) <> '' then
    if trim(Parametro[0]) = 'GLOBAL' then
    begin
      tabImpostoOutro.TabVisible := false;
      TabResultado.TabVisible := false;
      TabFinancas.TabVisible := false;
      Global := true;
    end;

  embarque := false;
  if trim(Parametro[0]) <> '' then
    if trim(Parametro[0]) = 'EMBARQUE' then
    begin
      embarque := true;
      idEmpresa := trim(Parametro[1]);
      idCadEmpresa := trim(Parametro[2]);
      idDocSerie := trim(Parametro[3]);
      idNf := trim(Parametro[4]);
    end;
end;

procedure TFrmNotaFiscal.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsTituloRec.FieldByName('incMes').AsString = 'S');
  if (cdsTituloRec.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
  begin
    DBEprMulta.SetFocus;
    GeraParcelas;
  end;

end;

procedure TFrmNotaFiscal.DBCKmovEstoqueExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEidProdDeposito], trim(cdsPadrao.FieldByName('movEstoque').AsString) = 'N');
end;

procedure TFrmNotaFiscal.DBEdiasVencimentoExit(Sender: TObject);
begin
  inherited;
  GeraParcelas;
end;

procedure TFrmNotaFiscal.DBEidClienteExit(Sender: TObject);
begin
  inherited;
  ConfigNatureza;
end;

procedure TFrmNotaFiscal.DBEidClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadCliente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmNotaFiscal.DBEidCnpjCpfExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidCnpjCpf.Text) <> '') and (trim(DBEidCnpjCpf.Text) <> vlAnterior) and (cdsNfTransporte.State in [dsInsert, dsEdit]) then
  begin
    if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
      exit
    else
    begin //se existe verifica se já existe cadastro
      sql := 'SELECT * FROM vCadClienteContabil WHERE dbo.RetMascara(idCnpjCpf) = ' + QuotedStr(funcao.TiraMascara(DBEidCnpjCpf.Text));
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          cdsNfTransporte.FieldByName('descTransportador').AsString := FieldByName('descCadCliente').AsString;
          cdsNfTransporte.FieldByName('idInscEstadual').AsString := FieldByName('idInscEstadual').AsString;
          cdsNfTransporte.FieldByName('descEndereco').AsString := FieldByName('endereco').AsString;
          cdsNfTransporte.FieldByName('idCidade').AsString := FieldByName('idCidade').AsString;
        end;
      end;
    end;

  end;

end;

procedure TFrmNotaFiscal.DBEidDocSerieEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidDocSerie.Text;
end;

procedure TFrmNotaFiscal.DBEidDocSerieExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if vlAnterior <> DBEidDocSerie.Text then
    if cdsPadrao.State = dsInsert then
    begin
      if trim(DBEidNf.Text) = '' then
      begin
        sql := 'SELECT MAX(idNf) idNf FROM Nf WHERE idEmpresa = ' + DBEidEmpresa.Text +
               ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text);
        cdsPadraoidNf.AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idNf').AsInteger + 1;
      end;
    end;
end;

procedure TFrmNotaFiscal.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if trim(cdsEmpresaidEmpresa.AsString) <> '' then
  begin
     cdsResultado.CommandText := 'select * from resultado where idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
     if trim(cdsEmpresaidCadEmpresa.AsString) <> '' then
       usaNfe := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigFiscal').FieldByName('usaNFe').AsString = 'S';
  end;

end;

procedure TFrmNotaFiscal.DBEidImpostoOutroExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidImpostoOutro.Text) <> '') and (trim(DBEidProdutoO.Text) = '') then
  begin
    messagedlg('Você Precisa informar o produto!', mtwarning, [mbok], 0);
    DBEidProdutoO.SetFocus;
    exit;
  end;
  BuscaChaveSec(cdsNfImpostoOutro, [DBEidProdutoO, DBEidImpostoOutro]);
end;

procedure TFrmNotaFiscal.DBEidNaturezaExit(Sender: TObject);
var
  idCfop : integer;
begin
  inherited;
  if (trim(DBEidNatureza.Text) <> vlAnterior) and (cdsPadrao.State = dsInsert) then
  begin
    with frmPrincipal.ExecutaSQLRet([DBEidNatureza], '', 'Natureza') do
    begin
      if trim(FieldByName('descNf').AsString) <> ''  then
        if trim(cdsPadraoobsNf.AsString) <> '' then
          cdsPadraoobsNf.AsString := cdsPadraoobsNf.AsString + '; ' + FieldByName('descNf').AsString
        else
          cdsPadraoobsNf.AsString := FieldByName('descNf').AsString;
      idCfop := FieldByName('idCfop').AsInteger;
    end;
    MudaLabelCfop(idCfop);
  end;
end;

procedure TFrmNotaFiscal.DBEidNfExit(Sender: TObject);
var
  idCliente, idCadCliente : integer;
  sql : string;
  alteraStatus : Boolean;
begin
  inherited;

  idCliente := 0;
  idCadCliente := 0;
  if usaNfe then
  begin
    situacaoA := 'A ENVIAR';
    //trata o F4 e lookup da natureza para sair entrada e saída
    FindNatureza.JoinClause.Clear;
    FindNatureza.JoinClause.Add('WHERE frete = ' + QuotedStr('N'));

    LookNatureza.AlternateSQL.Clear;
    LookNatureza.AlternateSQL.Add('SELECT descNatureza FROM vNatureza WHERE frete = ' + QuotedStr('N') + ' AND idNatureza = ?');

    LookIdCfop.AlternateSQL.Clear;
    LookIdCfop.AlternateSQL.Add('SELECT idCfop FROM vNatureza WHERE idNatureza = ?');

    LookdescCfop.AlternateSQL.Clear;
    LookdescCfop.AlternateSQL.Add('SELECT descCfop FROM vNatureza WHERE idNatureza = ?');
  end
  else
    situacaoA := 'ATIVO';

  //no caso das notas de saida a chave será empresa, docserie, nrNota
  //nas notas de entrada será acrescentado o código do fornecedor
    if trim(cdsPadraoidCliente.AsString) <> '' then
      idCliente := StrToInt(cdsPadraoidCliente.AsString);
    if trim(DBEidCadCliente.Text) <> '' then
      idCadCliente := StrToInt(DBEidCadCliente.Text);
    if not usaNfe then
      BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidNf])
    else
      BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidNf]); //quando usa nfe deve fechar a chave por empresa
    if (cdsPadrao.State in [dsInsert]) and (idCliente > 0) then
    begin
      cdsPadrao.FieldByName('idCliente').AsInteger := idCliente;
      cdsPadrao.FieldByName('idCadCliente').AsInteger := idCadCliente;
    end;
    funcao.SomenteLeitura([DBEidProdDeposito], trim(cdsPadrao.FieldByName('movEstoque').AsString) = 'N');

  if ((trim(cdsPadraoidCliente.AsString) = '') or (trim(DBEidCadCliente.Text) = '')) then
  begin
    messagedlg('O campo ' + LblCad.Caption + ' deve ser informado!', mtwarning, [mbok], 0);
    DBEidCliente.SetFocus;
    exit;
  end;
  AbreTabSecundaria;
  //verifica para deixar disponível para inserção as tabelas financeiras
    cdsMovCaixa.Active := false;
    cdsMovCaixa.CommandText := 'SELECT * FROM MovCaixa WHERE 1=2';
    cdsMovConta.Active := false;
    cdsMovConta.CommandText := 'SELECT * FROM MovConta WHERE 1=2';
    cdsTituloRec.Active := false;
    cdsTituloRec.CommandText := 'SELECT * FROM TituloRec WHERE 1=2';
    cdsTituloRec.Active := true;
    cdsTituloRecParc.Active := false;
    cdsTituloRecParc.CommandText := 'SELECT * FROM TituloRecParc WHERE 1=2';

  if cdsPadrao.State <> dsInsert then
  begin
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidNf], '', 'NfFinanc') do
    begin
      if RecordCount > 0 then
      begin
        if FieldByName('idMovCaixa').Value > 0 then
           Begin
             cdsMovCaixa.Active := False;
             cdsMovCaixa.CommandText := 'SELECT * FROM MovCaixa WHERE idMovCaixa = ' + FieldByName('idMovCaixa').AsString;
           End;
        if FieldByName('idMovConta').Value > 0 then
           Begin
             cdsMovConta.Active := False;
             cdsMovConta.CommandText := 'SELECT * FROM MovConta WHERE idMovConta = ' + FieldByName('idMovConta').AsString;
           End;
        if FieldByName('idTituloRec').Value > 0 then
        begin
          cdsTituloRec.Active := False;
          cdsTituloRec.CommandText := 'SELECT * FROM TituloRec WHERE idTituloRec = ' + FieldByName('idTituloRec').AsString;
          cdsTituloRecMov.Active := False;
          cdsTituloRecMov.CommandText := 'SELECT * FROM TituloRecMov WHERE idTituloRec = ' + FieldByName('idTituloRec').AsString;
          cdsTituloRecMov.Active := True;
          cdsTituloRecParc.Active := False;
          cdsTituloRecParc.CommandText := 'SELECT * FROM TituloRecParc WHERE idTituloRec = ' + FieldByName('idTituloRec').AsString;
        end;
      end;

    end; // fim do with

    //como não está inserindo ou está editando ou consultando apenas... então irá verificar para ver o cfop de devolução
    if trim(LookIdCfop.Caption) <> '' then
      MudaLabelCfop(StrToInt(funcao.TiraMascara(trim(LookIdCfop.Caption))));

  end; // fim do if cdsPadrao.state then

  cdsMovCaixa.Active := true;
  cdsMovConta.Active := true;
  cdsTituloRec.Active := true;
  cdsTituloRecParc.Active := true;
  if not (cdsPadrao.State = dsInsert) then
  begin
    sql := 'SELECT * FROM NfRelac WHERE idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) +
           ' AND idCadGeral = ' + cdsPadraoidCliente.AsString + ' AND idNf = ' + cdsPadraoidNf.AsString +
           ' AND tpNF = ' + QuotedStr('S');
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        bloqueada := True;
        funcao.SomenteLeitura([DBEidCliente, DBEidCadCliente, DBEidDocSerie, DBEidNf,
                              DBEdtEmissao, DBEdtSaida, DBEidNatureza, DBEidProdDeposito,
                              DBEidSafra, DBMobsNf, DBMcompNf, DBEidProdDeposito, DBEidTab], bloqueada);
      end;
    end;
  end;

  //A partir daqui verifica se é nota eletrônica e faz os devidos tratamentos
  HabilitaBotaoNFe(false);
  usaNfe := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigFiscal').FieldByName('usaNFe').AsString = 'S';
  //Critério para habilitação da Nota de complemento
  BtnNfComplemento.Visible := (usaNfe) and ((cdsPadrao.State in [dsEdit, dsInsert]) or (cdsNfComp.RecordCount > 0));

  if (usaNfe) and (cdsPadrao.State in [dsEdit, dsBrowse]) then
  begin
    cdsNFe.Active := false;
    cdsNFe.CommandText := 'SELECT * FROM vNFe WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString + ' AND idCadEmpresa = ' +
                          cdsPadraoidCadEmpresa.AsString + ' AND idNFe = ' + cdsPadraoidNf.AsString + ' AND idDocSerie = ' +
                          QuotedStr(cdsPadraoidDocSerie.AsString);
    cdsNFe.Active := true;

    //verifica se já foi integrado
    if cdsNFe.RecordCount > 0 then
    begin
      cdsNFeCritica.Active := false;
      cdsNFeCritica.CommandText := 'SELECT * FROM vNFeCritica WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString + ' AND idCadEmpresa = ' +
                            cdsPadraoidCadEmpresa.AsString + ' AND idNFe = ' + cdsPadraoidNf.AsString+ ' AND idDocSerie = ' +
                            QuotedStr(cdsPadraoidDocSerie.AsString);
      cdsNFeCritica.Active := true;

      cdsNFeErro.Active := false;
      cdsNFeErro.CommandText := 'SELECT * FROM vNFeErro WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString + ' AND idCadEmpresa = ' +
                                cdsPadraoidCadEmpresa.AsString + ' AND idNFe = ' + cdsPadraoidNf.AsString+ ' AND idDocSerie = ' +
                                QuotedStr(cdsPadraoidDocSerie.AsString);
      cdsNFeErro.Active := true;

      alteraStatus := cdsNFeST_NOTA_NFE.AsString <> cdsPadraostNf.AsString;

      //vê o caso das canceladas
      if (alteraStatus) and (cdsPadraostNf.AsString = 'A CANCELAR') then
        alteraStatus := ((cdsNFeST_NOTA_NFE.AsString = 'CANCELADA') or (cdsNFeST_NOTA_NFE.AsString = 'INUTILIZADA'));

      //vê o caso das inutilizadas
      if (alteraStatus) and (cdsPadraostNf.AsString = 'A INUTILIZAR') then
        alteraStatus := ((cdsNFeST_NOTA_NFE.AsString = 'CANCELADA') or (cdsNFeST_NOTA_NFE.AsString = 'INUTILIZADA'));

      if alteraStatus then
      begin
        cdsPadrao.Edit;
        if trim(cdsNFeA_ID.AsString) <> '' then
          cdsPadraochaveNFe.AsString := cdsNFeA_ID.AsString;
        cdsPadraostNf.AsString := cdsNFeST_NOTA_NFE.AsString;
        cdsPadrao.Post;
        cdsPadrao.ApplyUpdates(0);
        DBEidNfExit(DBEidNf);
      end;

    end;
    HabilitaBotaoNFe(usaNFe);
  end; //fim do   if frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigFiscal').FieldByName('usaNFe').AsString = 'S' then
end;


procedure TFrmNotaFiscal.DBEidNfOriEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidNf.Text;
end;

procedure TFrmNotaFiscal.DBEidNfOriExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (vlAnterior <> DBEidNfOri.Text) and (trim(DBEidNfOri.Text) <> '') then
  begin
    sql := 'SELECT * FROM Nf WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString + ' AND idCadEmpresa = ' +
           cdsEmpresaidCadEmpresa.AsString + ' AND idDocSerie = ' + QuotedStr(cdsNfComp.FieldByName('idDocSerieOri').AsString) +
           ' AND idNf = ' + cdsNfComp.FieldByName('idNfOri').AsString + ' AND idCliente = ' +
           cdsPadraoidCliente.AsString + ' AND idCadCliente = ' + cdsPadraoidCadCliente.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount = 0 then
      begin
        messagedlg('Nota de Origem Inexistente!', mtwarning, [mbok], 0);
        DBEidNfOri.SetFocus;
        exit;
      end
      else
        cdsNfComp.FieldByName('chaveNfe').AsString := FieldByName('chaveNfe').AsString;
    end;
  end;
end;

procedure TFrmNotaFiscal.DBEidProdutoExit(Sender: TObject);
var
  sql, sql2 : string;
begin
  inherited;
  if not BuscaChaveSec(cdsNfProduto, [DBEidProduto]) then
    if cdsNfProduto.State in [dsInsert] then
        with frmPrincipal.ExecutaSQLRet([DBEidProduto, DBEidNatureza, DBEidEmpresa, DBEidCadEmpresa,
                                         DBEidCliente, DBEidCadCliente, DBEidTab], 'spRetProdImposto', '') do
        begin
          cdsNfProduto.FieldByName('prReducao').Value := FieldByName('prReducao').Value;
          cdsNfProduto.FieldByName('prIcms').Value := FieldByName('prIcms').Value;
          cdsNfProduto.FieldByName('prInss').Value := FieldByName('prInss').Value;
          cdsNfProduto.FieldByName('prIss').Value := FieldByName('prIss').Value;
          cdsNfProduto.FieldByName('prIpi').Value := FieldByName('prIpi').Value;
          cdsNfProduto.FieldByName('prPis').Value := FieldByName('prPis').Value;
          cdsNfProduto.FieldByName('prCofins').Value := FieldByName('prCofins').Value;
          cdsNfProduto.FieldByName('idCSTPis').Value := FieldByName('idCSTPis').Value;
          cdsNfProduto.FieldByName('idCSTCofins').Value := FieldByName('idCSTCofins').Value;
          cdsNfProduto.FieldByName('idModBC').Value := FieldByName('idModBC').Value;
          cdsNfProdutoprCredPresumido.Value := FieldByName('prCredPresumido').AsFloat;
          cdsNfProdutoprCredOutorgado.Value := FieldByName('prCredOutorgado').AsFloat;
          if trim(FieldByName('obsNF').AsString) <> ''  then
            if trim(cdsPadraoobsNf.AsString) <> '' then
              cdsPadraoobsNf.AsString := cdsPadraoobsNf.AsString + '; ' + FieldByName('obsNF').AsString
            else
              cdsPadraoobsNf.AsString := FieldByName('obsNF').AsString;

          cdsNfProduto.FieldByName('idStTributaria').Value := FieldByName('idStTributaria').Value;
          sql := 'SELECT * FROM Produto WHERE idProduto = ' + cdsNfProdutoidProduto.AsString;
          cdsNfProdutoNCM.AsString := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('NCM').AsString;
          if FieldByName('vlProduto').AsCurrency > 0 then
            cdsNfProduto.FieldByName('vlBruto').AsCurrency := FieldByName('vlProduto').AsCurrency
          else
            messagedlg('Produto sem tabela de preços/impostos cadastrados!', mtwarning, [mbok], 0);
        end;
end;

procedure TFrmNotaFiscal.DBEidProdutoOExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidProdutoO.Text) <> '' then
    if not BuscaChaveSec(cdsNfProduto, [DBEidProdutoO]) then
    begin
      messagedlg('Produto não lançado para essa nota!', mtwarning, [mbok], 0);
      DBEidProdutoO.SetFocus;
      exit;
    end;
end;

procedure TFrmNotaFiscal.DBEidRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidRateio.Text;
end;

procedure TFrmNotaFiscal.DBEidRateioExit(Sender: TObject);
{begin
  inherited;
  if trim(DBEidRateio.Text) <> '' then
    if (vlAnterior <> DBEidRateio.Text) then
      if not cdsNfRateio.IsEmpty then
        if messagedlg('O Rateio deverá ser recalculado para os novos valores! ' + #13 +
                      ' Deseja recalcular?', mtwarning, [mbyes, mbno], 0) = mryes then
         GeraRateio;}
var
  calc : boolean;
begin
  calc := false;
  inherited;
  HabilitaRatRes;
  if ((Sender as TCDBEdit).Name = 'DBEidRateio') and (not BtnFechar.Focused) and
     (not BtnNovo.Focused) and (not BtnPesquisar.Focused) and (not BtnCancelar.Focused) then
    if not DBEidResultado.ReadOnly then
      DBEidResultado.SetFocus;

  if ((Sender as TCDBEdit).Name = 'DBEidResultado') then
    if trim(DBEidResultado.Text) <> '' then
      if (vlAnterior <> DBEidResultado.Text) then
        calc := true;

  if ((Sender as TCDBEdit).Name = 'DBEidRateio') then
    if trim(DBEidRateio.Text) <> '' then
      if (vlAnterior <> DBEidRateio.Text) then
        calc := true;

  if calc then
    if not cdsNfRateio.IsEmpty then
      if messagedlg('O Rateio deverá ser recalculado para os novos valores! ' + #13 +
                    ' Deseja recalcular?', mtwarning, [mbyes, mbno], 0) = mryes then
        actGerarRateio.Execute;
end;

procedure TFrmNotaFiscal.DBEidResultadoRTExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsNfRateio, [DBEidGerencial,DBEidResultadoRT]);
end;

procedure TFrmNotaFiscal.DBEobsTituloRecExit(Sender: TObject);
begin
  inherited;
  PagTituloRec.ActivePageIndex := 1;
  PagTituloRec.Align := alclient;
  BtnSalvar.SetFocus;  
end;

procedure TFrmNotaFiscal.DBEprRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNotaFiscal.DBEprRateioExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCDBEdit).Text then
  begin
    //Campos do rateio no valor da nota
    if (Sender as TCDBEdit).Name = 'DBEprRateio' then
      cdsNfRateio.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsNfValor.FieldByName('vlNotaFiscal').Value *
                               cdsNfRateio.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateio' then
      cdsNfRateio.FieldByName('prRateio').Value :=
         RoundTo(((cdsNfRateio.FieldByName('vlRateio').Value /
                   cdsNfValor.FieldByName('vlNotaFiscal').Value) * 100), -3);
  end;
end;

procedure TFrmNotaFiscal.DBEPR_COFINSEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim(cdsNfProdutoidProduto.AsString);
end;

procedure TFrmNotaFiscal.DBEPR_COFINSExit(Sender: TObject);
begin
  inherited;
  calculaprodutos(Sender);
end;

procedure TFrmNotaFiscal.DBEPR_PISEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim(cdsNfProdutoidProduto.AsString);
end;

procedure TFrmNotaFiscal.DBEPR_PISExit(Sender: TObject);
begin
  inherited;
  calculaprodutos(Sender);
end;

procedure TFrmNotaFiscal.DBEqtProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNotaFiscal.DBEqtProdutoExit(Sender: TObject);
begin
  inherited;
  vlAtual := (Sender as TCDBEdit).Text;
    calculaprodutos(Sender);
end;

procedure TFrmNotaFiscal.DBEvlBaseIcmsEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNotaFiscal.DBEvlBaseIcmsExit(Sender: TObject);
begin
  inherited;
{ Tratamento que jogaria o valor pra outras automatico, ao prencher alguma base de calculo
  if cdsNfProdutovlBaseIcms.AsCurrency > 0 then
    cdsNfProdutovlOutrasIcms.AsCurrency := (cdsNfProdutovlTotal.AsCurrency - cdsNfProdutovlBaseIcms.AsCurrency);

  if cdsNfProdutovlBaseIss.AsCurrency > 0 then
    cdsNfProdutovlOutrasIcms.AsCurrency := (cdsNfProdutovlTotal.AsCurrency - cdsNfProdutovlBaseIss.AsCurrency);}

end;

procedure TFrmNotaFiscal.DBEvlDespesasExit(Sender: TObject);
var
  vlProdServ : currency;
begin
  inherited;
  with cdsNfValor do
  begin
    vlProdServ := FieldByName('vlProdutos').Value + FieldByName('vlServicos').Value;
    if trim((Sender as TCDBEdit).Text) <> vlAnterior then
    begin
      if (Sender as TCDBEdit).Name = 'DBEprDescontoN' then
        FieldByName('vlDesconto').AsCurrency := vlProdServ * FieldByName('prDesconto').Value / 100;
      if (Sender as TCDBEdit).Name = 'DBEvlDescontoN' then
        FieldByName('prDesconto').AsCurrency := FieldByName('vlDesconto').Value / vlProdServ * 100;
      FieldByName('vlNotaFiscal').Value := (FieldByName('vlProdutos').Value + FieldByName('vlServicos').Value +
           FieldByName('vlServicos').Value + FieldByName('vlDespesas').Value + FieldByName('vlFrete').Value +
           FieldByName('vlSeguro').Value) - FieldByName('vlDesconto').Value;
    end;

  end;
end;

procedure TFrmNotaFiscal.DBEVL_COFINSEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim(cdsNfProdutoidProduto.AsString);
end;

procedure TFrmNotaFiscal.DBEVL_COFINSExit(Sender: TObject);
begin
  inherited;
  calculaprodutos(Sender);
end;

procedure TFrmNotaFiscal.DBEVL_PISEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim(cdsNfProdutoidProduto.AsString);
end;

procedure TFrmNotaFiscal.DBEVL_PISExit(Sender: TObject);
begin
  inherited;
  calculaprodutos(Sender);
end;

procedure TFrmNotaFiscal.DBMcompNfExit(Sender: TObject);
begin
  inherited;
//  PagAbas.ActivePageIndex := 1;
//  DBEidProduto.SetFocus;
end;

procedure TFrmNotaFiscal.dsNfImpostoOutroStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarOutro, BtnCancelarOutro, BtnExcluirOutro, BtnNovoOutro);
end;

procedure TFrmNotaFiscal.dsNfProdutoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd);
end;

procedure TFrmNotaFiscal.dsNfRateioStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;

procedure TFrmNotaFiscal.dsPadraoStateChange(Sender: TObject);
var
  sql : string;
begin
  inherited;
  actExcluir2.Enabled := not (cdsPadrao.State in [dsEdit, dsInsert]);

  sql :=' SELECT Imprime, idDocSerie FROM DocSerie WHERE idDocSerie = ' + quotedstr(cdsPadrao.FieldByName('idDocSerie').AsString);
  actImprimir.Visible := (FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('Imprime').AsString = 'S') and (cdsPadrao.State = dsBrowse);
end;

procedure TFrmNotaFiscal.dspMovCaixaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspMovCaixa' then
    begin
      GeraAutoInc(DeltaDS, 'MovCaixa', 'idMovCaixa', []);
      DeltaDS.FieldByName('dtMovCaixa').NewValue := cdsPadrao.FieldByName('dtEmissao').Value;
      DeltaDS.FieldByName('idMovFinanceira').NewValue := 8; //Valor recebido pelo caixa
      DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
    end
    else
      if (Sender as TDataSetProvider).Name = 'dspMovConta' then
      begin
        GeraAutoInc(DeltaDS, 'MovConta', 'idMovConta', []);
        DeltaDS.FieldByName('dtMovConta').NewValue := cdsPadrao.FieldByName('dtEmissao').Value;
        DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
        DeltaDS.FieldByName('idMovFinanceira').NewValue := 9; //Valor recebido pelo banco
      end
      else
        if (Sender as TDataSetProvider).Name = 'dspTituloRec' then
        begin
          GeraAutoInc(DeltaDS, 'TituloRec', 'idTituloRec', []);
          DeltaDS.FieldByName('idEmpresa').NewValue := cdsEmpresa.FieldByName('idEmpresa').Value;
          DeltaDS.FieldByName('idCadEmpresa').NewValue := cdsEmpresa.FieldByName('idCadEmpresa').Value;          
          DeltaDS.FieldByName('idCliente').NewValue := cdsPadrao.FieldByName('idCliente').Value;
          DeltaDS.FieldByName('dtEmissao').NewValue := cdsPadrao.FieldByName('dtEmissao').Value;
          DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 1; //Inclusão de titulo a receber
          DeltaDS.FieldByName('stTituloRec').NewValue := 'ATIVO'; //Status do titulo                    
        end;
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmNotaFiscal.dspNfProdutoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
//  DeltaDS.FieldByName('idCliente').NewValue := cdsPadrao.FieldByName('idCliente').Value;
//  DeltaDS.FieldByName('idCadCliente').NewValue := cdsPadrao.FieldByName('idCadCliente').Value;  
end;

procedure TFrmNotaFiscal.dsTituloRecParcStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc)
end;

procedure TFrmNotaFiscal.ExcluiRomaneio;
var
  sql : string;
  idOrdemFrete : integer;
begin
  sql := 'SELECT * FROM RomaneioEmbarqueNf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
         ' AND idDocSerie = ' + funcao.RetornaValorEField(DBEidDocSerie, 3) +
         ' AND idNf = ' + funcao.RetornaValorEField(DBEidNf, 3);

  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then  //se existir exclui o romaneio
    begin
      //Agora exclui a relação entre eles
      sql := 'DELETE FROM EmbarqueNf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ' AND idDocSerie = ' + funcao.RetornaValorEField(DBEidDocSerie, 3) +
             ' AND idNf = ' + funcao.RetornaValorEField(DBEidNf, 3);
      dmPadrao.dbConexao.ExecuteDirect(sql);

      //Agora exclui a relação entre eles
      sql := 'DELETE FROM RomaneioEmbarqueNf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ' AND idDocSerie = ' + funcao.RetornaValorEField(DBEidDocSerie, 3) +
             ' AND idNf = ' + funcao.RetornaValorEField(DBEidNf, 3);
      dmPadrao.dbConexao.ExecuteDirect(sql);

      sql := 'DELETE FROM RomaneioContratoCompra WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ' AND idRomaneio = ' + FieldByName('idRomaneio').AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);

      sql := 'DELETE FROM RomaneioClassificacao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ' AND idRomaneio = ' + FieldByName('idRomaneio').AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);

      sql := 'DELETE FROM Romaneio WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ' AND idRomaneio = ' + FieldByName('idRomaneio').AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);

      //Agora exclui o frete
      sql := 'SELECT * FROM OrdemFreteNf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                         ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                                         ' AND idDocSerie = ' + funcao.RetornaValorEField(DBEidDocSerie, 3) +
                                         ' AND idNf = ' + funcao.RetornaValorEField(DBEidNf, 3);
      idOrdemFrete := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idOrdemFrete').AsInteger;

      if idOrdemFrete > 0 then
      begin
        sql := 'DELETE FROM OrdemFreteNf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                         ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                                         ' AND idOrdemFrete = ' + IntToStr(idOrdemFrete);
        dmPadrao.dbConexao.ExecuteDirect(sql);

        sql := 'DELETE FROM OrdemFrete WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                       ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                                       ' AND idOrdemFrete = ' + IntToStr(idOrdemFrete);
        dmPadrao.dbConexao.ExecuteDirect(sql);

      end;

    end;
  end;
end;

procedure TFrmNotaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmNotaFiscal := nil;
end;

procedure TFrmNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 7);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsNfProduto;
  Tabelas[2] := cdsNfImpostoOutro;
  Tabelas[3] := cdsNfValor;
  Tabelas[4] := cdsNfTransporte;
  Tabelas[5] := cdsNfRateio;
  Tabelas[6] := cdsNfComp;


  SetLength(chave, 4);

  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidDocSerie;
  chave[3] := DBEidNf;
//  chave[3] := DBEidCliente;
//  chave[4] := DBEidCadCliente;

  foco := DBEidCliente;
  tab_chave := 'Nf';
  situacao := 'stNf';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmNotaFiscal.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actLanNf';
  inherited;
  cdsGerencial.CreateDataSet;
  DBEidEmpresaExit(DBEidEmpresa);

  Width := 780;
  Height := 649;
  foco.TabStop := true;

  //se veio da geração do embarque abre a Nf
  if embarque then
  begin
    if not (cdsEmpresa.State in [dsInsert, dsEdit]) then
      cdsEmpresa.Edit;
    if cdsEmpresaidEmpresa.AsString <> idEmpresa then
      cdsEmpresaidEmpresa.AsString := idEmpresa;

    if cdsEmpresaidCadEmpresa.AsString <> idCadEmpresa then
      cdsEmpresaidCadEmpresa.AsString := idCadEmpresa;

    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Append;
    cdsPadraoidEmpresa.AsString := idEmpresa;
    cdsPadraoidCadEmpresa.AsString := idCadEmpresa;
    cdsPadraoidDocSerie.AsString := idDocSerie;
    cdsPadraoidNf.AsString := idNf;
    DBEidNf.SetFocus;
    DBEidNfExit(DBEidNf);
  end;
  HabilitaBotaoNFe(false);

  usaNfe := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigFiscal').FieldByName('usaNFe').AsString = 'S';

  BtnExcluir2.Visible := excluir;

  if usaNfe then
    actExcluir.Visible := true; //a regra tem que ser diferente nesse caso

  cdsInutilizar.CreateDataSet;
  BtnInutilizar.Visible := (usaNfe) and (trim(DBEidNf.Text) = '');
end;

procedure TFrmNotaFiscal.GeraParcelas;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  if not cdsTituloRecParc.IsEmpty then
    if messagedlg('Deseja recalcular as parcelas?', mtconfirmation, [mbyes, mbno], 0) = mrno then
      exit;

  if not funcao.VerCampoRequerido([cdsTituloRec], 'idEmpresa,idCliente,idSafra,dtEmissao,idMovFinanceira,idTituloRec,nrTituloRec,diasVencimento,prMulta,prJuros,prDesconto,stTituloRec') then
  begin
    PagTituloRec.ActivePageIndex := 0;
    exit;
  end;

  with cdsTituloRec do
  begin
    //preenche os campos que não podem ser nulos
    if trim(FieldByName('diasVencimento').AsString) = '' then
      FieldByName('diasVencimento').Value := 0;
    if trim(FieldByName('prMulta').AsString) = '' then
      FieldByName('prMulta').Value := 0;
    if trim(FieldByName('prJuros').AsString) = '' then
      FieldByName('prJuros').Value := 0;
    if trim(FieldByName('prDesconto').AsString) = '' then
      FieldByName('prDesconto').Value := 0;

    if (not (FieldByName('vlTituloRec').Value > 0)) or
       (not (FieldByName('qtParcelas').Value > 0)) or
       ((not(FieldByName('diasVencimento').Value > 0)) and (FieldByName('incMes').AsString = 'N') and
       (FieldByName('qtParcelas').Value > 1)) or
       (not (trim(FieldByName('dtVencimentoIni').AsString) <> '')) then
    begin
      messagedlg('Para gerar as parcelas são necessários os campos: ' + #13 +
                 'Valor do Titulo; Parcelas; Primeiro Vencimento; Dias entre Parcelas', mterror, [mbok], 0);
      PagTituloRec.ActivePageIndex := 0;
      exit;
    end;
    if (FieldByName('dtVencimentoIni').Value < FieldByName('dtEmissao').Value) then
    begin
      messagedlg('O primeiro vencimento da parcela não pode ser menor que a data de emissão do título!',
                 mterror, [mbok], 0);
      PagTituloRec.ActivePageIndex := 0;
      DBEdtVencimentoIni.SetFocus;
      exit;
    end;

      //limpa a tabela se houverem registros nela
    if not cdsTituloRecParc.IsEmpty then
       begin
         //
         with cdsTituloRecMov do
           begin
             First;
             while not Eof do
               begin
                 delete;
                 first;
               end;
           end;
         //
         with cdsTituloRecParc do
           begin
             First;
             while not Eof do
               begin
                 delete;
                 first;
               end;
           end;
         //
       end;

    //GERAÇÃO DAS PARCELAS
    vlParcela := funcao.ArredondaMoeda(FieldByName('vlTituloRec').Value/FieldByName('qtParcelas').AsInteger);
    vlPrimeira := FieldByName('vlTituloRec').Value-(vlParcela*(FieldByName('qtParcelas').AsInteger-1));
    dtParcela := FieldByName('dtVencimentoIni').AsDateTime;
    for i := 1 to FieldByName('qtParcelas').AsInteger do
    begin
      cdsTituloRecParc.Append;
      if trim(FieldByName('idTituloRec').AsString) = '' then
        cdsTituloRecParc.FieldByName('idTituloRec').Value := 0
      else
        cdsTituloRecParc.FieldByName('idTituloRec').Value := FieldByName('idTituloRec').Value;
      cdsTituloRecParc.FieldByName('idParcela').Value := i;
      cdsTituloRecParc.FieldByName('dtVencimento').Value := dtParcela;
      cdsTituloRecParc.FieldByName('stTituloRecParc').AsString := 'ATIVO';
      if i = 1 then
        cdsTituloRecParc.FieldByName('vlParcela').Value := vlPrimeira
      else
        cdsTituloRecParc.FieldByName('vlParcela').Value := vlParcela;
      cdsTituloRecParc.Post;
      if FieldByName('incMes').AsString = 'S' then
        dtParcela := IncMonth(FieldByName('dtVencimentoIni').AsDateTime, i)
      else
        dtParcela := dtParcela + FieldByName('diasVencimento').Value;
    end; //fim do for i := 1 to FieldByName('qtParcelas').AsInteger do
  end; //fim do with cdsTituloRec do
  //
  SomaParcelas;
  //
  TabTituloRec.Enabled := (cdsTituloRec.RecordCount = 0) Or (cdsTituloRec.FieldByName('stTituloRec').asString = 'ATIVO');
  //
end;

procedure TFrmNotaFiscal.GeraRateio;
var
  vlMaior, vlDiferenca, vlTotal, vlSoma, vlGerencial : currency;
  idMaior, idGerencial : integer;
  sql : string;
begin
  idGerencial := 0;
  {$REGION 'Agrupa os gerenciais dos produtos na tabela cdsGerencial'}
  cdsGerencial.Active := false;
  cdsGerencial.Active := true;
  if not cdsGerencial.IsEmpty then
    while not cdsGerencial.Eof do
    begin
      cdsGerencial.Delete;
      cdsGerencial.First;
    end;
  cdsGerencial.IndexFieldNames := 'idGerencial';
  cdsNfProduto.First;
  vlMaior := 0;
  idMaior := 0;
  vlSoma := 0;
  while not cdsNfProduto.Eof do
  begin
    sql := 'SELECT idGerencial FROM ProdGerencial WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
           ' AND idProduto = ' + cdsNfProduto.FieldByName('idProduto').AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (FieldByName('idGerencial').Value > 0) then
      begin
        messagedlg('Produto sem Centro Gerencial cadastrado! Rateio não pode ser gerado!', mtwarning, [mbok], 0);
        exit;
      end // fim do if not (FieldByName('idGerencial').Value > 0) then
      else
        begin //inicia o lançamento no cdsGerencial
          vlGerencial := cdsNfProduto.FieldByName('vlLiquido').Value;
          vlGerencial := vlGerencial - (vlGerencial * (cdsNfValor.FieldByName('prDesconto').Value / 100));
          vlGerencial := RoundTo(vlGerencial, FormatSettings.CurrencyDecimals*-1);
          vlSoma := vlSoma + vlGerencial;
          if vlGerencial > vlMaior then
          begin
            vlMaior := vlGerencial;
            idMaior := idGerencial;
          end;
          //tirando o desconto total da nota
          if cdsGerencial.FindKey([FieldByName('idGerencial').Value]) then
          begin
            cdsGerencial.Edit;
            cdsGerencial.FieldByName('vlGerencial').Value := cdsGerencial.FieldByName('vlGerencial').Value + vlGerencial;
            cdsGerencial.Post;
          end
          else
          begin
            cdsGerencial.Append;
            cdsGerencial.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;            
            cdsGerencial.FieldByName('vlGerencial').Value := vlGerencial;
            cdsGerencial.Post;
          end; //fim do else da inserção no cdsGerencial
        end; //fim do else que verifica se o gerencial existe
    end; //fim do with frmPrincipal.ExecutaSQLRet([], '', sql) do

    cdsNfProduto.Next;
  end;
  //verifica se a soma está batendo com o valor da nota
  if vlSoma <> cdsNfValor.FieldByName('vlNotaFiscal').Value then
  begin
    vlDiferenca := cdsNfValor.FieldByName('vlNotaFiscal').Value - vlSoma;
    cdsGerencial.FindKey([idMaior]);
    cdsGerencial.Edit;
    cdsGerencial.FieldByName('vlGerencial').Value := cdsGerencial.FieldByName('vlGerencial').Value + vlDiferenca;
    cdsGerencial.Post;
  end;
  
  {$ENDREGION}
  if not cdsNfRateio.IsEmpty then
    cdsNfRateio.EmptyDataSet;
  //inicia o laço dos gerenciais para gerar os rateios, passa o id Gerencial e o Valor
  cdsGerencial.First;
  while not cdsGerencial.Eof do
  begin
    idGerencial := cdsGerencial.FieldByName('idGerencial').Value;
    vlTotal := cdsGerencial.FieldByName('vlGerencial').Value;
  {$REGION 'Geração por Rateio'}
  if trim(DBEidRateio.text) <> '' then
  begin
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
    begin
      First;
      vlMaior := 0;
      idMaior := 0;
      while not Eof do
      begin
        cdsNfRateio.Append;
        cdsNfRateio.FieldByName('idEmpresa').AsString := cdsEmpresaidEmpresa.AsString;
        cdsNfRateio.FieldByName('idCadEmpresa').AsString := cdsEmpresaidCadEmpresa.AsString;
        cdsNfRateio.FieldByName('idDocSerie').AsString := DBEidDocSerie.Text;
        cdsNfRateio.FieldByName('idNf').AsString := '0';
//        cdsNfRateio.FieldByName('idCliente').AsString := cdsPadraoidCliente.AsString;
//        cdsNfRateio.FieldByName('idCadCliente').AsString := DBEidCadCliente.Text;
        cdsNfRateio.FieldByName('idGerencial').Value := idGerencial;
        cdsNfRateio.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
        cdsNfRateio.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
        cdsNfRateio.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((vlTotal *
                                                        FieldByName('prRateio').Value)/100);
        //para registrar quem tem o maior valor
        if vlMaior < cdsNfRateio.FieldByName('vlRateio').Value then
        begin
           idMaior := cdsNfRateio.FieldByName('idResultado').Value;
           vlMaior := cdsNfRateio.FieldByName('vlRateio').Value;
        end;
        cdsNfRateio.Post;
        Next;
      end; //fim do laço do rateio
    end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
    cdsNfRateio.Filtered := false;
    cdsNfRateio.Filter := 'idGerencial = ' + inttoStr(idGerencial);
    cdsNfRateio.Filtered := true;
    SomaRateio;
    //inicia processo para ajuste de valor caso haja diferença joga para o maior
    with cdsNfRateio do
    begin
      if (vlTotalRateio <>  vlTotal) then
      begin
        vlDiferenca := vlTotal - vlTotalRateio;
        IndexFieldNames := 'idResultado';
        FindKey([idMaior]);
        Edit;
        FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
        Post;
        IndexFieldNames := '';
      end;
    end; //fim do With cdsNfRateio
    cdsNfRateio.Filtered := false;
    SomaRateio;
  end; //fim do DBEidRateio.text <> ''
  {$ENDREGION}

  {$REGION 'Geração por Resultado'}
  if trim(DBEidResultado.text) <> '' then
  begin
    cdsNfRateio.Append;
    cdsNfRateio.FieldByName('idEmpresa').AsString := cdsEmpresaidEmpresa.AsString;
    cdsNfRateio.FieldByName('idCadEmpresa').AsString := cdsEmpresaidCadEmpresa.AsString;
    cdsNfRateio.FieldByName('idDocSerie').AsString := DBEidDocSerie.Text;
    cdsNfRateio.FieldByName('idNf').AsString := '0';
//    cdsNfRateio.FieldByName('idCliente').AsString := cdsPadraoidCliente.AsString;
//    cdsNfRateio.FieldByName('idCadCliente').AsString := DBEidCadCliente.Text;
    cdsNfRateio.FieldByName('idGerencial').Value := idGerencial;
    cdsNfRateio.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
    cdsNfRateio.FieldByName('prRateio').Value := 100;
    cdsNfRateio.FieldByName('vlRateio').Value := vlTotal;
    cdsNfRateio.Post;
    SomaRateio;
  end; //if trim(DBEidResultado.text) <> '' then
  {$ENDREGION}
    cdsGerencial.Next;
  end;
  cdsGerencial.IndexFieldNames := '';
end;

procedure TFrmNotaFiscal.HabilitaBotaoNFe(usaNFe: boolean);
var
  leitura : boolean;
  i : integer;
begin
  //primeiro habilita de acordo com o parãmetro para facilitar o uso da proc
  BtnEnviar.Enabled := usaNFe;
  BtnEmail.Enabled := usaNFe;
  BtnCartaCorrecao.Enabled := usaNFe;
  DBRGtpEmissao.Enabled := usaNFe;
  TabNFe.TabVisible := usaNFe;
  BtnImprimir.Visible := usaNFe;

  if usaNFe then
  begin
    BtnExcluir2.Visible := ((cdsPadraostNf.AsString = 'CRITICA') or
                           (cdsPadraostNf.AsString = 'A INUTILIZAR') or
                           (cdsPadraostNf.AsString = 'CRITICA INTEGRAÇÃO') or
                           (cdsPadraostNf.AsString = 'A ENVIAR')) and  (cdsPadrao.RecordCount > 0) and (cdsPadrao.State = dsBrowse) and excluir;

    BtnEnviar.Enabled := ((cdsPadraostNf.AsString = 'CRITICA') or
                     (cdsPadraostNf.AsString = 'CONTINGENCIA FS') or
                     (cdsPadraostNf.AsString = 'CONTINGENCIA FSDA') or
                     (cdsPadraostNf.AsString = 'A CANCELAR') or
                     (cdsPadraostNf.AsString = 'A INUTILIZAR') or
                     (cdsPadraostNf.AsString = 'CRITICA INTEGRAÇÃO') or
                     (cdsPadraostNf.AsString = 'A ENVIAR')) and  (cdsPadrao.RecordCount > 0) and (cdsPadrao.State = dsBrowse);;
    BtnImprimir.Enabled := ((cdsPadraostNf.AsString = 'AUTORIZADA') or
                           (cdsPadraostNf.AsString = 'CONTINGENCIA FS') or
                           (cdsPadraostNf.AsString = 'CONTINGENCIA FSDA'))  and  (cdsPadrao.RecordCount > 0);
    BtnEmail.Enabled := BtnImprimir.Enabled;

    for i := 0 to ComponentCount -1 do
    begin
      leitura := false;
      if (Components[i] is TCDBEdit) or (Components[i] is TCDBMemo) or (Components[i] is TCDBRadioGroup) or (Components[i] is TCDBCheckBox) then
      begin
        if ((Components[i] as TComponent).Tag <> 1) and (Components[i] <> DBEidEmpresa) and (Components[i] <> DBEidCadEmpresa) and
            (Components[i] <> DBEidDocSerie) and (Components[i] <> DBEidNf) and (Components[i] <> DBEstNf) and (Components[i] <> DBEprCredPresumido)
            and (Components[i] <> DBEvlCredPresumido) and (Components[i] <> DBEprCredOutorgado) and (Components[i] <> DBEvlCredOutorgado) then
          leitura := true;
        if leitura then
          funcao.SomenteLeitura([Components[i]], (cdsPadraostNf.AsString = 'AUTORIZADA') or
                             (cdsPadraostNf.AsString = 'CANCELADA') or
                             (cdsPadraostNf.AsString = 'INUTILIZADA'));
      end;
    end;
    BtnExcluir.Visible := (cdsPadraostNf.AsString = 'AUTORIZADA') or (cdsPadraostNf.AsString = 'A ENVIAR');
    BtnCartaCorrecao.Enabled := (cdsPadraostNf.AsString = 'AUTORIZADA');
    BtnSalvar.Visible :=  (cdsPadraostNf.AsString <> 'AUTORIZADA') and
                          (cdsPadraostNf.AsString <> 'CANCELADA');

  end;
end;

procedure TFrmNotaFiscal.HabilitaRatRes;
begin
  funcao.SomenteLeitura([DBEidResultado, DBEidRateio], false);
  if trim(DBEidResultado.Text) <> '' then
  begin
    funcao.SomenteLeitura([DBEidRateio], true);
    funcao.SomenteLeitura([DBEidResultado], false);
  end
  else
    if trim(DBEidRateio.Text) <> '' then
    begin
      funcao.SomenteLeitura([DBEidRateio], false);
      funcao.SomenteLeitura([DBEidResultado], true);
    end;
end;

procedure TFrmNotaFiscal.MudaLabelCfop(idCfop: integer);
begin
  with FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CfopDevolucao WHERE idCfop = ' + IntToStr(idCfop)) do
  begin
    if RecordCount > 0 then
      BtnNfComplemento.Caption := 'Nf Devolvida'
    else
      BtnNfComplemento.Caption := 'Nota Complementar';
  end;
end;

procedure TFrmNotaFiscal.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex <> 0 then
  begin
    if Bloqueada then
    begin
      MessageDlg('Nota ja transmitida infelizmente não podera mais ser alterada!', mtWarning, [mbOK], 0);
      PagAbas.ActivePageIndex := 0;
      Exit;
    end;
  end;
  // tratamentos
  if (PagAbas.ActivePageIndex = 3) and (cdsNfProduto.IsEmpty) then //impostos e transporte
  begin
    messagedlg('Os produtos devem ser lançados primeiramente!', mtwarning, [mbok], 0);
    PagAbas.ActivePageIndex := 1;
    exit;
  end;

  if (PagAbas.ActivePageIndex = 1) then
  begin
    SomaProdutos;
    DBEidProduto.SetFocus;
  end;

  if (PagAbas.ActivePageIndex = 4) and ((not (cdsNfValor.FieldByName('vlNotaFiscal').AsCurrency > 0))) then
  begin
    messagedlg('Para fazer o rateio é necessário que a nota tenha valor lançado!' , mtwarning, [mbok], 0);
    PagAbas.ActivePageIndex := 1;
    exit;
  end;
  if PagAbas.ActivePageIndex = 5 then
  begin
    PagTituloRec.ActivePageIndex := 0;
    PagTituloRecChange(PagTituloRec);
  end;
  if (PagAbas.ActivePageIndex = 5) and (cdsNfRateio.IsEmpty) then //titulo,
  begin
    messagedlg('Para lançamentos financeiros é preciso lançar o resultado primeiramente!', mtwarning, [mbok], 0);
    PagAbas.ActivePageIndex := 4;
    exit;
  end;   
end;

procedure TFrmNotaFiscal.PagTituloRecChange(Sender: TObject);
begin
  inherited;
  if (Sender as TCPageControl).ActivePageIndex = 0 then
    (Sender as TCPageControl).Align := alnone
  else
    (Sender as TCPageControl).Align := alclient;
  grpCaixa.Visible := (Sender as TCPageControl).Align = alnone;
  grpBanco.Visible := (Sender as TCPageControl).Align = alnone;
end;

procedure TFrmNotaFiscal.SomaParcelas;
begin
  vlTotalParcelas := 0;
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsTituloRec.FieldByName('vlTituloRec').AsCurrency-vlTotalParcelas), 6, '');
  With cdsTituloRecParc do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlTotalParcelas := vlTotalParcelas + FieldByName('vlParcela').AsCurrency;
      Next;
    end;
    First;
  end;
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsTituloRec.FieldByName('vlTituloRec').AsCurrency-vlTotalParcelas), 6, '');
end;

procedure TFrmNotaFiscal.SomaProdutos;
begin
  EDvlTotal.Value := 0;
  EDvlTotal.Decimals := FormatSettings.CurrencyDecimals;
  With cdsNfProduto do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      EdvlTotal.Value := EdvlTotal.Value + FieldByName('vlLiquido').AsCurrency;
      Next;
    end;
  end;
end;

procedure TFrmNotaFiscal.SomaRateio;
begin
  vlTotalRateio := 0;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfValor.FieldByName('vlNotaFiscal').AsCurrency-vlTotalRateio), 6, '');
  With cdsNfRateio do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlTotalRateio := vlTotalRateio + FieldByName('vlRateio').AsCurrency;
      Next;
    end;
    First;
  end;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfValor.FieldByName('vlNotaFiscal').AsCurrency-vlTotalRateio), 6, '');
end;

function TFrmNotaFiscal.VerNFETemp: boolean;
var
  sql : string;
  parar, erro : boolean;
  tentativa, timeout : integer;
begin
  Application.ProcessMessages;
  frmPrincipal.AbreStatus('Enviando NF-e para SEFAZ! Aguarde...');

  if trim(funcao.ConfigIni('LOCAL', 'TempoResposta', '', 1)) <> '' then
    timeout := StrToInt(funcao.ConfigIni('LOCAL', 'TempoResposta', '', 1))
  else
    timeout := 2000;

  Application.ProcessMessages;

  sql := 'SELECT * FROM NOTA_TEMP WHERE CNPJ_EMISSOR = ' + funcao.TiraMascara(QuotedStr(trim(lookidCnpjCpf.Caption))) +
         ' AND SERIE = ' + trim(lookserieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' + cdsPadraoidNf.AsString;

  parar := false;
  erro := false;
  tentativa := 0;

  while not parar do
  begin
    sleep(timeout);
    Application.ProcessMessages;
    dmPadrao.cdsTmpNFe.Active := false;
    if dmPadrao.cdsTmpNFe.CommandText = sql then
      dmPadrao.cdsTmpNFe.CommandText := sql + ' AND 1=1'
    else
      dmPadrao.cdsTmpNFe.CommandText := sql;
    dmPadrao.cdsTmpNFe.Active := true;

    parar := dmPadrao.cdsTmpNFe.RecordCount = 0;
    tentativa := tentativa + 1;
    if tentativa > 10 then
    begin
      parar := true;
      erro := true;
    end;
  end;
  frmPrincipal.FechaStatus;
  Result := not erro;
  Application.ProcessMessages;

end;

end.

