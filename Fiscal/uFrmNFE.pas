unit uFrmNFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, Math, CRadioButton, System.Actions, pcnConversao, System.ImageList;

type
  TFrmNfE = class(TFrmCadPadraoEmpFiscal)
    CPanelGradient1: TCPanelGradient;
    TabProdutos: TTabSheet;
    CGroupBox12: TCGroupBox;
    BtnSalvarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnExcluirProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    TabImpostos: TTabSheet;
    FindSerie: TCFind;
    FindNatureza: TCFind;
    FindProdDeposito: TCFind;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    FindProduto: TCFind;
    FindTab: TCFind;
    TabFinancas: TTabSheet;
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
    FindMovFinanceira: TCFind;
    sdsMovConta: TSQLDataSet;
    dspMovConta: TDataSetProvider;
    cdsMovConta: TClientDataSet;
    dsMovConta: TDataSource;
    FindGerencial: TCFind;
    PagTituloPag: TCPageControl;
    TabTituloPag: TTabSheet;
    TabParcelas: TTabSheet;
    CGroupBox21: TCGroupBox;
    CLabel133: TCLabel;
    CLabel134: TCLabel;
    CLabel135: TCLabel;
    CLabel136: TCLabel;
    DBEidParcela: TCDBEdit;
    DBEvlParcela: TCDBEdit;
    DBEdtVencimentoP: TCDBEdit;
    DBEstTituloPagParc: TCDBEdit;
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
    DBEdescMovCaixa: TCDBEdit;
    CLabel79: TCLabel;
    CLabel81: TCLabel;
    DBEdescMovConta: TCDBEdit;
    CGroupBox10: TCGroupBox;
    CLabel155: TCLabel;
    DBEprRateio: TCDBEdit;
    CLabel156: TCLabel;
    DBEvlRateio: TCDBEdit;
    CLabel153: TCLabel;
    DBEidResultadoRT: TCDBEdit;
    actGerarRateio: TAction;
    cdsGerencial: TClientDataSet;
    cdsGerencialidGerencial: TIntegerField;
    cdsGerencialvlGerencial: TCurrencyField;
    FindCaixa: TCFind;
    FindConta: TCFind;
    DBEidMovCaixa: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    DBEidTituloPag: TCDBEdit;
    FindResultado: TCFind;
    cdsResultado: TClientDataSet;
    cdsNfEProduto: TClientDataSet;
    FindSafra: TCFind;
    FindSerieTit: TCFind;
    sdsNfEValor: TSQLDataSet;
    dspNfEValor: TDataSetProvider;
    cdsNfEValor: TClientDataSet;
    dsNfEValor: TDataSource;
    sdsNfERateio: TSQLDataSet;
    dspNfERateio: TDataSetProvider;
    cdsNfERateio: TClientDataSet;
    dsNfERateio: TDataSource;
    grpNotaSaida: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel14: TCLabel;
    LblCad: TCLabel;
    CLabel59: TCLabel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    CLabel8: TCLabel;
    CLabel6: TCLabel;
    lblDeposito: TCLabel;
    CLabel72: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    DBEstNfE: TCDBEdit;
    lookIeFornecedor: TCLookUp;
    DBEdtEmissao: TCDBEdit;
    DBEdtLancamento: TCDBEdit;
    DBEidNatureza: TCDBEdit;
    LookNatureza: TCLookUp;
    LookIdCfop: TCLookUp;
    LookDescCfop: TCLookUp;
    DBCKmovEstoque: TCDBCheckBox;
    DBCKmovCusto: TCDBCheckBox;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEidNfE: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    LookFornecedorFiscal: TCLookUp;
    CGroupBox2: TCGroupBox;
    DBMobsNfE: TCDBMemo;
    CGroupBox3: TCGroupBox;
    DBMcompNfE: TCDBMemo;
    CGroupBox4: TCGroupBox;
    CLabel11: TCLabel;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    DBEvlBruto: TCDBEdit;
    DBEprDesconto: TCDBEdit;
    DBEvlDesconto: TCDBEdit;
    DBEvlTotal: TCDBEdit;
    DBEqtProduto: TCDBEdit;
    DBEvlLiquido: TCDBEdit;
    LookProdMedida: TCLookUp;
    CGroupBox14: TCGroupBox;
    DBProdutos: TCDBGrid;
    CGroupBox5: TCGroupBox;
    CLabel30: TCLabel;
    CLabel31: TCLabel;
    CLabel32: TCLabel;
    CLabel29: TCLabel;
    CLabel33: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    CLabel38: TCLabel;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    DBEvlProdutos: TCDBEdit;
    DBEprDescontoN: TCDBEdit;
    DBEvlDescontoN: TCDBEdit;
    DBEvlServicos: TCDBEdit;
    DBEvlDespesas: TCDBEdit;
    DBEvlFrete: TCDBEdit;
    DBEvlSeguro: TCDBEdit;
    DBEvlBaseIpiN: TCDBEdit;
    DBEvlIpiN: TCDBEdit;
    DBEvlNotaFiscal: TCDBEdit;
    CGroupBox6: TCGroupBox;
    CLabel48: TCLabel;
    CLabel49: TCLabel;
    CLabel51: TCLabel;
    CLabel53: TCLabel;
    CLabel54: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel68: TCLabel;
    DBEvlReducaoN: TCDBEdit;
    DBEvlBaseIcmsN: TCDBEdit;
    DBEvlIcmsN: TCDBEdit;
    DBEvlIssN: TCDBEdit;
    DBEvlBaseIssN: TCDBEdit;
    DBEvlIsentasIcmsN: TCDBEdit;
    DBEvlOutrasIcmsN: TCDBEdit;
    DBEvlOutrosImpostos: TCDBEdit;
    CGroupBox7: TCGroupBox;
    CLabel41: TCLabel;
    CLabel44: TCLabel;
    CLabel45: TCLabel;
    CLabel47: TCLabel;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    CLabel46: TCLabel;
    CLabel50: TCLabel;
    CLabel52: TCLabel;
    CLabel55: TCLabel;
    CLabel56: TCLabel;
    CLabel57: TCLabel;
    CLabel58: TCLabel;
    DBEdescTransportador: TCDBEdit;
    DBEufPlaca: TCDBEdit;
    DBEPlaca: TCDBEdit;
    DBEidCnpjCpf: TCDBEdit;
    DBEidInscEstadual: TCDBEdit;
    DBEdescEndereco: TCDBEdit;
    DBEidCidade: TCDBEdit;
    DBEqtProdutoN: TCDBEdit;
    DBEdescEspecie: TCDBEdit;
    DBEdescMarca: TCDBEdit;
    DBEdescNumero: TCDBEdit;
    DBEqtPesoBruto: TCDBEdit;
    DBEqtPesoLiquido: TCDBEdit;
    LookCidade: TCLookUp;
    LookEstado2: TCLookUp;
    sdsTituloPag: TSQLDataSet;
    dspTituloPag: TDataSetProvider;
    cdsTituloPag: TClientDataSet;
    dsTituloPag: TDataSource;
    sdsTituloPagParc: TSQLDataSet;
    dspTituloPagParc: TDataSetProvider;
    cdsTituloPagParc: TClientDataSet;
    dsTituloPagParc: TDataSource;
    dsNfETransporte: TDataSource;
    cdsNfETransporte: TClientDataSet;
    dspNfETransporte: TDataSetProvider;
    sdsNfETransporte: TSQLDataSet;
    cdsNfEProdutodescProduto: TStringField;
    FindIndice: TCFind;
    FindBanco: TCFind;
    CLabel60: TCLabel;
    DBEvlFreteFaturar: TCDBEdit;
    CLabel64: TCLabel;
    DBEidCheque: TCDBEdit;
    CLabel65: TCLabel;
    DBEdtVencimento: TCDBEdit;
    CLabel66: TCLabel;
    DBEdtMovCaixa: TCDBEdit;
    BtnNovoRat: TCBitBtn;
    CLabel86: TCLabel;
    DBEidGerencialRT: TCDBEdit;
    lookEnderecoFor: TCLookUp;
    lookCidadeFor: TCLookUp;
    lookEstadoFor: TCLookUp;
    lookEstadoEmp: TCLookUp;
    EDPar: TCEdit;
    EDtpDocumento: TCEdit;
    CBitBtn3: TCBitBtn;
    actExcluir2: TAction;
    CLabel67: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    dsRomaneioNf: TDataSource;
    cdsRomaneioNf: TClientDataSet;
    dspRomaneioNf: TDataSetProvider;
    sdsRomaneioNf: TSQLDataSet;
    cdsRomaneioNfidEmpresa: TIntegerField;
    cdsRomaneioNfidCadEmpresa: TSmallintField;
    cdsRomaneioNfidRomaneio: TIntegerField;
    cdsRomaneioNfidDocSerie: TStringField;
    cdsRomaneioNfidNf: TIntegerField;
    CBitBtn5: TCBitBtn;
    actImprimir: TAction;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TSmallintField;
    cdsPadraoidNfE: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidTpNotaFiscal: TSmallintField;
    cdsPadraodtEmissao: TSQLTimeStampField;
    cdsPadraodtLancamento: TSQLTimeStampField;
    cdsPadraoidNatureza: TSmallintField;
    cdsPadraomovEstoque: TStringField;
    cdsPadraomovCusto: TStringField;
    cdsPadraoidProdDeposito: TSmallintField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidRateio: TSmallintField;
    cdsPadraoobsNfE: TStringField;
    cdsPadraocompNfE: TStringField;
    cdsPadraostNfE: TStringField;
    cdsNfEProdutoidEmpresa: TIntegerField;
    cdsNfEProdutoidCadEmpresa: TSmallintField;
    cdsNfEProdutoidDocSerie: TStringField;
    cdsNfEProdutoidFornecedor: TIntegerField;
    cdsNfEProdutoidCadFornecedor: TSmallintField;
    cdsNfEProdutoidNfE: TIntegerField;
    cdsNfEProdutoidProduto: TIntegerField;
    cdsNfEProdutoqtProduto: TFMTBCDField;
    cdsNfEProdutovlBruto: TFMTBCDField;
    cdsNfEProdutoprDesconto: TFMTBCDField;
    cdsNfEProdutovlDesconto: TFMTBCDField;
    cdsNfEProdutovlLiquido: TFMTBCDField;
    cdsNfEProdutovlTotal: TFMTBCDField;
    cdsNfEProdutoprReducao: TFMTBCDField;
    cdsNfEProdutovlReducao: TFMTBCDField;
    cdsNfEProdutovlBaseIcms: TFMTBCDField;
    cdsNfEProdutoprIcms: TFMTBCDField;
    cdsNfEProdutovlIcms: TFMTBCDField;
    cdsNfEProdutovlBaseIpi: TFMTBCDField;
    cdsNfEProdutoprIpi: TFMTBCDField;
    cdsNfEProdutovlIpi: TFMTBCDField;
    cdsNfEProdutovlIsentasIcms: TFMTBCDField;
    cdsNfEProdutovlOutrasIcms: TFMTBCDField;
    cdsNfEProdutovlBaseIss: TFMTBCDField;
    cdsNfEProdutoprIss: TFMTBCDField;
    cdsNfEProdutovlIss: TFMTBCDField;
    cdsNfEProdutoprInss: TFMTBCDField;
    dspTituloPagMov: TDataSetProvider;
    cdsTituloPagMov: TClientDataSet;
    sdsTituloPagMov: TSQLDataSet;
    FindContaFor: TCFind;
    DBEobsTituloPag: TCDBEdit;
    CLabel84: TCLabel;
    CLabel124: TCLabel;
    DBEprMulta: TCDBEdit;
    CLabel125: TCLabel;
    DBEprJuros: TCDBEdit;
    CLabel126: TCLabel;
    DBEprDescontoT: TCDBEdit;
    DBEdiasVencimento: TCDBEdit;
    CLabel127: TCLabel;
    DBCKincMes: TCDBCheckBox;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel128: TCLabel;
    DBEqtParcelas: TCDBEdit;
    CLabel129: TCLabel;
    CBitBtn18: TCBitBtn;
    LookLancamento: TCLookUp;
    CLabel131: TCLabel;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLabel130: TCLabel;
    CLookUp4: TCLookUp;
    CLookUp5: TCLookUp;
    CLookUp6: TCLookUp;
    DBEidContaFor: TCDBEdit;
    CLabel2: TCLabel;
    CLabel117: TCLabel;
    DBEvlTituloPag: TCDBEdit;
    CLabel1: TCLabel;
    DBEidPortador: TCDBEdit;
    LookPortador: TCLookUp;
    DBEnrTituloPag: TCDBEdit;
    CLabel80: TCLabel;
    CLookUp3: TCLookUp;
    DBEidDocSerieT: TCDBEdit;
    CLabel76: TCLabel;
    cdsTituloPagidTituloPag: TIntegerField;
    cdsTituloPagidEmpresa: TIntegerField;
    cdsTituloPagidFornecedor: TIntegerField;
    cdsTituloPagnrTituloPag: TStringField;
    cdsTituloPagidDocSerie: TStringField;
    cdsTituloPagtpDocumento: TStringField;
    cdsTituloPagdtEmissao: TSQLTimeStampField;
    cdsTituloPagidSafra: TIntegerField;
    cdsTituloPagidBanco: TIntegerField;
    cdsTituloPagidIndice: TSmallintField;
    cdsTituloPagidMovFinanceira: TIntegerField;
    cdsTituloPagidResultado: TIntegerField;
    cdsTituloPagidRateio: TSmallintField;
    cdsTituloPagidGerencial: TIntegerField;
    cdsTituloPagobsTituloPag: TStringField;
    cdsTituloPagvlTituloPag: TFMTBCDField;
    cdsTituloPagqtParcelas: TSmallintField;
    cdsTituloPagdtVencimentoIni: TSQLTimeStampField;
    cdsTituloPagdiasVencimento: TSmallintField;
    cdsTituloPagprMulta: TFMTBCDField;
    cdsTituloPagprDesconto: TFMTBCDField;
    cdsTituloPagprJuros: TFMTBCDField;
    cdsTituloPagincMes: TStringField;
    cdsTituloPagstTituloPag: TStringField;
    cdsTituloPagidCadEmpresa: TSmallintField;
    cdsTituloPagidPortador: TSmallintField;
    cdsTituloPagidConta: TSmallintField;
    cdsNfEProdutoidNfEProduto: TSmallintField;
    BtnBuscaPedido: TCBitBtn;
    DBENcm: TCDBEdit;
    CLabel89: TCLabel;
    cdsNfEProdutoNcm: TIntegerField;
    cdsNfEProdutoidMaquina: TIntegerField;
    cdsPadraovlDesconto: TFMTBCDField;
    cdsNfEProdutovlTotalNf: TAggregateField;
    CGroupBox1: TCGroupBox;
    CLabel20: TCLabel;
    CLabel3: TCLabel;
    EDvlTotal: TCEdit;
    DBEvlDescontoTot: TCDBEdit;
    BtnRecalcular: TCBitBtn;
    DBEcodFabricante: TCDBEdit;
    CLabel10: TCLabel;
    cdsNfEProdutocodFabricante: TStringField;
    DBEhr_kmAtual: TCDBEdit;
    CLabel73: TCLabel;
    cdsNfEProdutohr_kmAtual: TFMTBCDField;
    cdsNfEProdutoidGerencial: TIntegerField;
    cdsNfEProdutoidResultado: TIntegerField;
    CGroupBox8: TCGroupBox;
    CLabel63: TCLabel;
    CLabel77: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerencial: TCLookUp;
    CBitBtn8: TCBitBtn;
    DBEidResultado1: TCDBEdit;
    CBitBtn1: TCBitBtn;
    CLabel87: TCLabel;
    DBEidRateio1: TCDBEdit;
    CBitBtn4: TCBitBtn;
    cdsNfEProdutoidRateio: TIntegerField;
    chkRepeteGerencial: TCheckBox;
    chkRepeteResultado: TCheckBox;
    chkRepeteRateio: TCheckBox;
    CLookUp2: TCLookUp;
    CGroupBox9: TCGroupBox;
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
    DBEprReducao: TCDBEdit;
    DBEvlReducao: TCDBEdit;
    DBEvlBaseIcms: TCDBEdit;
    DBEprIcms: TCDBEdit;
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
    LookRateio: TCLookUp;
    cdsTemp: TClientDataSet;
    cdsTempidEmpresa: TIntegerField;
    cdsTempidCadEmpresa: TIntegerField;
    cdsTempidFornecedor: TIntegerField;
    cdsTempidCadFornecedor: TIntegerField;
    cdsNfERateiovlTotalRateio: TAggregateField;
    cdsTempidNfE: TIntegerField;
    cdsTempidResultado: TIntegerField;
    cdsTempidGerencial: TIntegerField;
    cdsTempprRateio: TFloatField;
    cdsTempvlRateio: TCurrencyField;
    cdsTempidNfERateio: TIntegerField;
    cdsTempidNfEProduto: TIntegerField;
    cdsTempidResult: TIntegerField;
    cdsNfERateioidEmpresa: TIntegerField;
    cdsNfERateioidCadEmpresa: TSmallintField;
    cdsNfERateioidDocSerie: TStringField;
    cdsNfERateioidFornecedor: TIntegerField;
    cdsNfERateioidCadFornecedor: TSmallintField;
    cdsNfERateioidNfE: TIntegerField;
    cdsNfERateioidResultado: TIntegerField;
    cdsNfERateioidGerencial: TIntegerField;
    cdsNfERateioprRateio: TFMTBCDField;
    cdsNfERateiovlRateio: TFMTBCDField;
    cdsNfERateioidNfERateio: TIntegerField;
    cdsTempidDocSerie: TStringField;
    cdsTempidRateio: TIntegerField;
    cdsTempvlTotalRateio: TAggregateField;
    cdsNfERateiodescResultado: TStringField;
    LookResultado: TCLookUp;
    CLookUp1: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    cdsTituloPagidDocumento: TIntegerField;
    CLabel78: TCLabel;
    DBEidIndice1: TCDBEdit;
    CLookUp7: TCLookUp;
    CLabel85: TCLabel;
    CLookUp8: TCLookUp;
    CBitBtn6: TCBitBtn;
    cdsPadraoidIndice: TSmallintField;
    BtnRecalcula: TCBitBtn;
    cdsTmpProd: TClientDataSet;
    cdsTmpProdidProduto: TIntegerField;
    CGroupBox11: TCGroupBox;
    CDBGrid1: TCDBGrid;
    sdsPedidoCompra: TSQLDataSet;
    dspPedidoCompra: TDataSetProvider;
    cdsPedidoCompra: TClientDataSet;
    dsPedidoCompra: TDataSource;
    cdsPedidoCompraidEmpresa: TIntegerField;
    cdsPedidoCompraidCadEmpresaOri: TSmallintField;
    cdsPedidoCompraidPedidoCompra: TIntegerField;
    cdsPedidoCompraidCadEmpresa: TSmallintField;
    cdsPedidoCompraidFornecedor: TIntegerField;
    cdsPedidoCompraidCadFornecedor: TSmallintField;
    cdsPedidoCompraidDocSerie: TStringField;
    cdsPedidoCompraidNfE: TIntegerField;
    cdsPedidoCompradtPedido: TSQLTimeStampField;
    cdsNfEValoridEmpresa: TIntegerField;
    cdsNfEValoridCadEmpresa: TSmallintField;
    cdsNfEValoridDocSerie: TStringField;
    cdsNfEValoridFornecedor: TIntegerField;
    cdsNfEValoridCadFornecedor: TSmallintField;
    cdsNfEValoridNfE: TIntegerField;
    cdsNfEValorvlProdutos: TFMTBCDField;
    cdsNfEValorvlServicos: TFMTBCDField;
    cdsNfEValorprDesconto: TFMTBCDField;
    cdsNfEValorvlDesconto: TFMTBCDField;
    cdsNfEValorvlReducao: TFMTBCDField;
    cdsNfEValorvlBaseIcms: TFMTBCDField;
    cdsNfEValorvlBaseIss: TFMTBCDField;
    cdsNfEValorvlIcms: TFMTBCDField;
    cdsNfEValorvlIss: TFMTBCDField;
    cdsNfEValorvlIsentasIcms: TFMTBCDField;
    cdsNfEValorvlOutrasIcms: TFMTBCDField;
    cdsNfEValorvlBaseIpi: TFMTBCDField;
    cdsNfEValorvlIpi: TFMTBCDField;
    cdsNfEValorvlFrete: TFMTBCDField;
    cdsNfEValorvlDespesas: TFMTBCDField;
    cdsNfEValorvlSeguro: TFMTBCDField;
    cdsNfEValorvlOutrosImpostos: TFMTBCDField;
    cdsNfEValorvlFreteFaturar: TFMTBCDField;
    cdsNfEValorvlNotaFiscal: TFMTBCDField;
    cdsNfETransporteidEmpresa: TIntegerField;
    cdsNfETransporteidCadEmpresa: TSmallintField;
    cdsNfETransporteidDocSerie: TStringField;
    cdsNfETransporteidFornecedor: TIntegerField;
    cdsNfETransporteidCadFornecedor: TSmallintField;
    cdsNfETransporteidNfE: TIntegerField;
    cdsNfETransportedescTransportador: TStringField;
    cdsNfETransporteidCnpjCpf: TStringField;
    cdsNfETransporteidInscEstadual: TStringField;
    cdsNfETransportePlaca: TStringField;
    cdsNfETransporteufPlaca: TStringField;
    cdsNfETransportedescEndereco: TStringField;
    cdsNfETransporteidFrete: TSmallintField;
    cdsNfETransporteidCidade: TIntegerField;
    cdsNfETransporteqtProduto: TFMTBCDField;
    cdsNfETransportedescEspecie: TStringField;
    cdsNfETransportedescMarca: TStringField;
    cdsNfETransportedescNumero: TStringField;
    cdsNfETransporteqtPesoBruto: TFMTBCDField;
    cdsNfETransporteqtPesoLiquido: TFMTBCDField;
    cdsNfETransportedescVeiculo: TStringField;
    cdsNfETransporteidMotorista: TSmallintField;
    cdsNfEProdutoidCfop: TIntegerField;
    DBEidCfop: TCDBEdit;
    LookCfop: TCLookUp;
    CLabel88: TCLabel;
    dspNfEImporta: TDataSetProvider;
    dsNfEImporta: TDataSource;
    cdsNfEImporta: TClientDataSet;
    sdsNfEImporta: TSQLDataSet;
    cdsNfEImportaidEmpresa: TIntegerField;
    cdsNfEImportaidCadEmpresa: TSmallintField;
    cdsNfEImportaidDocSerie: TStringField;
    cdsNfEImportaidFornecedor: TIntegerField;
    cdsNfEImportaidCadFornecedor: TSmallintField;
    cdsNfEImportaidNfE: TIntegerField;
    cdsNfEImportachaveNFe: TStringField;
    cdsProdFornecedor: TClientDataSet;
    dsProdFornecedor: TDataSource;
    dspProdFornecedor: TDataSetProvider;
    sdsProdFornecedor: TSQLDataSet;
    cdsProdFornecedoridProduto: TIntegerField;
    cdsProdFornecedoridFornecedor: TIntegerField;
    cdsProdFornecedorcodFornecedor: TStringField;
    procedure actImprimirExecute(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure DBEobsTituloPagExit(Sender: TObject);
    procedure cdsNfEProdutoAfterEdit(DataSet: TDataSet);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actExcluir2Execute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure DBEidResultadoRTExit(Sender: TObject);
    procedure DBEidChequeExit(Sender: TObject);
    procedure DBMcompNfEExit(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure dsTituloPagParcStateChange(Sender: TObject);
    procedure cdsTituloPagAfterInsert(DataSet: TDataSet);
    procedure DBEidNfEExit(Sender: TObject);
    procedure cdsNfERateioAfterInsert(DataSet: TDataSet);
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure cdsNfERateioAfterScroll(DataSet: TDataSet);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure dsNfERateioStateChange(Sender: TObject);
    procedure DBEdiasVencimentoExit(Sender: TObject);
    procedure DBCKincMesExit(Sender: TObject);
    procedure actGerarRateioExecute(Sender: TObject);
    procedure dspMovCaixaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure PagTituloPagChange(Sender: TObject);
    procedure DBEprRateioExit(Sender: TObject);
    procedure DBEprRateioEnter(Sender: TObject);
    procedure BtnSalvarRatClick(Sender: TObject);
    procedure DBEvlDespesasExit(Sender: TObject);
    procedure cdsNfEValorAfterInsert(DataSet: TDataSet);
    procedure DBEqtProdutoEnter(Sender: TObject);
    procedure DBEvlOutrasIcmsExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure dsNfEProdutoStateChange(Sender: TObject);
    procedure dspNfEProdutoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNfEProdutoAfterInsert(DataSet: TDataSet);
    procedure BtnSalvarProdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBCKmovEstoqueExit(Sender: TObject);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure calculaprodutos(Sender: TObject);
    procedure CalcTotalNota;
    procedure SomaRateio;
    procedure GeraRateio;
    procedure GeraParcelas;
    procedure SomaParcelas;
    procedure SomaProdutos;
    procedure Habilita(bol : boolean);
    procedure IniciaFinancas;
    procedure ConfigNatureza;
    constructor create (Formulario: TComponent; Parametro: Array of String);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure cdsTituloPagidPortadorValidate(Sender: TField);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure BtnBuscaPedidoClick(Sender: TObject);
    procedure cdsEmpresaidEmpresaValidate(Sender: TField);
    procedure cdsNfEValorAfterEdit(DataSet: TDataSet);
    procedure DBEvlTituloPagEnter(Sender: TObject);
    procedure DBEvlTituloPagExit(Sender: TObject);
    procedure cdsTituloPagAfterEdit(DataSet: TDataSet);
    procedure cdsTituloPagMovAfterInsert(DataSet: TDataSet);
    procedure GeraMovimentacao;
    procedure dspTituloPagMovBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnRecalcularClick(Sender: TObject);
    procedure DBEvlDescontoTotExit(Sender: TObject);
    procedure DBEcodFabricanteExit(Sender: TObject);
    procedure ConfigMaquina;
    procedure DBEidProdutoExit(Sender: TObject);
    procedure HabilitaResRat;
    procedure DBEidResultado1Exit(Sender: TObject);
    procedure DBEidRateio1Exit(Sender: TObject);
    procedure VerificaFornecedor;
    procedure dspNfERateioBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNfEProdutoAfterScroll(DataSet: TDataSet);
    procedure TransfRateio;
    procedure LimpaTemp;
    procedure CalculaPr(Exclui : Boolean);
    procedure InsereTituloRat;
    procedure DBEvlBaseIcmsEnter(Sender: TObject);
    procedure DBEvlBaseIcmsExit(Sender: TObject);
    procedure DBEvlBaseIssEnter(Sender: TObject);
    procedure DBEvlBaseIssExit(Sender: TObject);
    procedure DBEvlIsentasIcmsEnter(Sender: TObject);
    procedure DBEvlIsentasIcmsExit(Sender: TObject);
    procedure DBEqtProdutoExit(Sender: TObject);
    procedure DBEidProdutoEnter(Sender: TObject);
    procedure LimpaRateio;
    procedure VerificaSobrasRateio;
    procedure BtnRecalculaClick(Sender: TObject);
    procedure CarregaPedidos;
    procedure CarregaImportaNFe;
  private
    { Private declarations }
    vlAnterior, vlAtual : String; //variáveis criadas para tratar da regras dos descontos
    vlTotalRateio, vlTotalParcelas, vlRatProd : currency;
    Global : Boolean;
  public
    { Public declarations }
    some, Recepcao, bloqueada : Boolean;
    sql, sqlPed, sqlSta, sqlRec, sqlPedNfe, origem : string;
    idGerencial, idResultado, idRateio : Integer;
  end;

var
  FrmNfE: TFrmNfE;

implementation

uses uFrmPrincipal, uDmPadrao, uFrmPesClienteFiscal, uFuncao, uFrmCadPadrao,
  uFrmPesNotas, uFrmPadrao, uDmFind, uFrmPesRecepcaoNFE, uFrmPesProd,
  uFrmImportaNFe;

{$R *.dfm}

procedure TFrmNfE.actCancelarExecute(Sender: TObject);
begin
  inherited;
  Habilita(false); //desabilita os controles
  CarregaPedidos;
end;

procedure TFrmNfE.actExcluir2Execute(Sender: TObject);
var
  sql, idFilial, data : string;
  deleta : Boolean;
begin
  deleta := False;
  if messagedlg('Deseja realmente excluir o registro selecionado? ' + #13 +
               'Todos os lançamentos financeiros associados serão excluídos!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    data := DBEdtEmissao.Text;
    if not(cdsTmpProd.Active) then
      cdsTmpProd.CreateDataSet;
    cdsNfEProduto.First;
    while not cdsNfEProduto.Eof do
    begin
      cdsTmpProd.Append;
      cdsTmpProdidProduto.AsInteger := cdsNfEProdutoidProduto.AsInteger;
      cdsTmpProd.Post;
      cdsNfEProduto.Next;
    end;
    EDPar.Text := 'E';
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
        DBEidDocSerie, DBEidFornecedor, DBEidCadFornecedor, DBEidNfE, EDPar], 'spExcluiCancelaNfE') then
    begin
      deleta := True;
    end;
    inherited;
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM cadConfigEstoque WHERE idEmpresa = ' + DBEidEmpresa.Text) do
    begin
      if FieldByName('usaEstoqueFilial').AsString = 'S' then
        idFilial := FieldByName('filialPadrao').AsString
      else
        idFilial := DBEidCadEmpresa.Text;
    end;
    if deleta then
    begin
      sql := 'DELETE FROM Estoque ' +
             ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
             ' AND idCadEmpresa = ' + idFilial +
             ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text)+
             ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString +
             ' AND idCadFornecedor = ' + cdsPadraoidCadFornecedor.AsString +
             ' AND nrDocumento = ' + cdsPadraoidNfe.AsString +
             ' AND tpDocumento = ' + QuotedStr('NFE');
      dmPadrao.dbConexao.ExecuteDirect(sql);
      EDPar.Text := 'SEL';
      EDtpDocumento.Text := 'NFE';
      funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
        EDtpDocumento, DBEidDocSerie, DBEidNfE, DBEidFornecedor, DBEidCadFornecedor, EDPar], 'spAtualizaEstoque');

      cdsTmpProd.First;
      while not cdsTmpProd.Eof do
      begin
        sql := 'EXEC spRecalcEstoqueGeral ' + frmPrincipal.idEmpresa + ', ' +
             QuotedStr(data) + ', ' + QuotedStr(cdsTmpProdidProduto.AsString) + ', ' + QuotedStr('0') + ', ' +
             QuotedStr('S');
        dmPadrao.dbConexao.ExecuteDirect(sql);
        cdsTmpProd.Next;
      end;
    end;
    cdsTmpProd.Close;
    actNovo.Execute;
  end;
end;

procedure TFrmNfE.actExcluirExecute(Sender: TObject);
begin
//  inherited;
 if messagedlg('Deseja realmente cancelar o registro selecionado? ' + #13 +
               'Todos os lançamentos financeiros associados serão excluídos!', mtconfirmation, [mbyes, mbno], 0) = mryes then
 begin
  EDPar.Text := 'C';
  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
      DBEidDocSerie, DBEidFornecedor, DBEidCadFornecedor, DBEidNfE, EDPar], 'spExcluiCancelaNfE') then
  begin
    EDPar.Text := 'SEL';
    EDtpDocumento.Text := 'NFE';
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
      EDtpDocumento, DBEidDocSerie, DBEidNfE, DBEidFornecedor, DBEidCadFornecedor, EDPar], 'spAtualizaEstoque');
    DBEidNfEExit(DBEidNfE);
  end;
  sql := 'SELECT * FROM WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString + ' AND idCadEmpresa = ' +
         ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString + ' AND idCadFornecedor = ' +
         cdsPadraoidCadFornecedor.AsString  + ' AND idNfE = ' + cdsPadraoidNFe.AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      First;
      while not eof do
      begin
        sql := 'EXEC spVerStatusPedidoCompra ' + DBEidEmpresa.Text + ', ' +
                DBEidCadEmpresa.Text + ', ' + FieldByName('idPedidoCompra').AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      Next;
    end;
  end;
 end;
end;

procedure TFrmNfE.actGerarRateioExecute(Sender: TObject);
begin
  inherited;
  GeraRateio;
end;

procedure TFrmNfE.actImprimirExecute(Sender: TObject);
begin
  inherited;
  showmessage('Imprimiu!');
end;

procedure TFrmNfE.actNovoExecute(Sender: TObject);
begin
  funcao.SomenteLeitura([DBEidNfe, DBEqtProduto], false);
  inherited;
  BtnBuscaPedido.Enabled := false;
  Habilita(false); //desabilita os controles
  funcao.SomenteLeitura([DBEidContaFor], true);
  sql := '';
  sqlPed := '';
  sqlSta := '';
  sqlRec := '';
  sqlPedNfe := '';
  CarregaPedidos;
end;

procedure TFrmNfE.actPesquisarExecute(Sender: TObject);
begin
  inherited;
    Application.CreateForm(TFrmPesNotas, FrmPesNotas);
    FrmPesNotas.tpNota := 'NFE';
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
        FieldByName('idFornecedor').Value := FrmPesNotas.cdsGrid.FieldByName('idCadastro').Value;
        FieldByName('idCadFornecedor').Value := FrmPesNotas.cdsGrid.FieldByName('idCadAdicional').Value;
        FieldByName('idDocSerie').Value := FrmPesNotas.cdsGrid.FieldByName('idDocSerie').Value;
        FieldByName('idNfE').Value := FrmPesNotas.cdsGrid.FieldByName('nrNota').Value;
        PagAbas.ActivePageIndex := 0;
        DBEidNfE.SetFocus;
        DBEidNfEExit(DBEidNfE);
      end;
    end;
    ConfigNatureza;
end;

procedure TFrmNfE.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  idTituloPag : integer;
  sqlNota, sqlForn : string;
begin
  VerificaFornecedor;
  //verifica os produtos
  if cdsNfEProduto.IsEmpty then
  begin
    messagedlg('Produtos não cadastrados!', mtwarning, [mbok], 0);
    exit;
  end;
  if (DBCKmovEstoque.Checked) and (trim(DBEidProdDeposito.Text) = '') then
  begin
    messagedlg('Você precisa informar o depósito!', mtwarning, [mbok], 0);
    exit;
  end;

  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    cdsPadrao.FieldByName('idTpNotaFiscal').AsInteger := 1;

    //verifica alterações na tabela caixa  -  modificado
   if (trim(DBEidCaixa.Text) <> '') or (trim(DBEvlMovCaixa.Text) <> '') or (trim(DBEdescMovCaixa.Text) <> '') then
    begin
      if cdsMovCaixa.State in [dsInsert,dsEdit] then
        begin
          cdsMovCaixa.FieldByName('fator').AsString := '-1'; //pagando
          cdsMovCaixa.Post;
          cdsMovCaixa.ApplyUpdates(0);
        end;
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela conta -- modificado
    if (trim(DBEidConta.Text) <> '') or (trim(DBEvlMovConta.Text) <> '') or (trim(DBEdescMovConta.Text) <> '') then
    begin
      if cdsMovConta.State in [dsInsert,dsEdit] then
        begin
          cdsMovConta.FieldByName('fator').AsString := '-1'; //pagando
          cdsMovConta.Post;
          cdsMovConta.ApplyUpdates(0);
        end;
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela caixa
    if funcao.VerificaAlteracoes([cdsTituloPag]) then
    begin
      //limpa a tabela se houverem registros nela
      if not cdsTituloPagParc.IsEmpty then
      begin
        if not cdsTituloPagParc.IsEmpty then
        begin
          with cdsTituloPagParc do
          begin
            First;
            while not Eof do
            begin
              Delete;
              First;
            end;
          end;
        end;
        sql := 'DELETE FROM TituloPagRateio WHERE idEmpresa = ' + cdsTituloPagidEmpresa.AsString +
               ' AND idCadEmpresa = ' + cdsTituloPagidCadEmpresa.AsString +
               ' AND idTituloPag = ' + cdsTituloPagidTituloPag.AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      if cdsTituloPagParc.IsEmpty then
        GeraParcelas;

      cdsTituloPag.ApplyUpdates(0);
      idTituloPag := cdsTituloPag.FieldByName('idTituloPag').AsInteger;
      cdsTituloPagParc.First;
      while not cdsTituloPagParc.Eof do
      begin
        cdsTituloPagParc.Edit;
        cdsTituloPagParc.FieldByName('idTituloPag').Value := idTituloPag;
        cdsTituloPagParc.Post;
        cdsTituloPagParc.Next;
      end;
      //
      //
      cdsTituloPagParc.ApplyUpdates(0);
      //
      If (cdsTituloPagMov.ChangeCount > 0) Then
         cdsTituloPagMov.ApplyUpdates(0);

    end; //fim do verificação de alterações na tabela caixa

    if trim(DBEidNfE.Text) = '' then
    begin
      sqlNota := 'SELECT (MAX(ISNULL(idNfE, 0)) + 1) AS maximo FROM NfE WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
             ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text);
      cdsPadrao.FieldByName('idNfE').AsInteger := frmPrincipal.ExecutaSQLRet([], '', sqlNota).FieldByName('maximo').AsInteger;
    end;

    GravaChave(0, '', nil);

    inherited;
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa,
                       DBEidDocSerie, DBEidFornecedor, DBEidCadFornecedor, DBEidNfE, DBEidMovCaixa,
                       DBEidMovConta, DBEidTituloPag], 'spFechaNfEntrada') then
    begin
      frmPrincipal.erro := 0;
    end;
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

  if (origem <> 'Normal') and (origem <> 'Importação') then
  begin
    if frmPrincipal.erro = 0 then
    begin
      if trim(sql) <> '' then
        dmPadrao.dbConexao.ExecuteDirect(sql);
      if trim(sqlPed) <> '' then
        dmPadrao.dbConexao.ExecuteDirect(sqlPed);
      if trim(sqlRec) <> '' then
        dmPadrao.dbConexao.ExecuteDirect(sqlRec);
      if trim(sqlSta) <> '' then
        dmPadrao.dbConexao.ExecuteDirect(sqlSta);
      if trim(sqlPedNfe) <> '' then
        dmPadrao.dbConexao.ExecuteDirect(sqlPedNfe);
    end;
    close;
  end
  else
    if (origem = 'Importação') then
    begin
      cdsNfEImporta.Post;
      cdsNfEImporta.ApplyUpdates(0);
    end;
  PagAbasChange(PagAbas);
  InsereTituloRat;
  cdsNfEProduto.First;
  while not cdsNfEProduto.Eof do
  begin
    sql := 'EXEC spRecalcEstoqueGeral ' + frmPrincipal.idEmpresa + ', ' +
           funcao.RetornaValorEField(DBEdtEmissao, 3) + ', ' + QuotedStr(cdsNfEProdutoidProduto.AsString) + ', ' + QuotedStr('0') + ', ' +
           QuotedStr('S');
    dmPadrao.dbConexao.ExecuteDirect(sql);
    cdsNfEProduto.Next;
  end;
  sql := 'SELECT * FROM cadConfigEstoque WHERE idEmpresa = ' + DBEidEmpresa.Text;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if FieldByName('usaEstoqueFilial').AsString = 'S' then
    begin
      sql := 'UPDATE Estoque SET idCadEmpresa = ' + FieldByName('filialPadrao').AsString + ', ' +
             'idCadEmpresaOri = ' + DBEidCadEmpresa.Text +
             ' WHERE nrDocumento = ' + cdsPadraoidNfe.AsString +
             '   AND idEmpresa = ' + DBEidEmpresa.Text +
             '   AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
             '   AND tpDocumento = ' + QuotedStr('NFE');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  end;
end;

procedure TFrmNfE.BtnBuscaPedidoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesRecepcaoNFE, FrmPesRecepcaoNFE);
  FrmPesRecepcaoNfE.idForn := cdsPadraoidFornecedor.AsInteger;
  FrmPesRecepcaoNfE.ShowModal;
end;

procedure TFrmNfE.BtnRecalculaClick(Sender: TObject);
var
  vlTotalNf, vlRateio : Double;
  sql : string;
begin
  inherited;
  //Procedure Responsavel por fazer o Recalculo dos totais dos Rateios
  if messagedlg('Esse processo é irreversivel, realmente deseja fazer?', mtwarning, [mbyes, mbno], 0) = mryes then
  begin
    //Primeiro Limpa o Rateio
    cdsNfERateio.First;
    while not cdsNfERateio.eof do
    begin
      if cdsNfERateio.FieldByName('prRateio').AsFloat < 100 then
      begin
        if not (cdsNfERateio.State in [dsEdit, dsInsert]) then
          cdsNfERateio.Edit;
        cdsNfERateio.FieldByName('vlRateio').Value := 0;
        cdsNfEProduto.First;
        while not cdsNfEProduto.Eof do
        begin
          sql := 'SELECT * FROM RateioItem WHERE idEmpresa = ' + cdsNfEProdutoidEmpresa.AsString + ' AND idRateio = ' + cdsNfEProdutoidRateio.AsString;
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          begin
            if (FieldByName('idRateio').AsInteger = cdsNfEProduto.FieldByName('idRateio').AsInteger)
                AND (cdsNfERateio.FieldByName('idGerencial').AsInteger = cdsNfEProduto.FieldByName('idGerencial').AsInteger) then
            begin
              vlRateio := 0;
              if not (cdsNfERateio.State in [dsEdit, dsInsert]) then
                cdsNfERateio.Edit;
              vlRateio := funcao.ArredondaMoeda((cdsNfEProdutovlTotal.AsFloat*cdsNfERateio.FieldByName('prRateio').AsFloat)/100);
              cdsNfERateio.FieldByName('vlRateio').Value := cdsNfERateio.FieldByName('vlRateio').Value + vlRateio;
              cdsNfERateio.Post;
            end;
          end;
          cdsNfEProduto.Next;
        end;
      end
      else
      if cdsNfERateio.FieldByName('prRateio').AsFloat = 100 then
      begin
        cdsNfEProduto.IndexFieldNames := 'idGerencial; idResultado';
        if cdsNfEProduto.FindKey([cdsNfERateio.FieldByName('idGerencial').AsInteger, cdsNfERateio.FieldByName('idResultado').AsInteger]) then
        begin
          if not (cdsNfERateio.State in [dsEdit, dsInsert]) then
            cdsNfERateio.Edit;
          cdsNfERateio.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsNfEProdutovlTotal.AsFloat*cdsNfERateio.FieldByName('prRateio').AsFloat)/100);
          cdsNfERateio.Post;
        end;
        cdsNfEProduto.IndexFieldNames := '';
      end;
      cdsNfERateio.Next;
    end;
  end;
end;


procedure TFrmNfE.BtnRecalcularClick(Sender: TObject);
var
  sql : string;
  indice, indReal, vlPeca, vlFinalPeca, dif, vlMaior, vlRestante, vlTotal : Double;
begin
  inherited;
  vlTotal := StrToFloat(EDvlTotal.Text);
  if cdsNfEProduto.State in [dsEdit, dsInsert] then
    cdsNfEProduto.Cancel;

  with cdsNfEProduto do
  begin
    First;
    while not Eof do
    begin
      indice := cdsPadrao.FieldByName('vlDesconto').AsCurrency / StrToFloat(EDvlTotal.Text);
      indReal := 1 - indice;
      vlPeca := RoundTo(cdsNfEProdutovlBruto.AsFloat * indReal, -2);
      if not (cdsNfEProduto.State in [dsInsert, dsEdit]) then
        cdsNfEProduto.Edit;
      cdsNfEProdutovlBruto.AsFloat := vlPeca;
      cdsNfEProdutovlTotal.AsFloat := FieldByName('qtProduto').AsFloat * (FieldByName('vlBruto').AsCurrency - FieldByName('vlDesconto').AsCurrency);
      Post;
      Next;
    end;
    SomaProdutos;
    vlFinalPeca := RoundTo(vlTotal - cdsPadrao.FieldByName('vlDesconto').AsFloat, -2);
    dif := RoundTo(vlFinalPeca - StrToFloat(EDvlTotal.Text), -2);
    if dif <> 0 then
    begin
      cdsNfEProduto.IndexFieldNames := 'vlTotal';
      cdsNfEProduto.Last;
      vlMaior := (dif) + cdsNfEProdutovlTotal.AsFloat;
      vlPeca := vlMaior/cdsNfEProdutoqtProduto.AsFloat;
      if not (cdsNfEProduto.State in [dsInsert, dsEdit]) then
        cdsNfEProduto.Edit;
      cdsNfEProdutovlBruto.AsFloat := vlPeca;
      cdsNfEProdutovlTotal.AsFloat := FieldByName('qtProduto').AsFloat * (FieldByName('vlBruto').AsCurrency - FieldByName('vlDesconto').AsCurrency);
      cdsNfEProduto.Post;
      SomaProdutos;
      cdsNfEProduto.IndexFieldNames := '';
    end;
//    cdsProdutos.ApplyUpdates(0);
  end;
  //Faz o Recalcudo do total
  SomaProdutos;

  //Faz o Recalcudo do total da Nota
  CalcTotalNota;
  //limpa o rateio
  LimpaRateio;

  // Faz Calculos de Custo de Produção
  cdsNfEProduto.First;
  while not cdsNfEProduto.Eof do
  begin
    GeraRateio;
    cdsNfEProduto.Next;
  end;
end;

procedure TFrmNfE.BtnSalvarParcClick(Sender: TObject);
var
  edita : Boolean;
begin
  inherited;
  edita := False;
  if (cdsTituloPagParc.State = dsEdit) then
    edita := True;
  funcao.GravaSec([DBEidTituloPag], cdsTituloPagParc, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc, (Sender as TCBitBtn), 'idParcela');
  if (Sender as TBitBtn).Name <> 'BtnNovoParc' then
    SomaParcelas;

  if (Sender as TBitBtn).Name <> 'BtnSalvarParc' then
  begin
    SomaParcelas;
    GeraMovimentacao;
  end;
  if not(cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  if ((cdsPadrao.State = dsEdit) AND (edita)) then
    cdsTituloPagParc.ApplyUpdates(0);

  DBEidParcela.SetFocus;
end;

procedure TFrmNfE.BtnSalvarProdClick(Sender: TObject);
begin
  inherited;
  if (((Sender as TCBitBtn).Name = 'BtnSalvarProd') OR ((Sender as TCBitBtn).Name = 'BtnExcluirProd') and (not Recepcao)) then
  begin
    if ((cdsNfEProdutovlTotal.OldValue <> cdsNfEProdutovlTotal.NewValue) AND (cdsNfEProduto.State = dsEdit)) then
    begin
      LimpaRateio;
      with cdsNfEProduto do
      begin
        First;
        while not eof do
        begin
          if cdsNfEProdutoidGerencial.AsInteger > 0 then
            GeraRateio;
          Next;
        end;
      end;
    end
    else
      if cdsNfEProdutoidGerencial.AsInteger > 0 then
        GeraRateio;
    if not(cdsNfEProduto.State in [dsEdit, dsInsert]) then
      cdsNfEProduto.Edit;
  end;
  funcao.GravaSec(chave, cdsNfEProduto, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd, (Sender as TCBitBtn), 'idNfEProduto');
  if ((Sender as TCBitBtn).Name = 'BtnSalvarProd') then
  begin
    CalcTotalNota;
    if chkRepeteGerencial.Checked then
      idGerencial := cdsNfEProdutoidGerencial.AsInteger;
    if chkRepeteResultado.Checked then
      idResultado := cdsNfEProdutoidResultado.AsInteger;
    if chkRepeteRateio.Checked then
      idRateio := cdsNfEProdutoidRateio.AsInteger;
  end;
  if ((Sender as TCBitBtn).Name = 'BtnExcluirProd') then
  begin
    if (cdsNfEProduto.FieldByName('idGerencial').Value > 0) then
    begin
//      CalculaPr(True);
      LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlRatProd), 6, '');
      LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency-vlRatProd), 6, '');
//      CalculaPr(False);
    end;
  end;
  if ((Sender as TCBitBtn).Name <> 'BtnNovoProd') AND not Recepcao then
  begin
    SomaProdutos;
    if (cdsNfEProduto.FieldByName('idGerencial').Value > 0) then
    begin
      vlRatProd := cdsNfERateiovlTotalRateio.Value;
      LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlRatProd), 6, '');
      LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency-vlRatProd), 6, '');
//      CalculaPr(False);
    end;
    if cdsNfEProdutoidGerencial.AsInteger > 0 then
      VerificaSobrasRateio;
  end;
  if (PagAbas.TabIndex = 1) and (not Global) then
    DBEidProduto.SetFocus;
  if ((Sender as TCBitBtn).Name = 'BtnNovoProd') then
  begin
    if idGerencial > 0 then
      cdsNfEProdutoidGerencial.AsInteger := idGerencial;
    if idResultado > 0 then
      cdsNfEProdutoidResultado.AsInteger := idResultado;
    if idRateio > 0 then
      cdsNfEProdutoidRateio.AsInteger := idRateio;

{    if trim(LookIdCfop.Caption) <> '' then
      cdsNfEProdutoidCfop.AsString := trim(LookIdCfop.Caption);}

  end;
end;

procedure TFrmNfE.BtnSalvarRatClick(Sender: TObject);
begin
  inherited;
  if (Sender as TBitBtn).Name = 'BtnSalvarRat' then
    if cdsNfERateio.FieldByName('vlRateio').Value >  cdsNfEValor.FieldByName('vlNotaFiscal').Value then
    begin
      messagedlg('O valor do rateio não pode ser maior que a nota!', mtwarning, [mbok], 0);
      exit;
    end;

  funcao.GravaSec(chave, cdsNfERateio, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRat') and ((Sender as TBitBtn).Name <> 'BtnCancelarRat') then
    SomaRateio; //rateio

  DBEidResultadoRT.SetFocus;
end;

procedure TFrmNfE.CalcTotalNota;
//totaliza a nota
var
  vlProdutos, vlServicos, vlBaseIpi, vlIpi, vlReducao, vlBaseIcms, vlIcms,
  vlIsentasIcms, vlOutrasIcms, vlBaseIss, vlIss, vlOutrosImpostos : currency;
begin
  vlServicos := 0; vlProdutos := 0; vlBaseIpi := 0; vlIpi := 0; vlReducao := 0;
  vlBaseIcms := 0; vlIcms := 0; vlIsentasIcms := 0; vlOutrasIcms := 0;
  vlBaseIss := 0; vlIss := 0; vlOutrosImpostos := 0;
  with cdsNfEProduto do
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
      if FieldByName('vlBaseIss').Value > 0 then
      begin
        vlBaseIss := vlBaseIss + FieldByName('vlBaseIss').Value;
        vlIss := vlIss + FieldByName('vlIss').Value;
      end;
      Next;
    end; //fim do while not cdsNfEProduto.Eof do
  end; // fim do with cdsNfEProduto

  //inclui na tabela de totais
  with cdsNfEValor do
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
  end; // fim do with cdsNfEValor do
end;

procedure TFrmNfE.CalculaPr(Exclui : Boolean);
var
  vlMaior, vlDiferenca : currency;
  idMaior : integer;
  teste : String;
begin
  if Exclui then
  begin
    with cdsNfERateio do
    begin
      First;
      while not eof do
      begin
//        vlRatProd := cdsNfERateiovlTotalRateio.Value;
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        CalcTotalNota;
        FieldByName('vlRateio').Value := (cdsNfEValor.FieldByName('vlNotaFiscal').Value*FieldByName('prRateio').Value)/100;
        teste := FieldByName('vlRateio').AsString;
        if vlMaior < FieldByName('vlRateio').Value then
        begin
           idMaior := FieldByName('idResultado').AsInteger;
           idGerencial := FieldByName('idGerencial').AsInteger;
           vlMaior := FieldByName('vlRateio').Value;
        end;
        Post;
        Next;
      end;
      vlRatProd := cdsNfERateiovlTotalRateio.Value;
      if (vlRatProd <>  cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency) then
      begin
        vlDiferenca := cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency - vlRatProd;
        IndexFieldNames := 'idResultado';
        FindKey([idMaior]);
        Edit;
        FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
        Post;
        LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlRatProd), 6, '');
        LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency-vlRatProd), 6, '');
        IndexFieldNames := '';
      end;
    end;
  end;
  with cdsNfERateio do
  begin
    First;
    while not eof do
    begin
      vlRatProd := cdsNfERateiovlTotalRateio.Value;
      if not (cdsNfERateio.State in [dsEdit, dsInsert]) then
        cdsNfERateio.Edit;
      FieldByName('prRateio').Value := (FieldByName('vlRateio').Value/vlRatProd)*100;
      FieldByName('vlRateio').Value := (vlRatProd*FieldByName('prRateio').Value)/100;
      Post;
      Next;
    end;
  end;
end;

procedure TFrmNfE.calculaprodutos(Sender: TObject);
//Procedimento criado para calcular os valores dos produtos
var
  vlLiquido, vlTotal, vlDesconto : currency;
  prDesconto : double;
begin
  With cdsNfEProduto do
  begin
    if not (State in [dsInsert, dsEdit]) then
      exit; //se não estiver em modo edição significa que não foi alterado
    if vlAnterior = vlAtual then
      exit; // tb significa que não houve alteração
    if ((trim(DBEvlBruto.Text) <> '') or (trim(DBEvlTotal.Text) <> '')) and (trim(DBEqtProduto.Text) <> '') and (trim(DBEidProduto.Text) <> '') then
    begin
      //Inicializa as variáveis
      vlLiquido := FieldByName('vlLiquido').AsCurrency;
      vlTotal := FieldByName('vlTotal').AsCurrency;
      vlDesconto := FieldByName('vlDesconto').AsFloat;
      prDesconto := FieldByName('prDesconto').AsFloat;

      ///******  INICIA CALCULO DOS VALORES  -- SERVIRÁ PARA OS DOIS TIPOS DE NOTA  ******//
      if ((Sender as TCDBEdit).Name = 'DBEqtProduto') or ((Sender as TCDBEdit).Name = 'DBEvlBruto') or
         ((Sender as TCDBEdit).Name = 'DBEvlDesconto') or ((Sender as TCDBEdit).Name = 'DBEvlTotal')  then
      begin
        vlDesconto := FieldByName('vlDesconto').AsCurrency;
        if ((Sender as TCDBEdit).Name = 'DBEvlTotal') then
          FieldByName('vlBruto').AsCurrency := (vlTotal/ FieldByName('qtProduto').AsFloat)+vlDesconto
        else
          vlTotal := FieldByName('qtProduto').AsFloat * (FieldByName('vlBruto').AsCurrency - vlDesconto);
        vlLiquido := RoundTo(vlTotal/FieldByName('qtProduto').AsFloat, FieldByName('vlLiquido').Size*-1);
        prDesconto := RoundTo((1-(vlLiquido/FieldByName('vlBruto').AsCurrency))*100, -3);
        vlDesconto := RoundTo(FieldByName('vlBruto').AsCurrency * (prDesconto/100), FieldByName('vlDesconto').Size*-1);
      end;
      if (Sender as TCDBEdit).Name = 'DBEprDesconto' then
      begin
        prDesconto := FieldByName('prDesconto').AsFloat;
        FieldByName('vlDesconto').AsFloat := RoundTo(FieldByName('vlBruto').AsCurrency * (prDesconto/100), FieldByName('vlDesconto').Size*-1);
        vlDesconto := FieldByName('vlDesconto').AsCurrency;
        vlTotal := FieldByName('qtProduto').AsFloat * (FieldByName('vlBruto').AsCurrency - vlDesconto);
        vlLiquido := RoundTo(vlTotal/FieldByName('qtProduto').AsFloat, FieldByName('vlLiquido').Size*-1);
      end;

     ///******  TRATAMENTO DOS IMPOSTOS  -- SERVIRÁ PARA OS DOIS TIPOS DE NOTA  ******//
      if trim(cdsNfEProduto.FieldByName('vlBaseIss').AsString) = '' then //serviços
         cdsNfEProduto.FieldByName('vlBaseIss').AsCurrency := 0;
      if trim(cdsNfEProduto.FieldByName('vlBaseIcms').AsString) = '' then //icms
        cdsNfEProduto.FieldByName('vlBaseIcms').AsCurrency := 0;

      if trim(cdsNfEProduto.FieldByName('vlOutrasIcms').AsString) = '' then //outras icms
        cdsNfEProduto.FieldByName('vlOutrasIcms').AsCurrency := 0;

      if trim(cdsNfEProduto.FieldByName('vlReducao').AsString) = '' then //reduçao
        cdsNfEProduto.FieldByName('vlReducao').AsCurrency := 0;

      if trim(cdsNfEProduto.FieldByName('vlIsentasIcms').AsString) = '' then //outras icms
        cdsNfEProduto.FieldByName('vlIsentasIcms').AsCurrency := 0;

      if ((Sender as TCDBEdit).Name = 'DBEvlReducao') then
        FieldByName('prReducao').AsCurrency := RoundTo((FieldByName('prReducao').AsFloat/vlTotal*100), FormatSettings.CurrencyDecimals*-1)
      else
        if FieldByName('prReducao').AsCurrency > 0 then
          FieldByName('vlReducao').AsCurrency := RoundTo(vlTotal * (FieldByName('prReducao').AsFloat/100), FormatSettings.CurrencyDecimals*-1);

      if (trim(cdsNfEProduto.FieldByName('vlBaseIpi').AsString) = '') or (cdsNfEProduto.FieldByName('vlBaseIpi').IsNull) then //outras icms
         FieldByName('vlBaseIpi').AsCurrency := 0;
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

      if FieldByName('vlTotal').AsCurrency <> vlTotal then
        FieldByName('vlTotal').AsCurrency := vlTotal;
      if FieldByName('vlLiquido').AsCurrency <> vlLiquido then
        FieldByName('vlLiquido').AsCurrency := vlLiquido;
      if FieldByName('prDesconto').AsCurrency <> prDesconto then
        FieldByName('prDesconto').AsCurrency := prDesconto;
      if FieldByName('vlDesconto').AsCurrency <> vlDesconto then
        FieldByName('vlDesconto').AsCurrency := vlDesconto;
    end;
  end; //fim do with cdsNfEProduto
  cdsNfEProdutovlOutrasIcms.AsCurrency := (cdsNfEProdutovlTotal.AsCurrency - cdsNfEProdutovlBaseIcms.AsCurrency - cdsNfEProdutovlIsentasIcms.AsCurrency);
end;

procedure TFrmNfE.CarregaImportaNFe;
var
  i : integer;
  sql : string;
begin
  //Procedure responsável por captar os dados do XML que está na tela ImportaNFe
  if (cdsEmpresaidEmpresa.AsInteger <> frmImportaNfe.cdsPadraoidEmpresa.AsInteger) or
     (cdsEmpresaidCadEmpresa.AsInteger <> frmImportaNfe.cdsPadraoidCadEmpresa.AsInteger) then
  begin
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := frmImportaNfe.cdsPadraoidEmpresa.AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := frmImportaNfe.cdsPadraoidCadEmpresa.AsInteger;
  end;

  actNovo.Execute;

  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  cdsPadraoidDocSerie.AsString := frmImportaNfe.cdsPadraoidDocSerie.AsString;
  cdsPadraoidFornecedor.AsInteger := frmImportaNfe.cdsPadraoidFornecedor.AsInteger;
  cdsPadraoidCadFornecedor.AsInteger := frmImportaNfe.cdsPadraoidCadFornecedor.AsInteger;
  //agora os dados que precisam do acbr
  with FrmImportaNFe.ACBrNFe1.NotasFiscais[0].NFe do
  begin
    cdsPadraoidNfE.AsInteger := Ide.cNF;
    DBEidNfEExit(DBEidNfE);
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadraodtEmissao.AsDateTime := Ide.dEmi;
    cdsPadraodtLancamento.AsDateTime := frmImportaNfe.cdsPadraodtLancamento.AsDateTime;

    //tenta buscar a natureza conforme o cfop --usando (-) 4000 para converter para entrada
    sql := 'SELECT TOP 1 * FROM Natureza WHERE tpNatureza = ' + QuotedStr('ENTRADA') + ' AND stNatureza = ' + QuotedStr('ATIVO') +
           ' AND idCfop = ' + Det.Items[0].Prod.CFOP; //pega o primeiro cfop da lista de produtos
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
        cdsPadraoidNatureza.AsInteger := FieldByName('idNatureza').AsInteger;
    end; //fim do with frmPrincipal.ExecutaSQLRet([], '', sql) do
    //Agora insere os produtos
    with Det do
    begin
      //Vai para aba de produtos
      PagAbas.ActivePageIndex := 1;
      //também trabalha em sincronismo com a tabela de produtos por causa do código do produto
      FrmImportaNFe.cdsProdutos.First;
      //Agora adiciona os produtos
      for i := 0 to Det.Count - 1 do
      begin
        BtnNovoProd.Click;
        cdsNfEProdutoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
        cdsNfEProdutoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
        cdsNfEProdutoidDocSerie.AsString := frmImportaNfe.cdsPadraoidDocSerie.AsString;
        cdsNfEProdutoidFornecedor.AsInteger := frmImportaNfe.cdsPadraoidFornecedor.AsInteger;
        cdsNfEProdutoidCadFornecedor.AsInteger := frmImportaNfe.cdsPadraoidCadFornecedor.AsInteger;
        cdsNfEProdutoidNfE.AsInteger := cdsPadraoidNfE.AsInteger;
        cdsNfEProdutoidProduto.AsInteger := FrmImportaNFe.cdsProdutosidProduto.AsInteger;
        //verifica se existe gerencial relacionado a esse produto se houver já grava
        sql := 'SELECT * FROM ProdGerencial WHERE idProduto = ' + FrmImportaNFe.cdsProdutosidProduto.AsString +
               ' AND idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if FieldByName('idGerencial').AsInteger > 0 then
            cdsNfEProdutoidGerencial.AsInteger := FieldByName('idGerencial').AsInteger;
        end; //fim do with frmPrincipal.ExecutaSQLRet([], '', sql) do
        cdsNfEProdutoqtProduto.AsFloat := Items[i].Prod.qCom;
        cdsNfEProdutovlBruto.AsCurrency := Items[i].Prod.vUnCom;
        if Items[i].Prod.vDesc > 0 then
        begin
          cdsNfEProdutoprDesconto.AsFloat := (Items[i].Prod.vDesc/Items[i].Prod.vProd)*100;
          cdsNfEProdutovlDesconto.AsCurrency := RoundTo(Items[i].Prod.vDesc/Items[i].Prod.qCom, -2);
        end
        else
        begin
          cdsNfEProdutoprDesconto.AsFloat := 0;
          cdsNfEProdutovlDesconto.AsCurrency := 0;
        end;
        cdsNfEProdutovlLiquido.AsCurrency := RoundTo(Items[i].Prod.vProd/Items[i].Prod.qCom, -2);
        cdsNfEProdutovlTotal.AsCurrency := Items[i].Prod.vProd;
        //Puxa os dados tributários
        if Items[i].Imposto.ICMS.pRedBC > 0 then
        begin
          cdsNfEProdutoprReducao.AsFloat := Items[i].Imposto.ICMS.pRedBC;
          cdsNfEProdutovlReducao.AsCurrency := (Items[i].Prod.vProd * Items[i].Imposto.ICMS.pRedBC)/100;
        end
        else
        begin
          cdsNfEProdutoprReducao.AsFloat := 0;
          cdsNfEProdutovlReducao.AsCurrency := 0;
        end;
        cdsNfEProdutovlBaseIcms.AsCurrency := Items[i].Imposto.ICMS.vBC;
        cdsNfEProdutoprIcms.AsFloat := Items[i].Imposto.ICMS.pICMS;
        cdsNfEProdutovlIcms.AsCurrency := Items[i].Imposto.ICMS.vICMS;
        cdsNfEProdutovlBaseIpi.AsCurrency := Items[i].Imposto.IPI.vBC;
        cdsNfEProdutoprIpi.AsFloat := Items[i].Imposto.IPI.pIPI;
        cdsNfEProdutovlIpi.AsCurrency := Items[i].Imposto.IPI.vIPI;
        //primeiro tem que verificar se existe o cfop informado
        sql := 'SELECT * FROM Cfop WHERE idCfop = ' + IntToStr((StrToInt(Items[i].Prod.CFOP)-4000));
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if FieldByName('idCfop').AsInteger > 0 then
            cdsNfEProdutoidCfop.AsInteger := FieldByName('idCfop').AsInteger;
        end;

        cdsNfEProdutovlIsentasIcms.AsFloat := 0;
        cdsNfEProdutovlOutrasIcms.AsFloat := 0;
        if Items[i].Imposto.ICMS.CST in [cst30, cst40] then
          cdsNfEProdutovlIsentasIcms.AsFloat := Items[i].Prod.vProd
        else
          cdsNfEProdutovlOutrasIcms.AsFloat := cdsNfEProdutovlTotal.AsCurrency-cdsNfEProdutovlBaseIcms.AsCurrency;
        BtnSalvarProd.Click;
        //Dando tudo certo grava a relação entre o produto e o fornecedor
        cdsProdFornecedor.Active := false;
        cdsProdFornecedor.CommandText := 'SELECT * FROM ProdutoFornecedor WHERE idProduto = ' + cdsNfEProdutoidProduto.AsString +
                                         ' AND idFornecedor = ' + cdsNfEProdutoidFornecedor.AsString;
        cdsProdFornecedor.Active := true;
        if cdsProdFornecedor.RecordCount > 0 then
          cdsProdFornecedor.Edit
        else
        begin
          cdsProdFornecedor.Append;
          cdsProdFornecedoridProduto.AsInteger := FrmImportaNFe.cdsProdutosidProduto.AsInteger;
          cdsProdFornecedoridFornecedor.AsInteger := cdsNfEProdutoidFornecedor.AsInteger;
        end;

        cdsProdFornecedorcodFornecedor.AsString := FrmImportaNFe.cdsProdutosidProdFornecedor.AsString;
        cdsProdFornecedor.Post;
        cdsProdFornecedor.ApplyUpdates(0);
        FrmImportaNFe.cdsProdutos.Next;
      end; //fim do for i := 0 to Det.Count - 1 do
    end; // fim do with Det do  --DADOS DOS PRODUTOS
    //Agora fecha a tabela de valores
    //primeiro usa a função já existente para calcular os campos que não tem valor total no xml
    CalcTotalNota;
    cdsNfEValoridEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
    cdsNfEValoridCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
    cdsNfEValoridDocSerie.AsString := cdsPadraoidDocSerie.AsString;
    cdsNfEValoridFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
    cdsNfEValoridCadFornecedor.AsInteger := cdsPadraoidCadFornecedor.AsInteger;
    cdsNfEValoridNfE.AsInteger := cdsPadraoidNfE.AsInteger;
    cdsNfEValorvlProdutos.AsCurrency := Total.ICMSTot.vProd;
    cdsNfEValorvlServicos.AsCurrency := Total.ISSQNtot.vServ;
    if Total.ICMSTot.vDesc > 0 then
      cdsNfEValorprDesconto.AsFloat := (Total.ICMSTot.vDesc/Total.ICMSTot.vProd)*100
    else
      cdsNfEValorprDesconto.AsFloat := 0;
    cdsNfEValorvlDesconto.AsCurrency := Total.ICMSTot.vDesc;
    cdsNfEValorvlBaseIcms.AsCurrency := Total.ICMSTot.vBC;
    cdsNfEValorvlBaseIss.AsCurrency := Total.ISSQNtot.vBC;
    cdsNfEValorvlIcms.AsCurrency := Total.ICMSTot.vICMS;
    cdsNfEValorvlIss.AsCurrency := Total.ISSQNtot.vISS;
    cdsNfEValorvlFrete.AsCurrency := Total.ICMSTot.vFrete;
    cdsNfEValorvlDespesas.AsCurrency := Total.ICMSTot.vOutro;
    cdsNfEValorvlSeguro.AsCurrency := Total.ICMSTot.vSeg;
    cdsNfEValorvlNotaFiscal.AsCurrency := Total.ICMSTot.vNF;

    //Por fim lança os dados do transporte
    if not (cdsNfETransporte.State in [dsEdit, dsInsert]) then
      cdsNfETransporte.Edit;
    cdsNfETransporteidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
    cdsNfETransporteidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
    cdsNfETransporteidDocSerie.AsString := cdsPadraoidDocSerie.AsString;
    cdsNfETransporteidFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
    cdsNfETransporteidCadFornecedor.AsInteger := cdsPadraoidCadFornecedor.AsInteger;
    cdsNfETransporteidNfE.AsInteger := cdsPadraoidNfE.AsInteger;
    cdsNfETransportedescTransportador.AsString := Transp.Transporta.xNome;
    cdsNfETransporteidCnpjCpf.AsString := funcao.Mascara(Transp.Transporta.CNPJCPF, 1, '');
    cdsNfETransporteidInscEstadual.AsString := Transp.Transporta.IE;
    cdsNfETransportePlaca.AsString := Transp.veicTransp.placa;
    cdsNfETransporteufPlaca.AsString := Transp.veicTransp.UF;
    cdsNfETransportedescEndereco.AsString := Transp.Transporta.xEnder;
    case Transp.modFrete of
      mfContaEmitente: cdsNfETransporteidFrete.AsInteger := 0;
      mfContaDestinatario: cdsNfETransporteidFrete.AsInteger := 1;
      mfContaTerceiros: cdsNfETransporteidFrete.AsInteger := 2;
      mfSemFrete: cdsNfETransporteidFrete.AsInteger := 3;
    end;
    if Trim(Transp.Transporta.xMun) <> '' then
      cdsNfETransporteidCidade.AsInteger := frmImportaNfe.BuscaCidade(0,Transp.Transporta.xMun, Transp.Transporta.UF)
    else
      cdsNfETransporteidCidade.AsInteger := frmImportaNfe.BuscaCidade(0,Trim(FrmImportaNFe.lookCidadeFor.Caption), Trim(FrmImportaNFe.lookEstadoFor.Caption));
    if Transp.Vol.Count > 0 then
      with Transp.Vol.Items[0] do
      begin
        cdsNfETransporteqtProduto.AsInteger := qVol;
        cdsNfETransportedescEspecie.AsString := esp;
        cdsNfETransportedescMarca.AsString := marca;
        cdsNfETransportedescNumero.AsString := nVol;
        cdsNfETransporteqtPesoBruto.AsFloat := pesoB;
        cdsNfETransporteqtPesoLiquido.AsFloat := pesoL;
      end;

    //Agora grava a NFeImporta para gerar a relação entre o XML e a nota de entrada
    cdsNfEImporta.Active := false;
    cdsNfEImporta.CommandText := 'SELECT * FROM NfEImporta WHERE 1=2';
    cdsNfEImporta.Active := true;
    cdsNfEImporta.Append;
    cdsNfEImportaidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
    cdsNfEImportaidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
    cdsNfEImportaidDocSerie.AsString := cdsPadraoidDocSerie.AsString;
    cdsNfEImportaidFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
    cdsNfEImportaidCadFornecedor.AsInteger := cdsPadraoidCadFornecedor.AsInteger;
    cdsNfEImportaidNfE.AsInteger := cdsPadraoidNfE.AsInteger;
    cdsNfEImportachaveNFe.AsString := copy(infNFe.ID, 4, 44);
  end; // fim do with FrmImportaNFe.ACBrNFe1 do


  PagAbas.ActivePageIndex := 0;
  DBEidNatureza.SetFocus;
  FrmImportaNFe.Close;
end;

procedure TFrmNfE.CarregaPedidos;
var
  sql : string;
begin
  sql := 'SELECT * FROM vPedidoCompraNFE';

  if (cdsPadrao.State = dsInsert) then
    sql := sql + ' WHERE 1=2'
  else
    if (trim(DBEidFornecedor.Text) <> '') and (trim(DBEidCadFornecedor.Text) <> '') and
       (trim(DBEidDocSerie.Text) <> '') and (trim(DBEidNfE.Text) <> '') then
       sql := sql + ' WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCadEmpresa = ' +DBEidCadEmpresa.Text +
              ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString + ' AND idCadFornecedor = ' + cdsPadraoidCadFornecedor.AsString +
              ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) + ' AND idNfE = ' + cdsPadraoidNfE.AsString
    else
      sql := sql + ' WHERE 1=2';

  cdsPedidoCompra.Active := false;
  cdsPedidoCompra.CommandText := sql;
  cdsPedidoCompra.Active := true;

end;

procedure TFrmNfE.cdsEmpresaidEmpresaValidate(Sender: TField);
begin
  inherited;
  if cdsEmpresaidEmpresa.AsInteger > 0 then
  begin
    cdsResultado.Active := false;
    cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
    cdsResultado.Active := true;
  end;
end;

procedure TFrmNfE.cdsMovCaixaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  if frmPrincipal.filial then
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text
  else
    DataSet.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresaFin;
  DataSet.FieldByName('idMovCaixa').AsInteger := 0;
  DataSet.FieldByName('dtMovCaixa').Value := cdsPadrao.FieldByName('dtLancamento').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 11; //Valor pago pelo caixa
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
end;

procedure TFrmNfE.cdsMovContaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  if frmPrincipal.filial then
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text
  else
    DataSet.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresaFin;  

  DataSet.FieldByName('idMovConta').Value := 0;
  DataSet.FieldByName('dtMovConta').Value := cdsPadrao.FieldByName('dtLancamento').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  if trim(Dataset.FieldByName('idCheque').AsString) = ''  then
    DataSet.FieldByName('idMovFinanceira').Value := 12 //Valor pago pelo banco
  else
    DataSet.FieldByName('idMovFinanceira').Value := 7; //emissão de cheque

  DataSet.FieldByName('impresso').AsString := 'N';
end;

procedure TFrmNfE.cdsNfEProdutoAfterEdit(DataSet: TDataSet);
begin
  inherited;
    if ( not (cdsPadrao.State in [dsInsert, dsEdit]) ) then
      cdsPadrao.Edit;
end;

procedure TFrmNfE.cdsNfEProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if ( not (cdsPadrao.State in [dsInsert, dsEdit]) ) then
    cdsPadrao.Edit;

  with Dataset do
  begin
    FieldByName('idEmpresa').AsInteger := 0;
    FieldByName('idCadEmpresa').AsInteger := 0;
    FieldByName('idDocSerie').AsString := '';
    FieldByName('idNfE').AsInteger := 0;
    FieldByName('idFornecedor').AsInteger := cdsPadrao.FieldByName('idFornecedor').AsInteger;
    FieldByName('idCadFornecedor').AsInteger := cdsPadrao.FieldByName('idCadFornecedor').AsInteger;
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
    FieldByName('prIpi').AsInteger := 0;
    FieldByName('vlIpi').AsInteger := 0;
    FieldByName('prIpi').AsInteger := 0;
    FieldByName('prInss').AsInteger := 0;
    FieldByName('vlIsentasIcms').AsInteger := 0;
    FieldByName('vlOutrasIcms').AsInteger := 0;
  end;

end;

procedure TFrmNfE.cdsNfEProdutoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  HabilitaResRat;
end;

procedure TFrmNfE.cdsNfERateioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsInteger := 0;
  DataSet.FieldByName('idCadEmpresa').AsInteger := 0;
  DataSet.FieldByName('idFornecedor').AsInteger := 0;
  DataSet.FieldByName('idCadFornecedor').AsInteger := 0;
  DataSet.FieldByName('idDocSerie').AsString := '';
  DataSet.FieldByName('idNfE').AsInteger := 0;
  DataSet.FieldByName('idGerencial').AsInteger := cdsNfEProduto.FieldByName('idGerencial').AsInteger;
end;

procedure TFrmNfE.cdsNfERateioAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  if not (Dataset.State in [dsInsert, dsEdit]) then
//    DataSet.Refresh;
end;

procedure TFrmNfE.cdsNfEValorAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmNfE.cdsNfEValorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With DataSet do
  begin
    FieldByName('idEmpresa').AsInteger := 0;
    FieldByName('idCadEmpresa').AsInteger := 0;
    FieldByName('idFornecedor').AsInteger := 0;
    FieldByName('idCadFornecedor').AsInteger := 0;
    FieldByName('idDocSerie').AsString := '';
    FieldByName('idNfE').AsInteger := 0;
    FieldByName('vlDesconto').Value := 0;
    FieldByName('prDesconto').Value := 0;
    FieldByName('vlDespesas').Value := 0;
    FieldByName('vlFrete').Value := 0;
    FieldByName('vlFreteFaturar').Value := 0;    
    FieldByName('vlSeguro').Value := 0;            
  end;
end;

procedure TFrmNfE.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('movCusto').AsString := 'S';
    cdsPadrao.FieldByName('movEstoque').AsString := 'S';
  end;
end;

procedure TFrmNfE.cdsPadraoAfterScroll(DataSet: TDataSet);
var
  sqlNota : string;
begin
  inherited;
  sqlNota :=' SELECT Imprime FROM DocSerie WHERE idDocSerie = ' + quotedstr(cdsPadrao.FieldByName('idDocSerie').AsString);

  actImprimir.Visible := (FrmPrincipal.ExecutaSQLRet([],'',sqlnota).FieldByName('Imprime').AsString = 'S') and (cdsPadrao.State = dsBrowse);
end;

procedure TFrmNfE.cdsTituloPagAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmNfE.cdsTituloPagAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idTituloPag').Value := 0;
  DataSet.FieldByName('idEmpresa').Value := cdsEmpresa.FieldByName('idEmpresa').Value;
  if frmPrincipal.filial then
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text
  else
    DataSet.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresaFin;
  DataSet.FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
  DataSet.FieldByName('nrTituloPag').Value := cdsPadrao.FieldByName('idNfE').Value;
  DataSet.FieldByName('vlTituloPag').Value := EDvlTotal.Value;
  DataSet.FieldByName('dtEmissao').Value := cdsPadrao.FieldByName('dtLancamento').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 2; //Inclusão de titulo a pagar
  DataSet.FieldByName('stTituloPag').Value := 'ATIVO'; //Status do titulo
  DataSet.FieldByName('incMes').Value := 'N'; //Mesmo dia

  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmNfE.cdsTituloPagidPortadorValidate(Sender: TField);
begin
  inherited;
  if Sender.Value = 1 then
  begin
    funcao.SomenteLeitura([DBEidContaFor], false);
    if trim(DBEidFornecedor.Text) <> '' then
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadGeralConta WHERE idCadGeral = ' + cdsPadraoidFornecedor.AsString + ' AND padrao = ' + QuotedStr('S')) do
      begin
        if not IsEmpty then
          cdsTituloPagidConta.AsInteger := FieldByName('idConta').AsInteger;
      end;
  end
  else
  begin
    cdsTituloPagidConta.Clear;
    funcao.SomenteLeitura([DBEidContaFor], true);
  end;

end;

procedure TFrmNfE.cdsTituloPagMovAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value ;
end;

procedure TFrmNfE.ConfigMaquina;
//procedure que irá buscar os dados quando a máquina for alterada
begin
  //zera os valores de km e hora
  if not (cdsNfEProduto.State in [dsEdit, dsInsert]) then
    cdsNfEProduto.Edit;

  cdsNfEProduto.FieldByName('hr_kmAtual').Value := 0;

  if trim(DBEidMaquina.Text) <> '' then
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidMaquina], 'spRetDadosMaquina', '') do
  begin
    First;
    //Ajusta os valores padrões
    cdsNfEProduto.FieldByName('hr_kmAtual').Value := FieldByName('hr_kmInicial').Value;
  end;
end;

procedure TFrmNfE.ConfigNatureza;
var
  join, alt : string;
begin
  //configura o lookup e o find da natureza
  join := Format('WHERE tpNatureza = %s AND tipo = %s', [QuotedStr('ENTRADA'), QuotedStr('DENTRO')]);
  FindNatureza.JoinClause.Clear;
  LookNatureza.AlternateSQL.Clear;

  if trim(lookEstadoFor.Caption) <> '' then
  begin
    if trim(lookEstadoFor.Caption) <> trim(lookEstadoEmp.Caption) then
    begin
      join := Format('WHERE tpNatureza = %s AND tipo = %s', [QuotedStr('ENTRADA'), QuotedStr('FORA')]);
      alt := Format('SELECT descNatureza FROM vNatureza WHERE tpNatureza = %s AND tipo = %s AND idNatureza = ?', [QuotedStr('ENTRADA'), QuotedStr('FORA')]);
    end;
  end;
  FindNatureza.JoinClause.Add(join);
end;

constructor TFrmNfE.create(Formulario: TComponent; Parametro: array of String);
begin
  inherited create(formulario);

  Global := false;

  Recepcao := False;
  if trim(Parametro[0]) <> '' then
    if trim(Parametro[0]) = 'ARMAZEM' then
    begin
      TabResultado.TabVisible := false;
      TabFinancas.TabVisible := false;
    end
    else
      if trim(Parametro[0]) <> '' then
        if trim(Parametro[0]) = 'GLOBAL' then
        begin
          TabResultado.TabVisible := false;
          TabFinancas.TabVisible := false;
          Global := true;
          //Desabilita alguns controles desnecessários
          DBCKMovEstoque.Visible := false;
          DBCKmovCusto.Visible := false;
          lblDeposito.Visible := false;
          DBEidProdDeposito.Visible := false;
          LookProdDeposito.Visible := false;
        end;
end;

procedure TFrmNfE.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsTituloPag.FieldByName('incMes').AsString = 'S');
  if (cdsTituloPag.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
  begin
    DBEprMulta.SetFocus;
    GeraParcelas;
  end;

end;

procedure TFrmNfE.DBCKmovEstoqueExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEidProdDeposito], trim(cdsPadrao.FieldByName('movEstoque').AsString) = 'N');
  funcao.SomenteLeitura([DBCKmovCusto], trim(cdsPadrao.FieldByName('movEstoque').AsString) = 'N');
  if (trim(cdsPadrao.FieldByName('movEstoque').AsString) = 'N') then
    if (not BtnSalvar.Focused) and (not BtnFechar.Focused) and (not BtnPesquisar.Focused) and (not BtnNovo.Focused)  then
      DBEidSafra.SetFocus;
end;

procedure TFrmNfE.DBEdiasVencimentoExit(Sender: TObject);
begin
  inherited;
  GeraParcelas;
end;

procedure TFrmNfE.DBEidMaquinaExit(Sender: TObject);
var
  idProd, idMaquina, idCadProd, idGerencial, idResultado : integer;
  idFabricante : String;
  tem : boolean;
begin
  inherited;
{  if not (BuscaChaveSec(cdsRequisicaoProd, [DBEidProduto, DBEidMaquina])) then
    if (trim(DBEidMaquina.Text) = '') and (trim(DBEidProduto.Text) <> '') then
    begin
      idProd := DBEidProduto.Text;
      with cdsRequisicaoProd do
      begin
        if State in [dsEdit, dsInsert] then
          Cancel;
        IndexFieldNames := 'idProduto';
        First;
        while not Eof do
        begin
          if (FieldByName('idProduto').AsString = idProd) and (FieldByName('idMaquina').AsString = '') then
            exit;
          Next;
        end; // fim do while not Eof do
        Append;
        FieldByName('idProduto').AsString := idProd;
      end; //fim do with cdsRequisicaoProd
    end;}
  idFabricante := cdsNfEProdutocodFabricante.AsString;
  idProd := cdsNfEProdutoidProduto.AsInteger;
  idMaquina := cdsNfEProdutoidMaquina.AsInteger;
  idGerencial := cdsNfEProdutoidGerencial.AsInteger;
  idResultado := cdsNfEProdutoidResultado.AsInteger;
  idRateio := cdsNfEProdutoidRateio.AsInteger;
  if cdsNfEProduto.State in [dsInsert, dsEdit] then
    cdsNfEProduto.Cancel;

  tem := true;
  cdsNfEProduto.IndexFieldNames := 'idProduto;idMaquina';
  if not cdsNfEProduto.FindKey([idProd,idMaquina]) then
  begin
    cdsNfEProduto.IndexFieldNames := 'idProduto';
    if not (idMaquina > 0) then
    begin
      if cdsNfEProduto.FindKey([idProd]) then
      begin
        if cdsNfEProdutoidMaquina.AsInteger > 0 then //não é o correto
        begin
          cdsNfEProduto.Filtered := false;
          cdsNfEProduto.Filter := 'idProduto = ' + IntToStr(idProd) + ' AND idMaquina IS NULL';
          cdsNfEProduto.Filtered := true;
          if cdsNfEProduto.IsEmpty then
            tem := false
          else
          begin
            idCadProd := cdsNfEProdutoidNfEProduto.AsInteger;
            cdsNfEProduto.IndexFieldNames := 'idNfEProduto';
            if not cdsNfEProduto.FindKey([idCadProd]) then
              tem := false;
          end;
          cdsNfEProduto.Filtered := false;
        end; //  fim do if cdsRequisicaoProdidMaquina.AsInteger > 0 then //não é o correto
      end
      else
        tem := false;
    end
    else
      tem := false;
  end;
  cdsNfEProduto.IndexFieldNames := '';
  if not tem then
  begin
    cdsNfEProduto.Append;
    cdsNfEProdutoidProduto.AsInteger := idProd;
    if idMaquina > 0 then
       cdsNfEProdutoidMaquina.AsInteger := idMaquina;
    cdsNfEProdutocodFabricante.AsString := idFabricante;
    if idGerencial > 0 then
      cdsNfEProdutoidGerencial.AsInteger :=  idGerencial;
    if idResultado > 0 then
     cdsNfEProdutoidResultado.AsInteger := idResultado;
    if idRateio > 0 then
      cdsNfEProdutoidRateio.AsInteger := idRateio;
  end;
  ConfigMaquina;
end;

procedure TFrmNfE.DBEidChequeExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdtVencimento], trim(DBEidCheque.Text) = '');
  if not DBEdtVencimento.ReadOnly then
    DBEdtVencimento.SetFocus;
end;

procedure TFrmNfE.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNfE.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCDBEdit).Text then
    cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

procedure TFrmNfE.DBEcodFabricanteExit(Sender: TObject);
var
  sql : String;
begin
  inherited;
  if ((Trim(DBEcodFabricante.Text) <> '') AND (cdsNfEProduto.State in [dsEdit, dsInsert])) then
  begin
    sql := 'SELECT * FROM Produto WHERE codFabricante = ' + QuotedStr(DBEcodFabricante.Text);
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 1 then
      begin
        Application.CreateForm(TFrmPesProd, FrmPesProd);
        //passa os parâmetros
        FrmPesProd.codFabricante := DBEcodFabricante.Text;
        //abre o form
        FrmPesProd.ShowModal;
        //busca o parâmetro de retorno
        cdsNfEProduto.FieldByName('idProduto').AsString := FrmPesProd.idProduto;
        cdsNfEProduto.FieldByName('codFabricante').AsString := FrmPesProd.codFabricante;
//          DBEidCadGeralExit(DBEidCadGeral);
      end
      else
      begin
        if RecordCount <= 0 then
        begin
          MessageDlg('Codigo de fabricante não encontrado, favor inserir um codigo valido!', mtInformation, [mbOK], 0);
          Exit;
        end;
        if (cdsNfEProduto.State in [dsEdit, dsInsert]) then
          cdsNfEProduto.FieldByName('idProduto').AsString := FieldByName('idProduto').AsString
      end;
    end;
  end;
end;

procedure TFrmNfE.DBEidFornecedorExit(Sender: TObject);
begin
  inherited;
//  BuscaChave(tabelas[0], chave);
//  if cdsPadrao.State in [dsEdit, dsInsert] then
//    cdsPadraoidCadFornecedor.AsInteger := 1;
  funcao.SomenteLeitura([DBEidProdDeposito], trim(cdsPadrao.FieldByName('movEstoque').AsString) = 'N');
  funcao.SomenteLeitura([DBCKmovCusto], trim(cdsPadrao.FieldByName('movEstoque').AsString) = 'N');
  ConfigNatureza;
end;

procedure TFrmNfE.DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmNfE.DBEidNfEExit(Sender: TObject);
var
  sqlNota : string;
begin
  inherited;
  //significa q está entrando por pedido
//  if origem <> 'Normal' then
//    exit;

  if not Global then
  begin
    if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or
        (trim(DBEidDocSerie.Text) = '') or (trim(DBEidNfE.Text) = '') then
    begin
      Habilita(false); //desabilita os controles
      exit;
    end;
    Habilita(true); //habilita os controles
    BuscaChave(Tabelas[0], chave);
    AbreTabSecundaria;
//    DBEdtEmissao.SetFocus;
    CarregaPedidos;
    IniciaFinancas;
    HabilitaResRat;
  end
  else //Para quando for emissão de NFE Global
  begin
    if (trim(DBEidNfe.Text) = '') and (not BtnFechar.Focused) then
    begin
      messagedlg('Você deve informar um número de nota!', mtwarning, [mbok], 0);
      if origem = 'Normal' then
        DBEidNfe.SetFocus;
      exit;
    end;
    sqlNota := 'SELECT COUNT(*) qtde FROM Nfe WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
           ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString + ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) +
           ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString + ' AND idCadFornecedor = ' + cdsPadraoidCadFornecedor.AsString +
           ' AND idNfe = ' + cdsPadraoidNfE.AsString;
    if frmPrincipal.ExecutaSQLRet([], '', sqlNota).FieldByName('qtde').AsInteger > 0 then
    begin
      messagedlg('Número de nota fiscal já existente!', mtwarning, [mbok], 0);
      if origem = 'Normal' then
        DBEidNfe.SetFocus;
      exit;
    end;
  end;
  sql := '';
  sqlPed := '';
  sqlSta := '';
  BtnBuscaPedido.Enabled := (cdsPadrao.State in [dsInsert]) and (trim(DBEidFornecedor.Text) <> '') and
                            (trim(DBEidDocSerie.Text) <> '') and (trim(DBEidNfE.Text) <> '');

  //Verifica se não é nota relacionada a pedido de compra
//  sqlNota := 'SELECT COUNT(*) qtde FROM PedidoCompraNfe WHERE idEmpresa = ' + DBEidEmpresa.Text +
//           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) +
//           ' AND idFornecedor = ' + DBEidFornecedor.Text + ' AND idCadFornecedor = ' + DBEidCadFornecedor.Text +
//           ' AND idNfe = ' + DBEidNfe.Text;
//  funcao.SomenteLeitura([DBEqtProduto], frmPrincipal.ExecutaSQLRet([], '', sqlNota).FieldByName('qtde').AsInteger > 0);

  if (not BtnFechar.Focused) and (not BtnCancelar.Focused) and (not BtnExcluir.Focused) and (not BtnPesquisar.Focused) and (not BtnNovo.Focused) then
    if (PagAbas.ActivePageIndex = 0) and (DBEdtEmissao.Enabled) then
      if origem = 'Normal' then
        DBEdtEmissao.SetFocus;
  sql := 'SELECT * FROM NfRelac WHERE idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) +
         ' AND idCadGeral = ' + cdsPadraoidFornecedor.AsString + ' AND idNf = ' + cdsPadraoidNfE.AsString +
         ' AND tpNF = ' + QuotedStr('E');
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      bloqueada := True;
      funcao.SomenteLeitura([DBEidFornecedor, DBEidCadFornecedor, DBEidDocSerie, DBEidNfE,
                            DBEdtEmissao, DBEdtLancamento, DBEidNatureza, DBEidProdDeposito,
                            DBEidSafra, DBEidIndice1, DBMobsNfE, DBMcompNfE, DBEidProdDeposito], bloqueada);
    end;
  end;
end;

procedure TFrmNfE.DBEidProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidProduto.Text;
end;

procedure TFrmNfE.DBEidProdutoExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if Trim(DBEidProduto.Text) <> '' then
  begin
    sql := 'SELECT * FROM Produto WHERE idProduto = ' + cdsNfEProdutoidProduto.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if FieldByName('stProduto').AsString = 'CANCELADO' then
      begin
        MessageDlg('Produto Cancelado, favor verificar!', mtWarning, [mbOK], 0);
        DBEidProduto.SetFocus;
        Exit;
      end;
    end;
  end;

  if Trim(DBEidProduto.Text) <> '' then
  begin
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ProdGerencial WHERE idProduto = ' + cdsNfEProdutoidProduto.AsString) do
    begin
      if cdsPadrao.State = dsInsert then
      begin
        if FieldByName('idGerencial').AsInteger > 0 then
          cdsNfEProdutoidGerencial.AsInteger := FieldByName('idGerencial').AsInteger;
        if FieldByName('idResultado').AsInteger > 0 then
          cdsNfEProdutoidResultado.AsInteger := FieldByName('idResultado').AsInteger;
        HabilitaResRat;
      end;
    end;
  end;
end;

procedure TFrmNfE.DBEidRateio1Exit(Sender: TObject);
begin
  inherited;
  HabilitaResRat;
end;

procedure TFrmNfE.DBEidResultado1Exit(Sender: TObject);
begin
  inherited;
  HabilitaResRat;
end;

procedure TFrmNfE.DBEidResultadoRTExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsNfERateio, [DBEidGerencialRT, DBEidResultadoRT]);
end;

procedure TFrmNfE.DBEobsTituloPagExit(Sender: TObject);
begin
  inherited;
  PagTituloPag.ActivePageIndex := 1;
  PagTituloPag.Align := alclient;
  BtnSalvar.SetFocus;
end;

procedure TFrmNfE.DBEprRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNfE.DBEprRateioExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCDBEdit).Text then
  begin
    //Campos do rateio no valor da nota
    if (Sender as TCDBEdit).Name = 'DBEprRateio' then
      cdsNfERateio.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsNfEValor.FieldByName('vlNotaFiscal').Value *
                               cdsNfERateio.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateio' then
      cdsNfERateio.FieldByName('prRateio').Value :=
         RoundTo(((cdsNfERateio.FieldByName('vlRateio').Value /
                   cdsNfEValor.FieldByName('vlNotaFiscal').Value) * 100), -3);
  end;
end;

procedure TFrmNfE.DBEqtProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNfE.DBEqtProdutoExit(Sender: TObject);
begin
  inherited;
  vlAtual := (Sender as TCDBEdit).Text;
    calculaprodutos(Sender);
end;

procedure TFrmNfE.DBEvlBaseIcmsEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNfE.DBEvlBaseIcmsExit(Sender: TObject);
begin
  inherited;
  {if  begin
    if cdsNfEProdutovlBaseIcms.AsCurrency > 0 then
    begin
      if cdsNfEProdutovlOutrasIcms.AsCurrency > 0 then
        cdsNfEProdutovlOutrasIcms.AsCurrency := (cdsNfEProdutovlOutrasIcms.AsCurrency - cdsNfEProdutovlBaseIcms.AsCurrency)
      else
        cdsNfEProdutovlOutrasIcms.AsCurrency := (cdsNfEProdutovlTotal.AsCurrency - cdsNfEProdutovlBaseIcms.AsCurrency);
    end;
  end;}
end;

procedure TFrmNfE.DBEvlBaseIssEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNfE.DBEvlBaseIssExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEvlBaseIss.Text then
  begin
    if cdsNfEProdutovlBaseIss.AsCurrency > 0 then
    begin
      if cdsNfEProdutovlOutrasIcms.AsCurrency > 0 then
        cdsNfEProdutovlOutrasIcms.AsCurrency := (cdsNfEProdutovlOutrasIcms.AsCurrency - cdsNfEProdutovlBaseIss.AsCurrency)
      else
        cdsNfEProdutovlOutrasIcms.AsCurrency := (cdsNfEProdutovlTotal.AsCurrency - cdsNfEProdutovlBaseIss.AsCurrency);
    end;
  end;
end;

procedure TFrmNfE.DBEvlDescontoTotExit(Sender: TObject);
begin
  inherited;
  if DBEvlDescontoTot.Text <> '' then
    cdsPadraovlDesconto.AsFloat := RoundTo(cdsPadraovlDesconto.AsFloat, -2);
end;

procedure TFrmNfE.DBEvlDespesasExit(Sender: TObject);
var
  vlProdServ : currency;
begin
  inherited;
  with cdsNfEValor do
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

procedure TFrmNfE.DBEvlIsentasIcmsEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEvlIsentasIcms.Text;
end;

procedure TFrmNfE.DBEvlIsentasIcmsExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEvlIsentasIcms.Text then
    cdsNfEProdutovlOutrasIcms.AsCurrency := (cdsNfEProdutovlTotal.AsCurrency - cdsNfEProdutovlBaseIcms.AsCurrency - cdsNfEProdutovlIsentasIcms.AsCurrency);
end;

procedure TFrmNfE.DBEvlOutrasIcmsExit(Sender: TObject);
begin
  inherited;
//  vlAtual := (Sender as TCDBEdit).Text;
//    calculaprodutos(Sender);
end;

procedure TFrmNfE.DBEvlTituloPagEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEvlTituloPag.Text;
end;

procedure TFrmNfE.DBEvlTituloPagExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> DBEvlTituloPag.Text) and (vlAnterior <> '') then
  begin
    GeraParcelas;
  end;
end;

procedure TFrmNfE.DBMcompNfEExit(Sender: TObject);
begin
  inherited;
  PagAbas.ActivePageIndex := 1;
  PagAbasChange(PagAbas);
  if (TabProdutos.Enabled) and (DBEidProduto.Enabled) then
    DBEidProduto.SetFocus;
end;

procedure TFrmNfE.dsNfEProdutoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd);
end;

procedure TFrmNfE.dsNfERateioStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;

procedure TFrmNfE.dsPadraoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  If Assigned(Field) And (Field.DataSet.Tag = 0) Then
     Begin
       If (Field.DataSet.State in dsEditModes) Then
       Begin
            //
            If (Field.FieldName = 'idSafra') And
               (cdsTituloPag.Active) And
               (cdsTituloPag.RecordCount = 1) And
               (cdsTituloPag.FieldByName('idSafra').AsInteger <> Field.Value) Then
               Begin
                 //
                 If (cdsTituloPag.State = dsBrowse) Then
                    cdsTituloPag.Edit;
                 //
                 cdsTituloPag.FieldByName('idSafra').AsInteger := Field.Value;
                 //
               End;
            //
            If (Field.FieldName = 'idGerencial') And
               (cdsTituloPag.Active) And
               (cdsTituloPag.RecordCount = 1) And
               (cdsTituloPag.FieldByName('idGerencial').AsInteger <> Field.Value) Then
               Begin
                 //
                 If (cdsTituloPag.State = dsBrowse) Then
                    cdsTituloPag.Edit;
                 //
                 cdsTituloPag.FieldByName('idGerencial').AsInteger := Field.Value;
                 //
               End;
            //
            If (Field.FieldName = 'idRateio') And
               (cdsTituloPag.Active) And
               (cdsTituloPag.RecordCount = 1) And
               (cdsTituloPag.FieldByName('idRateio').AsInteger <> Field.Value) Then
               Begin
                 //
                 If (cdsTituloPag.State = dsBrowse) Then
                    cdsTituloPag.Edit;
                 //
                 cdsTituloPag.FieldByName('idRateio').AsInteger := Field.Value;
                 //
               End;
            //
          End;
       //
     End;
  //
end;

procedure TFrmNfE.dsPadraoStateChange(Sender: TObject);
var
  sqlNota : string;
begin
  inherited;
  actExcluir2.Enabled := actExcluir.Enabled;

  actExcluir2.Enabled := not (cdsPadrao.State in [dsEdit, dsInsert]);

  sqlNota :=' SELECT Imprime, idDocSerie FROM DocSerie WHERE idDocSerie = ' + quotedstr(cdsPadrao.FieldByName('idDocSerie').AsString);
  actImprimir.Visible := (FrmPrincipal.ExecutaSQLRet([],'',sqlNota).FieldByName('Imprime').AsString = 'S') and (cdsPadrao.State = dsBrowse);

end;

procedure TFrmNfE.dspMovCaixaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspMovCaixa' then
    begin
      GeraAutoInc(DeltaDS, 'MovCaixa', 'idMovCaixa', []);
      DeltaDS.FieldByName('idMovFinanceira').NewValue := 11; //Valor pago pelo caixa
      DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
    end
    else
      if (Sender as TDataSetProvider).Name = 'dspMovConta' then
      begin
        GeraAutoInc(DeltaDS, 'MovConta', 'idMovConta', []);
        if trim(DBEdtCompensacao.Text) = '' then
          DeltaDS.FieldByName('dtMovConta').NewValue := cdsPadrao.FieldByName('dtLancamento').Value
        else
          DeltaDS.FieldByName('dtMovConta').NewValue := DeltaDS.FieldByName('dtCompensacao').Value;
        DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
        if trim(DeltaDS.FieldByName('idCheque').AsString) = ''  then
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 12 //Valor pago pelo banco
        else
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 7; //Emissão de cheque
      end
      else
        if (Sender as TDataSetProvider).Name = 'dspTituloPag' then
        begin
          GeraAutoInc(DeltaDS, 'TituloPag', 'idTituloPag', []);
          DeltaDS.FieldByName('idEmpresa').NewValue := cdsEmpresa.FieldByName('idEmpresa').Value;
          DeltaDS.FieldByName('idFornecedor').NewValue := cdsPadrao.FieldByName('idFornecedor').Value;
          DeltaDS.FieldByName('dtEmissao').NewValue := cdsPadrao.FieldByName('dtLancamento').Value;
          DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 2; //Inclusão de titulo a pagar
          DeltaDS.FieldByName('stTituloPag').NewValue := 'ATIVO'; //Status do titulo                    
        end;
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmNfE.dspNfEProdutoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspNfEProduto' then
    begin
      GeraAutoInc(DeltaDS, 'NfEProduto', 'idNfEProduto', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmNfE.dspNfERateioBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspNfERateio' then
    begin
      GeraAutoInc(DeltaDS, 'NfERateio', 'idNfERateio', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmNfE.dspTituloPagMovBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  DeltaDS.FieldByName('idTituloPag').NewValue := cdsTituloPagidTituloPag.AsInteger;
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
    begin
      GeraAutoInc(DeltaDS, 'TituloPagMov', 'idTituloPagMov', []);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmNfE.dsTituloPagParcStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc)
end;

procedure TFrmNfE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsNfEProduto.IndexFieldNames := '';
  cdsNfERateio.IndexFieldNames := '';
  cdsTemp.IndexFieldNames := '';
  inherited;
  FrmNfE := nil;
end;

procedure TFrmNfE.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 5);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsNfEProduto;
  Tabelas[2] := cdsNfEValor;
  Tabelas[3] := cdsNfETransporte;
  Tabelas[4] := cdsNfERateio;

  SetLength(chave, 6);

  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidDocSerie;
  chave[3] := DBEidNfE;
  chave[4] := DBEidFornecedor;
  chave[5] := DBEidCadFornecedor;

  tab_chave := 'NfE';
  situacao := 'stNfE';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  some := false;
  sql := '';
  sqlPed := '';
  sqlSta := '';
  Habilita(false); //desabilita os controles
  Global := false;
  //variável q trata de onde veio para executar as rotinas do show
  origem := 'Normal';
  cdsTemp.CreateDataSet;
end;

procedure TFrmNfE.FormShow(Sender: TObject);
begin
  action := 'actLanNfe';
  foco := DBEidFornecedor;
  if (origem = 'Normal') or (origem = 'Importação') then
    inherited;
  Height := 600;
  Width := 686;

  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
  foco.TabStop := true;


  funcao.SomenteLeitura([DBEidContaFor], true);
  BtnBuscaPedido.Enabled := false;
  Bloqueada := False;

  actExcluir2.Visible := excluir;

  if (origem = 'Importação') then
    CarregaImportaNFe;

end;

procedure TFrmNfE.GeraMovimentacao;
begin
  with cdsTituloPagMov do
  begin
    if not Active then
      Active := true;
    cdsTituloPagParc.First;
    while not cdsTituloPagParc.Eof do
    begin
      if cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
      begin
        //se a movimentação nao estiver limpa ele limpa a tabela
        Filtered := false;
        Filter := 'idParcela = ' + cdsTituloPagParc.FieldByName('idParcela').AsString;
        Filtered := true;
        if RecordCount > 0 then
        begin
          Delete;
          if (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) then
            ApplyUpdates(0);
        end;
        Filtered := false;

        Append;
        FieldByName('idTituloPagMov').Value := 0;
        if trim(cdsTituloPag.FieldByName('idTituloPag').AsString) <> '' then
          FieldByName('idTituloPag').Value := cdsTituloPag.FieldByName('idTituloPag').Value
        else
          FieldByName('idTituloPag').Value := 0;
        FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
        FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
        FieldByName('idParcela').Value := cdsTituloPagParc.FieldByName('idParcela').Value;
        FieldByName('idMovFinanceira').Value := cdsTituloPag.FieldByName('idMovFinanceira').Value;
        FieldByName('dtTituloPagMov').Value := cdsTituloPag.FieldByName('dtEmissao').Value;
        FieldByName('vlTituloPagMov').Value := cdsTituloPagParc.FieldByName('vlParcela').Value;
        FieldByName('fator').Value := 1;
        Post;
      end; // fim do if cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
      cdsTituloPagParc.Next;
    end;
    cdsTituloPagParc.First;
  end;
end;

procedure TFrmNfE.GeraParcelas;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  if not cdsTituloPagParc.IsEmpty then
    if messagedlg('Deseja recalcular as parcelas?', mtConfirmation, [mbyes, mbno], 0) = mrno then
      exit;

  if not funcao.VerCampoRequerido([cdsTituloPag], 'idEmpresa,idCadEmpresa,idFornecedor,idSafra,dtEmissao,idMovFinanceira,idTituloPag,nrTituloPag,diasVencimento,prMulta,prJuros,prDesconto,stTituloPag') then
  begin
    PagTituloPag.ActivePageIndex := 0;
    exit;
  end;

  with cdsTituloPag do
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

    cdsNfEProduto.First;
    if cdsNfEProdutoidGerencial.AsInteger > 0 then
      FieldByName('idGerencial').AsInteger := cdsNfEProdutoidGerencial.AsInteger;
    if cdsNfEProdutoidResultado.AsInteger > 0 then
      FieldByName('idResultado').AsInteger := cdsNfEProdutoidResultado.AsInteger;
    if (cdsNfEProdutoidRateio.AsInteger > 0) AND (cdsNfEProdutoidResultado.AsInteger < 0) then
      FieldByName('idRateio').AsInteger := cdsNfEProdutoidRateio.AsInteger;

    if (not (FieldByName('vlTituloPag').Value > 0)) or
       (not (FieldByName('qtParcelas').Value > 0)) or
       ((not(FieldByName('diasVencimento').Value > 0)) and (FieldByName('incMes').AsString = 'N') and
       (FieldByName('qtParcelas').Value > 1)) or
       (not (trim(FieldByName('dtVencimentoIni').AsString) <> '')) then
    begin
      messagedlg('Para gerar as parcelas são necessários os campos: ' + #13 +
                 'Valor do Titulo; Parcelas; Primeiro Vencimento; Dias entre Parcelas', mterror, [mbok], 0);
      PagTituloPag.ActivePageIndex := 0;
      exit;
    end;
    if (FieldByName('dtVencimentoIni').Value < FieldByName('dtEmissao').Value) then
    begin
      messagedlg('O primeiro vencimento da parcela não pode ser menor que a data de emissão do título!',
                 mterror, [mbok], 0);
      PagTituloPag.ActivePageIndex := 0;
      DBEdtVencimentoIni.SetFocus;
      exit;
    end;

      //limpa a tabela se houverem registros nela
    if not cdsTituloPagParc.IsEmpty then
       begin
         //
         with cdsTituloPagMov do
         begin
           First;
           while not Eof do
           begin
             delete;
             first;
           end;
         end;
         //
         with cdsTituloPagParc do
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
    vlParcela := funcao.ArredondaMoeda(FieldByName('vlTituloPag').Value/FieldByName('qtParcelas').AsInteger);
    vlPrimeira := FieldByName('vlTituloPag').Value-(vlParcela*(FieldByName('qtParcelas').AsInteger-1));
    dtParcela := FieldByName('dtVencimentoIni').AsDateTime;
    for i := 1 to FieldByName('qtParcelas').AsInteger do
    begin
      cdsTituloPagParc.Append;
      if trim(FieldByName('idTituloPag').AsString) = '' then
        cdsTituloPagParc.FieldByName('idTituloPag').Value := 0
      else
        cdsTituloPagParc.FieldByName('idTituloPag').Value := FieldByName('idTituloPag').Value;
      cdsTituloPagParc.FieldByName('idParcela').Value := i;
//      if not (cdsTituloPagParc.FieldByName('dtVencimento').AsDateTime <> FieldByName('dtVencimentoIni').AsDateTime) then
        cdsTituloPagParc.FieldByName('dtVencimento').Value := dtParcela;
      cdsTituloPagParc.FieldByName('stTituloPagParc').AsString := 'ATIVO';      
      if i = 1 then
        cdsTituloPagParc.FieldByName('vlParcela').Value := vlPrimeira
      else
        cdsTituloPagParc.FieldByName('vlParcela').Value := vlParcela;
      cdsTituloPagParc.Post;
      if FieldByName('incMes').AsString = 'S' then
        dtParcela := IncMonth(FieldByName('dtVencimentoIni').AsDateTime, i)
      else
        dtParcela := dtParcela + FieldByName('diasVencimento').Value;
    end; //fim do for i := 1 to FieldByName('qtParcelas').AsInteger do
  end; //fim do with cdsTituloPag do
  SomaParcelas;
  GeraMovimentacao;
end;

procedure TFrmNfE.GeraRateio;
var
  vlMaior, vlDiferenca, vlGerencial : currency;
  idMaior, idGerencial, idRat : integer;
  sqlRateio : String;
begin
  idRat := 0;
  if not Recepcao then
  begin
    if not (cdsNfEProduto.FieldByName('idGerencial').Value > 0) then
    begin
      messagedlg('Produto sem Centro Gerencial cadastrado! Rateio não pode ser gerado!', mtwarning, [mbok], 0);
      exit;
    end; // fim do if not (FieldByName('idGerencial').Value > 0) then
  end;
  vlGerencial := cdsNfEProdutovlTotal.AsCurrency;
  if not cdsTemp.Active then
    cdsTemp.Open;

  if Trim(DBEidRateio1.Text) <> '' then
  begin
    sqlRateio := 'SELECT idNfERateio FROM NfERateio ' +
                   ' WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
                   ' AND idCadEmpresa = ' + cdsEmpresaidCadEmpresa.AsString +
                   ' AND idDocSerie = ' +  QuotedStr(DBEidDocSerie.Text) +
                   ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString +
                   ' AND idCadFornecedor = ' + cdsPadraoidCadFornecedor.AsString +
                   ' AND idNfE = ' + cdsPadraoidCadFornecedor.AsString +
                   ' AND idGerencial = ' + cdsNfEProdutoidGerencial.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sqlRateio) do
    if FieldByName('idNfERateio').IsNull then
      idRat := 1
    else
      idRat := idRat + 1;
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidRateio1], '', 'RateioItem') do
    begin
      First;
      vlMaior := 0;
      idMaior := 0;
      while not Eof do
      begin
        cdsTemp.Append;
        cdsTemp.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
        cdsTemp.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
        cdsTemp.FieldByName('idDocSerie').AsString := DBEidDocSerie.Text;
        cdsTemp.FieldByName('idNfE').AsString := '0';
        cdsTemp.FieldByName('idFornecedor').AsString := cdsPadraoidFornecedor.AsString;
        cdsTemp.FieldByName('idCadFornecedor').AsString := cdsPadraoidCadFornecedor.AsString;
        cdsTemp.FieldByName('idGerencial').AsInteger := cdsNfEProdutoidGerencial.AsInteger;
        cdsTemp.FieldByName('idRateio').AsInteger := cdsNfEProdutoidRateio.AsInteger;
        cdsTemp.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
        cdsTemp.FieldByName('idNfERateio').AsInteger := idRat;
        cdsTemp.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
        cdsTemp.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsNfEProdutovlTotal.AsFloat*FieldByName('prRateio').AsFloat)/100);
        //para registrar quem tem o maior valor
        if vlMaior < cdsNfERateio.FieldByName('vlRateio').Value then
        begin
           idMaior := cdsTempidResult.AsInteger;
           idGerencial := cdsTempidGerencial.AsInteger;
           vlMaior := cdsTempvlRateio.Value;
        end;
        cdsTemp.Post;
        Next;
      end; //fim do laço do rateio
    end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
     SomaRateio;
    //inicia processo para ajuste de valor caso haja diferença joga para o maior
    with cdsTemp do
    begin
      if (vlTotalRateio <>  vlGerencial) then
      begin
        vlDiferenca := vlGerencial - vlTotalRateio;
        IndexFieldNames := 'idResultado';
        FindKey([idMaior]);
        Edit;
        FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
        Post;
        IndexFieldNames := '';
      end;
    end; //fim do With cdsNfERateio
    TransfRateio;
  end;
  if Trim(DBEidResultado1.Text) <> '' then
  begin
    sqlRateio := 'SELECT idNfERateio FROM NfERateio ' +
                 ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                 ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                 ' AND idDocSerie = ' +  QuotedStr(DBEidDocSerie.Text) +
                 ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString +
                 ' AND idCadFornecedor = ' + cdsPadraoidCadFornecedor.AsString +
                 ' AND idNfE = ' + cdsPadraoidNFe.AsString +
                 ' AND idGerencial = ' + cdsNfEProdutoidGerencial.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sqlRateio) do
    if RecordCount = 0 then
      idRat := 1
    else
      idRat := idRat + 1;
    cdsTemp.Append;
    cdsTemp.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    cdsTemp.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    cdsTemp.FieldByName('idDocSerie').AsString := DBEidDocSerie.Text;
    cdsTemp.FieldByName('idNfE').AsString := '0';
    cdsTemp.FieldByName('idFornecedor').AsString := cdsPadraoidFornecedor.AsString;
    cdsTemp.FieldByName('idCadFornecedor').AsString := cdsPadraoidCadFornecedor.AsString;
    cdsTemp.FieldByName('idGerencial').AsInteger := cdsNfEProdutoidGerencial.AsInteger;
    cdsTemp.FieldByName('idResultado').AsInteger := cdsNfEProdutoidResultado.AsInteger;
    cdsTemp.FieldByName('idNfERateio').AsInteger := idRat;
    cdsTemp.FieldByName('prRateio').Value := 100;
    cdsTemp.FieldByName('vlRateio').Value := cdsNfEProdutovlTotal.AsFloat;
    cdsTemp.Post;
    SomaRateio;
    TransfRateio;
  end; //if trim(DBEidResultado.text) <> '' then
end;

procedure TFrmNfE.Habilita(bol : boolean);
begin
  TabProdutos.enabled := bol;
  TabImpostos.Enabled := bol;
  TabFinancas.Enabled := bol;
  TabResultado.Enabled := bol;
//  btnSalvar.Enabled := bol;

  //usa o not bol por se tratar do readonly ou seja enabled = true significa readonly = false
  funcao.SomenteLeitura([DBEdtEmissao, DBEdtLancamento, DBEidNatureza, DBCKmovEstoque, DBCKmovCusto,
                        DBEidProdDeposito, DBEidSafra, DBEidGerencial, DBMobsNfE, DBMcompNfE], not bol);
//  IniciaFinancas;
end;

procedure TFrmNfE.HabilitaResRat;
begin
  funcao.SomenteLeitura([DBEidResultado1, DBEidRateio1], false);
  if trim(cdsNfEProdutoidResultado.AsString) <> '' then
  begin
    funcao.SomenteLeitura([DBEidRateio1], true);
    funcao.SomenteLeitura([DBEidResultado1], false);
  end
  else
    if trim(cdsNfEProdutoidRateio.AsString) <> '' then
    begin
      funcao.SomenteLeitura([DBEidRateio1], false);
      funcao.SomenteLeitura([DBEidResultado1], true);
    end;
end;

procedure TFrmNfE.IniciaFinancas;
begin
  //verifica para deixar disponível para inserção as tabelas financeiras
  cdsMovCaixa.Active := false;
  cdsMovCaixa.CommandText := 'SELECT * FROM MovCaixa WHERE 1=2';
  cdsMovConta.Active := false;
  cdsMovConta.CommandText := 'SELECT * FROM MovConta WHERE 1=2';
  cdsTituloPag.Active := false;
  cdsTituloPag.CommandText := 'SELECT * FROM TituloPag WHERE 1=2';
  cdsTituloPag.Active := true;
  cdsTituloPagParc.Active := false;
  cdsTituloPagParc.CommandText := 'SELECT * FROM TituloPagParc WHERE 1=2';
  cdsTituloPagMov.Active := False;
  cdsTituloPagMov.CommandText := 'SELECT * FROM TituloPagMov WHERE 1=2';

  if (trim(DBEidFornecedor.Text) <> '') then
    if (trim(DBEidCadFornecedor.Text) <> '') then
      if (trim(DBEidDocSerie.Text) <> '') then
        if (trim(DBEidNfE.Text) <> '') then
        begin
          if cdsPadrao.State <> dsInsert then
          begin
            with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidNfE, DBEidFornecedor, DBEidCadFornecedor], '', 'NfEFinanc') do
            begin
              if IsEmpty then
                exit;
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
              if FieldByName('idTituloPag').Value > 0 then
              begin
                cdsTituloPag.Active := False;
                cdsTituloPag.CommandText := 'SELECT * FROM TituloPag WHERE idTituloPag = ' + FieldByName('idTituloPag').AsString;
                cdsTituloPagParc.Active := False;
                cdsTituloPagParc.CommandText := 'SELECT * FROM TituloPagParc WHERE idTituloPag = ' + FieldByName('idTituloPag').AsString;
                cdsTituloPagMov.Active := False;
                cdsTituloPagMov.CommandText := 'SELECT * FROM TituloPagMov WHERE idTituloPag = ' + FieldByName('idTituloPag').AsString;
                cdsTituloPagMov.Active := True;
              end;
            end; // fim do with
          end; // fim do if cdsPadrao.state then
        end;

  cdsMovCaixa.Active := true;
  cdsMovConta.Active := true;
  cdsTituloPag.Active := true;
  cdsTituloPagMov.Active := True;

  TabTituloPag.Enabled := (cdsTituloPag.RecordCount = 0) Or (cdsTituloPag.FieldByName('stTituloPag').asString = 'ATIVO');
  cdsTituloPagParc.Active := true;
end;

procedure TFrmNfE.InsereTituloRat;
var
  sql : string;
begin
  //Procedure Responsavel por inserir  rateios de titulo, Caixa e conta
  if cdsTituloPagidTituloPag.AsInteger > 0 then
  begin
    cdsTmp.Active := False;
    cdsTmp.CommandText := 'SELECT * FROM TituloPagRateio WHERE 1=1';
    cdsTmp.Active := True;
    sql := 'SELECT * FROM TituloPagRateio WHERE idEmpresa = ' + cdsTituloPagidEmpresa.AsString +
           ' AND idCadEmpresa = ' + cdsTituloPagidCadEmpresa.AsString +
           ' AND idTituloPag = ' + cdsTituloPagidTituloPag.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        sql := 'DELETE FROM TituloPagRateio WHERE idEmpresa = ' + cdsTituloPagidEmpresa.AsString +
               ' AND idCadEmpresa = ' + cdsTituloPagidCadEmpresa.AsString +
               ' AND idTituloPag = ' + cdsTituloPagidTituloPag.AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
        if not cdsTmp.Active then
          cdsTmp.Open;
        cdsNfERateio.First;
        while not cdsNfERateio.Eof do
        begin
          cdsTmp.Append;
          cdsTmp.FieldByName('idEmpresa').AsInteger := cdsNfERateioidEmpresa.AsInteger;
          cdsTmp.FieldByName('idCadEmpresa').AsInteger := cdsNfERateioidCadEmpresa.AsInteger;
          cdsTmp.FieldByName('idTituloPag').AsInteger := cdsTituloPagidTituloPag.AsInteger;
          cdsTmp.FieldByName('idResultado').AsInteger := cdsNfERateioidResultado.AsInteger;
          cdsTmp.FieldByName('idGerencial').AsInteger := cdsNfERateioidGerencial.AsInteger;
          cdsTmp.FieldByName('prRateio').AsFloat := cdsNfERateioprRateio.AsFloat;
          cdsTmp.FieldByName('vlRateio').AsFloat := cdsNfERateiovlRateio.AsFloat;
          cdsTmp.FieldByName('idParcela').AsInteger := 1;
          cdsTmp.Post;
          cdsTmp.ApplyUpdates(0);
          cdsNfERateio.Next;
        end;
      end
      else
      begin
        if not cdsTmp.Active then
          cdsTmp.Open;
        cdsNfERateio.First;
        while not cdsNfERateio.Eof do
        begin
          cdsTmp.Append;
          cdsTmp.FieldByName('idEmpresa').AsInteger := cdsNfERateioidEmpresa.AsInteger;
          cdsTmp.FieldByName('idCadEmpresa').AsInteger := cdsNfERateioidCadEmpresa.AsInteger;
          cdsTmp.FieldByName('idTituloPag').AsInteger := cdsTituloPagidTituloPag.AsInteger;
          cdsTmp.FieldByName('idResultado').AsInteger := cdsNfERateioidResultado.AsInteger;
          cdsTmp.FieldByName('idGerencial').AsInteger := cdsNfERateioidGerencial.AsInteger;
          cdsTmp.FieldByName('prRateio').AsFloat := cdsNfERateioprRateio.AsFloat;
          cdsTmp.FieldByName('vlRateio').AsFloat := cdsNfERateiovlRateio.AsFloat;
          cdsTmp.FieldByName('idParcela').AsInteger := 1;
          cdsTmp.Post;
          cdsTmp.ApplyUpdates(0);
          cdsNfERateio.Next;
        end;
      end;
    end;
  end
  else
    if cdsMovCaixa.FieldByName('idMovCaixa').AsInteger > 0 then
    begin
      cdsTmp.Active := False;
      cdsTmp.CommandText := 'SELECT * FROM MovCaixaRateio WHERE 1=1';
      cdsTmp.Active := True;
      sql := 'SELECT * FROM MovCaixaRateio WHERE idEmpresa = ' + cdsMovCaixa.FieldByName('idEmpresa').AsString +
             ' AND idCadEmpresa = ' + cdsMovCaixa.FieldByName('idCadEmpresa').AsString +
             ' AND idMovCaixa = ' + cdsMovCaixa.FieldByName('idMovCaixa').AsString;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          sql := 'DELETE FROM MovCaixaRateio WHERE idEmpresa = ' + cdsMovCaixa.FieldByName('idEmpresa').AsString +
                 ' AND idCadEmpresa = ' + cdsMovCaixa.FieldByName('idCadEmpresa').AsString +
                 ' AND idMovCaixa = ' + cdsMovCaixa.FieldByName('idMovCaixa').AsString;
          dmPadrao.dbConexao.ExecuteDirect(sql);
          if not cdsTmp.Active then
            cdsTmp.Open;
          cdsNfERateio.First;
          while not cdsNfERateio.Eof do
          begin
            cdsTmp.Append;
            cdsTmp.FieldByName('idEmpresa').AsInteger := cdsNfERateioidEmpresa.AsInteger;
            cdsTmp.FieldByName('idCadEmpresa').AsInteger := cdsNfERateioidCadEmpresa.AsInteger;
            cdsTmp.FieldByName('idMovCaixa').AsInteger := cdsMovCaixa.FieldByName('idMovCaixa').AsInteger;
            cdsTmp.FieldByName('idResultado').AsInteger := cdsNfERateioidResultado.AsInteger;
            cdsTmp.FieldByName('idGerencial').AsInteger := cdsNfERateioidGerencial.AsInteger;
            cdsTmp.FieldByName('prRateio').AsFloat := cdsNfERateioprRateio.AsFloat;
            cdsTmp.FieldByName('vlRateio').AsFloat := cdsNfERateiovlRateio.AsFloat;
            cdsTmp.Post;
            cdsTmp.ApplyUpdates(0);
            cdsNfERateio.Next;
          end;
        end
        else
        begin
          if not cdsTmp.Active then
            cdsTmp.Open;
          cdsNfERateio.First;
          while not cdsNfERateio.Eof do
          begin
            cdsTmp.Append;
            cdsTmp.FieldByName('idEmpresa').AsInteger := cdsNfERateioidEmpresa.AsInteger;
            cdsTmp.FieldByName('idCadEmpresa').AsInteger := cdsNfERateioidCadEmpresa.AsInteger;
            cdsTmp.FieldByName('idMovCaixa').AsInteger := cdsMovCaixa.FieldByName('idMovCaixa').AsInteger;
            cdsTmp.FieldByName('idResultado').AsInteger := cdsNfERateioidResultado.AsInteger;
            cdsTmp.FieldByName('idGerencial').AsInteger := cdsNfERateioidGerencial.AsInteger;
            cdsTmp.FieldByName('prRateio').AsFloat := cdsNfERateioprRateio.AsFloat;
            cdsTmp.FieldByName('vlRateio').AsFloat := cdsNfERateiovlRateio.AsFloat;
            cdsTmp.Post;
            cdsTmp.ApplyUpdates(0);
            cdsNfERateio.Next;
          end;
        end;
      end;
    end
    else
      if cdsMovConta.FieldByName('idMovConta').AsInteger > 0 then
      begin
        cdsTmp.Active := False;
        cdsTmp.CommandText := 'SELECT * FROM MovContaRateio WHERE 1=1';
        cdsTmp.Active := True;
        sql := 'SELECT * FROM MovContaRateio WHERE idEmpresa = ' + cdsMovConta.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsMovConta.FieldByName('idCadEmpresa').AsString +
               ' AND idMovConta = ' + cdsMovConta.FieldByName('idMovConta').AsString;
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if RecordCount > 0 then
          begin
            sql := 'DELETE FROM MovContaRateio WHERE idEmpresa = ' + cdsMovConta.FieldByName('idEmpresa').AsString +
                   ' AND idCadEmpresa = ' + cdsMovConta.FieldByName('idCadEmpresa').AsString +
                   ' AND idMovConta = ' + cdsMovConta.FieldByName('idMovConta').AsString;
            dmPadrao.dbConexao.ExecuteDirect(sql);
            if not cdsTmp.Active then
              cdsTmp.Open;
            cdsNfERateio.First;
            while not cdsNfERateio.Eof do
            begin
              cdsTmp.Append;
              cdsTmp.FieldByName('idEmpresa').AsInteger := cdsNfERateioidEmpresa.AsInteger;
              cdsTmp.FieldByName('idCadEmpresa').AsInteger := cdsNfERateioidCadEmpresa.AsInteger;
              cdsTmp.FieldByName('idMovConta').AsInteger := cdsMovConta.FieldByName('idMovConta').AsInteger;
              cdsTmp.FieldByName('idResultado').AsInteger := cdsNfERateioidResultado.AsInteger;
              cdsTmp.FieldByName('idGerencial').AsInteger := cdsNfERateioidGerencial.AsInteger;
              cdsTmp.FieldByName('prRateio').AsFloat := cdsNfERateioprRateio.AsFloat;
              cdsTmp.FieldByName('vlRateio').AsFloat := cdsNfERateiovlRateio.AsFloat;
              cdsTmp.Post;
              cdsTmp.ApplyUpdates(0);
              cdsNfERateio.Next;
            end;
          end
          else
          begin
            if not cdsTmp.Active then
              cdsTmp.Open;
            cdsNfERateio.First;
            while not cdsNfERateio.Eof do
            begin
              cdsTmp.Append;
              cdsTmp.FieldByName('idEmpresa').AsInteger := cdsNfERateioidEmpresa.AsInteger;
              cdsTmp.FieldByName('idCadEmpresa').AsInteger := cdsNfERateioidCadEmpresa.AsInteger;
              cdsTmp.FieldByName('idMovConta').AsInteger := cdsMovConta.FieldByName('idMovConta').AsInteger;
              cdsTmp.FieldByName('idResultado').AsInteger := cdsNfERateioidResultado.AsInteger;
              cdsTmp.FieldByName('idGerencial').AsInteger := cdsNfERateioidGerencial.AsInteger;
              cdsTmp.FieldByName('prRateio').AsFloat := cdsNfERateioprRateio.AsFloat;
              cdsTmp.FieldByName('vlRateio').AsFloat := cdsNfERateiovlRateio.AsFloat;
              cdsTmp.Post;
              cdsTmp.ApplyUpdates(0);
              cdsNfERateio.Next;
            end;
          end;
        end;
      end;
end;

procedure TFrmNfE.LimpaRateio;
begin
  //Procedure Responsavel por limpar toda a Tabela de Rateios
  with cdsNfERateio do
  begin
    First;
    while not Eof do
    begin
      Delete;
      First;
    end;
  end;
end;

procedure TFrmNfE.LimpaTemp;
begin
  with cdsTemp do
  begin
    First;
    while not Eof do
    begin
      Delete;
      First;
    end;
  end;
end;

procedure TFrmNfE.PagAbasChange(Sender: TObject);
begin
  inherited;
  // tratamentos

  if (PagAbas.ActivePageIndex = 0) then
  begin
    SomaProdutos;
    Height := 600;
    Width := 686;
  //  DBEidProduto.SetFocus; //Este SetFocus esta dando Problema - Denis
  end;
  if PagAbas.ActivePageIndex <> 0 then
  begin
    if Bloqueada then
    begin
      MessageDlg('Nota ja transmitida infelizmente não podera mais ser alterada!', mtWarning, [mbOK], 0);
      PagAbas.ActivePageIndex := 0;
      Exit;
    end;
  end;
  if (PagAbas.ActivePageIndex = 2) then
  begin
    SomaProdutos;
    Height := 423;
    Width := 676;
  //  DBEidProduto.SetFocus; //Este SetFocus esta dando Problema - Denis
  end;
  if (PagAbas.ActivePageIndex = 3) then //Rateio
  begin
    if (cdsNfEProduto.IsEmpty) then
    begin
      messagedlg('Os produtos devem ser lançados primeiramente!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 1;
      exit;
    end; //fim if (cdsNfEProduto.IsEmpty) then

    //Verifica Gerencial
    cdsNfEProduto.First;
    while not cdsNfEProduto.eof do
    begin
      if trim(cdsNfEProdutoidGerencial.AsString) = '' then
      begin
        messagedlg('Para lançar o rateio é preciso ter o plano gerencial lançado!', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
      cdsNfEProduto.Next;
    end;// Fim do Verifica Gerencial
    if not (cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency > 0) then
    begin
      messagedlg('Para fazer o rateio é necessário que a nota tenha valor lançado!' , mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 1;
      exit;
    end;
    Height := 476;
    Width  := 620;
    vlRatProd := cdsNfERateiovlTotalRateio.Value;
    LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlRatProd), 6, '');
    LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency-vlRatProd), 6, '');
  end; // fim   if (PagAbas.ActivePageIndex = 3) then
  if (PagAbas.ActivePageIndex = 1) then
  begin
    Height := 600;
    Width := 1140;
    SomaProdutos;
  //  DBEidProduto.SetFocus; //Este SetFocus esta dando Problema - Denis
  end;

  if PagAbas.ActivePageIndex = 4 then
  begin
    if (cdsNfERateio.IsEmpty) then //titulo,
    begin
      messagedlg('Para lançamentos financeiros é preciso lançar o resultado primeiramente!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;

    if trim(DBEidGerencial.Text) = '' then
    begin
      messagedlg('Para lançar o financeiro é preciso ter o centro gerencial lançado!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;

    PagTituloPag.ActivePageIndex := 0;
    PagTituloPagChange(PagTituloPag);
    funcao.SomenteLeitura([DBEdtVencimento], trim(DBEidCheque.Text) = '');
    Height := 485;
    Width  := 660;
  end; //fim do if PagAbas.ActivePageIndex = 4 then
end;

procedure TFrmNfE.PagTituloPagChange(Sender: TObject);
begin
  inherited;
  if (Sender as TCPageControl).ActivePageIndex = 0 then
    (Sender as TCPageControl).Align := alnone
  else
    (Sender as TCPageControl).Align := alclient;
  grpCaixa.Visible := (Sender as TCPageControl).Align = alnone;
  grpBanco.Visible := (Sender as TCPageControl).Align = alnone;
end;

procedure TFrmNfE.SomaParcelas;
begin
  vlTotalParcelas := 0;
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsTituloPag.FieldByName('vlTituloPag').AsCurrency-vlTotalParcelas), 6, '');
  With cdsTituloPagParc do
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
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsTituloPag.FieldByName('vlTituloPag').AsCurrency-vlTotalParcelas), 6, '');
end;

procedure TFrmNfE.SomaProdutos;
begin
  EDvlTotal.Value := 0;
  EDvlTotal.Decimals := FormatSettings.CurrencyDecimals;
  With cdsNfEProduto do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      EdvlTotal.Value := EdvlTotal.Value + FieldByName('vlTotal').AsCurrency;
      Next;
    end;
  end;
end;

procedure TFrmNfE.SomaRateio;
begin
  vlTotalRateio := 0;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency-vlTotalRateio), 6, '');
  //cdsNfERateio.DisableControls;
  With cdsTemp do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
//      vlTotalRateio := cdsNfERateiovlTotalRateio.Value;
      vlTotalRateio := vlTotalRateio + FieldByName('vlRateio').AsCurrency;
      Next;
    end;
    First;
  end;
//  vlTotalRateio := cdsTempvlTotalRateio.Value;
//  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
//  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfEValor.FieldByName('vlNotaFiscal').AsCurrency-cdsTempvlTotalRateio.Value), 6, '');
  //
  //cdsNfERateio.EnableControls;
  //
end;

procedure TFrmNfE.TransfRateio;
var
  vlDescontar : Double;
  teste : string;
begin
  with cdsTemp do
  begin
    First;
    while not eof do
    begin
      cdsNfERateio.IndexFieldNames := 'idGerencial; idResultado';
      if cdsNfERateio.FindKey([FieldByName('idGerencial').AsInteger, FieldByName('idResultado').AsInteger]) then
      begin
        if not (cdsNfERateio.State in [dsEdit, dsInsert]) then
          cdsNfERateio.Edit;
        cdsNfERateio.FieldByName('vlRateio').Value := cdsNfERateio.FieldByName('vlRateio').Value + FieldByName('vlRateio').Value;
        cdsNfERateio.Post;
      end
      else
      begin
        cdsNfERateio.Append;
        cdsNfERateio.FieldByName('idEmpresa').AsString := FieldByName('idEmpresa').AsString;
        cdsNfERateio.FieldByName('idCadEmpresa').AsString := FieldByName('idCadEmpresa').AsString;
        cdsNfERateio.FieldByName('idDocSerie').AsString := FieldByName('idDocSerie').AsString;
        cdsNfERateio.FieldByName('idNfE').AsString := '0';
        cdsNfERateio.FieldByName('idFornecedor').AsString := cdsPadraoidFornecedor.AsString;
        cdsNfERateio.FieldByName('idCadFornecedor').AsString := FieldByName('idCadFornecedor').AsString;
        cdsNfERateio.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
        cdsNfERateio.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
        cdsNfERateio.FieldByName('idNfERateio').AsInteger := cdsNfERateio.FieldByName('idNfERateio').AsInteger;
        cdsNfERateio.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
        cdsNfERateio.FieldByName('vlRateio').Value := FieldByName('vlRateio').Value;
        cdsNfERateio.Post;
      end;
      Next;
    end;
    cdsNfERateio.IndexFieldNames := '';
  end;
  LimpaTemp;
end;

procedure TFrmNfE.VerificaFornecedor;
var
  sqlForn, sqlUpd : String;
begin
  if cdsNfEProdutoidFornecedor.Value <> cdsPadrao.FieldByName('idFornecedor').Value then
  begin
    cdsNfEProduto.First;
    while not cdsNfEProduto.Eof do
    begin
      cdsNfEProduto.Edit;
      cdsNfEProdutoidFornecedor.AsInteger := cdsPadrao.FieldByName('idFornecedor').AsInteger;
      cdsNfEProdutoidCadFornecedor.AsInteger := cdsPadrao.FieldByName('idCadFornecedor').AsInteger;
      cdsNfEProduto.Post;
      cdsNfEProduto.Next;
    end;
  end;
end;

procedure TFrmNfE.VerificaSobrasRateio;
var
  vlTotalRat : Double;
begin
  // Responsavel por verificar sobras do Rateio
  vlRatProd := cdsNfERateiovlTotalRateio.Value;
  vlTotalRat := cdsNfEValor.FieldByName('vlNotaFiscal').Value-vlRatProd;
  if vlTotalRat <> 0 then
  begin
    cdsNfERateio.First;
    if not (cdsNfERateio.State in [dsEdit, dsInsert]) then
      cdsNfERateio.Edit;
    cdsNfERateio.FieldByName('vlRateio').Value := cdsNfERateio.FieldByName('vlRateio').Value + vlTotalRat;
    cdsNfERateio.Post;
    vlRatProd := cdsNfERateiovlTotalRateio.Value;
    LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlRatProd), 6, '');
    LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsNfEValor.FieldByName('vlNotaFiscal').Value-vlRatProd), 6, '');
    vlTotalRat := cdsNfEValor.FieldByName('vlNotaFiscal').Value-vlRatProd;
    if vlTotalRat <> 0 then
      VerificaSobrasRateio;
  end;
end;

end.


