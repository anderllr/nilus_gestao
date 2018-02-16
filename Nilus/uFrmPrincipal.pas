unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, DB, DBClient, ImgList, XPMan, ComCtrls, CStatusBar, StdCtrls,
  CComboBox, Provider, CLabel, Buttons, CBitBtn, ExtCtrls, CPanel, Menus,
  CPanelGradient, CSpeedButton, CFind, MidasLib, DBXCommon, jpeg, JvExComCtrls,
  JvComCtrls, JvPageList, JvNavigationPane, JvExControls, JvComponentBase,
  JvExExtCtrls, CButton, PlatformDefaultStyleActnCtrls, JvMenus, FMTBcd, SqlExpr,
  CActionList, ADODB, RzTabs, ScktComp, IdBaseComponent, IdComponent, IdIPWatch,
  System.Actions, System.ImageList, ACBrCotacao, ACBrBase, ACBrSocket, System.DateUtils;

type
  TfrmPrincipal = class(TForm)
    XPManifest1: TXPManifest;
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    Image1: TImage;
    SmallImages: TImageList;
    LargeImages: TImageList;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    NavSplitter: TJvOutlookSplitter;
    sdsGrupo: TSQLDataSet;
    sdsMenu: TSQLDataSet;
    actBotoes: TCActionList;
    actCadastros: TAction;
    actCompras: TAction;
    actContabil: TAction;
    actFinancas: TAction;
    actFiscal: TAction;
    actPatrimonial: TAction;
    imgModulos: TImageList;
    TabMenu: TRzTabControl;
    cdsGrupo: TClientDataSet;
    dspGrupo: TDataSetProvider;
    cdsMenu: TClientDataSet;
    dspMenu: TDataSetProvider;
    cdsModulo: TClientDataSet;
    dspModulo: TDataSetProvider;
    cdsGrupoidSegModulo: TSmallintField;
    cdsGrupoidSegGrupoMenu: TSmallintField;
    cdsGrupodescSegGrupoMenu: TStringField;
    cdsGrupostSegGrupoMenu: TStringField;
    cdsGrupoordem: TSmallintField;
    cdsGrupoindiceImagem: TSmallintField;
    cdsGrupoprimeiro: TStringField;
    cdsMenuidSegModulo: TSmallintField;
    cdsMenuidSegGrupoMenu: TSmallintField;
    cdsMenuidSegMenu: TSmallintField;
    cdsMenudescSegMenu: TStringField;
    cdsMenudescSegMenuInterno: TStringField;
    cdsMenustSegMenu: TStringField;
    cdsMenuexcluir: TStringField;
    cdsMenuacessar: TStringField;
    cdsMenuincluir: TStringField;
    cdsMenueditar: TStringField;
    cdsMenuobsSegMenu: TStringField;
    cdsMenuordem: TSmallintField;
    sdsModulo: TSQLDataSet;
    cdsModuloidSegModulo: TSmallintField;
    cdsModulodescSegModulo: TStringField;
    cdsModulostSegModulo: TStringField;
    cdsModuloAbreviacao: TStringField;
    ImageList1: TImageList;
    Acao: TActionManager;
    fechar: TAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    actSobre: TAction;
    actIndice: TAction;
    actCadPlanoRateio: TAction;
    actCadResultado: TAction;
    actCadGerencial: TAction;
    actCadMovFinanceira: TAction;
    actCadBanco: TAction;
    actCadDocSerie: TAction;
    actCadTituloRec: TAction;
    actCadRateioTalhao: TAction;
    actCadCliente: TAction;
    actCadProduto: TAction;
    actCadSafra: TAction;
    actCadConfigFinanc: TAction;
    actCadCidade: TAction;
    actCadPrevisaoRec: TAction;
    actCadTituloPag: TAction;
    actPesTitulos: TAction;
    actCadCaixa: TAction;
    actCadMovCaixa: TAction;
    actCadConta: TAction;
    actCadMovConta: TAction;
    actRecTitulo: TAction;
    actCadPrevisaoPag: TAction;
    actCadUsuario: TAction;
    actPagTitulo: TAction;
    actCadBem: TAction;
    actCompensacao: TAction;
    actExtratoConta: TAction;
    actRelMovCaixa: TAction;
    actCadMovTransf: TAction;
    actRelGerencial: TAction;
    actRelResultado: TAction;
    actRelRateio: TAction;
    actFichaGerencial: TAction;
    actRelConfResultado: TAction;
    actFluxoCaixa: TAction;
    actRelExtrato: TAction;
    actContasPagar: TAction;
    actContasRec: TAction;
    actCadCultura: TAction;
    actRelExtratoCaixa: TAction;
    actPesGerencial: TAction;
    actBackup: TAction;
    actRelFluxoMensal: TAction;
    actRelExtratoFornecedor: TAction;
    actRelExtratoCliente: TAction;
    actCadTalhao: TAction;
    actCadPlanoConta: TAction;
    ActSelEmpresas: TAction;
    actCadSegmento: TAction;
    actCadGrupoCad: TAction;
    actAlteraPortador: TAction;
    actRelContasPagarPortador: TAction;
    actRelMovimentacao: TAction;
    actCadGrupoGerencial: TAction;
    actCadSegModulo: TAction;
    actCadSegMenu: TAction;
    actCadSegGrupoMenu: TAction;
    actCadSegGrupoPermissao: TAction;
    cdsTemp: TClientDataSet;
    dspTemp: TDataSetProvider;
    cdsNavPage: TClientDataSet;
    cdsNavPageidModulo: TIntegerField;
    cdsNavPagenamePage: TStringField;
    sdsTemp: TSQLDataSet;
    actCadUsuarioGrupo: TAction;
    actCadEmpresa: TAction;
    actCadComprador: TAction;
    actCadCriterioCompra: TAction;
    actCadCondicaoPgto: TAction;
    actCadFabricante: TAction;
    actCadProdDeposito: TAction;
    actUtiConfigCompras: TAction;
    actLanRequisicao: TAction;
    actLanGerenciaRequisicao: TAction;
    actLanCotacao: TAction;
    actLanPedidoCompra: TAction;
    actLanNfe: TAction;
    actLanPesRecepcao: TAction;
    actLanPesConferencia: TAction;
    actLanInventario: TAction;
    actLanMovEstoque: TAction;
    ActRelRequisicao: TAction;
    ActRelCotacao: TAction;
    actRelPedidoCompra: TAction;
    ActRelContagem: TAction;
    actRelEstoque: TAction;
    actRelConfPedidoCompra: TAction;
    actCadTpPlanoConta: TAction;
    ActCadHistorico: TAction;
    actLanLote: TAction;
    actLanRelacionamento: TAction;
    actRelCodigo: TAction;
    actRelPlanoConta: TAction;
    ActRelSlip: TAction;
    ActRelBalancete: TAction;
    actRelRazaoAnalitico: TAction;
    actRelDRE: TAction;
    actCadProdMedida: TAction;
    actCadProdGrupo: TAction;
    actCadProdSubGrupo: TAction;
    actLanAplicaProd: TAction;
    actLanPesCustos: TAction;
    actRelCustos: TAction;
    actRelProdEstoque: TAction;
    actCadCfop: TAction;
    actCadNatureza: TAction;
    actCadImpostoOutro: TAction;
    actCadTab: TAction;
    actLanNf: TAction;
    actSintegra: TAction;
    actLivroEntrada: TAction;
    actLivroSaidas: TAction;
    actRelApuracaoIcms: TAction;
    actCadTributoDetalhe: TAction;
    actConfigLivro: TAction;
    actSaldoCredor: TAction;
    actConfigNF: TAction;
    actSpedFiscal: TAction;
    actRelFichaEstoque: TAction;
    actCadBemGrupo: TAction;
    actCadBemSubGrupo: TAction;
    actCadTipoMaquina: TAction;
    actCadMaquinaMarca: TAction;
    actCadMaquina: TAction;
    actRelDiario: TAction;
    actRelMaquinas: TAction;
    actCadAdiantamento: TAction;
    actCadTipoPneu: TAction;
    actCadTipoOleo: TAction;
    actCadTipoFiltro: TAction;
    actRelAdiantamento: TAction;
    actCadTipoAtividade: TAction;
    actLanMaquinaOperacao: TAction;
    actLanMaquinaManutencao: TAction;
    actRelFichaAponta: TAction;
    actContEliminaCancelado: TAction;
    actCadPortador: TAction;
    actRelConfRecepcao: TAction;
    actCadDepartamento: TAction;
    actCadFuncao: TAction;
    actCadTipoAdmissao: TAction;
    actCadFuncionario: TAction;
    actCadContratoFrete: TAction;
    actCadContratoVenda: TAction;
    actCadArmOperacao: TAction;
    actCadRomaneio: TAction;
    actRelProducao: TAction;
    actRelEntregas: TAction;
    actRelFuncionario: TAction;
    actRelContrato: TAction;
    actRelManutencao: TAction;
    actUtiRecalcRateio: TAction;
    actRelBalPatrimonial: TAction;
    actManutencaoFrete: TAction;
    actRelSaldoBancario: TAction;
    actRelContratoDetalhado: TAction;
    actRelContFinanc: TAction;
    actRelNaoIntegradosLote: TAction;
    Barra: TCStatusBar;
    actCadMaquinaSeguro: TAction;
    actCadSeguradora: TAction;
    actComissaoContrato: TAction;
    actConfigLivrosCont: TAction;
    ActRelTermoAbertura: TAction;
    ActCadDocumento: TAction;
    ActControleCheque: TAction;
    ActCadAbastecimento: TAction;
    cdsAct: TClientDataSet;
    cdsActdescAct: TStringField;
    ActRelFluxoCaixaAnalitico: TAction;
    ActControleChequeDev: TAction;
    ActRelChequesEmitidos: TAction;
    ActRelRomaneios: TAction;
    actRelRecibos: TAction;
    actRelListagemCliFor: TAction;
    actRelComparativo: TAction;
    actRelAbastecimento: TAction;
    actMaquinaOperacao: TAction;
    actSubstituiTitulosRec: TAction;
    actSubstituiTitulosPag: TAction;
    actCadSubGrupo: TAction;
    actCadRecibo: TAction;
    actCadConfigEst: TAction;
    actRelGerencialNfE: TAction;
    actCadCTe: TAction;
    actCadConfigTransporte: TAction;
    actCadContratoCompra: TAction;
    actCadEmbarque: TAction;
    actCadConfigProducao: TAction;
    actCadConfigFiscal: TAction;
    actGeraEmbarqueNf: TAction;
    actCadDesconto: TAction;
    actRelContratoCompra: TAction;
    actRelContratoDetCompra: TAction;
    actCadOrdemFrete: TAction;
    actRelContratoVendaRes: TAction;
    actRelContratoCompraRes: TAction;
    actRelContratoDesconto: TAction;
    actRelResumoDesconto: TAction;
    actRelContratoEmbarque: TAction;
    actCadDREFinanceiro: TAction;
    actPesDREFinanceiro: TAction;
    actRelPagamentos: TAction;
    actRelRecebimentos: TAction;
    actRelOrdemFrete: TAction;
    actRelRentContratoVenda: TAction;
    actContratoTituloRec: TAction;
    actTransfContratoVenda: TAction;
    actTransfContratoCompra: TAction;
    actRelContratoCusto: TAction;
    actRelContratoCompraFinanc: TAction;
    actRelContratoVendaFinanc: TAction;
    actPesContratoTituloPag: TAction;
    actImportaNFe: TAction;
    actGeraTituloPPag: TAction;
    actGeraTituloPRec: TAction;
    actImprimeCheque: TAction;
    actEncerraContrato: TAction;
    actRelContratoEstoque: TAction;
    actContServicos: TAction;
    actCadContratoPrevisao: TAction;
    actRelPrevisaoCusto: TAction;
    actRelContratosPrevisao: TAction;
    actBaixaTituloPag: TAction;
    actBaixaTituloRec: TAction;
    actRelContratoCustoCFOP: TAction;
    actPesContIntegracao: TAction;
    actRelNotasFiscais: TAction;
    actRelCurvaABCContrato: TAction;
    actRelContratoComissao: TAction;
    actRelLogs: TAction;
    actImpExpPendencias: TAction;
    ACBrCotacao1: TACBrCotacao;
    dsIndiceLancamento: TDataSource;
    cdsIndiceLancamento: TClientDataSet;
    dspIndiceLancamento: TDataSetProvider;
    sdsIndiceLancamento: TSQLDataSet;
    actRelAplicacao: TAction;
    actManutencaoPedido: TAction;
    procedure actCadCidadeExecute(Sender: TObject);
    procedure actCadFornecedorExecute(Sender: TObject);
    procedure actCadDocSerieExecute(Sender: TObject);
    function ExecutaSQLRet(par: array of TObject; proc, tab: string): TClientDataSet;
    procedure actCadEmpresaExecute(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure fecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSelEmpresasExecute(Sender: TObject);
    procedure actCadProdutoExecute(Sender: TObject);
    //rotinas da treeview
    procedure ClicaTreeView(indice: integer);
    procedure actCadBemExecute(Sender: TObject);
    procedure actLanRequisicaoExecute(Sender: TObject);
    procedure NavSplitterClick(Sender: TObject);
    procedure actCadCompradorExecute(Sender: TObject);
    procedure actLanGerenciaRequisicaoExecute(Sender: TObject);
    procedure actCadCriterioCompraExecute(Sender: TObject);
    procedure actCadCondicaoPgtoExecute(Sender: TObject);
    procedure actLanCotacaoExecute(Sender: TObject);
    procedure actLanPedidoCompraExecute(Sender: TObject);
    procedure actLanNfeExecute(Sender: TObject);
    procedure actCadFabricanteExecute(Sender: TObject);
    procedure actLanPesRecepcaoExecute(Sender: TObject);
    procedure actRelRequisicaoExecute(Sender: TObject);
    procedure actRelCotacaoExecute(Sender: TObject);
    procedure actRelPedidoCompraExecute(Sender: TObject);
    procedure actCadProdDepositoExecute(Sender: TObject);
    procedure actLanInventarioExecute(Sender: TObject);
    procedure actLanMovEstoqueExecute(Sender: TObject);
    procedure actRelContagemExecute(Sender: TObject);
    procedure actRelEstoqueExecute(Sender: TObject);
    procedure actUtiConfigComprasExecute(Sender: TObject);
    procedure actLanPesConferenciaExecute(Sender: TObject);
    procedure actRelConfPedidoCompraExecute(Sender: TObject);
    procedure actCadIndiceExecute(Sender: TObject);
    procedure actCotFilialExecute(Sender: TObject);
    procedure ConfigBarra;
    procedure MontaMenu;
    procedure TreeOnClick(Sender: TObject);
    procedure AbreModulo;
    procedure BotaoClick(Sender: TObject);
    procedure TabMenuChange(Sender: TObject);
    procedure AbreStatus(msg: string);
    procedure FechaStatus;
    procedure HabilitaMenu;
    procedure Image1DblClick(Sender: TObject);
    procedure actIndiceExecute(Sender: TObject);
    procedure actCadPlanoRateioExecute(Sender: TObject);
    procedure actCadSegModuloExecute(Sender: TObject);
    procedure actCadSegMenuExecute(Sender: TObject);
    procedure actCadSegGrupoMenuExecute(Sender: TObject);
    procedure actCadSegGrupoPermissaoExecute(Sender: TObject);
    procedure actCadUsuarioExecute(Sender: TObject);
    procedure actCadUsuarioGrupoExecute(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actCadConfigFinancExecute(Sender: TObject);
    procedure actCadTpPlanoContaExecute(Sender: TObject);
    procedure ActCadHistoricoExecute(Sender: TObject);
    procedure actCadPlanoContaExecute(Sender: TObject);
    procedure actLanLoteExecute(Sender: TObject);
    procedure actLanRelacionamentoExecute(Sender: TObject);
    procedure actRelCodigoExecute(Sender: TObject);
    procedure actRelPlanoContaExecute(Sender: TObject);
    procedure ActRelSlipExecute(Sender: TObject);
    procedure ActRelBalanceteExecute(Sender: TObject);
    procedure actRelRazaoAnaliticoExecute(Sender: TObject);
    procedure actRelDREExecute(Sender: TObject);
    procedure actCadSafraExecute(Sender: TObject);
    procedure actCadResultadoExecute(Sender: TObject);
    procedure actCadProdMedidaExecute(Sender: TObject);
    procedure actCadProdGrupoExecute(Sender: TObject);
    procedure actCadProdSubGrupoExecute(Sender: TObject);
    procedure actLanAplicaProdExecute(Sender: TObject);
    procedure actLanPesCustosExecute(Sender: TObject);
    procedure actRelCustosExecute(Sender: TObject);
    procedure actRelProdEstoqueExecute(Sender: TObject);
    procedure actCadBancoExecute(Sender: TObject);
    procedure actCadCulturaExecute(Sender: TObject);
    procedure actCadGerencialExecute(Sender: TObject);
    procedure actCadGrupoGerencialExecute(Sender: TObject);
    procedure actCadRateioTalhaoExecute(Sender: TObject);
    procedure actCadTalhaoExecute(Sender: TObject);
    procedure actCadSegmentoExecute(Sender: TObject);
    procedure actCadGrupoCadExecute(Sender: TObject);
    procedure actRecTituloExecute(Sender: TObject);
    procedure actCadTituloRecExecute(Sender: TObject);
    procedure actCadPrevisaoRecExecute(Sender: TObject);
    procedure actPesTitulosExecute(Sender: TObject);
    procedure actPagTituloExecute(Sender: TObject);
    procedure actCadTituloPagExecute(Sender: TObject);
    procedure actCadPrevisaoPagExecute(Sender: TObject);
    procedure actAlteraPortadorExecute(Sender: TObject);
    procedure actCadMovCaixaExecute(Sender: TObject);
    procedure actPesGerencialExecute(Sender: TObject);
    procedure actCadMovTransfExecute(Sender: TObject);
    procedure actCadCaixaExecute(Sender: TObject);
    procedure actRelMovCaixaExecute(Sender: TObject);
    procedure actCadMovContaExecute(Sender: TObject);
    procedure actCompensacaoExecute(Sender: TObject);
    procedure actCadContaExecute(Sender: TObject);
    procedure actExtratoContaExecute(Sender: TObject);
    procedure actRelRateioExecute(Sender: TObject);
    procedure actRelExtratoExecute(Sender: TObject);
    procedure actContasPagarExecute(Sender: TObject);
    procedure actRelContasPagarPortadorExecute(Sender: TObject);
    procedure actContasRecExecute(Sender: TObject);
    procedure actRelExtratoFornecedorExecute(Sender: TObject);
    procedure actRelExtratoClienteExecute(Sender: TObject);
    procedure actRelGerencialExecute(Sender: TObject);
    procedure actFichaGerencialExecute(Sender: TObject);
    procedure actRelConfResultadoExecute(Sender: TObject);
    procedure actRelResultadoExecute(Sender: TObject);
    procedure actFluxoCaixaExecute(Sender: TObject);
    procedure actRelFluxoMensalExecute(Sender: TObject);
    procedure actRelExtratoCaixaExecute(Sender: TObject);
    procedure actRelMovimentacaoExecute(Sender: TObject);
    procedure actCadCfopExecute(Sender: TObject);
    procedure actCadNaturezaExecute(Sender: TObject);
    procedure actCadImpostoOutroExecute(Sender: TObject);
    procedure actCadTabExecute(Sender: TObject);
    procedure actLanNfExecute(Sender: TObject);
    procedure actSintegraExecute(Sender: TObject);
    procedure actLivroEntradaExecute(Sender: TObject);
    procedure actLivroSaidasExecute(Sender: TObject);
    procedure actRelApuracaoIcmsExecute(Sender: TObject);
    procedure actCadTributoDetalheExecute(Sender: TObject);
    procedure actConfigLivroExecute(Sender: TObject);
    procedure actSaldoCredorExecute(Sender: TObject);
    procedure actConfigNFExecute(Sender: TObject);
    procedure actSpedFiscalExecute(Sender: TObject);
    procedure actRelFichaEstoqueExecute(Sender: TObject);
    procedure actCadBemGrupoExecute(Sender: TObject);
    procedure actCadBemSubGrupoExecute(Sender: TObject);
    procedure actCadTipoMaquinaExecute(Sender: TObject);
    procedure actCadMaquinaExecute(Sender: TObject);
    procedure actRelDiarioExecute(Sender: TObject);
    procedure actRelMaquinasExecute(Sender: TObject);
    procedure actCadAdiantamentoExecute(Sender: TObject);
    procedure actCadMaquinaMarcaExecute(Sender: TObject);
    procedure actCadTipoPneuExecute(Sender: TObject);
    procedure actCadTipoOleoExecute(Sender: TObject);
    procedure actCadTipoFiltroExecute(Sender: TObject);
    procedure actRelAdiantamentoExecute(Sender: TObject);
    procedure actCadTipoAtividadeExecute(Sender: TObject);
    procedure actLanMaquinaOperacaoExecute(Sender: TObject);
    procedure actLanMaquinaManutencaoExecute(Sender: TObject);
    procedure actRelFichaApontaExecute(Sender: TObject);
    procedure actContEliminaCanceladoExecute(Sender: TObject);
    procedure actCadPortadorExecute(Sender: TObject);
    procedure actRelConfRecepcaoExecute(Sender: TObject);
    procedure actCadDepartamentoExecute(Sender: TObject);
    procedure actCadFuncaoExecute(Sender: TObject);
    procedure actCadTipoAdmissaoExecute(Sender: TObject);
    procedure actCadFuncionarioExecute(Sender: TObject);
    procedure actCadContratoFreteExecute(Sender: TObject);
    procedure actCadContratoVendaExecute(Sender: TObject);
    procedure actCadArmOperacaoExecute(Sender: TObject);
    procedure actCadRomaneioExecute(Sender: TObject);
    procedure actRelProducaoExecute(Sender: TObject);
    procedure actRelEntregasExecute(Sender: TObject);
    procedure actRelFuncionarioExecute(Sender: TObject);
    procedure actRelContratoExecute(Sender: TObject);
    procedure actRelManutencaoExecute(Sender: TObject);
    procedure actUtiRecalcRateioExecute(Sender: TObject);
    procedure actRelBalPatrimonialExecute(Sender: TObject);
    procedure actManutencaoFreteExecute(Sender: TObject);
    procedure actRelSaldoBancarioExecute(Sender: TObject);
    procedure actRelContratoDetalhadoExecute(Sender: TObject);
    procedure actRelContFinancExecute(Sender: TObject);
    procedure actRelRelacContabilExecute(Sender: TObject);
    procedure actRelNaoIntegradosLoteExecute(Sender: TObject);
    procedure actCadMaquinaSeguroExecute(Sender: TObject);
    procedure actCadSeguradoraExecute(Sender: TObject);
    procedure actComissaoContratoExecute(Sender: TObject);
    procedure actConfigLivrosContExecute(Sender: TObject);
    procedure ActRelTermoAberturaExecute(Sender: TObject);
    procedure ActCadDocumentoExecute(Sender: TObject);
    procedure ActControleChequeExecute(Sender: TObject);
    procedure ActCadAbastecimentoExecute(Sender: TObject);
    procedure ActRelFluxoCaixaAnaliticoExecute(Sender: TObject);
    procedure ActControleChequeDevExecute(Sender: TObject);
    procedure ActRelChequesEmitidosExecute(Sender: TObject);
    procedure ActRelRomaneiosExecute(Sender: TObject);
    procedure actRelRecibosExecute(Sender: TObject);
    procedure actRelListagemCliForExecute(Sender: TObject);
    procedure actRelComparativoExecute(Sender: TObject);
    procedure actRelAbastecimentoExecute(Sender: TObject);
    procedure actMaquinaOperacaoExecute(Sender: TObject);
    procedure actSubstituiTitulosRecExecute(Sender: TObject);
    procedure actSubstituiTitulosPagExecute(Sender: TObject);
    procedure actCadSubGrupoExecute(Sender: TObject);
    procedure actCadReciboExecute(Sender: TObject);
    procedure actCadConfigEstExecute(Sender: TObject);
    procedure actRelGerencialNfEExecute(Sender: TObject);
    procedure actCadCTeExecute(Sender: TObject);
    procedure actCadConfigTransporteExecute(Sender: TObject);
    procedure actCadContratoCompraExecute(Sender: TObject);
    procedure actCadEmbarqueExecute(Sender: TObject);
    procedure actCadConfigProducaoExecute(Sender: TObject);
    procedure actCadConfigFiscalExecute(Sender: TObject);
    procedure actGeraEmbarqueNfExecute(Sender: TObject);
    procedure actCadDescontoExecute(Sender: TObject);
    procedure actRelContratoCompraExecute(Sender: TObject);
    procedure actRelContratoDetCompraExecute(Sender: TObject);
    procedure actCadItemFreteExecute(Sender: TObject);
    procedure actCadOrdemFreteExecute(Sender: TObject);
    procedure actRelContratoVendaResExecute(Sender: TObject);
    procedure actRelContratoCompraResExecute(Sender: TObject);
    procedure actRelContratoDescontoExecute(Sender: TObject);
    procedure actRelResumoDescontoExecute(Sender: TObject);
    procedure actRelContratoEmbarqueExecute(Sender: TObject);
    procedure actCadDREFinanceiroExecute(Sender: TObject);
    procedure actPesDREFinanceiroExecute(Sender: TObject);
    procedure actRelPagamentosExecute(Sender: TObject);
    procedure actRelRecebimentosExecute(Sender: TObject);
    procedure actRelOrdemFreteExecute(Sender: TObject);
    procedure actRelRentContratoVendaExecute(Sender: TObject);
    procedure actContratoTituloRecExecute(Sender: TObject);
    procedure actTransfContratoVendaExecute(Sender: TObject);
    procedure actTransfContratoCompraExecute(Sender: TObject);
    procedure actRelContratoCustoExecute(Sender: TObject);
    procedure actRelContratoCompraFinancExecute(Sender: TObject);
    procedure actRelContratoVendaFinancExecute(Sender: TObject);
    procedure actPesContratoTituloPagExecute(Sender: TObject);
    procedure actImportaNFeExecute(Sender: TObject);
    procedure actGeraTituloPPagExecute(Sender: TObject);
    procedure actGeraTituloPRecExecute(Sender: TObject);
    procedure actImprimeChequeExecute(Sender: TObject);
    procedure actEncerraContratoExecute(Sender: TObject);
    procedure actRelContratoEstoqueExecute(Sender: TObject);
    procedure actContServicosExecute(Sender: TObject);
    procedure actCadContratoPrevisaoExecute(Sender: TObject);
    procedure actRelPrevisaoCustoExecute(Sender: TObject);
    procedure actRelContratosPrevisaoExecute(Sender: TObject);
    procedure actBaixaTituloPagExecute(Sender: TObject);
    procedure actBaixaTituloRecExecute(Sender: TObject);
    procedure actRelContratoCustoCFOPExecute(Sender: TObject);
    procedure actPesContIntegracaoExecute(Sender: TObject);
    procedure actRelNotasFiscaisExecute(Sender: TObject);
    procedure actRelCurvaABCContratoExecute(Sender: TObject);
    procedure actRelContratoComissaoExecute(Sender: TObject);
    procedure actRelLogsExecute(Sender: TObject);
    procedure actImpExpPendenciasExecute(Sender: TObject);
    procedure ObtemCotacao;
    procedure actRelAplicacaoExecute(Sender: TObject);
    procedure actManutencaoPedidoExecute(Sender: TObject);

  private
    { Private declarations }
    navPan : string;
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idCadEmpresaFin, idUsuario, descUsuario,modulo : string;
    idUsuarioGrupo, idModulo : integer;
    erro : byte;
    filial, licenciado : boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFuncao, uDmPadrao, uFrmSobre, uCadGeral,
  uCadDocSerie, uCadCidade, uFrmBackup, uFrmSelEmpresas, uFrmCadProduto,
  uFrmCadBem, uFrmCadRequisicao, uFrmCadComprador, uFrmGerenciaRequisicao,
  uFrmCadCondicaoPgto, uCadCriterioCompra, uFrmCadCotacao, uFrmCadPedidoCompra,
  uFrmNFE, uCadFabricante, uFrmPesRecepcao, uFrmRelRequisicao, uFrmRelCotacao,
  uFrmRelPedidoCompra, uFrmCadProdDeposito, uFrmCadInventario, uFrmMovEstoque,
  uFrmRelContagem, uFrmRelEstoque, uCadConfigCompras, uFrmPesConferencia,
  uFrmRelConfPedidoCompra, uCadIndice, uFrmCotacaoFilial, uFrmPortal,
  ufrmStatus, uFrmCadRateio, uFrmSeguranca, uCadSegGrupoMenu, uCadSegMenu,
  uCadSegModulo, uFrmCadSegGrupoPermissao, uFrmCadUsuario, uCadUsuarioGrupo,
  uFrmCadConfigFinanc, uFrmCadPlanoContaGrupo, uCadHistorico, uFrmRelDRE,
  uFrmCadPlanoConta, uFrmRelPlanoConta, uFrmLote, uFrmContRelaciona,
  uFrmRelBalancete, uFrmRelCodigo, uFrmRelRazao, uFrmRelSlip,
  uFrmCadProdMedida, uFrmCadSafra, uFrmRelProdEstoque, uFrmCadProdGrupo,
  uFrmCadProdSubGrupo, uCadResultado, uFrmCadAplicacao, uFrmPesCustos,
  uFrmRelCustos, uCadBanco, uFrmCadGerencial, uFrmCadGrupoGerencial,
  uFrmCadRateioTalhao, uFrmCadTalhao, uFrmCadCultura, uFrmCadGrupoCad,
  uFrmCadSegmento, uFrmAlteraPortador, uCadPrevisaoPag, uCadPrevisaoRec,
  uCadTituloPag, uCadTituloRec, uFrmPagTitulo, uFrmPesTitulos, uFrmRecTitulo,
  uFrmCadCaixa, uFrmCadMovCaixa, uFrmCadMovTransf, uFrmPesGerencial,
  uFrmRelMovCaixa, uFrmCadConta, uFrmPesCompensacao, uFrmRelExtratoConta,
  uFrmCadMovConta, uFrmRelContasPagar, uFrmRelContasReceber,
  uFrmRelFichaGerencial, uFrmRelFluxoCaixa, uFrmRelConfResultados,
  uFrmRelContasPagarPortador, uFrmRelExtratoCaixa, uFrmRelExtratoCliente,
  uFrmRelExtratoBancario, uFrmRelExtratoFornecedor, uFrmRelFluxoCaixaMensal,
  uFrmRelGerencial, uFrmRelMovimentacao, uFrmRelRateio, uFrmRelResultado,
  uFrmConfigNF, uFrmNotaFiscal, uFrmCadBemGrupo, uFrmCadBemSubGrupo,
  uFrmCadCfop, uFrmCadTipoMaquina, uCadTributoDetalhe, uFrmCadConfigLivros,
  uFrmCadImpostoOutro, uFrmCadMaquina, uFrmCadNatureza, uFrmRelLivroEntrada,
  uFrmRelLivroSaida, uFrmRelApuracaoIcms, uFrmGeraSintegra,
  uFrmCadSaldoCredor, uFrmCadTab, uFrmRelFichaEstoque, uFrmRelDiario,
  uFrmRelMaquinas, uFrmCadAdiantamento, uFrmCadMaquinaMarca, uFrmCadTipoFiltro,
  uFrmCadTipoOleo, uFrmCadTipoPneu, uFrmRelAdiantamento, uFrmCadTipoAtividade,
  uFrmCadMaquinaOperacao, uFrmCadMaquinaManutencao, uFrmRelFichaAponta,
  uFrmContEliminaCancelado, uFrmCadPortador, uFrmRelConfRecepcao,
  uFrmCadDepartamento, uFrmCadFuncao, uFrmCadTipoAdmissao, uFrmCadContratoFrete,
  uFrmCadContratoVenda, uFrmCadArmOperacao, uFrmCadRomaneio, uFrmRelProducao,
  uFrmRelEntrega, uFrmRelFuncionarios, uFrmRelContratoVenda, uFrmRelManutencao,
  uFrmRecalcRateio, uFrmRelBalPatrimonial, uFrmManutencaoFrete,
  uFrmRelSaldoBancario, uFrmRelContratoDetalhado, uFrmRelContabilXFincan,
  uFrmRelRelacContabil, uFrmRelLancCaixaConta, uFrmCadMaquinaSeguro,
  uFrmCadSeguradora, uFrmComissaoContrato, uFrmConfigLivrosCont,
  uFrmRelTermoAbertura, uFrmCadDocumento, uFrmControleCheques,
  uFrmCadAbastecimento, uFrmRelFluxoCaixaAnalitico, uFrmControleChequesDev,
  uFrmRelChequesEmitidos, uFrmPesRomaneio, uFrmRelRomaneioProdutor,
  uFrmRelRecibos, uFrmListagemClienteFor, uFrmRelComparativo,
  uFrmRelAbastecimento, uFrmRelMaquinaOperacao, uFrmSubstituiTitulos,
  uFrmCadSubGrupo, uFrmCadRecibo, uFrmCadConfigEstoque, uFrmRelGerencialDet,
  uFrmCadCTe, uCadConfigTransporte, uFrmCadContratoCompra, uFrmCadEmbarque,
  uFrmCadConfigProducao, uFrmCadConfigFiscal, uFrmGeraEmbarqueNf,
  uFrmCadDesconto, uFrmTeste, uFrmRelContratoCompra, uFrmRelContratoCompraDet,
  uFrmCadItemFrete, uFrmCadOrdemFrete, uFrmRelContratoVendaRes,
  uFrmRelContratoCompraRes, uFrmRelContratoDesconto, uFrmRelResumoDesconto,
  uFrmRelContratoEmbarque, uFrmCadDREFinanceiro, uFrmPesDREFinanceiro,
  uFrmRelPagamentos, uFrmRelRecebimentos, uFrmRelOrdemFrete,
  uFrmRelRentContratoVenda, uFrmPesContratoTituloRec, uFrmTransfContratoVenda,
  uFrmTransfContratoCompra, uFrmRelContratoCusto, uFrmRelContratoCompraFinanc,
  uFrmRelContratoVendaFinanc, uFrmPesContratoTituloPag, uFrmImportaNFe,
  uFrmGeraTituloPPag, uFrmGeraTituloPRec, uFrmImprimeCheque,
  uFrmEncerraContratoVenda, uFrmRelContratoEstoque, uFrmCadSerContrato,
  uFrmCadContratoPrevisao, uFrmRelContratoPrevisaoCusto,
  uFrmRelContratoPrevisao, uFrmBaixaTituloPag, uFrmBaixaTituloRec,
  uFrmRelContratoCustoCFOP, uFrmPesContIntegracao, uFrmRelNotasFiscais,
  uFrmRelCurvaABCContrato, uFrmRelContratoComissao, uFrmRelLogs, uFrmPendencias, uFrmRelAplicacao, uFrmManutencaoPedido;

{$R *.dfm}
//************************************************************************************
function TfrmPrincipal.ExecutaSQLRet(par: array of TObject; proc,
  tab: string): TClientDataSet;
var
  t : TDBXTransaction;
  i, tr : byte;
  where, msg, valor, sql : string;
begin
  tr := 0;
  if dmPadrao.dbConexao.InTransaction then
    tr := 1; //significa q já está em transação
  Result := TClientDataSet.Create(dmPadrao);
  Result.ProviderName := 'dspLookUp';
  screen.Cursor := crSqlWait;
  frmPrincipal.erro := 0;
  //marca a transação
  if tr = 0 then
  begin
    //t.TransactionID := 9950;
//    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  end;
  try
    with Result do
    begin
      Active := false;
      //se o proc não está vazio é procedure senão é tabela
      if trim(proc) <> '' then
      begin
        CommandText := 'EXEC ' + proc + ' ';
        for i := 0 to high(par) do
        begin
          if Assigned(par[i]) then
            valor := Funcao.RetornaValorEField(par[i], 3)
          else
            valor := 'NULL';
          if trim(valor) = '' then
            valor := 'NULL';

          if i = 0 then
            CommandText := CommandText + valor
          else
            CommandText := CommandText + ', ' + valor;
          sql := CommandText;
        end;
      end
      else //senão é tabela
      begin
        if high(par) < 0 then //significa que o select veio pronto
          CommandText := tab
        else
        begin
          where := '';
          CommandText := tab;
          for i := 0 to high(par) do
            if (i = 0) and (pos('WHERE', UpperCase(CommandText)) <= 0) then
              where := 'WHERE ' + Funcao.RetornaValorEField(par[i], 2) + ' = ' + Funcao.RetornaValorEField(par[i], 3)
            else
              where := where + ' AND ' + Funcao.RetornaValorEField(par[i], 2) + ' = ' + Funcao.RetornaValorEField(par[i], 3);
          if (pos('SELECT', UpperCase(CommandText)) <= 0) then
            CommandText := ' SELECT * FROM ' + tab + ' ' + where
          else
            CommandText := CommandText + ' ' + where;
        end; //fim do else sem parâmetros
      end; //fim do senão é tabela
//      showmessage(CommandText);
      Active := true;
      msg := 'OK';
      //inicia procura pelo campo msg
      for i := 0 to Result.FieldDefs.Count - 1 do
        if Result.FieldDefs[i].DisplayName = 'msg' then
          if Result.FieldByName('msg').AsString <> 'OK' then
          begin
            msg := Result.FieldByName('msg').AsString;
            frmPrincipal.erro := 1;
          end;
    end;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if (frmPrincipal.erro = 0) then
  begin
//    if tr = 0 then
//      dmPadrao.dbConexao.CommitFreeAndNil(t)
  end
  else
  begin
//    if tr = 0 then
//      dmPadrao.dbConexao.RollBackFreeAndNil(t);
    if trim(msg) <> 'OK' then
      raise Exception.Create(msg);
  end;
end;
//************************************************************************************
//************************************************************************************
// ROTINAS DA TREEVIEW
//************************************************************************************
procedure TfrmPrincipal.ClicaTreeView(indice: integer);
begin
  if indice >= 0 then
    Acao.Actions[indice].Execute;
end;

procedure TfrmPrincipal.ConfigBarra;
var
  sql : string;
begin
  //Configura Barra de Status
  // [0] - 200 --Usuário
  // [1] - 240 --Razão Social da Empresa
  // [2] - 180 --Nome Fantasia da Filial
  // [3] - 200 --Use [F2] para cadastro E [F4] para consulta.

  //Nome do Usuário
  Barra.Panels[0].Text := ' ' + descUsuario;

  //Dados da empresa
  sql := 'SELECT * FROM vCadEmpresaFiscal WHERE idEmpresa = ' + idEmpresa + ' AND idCadEmpresa = ' + idCadEmpresa;
  with ExecutaSQLRet([], '', sql) do
  begin
    Barra.Panels[1].Text := ' ' + idEmpresa + '.' + FieldByName('descCadEmpresa').AsString;
    Barra.Panels[2].Text := ' ' + idCadEmpresa + '.' + FieldByName('descAbreviada').AsString;
  end;
end;

//************************************************************************************
// FIM DAS ROTINAS DA TREEVIEW
//************************************************************************************

procedure TfrmPrincipal.actCadDREFinanceiroExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadDREFinanceiro, TForm(frmCadDREFinanceiro));
end;

procedure TfrmPrincipal.actCadEmbarqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadEmbarque, TForm(frmCadEmbarque));
end;

procedure TfrmPrincipal.actCadEmpresaExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['EMPRESA']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.AbreModulo;
begin
  Application.CreateForm(TFrmPortal, FrmPortal);
  FrmPortal.ShowModal;
  //funcao.Atualizacao('CADASTRO');
  if FrmPortal.Ok then
  begin
    AbreStatus('Carregando o sistema... Aguarde...');

    //cria a tabela q armazenará a ordem de criação das páginas
    cdsNavPage.CreateDataSet;
    cdsNavPage.IndexFieldNames := 'idModulo';

    AbreStatus('Configurando o sistema... Aguarde...');

    With ExecutaSQLRet([], '', 'SELECT * FROM SegModulo WHERE idSegModulo = ' + IntToStr(idModulo)) do
    begin
      modulo := FieldByName('Abreviacao').AsString;
      Caption := 'Nilus Gestão do Agronegócio - [' + FieldByName('descSegModulo').AsString + ']';
    end; //fim do With ExecutaSQLRet([], '', 'SELECT * FROM SegModulo WHERE idSegModulo = ' + IntToStr(idModulo)) do

    // Busca Filial
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + idEmpresa) do
      filial := FieldByName('lancafilial').AsString = 'S';

    if not filial then
      idCadEmpresaFin := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;

    ConfigBarra;

    AbreStatus('Carregando os menus... Aguarde...');
    MontaMenu;
    AbreStatus('Habilitando os menus... Aguarde...');
    HabilitaMenu;
    FechaStatus;

    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT cotacaoautomatica FROM ConfigFinanc WHERE idEmpresa = ' + idEmpresa) do
      if (FieldByName('cotacaoautomatica').AsString = 'S') then
        ObtemCotacao;
  end
  else
    Application.Terminate;
end;

procedure TfrmPrincipal.AbreStatus(msg: string);
begin
  if ( frmStatus = nil ) then
    frmStatus := TfrmStatus.Create(Application);
  Screen.Cursor := crHourGlass;
  frmStatus.lblStatus.Caption := msg;
  frmStatus.Show;
  frmStatus.BringToFront;
  Application.ProcessMessages;
end;

procedure TfrmPrincipal.actAlteraPortadorExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmAlteraPortador, TForm(frmAlteraPortador));
end;

procedure TfrmPrincipal.actBackupExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmBackup, FrmBackup);
  frmBackup.ShowModal;
end;

procedure TfrmPrincipal.actBaixaTituloPagExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmBaixaTituloPag, TForm(FrmBaixaTituloPag));
end;

procedure TfrmPrincipal.actBaixaTituloRecExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmBaixaTituloRec, TForm(FrmBaixaTituloRec));
end;

procedure TfrmPrincipal.ActCadAbastecimentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadAbastecimento, TForm(FrmCadAbastecimento));
end;

procedure TfrmPrincipal.actCadAdiantamentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadAdiantamento, TForm(frmCadAdiantamento));
end;

procedure TfrmPrincipal.actCadArmOperacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadArmOperacao, TForm(frmCadArmOperacao));
end;

procedure TfrmPrincipal.actCadBancoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadBanco, TForm(frmCadBanco));
end;

procedure TfrmPrincipal.actCadBemExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmCadBem, TForm(frmCadBem));
end;

procedure TfrmPrincipal.actCadBemGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadBemGrupo, TForm(FrmCadBemGrupo));
end;

procedure TfrmPrincipal.actCadBemSubGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadBemSubGrupo, TForm(FrmCadBemSubGrupo));
end;

procedure TfrmPrincipal.actCadCaixaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmCadCaixa, TForm(frmCadCaixa));
end;

procedure TfrmPrincipal.actCadCfopExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCfop, TForm(frmCadCfop));
end;

procedure TfrmPrincipal.actCadCidadeExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmCadCidade, TForm(frmCadCidade));
end;

procedure TfrmPrincipal.actCadClienteExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['CLIENTE']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadCompradorExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadComprador, TForm(frmCadComprador));
end;

procedure TfrmPrincipal.actCadCondicaoPgtoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCondicaoPgto, TForm(frmCadCondicaoPgto));
end;

procedure TfrmPrincipal.actCadConfigEstExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadConfigEstoque, TForm(FrmCadConfigEstoque));
end;

procedure TfrmPrincipal.actCadConfigFinancExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigFinanc, TForm(frmCadConfigFinanc));
end;

procedure TfrmPrincipal.actCadConfigFiscalExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigFiscal, TForm(frmCadConfigFiscal));
end;

procedure TfrmPrincipal.actCadConfigProducaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigProducao, TForm(frmCadConfigProducao));
end;

procedure TfrmPrincipal.actCadConfigTransporteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigTransporte, TForm(frmCadConfigTransporte));
end;

procedure TfrmPrincipal.actCadContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConta, TForm(frmCadConta));
end;

procedure TfrmPrincipal.actCadContratoCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadContratoCompra, TForm(frmCadContratoCompra));
end;

procedure TfrmPrincipal.actCadContratoFreteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadContratoFrete, TForm(frmCadContratoFrete));
end;

procedure TfrmPrincipal.actCadContratoPrevisaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadContratoPrevisao, TForm(FrmCadContratoPrevisao));
end;

procedure TfrmPrincipal.actCadContratoVendaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadContratoVenda, TForm(frmCadContratoVenda));
end;

procedure TfrmPrincipal.actCadCriterioCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCriterioCompra, TForm(frmCadCriterioCompra));
end;

procedure TfrmPrincipal.actCadCTeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCTe, TForm(frmCadCTe));
end;

procedure TfrmPrincipal.actCadCulturaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCultura, TForm(frmCadCultura));
end;

procedure TfrmPrincipal.actCadFabricanteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadFabricante, TForm(frmCadFabricante));
end;

procedure TfrmPrincipal.actCadFornecedorExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['CLIENTE']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadFuncaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadFuncao, TForm(frmCadFuncao));
end;

procedure TfrmPrincipal.actCadFuncionarioExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['FUNCIONARIO']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadGerencialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadGerencial, TForm(frmCadGerencial));
end;

procedure TfrmPrincipal.actCadGrupoCadExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadGrupoCad, TForm(frmCadGrupoCad));
end;

procedure TfrmPrincipal.actCadGrupoGerencialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadGrupoGerencial, TForm(frmCadGrupoGerencial));
end;

procedure TfrmPrincipal.ActCadHistoricoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadHistorico, TForm(frmCadHistorico));
end;

procedure TfrmPrincipal.actCadPrevisaoPagExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadPrevisaoPag, TForm(frmCadPrevisaoPag));
end;

procedure TfrmPrincipal.actCadPrevisaoRecExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadPrevisaoRec, TForm(frmCadPrevisaoRec));
end;

procedure TfrmPrincipal.actCadProdDepositoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProdDeposito, TForm(frmCadProdDeposito));
end;

procedure TfrmPrincipal.actCadProdGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadProdGrupo, TForm(FrmCadProdGrupo));
end;

procedure TfrmPrincipal.actCadProdMedidaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProdMedida, TForm(frmCadProdMedida));
end;

procedure TfrmPrincipal.actCadProdSubGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProdSubGrupo, TForm(frmCadProdSubGrupo));
end;

procedure TfrmPrincipal.actCadProdutoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProduto, TForm(frmCadProduto));
end;

procedure TfrmPrincipal.actCadRateioTalhaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadRateioTalhao, TForm(frmCadRateioTalhao));
end;

procedure TfrmPrincipal.actCadReciboExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadRecibo, TForm(FrmCadRecibo));
end;

procedure TfrmPrincipal.actCadResultadoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadResultado, TForm(frmCadResultado));
end;

procedure TfrmPrincipal.actCadRomaneioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadRomaneio, TForm(frmCadRomaneio));
end;

procedure TfrmPrincipal.actCadSafraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadSafra, TForm(frmCadSafra));
end;

procedure TfrmPrincipal.actCadSegGrupoMenuExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadSegGrupoMenu, TForm(FrmCadSegGrupoMenu));
end;

procedure TfrmPrincipal.actCadSegMenuExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadSegMenu, TForm(FrmCadSegMenu));
end;

procedure TfrmPrincipal.actCadSegModuloExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadSegModulo, TForm(FrmCadSegModulo));
end;

procedure TfrmPrincipal.actCadSeguradoraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadSeguradora, TForm(FrmCadSeguradora));
end;

procedure TfrmPrincipal.actCadSubGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadSubGrupo, TForm(FrmCadSubGrupo));
end;

procedure TfrmPrincipal.actCadTabExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTab, TForm(frmCadTab));
end;

procedure TfrmPrincipal.actCadTalhaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTalhao, TForm(frmCadTalhao));
end;

procedure TfrmPrincipal.actCadTipoAdmissaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTipoAdmissao, TForm(frmCadTipoAdmissao));
end;

procedure TfrmPrincipal.actCadTipoAtividadeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTipoAtividade, TForm(frmCadTipoAtividade));
end;

procedure TfrmPrincipal.actCadTipoFiltroExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTipoFiltro, TForm(frmCadTipoFiltro));
end;

procedure TfrmPrincipal.actCadTipoMaquinaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadTipoMaquina, TForm(FrmCadTipoMaquina));
end;

procedure TfrmPrincipal.actCadTipoOleoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTipoOleo, TForm(frmCadTipoOleo));
end;

procedure TfrmPrincipal.actCadTipoPneuExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTipoPneu, TForm(frmCadTipoPneu));
end;

procedure TfrmPrincipal.actCadTituloPagExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTituloPag, TForm(frmCadTituloPag));
end;

procedure TfrmPrincipal.actCadTituloRecExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTituloRec, TForm(frmCadTituloRec));
end;

procedure TfrmPrincipal.actCadTributoDetalheExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTributoDetalhe, TForm(frmCadTributoDetalhe));
end;

procedure TfrmPrincipal.actCadUsuarioExecute(Sender: TObject);
begin
  if licenciado then
    funcao.AbreFrm(TFrmCadUsuario, TForm(FrmCadUsuario));
end;

procedure TfrmPrincipal.actCadUsuarioGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadUsuarioGrupo, TForm(FrmCadUsuarioGrupo));
end;

procedure TfrmPrincipal.actCadSegGrupoPermissaoExecute(Sender: TObject);
begin
  if licenciado then
    funcao.AbreFrm(TFrmCadSegGrupoPermissao, TForm(FrmCadSegGrupoPermissao));
end;

procedure TfrmPrincipal.actCadSegmentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadSegmento, TForm(frmCadSegmento));
end;

procedure TfrmPrincipal.actComissaoContratoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmComissaoContrato, TForm(FrmComissaoContrato));
end;

procedure TfrmPrincipal.actCompensacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmPesCompensacao, TForm(frmPesCompensacao));
end;

procedure TfrmPrincipal.actConfigLivroExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigLivro, TForm(frmCadConfigLivro));
end;

procedure TfrmPrincipal.actConfigLivrosContExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadConfigLivrosCont, TForm(FrmCadConfigLivrosCont));
end;

procedure TfrmPrincipal.actConfigNFExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmConfigNF, TForm(FrmConfigNF));
end;

procedure TfrmPrincipal.actContasPagarExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContasPagar, TForm(frmRelContasPagar));
end;

procedure TfrmPrincipal.actContasRecExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContasReceber, TForm(frmRelContasReceber));
end;

procedure TfrmPrincipal.actContEliminaCanceladoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmContEliminaCancelado, TForm(FrmContEliminaCancelado));
end;

procedure TfrmPrincipal.actContratoTituloRecExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmPesContratoTituloRec, TForm(FrmPesContratoTituloRec));
end;

procedure TfrmPrincipal.ActControleChequeDevExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmControleChequesDev, TForm(FrmControleChequesDev));
end;

procedure TfrmPrincipal.ActControleChequeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmControleCheques, TForm(FrmControleCheques));
end;

procedure TfrmPrincipal.actContServicosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadSerContrato, TForm(FrmCadSerContrato));
end;

procedure TfrmPrincipal.actCotFilialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCotacaoFilial, TForm(FrmCotacaoFilial));
end;

procedure TfrmPrincipal.actEncerraContratoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmEncerraContratoVenda, TForm(frmEncerraContratoVenda));
end;

procedure TfrmPrincipal.actExtratoContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelExtratoConta, TForm(frmRelExtratoConta));
end;

procedure TfrmPrincipal.actFichaGerencialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelFichaGerencial, TForm(frmRelFichaGerencial));
end;

procedure TfrmPrincipal.actFluxoCaixaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelFluxoCaixa, TForm(frmRelFluxoCaixa));
end;

procedure TfrmPrincipal.actGeraEmbarqueNfExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmGeraEmbarqueNf, TForm(FrmGeraEmbarqueNf));
end;

procedure TfrmPrincipal.actGeraTituloPPagExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmGeraTituloPPag, TForm(FrmGeraTituloPPag));
end;

procedure TfrmPrincipal.actGeraTituloPRecExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmGeraTituloPRec, TForm(FrmGeraTituloPRec));
end;

procedure TfrmPrincipal.actRelDiarioExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmRelDiario, TForm(FrmRelDiario));
end;

procedure TfrmPrincipal.actRelDREExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelDRE, TForm(frmRelDRE));
end;

procedure TfrmPrincipal.actImpExpPendenciasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmImp_Exp_Pendencias, FrmImp_Exp_Pendencias);
  FrmImp_Exp_Pendencias.ShowModal;
end;

procedure TfrmPrincipal.actImportaNFeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmImportaNFe, TForm(frmImportaNFe));
end;

procedure TfrmPrincipal.actImprimeChequeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmImprimeCheque, TForm(FrmImprimeCheque));
end;

procedure TfrmPrincipal.actIndiceExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadIndice, TForm(frmCadIndice));
end;

procedure TfrmPrincipal.actCadPlanoContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadPlanoConta, TForm(frmCadPlanoConta));
end;

procedure TfrmPrincipal.actCadPlanoRateioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadRateio, TForm(frmCadRateio));
end;

procedure TfrmPrincipal.actCadPortadorExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadPortador, TForm(FrmCadPortador));
end;

procedure TfrmPrincipal.actCadImpostoOutroExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadImpostoOutro, TForm(FrmCadImpostoOutro));
end;

procedure TfrmPrincipal.actCadIndiceExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadIndice, TForm(frmCadIndice));
end;

procedure TfrmPrincipal.actCadItemFreteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadItemFrete, TForm(FrmCadItemFrete));
end;

procedure TfrmPrincipal.actCadMaquinaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadMaquina, TForm(FrmCadMaquina));
end;

procedure TfrmPrincipal.actCadMaquinaMarcaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMaquinaMarca, TForm(frmCadMaquinaMarca));
end;

procedure TfrmPrincipal.actCadMaquinaSeguroExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadMaquinaSeguro, TForm(FrmCadMaquinaSeguro));
end;

procedure TfrmPrincipal.actCadMovCaixaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMovCaixa, TForm(frmCadMovCaixa));
end;

procedure TfrmPrincipal.actCadMovContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMovConta, TForm(frmCadMovConta));
end;

procedure TfrmPrincipal.actCadMovTransfExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMovTransf, TForm(frmCadMovTransf));
end;

procedure TfrmPrincipal.actCadNaturezaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadNatureza, TForm(FrmCadNatureza));
end;

procedure TfrmPrincipal.actCadOrdemFreteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadOrdemFrete, TForm(frmCadOrdemFrete));
end;

procedure TfrmPrincipal.actUtiConfigComprasExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigCompras, TForm(frmCadConfigCompras));
end;

procedure TfrmPrincipal.actUtiRecalcRateioExecute(Sender: TObject);
begin
//  funcao.AbreFrm(TFrmRecalcRateio, TForm(FrmRecalcRateio));
    Application.CreateForm(TFrmRecalcRateio, FrmRecalcRateio);
    FrmRecalcRateio.ShowModal;
end;

procedure TfrmPrincipal.BotaoClick(Sender: TObject);
var
  pRect : TRect;
  name : string;
begin
  name := trim(Copy((Sender as TSpeedButton).Name, 4, Length((Sender as TSpeedButton).Name)));
  GetWindowRect(TabMenu.Handle, pRect);
  (Sender as TSpeedButton).Down := true;
  (FindComponent('jm' + name) as TJvPopupMenu).Popup(pRect.Left + (Sender as TSpeedButton).Left, pRect.Top + (Sender as TSpeedButton).Height+ (Sender as TSpeedButton).Top);
  (Sender as TSpeedButton).Down := false;
end;

procedure TfrmPrincipal.actLanAplicaProdExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadAplicacao, TForm(FrmCadAplicacao));
end;

procedure TfrmPrincipal.actLanCotacaoExecute(Sender: TObject);
begin
//  funcao.AbreFrm(TfrmCadCotacao, TForm(frmCadCotacao));
  Application.CreateForm(TfrmCadCotacao, frmCadCotacao);
  frmCadCotacao.FormStyle := fsMDIChild;
  frmCadCotacao.Show;

end;

procedure TfrmPrincipal.actLanGerenciaRequisicaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmGerenciaRequisicao, TForm(frmGerenciaRequisicao));
end;

procedure TfrmPrincipal.actLanInventarioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadInventario, TForm(FrmCadInventario));
end;

procedure TfrmPrincipal.actLanMaquinaManutencaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadMaquinaManutencao, TForm(FrmCadMaquinaManutencao));
end;

procedure TfrmPrincipal.actLanMaquinaOperacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadMaquinaOperacao, TForm(FrmCadMaquinaOperacao));
end;

procedure TfrmPrincipal.actLanMovEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmMovEstoque, TForm(FrmMovEstoque));
end;

procedure TfrmPrincipal.actLanNfeExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmNfE, FrmNfE);
  FrmNfE.FormStyle := fsMDIChild;
  FrmNfE.Show;
//  funcao.AbreFrm(TFrmNfE, TForm(FrmNfE));
end;

procedure TfrmPrincipal.actLanNfExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmNotaFiscal, TForm(frmNotaFiscal));
end;

procedure TfrmPrincipal.actLanPedidoCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadPedidoCompra, TForm(FrmCadPedidoCompra));
end;

procedure TfrmPrincipal.actLanPesConferenciaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmPesConferencia, TForm(frmPesConferencia));
end;

procedure TfrmPrincipal.actLanPesCustosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmPesCustos, TForm(frmPesCustos));
end;

procedure TfrmPrincipal.actLanPesRecepcaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmPesRecepcao, TForm(frmPesRecepcao));
end;

procedure TfrmPrincipal.actLanRequisicaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadRequisicao, TForm(frmCadRequisicao));
end;

procedure TfrmPrincipal.actLivroEntradaExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmRelLivroEntrada, TForm(FrmRelLivroEntrada));
end;

procedure TfrmPrincipal.actLivroSaidasExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmRelLivroSaida, TForm(FrmRelLivroSaida));
end;

procedure TfrmPrincipal.actManutencaoFreteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmManutencaoFrete, TForm(FrmManutencaoFrete));
end;

procedure TfrmPrincipal.actManutencaoPedidoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmManutencaoPedido, TForm(FrmManutencaoPedido));
end;

procedure TfrmPrincipal.actMaquinaOperacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelMaquinaOperacao, TForm(FrmRelMaquinaOperacao));
end;

procedure TfrmPrincipal.actRelPlanoContaExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmRelPlanoConta, TForm(FrmRelPlanoConta))
end;

procedure TfrmPrincipal.actRelPrevisaoCustoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoPrevisaoCusto, TForm(FrmRelContratoPrevisaoCusto));
end;

procedure TfrmPrincipal.actRelProdEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelProdEstoque, TForm(frmRelProdEstoque));
end;

procedure TfrmPrincipal.actRelProducaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelProducao, TForm(FrmRelProducao));
end;

procedure TfrmPrincipal.actLanLoteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadLote, TForm(FrmCadLote));
end;

procedure TfrmPrincipal.actPagTituloExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmPagTitulo, TForm(frmPagTitulo));
end;

procedure TfrmPrincipal.actPesContIntegracaoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmPesContIntegracao, TForm(frmPesContIntegracao));
end;

procedure TfrmPrincipal.actPesContratoTituloPagExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmPesContratoTituloPag, TForm(frmPesContratoTituloPag));
end;

procedure TfrmPrincipal.actPesDREFinanceiroExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TfrmPesDREFinanceiro, TForm(frmPesDREFinanceiro));
end;

procedure TfrmPrincipal.actPesGerencialExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TfrmPesGerencial, TForm(frmPesGerencial));
end;

procedure TfrmPrincipal.actPesTitulosExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmPesTitulos, TForm(frmPesTitulos));
end;

procedure TfrmPrincipal.actRecTituloExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRecTitulo, TForm(frmRecTitulo));
end;

procedure TfrmPrincipal.actLanRelacionamentoExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmCadContRelaciona, TForm(FrmCadContRelaciona))
end;

procedure TfrmPrincipal.actRelAbastecimentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelAbastecimento, TForm(FrmRelAbastecimento));
end;

procedure TfrmPrincipal.actRelAdiantamentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelAdiantamento, TForm(frmRelAdiantamento));
end;

procedure TfrmPrincipal.actRelAplicacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelAplicacao, TForm(FrmRelAplicacao));
end;

procedure TfrmPrincipal.actRelApuracaoIcmsExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelApuracaoIcms, TForm(frmRelApuracaoIcms));
end;

procedure TfrmPrincipal.ActRelBalanceteExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelBalancete, TForm(frmRelBalancete));
end;

procedure TfrmPrincipal.actRelBalPatrimonialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelBalPatrimonial, TForm(FrmRelBalPatrimonial));
end;

procedure TfrmPrincipal.ActRelChequesEmitidosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelChequesEmitidos, TForm(FrmRelChequesEmitidos));
end;

procedure TfrmPrincipal.actRelCodigoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelCodigo, TForm(FrmRelCodigo));
end;

procedure TfrmPrincipal.actRelComparativoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelComparativo, TForm(FrmRelComparativo));
end;

procedure TfrmPrincipal.actRelConfPedidoCompraExecute(Sender: TObject);
begin
 funcao.AbreFrm(TfrmRelConfPedidoCompra, TForm(frmRelConfPedidoCompra));
end;

procedure TfrmPrincipal.actRelConfRecepcaoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelConfRecepcao, TForm(FrmRelConfRecepcao));
end;

procedure TfrmPrincipal.actRelConfResultadoExecute(Sender: TObject);
begin
    Funcao.AbreFrm(TFrmRelConfResultado, TForm(FrmRelConfResultado));
end;

procedure TfrmPrincipal.actRelContagemExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContagem, TForm(frmRelContagem));
end;

procedure TfrmPrincipal.actRelContasPagarPortadorExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelContasPagarPortador, TForm(frmRelContasPagarPortador));
end;

procedure TfrmPrincipal.actRelContFinancExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContabilXFinan, TForm(FrmRelContabilXFinan));
end;

procedure TfrmPrincipal.actRelContratoComissaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoComissao, TForm(FrmRelContratoComissao));
end;

procedure TfrmPrincipal.actRelContratoCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoCompra, TForm(FrmRelContratoCompra));
end;

procedure TfrmPrincipal.actRelContratoCompraFinancExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoCompraFinanc, TForm(FrmRelContratoCompraFinanc));
end;

procedure TfrmPrincipal.actRelContratoCompraResExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoCompraRes, TForm(FrmRelContratoCompraRes));
end;

procedure TfrmPrincipal.actRelContratoCustoCFOPExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoCustoCFOP, TForm(FrmRelContratoCustoCFOP));
end;

procedure TfrmPrincipal.actRelContratoCustoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoCusto, TForm(FrmRelContratoCusto));
end;

procedure TfrmPrincipal.actRelContratoDescontoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoDesconto, TForm(FrmRelContratoDesconto));
end;

procedure TfrmPrincipal.actRelContratoDetalhadoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoDetalhado, TForm(FrmRelContratoDetalhado));
end;

procedure TfrmPrincipal.actRelContratoDetCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoCompraDet, TForm(FrmRelContratoCompraDet));
end;

procedure TfrmPrincipal.actRelContratoEmbarqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoEmbarque, TForm(FrmRelContratoEmbarque));
end;

procedure TfrmPrincipal.actRelContratoEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoEstoque, TForm(FrmRelContratoEstoque));
end;

procedure TfrmPrincipal.actRelContratoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoVenda, TForm(FrmRelContratoVenda));
end;

procedure TfrmPrincipal.actRelContratosPrevisaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoPrevisao, TForm(FrmRelContratoPrevisao));
end;

procedure TfrmPrincipal.actRelContratoVendaFinancExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContratoVendaFinanc, TForm(FrmRelContratoVendaFinanc));
end;

procedure TfrmPrincipal.actRelContratoVendaResExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContratoVendaRes, TForm(frmRelContratoVendaRes));
end;

procedure TfrmPrincipal.actRelCotacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelCotacao, TForm(frmRelCotacao));
end;

procedure TfrmPrincipal.actRelCurvaABCContratoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelCurvaABCContrato, TForm(FrmRelCurvaABCContrato));
end;

procedure TfrmPrincipal.actRelCustosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelCustos, TForm(frmRelCustos));
end;

procedure TfrmPrincipal.actRelEntregasExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelEntrega, TForm(FrmRelEntrega));
end;

procedure TfrmPrincipal.actRelEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelEstoque, TForm(frmRelEstoque));
end;

procedure TfrmPrincipal.actRelExtratoCaixaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelExtratoCaixa, TForm(frmRelExtratoCaixa));
end;

procedure TfrmPrincipal.actRelExtratoClienteExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelExtratoCliente, TForm(FrmRelExtratoCliente));
end;

procedure TfrmPrincipal.actRelExtratoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelExtratoBancario, TForm(frmRelExtratoBancario));
end;

procedure TfrmPrincipal.actRelExtratoFornecedorExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TFrmRelExtratoFornecedor, TForm(FrmRelExtratoFornecedor));
end;

procedure TfrmPrincipal.actRelFichaApontaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelFichaAponta, TForm(frmRelFichaAponta));
end;

procedure TfrmPrincipal.actRelFichaEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelFichaEstoque, TForm(frmRelFichaEstoque));
end;

procedure TfrmPrincipal.ActRelFluxoCaixaAnaliticoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelFluxoCaixaAnalitico, TForm(FrmRelFluxoCaixaAnalitico));
end;

procedure TfrmPrincipal.actRelFluxoMensalExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelFluxoCaixaMensal, TForm(FrmRelFluxoCaixaMensal));
end;

procedure TfrmPrincipal.actRelFuncionarioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelFuncionarios, TForm(FrmRelFuncionarios));
end;

procedure TfrmPrincipal.actRelGerencialExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelGerencial, TForm(frmRelGerencial));
end;

procedure TfrmPrincipal.actRelGerencialNfEExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelGerencialDet, TForm(FrmRelGerencialDet));
end;

procedure TfrmPrincipal.actRelListagemCliForExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelListagemCliFor, TForm(FrmRelListagemCliFor));
end;

procedure TfrmPrincipal.actRelLogsExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelLogsSeguranca, TForm(FrmRelLogsSeguranca));
end;

procedure TfrmPrincipal.actRelManutencaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelManutencao, TForm(FrmRelManutencao));
end;

procedure TfrmPrincipal.actRelMaquinasExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelMaquinas, TForm(frmRelMaquinas));
end;

procedure TfrmPrincipal.actRelMovCaixaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelMovCaixa, TForm(frmRelMovCaixa));
end;

procedure TfrmPrincipal.actRelMovimentacaoExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TfrmRelMovimentacao, TForm(frmRelMovimentacao));
end;

procedure TfrmPrincipal.actRelNaoIntegradosLoteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelContCaixaConta, TForm(FrmRelContCaixaConta));
end;

procedure TfrmPrincipal.actRelNotasFiscaisExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelNotasFiscais, TForm(frmRelNotasFiscais));
end;

procedure TfrmPrincipal.actRelOrdemFreteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelOrdemFrete, TForm(frmRelOrdemFrete));
end;

procedure TfrmPrincipal.actRelPagamentosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelPagamentos, TForm(frmRelPagamentos));
end;

procedure TfrmPrincipal.actRelPedidoCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelPedidoCompra, TForm(frmRelPedidoCompra));
end;

procedure TfrmPrincipal.actRelRateioExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TfrmRelRateio, TForm(frmRelRateio));
end;

procedure TfrmPrincipal.actRelRazaoAnaliticoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelRazao, TForm(frmRelRazao));
end;

procedure TfrmPrincipal.actRelRecebimentosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelRecebimentos, TForm(frmRelRecebimentos));
end;

procedure TfrmPrincipal.actRelRecibosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelRecibos, TForm(FrmRelRecibos));
end;

procedure TfrmPrincipal.actRelRelacContabilExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelRelacContabil, TForm(FrmRelRelacContabil));
end;

procedure TfrmPrincipal.actRelRentContratoVendaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelRentContratoVenda, TForm(frmRelRentContratoVenda));
end;

procedure TfrmPrincipal.actRelRequisicaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelRequisicao, TForm(frmRelRequisicao));
end;

procedure TfrmPrincipal.actRelResultadoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelResultado, TForm(frmRelResultado));
end;

procedure TfrmPrincipal.actRelResumoDescontoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelResumoDesconto, TForm(FrmRelResumoDesconto));
end;

procedure TfrmPrincipal.ActRelRomaneiosExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelRomaneioProdutor, TForm(FrmRelRomaneioProdutor));
end;

procedure TfrmPrincipal.actRelSaldoBancarioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelSaldoBancario, TForm(FrmRelSaldoBancario));
end;

procedure TfrmPrincipal.actCadDepartamentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadDepartamento, TForm(frmCadDepartamento));
end;

procedure TfrmPrincipal.actCadDescontoExecute(Sender: TObject);
begin
//  funcao.AbreFrm(TfrmCadDesconto, TForm(frmCadDesconto));
end;

procedure TfrmPrincipal.actCadDocSerieExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadDocSerie, TForm(frmCadDocSerie));
end;

procedure TfrmPrincipal.ActCadDocumentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadDocumento, TForm(FrmCadDocumento));
end;

procedure TfrmPrincipal.actSintegraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmSintegra, TForm(FrmSintegra));
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSobre, FrmSobre);
  FrmSobre.ShowModal;
end;

procedure TfrmPrincipal.actSpedFiscalExecute(Sender: TObject);
begin
//  funcao.AbreFrm(TFrmSPED, TForm(FrmSPED));
end;

procedure TfrmPrincipal.actSubstituiTitulosPagExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSubstituiTitulos, FrmSubstituiTitulos);
  FrmSubstituiTitulos.Caption := 'Substituição de títulos a pagar';
  FrmSubstituiTitulos.tag := 0;
  FrmSubstituiTitulos.Show;
end;

procedure TfrmPrincipal.actSubstituiTitulosRecExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSubstituiTitulos, FrmSubstituiTitulos);
  FrmSubstituiTitulos.Caption := 'Substituição de títulos a receber';
  FrmSubstituiTitulos.tag := 0;
  FrmSubstituiTitulos.Show;
end;

procedure TfrmPrincipal.actTransfContratoCompraExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmTransfContratoCompra, TForm(FrmTransfContratoCompra));
end;

procedure TfrmPrincipal.actTransfContratoVendaExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmTransfContratoVenda, TForm(FrmTransfContratoVenda));
end;

procedure TfrmPrincipal.actCadTpPlanoContaExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmCadPlanoContaGrupo, TForm(frmCadPlanoContaGrupo));
end;

procedure TfrmPrincipal.ActRelSlipExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmRelSlip, TForm(FrmRelSlip));
end;

procedure TfrmPrincipal.ActRelTermoAberturaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmRelTermoAbertura, TForm(FrmRelTermoAbertura));
end;

procedure TfrmPrincipal.actSaldoCredorExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadSaldoCredor, TForm(frmCadSaldoCredor));
end;

procedure TfrmPrincipal.ActSelEmpresasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSelEmpresas, FrmSelEmpresas);
  FrmSelEmpresas.ShowModal;
end;

procedure TfrmPrincipal.fecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.FechaStatus;
begin
  if ( frmStatus <> nil ) then
    frmStatus.Hide;
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  dmPadrao.dbConexao.CloseDataSets;
  dmPadrao.dbConexao.Close;
  Application.Terminate;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  par : byte;
begin
  funcao.ExcluiAntigos;

  cdsAct.CreateDataSet;
  cdsAct.IndexFieldNames := 'descAct';
  WindowState := wsmaximized;
  Application.OnMessage := funcao.AppMessage;
  erro := 0;

  //verifica se tem atualização
  funcao.Atualizacao('');
//  par := 0; //em desenvolvimento
{  par := 1; //distribuição cliente
  if par = 1 then
  begin
    if ParamCount <= 0 then
      erro := 1
    else
      if (ParamStr(1) = 'Nilus') and (ParamStr(2) = 'G3sta0') then
      begin
        idEmpresa := ParamStr(3);
        idCadEmpresa := ParamStr(4);
        idUsuario := ParamStr(5);
        idUsuarioGrupo := StrToInt(ParamStr(6));
        cdsParametros.Active := false;
        cdsParametros.CommandText := 'SELECT * FROM Usuario WHERE idUsuario = ' + idUsuario;
        cdsParametros.Active := true;
        descUsuario := cdsParametros.FieldByName('descUsuario').AsString;
        cdsParametros.Active := false;
      end
      else
        erro := 1;
  end
  else
  begin
    descUsuario := 'TI';
    idUsuario := '1';
    idEmpresa := '1';
    idCadEmpresa := '1';
  end;
  if erro > 0 then
  begin
    messagedlg('Esse aplicativo deve ser iniciado pelo Portal Nilus!', mterror, [mbok], 0);
    close;
  end;
  filial := true; }
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  sql : string;
begin
  AbreModulo;
  TabMenu.Tabs[8].Visible := ExecutaSQLRet([], '', 'SELECT COUNT(*) qtde FROM vCadEmpresaFiscalSer').FieldByName('qtde').AsInteger > 0;;
  TabMenu.Tabs[9].Visible := ExecutaSQLRet([], '', 'SELECT COUNT(*) qtde FROM vCadEmpresaFiscalCTe').FieldByName('qtde').AsInteger > 0;
//  funcao.AbreFrm(TfrmTeste, TForm(frmTeste));
end;

procedure TfrmPrincipal.HabilitaMenu;
//procedure responsável por Habilitar os menus para criação dos novos conforme módulo selecionado
var
  i, ind, idMod : integer;
  CompNome, pagina : string;
begin
  AbreStatus('Habilitando Menus... Aguarde...');

  NavSplitter.Visible := false;

  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TJvTreeView) or (Components[i] is TJvNavPanelPage) or (Components[i] is TJvNavPanelDivider) or
       (Components[i] is TSpeedButton) or (Components[i] is TMenuItem) or (Components[i] is TJvNavigationPane) then
    begin
      CompNome := Components[i].Name;
      ind := Pos('__', Components[i].Name);

      if ind > 0 then
      begin
        idMod := StrToInt(copy(Components[i].Name, ind + 2, Length(Components[i].Name)));
        if (Components[i] is TJvTreeView) then
          (Components[i] as TJvTreeView).Visible := idMod = idModulo
        else
          if (Components[i] is TSpeedButton) then
            (Components[i] as TSpeedButton).Visible := idMod = idModulo
          else
            if (Components[i] is TJvNavPanelPage) then
              (Components[i] as TJvNavPanelPage).Visible := idMod = idModulo
            else
              if (Components[i] is TJvNavPanelDivider) then
                (Components[i] as TJvNavPanelDivider).Visible := idMod = idModulo
              else
                if (Components[i] is TJvNavigationPane) then
                begin
                  (Components[i] as TJvNavigationPane).Visible := idMod = idModulo;
                  if idMod = idModulo then
                    navPan := (Components[i] as TJvNavigationPane).Name;
                end;
      end;
    end;

    //Atribui a página q ficará ativa
    pagina := '';
    //busca a página correspondente ao módulo
    cdsNavPage.First;
    if cdsNavPage.FindKey([idModulo]) then
      pagina := cdsNavPagenamePage.AsString;
    //significa q vai fazer a página ativa
    if trim(pagina) <> '' then
    begin
      if FindComponent(pagina) <> nil  then //existe
        (FindComponent(navPan) as TJvNavigationPane).ActivePage := (FindComponent(pagina) as TJvNavPanelPage);
    end;

    NavSplitter.Visible := true;
end;

procedure TfrmPrincipal.Image1DblClick(Sender: TObject);
begin
  Application.CreateForm(TFrmSeguranca, FrmSeguranca);
  FrmSeguranca.ShowModal;
end;

procedure TfrmPrincipal.MontaMenu;
var
  Tree : TJvTreeView;
  Page: TJvNavPanelPage;
  Nav : TJvNavigationPane;
  Menu : TMenuItem;
  Button : TSpeedButton;
  Act : TAction;
  pop : TJvPopupMenu;
  i, l, j : integer;
  sql : string;
begin
  cdsModulo.Active := false;
  cdsModulo.CommandText := 'SELECT * FROM SegModulo ORDER BY idSegModulo';
  cdsModulo.Active := true;

  cdsModulo.First;
  while not cdsModulo.Eof do
  begin
    //Cria o NavPanel
    Nav := TJvNavigationPane.Create(Self);
    Nav.Parent := Self;
    Nav.Name := 'Nav' + '__' + cdsModuloidsegmodulo .AsString;
    Nav.Align := alLeft;
    Nav.Cursor := crHandPoint;
    Nav.LargeImages := LargeImages;
    Nav.SmallImages := SmallImages;
    Nav.StyleManager := JvNavPaneStyleManager1;
    Nav.Width := 165;
    Nav.AutoHeaders := True;

    //primeiramente cria os grupos
    cdsGrupo.Active := false;
    cdsGrupo.CommandText := 'SELECT * FROM SegGrupoMenu WHERE stSegGrupoMenu = ' + QuotedStr('ATIVO') +
                            ' AND idSegModulo = ' + cdsModuloidsegmodulo.AsString +
                            ' ORDER BY ordem';
    cdsGrupo.Active := true;

    cdsGrupo.First;
    l := 5;
    i := 0;
    while not cdsGrupo.Eof do
    begin
      //Cria o Painel, TreeView e o Menu
      Page := TJvNavPanelPage.Create(Self);
      Page.Caption := '&' + cdsGrupodescseggrupomenu.AsString;
      if (cdsGrupoidSegModulo.AsInteger = 1) and (cdsGrupoidSegGrupoMenu.AsInteger = 4) then
        Page.ImageIndex := cdsGrupoindiceimagem.AsInteger;
      Page.ImageIndex := cdsGrupoindiceimagem.AsInteger;
      Page.PageList := Nav;
      Page.Name := 'jvPage' + IntToStr(i) + '__' + cdsModuloidsegmodulo.AsString;

      if cdsGrupoprimeiro.AsString = 'S' then
      begin
        cdsNavPage.First;
        if cdsNavPage.FindKey([cdsModuloidsegmodulo.AsInteger]) then
          cdsNavPage.Edit
        else
        begin
          cdsNavPage.Append;
          cdsNavPageidModulo.AsInteger := cdsModuloidsegmodulo.AsInteger;
        end;

        cdsNavPagenamePage.AsString := Page.Name;
        cdsNavPage.Post;
      end;

      with TJvNavPanelDivider.Create(Self) do
      begin
        Caption := '';
        Parent := Page;
        Top := 100;
        Align := alTop;
        Cursor := crSizeNS;
        StyleManager := JvNavPaneStyleManager1;
        Name := 'jvDiv' + IntToStr(i) + '__' + cdsModuloidsegmodulo.AsString;
        Caption := '';
      end;

  {    Menu := TMenuItem.Create(Self);
      Menu.Caption := cdsGrupodescSegGrupoMenu.AsString;
      MainMenu.Items.Add(Menu); }

      Button := TSpeedButton.Create(Self);

      With Button do
      begin
        Height := 25;
        Width := 85;
        Caption := cdsGrupodescseggrupomenu.AsString;
        Top := 25;
        Left := l;
        Parent := TabMenu;
        Name := 'BtnPop' + IntToStr(i) + '__' + cdsModuloidsegmodulo.AsString;
        OnClick := BotaoClick;
        l := l + Width + 1;
        Flat := True;
        Enabled := true;
        GroupIndex := 1;
      end;

      pop := TJvPopupMenu.Create(Self);
      With pop do
      begin
        Name := 'jmPop' + IntToStr(i) + '__' + cdsModuloidsegmodulo.AsString;
        Style := msXp;
        Alignment := paLeft;
        Images := ImageList1;
      end;

      Tree := TJvTreeView.Create(Self);
      with Tree do
      begin
        Parent := Page;
        Align := alClient;
        Font.Style := [];
        BorderStyle := bsNone;
        Images := ImageList1;
        ReadOnly := true;
        ItemHeight := 20;
        CheckEventsDisabled := True;
        Cursor := crHandPoint;
        HotTrack := true;
        Name := 'jmTree' + IntToStr(i) + '__' + cdsModuloidsegmodulo.AsString;
      end;

      cdsMenu.Active := false;
      cdsMenu.CommandText := 'SELECT * FROM SegMenu WHERE stSegMenu = ' + QuotedStr('ATIVO') +
                             ' AND idSegModulo = ' + cdsModuloidsegmodulo.AsString +
                             ' AND idSegGrupoMenu = ' + cdsGrupoidseggrupomenu.AsString +
                             ' ORDER BY ordem';
      cdsMenu.Active := true;

      cdsMenu.First;
      j := 0;
      while not cdsMenu.Eof do
      begin
        //Trata a questão do Traço
        if trim(cdsMenudescSegMenuInterno.AsString) <> '__'  then
        begin
          Tree.Items.Add(nil, cdsMenudescSegMenu.AsString);
          Act := nil;
          if Assigned(FrmPrincipal.FindComponent(cdsMenudescSegMenuInterno.AsString)) then
            if (FrmPrincipal.FindComponent(cdsMenudescSegMenuInterno.AsString) is TAction) then
            begin
              Act := (FrmPrincipal.FindComponent(cdsMenudescSegMenuInterno.AsString) as TAction);
              sql := 'SELECT acessar FROM SegGrupoPermissao WHERE idSegModulo = ' + cdsModuloidSegModulo.AsString +
               ' AND idSegGrupoMenu = ' + cdsGrupoidSegGrupoMenu.AsString + ' AND idSegMenu = ' + cdsMenuidSegMenu.AsString +
               ' AND idUsuarioGrupo = ' + IntToStr(idUsuarioGrupo);
              cdsTemp.Active := false;
              cdsTemp.CommandText := sql;
              cdsTemp.Active := true;

              if cdsAct.FindKey([Act.Name]) then
                Act.Enabled := True
              else
              begin
                Act.Enabled := cdsTemp.FieldByName('acessar').AsString = 'S';
                if Act.Enabled then
                begin
                  cdsAct.Append;
                  cdsActdescAct.AsString := Act.Name;
                  cdsAct.Post;
                end;
              end;

              cdsTemp.Active := false;

              if Act.Enabled then
              begin
                Tree.Items[Tree.Items.Count-1].ImageIndex := Act.ImageIndex;
                Tree.Items[Tree.Items.Count-1].SelectedIndex := Act.ImageIndex;
              end
              else
              begin
                Tree.Items[Tree.Items.Count-1].ImageIndex := 0;
                Tree.Items[Tree.Items.Count-1].SelectedIndex := 0;
              end;
              Tree.Items[Tree.Items.Count-1].StateIndex := Act.Index;
              Tree.OnClick := TreeOnclick;
            end;

        end; // fim do else do if trim(cdsMenudescSegMenuInterno.AsString) = '-'  then
        //procurar action
        Menu := TMenuItem.Create(Self);

        if trim(cdsMenudescSegMenuInterno.AsString) <> '-' then
        begin
          if Assigned(Act) then
            Menu.Action := Act
          else
            Menu.Caption := cdsMenudescSegMenu.AsString;
        end
        else
          Menu.Caption := '-';

        Menu.Name := 'Mnu' + IntToStr(i) + '_' + IntToStr(j) + '__' + cdsModuloidsegmodulo.AsString;
        pop.Items.Add(Menu);
  //      MainMenu.Items[i].Add(Menu);
        j := j + 1;
        cdsMenu.Next;
      end; //fim do

      //Adiciona as opções de Segurança que só ficarão visíveis atravéz de senha
      if i = 0 then
      begin
        Menu := TMenuItem.Create(Self);
        Menu.Caption := '-';
        Menu.Name := 'mnuTraco1' +  '__' + cdsModuloidsegmodulo.AsString;
        pop.Items.Add(Menu);

        Menu := TMenuItem.Create(Self);
        Menu.Action := actCadSegModulo;
        actCadSegModulo.Visible := false;
        actCadSegModulo.Enabled := true;
        Menu.Name := 'mnuSegModulo' +  '__' + cdsModuloidsegmodulo.AsString;
        pop.Items.Add(Menu);

        Menu := TMenuItem.Create(Self);
        Menu.Action := actCadSegGrupoMenu;
        actCadSegGrupoMenu.Visible := false;
        actCadSegGrupoMenu.Enabled := true;
        Menu.Name := 'mnuSegGrupoMenu' +  '__' + cdsModuloidsegmodulo.AsString;
        pop.Items.Add(Menu);

        Menu := TMenuItem.Create(Self);
        Menu.Action := actCadSegMenu;
        actCadSegMenu.Visible := false;
        actCadSegMenu.Enabled := true;
        Menu.Name := 'mnuSegMenu' +  '__' + cdsModuloidsegmodulo.AsString;
        pop.Items.Add(Menu);
      end;


      //Adiciona a opção de fechar o módulo
      if i = 0 then
      begin
        Menu := TMenuItem.Create(Self);
        Menu.Caption := '-';
        Menu.Name := 'mnuTraco2' +  '__' + cdsModuloidsegmodulo.AsString;
        pop.Items.Add(Menu);

        Menu := TMenuItem.Create(Self);
        Menu.Action := fechar;
        Menu.Name := 'mnuFechar' +  '__' + cdsModuloidsegmodulo.AsString;
        pop.Items.Add(Menu);
      end;

      i := i + 1;
      cdsGrupo.Next;
    end; // fim do while not cdsGrupo.Eof do

    Button := TSpeedButton.Create(Self);

    With Button do
    begin
      Height := 25;
      Width := 85;
      Caption := 'Ajuda';
      Top := 25;
      Left := l;
      Parent := TabMenu;
      Name := 'BtnAjuda' + '__' + cdsModuloidsegmodulo.AsString;
      OnClick := BotaoClick;
      l := l + Width + 1;
      Flat := True;
      Enabled := true;
      GroupIndex := 1;
    end;

    pop := TJvPopupMenu.Create(Self);
    With pop do
    begin
      Name := 'jmAjuda' + '__' + cdsModuloidsegmodulo.AsString;
      Style := msXp;
      Alignment := paLeft;
      Images := ImageList1;
      Menu := TMenuItem.Create(Self);
      Menu.Action := actSobre;
      Items.Add(Menu);
    end;

    Button := TSpeedButton.Create(Self);
    With Button do
    begin
      Height := 25;
      Width := 85;
      Action := fechar;
      Top := 25;
      Left := l;
      Parent := TabMenu;
      Name := 'BtnFechar' + '__' + cdsModuloidsegmodulo.AsString;
  //    l := l + Width + 1;
      Flat := True;
      Enabled := true;
      GroupIndex := 1;
    end;

    Application.ProcessMessages;
    cdsModulo.Next;
  end; //final do laço do módulo
end;

procedure TfrmPrincipal.NavSplitterClick(Sender: TObject);
begin
  (FindComponent(navPan) as TJvNavigationPane).Visible := not (FindComponent(navPan) as TJvNavigationPane).Visible;
end;

procedure TfrmPrincipal.ObtemCotacao;
var
Simbolo, sql : string;
Item : TACBrCotacaoItem;
id : integer;
data : TDateTime;
begin
  sql := 'SELECT * FROM Indice WHERE descSimbolo = ' + QuotedStr('USD');
  with ExecutaSQLRet([], '', sql) do
  begin
    Simbolo := AnsiUpperCase(Trim(FieldByName('descSimbolo').AsString));
    id := FieldByName('idIndice').AsInteger;
  end;

    data := today;
    begin
      cdsIndiceLancamento.Close;
      cdsIndiceLancamento.CommandText := 'SELECT * FROM IndiceLancamento WHERE idIndice = ' + IntToStr(id) + ' AND dtLancamento = ' + QuotedStr(DateToStr(data));
      cdsIndiceLancamento.Open;

      if cdsIndiceLancamento.RecordCount = 0 then
      begin
        if ACBrCotacao1.Tabela.Count = 0 then
        begin
          ACBrCotacao1.AtualizarTabela(data);
        end;

        if Simbolo <> '' then
        begin
          Item := ACBrCotacao1.Procurar(Simbolo);

          if Item <> nil then
          begin
            if not (cdsIndiceLancamento.State in [dsEdit, dsInsert]) then
              cdsIndiceLancamento.Append;
            cdsIndiceLancamento.FieldByName('idIndice').AsInteger := id;
            cdsIndiceLancamento.FieldByName('dtLancamento').AsDateTime := Item.DataCotacao;
            cdsIndiceLancamento.FieldByName('vlLancamento').AsFloat := Item.TaxaVenda;
            cdsIndiceLancamento.Post;
            cdsIndiceLancamento.ApplyUpdates(0);
          end;
        end;
      end;
    end;

  inherited;

end;

procedure TfrmPrincipal.TabMenuChange(Sender: TObject);
begin
//  if (TabMenu.TabIndex+1) = 7 then
//  begin
//    messagedlg('Módulo ainda não homologado!', mtinformation, [mbok], 0);
//    TabMenu.TabIndex := 0;
//  end;

  case TabMenu.TabIndex of
    0 : modulo := 'CAD'; //Cadastros Gerais
    1 : modulo := 'COM'; //Compras
    2 : modulo := 'CON'; //Contábil
    3 : modulo := 'CUS'; //Custos de Produção
    4 : modulo := 'FIN'; //Finanças
    5 : modulo := 'FIS'; //Fiscal
    6 : modulo := 'FRO'; //Frotas
    7 : modulo := 'PAT'; //Patrimonial
  end;

  if (TabMenu.TabIndex+1) <> idModulo then
  begin
    AbreStatus('Carregando o Módulo: ' + TabMenu.Tabs[TabMenu.TabIndex].Caption);
    idModulo := TabMenu.TabIndex+1;
    HabilitaMenu;
    frmPrincipal.Caption := 'Nilus Gestão do Agronegócio - [' + TabMenu.Tabs[TabMenu.TabIndex].Caption + ']';
    FechaStatus;
  end;
end;

procedure TfrmPrincipal.TreeOnClick(Sender: TObject);
begin
  if (Sender as TJvTreeView).Items.Count > 0 then
    ClicaTreeView((Sender as TJvTreeView).Items[(Sender as TJvTreeView).Selected.Index].StateIndex );
end;

end.
