unit uFrmCadCTe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, CFind, DB, SqlExpr, Provider,
  DBClient, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl,
  CDBRadioGroup, CGroupBox, Grids, DBGrids, CDBGrid, CDBComboBox, CDBMemo,
  CDBCheckBox, pcnConversao, ClipBrd, DBXcommon, Math, ACBrCTe,
  ACBrCTeDACTEClass, ACBrCTeDACTEFR, System.Actions, frxClass, frxExportPDF,
  ACBrBase, ACBrDFe, System.ImageList;

type
  TFrmCadCTe = class(TFrmCadPadraoEmpFiscal)
    dspCTeValePed: TDataSetProvider;
    dsCTeValePed: TDataSource;
    cdsCTeValePed: TClientDataSet;
    cdsCTeValePedidEmpresa: TIntegerField;
    cdsCTeValePedidCadEmpresa: TSmallintField;
    cdsCTeValePedidCte: TIntegerField;
    cdsCTeValePednrCompra: TFMTBCDField;
    cdsCTeValePedidFornecedor: TIntegerField;
    cdsCTeValePedidRespPagto: TIntegerField;
    cdsCTeValePedvlValePedagio: TFMTBCDField;
    cdsCTeValePeddescFornecedor: TStringField;
    cdsCTeValePeddescRespPagto: TStringField;
    cdsCTeValePedidDocSerie: TStringField;
    sdsCTeValePed: TSQLDataSet;
    sdsCTeOcc: TSQLDataSet;
    dspCTeOcc: TDataSetProvider;
    cdsCTeOcc: TClientDataSet;
    cdsCTeOccidEmpresa: TIntegerField;
    cdsCTeOccidCadEmpresa: TSmallintField;
    cdsCTeOccidCte: TIntegerField;
    cdsCTeOccserie: TStringField;
    cdsCTeOccnrOcc: TFMTBCDField;
    cdsCTeOccdtEmissao: TSQLTimeStampField;
    cdsCTeOccidEmissorOcc: TIntegerField;
    cdsCTeOccdescEmissor: TStringField;
    cdsCTeOccidDocSerie: TStringField;
    dsCTeOcc: TDataSource;
    dsCTeRodo: TDataSource;
    cdsCTeRodo: TClientDataSet;
    dspCTeRodo: TDataSetProvider;
    sdsCTeRodo: TSQLDataSet;
    sdsCTeSeg: TSQLDataSet;
    dspCTeSeg: TDataSetProvider;
    cdsCTeSeg: TClientDataSet;
    dsCTeSeg: TDataSource;
    dsCTePeri: TDataSource;
    cdsCTePeri: TClientDataSet;
    cdsCTePeriidEmpresa: TIntegerField;
    cdsCTePeriidCadEmpresa: TSmallintField;
    cdsCTePeriidCte: TIntegerField;
    cdsCTePerinrONU: TStringField;
    cdsCTePeridescNomeProduto: TStringField;
    cdsCTePeridescClasseRisco: TStringField;
    cdsCTePerigrupoEmbalagem: TStringField;
    cdsCTePeriqtProduto: TStringField;
    cdsCTePeriqtVolume: TStringField;
    cdsCTePeripontoFulgor: TStringField;
    cdsCTePeriidDocSerie: TStringField;
    dspCTePeri: TDataSetProvider;
    sdsCTePeri: TSQLDataSet;
    sdsCTeDocAnt: TSQLDataSet;
    dspCTeDocAnt: TDataSetProvider;
    cdsCTeDocAnt: TClientDataSet;
    cdsCTeDocAntidEmpresa: TIntegerField;
    cdsCTeDocAntidCadEmpresa: TSmallintField;
    cdsCTeDocAntidCte: TIntegerField;
    cdsCTeDocAntidDocAnt: TSmallintField;
    cdsCTeDocAnttpDoc: TFMTBCDField;
    cdsCTeDocAntserie: TStringField;
    cdsCTeDocAntnrDoc: TFMTBCDField;
    cdsCTeDocAntidEmissor: TIntegerField;
    cdsCTeDocAntsubser: TStringField;
    cdsCTeDocAntdtEmissao: TSQLTimeStampField;
    cdsCTeDocAntchave: TStringField;
    cdsCTeDocAntidDocSerie: TStringField;
    dsCTeDocAnt: TDataSource;
    dsCTeDocOutro: TDataSource;
    cdsCTeDocOutro: TClientDataSet;
    cdsCTeDocOutroidEmpresa: TIntegerField;
    cdsCTeDocOutroidCadEmpresa: TSmallintField;
    cdsCTeDocOutroidCte: TIntegerField;
    cdsCTeDocOutrotpDoc: TFMTBCDField;
    cdsCTeDocOutronrDoc: TFMTBCDField;
    cdsCTeDocOutrodtEmissao: TSQLTimeStampField;
    cdsCTeDocOutrovlDoc: TFMTBCDField;
    cdsCTeDocOutrodescOutros: TStringField;
    cdsCTeDocOutrodtPrevisao: TSQLTimeStampField;
    cdsCTeDocOutroidDocSerie: TStringField;
    dspCTeDocOutro: TDataSetProvider;
    sdsCTeDocOutro: TSQLDataSet;
    sdsCTeNF: TSQLDataSet;
    dspCTeNF: TDataSetProvider;
    cdsCTeNF: TClientDataSet;
    dsCTeNF: TDataSource;
    dsCTeNFe: TDataSource;
    cdsCTeNFe: TClientDataSet;
    cdsCTeNFeidEmpresa: TIntegerField;
    cdsCTeNFeidCadEmpresa: TSmallintField;
    cdsCTeNFeidDocSerie: TStringField;
    cdsCTeNFeidCte: TIntegerField;
    cdsCTeNFechave: TStringField;
    cdsCTeNFePIN: TFMTBCDField;
    cdsCTeNFedtPrevisao: TSQLTimeStampField;
    dspCTeNFe: TDataSetProvider;
    sdsCTeNFe: TSQLDataSet;
    FindConta: TCFind;
    cdsRateio: TClientDataSet;
    cdsRateioidEmpresa: TIntegerField;
    cdsRateioidRateio: TSmallintField;
    cdsRateioidResultado: TIntegerField;
    cdsRateioprRateio: TFMTBCDField;
    cdsProdMedida: TClientDataSet;
    cdsResultado: TClientDataSet;
    cdsProduto: TClientDataSet;
    sdsCTe: TSQLDataSet;
    sdsCTeComp: TSQLDataSet;
    dspCTeComp: TDataSetProvider;
    cdsCTeComp: TClientDataSet;
    cdsCTeCompdescProduto: TStringField;
    cdsCTeCompidEmpresa: TIntegerField;
    cdsCTeCompidCadEmpresa: TSmallintField;
    cdsCTeCompidProduto: TIntegerField;
    cdsCTeCompidCte: TIntegerField;
    cdsCTeCompidComp: TSmallintField;
    cdsCTeCompvlComp: TFMTBCDField;
    cdsCTeCompidDocSerie: TStringField;
    cdsCTeCompdescComp: TStringField;
    cdsCTeCompvlTotalGeral: TAggregateField;
    dsCTeComp: TDataSource;
    dsCusto: TDataSource;
    cdsCusto: TClientDataSet;
    cdsCustoidEmpresa: TIntegerField;
    cdsCustoidCadEmpresa: TSmallintField;
    cdsCustoidResultado: TIntegerField;
    cdsCustoprRateio: TFMTBCDField;
    cdsCustovlRateio: TFMTBCDField;
    cdsCustodescResultado: TStringField;
    cdsCustoidGerencial: TIntegerField;
    cdsCustoidDocSerie: TStringField;
    cdsCustoidCTe: TIntegerField;
    cdsCustovlTotalRateio: TAggregateField;
    dspCusto: TDataSetProvider;
    sdsCusto: TSQLDataSet;
    sdsMovCaixa: TSQLDataSet;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    cdsMovCaixaidMovCaixa: TIntegerField;
    cdsMovCaixaidEmpresa: TIntegerField;
    cdsMovCaixaidCaixa: TIntegerField;
    cdsMovCaixaidCadGeral: TIntegerField;
    cdsMovCaixaidSafra: TIntegerField;
    cdsMovCaixaidMovFinanceira: TIntegerField;
    cdsMovCaixaidGerencial: TIntegerField;
    cdsMovCaixaidResultado: TIntegerField;
    cdsMovCaixaidRateio: TSmallintField;
    cdsMovCaixadtMovCaixa: TSQLTimeStampField;
    cdsMovCaixadescMovCaixa: TStringField;
    cdsMovCaixavlMovCaixa: TFMTBCDField;
    cdsMovCaixafator: TSmallintField;
    cdsMovCaixaidCadEmpresa: TSmallintField;
    dsMovCaixa: TDataSource;
    cdsMovConta: TClientDataSet;
    cdsMovContaidMovConta: TIntegerField;
    cdsMovContaidEmpresa: TIntegerField;
    cdsMovContaidConta: TIntegerField;
    cdsMovContaidCadGeral: TIntegerField;
    cdsMovContaidSafra: TIntegerField;
    cdsMovContaidMovFinanceira: TIntegerField;
    cdsMovContaidGerencial: TIntegerField;
    cdsMovContaidResultado: TIntegerField;
    cdsMovContaidRateio: TSmallintField;
    cdsMovContaidCheque: TStringField;
    cdsMovContadtMovConta: TSQLTimeStampField;
    cdsMovContadtCompensacao: TSQLTimeStampField;
    cdsMovContadtVencimento: TSQLTimeStampField;
    cdsMovContadtCancelamento: TSQLTimeStampField;
    cdsMovContadescMovConta: TStringField;
    cdsMovContavlMovConta: TFMTBCDField;
    cdsMovContafator: TSmallintField;
    cdsMovContaidCadEmpresa: TSmallintField;
    dspMovConta: TDataSetProvider;
    dsMovConta: TDataSource;
    sdsMovConta: TSQLDataSet;
    sdsTituloRec: TSQLDataSet;
    dspTituloRec: TDataSetProvider;
    cdsTituloRec: TClientDataSet;
    cdsTituloRecidTituloRec: TIntegerField;
    cdsTituloRecidEmpresa: TIntegerField;
    cdsTituloRecidCliente: TIntegerField;
    cdsTituloRecnrTituloRec: TStringField;
    cdsTituloRecidDocSerie: TStringField;
    cdsTituloRectpDocumento: TStringField;
    cdsTituloRecdtEmissao: TSQLTimeStampField;
    cdsTituloRecidSafra: TIntegerField;
    cdsTituloRecidBanco: TIntegerField;
    cdsTituloRecidIndice: TSmallintField;
    cdsTituloRecidMovFinanceira: TIntegerField;
    cdsTituloRecidResultado: TIntegerField;
    cdsTituloRecidRateio: TSmallintField;
    cdsTituloRecidGerencial: TIntegerField;
    cdsTituloRecobsTituloRec: TStringField;
    cdsTituloRecvlTituloRec: TFMTBCDField;
    cdsTituloRecqtParcelas: TSmallintField;
    cdsTituloRecdtVencimentoIni: TSQLTimeStampField;
    cdsTituloRecdiasVencimento: TSmallintField;
    cdsTituloRecprMulta: TFMTBCDField;
    cdsTituloRecprDesconto: TFMTBCDField;
    cdsTituloRecprJuros: TFMTBCDField;
    cdsTituloRecincMes: TStringField;
    cdsTituloRecstTituloRec: TStringField;
    cdsTituloRecidCadEmpresa: TSmallintField;
    dsTituloRec: TDataSource;
    dsTituloRecParc: TDataSource;
    cdsTituloRecParc: TClientDataSet;
    cdsTituloRecParcidTituloRec: TIntegerField;
    cdsTituloRecParcidParcela: TSmallintField;
    cdsTituloRecParcvlParcela: TFMTBCDField;
    cdsTituloRecParcdtVencimento: TSQLTimeStampField;
    cdsTituloRecParcstTituloRecParc: TStringField;
    dspTituloRecParc: TDataSetProvider;
    sdsTituloRecParc: TSQLDataSet;
    cdsTituloRecMov: TClientDataSet;
    cdsTituloRecMovidTituloRecMov: TIntegerField;
    cdsTituloRecMovidEmpresa: TIntegerField;
    cdsTituloRecMovidCliente: TIntegerField;
    cdsTituloRecMovidTituloRec: TIntegerField;
    cdsTituloRecMovidParcela: TSmallintField;
    cdsTituloRecMovidMovFinanceira: TIntegerField;
    cdsTituloRecMovdtTituloRecMov: TSQLTimeStampField;
    cdsTituloRecMovvlTituloRecMov: TFMTBCDField;
    cdsTituloRecMovfator: TSmallintField;
    cdsTituloRecMovidCadEmpresa: TSmallintField;
    cdsTituloRecMovvlRealIndice: TFMTBCDField;
    dspTituloRecMov: TDataSetProvider;
    sdsTituloRecMov: TSQLDataSet;
    sdsCTeEle: TSQLDataSet;
    dspCTeEle: TDataSetProvider;
    cdsCTeEle: TClientDataSet;
    cdsCTeEleemit_CNPJ: TStringField;
    cdsCTeEleide_serie: TFMTBCDField;
    cdsCTeEleidCTe: TFMTBCDField;
    cdsCTeEleinfCte_id: TStringField;
    cdsCTeEleinfCte_chCTe: TStringField;
    cdsCTeElecStat: TSmallintField;
    cdsCTeEledescMotivo: TStringField;
    cdsCTeEledescMsg: TStringField;
    cdsCTeElenrRecibo: TStringField;
    cdsCTeElenrProtocolo: TStringField;
    cdsCTeEledtRecebimento: TSQLTimeStampField;
    cdsCTeEledescErro: TStringField;
    cdsCTeElestCTe: TStringField;
    cdsCTeEleidEmpresa: TIntegerField;
    cdsCTeEleidCadEmpresa: TSmallintField;
    cdsCTeEleidDocSerie: TStringField;
    cdsCTeEledescXML: TStringField;
    dsCTeEle: TDataSource;
    dsCTeTributo: TDataSource;
    cdsCTeTributo: TClientDataSet;
    dspCTeTributo: TDataSetProvider;
    sdsCTeTributo: TSQLDataSet;
    sdsCTeCarga: TSQLDataSet;
    dspCTeCarga: TDataSetProvider;
    cdsCTeCarga: TClientDataSet;
    cdsCTeCargaidEmpresa: TIntegerField;
    cdsCTeCargaidCadEmpresa: TSmallintField;
    cdsCTeCargaidCte: TIntegerField;
    cdsCTeCargaidProdMedida: TSmallintField;
    cdsCTeCargaqtCarga: TFMTBCDField;
    cdsCTeCargadescTipoMedida: TStringField;
    cdsCTeCargadescProdMedida: TStringField;
    cdsCTeCargaidDocSerie: TStringField;
    dsCTeCarga: TDataSource;
    CGroupBox2: TCGroupBox;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel20: TCLabel;
    DBEchaveAnulado: TCDBEdit;
    CBitBtn1: TCBitBtn;
    DBEchaveComplementado: TCDBEdit;
    CBitBtn3: TCBitBtn;
    DBEdtEmissaoAnu: TCDBEdit;
    CGroupBox34: TCGroupBox;
    CLabel92: TCLabel;
    CLabel102: TCLabel;
    CLabel93: TCLabel;
    CLabel103: TCLabel;
    CLabel44: TCLabel;
    DBEnrApolice: TCDBEdit;
    DBEvlCargaSeg: TCDBEdit;
    DBEidSeguradora: TCDBEdit;
    lookRazaoSeguradora: TCLookUp;
    DBEnrAverbacao: TCDBEdit;
    DBErespSeg: TCDBEdit;
    LookRespSeguro: TCLookUp;
    CGroupBox6: TCGroupBox;
    CLabel59: TCLabel;
    LblCad: TCLabel;
    CLabel31: TCLabel;
    CLabel30: TCLabel;
    CLabel32: TCLabel;
    CLabel33: TCLabel;
    lookEstadoFor: TCLookUp;
    lookCidadeFor: TCLookUp;
    lookEnderecoFor: TCLookUp;
    lookIeFornecedor: TCLookUp;
    LookRazaoDestinatario: TCLookUp;
    DBEidDestinatario: TCDBEdit;
    DBEidCadDestinatario: TCDBEdit;
    DBRGtoma: TCDBRadioGroup;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel8: TCLabel;
    CLabel7: TCLabel;
    CLabel25: TCLabel;
    CLabel11: TCLabel;
    CLabel10: TCLabel;
    CLabel26: TCLabel;
    CLabel24: TCLabel;
    CLabel27: TCLabel;
    CLabel28: TCLabel;
    CLabel29: TCLabel;
    DBEdtEmissao: TCDBEdit;
    DBEidCte: TCDBEdit;
    DBEtpServ: TCDBEdit;
    LookTipoServico: TCLookUp;
    DBEhoraEmissao: TCDBEdit;
    LookDocSerie: TCLookUp;
    DBEidDocSerie: TCDBEdit;
    DBEstCte: TCDBEdit;
    DBEtpCTe: TCDBEdit;
    LookTipoCTe: TCLookUp;
    LookModal: TCLookUp;
    DBEmodal: TCDBEdit;
    DBEidNatureza: TCDBEdit;
    LookNatureza: TCLookUp;
    LookDescCfop: TCLookUp;
    LookIdCfop: TCLookUp;
    DBEforPag: TCDBEdit;
    LookFormaPagto: TCLookUp;
    DBErefCTe: TCDBEdit;
    BtnImpXML: TCBitBtn;
    lookSerieFiscal: TCLookUp;
    TabProdutos: TTabSheet;
    CGroupBox10: TCGroupBox;
    BtnAdicionarComp: TCBitBtn;
    BtnCancelarComp: TCBitBtn;
    BtnRetirarComp: TCBitBtn;
    BtnNovoComp: TCBitBtn;
    CGroupBox7: TCGroupBox;
    DBMobsCTe: TCDBMemo;
    CGroupBox8: TCGroupBox;
    CLabel43: TCLabel;
    CLabel5: TCLabel;
    CLabel61: TCLabel;
    CLabel16: TCLabel;
    CLabel23: TCLabel;
    CLabel22: TCLabel;
    CLabel17: TCLabel;
    CLabel21: TCLabel;
    CLabel19: TCLabel;
    DBEvlTotalGeral: TCDBEdit;
    DBEidStTributaria: TCDBEdit;
    LookTributacao: TCLookUp;
    DBEvlReducao: TCDBEdit;
    DBEprReducao: TCDBEdit;
    DBEvlIcms: TCDBEdit;
    DBEprIcms: TCDBEdit;
    DBEvlCredito: TCDBEdit;
    DBCBtpTributo: TCDBComboBox;
    DBEvlBaseIcmsT: TCDBEdit;
    CGroupBox11: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox9: TCGroupBox;
    CLabel45: TCLabel;
    CLabel6: TCLabel;
    CLabel9: TCLabel;
    CLabel41: TCLabel;
    DBEvlComp: TCDBEdit;
    DBEidComp: TCDBEdit;
    DBEdescComp: TCDBEdit;
    LookComp: TCLookUp;
    LookProdMedida: TCLookUp;
    DBEidProduto: TCDBEdit;
    TabCarga: TTabSheet;
    CGroupBox14: TCGroupBox;
    BtnAdicionarCarga: TCBitBtn;
    BtnCancelarCarga: TCBitBtn;
    BtnRetirarCarga: TCBitBtn;
    BtnNovoCarga: TCBitBtn;
    CGroupBox33: TCGroupBox;
    BtnAdicionarPeri: TCBitBtn;
    BtnCancelarPeri: TCBitBtn;
    BtnRetirarPeri: TCBitBtn;
    BtnNovoPeri: TCBitBtn;
    CGroupBox32: TCGroupBox;
    CDBGrid8: TCDBGrid;
    CGroupBox31: TCGroupBox;
    CLabel72: TCLabel;
    CLabel85: TCLabel;
    CLabel70: TCLabel;
    CLabel87: TCLabel;
    CLabel88: TCLabel;
    CLabel89: TCLabel;
    CLabel91: TCLabel;
    DBEdescClasseRisco: TCDBEdit;
    DBEdescNomeProduto: TCDBEdit;
    DBEnrONU: TCDBEdit;
    DBEgrupoEmbalagem: TCDBEdit;
    DBEqtProduto: TCDBEdit;
    DBEqtVolume: TCDBEdit;
    DBEpontoFulgor: TCDBEdit;
    CGroupBox16: TCGroupBox;
    CDBGrid2: TCDBGrid;
    CGroupBox13: TCGroupBox;
    CLabel46: TCLabel;
    CLabel48: TCLabel;
    CLabel49: TCLabel;
    DBEqtCarga: TCDBEdit;
    DBEdescTipoMedida: TCDBEdit;
    LookMedida: TCLookUp;
    LookAbreviacao: TCLookUp;
    DBEidProdMedida: TCDBEdit;
    CGroupBox12: TCGroupBox;
    CLabel40: TCLabel;
    CLabel34: TCLabel;
    CLabel38: TCLabel;
    DBEdescOutraCarac: TCDBEdit;
    DBEvlCarga: TCDBEdit;
    DBEidProdutoPred: TCDBEdit;
    LookProdutoPred: TCLookUp;
    TabNotas: TTabSheet;
    CGroupBox20: TCGroupBox;
    CDBGrid5: TCDBGrid;
    CGroupBox23: TCGroupBox;
    BtnAdicionarNF: TCBitBtn;
    BtnCancelarNF: TCBitBtn;
    BtnRetirarNF: TCBitBtn;
    BtnNovoNF: TCBitBtn;
    CGroupBox24: TCGroupBox;
    CLabel39: TCLabel;
    CLabel42: TCLabel;
    CLabel47: TCLabel;
    CLabel50: TCLabel;
    CLabel51: TCLabel;
    CLabel52: TCLabel;
    CLabel53: TCLabel;
    CLabel54: TCLabel;
    CLabel55: TCLabel;
    CLabel56: TCLabel;
    CLabel57: TCLabel;
    CLabel58: TCLabel;
    CLabel60: TCLabel;
    CLabel62: TCLabel;
    CLabel63: TCLabel;
    CLabel67: TCLabel;
    DBEdtPrevisaoNF: TCDBEdit;
    DBEserie: TCDBEdit;
    DBEPINNF: TCDBEdit;
    DBEnrNF: TCDBEdit;
    DBEnrRomaneio: TCDBEdit;
    DBEnrPedido: TCDBEdit;
    DBEdtEmissaoNF: TCDBEdit;
    DBEmod: TCDBEdit;
    CLookUp14: TCLookUp;
    DBEidCfop: TCDBEdit;
    LookCfop: TCLookUp;
    DBEvlBaseIcmsST: TCDBEdit;
    DBEvlProduto: TCDBEdit;
    DBEvlICMSNF: TCDBEdit;
    DBEvlBaseIcms: TCDBEdit;
    DBEvlICMSST: TCDBEdit;
    DBEvlNF: TCDBEdit;
    DBEqtPeso: TCDBEdit;
    CGroupBox17: TCGroupBox;
    BtnAdicionarNFe: TCBitBtn;
    BtnCancelarNFe: TCBitBtn;
    BtnRetirarNFe: TCBitBtn;
    BtnNovoNFe: TCBitBtn;
    CGroupBox18: TCGroupBox;
    CDBGrid4: TCDBGrid;
    CGroupBox19: TCGroupBox;
    CLabel35: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    DBEdtPrevisao: TCDBEdit;
    DBEchave: TCDBEdit;
    CBitBtn14: TCBitBtn;
    DBEPIN: TCDBEdit;
    TabDocumentos: TTabSheet;
    CGroupBox26: TCGroupBox;
    BtnAdicionarAnt: TCBitBtn;
    BtnCancelarAnt: TCBitBtn;
    BtnRetirarAnt: TCBitBtn;
    BtnNovoAnt: TCBitBtn;
    CGroupBox25: TCGroupBox;
    CDBGrid6: TCDBGrid;
    CGroupBox27: TCGroupBox;
    CLabel69: TCLabel;
    CLabel73: TCLabel;
    CLabel77: TCLabel;
    CLabel78: TCLabel;
    CLabel90: TCLabel;
    CLabel99: TCLabel;
    CLabel71: TCLabel;
    CLabel68: TCLabel;
    DBEidDocAnt: TCDBEdit;
    DBEserieAnt: TCDBEdit;
    DBEdtEmissaoAnt: TCDBEdit;
    DBEtpDocAnt: TCDBEdit;
    CLookUp15: TCLookUp;
    DBEnrDocAnt: TCDBEdit;
    DBEchaveAnt: TCDBEdit;
    CBitBtn29: TCBitBtn;
    DBEsubserAnt: TCDBEdit;
    LookRazaoDocAnt: TCLookUp;
    LookFantasiaDocAnt: TCLookUp;
    DBEidEmissor: TCDBEdit;
    CGroupBox28: TCGroupBox;
    BtnAdicionarOutro: TCBitBtn;
    BtnCancelarOutro: TCBitBtn;
    BtnRetirarOutro: TCBitBtn;
    BtnNovoOutro: TCBitBtn;
    CGroupBox29: TCGroupBox;
    CDBGrid7: TCDBGrid;
    CGroupBox30: TCGroupBox;
    CLabel94: TCLabel;
    CLabel95: TCLabel;
    CLabel96: TCLabel;
    CLabel97: TCLabel;
    CLabel100: TCLabel;
    CLabel101: TCLabel;
    DBEdtPrevisaoDoc: TCDBEdit;
    DBEdescOutros: TCDBEdit;
    DBEnrDoc: TCDBEdit;
    CLookUp17: TCLookUp;
    DBEtpDoc: TCDBEdit;
    DBEdtEmissaoDoc: TCDBEdit;
    DBEvlDoc: TCDBEdit;
    TabTransporte: TTabSheet;
    CGroupBox40: TCGroupBox;
    BtnAdicionarVale: TCBitBtn;
    BtnCancelarVale: TCBitBtn;
    BtnRetirarVale: TCBitBtn;
    BtnNovoVale: TCBitBtn;
    CGroupBox41: TCGroupBox;
    CDBGrid10: TCDBGrid;
    CGroupBox39: TCGroupBox;
    CLabel112: TCLabel;
    CLabel116: TCLabel;
    CLabel110: TCLabel;
    CLabel111: TCLabel;
    DBEnrCompra: TCDBEdit;
    DBEvlValePedagio: TCDBEdit;
    CLookUp25: TCLookUp;
    LookCnpjForVale: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    DBEidRespPagto: TCDBEdit;
    LookCnpjRespVale: TCLookUp;
    CLookUp28: TCLookUp;
    CGroupBox38: TCGroupBox;
    BtnAdicionarOcc: TCBitBtn;
    BtnCancelarOcc: TCBitBtn;
    BtnRetirarOcc: TCBitBtn;
    BtnNovoOcc: TCBitBtn;
    CGroupBox37: TCGroupBox;
    CDBGrid9: TCDBGrid;
    CGroupBox36: TCGroupBox;
    CLabel107: TCLabel;
    CLabel108: TCLabel;
    CLabel109: TCLabel;
    CLabel120: TCLabel;
    DBEserieOcc: TCDBEdit;
    DBEnrOcc: TCDBEdit;
    DBEdtEmissaoOcc: TCDBEdit;
    CLookUp22: TCLookUp;
    DBEidEmissorOcc: TCDBEdit;
    CLookUp23: TCLookUp;
    CGroupBox35: TCGroupBox;
    CLabel104: TCLabel;
    CLabel106: TCLabel;
    CLabel105: TCLabel;
    CLabel118: TCLabel;
    CLabel119: TCLabel;
    DBECIOT: TCDBEdit;
    DBERNTRC: TCDBEdit;
    DBEdtPrevisaoRodo: TCDBEdit;
    DBCKlotacao: TCDBCheckBox;
    DBEidMaquina: TCDBEdit;
    CLookUp21: TCLookUp;
    CLookUp24: TCLookUp;
    DBEidMotorista: TCDBEdit;
    TabCustos: TTabSheet;
    CGroupBox3: TCGroupBox;
    CLabel157: TCLabel;
    LblTotalRat: TCLabel;
    CLabel158: TCLabel;
    LblRestanteRat: TCLabel;
    BtnNovoCusto: TCBitBtn;
    BtnRetirarCusto: TCBitBtn;
    BtnCancelarCusto: TCBitBtn;
    BtnAdicionarCusto: TCBitBtn;
    CGroupBox4: TCGroupBox;
    CDBGrid11: TCDBGrid;
    CGroupBox5: TCGroupBox;
    CLabel155: TCLabel;
    CLabel156: TCLabel;
    CLabel153: TCLabel;
    CLabel13: TCLabel;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    DBEidResultadoRT: TCDBEdit;
    CLookUp29: TCLookUp;
    DBEidGerencialRT: TCDBEdit;
    LookGerencial: TCLookUp;
    CGroupBox15: TCGroupBox;
    CLabel152: TCLabel;
    CLabel2: TCLabel;
    CLabel86: TCLabel;
    CLabel12: TCLabel;
    CLabel1: TCLabel;
    BtnGerarRateio: TCBitBtn;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidGerencial: TCDBEdit;
    LookRateio: TCLookUp;
    DBEidRateio: TCDBEdit;
    LookTalhao: TCLookUp;
    DBEidResultado: TCDBEdit;
    DBEvlTotalGeralRT: TCDBEdit;
    CLookUp2: TCLookUp;
    TabFinancas: TTabSheet;
    grpCaixa: TCGroupBox;
    CLabel75: TCLabel;
    CLabel74: TCLabel;
    CLabel79: TCLabel;
    CLabel66: TCLabel;
    DBEvlMovCaixa: TCDBEdit;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CBitBtn2: TCBitBtn;
    DBEdescMovCaixa: TCDBEdit;
    DBEdtMovCaixa: TCDBEdit;
    grpBanco: TCGroupBox;
    CLabel83: TCLabel;
    CLabel98: TCLabel;
    CLabel82: TCLabel;
    CLabel81: TCLabel;
    CLabel64: TCLabel;
    CLabel65: TCLabel;
    DBEvlMovConta: TCDBEdit;
    DBEdtCompensacao: TCDBEdit;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    DBEdescMovConta: TCDBEdit;
    DBEidCheque: TCDBEdit;
    DBEdtVencimento: TCDBEdit;
    PagTituloRec: TCPageControl;
    TabTituloRec: TTabSheet;
    CGroupBox21: TCGroupBox;
    CLabel117: TCLabel;
    CLabel18: TCLabel;
    CLabel124: TCLabel;
    CLabel125: TCLabel;
    CLabel126: TCLabel;
    CLabel127: TCLabel;
    CLabel128: TCLabel;
    CLabel129: TCLabel;
    CLabel130: TCLabel;
    CLabel131: TCLabel;
    CLabel76: TCLabel;
    CLabel80: TCLabel;
    CLabel84: TCLabel;
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
    DBEidDocSerieT: TCDBEdit;
    CLookUp3: TCLookUp;
    DBEnrTituloRec: TCDBEdit;
    DBEobsTituloRec: TCDBEdit;
    TabParcelas: TTabSheet;
    CGroupBox22: TCGroupBox;
    CLabel133: TCLabel;
    CLabel134: TCLabel;
    CLabel135: TCLabel;
    CLabel136: TCLabel;
    DBEidParcela: TCDBEdit;
    DBEvlParcela: TCDBEdit;
    DBEdtVencimentoP: TCDBEdit;
    DBEstTituloRecParc: TCDBEdit;
    CGroupBox42: TCGroupBox;
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
    TabCTe: TTabSheet;
    CGroupBox43: TCGroupBox;
    CLabel114: TCLabel;
    CLabel113: TCLabel;
    DBEinfCte_chCTe: TCDBEdit;
    DBEinfCte_id: TCDBEdit;
    CGroupBox45: TCGroupBox;
    CLabel121: TCLabel;
    CLabel122: TCLabel;
    CLabel123: TCLabel;
    CLabel132: TCLabel;
    DBEcStat: TCDBEdit;
    DBEnrProtocolo: TCDBEdit;
    DBEnrRecibo: TCDBEdit;
    DBEdtRecebimento: TCDBEdit;
    CGroupBox46: TCGroupBox;
    DBMdescMotivo: TCDBMemo;
    CGroupBox47: TCGroupBox;
    DBMdescMsg: TCDBMemo;
    CGroupBox48: TCGroupBox;
    DBMdescErro: TCDBMemo;
    CGroupBox44: TCGroupBox;
    CLabel115: TCLabel;
    DBEstCTeEle: TCDBEdit;
    BtnImprimir: TCBitBtn;
    DBEidTituloRec: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    DBEidMovCaixa: TCDBEdit;
    lookUF: TCLookUp;
    cdsCadGeral: TClientDataSet;
    ACBrCTe1: TACBrCTe;
    ACBrCTeDACTEFR1: TACBrCTeDACTEFR;
    LookRazaoRemetente: TCLookUp;
    CLookUp5: TCLookUp;
    CLabel139: TCLabel;
    DBEidCadRemetente: TCDBEdit;
    DBEidRemetente: TCDBEdit;
    LookRazaoExpedidor: TCLookUp;
    CLookUp7: TCLookUp;
    CLabel140: TCLabel;
    DBEidCadExpedidor: TCDBEdit;
    DBEidExpedidor: TCDBEdit;
    LookRazaoRecebedor: TCLookUp;
    CLookUp9: TCLookUp;
    CLabel141: TCLabel;
    DBEidCadRecebedor: TCDBEdit;
    DBEidRecebedor: TCDBEdit;
    lookRazaoTomador: TCLookUp;
    CLookUp11: TCLookUp;
    CLabel142: TCLabel;
    DBEidCadTomador: TCDBEdit;
    DBEidTomador: TCDBEdit;
    BtnEnviar: TCBitBtn;
    cdsValidacao: TClientDataSet;
    cdsValidacaodescValidacao: TStringField;
    sdsValidacao: TSQLDataSet;
    dspValidacao: TDataSetProvider;
    dsValidacao: TDataSource;
    BtnCorrecao: TCBitBtn;
    tmpCorrecao: TTimer;
    cdsCTeCorrecao: TClientDataSet;
    dsCTeCorrecao: TDataSource;
    dspCTeCorrecao: TDataSetProvider;
    sdsCTeCorrecao: TSQLDataSet;
    cdsCTeCCampo: TClientDataSet;
    dsCTeCCampo: TDataSource;
    dspCTeCCampo: TDataSetProvider;
    sdsCTeCCampo: TSQLDataSet;
    cdsCTeCorrecaoidEmpresa: TIntegerField;
    cdsCTeCorrecaoidCadEmpresa: TSmallintField;
    cdsCTeCorrecaoidDocSerie: TStringField;
    cdsCTeCorrecaoidCte: TIntegerField;
    cdsCTeCorrecaodtCorrecao: TSQLTimeStampField;
    cdsCTeCorrecaostCorrecao: TStringField;
    cdsCTeCorrecaoidCorrecao: TSmallintField;
    panCampos: TPanel;
    CGroupBox49: TCGroupBox;
    CGroupBox50: TCGroupBox;
    CDBGrid12: TCDBGrid;
    CLabel144: TCLabel;
    DBEdtCorrecao: TCDBEdit;
    DBEidCorrecao: TCDBEdit;
    CLabel145: TCLabel;
    DBEstCorrecao: TCDBEdit;
    CLabel146: TCLabel;
    dspVCampo: TDataSetProvider;
    sdsVCampo: TSQLDataSet;
    cdsVCampo: TClientDataSet;
    dsVCampo: TDataSource;
    cdsVCampoidEmpresa: TIntegerField;
    cdsVCampoidCadEmpresa: TSmallintField;
    cdsVCampoidDocSerie: TStringField;
    cdsVCampoidCte: TIntegerField;
    cdsVCampoidCorrecao: TSmallintField;
    cdsVCamponameNilus: TStringField;
    cdsVCampogrupoCTe: TStringField;
    cdsVCampocampoCTe: TStringField;
    cdsVCampovlNovo: TStringField;
    cdsVCamponritem: TSmallintField;
    BtnEnviarCarta: TCBitBtn;
    CBitBtn5: TCBitBtn;
    BtnImprimirCarta: TCBitBtn;
    cdsCTeCCampoidEmpresa: TIntegerField;
    cdsCTeCCampoidCadEmpresa: TSmallintField;
    cdsCTeCCampoidDocSerie: TStringField;
    cdsCTeCCampoidCte: TIntegerField;
    cdsCTeCCampoidCorrecao: TSmallintField;
    cdsCTeCCamponrItem: TSmallintField;
    cdsCTeCCamponameNilus: TStringField;
    cdsCTeCCampovlNovo: TStringField;
    panCorrecao: TPanel;
    CLabel143: TCLabel;
    DBEvlNovo: TCDBEdit;
    BtnConfirmar: TCBitBtn;
    DBEnameNilus: TCDBEdit;
    BtnCancelaCorrecao: TCBitBtn;
    DBEnrItem: TCDBEdit;
    panRodape: TPanel;
    LblCorrecao: TCLabel;
    cdsCTeCorrecaodescErro: TStringField;
    frxPDFExport1: TfrxPDFExport;

    procedure PagAbasChange(Sender: TObject);
    procedure BtnAdicionarCompClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure dspCTeCompBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dsCTeCompStateChange(Sender: TObject);
    procedure dsCustoStateChange(Sender: TObject);
    procedure dsCTeNFeStateChange(Sender: TObject);
    procedure dsCTeNFStateChange(Sender: TObject);
    procedure dsCTeDocOutroDataChange(Sender: TObject; Field: TField);
    procedure dsCTeDocAntStateChange(Sender: TObject);
    procedure dsCTePeriStateChange(Sender: TObject);
    procedure dsCTeOccStateChange(Sender: TObject);
    procedure dsCTeValePedStateChange(Sender: TObject);
    procedure BtnAdicionarCargaClick(Sender: TObject);
    procedure BtnAdicionarPeriClick(Sender: TObject);
    procedure BtnAdicionarNFeClick(Sender: TObject);
    procedure BtnAdicionarNFClick(Sender: TObject);
    procedure BtnAdicionarOutroClick(Sender: TObject);
    procedure BtnAdicionarAntClick(Sender: TObject);
    procedure BtnAdicionarOccClick(Sender: TObject);
    procedure BtnAdicionarValeClick(Sender: TObject);
    procedure BtnAdicionarCustoClick(Sender: TObject);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure DBEidCteExit(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEidResultadoRTExit(Sender: TObject);
    procedure DBEidMaquinaEnter(Sender: TObject);
    procedure BtnGerarRateioClick(Sender: TObject);
    procedure HabilitaRatRes;
    procedure GeraRateio;
    procedure LimpaRateio;
    procedure IniciaFinancas;
    procedure GeraParcelas;
    procedure SomaParcelas;
    procedure GeraMovimentacao;
    procedure HabilitaCTe(habilita : boolean);
    procedure PreenchePadrao;
    procedure HabilitaTomador;
    procedure HabilitaLotacao;
    procedure HabilitaTributacao;
    procedure HabilitaFinanceiro;
    function RetIdFornecedor: integer;
    function ConfigCTE(cnpj, forma: string; dtEmi: TDateTime) : string;
    function VerNFETemp: boolean;
    procedure PagTituloRecChange(Sender: TObject);
    procedure DBEidCompExit(Sender: TObject);
    procedure DBEidProdutoEnter(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure dspMovCaixaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DBCKincMesExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidProdMedidaExit(Sender: TObject);
    procedure cdsCTeCompAfterEdit(DataSet: TDataSet);
    procedure DBEnrONUExit(Sender: TObject);
    procedure DBEchaveExit(Sender: TObject);
    procedure DBEnrNFExit(Sender: TObject);
    procedure DBEtpDocExit(Sender: TObject);
    procedure DBEnrOccExit(Sender: TObject);
    procedure DBEnrCompraExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure DBEidDestinatarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsTituloRecAfterInsert(DataSet: TDataSet);
    procedure cdsTituloRecMovAfterInsert(DataSet: TDataSet);
    procedure DBEobsTituloRecExit(Sender: TObject);
    procedure dspTituloRecMovBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBRGtomaExit(Sender: TObject);
    procedure DBCKlotacaoExit(Sender: TObject);
    procedure DBCBtpTributoExit(Sender: TObject);
    procedure DBEidStTributariaExit(Sender: TObject);
    procedure DBEprReducaoExit(Sender: TObject);
    procedure DBEprReducaoEnter(Sender: TObject);
    procedure DBEchaveComplementadoExit(Sender: TObject);
    procedure DBEforPagExit(Sender: TObject);
    procedure cdsTituloRecParcAfterInsert(DataSet: TDataSet);
    procedure cdsTituloRecAfterEdit(DataSet: TDataSet);
    procedure BtnEnviarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure dsCTeCargaStateChange(Sender: TObject);
    procedure configlookempresaCTe;
    procedure TrataEmpresaCTe;
    procedure DBEidRemetenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidExpedidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidRecebedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidTomadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidRemetenteEnter(Sender: TObject);
    procedure DBEidRemetenteExit(Sender: TObject);
    procedure DBEidDestinatarioExit(Sender: TObject);
    procedure HabilitaCorrecao(hab : boolean);
    procedure BtnCorrecaoClick(Sender: TObject);
    procedure tmpCorrecaoTimer(Sender: TObject);
    procedure LookIdCfopDblClick(Sender: TObject);
    procedure AbreCorrecao(Sender: TObject; nrItem: Integer; F4 : TCFind);
    procedure BtnCancelaCorrecaoClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure CBitBtn5Click(Sender: TObject);
    procedure DBEforPagDblClick(Sender: TObject);
    procedure lookRazaoTomadorDblClick(Sender: TObject);
    procedure LookCompDblClick(Sender: TObject);
    procedure DBEqtCargaDblClick(Sender: TObject);
    procedure LookRazaoDocAntDblClick(Sender: TObject);
    procedure cdsCTeRodoAfterInsert(DataSet: TDataSet);
    procedure DBEidProdMedidaDblClick(Sender: TObject);
    procedure BtnEnviarCartaClick(Sender: TObject);
    procedure BtnImprimirCartaClick(Sender: TObject);
    procedure cdsCTeCorrecaoAfterScroll(DataSet: TDataSet);
    procedure HabilitaBotoesCarta;
  private
    { Private declarations }
    vlAnterior : string;
    vlTotalParcelas : currency;

  public
    { Public declarations }
  end;

var
  FrmCadCTe: TFrmCadCTe;

implementation

uses uDmPadrao, uDmFind, uFuncao, uFrmPesClienteFiscal, uFrmPrincipal,
  uFrmPesCte, uFrmCTeValidacao;

{$R *.dfm}

procedure TFrmCadCTe.PagAbasChange(Sender: TObject);
var
  msg : string;
begin
//  inherited;
  if PagAbas.ActivePageIndex = 0 then //geral
  begin
    if DBEtpServ.Enabled then
      DBEtpServ.SetFocus;

    DBEidCte.TabStop := true;

  end
  else
  begin
    DBEidCte.TabStop := false;

    if PagAbas.ActivePageIndex = 7 then //finanças
    begin
      msg := '';
      if cdsCusto.RecordCount = 0 then
        msg := 'Rateio não informado!' + #13;
      if (trim(DBEidSafra.Text) = '') then
        msg := msg + 'A safra deve ser informada!' + #13;
      if (trim(DBEidGerencial.Text) = '') then
        msg := msg + 'O gerencial deve ser informado!' + #13;

      if RetIdFornecedor = 0 then
        msg := msg + 'O Tomador do serviço deve ser informado!' + #13;

      if trim(msg) <> '' then
      begin
        messagedlg(msg, mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
    end;
  end;
end;

procedure TFrmCadCTe.PagTituloRecChange(Sender: TObject);
begin
  inherited;
  if (Sender as TCPageControl).ActivePageIndex = 0 then
    (Sender as TCPageControl).Align := alnone
  else
    (Sender as TCPageControl).Align := alclient;
  grpCaixa.Visible := (Sender as TCPageControl).Align = alnone;
  grpBanco.Visible := (Sender as TCPageControl).Align = alnone;
end;

procedure TFrmCadCTe.PreenchePadrao;
begin
  //procedimento que irá preencher os dados padrões baseados nas configurações do módulo
  if cdsPadrao.State = dsInsert then
  begin
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigTransporte') do
    begin
      cdsPadrao.FieldByName('tpServ').AsInteger := FieldByName('tpServ').AsInteger;
      cdsPadrao.FieldByName('modal').AsInteger := FieldByName('modal').AsInteger;
      cdsPadrao.FieldByName('forPag').AsInteger := FieldByName('forPag').AsInteger;
      cdsPadrao.FieldByName('tpCTe').AsInteger := FieldByName('tpCTe').AsInteger;
      cdsPadrao.FieldByName('idNatureza').AsInteger := FieldByName('idNatureza').AsInteger;
      if not FieldByName('idSeguradora').IsNull then
      begin
        cdsCTeSeg.Append;
        cdsCTeSeg.FieldByName('idSeguradora').AsInteger := FieldByName('idSeguradora').AsInteger;
      end;

      cdsCTERodo.Append;
      cdsCTERodo.FieldByName('RNTRC').AsString := FieldByName('RNTRC').AsString;
    end;
  end;
end;

function TFrmCadCTe.RetIdFornecedor: integer;
var
  idFor : integer;
begin
  //retorna o fornecedor conforme o tomador escolhido
  {0-Remetente;
   1-Expedidor;
   2-Recebedor;
   3-Destinatario;
   4-Outros (Próprio idTomador)}
   idFor := 0;
   case cdsPadrao.FieldByName('toma').AsInteger of
     0 : if (Trim(DBEidRemetente.Text) <> '') then
           idFor := cdsPadrao.FieldByName('idRemetente').AsInteger;
     1 : if (Trim(DBEidExpedidor.Text) <> '') then
           idFor := cdsPadrao.FieldByName('idExpedidor').AsInteger;
     2 : if (Trim(DBEidRecebedor.Text) <> '') then
           idFor := cdsPadrao.FieldByName('idRecebedor').AsInteger;
     3 : if (Trim(DBEidDestinatario.Text) <> '') then
           idFor := cdsPadrao.FieldByName('idDestinatario').AsInteger;
     4 : if (Trim(DBEidTomador.Text) <> '') then
           idFor := cdsPadrao.FieldByName('idTomador').AsInteger;
   end;
   Result := idFor;
end;

procedure TFrmCadCTe.SomaParcelas;
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

procedure TFrmCadCTe.tmpCorrecaoTimer(Sender: TObject);
begin
  inherited;
  lblCorrecao.Visible := not lblCorrecao.Visible;
  panRodape.Visible := lblCorrecao.Visible;
  Application.ProcessMessages;
end;

procedure TFrmCadCTe.TrataEmpresaCTe;
var
  sql : string;
begin
  sql := 'EXEC spRetEmpresaCTe ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if (DBEidEmpresa.Text <> FieldByName('idEmpresa').AsString) or
       (DBEidCadEmpresa.Text <> FieldByName('idCadEmpresa').AsString) then
    begin
      cdsEmpresa.Edit;
      cdsEmpresaidEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := FieldByName('idCadEmpresa').AsInteger;
      cdsEmpresa.Post;
    end;
  end;
end;

function TFrmCadCTe.VerNFETemp: boolean;
var
  sql : string;
  parar, erro : boolean;
  tentativa, timeout : integer;
begin
  Application.ProcessMessages;
  frmPrincipal.AbreStatus('Enviando CT-e para SEFAZ! Aguarde...');

  if trim(funcao.ConfigIni('LOCAL', 'TempoResposta', '', 1)) <> '' then
    timeout := StrToInt(funcao.ConfigIni('LOCAL', 'TempoResposta', '', 1))
  else
    timeout := 2000;

  Application.ProcessMessages;

  sql := 'SELECT * FROM NOTA_TEMP WHERE CNPJ_EMISSOR = ' + funcao.TiraMascara(QuotedStr(trim(lookidCnpjCpf.Caption))) +
         ' AND SERIE = ' + trim(lookserieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' + cdsPadrao.FieldByName('idCTe').AsString;

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

//****************************************************************************************//
procedure TFrmCadCTe.AbreCorrecao(Sender: TObject; nrItem: Integer; F4 : TCFind);
var
  esq, topo, larg, alt : integer;
  nome : string;
  pRect:TRect;
begin
  //procedure que irá tratar da abertura da carta de correção

  //Primeiramente verifica se está em modo de correção
  if not (BtnCorrecao.Caption = 'Finaliza Correção') then
    exit;

  if (Sender is TCLookup) then
  begin
    GetWindowRect((Sender as TCLookup).Handle,pRect);
    esq := (Sender as TCLookup).Left + 13;
    topo := pRect.Top-110;
    larg := (Sender as TCLookup).Width;
    alt := (Sender as TCLookup).Height;
    nome := (Sender as TCLookup).Name;
  end
  else
    if (Sender is TCDBEdit) then
    begin
      GetWindowRect((Sender as TCDBEdit).Handle,pRect);
      esq := (Sender as TCDBEdit).Left + 13;
      topo := pRect.Top-110;
      larg := (Sender as TCDBEdit).Width;
      alt := (Sender as TCDBEdit).Height;
      nome := (Sender as TCDBEdit).Name;
    end;

  DBEvlNovo.Find := nil;
  DBEvlNovo.ReadOnly := false;

  if Assigned(F4) then
  begin
    DBEvlNovo.Find := F4;
  end;
  panCorrecao.Top := topo + alt;
  if (esq+(166 + larg-87)) > 700  then //720 é a largura da tela descontando as bordas aproximadamente
    esq := esq - (esq+(166 + larg-87)-700);

  panCorrecao.Left := esq;
  if larg > 87 then //87 é o tamanho mínimo
  begin
    DBEvlNovo.Width := larg;
    panCorrecao.Width := 166 + larg-87; //166 padrão do painel e 87 padrão do campo vlNovo dessa forma só aumenta o que passar disso
  end
  else
  begin
    DBEvlNovo.Width := 87;
    panCorrecao.Width := 166;
  end;

  //Agora vem o processo de adição
  cdsCTeCCampo.Append;
  cdsCTeCCamponameNilus.AsString := nome;
  cdsCTeCCamponrItem.AsInteger := nrItem;
  if not BuscaChaveSec(cdsCTeCCampo, [DBEnameNilus, DBEnrItem]) then
  begin
    cdsCTeCCampoidEmpresa.AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsCTeCCampoidCadEmpresa.AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsCTeCCampoidDocSerie.AsString := cdsPadrao.FieldByName('idDocSerie').AsString;
    cdsCTeCCampoidCTe.AsInteger := cdsPadrao.FieldByName('idCTe').AsInteger;
    cdsCTeCCampoidCorrecao.AsInteger := cdsCTeCorrecaoidCorrecao.AsInteger;
    cdsCTeCCamponameNilus.AsString := nome;
    cdsCTeCCamponrItem.AsInteger := nrItem;
  end;
  panCorrecao.Visible := true;
  DBEvlNovo.SetFocus;
end;

procedure TFrmCadCTe.actCancelarExecute(Sender: TObject);
begin
  inherited;
  HabilitaCTe(false);
  TabCTe.TabVisible := false;
  BtnEnviar.Enabled := false;
  BtnImprimir.Enabled := false;
  HabilitaCorrecao(false);
end;


procedure TFrmCadCTe.actExcluirExecute(Sender: TObject);
var
  status, sql : string;
begin
//  inherited;

  status := '';

  if cdsPadrao.FieldByName('stCte').AsString = 'AUTORIZADO' then
  begin
    status := 'A CANCELAR';
  end //fim do if cdsPadrao.FieldByName('stCte').AsString = 'AUTORIZADO' then
  else
    if cdsPadrao.FieldByName('stCte').AsString = 'A ENVIAR' then
    begin
      status := 'A INUTILIZAR';
    end; //fim do if cdsPadrao.FieldByName('stCte').AsString = 'A ENVIAR' then

  if status <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit])  then
       cdsPadrao.Edit;

    cdsPadrao.FieldByName('stCTe').AsString := status;

    if (status = 'A INUTILIZAR') and (cdsCTeEle.RecordCount > 0) then //Exclui os lançamentos do CTe na base CTe
    begin
      sql := 'EXEC spTrpCTeLimpaTabela ' + QuotedStr(cdsCTeEleemit_CNPJ.AsString) + ', ' + cdsCTeEleide_serie.AsString +
             ', ' + cdsCTeEleidCTe.AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end
    else
     if (status = 'A CANCELAR') and (cdsCTeEle.RecordCount > 0) then //Exclui os lançamentos do CTe na base CTe
     begin
       sql := 'UPDATE CTE SET stCTe = ' + QuotedStr('A CANCELAR') + ' WHERE emit_CNPJ = ' +
              QuotedStr(cdsCTeEleemit_CNPJ.AsString) + ' AND ide_serie = ' + cdsCTeEleide_serie.AsString +
              ' AND ide_nCT = ' + cdsCTeEleidCTe.AsString;
       dmPadrao.dbConexaoNFe.ExecuteDirect(sql);
     end;

    cdsPadrao.Post;
    cdsPadrao.ApplyUpdates(0);
    DBEidCteExit(DBEidCTE);
  end;
  HabilitaCorrecao(false);
end;


procedure TFrmCadCTe.actFecharExecute(Sender: TObject);
begin
  inherited;
  panCampos.Visible := false;
end;

procedure TFrmCadCTe.actNovoExecute(Sender: TObject);
begin
  inherited;
  HabilitaCTe(false);
  HabilitaCorrecao(false);
  DBEidCte.TabStop := true;
  TabCTe.TabVisible := false;
  BtnEnviar.Enabled := false;
  BtnImprimir.Enabled := false;
end;

procedure TFrmCadCTe.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesCTe, FrmPesCTe);
  FrmPesCTe.idEmpresa := DBEidEmpresa.Text;
  FrmPesCTe.idCadEmpresa := DBEidCadEmpresa.Text;
  FrmPesCTe.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesCTe.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesCTe.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesCTe.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesCTe.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesCTe.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idDocSerie').Value := FrmPesCTe.cdsGrid.FieldByName('idDocSerie').Value;
      FieldByName('idCTe').Value := FrmPesCTe.cdsGrid.FieldByName('idCTe').Value;
      PagAbas.ActivePageIndex := 0;
      DBEidCTe.SetFocus;
      DBEidCTeExit(DBEidCTe);
    end;
  end;
end;

procedure TFrmCadCTe.actSalvarExecute(Sender: TObject);
var
  msg, sql : string;
  t : TDBXTransaction;
  vlTotalRateio : currency;
  idTituloRec : integer;
  titzero : boolean; //variável para marcar se título ficou sem número
begin
  msg := '';

  if cdsCusto.State in [dsEdit, dsInsert] then
    cdsCusto.Cancel;

  if cdsCTeComp.State in [dsEdit, dsInsert] then
    cdsCTeComp.Cancel;

  if cdsCTeCarga.State in [dsEdit, dsInsert] then
    cdsCTeCarga.Cancel;

  if cdsCTePeri.State in [dsEdit, dsInsert] then
    cdsCTePeri.Cancel;

  if cdsCTeNFe.State in [dsEdit, dsInsert] then
    cdsCTeNFe.Cancel;

  if cdsCTeNF.State in [dsEdit, dsInsert] then
    cdsCTeNF.Cancel;

  if cdsCTeDocOutro.State in [dsEdit, dsInsert] then
    cdsCTeDocOutro.Cancel;

  if cdsCTeDocAnt.State in [dsEdit, dsInsert] then
    cdsCTeDocAnt.Cancel;

  if cdsCTeOcc.State in [dsEdit, dsInsert] then
    cdsCTeOcc.Cancel;

  if cdsCTeValePed.State in [dsEdit, dsInsert] then
    cdsCTeValePed.Cancel;

  if cdsTituloRecParc.State in [dsEdit, dsInsert] then
    cdsTituloRecParc.Cancel;

  vlTotalRateio := 0;
  if not (cdsCustovlTotalRateio.IsNull) then
    if cdsCustovlTotalRateio.Value > 0 then
      vlTotalRateio := cdsCustovlTotalRateio.Value;

  if cdsCusto.RecordCount > 0 then
    if cdsCTeComp.FieldByName('vlTotalGeral').Value <> vlTotalRateio then
      msg := 'O valor total do rateio não pode ser diferente do valor total da operação!' + #13;

  //verifica se o tomador é outros e precisa ser informado o idTomador
  if cdsPadrao.FieldByName('toma').AsString = '4' then
    if (trim(DBEidTomador.Text) = '') or (trim(DBEidCadTomador.Text) = '') then
      msg := 'O Tomador deve ser informado!';

  if trim(DBEdtPrevisaoRodo.Text) = '' then
    msg := msg + 'A data de previsão do Transporte tem que ser informada!' + #13;

  if trim(DBEidMaquina.Text) = '' then
    msg := msg + 'O veículo deve ser informado!' + #13;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    //inicia a variável do título
    titzero := false;
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
      if cdsTituloRec.State = dsInsert then
      begin
        if trim(DBEnrTituloRec.Text) = '' then
        begin
          titzero := true;
          cdsTituloRecnrTituloRec.AsInteger := 0;
          if trim(DBEobsTituloRec.Text) = '' then
            cdsTituloRecobsTituloRec.AsString := 'ALTERAR';
        end;
      end; //fim do if cdsTituloRec.State = dsInsert then

      cdsTituloRec.Post;
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
      cdsTituloRecParc.ApplyUpdates(0);
      //
      If (cdsTituloRecMov.ChangeCount > 0) Then
         cdsTituloRecMov.ApplyUpdates(-1);
      //

      //
    end; //fim do verificação de alterações na tabela caixa

    GravaChave(1, '', nil);
    inherited;

    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup,
          [DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidCTe, DBEidMovCaixa, DBEidMovConta, DBEidTituloRec], 'spFechaCTe');

  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    if titzero then
    begin
      cdsTituloRec.Edit;
      cdsTituloRecnrTituloRec.AsString := cdsPadrao.FieldByName('idCTe').AsString;
      if cdsTituloRecobsTituloRec.AsString = 'ALTERAR' then
        cdsTituloRecobsTituloRec.AsString := 'Ref.: CTe.: ' + cdsPadrao.FieldByName('idCte').AsString;
      cdsTituloRec.Post;
      cdsTituloRec.ApplyUpdates(0);
    end; //if titzero then
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  DBEidCte.TabStop := true;
  PagAbas.ActivePageIndex := 0;
end;

procedure TFrmCadCTe.BtnEnviarCartaClick(Sender: TObject);
var
  sql, cnpj_emissor : string;
  parar, erro : boolean;
  tentativa, id : integer;
begin
  try
    cdsCTeCorrecao.Edit;
    cdsCTeCorrecaodtCorrecao.AsDateTime := date;
    cdsCTeCorrecao.Post;
    cdsCTeCorrecao.ApplyUpdates(0);
  except on E: Exception do
    ShowMessage('Falha no cdsCTeCorrecao' + E.Message);
  end;

  cnpj_emissor := funcao.TiraMascara(trim(lookidCnpjCpf.Caption));
  //Integra a Carta de correção com o BDNFE
  with dmPadrao do
  begin
    cdsCartaCTe.Active := false;   //////VER AQUI QUESTÃO DO CNPJ QUE PODE SER CPF
    cdsCartaCTe.CommandText := 'SELECT * FROM CTE_CARTACORRECAO WHERE emit_CNPJ = ' + QuotedStr(cnpj_emissor) +
                   ' AND ide_serie = ' + Trim(lookSerieFiscal.Caption) + ' AND ide_nCT = ' +
                   cdsPadrao.FieldByName('idCTe').AsString + ' AND ID_CARTACORRECAO = ' + cdsCTeCorrecaoidCorrecao.AsString;
    cdsCartaCTe.Active := true;
    if cdsCartaCTe.RecordCount > 0 then
      cdsCartaCTe.Edit
    else
    begin
      cdsCartaCTe.Append;
      cdsCartaCTeemit_CNPJ.AsString := cnpj_emissor;
      cdsCartaCTeide_serie.AsInteger := StrToInt(Trim(lookSerieFiscal.Caption));
      cdsCartaCTeide_nCT.AsInteger := cdsCTeCorrecaoidCte.AsInteger;
      cdsCartaCTeID_CARTACORRECAO.AsInteger := cdsCTeCorrecaoidCorrecao.AsInteger;
    end;

    cdsCartaCTeCHAVE_CTE.AsString := cdsCTeEleinfCte_chCTe.AsString;
    cdsCartaCTeCOD_ORGAO.AsInteger := StrToInt(Copy(cdsCTeEleinfCte_chCTe.AsString, 1, 2));
    cdsCartaCTeST_CARTACORRECAO.AsString := cdsCTeCorrecaostCorrecao.AsString;
    cdsCartaCTeDESC_ERRO.AsString := '';
    cdsCartaCTe.Post;
    cdsCartaCTe.ApplyUpdates(0);

    // Agora integra os itens da Carta de Correção
    //Primeiro limpa a tabela para tirar sujeira de outra correção anterior
    sql := 'DELETE FROM CTE_CARTACORRECAOITEM WHERE emit_CNPJ = ' + QuotedStr(cnpj_emissor) +
           ' AND ide_serie = ' + Trim(lookSerieFiscal.Caption) + ' AND ide_nCT = ' +
           cdsPadrao.FieldByName('idCTe').AsString + ' AND ID_CARTACORRECAO = ' + cdsCTeCorrecaoidCorrecao.AsString;
    dmPadrao.dbConexaoNFe.ExecuteDirect(sql);
    cdsVCampo.First;
    while not cdsVCampo.Eof do
    begin
      cdsCartaCTeItem.Active := false;
      cdsCartaCTeItem.CommandText := 'SELECT * FROM CTE_CARTACORRECAOITEM WHERE emit_CNPJ = ' + QuotedStr(cnpj_emissor) +
                     ' AND ide_serie = ' + Trim(lookSerieFiscal.Caption) + ' AND ide_nCT = ' +
                     cdsPadrao.FieldByName('idCTe').AsString + ' AND ID_CARTACORRECAO = ' +
                     cdsCTeCorrecaoidCorrecao.AsString + ' AND grupoAlterado = ' + QuotedStr(cdsVCampogrupoCTe.AsString) +
                     ' AND campoAlterado = ' + QuotedStr(cdsVCampocampoCTe.AsString);
      cdsCartaCTeItem.Active := true;
      if cdsCartaCTeItem.RecordCount > 0 then
        cdsCartaCTeItem.Edit
      else
      begin
        cdsCartaCTeItem.Append;
        cdsCartaCTeItememit_CNPJ.AsString := cnpj_emissor;
        cdsCartaCTeItemide_serie.AsInteger := StrToInt(Trim(lookSerieFiscal.Caption));
        cdsCartaCTeItemide_nCT.AsInteger := cdsCTeCorrecaoidCte.AsInteger;
        cdsCartaCTeItemID_CARTACORRECAO.AsInteger := cdsCTeCorrecaoidCorrecao.AsInteger;
        cdsCartaCTeItemgrupoAlterado.AsString := cdsVCampogrupoCTe.AsString;
        cdsCartaCTeItemcampoAlterado.AsString := cdsVCampocampoCTe.AsString;
      end;
      cdsCartaCTeItemvalorAlterado.AsString := cdsVCampovlNovo.AsString;
      cdsCartaCTeItemnroItemAlterado.AsInteger := cdsVCamponritem.AsInteger;
      cdsCartaCTeItem.Post;
      cdsCartaCTeItem.ApplyUpdates(0);
      cdsVCampo.Next;
    end; //while not cdsVCampo.Eof do


  end; //fim with dmPadraoArm do

  try
    //Adiciona na tabela NOTA_TEMP para que seja enviada
    dmPadrao.cdsTmpNfe.Active := False;
    sql := 'SELECT * FROM NOTA_TEMP WHERE CNPJ_EMISSOR = ' + QuotedStr(cnpj_emissor) +
         ' AND SERIE = ' + trim(lookSerieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' + cdsCTeCorrecaoidCte.AsString;
    dmPadrao.cdsTmpNfe.CommandText := sql;
    dmPadrao.cdsTmpNfe.Active := True;
    if dmPadrao.cdsTmpNfe.RecordCount = 0 then
    begin
      dmPadrao.cdsTmpNfe.Append;
      dmPadrao.cdsTmpNfe.FieldByName('CNPJ_EMISSOR').AsString := cnpj_emissor;
      dmPadrao.cdsTmpNfe.FieldByName('SERIE').AsString := trim(lookSerieFiscal.Caption);
      dmPadrao.cdsTmpNfe.FieldByName('NUM_SEQ_NFE').AsInteger := cdsCTeCorrecaoidCte.AsInteger;
      dmPadrao.cdsTmpNfe.FieldByName('ORDEM').AsInteger := cdsCTeCorrecaoidCorrecao.AsInteger;
      dmPadrao.cdsTmpNfe.FieldByName('ACAO').AsString := 'R'; // R - Carta de Correção do CTe
      dmPadrao.cdsTmpNfe.FieldByName('STATUS').AsString := 'A ENVIAR';
      dmPadrao.cdsTmpNfe.FieldByName('TP_EMISSAO').AsString := 'Normal';
      dmPadrao.cdsTmpNfe.FieldByName('USUARIO').AsString := frmPrincipal.idUsuario;
      dmPadrao.cdsTmpNfe.Post;
      dmPadrao.cdsTmpNfe.ApplyUpdates(0);
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;

  //Consulta se já foi
  Application.ProcessMessages;
  frmPrincipal.AbreStatus('Enviando Carta de Correção... Aguarde...');

  Application.ProcessMessages;

  id := cdsCTeCorrecaoidCorrecao.AsInteger;
  parar := false;
  erro := false;
  tentativa := 0;
  while not parar do
  begin
    sleep(2000);
    dmPadrao.dbConexaoNFe.Connected := false;
    dmPadrao.dbConexaoNFe.Connected := true;
    Application.ProcessMessages;
    dmPadrao.cdsTmpNfe.Active := false;
    if dmPadrao.cdsTmpNfe.CommandText = sql then
      dmPadrao.cdsTmpNfe.CommandText := sql + ' AND 1=1'
    else
      dmPadrao.cdsTmpNfe.CommandText := sql;
    dmPadrao.cdsTmpNfe.Active := true;

    parar := dmPadrao.cdsTmpNfe.RecordCount = 0;
    tentativa := tentativa + 1;
    if tentativa >= 10 then
    begin
      parar := true;
      erro := true;
    end;
  end;

    FrmPrincipal.FechaStatus;

  Application.ProcessMessages;


  dmPadrao.cdsCartaCTe.Active := false;
  dmPadrao.cdsCartaCTe.CommandText := dmPadrao.cdsCartaCTe.CommandText + ' AND 1=1';
  dmPadrao.cdsCartaCTe.Active := true;

  if (erro) and (dmPadrao.cdsCartaCTeST_CARTACORRECAO.AsString <> 'PROCESSADA') then
    messagedlg('Não foi possível realizar a solicitação! Verifique o Painel-e!', mterror, [mbok], 0)
  else
  begin
    dmPadrao.cdsCartaCTe.Active := false;
    dmPadrao.cdsCartaCTe.CommandText := dmPadrao.cdsCartaCTe.CommandText + ' AND 1=1';
    dmPadrao.cdsCartaCTe.Active := true;
    cdsCTeCorrecao.Edit;
    cdsCTeCorrecaostCorrecao.AsString := dmPadrao.cdsCartaCTeST_CARTACORRECAO.AsString;
    if trim(dmPadrao.cdsCartaCTeST_CARTACORRECAO.AsString) <> '' then
      cdsCTeCorrecaostCorrecao.AsString := dmPadrao.cdsCartaCTeST_CARTACORRECAO.AsString;
    if trim(dmPadrao.cdsCartaCTeDESC_ERRO.AsString) <> '' then
      cdsCTeCorrecaodescErro.AsString := dmPadrao.cdsCartaCTeDESC_ERRO.AsString;

    cdsCTeCorrecao.Post;
    cdsCTeCorrecao.ApplyUpdates(0);
    if trim(cdsCTeCorrecaodescErro.AsString) <> '' then
      messagedlg('Ocorreu erro: ' + #13 + cdsCTeCorrecaodescErro.AsString, mterror, [mbok], 0);
  end;

  HabilitaBotoesCarta;
end;

procedure TFrmCadCTe.BtnEnviarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  with dmPadrao do
  begin
    //primeiramente integra o CTe caso seja a opção a Enviar
    if cdsPadrao.FieldByName('stCTe').AsString = 'A ENVIAR' then
    begin
      //Primeiro executa a validação
      sql := 'EXEC spCTeValidacao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ', ' + funcao.RetornaValorEField(DBEidDocSerie, 3) + ', ' + funcao.RetornaValorEField(DBEidCTe, 3);
      cdsValidacao.Active := false;
      cdsValidacao.CommandText := sql;
      cdsValidacao.Active := true;
      if cdsValidacao.RecordCount > 0 then
      begin
        Application.CreateForm(TFrmCTeValidacao, FrmCTeValidacao);
        FrmCTeValidacao.ShowModal;
        exit; //Não avança até que sejam corrigidos os problemas da validação
      end;

      sql := 'EXEC spTrpIntegraCTe ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + QuotedStr(DBEidDocSerie.Text) +
             ', ' + DBEidCTe.Text + ', 1, NULL, NULL'; //A princípio enviar somente normal
      dbConexao.ExecuteDirect(sql);
    end
    else
      if cdsPadrao.FieldByName('stCTe').AsString = 'A CANCELAR' then
      begin
        sql := 'UPDATE CTE SET stCTe = ' + QuotedStr('A CANCELAR') + ' WHERE emit_CNPJ = ' +
               QuotedStr(cdsCTeEleemit_CNPJ.AsString) + ' AND ide_serie = ' + cdsCTeEleide_serie.AsString +
               ' AND ide_nCT = ' + cdsCTeEleidCTe.AsString;
        dbConexaoNfe.ExecuteDirect(sql);
      end
      else
      begin
        messagedlg('Opção não disponível!', mtwarning, [mbok], 0);
        exit;
      end;
    cdsTmpNFe.Active := false;
    cdsTmpNFe.CommandText := 'SELECT * FROM NOTA_TEMP WHERE CNPJ_EMISSOR = ' + funcao.TiraMascara(QuotedStr(trim(lookidCnpjCpf.Caption))) +
                          ' AND SERIE = ' + trim(lookserieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' +
                          cdsPadrao.FieldByName('idCTe').AsString;
    cdsTmpNFe.Active := true;
    if cdsTmpNFe.RecordCount <= 0 then
    begin
      cdsTmpNFe.Append;
      cdsTmpNFe.FieldByName('CNPJ_EMISSOR').AsString := funcao.TiraMascara(trim(lookidCnpjCpf.Caption));
      cdsTmpNFe.FieldByName('SERIE').AsString := trim(lookserieFiscal.Caption);
      cdsTmpNFe.FieldByName('NUM_SEQ_NFE').AsInteger := cdsPadrao.FieldByName('idCTe').AsInteger;
      cdsTmpNFe.FieldByName('ACAO').AsString := 'T'; //Transporte
      cdsTmpNFe.FieldByName('STATUS').AsString := cdsPadrao.FieldByName('stCTe').AsString;
      cdsTmpNFe.FieldByName('TP_EMISSAO').AsString := 'Normal';
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
    DBEidCTeExit(DBEidCTe);
  end;


end;

procedure TFrmCadCTe.BtnImprimirCartaClick(Sender: TObject);
var
  msgErro, arqCTe, arqCCe, msg : string;
begin
  //Atribui o DANFE do FastReport
  ACBRCTe1.DACTe := ACBrCTeDACTEFR1;

  msgerro := '';
  try
    msgerro := ConfigCTE(trim(lookidCnpjCpf.CAption), 'Normal', cdsPadrao.FieldByName('dtEmissao').AsDateTime);
  except
   on E: Exception do
    begin
      msgerro := E.Message;
    end;
  end;
  if msgerro = '' then
  begin
    arqCTe := ACBrCTe1.Configuracoes.Arquivos.PathSalvar + cdsCTeEledescXML.AsString;
    arqCCe := cdsCTeEleinfCte_chCTe.AsString + '1101100' + cdsCTeCorrecaoidCorrecao.AsString + '-ProcEventoCTe.xml';
    arqCCe := ACBrCTe1.Configuracoes.Arquivos.PathSalvar + '\CCe\' + arqCce;
    if not FileExists(arqCTe) then
      msgerro := 'Arquivo XML do CTe não encontrado!'
    else
      if not FileExists(arqCCe) then
        msgerro := 'Arquivo XML do Evento de Carta de Correção não encontrado!';
  end;
  if trim(msgerro) = '' then
  begin
    ACBrCTe1.Conhecimentos.LoadFromFile(arqCTe);

    try
      ACBrCTe1.EventoCTe.Evento.Clear;
      ACBrCTe1.EventoCTe.LerXML(arqCCe);
      ACBrCTe1.ImprimirEvento;
    except
      on E: Exception do
      begin
        messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      end;
    end;
  end;

  if trim(msgerro) <> '' then
    messagedlg(msgerro, mterror, [mbok], 0);
end;

procedure TFrmCadCTe.BtnImprimirClick(Sender: TObject);
var
  msgerro, caminho, arqRel : string;
begin
  inherited;
  //Atribui o DANFE do FastReport
  ACBRCTe1.DACTe := ACBrCTeDACTEFR1;
  msgerro := '';
  try
    msgerro := ConfigCTE(trim(lookidCnpjCpf.CAption), 'Normal', cdsPadrao.FieldByName('dtEmissao').AsDateTime);
  except
   on E: Exception do
    begin
      msgerro := E.Message;
    end;
  end;

  if trim(msgerro) = '' then
  begin
    arqRel := dmPadrao.RetornaConfig('caminho_rel') + 'DACTE.fr3';
    caminho := ACBrCTe1.Configuracoes.Arquivos.PathSalvar + cdsCTeEledescXML.AsString;
//    ClipBoard.AsText := caminho;
    if FileExists(caminho) then
    begin
      ACBrCTe1.Conhecimentos.Clear;
      ACBrCTe1.Conhecimentos.LoadFromFile(caminho);
      ACBrCTeDACTEFR1.FastFile := arqRel;
      ACBrCTe1.Conhecimentos.Imprimir;
    end
    else
      msgerro := 'Caminho do arquivo XML não encontrado!';
  end;

  if trim(msgerro) <> '' then
    messagedlg(msgerro, mtwarning, [mbok], 0);
end;

procedure TFrmCadCTe.BtnAdicionarAntClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTeDocAnt, BtnAdicionarAnt, BtnCancelarAnt, BtnRetirarAnt, BtnNovoAnt, (Sender as TCBitBtn), 'idDocAnt');
  if (sender as tcbitbtn).Name = 'BtnAdicionarAnt' then
    BtnNovoAnt.Click;

  DBEtpDocAnt.SetFocus;

end;

procedure TFrmCadCTe.BtnAdicionarCargaClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTeCarga, BtnAdicionarCarga, BtnCancelarCarga, BtnRetirarCarga, BtnNovoCarga, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarCarga' then
    BtnNovoCarga.Click;

  DBEidProdMedida.SetFocus;

end;

procedure TFrmCadCTe.BtnAdicionarCompClick(Sender: TObject);
begin
  funcao.GravaSec(chave, cdsCTeComp, BtnAdicionarComp, BtnCancelarComp, BtnRetirarComp, BtnNovoComp, (Sender as TCBitBtn), 'idComp');
  if (sender as tcbitbtn).Name = 'BtnAdicionarComp' then
    BtnNovoComp.Click;

  DBEidProduto.SetFocus;
end;

procedure TFrmCadCTe.BtnAdicionarCustoClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, BtnNovoCusto, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarCusto' then
    BtnNovoCusto.Click;

  DBEidResultadoRT.SetFocus;

end;

procedure TFrmCadCTe.BtnAdicionarNFClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTeNF, BtnAdicionarNF, BtnCancelarNF, BtnRetirarNF, BtnNovoNF, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarNF' then
    BtnNovoNF.Click;

  DBEserie.SetFocus;

end;

procedure TFrmCadCTe.BtnAdicionarNFeClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTeNFe, BtnAdicionarNFe, BtnCancelarNFe, BtnRetirarNFe, BtnNovoNFe, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarNFe' then
    BtnNovoNFe.Click;

  DBEchave.SetFocus;
end;

procedure TFrmCadCTe.BtnAdicionarOccClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTeOcc, BtnAdicionarOcc, BtnCancelarOcc, BtnRetirarOcc, BtnNovoOcc, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarOcc' then
    BtnNovoOcc.Click;

  DBEserieOcc.SetFocus;
end;

procedure TFrmCadCTe.BtnAdicionarOutroClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTeDocOutro, BtnAdicionarOutro, BtnCancelarOutro, BtnRetirarOutro, BtnNovoOutro, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarOutro' then
    BtnNovoOutro.Click;

  DBEtpDoc.SetFocus;

end;

procedure TFrmCadCTe.BtnAdicionarPeriClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTePeri, BtnAdicionarPeri, BtnCancelarPeri, BtnRetirarPeri, BtnNovoPeri, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarPeri' then
    BtnNovoPeri.Click;

  DBEnrONU.SetFocus;
end;

procedure TFrmCadCTe.BtnAdicionarValeClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCTeValePed, BtnAdicionarVale, BtnCancelarVale, BtnRetirarVale, BtnNovoVale, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarVale' then
    BtnNovoVale.Click;

  DBEnrCompra.SetFocus;
end;

procedure TFrmCadCTe.BtnCancelaCorrecaoClick(Sender: TObject);
begin
  inherited;
  cdsCTeCCampo.Cancel;
  panCorrecao.Visible := false;
end;

procedure TFrmCadCTe.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  if cdsCTeCCampo.State in [dsInsert, dsEdit] then
    cdsCTeCCampo.Post;
  panCorrecao.Visible := false;
end;

procedure TFrmCadCTe.BtnCorrecaoClick(Sender: TObject);
var
  sql : string;
  idCorrecao : integer;
begin
  inherited;
  if (BtnCorrecao.Caption = 'Iniciar Correção') then
  begin
    idCorrecao := 0;
    LblCorrecao.Visible := true;
    panRodape.Visible := lblCorrecao.Visible;
    BtnCorrecao.Caption := 'Finaliza Correção';
    tmpCorrecao.Enabled := true;
    cdsCTeCorrecao.Append;
    cdsCTeCorrecaoidEmpresa.AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsCTeCorrecaoidCadEmpresa.AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsCTeCorrecaoidDocSerie.AsString := cdsPadrao.FieldByName('idDocSerie').AsString;
    cdsCTeCorrecaoidCTe.AsInteger := cdsPadrao.FieldByName('idCTe').AsInteger;

    //Primeiramente verifica se já existe uma carta de correção para esse CTe processada.
    sql := 'SELECT MAX(idCorrecao) idCorrecao FROM CTeCorrecao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
           ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ' AND idDocSerie = ' +
           funcao.RetornaValorEField(DBEidDocSerie, 3) + ' AND idCTe = ' + funcao.RetornaValorEField(DBEidCTe, 3);

    idCorrecao := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idCorrecao').AsInteger;
    if idCorrecao > 0 then //se sim existe correção ai vai ver se já é processada
    begin
      sql := 'SELECT * FROM CTeCorrecao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ' AND idDocSerie = ' +
             funcao.RetornaValorEField(DBEidDocSerie, 3) + ' AND idCTe = ' + funcao.RetornaValorEField(DBEidCTe, 3) +
             ' AND idCorrecao = ' + IntToStr(idCorrecao);
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      if FieldByName('stCorrecao').AsString = 'PROCESSADA' then
        if messagedlg('Já existe uma Carta processada. Deseja Abrir?', mtconfirmation, [mbyes, mbno], 0) = mryes then
        begin
          cdsCTeCorrecao.Active := false;
          cdsCTeCorrecao.CommandText := sql;
          cdsCTeCorrecao.Active := true;
          BtnCorrecao.Click;
          exit;
        end;
    end;

    sql := 'SELECT idCorrecao FROM CTeCorrecao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
           ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ' AND idDocSerie = ' +
           funcao.RetornaValorEField(DBEidDocSerie, 3) + ' AND idCTe = ' + funcao.RetornaValorEField(DBEidCTe, 3) +
           ' AND stCorrecao = ' + QuotedStr('ATIVO');
    //Primeiro verifica se tem alguma aberta
    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        cdsCTeCorrecaoidCorrecao.AsInteger := FieldByName('idCorrecao').AsInteger;
        BuscaChaveSec(cdsCTeCorrecao, [DBEidCorrecao]);
      end
      else
      begin
        sql := 'SELECT MAX(idCorrecao) id FROM CTeCorrecao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
               ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ' AND idDocSerie = ' +
               funcao.RetornaValorEField(DBEidDocSerie, 3) + ' AND idCTe = ' + funcao.RetornaValorEField(DBEidCTe, 3);
        cdsCTeCorrecaoidCorrecao.AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('id').AsInteger + 1;
        cdsCTeCorrecaodtCorrecao.AsDateTime := date;
        cdsCTeCorrecaostCorrecao.AsString := 'ATIVO';
      end;
    end;
    cdsCTeCCampo.Filtered := false;
    cdsCTeCCampo.Filter := 'idCorrecao = ' + cdsCTeCorrecaoidCorrecao.AsString;
    cdsCTeCCampo.Filtered := true;
  end
  else
  begin
    PagAbas.ActivePageIndex := 0;

    //Procedimento de finalização
    if (cdsCTeCCampo.ChangeCount = 0) and (cdsCTeCCampo.RecordCount = 0) and (cdsCTeCorrecaostCorrecao.AsString <> 'PROCESSADA')  then
    begin
      messagedlg('Nenhuma correção efetuada!', mtinformation, [mbok], 0);
      cdsCTeCorrecao.Cancel;
    end
    else
    begin
      if cdsCTeCorrecaostCorrecao.AsString <> 'PROCESSADA' then
      begin
        if cdsCTeCorrecao.State in [dsEdit, dsInsert] then
          cdsCTeCorrecao.Post;
        if cdsCTeCorrecao.ChangeCount > 0 then
          cdsCTeCorrecao.ApplyUpdates(0);

        if cdsCTeCCampo.ChangeCount > 0 then
          cdsCTeCCampo.ApplyUpdates(0);
      end;

      //Abre a view de visualização dos campos
      cdsVCampo.Active := false;
      cdsVCampo.CommandText := 'SELECT * FROM vCorrecaoCampo WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
               ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ' AND idDocSerie = ' +
               funcao.RetornaValorEField(DBEidDocSerie, 3) + ' AND idCTe = ' + funcao.RetornaValorEField(DBEidCTe, 3) +
               ' AND idCorrecao = ' + funcao.RetornaValorEField(DBEidCorrecao, 3);
      cdsVCampo.Active := true;
      panCampos.Top := 3;
      panCampos.Left := 3;
      panCampos.Visible := true;
    end;
    LblCorrecao.Visible := false;
    panRodape.Visible := lblCorrecao.Visible;
    BtnCorrecao.Caption := 'Iniciar Correção';
    tmpCorrecao.Enabled := false;
    HabilitaBotoesCarta;
  end;
end;

procedure TFrmCadCTe.BtnGerarRateioClick(Sender: TObject);
begin
  inherited;
  if cdsCTeCompvlTotalGeral.Value > 0 then
    GeraRateio;
end;

procedure TFrmCadCTe.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 17);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCTeComp;
  Tabelas[2] := cdsCTeValePed;
  Tabelas[3] := cdsCTeTributo;
  Tabelas[4] := cdsCTeCarga;
  Tabelas[5] := cdsCTeNFe;
  Tabelas[6] := cdsCTeNF;
  Tabelas[7] := cdsCTeDocOutro;
  Tabelas[8] := cdsCTeDocAnt;
  Tabelas[9] := cdsCTePeri;
  Tabelas[10] := cdsCTeSeg;
  Tabelas[11] := cdsCTeRodo;
  Tabelas[12] := cdsCTeOcc;
  Tabelas[13] := cdsCusto;
  Tabelas[14] := cdsCTeEle;
  Tabelas[15] := cdsCTeCorrecao;
  Tabelas[16] := cdsCTeCCampo;

  SetLength(chave, 4);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidDocSerie;
  chave[3] := DBEidCte;

  foco := DBEidDocSerie;

  tab_chave := 'CTe';
  Height := 640;
  Width := 720;

  situacao := 'stCTe';
  situacaoA := 'A ENVIAR';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadCTe.BtnSalvarParcClick(Sender: TObject);
begin
  inherited;
  if not (cdsTituloRecParc.State IN [dsEdit, dsInsert]) then
    cdsTituloRecParc.Edit;
  funcao.GravaSec([DBEidTituloRec], cdsTituloRecParc, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc, (Sender as TCBitBtn), 'idParcela');
  if (Sender as TBitBtn).Name <> 'BtnNovoParc' then
    SomaParcelas;

  if (Sender as TBitBtn).Name <> 'BtnSalvarParc' then
  begin
    SomaParcelas;
    GeraMovimentacao;
  end;

  DBEidParcela.SetFocus;
end;

procedure TFrmCadCTe.CBitBtn5Click(Sender: TObject);
begin
  inherited;
  panCampos.Visible := false;
end;

procedure TFrmCadCTe.cdsCTeCompAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  if DataSet.Name = 'cdsCTeRodo' then
    if DataSet.State = dsInsert then
    begin
      cdsCTeRodo.FieldByName('lotacao').AsString := '1';
    end;
end;

procedure TFrmCadCTe.cdsCTeCorrecaoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  HabilitaBotoesCarta;
end;

procedure TFrmCadCTe.cdsCTeRodoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State = dsInsert then
    cdsCTeRodo.FieldByName('lotacao').AsInteger := 1;

  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadCTe.cdsMovCaixaAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsCTeCompvlTotalGeral.Value > 0 then
    begin
      valor := cdsCTeCompvlTotalGeral.Value;
      if trim(DBEvlTituloRec.Text) <> '' then
        valor := valor - cdsTituloRec.FieldByName('vlTituloRec').AsCurrency;

      if trim(DBEvlMovConta.Text) <> '' then
        valor := valor - cdsMovConta.FieldByName('vlMovConta').AsCurrency;

      if valor < 0 then
        valor := 0;
    end;

  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idMovCaixa').AsInteger := 0;
  DataSet.FieldByName('dtMovCaixa').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('vlMovCaixa').Value := valor;
  DataSet.FieldByName('idMovFinanceira').Value := 11; //Valor pago pelo caixa
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idCadGeral').Value := cdsPadrao.FieldByName('idDestinatario').Value;
end;

procedure TFrmCadCTe.cdsMovContaAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  valor := 0;
//  if not cdsCTeCompvlTotalGeral.IsNull then
    if cdsCTeCompvlTotalGeral.Value > 0 then
    begin
      valor := cdsCTeCompvlTotalGeral.Value;
      if trim(DBEvlTituloRec.Text) <> '' then
        valor := valor - cdsTituloRec.FieldByName('vlTituloRec').AsCurrency;

      if trim(DBEvlMovCaixa.Text) <> '' then
        valor := valor - cdsMovCaixa.FieldByName('vlMovCaixa').AsCurrency;

      if valor < 0 then
        valor := 0;
    end;

  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idMovConta').Value := 0;
  DataSet.FieldByName('dtMovConta').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  if trim(Dataset.FieldByName('idCheque').AsString) = ''  then
    DataSet.FieldByName('idMovFinanceira').Value := 12 //Valor pago pelo banco
  else
    DataSet.FieldByName('idMovFinanceira').Value := 7; //emissão de cheque
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idCadGeral').Value := cdsPadrao.FieldByName('idDestinatario').Value;
  DataSet.FieldByName('impresso').AsString := 'N';
end;

procedure TFrmCadCTe.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State = dsInsert then
  begin
    cdsPadrao.FieldByName('horaEmissao').AsDateTime := time;
    cdsPadrao.FieldByName('dtEmissao').AsDateTime := Date;
    cdsPadrao.FieldByName('toma').AsInteger := 3;
  end;
end;

procedure TFrmCadCTe.cdsTituloRecAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;


procedure TFrmCadCTe.cdsTituloRecAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  valor := 0;
//  if not cdsCTeCompvlTotalGeral.IsNull then
    if cdsCTeCompvlTotalGeral.Value > 0 then
    begin
      valor := cdsCTeCompvlTotalGeral.Value;
      if trim(DBEvlMovCaixa.Text) <> '' then
        valor := valor - cdsMovCaixa.FieldByName('vlMovCaixa').AsCurrency;

      if trim(DBEvlMovConta.Text) <> '' then
        valor := valor - cdsMovConta.FieldByName('vlMovConta').AsCurrency;

      if valor < 0 then
        valor := 0;
    end;

  DataSet.FieldByName('idTituloRec').Value := 0;
  DataSet.FieldByName('idEmpresa').Value := cdsEmpresa.FieldByName('idEmpresa').Value;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idCliente').Value := RetIdFornecedor;
  DataSet.FieldByName('vlTituloRec').Value := valor;
  if cdsPadrao.FieldByName('idCTe').AsInteger > 0 then
    DataSet.FieldByName('nrTituloRec').Value := cdsPadrao.FieldByName('idCTe').Value;
  DataSet.FieldByName('dtEmissao').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idIndice').Value := 1;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 1; //Inclusão de titulo a receber
  DataSet.FieldByName('stTituloRec').Value := 'ATIVO'; //Status do titulo
  DataSet.FieldByName('incMes').Value := 'N'; //Mesmo dia
  if cdsPadrao.FieldByName('idCTe').AsInteger > 0 then
    DataSet.FieldByName('obsTituloRec').Value := 'Ref.: CTe.: ' + cdsPadrao.FieldByName('idCte').AsString;
end;

procedure TFrmCadCTe.cdsTituloRecMovAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idCliente').Value := RetIdFornecedor;
end;

procedure TFrmCadCTe.cdsTituloRecParcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

function TFrmCadCTe.ConfigCTE(cnpj, forma: string; dtEmi: TDateTime): string;
var
  msg, caminho, mes, ano, caminhocce, sql : string;
  ok : boolean;
begin
  msg := '';
  try
    sql := 'SELECT * FROM ConfigTransporte WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString + ' AND idCadEmpresa = ' +
           cdsEmpresaidCadEmpresa.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (FieldByName('serie_certificado').IsNull) then
         ACBrCTe1.Configuracoes.Certificados.NumeroSerie := FieldByName('serie_certificado').AsString
      else
          msg :=  msg + 'Número de série do certificado não configurado!' + #13;
      if not (trim(forma) = '') then
      begin
        if forma = 'Normal' then
          ACBrCTe1.Configuracoes.Geral.FormaEmissao := teNormal
        else
          if forma = 'Contingência' then
            ACBrCTe1.Configuracoes.Geral.FormaEmissao := teContingencia
          else
            if forma = 'SVCRS' then
              ACBrCTe1.Configuracoes.Geral.FormaEmissao := teSVCRS
            else
              if forma = 'DPEC' then
                ACBrCTe1.Configuracoes.Geral.FormaEmissao := teDPEC
              else
                if forma = 'FSDA' then
                  ACBrCTe1.Configuracoes.Geral.FormaEmissao := teFSDA
                else
                  if forma = 'ESVCSP' then
                    ACBrCTe1.Configuracoes.Geral.FormaEmissao := tESVCSP;
      end //if not (cdsConfigCTEDANFE_FORMAEMISSAO.IsNull) then
      else
        msg :=  msg + 'Forma de emissão não configurada!' + #13;

      ACBrCTe1.Configuracoes.Geral.Salvar := true;
      if not (FieldByName('caminho_arquivos').IsNull) then
      begin
        caminho := FieldByName('caminho_arquivos').AsString + funcao.TiraMascara(cnpj) + '\';

        caminhocce := caminho + 'CCE\';
        mes := formatdatetime('mm',dtEmi);
        ano := formatdatetime('yyyy',dtEmi);

        mes := IntToStr(StrToInt(mes));
        ano := IntToStr(StrToInt(ano));
        caminho := caminho + mes + '-' + ano;

        if not (DirectoryExists(caminho)) then
          CreateDir(caminho);
        ACBrCTe1.Configuracoes.Arquivos.PathSalvar := caminho;
        ACBrCTe1.Configuracoes.Arquivos.PathEvento := caminho;
//        ACBrCTe1.Configuracoes.Arquivos.PathEPEC := caminho;
        ACBrCTe1.Configuracoes.Arquivos.PathInu := caminho;
        ACBrCTe1.Configuracoes.Arquivos.PathCTe := caminho;
        //Caminho CCE -- será único sem as datas
        ACBrCTe1.Configuracoes.Arquivos.PathEvento := caminhocce;
        ACBrCTe1.Configuracoes.Arquivos.Salvar := True;
        ACBrCTe1.Configuracoes.Arquivos.EmissaoPathCTe := True;
      end
      else
        msg :=  msg + 'Caminho dos arquivos não configurado!' + #13;

      if (trim(lookUF.Caption) <> '') then
        ACBrCTe1.Configuracoes.WebServices.UF := trim(lookUF.Caption)
      else
        msg :=  msg + 'UF do Webservice não informado!' + #13;

      if not (FieldByName('tpAmb').IsNull) then
      begin
        if FieldByName('tpAmb').AsString = '2' then
          ACBrCTe1.Configuracoes.WebServices.Ambiente := taHomologacao
        else
          ACBrCTe1.Configuracoes.WebServices.Ambiente := taProducao;
      end
      else
        msg :=  msg + 'Ambiente não informado!' + #13;
      ACBrCTe1.Configuracoes.WebServices.Visualizar := false;

      if not(FieldByName('proxy_host').IsNull) then
        ACBrCTe1.Configuracoes.WebServices.ProxyHost := FieldByName('proxy_host').AsString;
      if not(FieldByName('proxy_porta').IsNull) then
        ACBrCTe1.Configuracoes.WebServices.ProxyPort := FieldByName('proxy_porta').AsString;
      if not(FieldByName('proxy_usuario').IsNull) then
        ACBrCTe1.Configuracoes.WebServices.ProxyUser := FieldByName('proxy_usuario').AsString;
      if not(FieldByName('proxy_senha').IsNull) then
        ACBrCTe1.Configuracoes.WebServices.ProxyPass := FieldByName('proxy_senha').AsString;

      if ACBrCTe1.DACTe <> nil then
      begin
        if not (FieldByName('tpImp').IsNull) then
        begin
          if FieldByName('tpImp').AsString = '1' then
            ACBrCTe1.DACTe.TipoDACTE  := tiRetrato
          else
            ACBrCTe1.DACTe.TipoDACTE  := tiPaisagem;
        end
        else
          ACBrCTe1.DACTe.TipoDACTE  := tiRetrato;

        if not (FieldByName('caminho_logomarca').IsNull) then
          ACBrCTe1.DACTe.Logo := FieldByName('caminho_logomarca').AsString;
      end;

    end;
  except
    msg := msg + ' Erro na configuração!';
  end;

  if trim(msg) = '' then
    Result := ''
  else
    Result := msg;

end;

procedure TFrmCadCTe.configlookempresaCTe;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookidInscEstadual.AlternateSQL.Clear;
  LookidInscEstadual.AlternateSQL.Add('SELECT idInscEstadual FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');

end;

procedure TFrmCadCTe.DBCBtpTributoExit(Sender: TObject);
begin
  inherited;
  HabilitaTributacao;
end;

procedure TFrmCadCTe.DBCKlotacaoExit(Sender: TObject);
begin
  inherited;
  HabilitaLotacao;
end;

procedure TFrmCadCTe.DBEchaveComplementadoExit(Sender: TObject);
begin
  inherited;
  PagAbas.ActivePageIndex := 1;
  DBEidCte.TabStop := false;
end;

procedure TFrmCadCTe.DBEchaveExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeNFe, [DBEchave]);
end;

procedure TFrmCadCTe.DBEforPagDblClick(Sender: TObject);
begin
  inherited;
  if Assigned((Sender as TCDBEdit).Find) then
    AbreCorrecao(Sender, 1, (Sender as TCDBEdit).Find)
  else
    AbreCorrecao(Sender, 1, nil);
end;

procedure TFrmCadCTe.DBEforPagExit(Sender: TObject);
begin
  inherited;
  if DBEforPag.Text <> vlAnterior then
    HabilitaFinanceiro;
end;


procedure TFrmCadCTe.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsTituloRec.FieldByName('incMes').AsString = 'S');
  if (cdsTituloRec.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
    DBEprMulta.SetFocus;
end;

procedure TFrmCadCTe.DBEidCompExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeComp, [DBEidComp]);
end;

procedure TFrmCadCTe.DBEidCteExit(Sender: TObject);
begin
  if trim(DBEidDocSerie.Text) = '' then
    exit;
  inherited;
{  if (not ()) and (trim(DBEidCTe.Text) <> '') then
  begin
    messagedlg('CTe não encontrado! Deixe em branco para novo lançamento!', mtwarning, [mbok], 0);
    DBEidCTe.SetFocus;
    HabilitaCTe(false);
    exit;
  end; }

  BuscaChave(cdsPadrao, chave);
  AbreTabSecundaria;

  if cdsPadrao.FieldByName('stCTe').AsString = 'A ENVIAR' then
  begin
    HabilitaCTe(true);
    PreenchePadrao;
    DBEtpServ.SetFocus;
  end
  else
    HabilitaCTe(false);

  IniciaFinancas;
  HabilitaRatRes;

  HabilitaTomador;
  HabilitaLotacao;

  HabilitaTributacao;
  HabilitaFinanceiro;

  BtnImprimir.Enabled := cdsPadrao.FieldByName('stCTe').AsString = 'AUTORIZADO';
  BtnEnviar.Enabled := (cdsPadrao.FieldByName('stCTe').AsString = 'A ENVIAR') or
                       (cdsPadrao.FieldByName('stCTe').AsString = 'A CANCELAR') or
                       (cdsPadrao.FieldByName('stCTe').AsString = 'A INUTILIZAR');

  TabCTe.TabVisible := cdsCTeEle.RecordCount > 0;

  if cdsCTeEle.RecordCount > 0 then
  begin

    if (cdsCTeElestCTe.AsString <> cdsPadrao.FieldByName('stCte').AsString) and (cdsPadrao.State <> dsInsert) then
    begin
      cdsPadrao.Edit;
      cdsPadrao.FieldByName('stCte').AsString := cdsCTeElestCTe.AsString;
      cdsPadrao.Post;
      cdsPadrao.ApplyUpdates(0);
      DBEidCteExit(DBEidCte);
    end;
  end; //if cdsCTeEle.RecordCount > 0 then
  HabilitaCorrecao(cdsPadrao.FieldByName('stCTe').AsString = 'AUTORIZADO');
end;

procedure TFrmCadCTe.DBEidMaquinaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadCTe.DBEidProdMedidaDblClick(Sender: TObject);
begin
  inherited;
  //Exclusivo da questão da medida
  if (Sender as TCDBEdit).DataSource.DataSet.RecordCount > 0 then
    AbreCorrecao(Sender, (Sender as TCDBEdit).DataSource.DataSet.RecNo, dmFind.FindTrpUnidadeMedida)
end;

procedure TFrmCadCTe.DBEidProdMedidaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeCarga, [DBEidProdMedida]);
end;

procedure TFrmCadCTe.DBEidProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidProduto.Text;
end;

procedure TFrmCadCTe.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeComp, [DBEidProduto]);
end;

procedure TFrmCadCTe.DBEidDestinatarioExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCustomEdit).Text then
  begin
    cdsPadrao.FieldByName('idRecebedor').Value := cdsPadrao.FieldByName('idDestinatario').Value;
    cdsPadrao.FieldByName('idCadRecebedor').Value := cdsPadrao.FieldByName('idCadDestinatario').Value;
  end;
end;

procedure TFrmCadCTe.DBEidDestinatarioKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idDestinatario').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadDestinatario').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadDestinatario') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmCadCTe.DBEidExpedidorKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idExpedidor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadExpedidor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadExpedidor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmCadCTe.DBEidRecebedorKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idRecebedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadRecebedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadRecebedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmCadCTe.DBEidRemetenteEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TFrmCadCTe.DBEidRemetenteExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCustomEdit).Text then
  begin
    cdsPadrao.FieldByName('idExpedidor').Value := cdsPadrao.FieldByName('idRemetente').Value;
    cdsPadrao.FieldByName('idCadExpedidor').Value := cdsPadrao.FieldByName('idCadRemetente').Value;
  end;
end;

procedure TFrmCadCTe.DBEidRemetenteKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idRemetente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadRemetente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadRemetente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmCadCTe.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCDBEdit).Text) <> vlAnterior then
  begin
    HabilitaRatRes;
  end;
end;

procedure TFrmCadCTe.DBEidResultadoRTExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCusto, [DBEidGerencialRT,DBEidResultadoRT]);
end;

procedure TFrmCadCTe.DBEidStTributariaExit(Sender: TObject);
begin
  inherited;
  HabilitaTributacao;
end;

procedure TFrmCadCTe.DBEidTomadorKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idTomador').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadTomador').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadTomador') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmCadCTe.DBEnrCompraExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeValePed, [DBEnrCompra]);
end;

procedure TFrmCadCTe.DBEnrNFExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeNF, [DBEserie, DBEnrNF]);
end;

procedure TFrmCadCTe.DBEnrOccExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeOcc, [DBESerie, DBEnrOcc]);
end;

procedure TFrmCadCTe.DBEnrONUExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTePeri, [DBEnrONU]);
end;

procedure TFrmCadCTe.DBEobsTituloRecExit(Sender: TObject);
begin
  inherited;
  if (cdsTituloRec.State in [dsInsert]) and (cdsTituloRecParc.IsEmpty) then
  begin
    GeraParcelas;
    PagTituloRec.ActivePageIndex := 1;
    PagTituloRec.Align := alclient;

  end;
  BtnSalvar.SetFocus;
end;

procedure TFrmCadCTe.DBEprReducaoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;


procedure TFrmCadCTe.DBEprReducaoExit(Sender: TObject);
var
  valor : currency;
begin
  inherited;
  if vlAnterior <> (Sender as TCustomEdit).Text then
  begin
    if cdsCTeCompvlTotalGeral.Value > 0 then
    begin
      valor := cdsCTeCompvlTotalGeral.Value;
      if cdsCTeTributo.FieldByName('prReducao').AsFloat > 0 then
      begin
        cdsCTeTributo.FieldByName('vlReducao').AsCurrency := RoundTo(valor * cdsCTeTributo.FieldByName('prReducao').AsFloat/100, -2);
        cdsCTeTributo.FieldByName('vlBaseIcms').AsCurrency := valor - cdsCTeTributo.FieldByName('vlReducao').AsCurrency;
      end;

      if cdsCTeTributo.FieldByName('prIcms').AsFloat > 0 then
      begin
        cdsCTeTributo.FieldByName('vlIcms').AsCurrency := RoundTo(cdsCTeTributo.FieldByName('vlBaseIcms').AsCurrency * cdsCTeTributo.FieldByName('prIcms').AsFloat/100, -2);
      end;
    end;
  end;
end;

procedure TFrmCadCTe.DBEqtCargaDblClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCDBEdit).DataSource.DataSet.RecordCount > 0 then
    if Assigned((Sender as TCDBEdit).Find) then
      AbreCorrecao(Sender, (Sender as TCDBEdit).DataSource.DataSet.RecNo, (Sender as TCDBEdit).Find)
    else
      AbreCorrecao(Sender, (Sender as TCDBEdit).DataSource.DataSet.RecNo, nil);
end;

procedure TFrmCadCTe.DBEtpDocExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCTeDocOutro, [DBEtpDoc]);
end;

procedure TFrmCadCTe.DBRGtomaExit(Sender: TObject);
begin
  inherited;
  HabilitaTomador;
end;

procedure TFrmCadCTe.dspCTeCompBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspCTeComp' then
      GeraAutoInc(DeltaDS, 'CTeComp', 'idComp', chave)
    else
      if (Sender as TDataSetProvider).Name = 'dspCTeDocAnt' then
        GeraAutoInc(DeltaDS, 'CTeDocAnt', 'idDocAnt', chave)  ;
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadCTe.dspMovCaixaBeforeUpdateRecord(Sender: TObject;
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
          DeltaDS.FieldByName('dtMovConta').NewValue := cdsPadrao.FieldByName('dtEmissao').Value
        else
          DeltaDS.FieldByName('dtMovConta').NewValue := DeltaDS.FieldByName('dtCompensacao').Value;
        DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
        if trim(DeltaDS.FieldByName('idCheque').AsString) = ''  then
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 12 //Valor pago pelo banco
        else
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 7; //Emissão de cheque
      end
      else
        if (Sender as TDataSetProvider).Name = 'dspTituloRec' then
        begin
          GeraAutoInc(DeltaDS, 'TituloRec', 'idTituloRec', []);
          DeltaDS.FieldByName('idEmpresa').NewValue := cdsEmpresa.FieldByName('idEmpresa').Value;
          DeltaDS.FieldByName('idCliente').NewValue := RetIdFornecedor;
          DeltaDS.FieldByName('dtEmissao').NewValue := cdsPadrao.FieldByName('dtEmissao').Value;
          DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 1; //Inclusão de titulo a receber
          DeltaDS.FieldByName('stTituloRec').NewValue := 'ATIVO'; //Status do titulo
        end;
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmCadCTe.dsCTeCargaStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeCarga, BtnAdicionarCarga, BtnCancelarCarga, BtnRetirarCarga, btnNovoCarga);
end;


procedure TFrmCadCTe.dsCTeCompStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeComp, BtnAdicionarComp, BtnCancelarComp, BtnRetirarComp, btnNovoComp);
end;

procedure TFrmCadCTe.dsCTeDocOutroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeDocOutro, BtnAdicionarOutro, BtnCancelarOutro, BtnRetirarOutro, btnNovoOutro);
end;


procedure TFrmCadCTe.dsCustoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, btnNovoCusto);
end;

procedure TFrmCadCTe.dsCTeDocAntStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeDocAnt, BtnAdicionarAnt, BtnCancelarAnt, BtnRetirarAnt, btnNovoAnt);
end;

procedure TFrmCadCTe.dsCTeNFeStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeNFe, BtnAdicionarNFe, BtnCancelarNFe, BtnRetirarNFe, btnNovoNFe);
end;

procedure TFrmCadCTe.dsCTeNFStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeNF, BtnAdicionarNF, BtnCancelarNF, BtnRetirarNF, btnNovoNF);
end;

procedure TFrmCadCTe.dsCTeOccStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeOcc, BtnAdicionarOcc, BtnCancelarOcc, BtnRetirarOcc, btnNovoOcc);
end;

procedure TFrmCadCTe.dsCTePeriStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTePeri, BtnAdicionarPeri, BtnCancelarPeri, BtnRetirarPeri, btnNovoPeri);
end;

procedure TFrmCadCTe.dsCTeValePedStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCTeValePed, BtnAdicionarVale, BtnCancelarVale, BtnRetirarVale, btnNovoVale);
end;

procedure TFrmCadCTe.dspTituloRecMovBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  DeltaDS.FieldByName('idTituloRec').NewValue := cdsTituloRecidTituloRec.AsInteger;
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspTituloRecMov' then
    begin
      GeraAutoInc(DeltaDS, 'TituloRecMov', 'idTituloRecMov', []);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloRecMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadCTe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadCte := nil;
end;

procedure TFrmCadCTe.FormShow(Sender: TObject);
begin
  inherited;
  //inicia com tudo desabilitado
  HabilitaCorrecao(false);
  HabilitaCTe(false);
  TabCTe.TabVisible := false;
  BtnEnviar.Enabled := false;
  BtnImprimir.Enabled := false;

  TrataEmpresaCTe;
  configlookempresaCTe;
end;

procedure TFrmCadCTe.GeraMovimentacao;
begin
  with cdsTituloRecMov do
  begin
    if not Active then
      Active := true;
    cdsTituloRecParc.First;
    while not cdsTituloRecParc.Eof do
    begin
      if cdsTituloRecParc.FieldByName('stTituloRecParc').AsString = 'ATIVO' then
      begin
        //se a movimentação nao estiver limpa ele limpa a tabela
        Filtered := false;
        Filter := 'idParcela = ' + cdsTituloRecParc.FieldByName('idParcela').AsString;
        Filtered := true;
        if RecordCount > 0 then
        begin
          Delete;
          if (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) then
            ApplyUpdates(0);
        end;
        Filtered := false;

        Append;
        FieldByName('idTituloRecMov').Value := 0;
        if trim(cdsTituloRec.FieldByName('idTituloRec').AsString) <> '' then
          FieldByName('idTituloRec').Value := cdsTituloRec.FieldByName('idTituloRec').Value
        else
          FieldByName('idTituloRec').Value := 0;
        FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
        FieldByName('idCliente').Value := RetIdFornecedor;
        FieldByName('idParcela').Value := cdsTituloRecParc.FieldByName('idParcela').Value;
        FieldByName('idMovFinanceira').Value := cdsTituloRec.FieldByName('idMovFinanceira').Value;
        FieldByName('dtTituloRecMov').Value := cdsTituloRec.FieldByName('dtEmissao').Value;
        FieldByName('vlTituloRecMov').Value := cdsTituloRecParc.FieldByName('vlParcela').Value;
        FieldByName('fator').Value := 1;
        Post;
      end; // fim do if cdsTituloRecParc.FieldByName('stTituloRecParc').AsString = 'ATIVO' then
      cdsTituloRecParc.Next;
    end;
    cdsTituloRecParc.First;
  end;

end;

procedure TFrmCadCTe.GeraParcelas;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  if cdsTituloRecParc.Active then
    if not cdsTituloRecParc.IsEmpty then
      if messagedlg('Deseja recalcular as parcelas?', mtConfirmation, [mbyes, mbno], 0) = mrno then
        exit;

  if not funcao.VerCampoRequerido([cdsTituloRec], 'idEmpresa,idCadEmpresa,idCliente,idSafra,dtEmissao,idMovFinanceira,idTituloRec,nrTituloRec,diasVencimento,prMulta,prJuros,prDesconto,stTituloRec') then
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
      If not cdsTituloRecParc.Active then
        cdsTituloRecParc.Open;
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
  SomaParcelas;
  GeraMovimentacao;
end;

procedure TFrmCadCTe.GeraRateio;
//procedure responsável por realizar o cálculo do rateio
//será executada todas as vezes que for necessário
var
  vlDif, vlTotalRateio : currency;
begin
   LimpaRateio;
   if cdsPadrao.FieldByName('idResultado').AsInteger > 0 then
   begin
     if not (cdsPadrao.FieldByName('idGerencial').AsInteger > 0) then
     begin
       messagedlg('Você deve informar o gerencial!', mtwarning, [mbok], 0);
       exit;
     end;
     if cdsCusto.State in [dsInsert, dsEdit] then
       cdsCusto.Cancel;
     cdsCusto.Append;
     cdsCustoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
     cdsCustoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
     cdsCustoidDocSerie.AsString := cdsPadrao.FieldByName('idDocSerie').AsString;
     if cdsPadrao.FieldByName('idCTe').AsInteger > 0 then
       cdsCustoidCTe.AsInteger := cdsPadrao.FieldByName('idCTe').AsInteger
     else
       cdsCustoidCTe.AsInteger := 0;
     cdsCustoidResultado.AsInteger := cdsPadrao.FieldByName('idResultado').AsInteger;
     cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
     cdsCustoprRateio.AsFloat := 100;
     cdsCustovlRateio.AsCurrency := cdsCTeCompvlTotalGeral.Value;
     cdsCusto.Post;
   end
   else
     if cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
     begin
       if not (cdsPadrao.FieldByName('idGerencial').AsInteger > 0) then
       begin
         messagedlg('Você deve informar o gerencial!', mtwarning, [mbok], 0);
         exit;
       end;

       with cdsRateio do
       begin
         Active := false;
         CommandText := 'SELECT * FROM RateioItem WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
                                  ' AND idRateio = ' + cdsPadrao.FieldByName('idRateio').AsString;
         Active := true;

         if cdsRateio.RecordCount = 0 then
           exit;
         First;
         while not eof do
         begin
           if cdsCusto.State in [dsInsert, dsEdit] then
             cdsCusto.Cancel;
           cdsCusto.Append;
           cdsCustoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
           cdsCustoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
           cdsCustoidDocSerie.AsString := cdsPadrao.FieldByName('idDocSerie').AsString;
           if cdsPadrao.FieldByName('idCTe').AsInteger > 0 then
             cdsCustoidCTe.AsInteger := cdsPadrao.FieldByName('idCTe').AsInteger
           else
             cdsCustoidCTe.AsInteger := 0;
           cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
           cdsCustoidResultado.AsInteger := FieldByName('idResultado').AsInteger;
           cdsCustoprRateio.AsFloat := FieldByName('prRateio').AsFloat;
           cdsCustovlRateio.AsCurrency := RoundTo((cdsCTeCompvlTotalGeral.Value*FieldByName('prRateio').AsFloat)/100, -2);
           cdsCusto.Post;
           Next;
         end; // fim do while not eof do
         vlTotalRateio := 0;
         if not (cdsCustovlTotalRateio.IsNull) then
           if cdsCustovlTotalRateio.Value > 0 then
             vlTotalRateio := cdsCustovlTotalRateio.Value;

         vlDif := cdsCTeCompvlTotalGeral.Value-vlTotalRateio;
         if vlDif <> 0 then
         begin
           cdsCusto.IndexFieldNames := 'vlRateio';
           cdsCusto.Last;
           cdsCusto.Edit;
           cdsCustovlRateio.AsCurrency := cdsCustovlRateio.AsCurrency + vlDif;
           cdsCusto.Post;
         end;
       end; //fim do with cdsRateio do
     end; // fim do if cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
end;

procedure TFrmCadCTe.HabilitaCTe(habilita : boolean);
begin
  //procedure para iniciar sempre com os campos do CTe desabilitados
  funcao.SomenteLeitura([DBEtpServ, DBEdtEmissao, DBEtpCTe, DBEmodal, DBEforPag, DBEidNatureza,
                         DBErefCTe, DBEidDestinatario, DBEidCadDestinatario, DBEidRemetente, DBEidCadRemetente,
                         DBEidExpedidor, DBEidCadExpedidor, DBEidRecebedor, DBEidCadRecebedor, DBRGtoma,
                         DBEidTomador, DBEidCadTomador, DBEidSeguradora,
                         DBEnrApolice, DBEnrAverbacao, DBEvlCargaSeg, DBEchaveAnulado,
                         DBEchaveComplementado, DBEidProduto, DBEdescComp, DBEvlComp,
                         DBCBtpTributo, DBEidStTributaria, DBEprReducao, DBEvlReducao,
                         DBEprIcms, DBEvlIcms, DBEvlCredito, DBMobsCTe, BtnAdicionarComp,
                         BtnRetirarComp, BtnCancelarComp, BtnNovoComp, DBEidProdutoPred,
                         DBEvlCarga, DBEdescOutraCarac, DBEidProdMedida, DBEqtCarga,
                         DBEdescTipoMedida, DBEnrONU, DBEdescClasseRisco, DBEgrupoEmbalagem,
                         DBEpontoFulgor, DBEqtProduto, DBEqtVolume, DBEdescNomeProduto,
                         BtnAdicionarCarga, BtnCancelarCarga, BtnRetirarCarga, BtnNovoCarga,
                         BtnAdicionarPeri, BtnCancelarPeri, BtnRetirarPeri, BtnNovoPeri, DBEchave,
                         DBEdtPrevisao, DBEPIN, BtnAdicionarNFe, BtnCancelarNFe, BtnRetirarNFe,
                         BtnNovoNFe, DBEserie, DBEnrNF, DBEnrRomaneio, DBEnrPedido,
                         DBEmod, DBEidCfop, DBEvlBaseIcms, DBEvlIcmsNF, DBEvlBaseIcmsST,
                         DBEvlICMSST, DBEvlNF, DBEvlProduto, DBEqtPeso, DBEdtPrevisaoNF,
                         DBEPINNF, BtnAdicionarNF, BtnCancelarNF, BtnRetirarNF,
                         BtnNovoNF, DBEtpDoc, DBEnrDoc, DBEdtEmissaoDoc, DBEvlDoc,
                         DBEdtPrevisaoDoc, DBEdescOutros, BtnAdicionarOutro, BtnCancelarOutro,
                         BtnRetirarOutro, BtnNovoOutro, DBEtpDocAnt, DBEserieAnt, DBEsubserAnt,
                         DBEnrDocAnt, DBEdtEmissaoAnt, DBEchaveAnt, DBEidEmissor, BtnAdicionarAnt,
                         BtnCancelarAnt, BtnRetirarAnt, BtnNovoAnt, DBERNTRC, DBEdtPrevisaoRodo,
                         DBCKlotacao, DBEidMaquina, DBECIOT, DBEidMotorista, DBEserieOcc, DBEnrOcc,
                         DBEdtEmissaoOcc, DBEidEmissorOcc, BtnAdicionarOcc, BtnCancelarOcc,
                         BtnRetirarOcc, BtnNovoOcc, DBEnrCompra, DBEvlValePedagio, DBEidFornecedor,
                         DBEidRespPagto, BtnAdicionarVale, BtnCancelarVale, BtnRetirarVale,
                         BtnNovoVale, DBEidSafra, DBEidGerencial, DBEidGerencialRT, DBEidResultado,
                         DBEidResultadoRT, DBEidRateio, DBEprRateio, DBEvlRateio, BtnGerarRateio,
                         BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, BtnNovoCusto,
                         DBEidCaixa, DBEvlMovCaixa, DBEdtMovCaixa, DBEdescMovCaixa, DBEidConta,
                         DBEdtCompensacao, DBEvlMovConta, DBEidCheque, DBEdescMovConta,
                         DBEdtVencimento, DBEidDocSerieT, DBEnrTituloRec, DBEvlTituloRec,
                         DBEidIndice, DBEqtParcelas, DBEdtVencimentoIni, DBCKincMes,
                         DBEdiasVencimento, DBEprMulta, DBEprJuros, DBEprDescontoT, DBEobsTituloRec,
                         DBEidParcela, DBEdtVencimentoP, DBEvlParcela, BtnSalvarParc, BtnCancelarParc,
                         BtnExcluirParc, BtnNovoParc, DBErespSeg, DBEdtEmissaoAnu], not habilita);
end;

procedure TFrmCadCTe.HabilitaFinanceiro;
begin
  TabFinancas.TabVisible := cdsPadrao.FieldByName('forPag').AsInteger = 1;
end;

procedure TFrmCadCTe.HabilitaLotacao;
begin
  //habilitará o motorista
  funcao.SomenteLeitura([DBEidMotorista], cdsCTeRodo.FieldByName('lotacao').AsInteger = 0);
end;

procedure TFrmCadCTe.HabilitaRatRes;
//procedure criada para controlar a habilitação para ver se o título está recebendo rateio
// ou centro de resultado direto
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

procedure TFrmCadCTe.HabilitaBotoesCarta;
begin
  BtnEnviarCarta.Enabled := (cdsCTeCorrecao.State = dsBrowse) and (cdsCTeCorrecaostCorrecao.AsString <> 'PROCESSADA') and
                            (cdsCTeCorrecao.RecordCount > 0);

//  BtnEmail.Enabled := (cdsCarta.State = dsBrowse) and (cdsCartastCartaCorrecao.AsString = 'PROCESSADA');

//  funcao.SomenteLeitura([DBMdescCorrecao], not (cdsCarta.State in [dsEdit, dsInsert]));
  BtnImprimirCarta.Enabled := (cdsCTeCorrecaostCorrecao.AsString = 'PROCESSADA');

end;

procedure TFrmCadCTe.HabilitaCorrecao(hab: boolean);
begin
  //Procedure que fará o tratamento da habilitação dos dados para correção
  BtnCorrecao.Visible := hab;
  lblCorrecao.Visible := hab;
  panRodape.Visible := lblCorrecao.Visible;
  tmpCorrecao.Enabled := false; //sempre igual a false... pois será controlado pelo botão
  panCorrecao.Visible := false;
  panCampos.Visible := false;
  //Significa que pode mostrar a Correção
  if hab then
  begin
    if BtnCorrecao.Caption = 'Iniciar Correção' then
    begin
      lblCorrecao.Visible := false;
      panRodape.Visible := lblCorrecao.Visible;
    end;
  end
  else
    BtnCorrecao.Caption := 'Iniciar Correção';
end;

procedure TFrmCadCTe.HabilitaTomador;
begin
  funcao.SomenteLeitura([DBEidTomador, DBEidCadTomador], cdsPadrao.FieldByName('toma').AsString <> '4');
end;

procedure TFrmCadCTe.HabilitaTributacao;
begin
  {
   Controla os tipos de tributações
   * Normal
   * Outra UF
   * Simples
  }
  //primeiro desabilita tudo
  funcao.SomenteLeitura([DBEidStTributaria, DBEprReducao, DBEvlReducao, DBEprIcms, DBEvlIcms,
                         DBEvlCredito, DBEvlBaseIcmsT], true);

  if cdsCTeTributo.FieldByName('tpTributo').AsString = 'Normal' then
  begin
    funcao.SomenteLeitura([DBEidStTributaria], false);
    if trim(DBEidStTributaria.Text) <> '' then
    begin
      case cdsCTeTributo.FieldByName('idStTributaria').AsInteger of
        0 : begin
              if (cdsCTeTributo.State in [dsInsert, dsEdit]) then
              begin
                cdsCTeTributo.FieldByName('prReducao').Clear;
                cdsCTeTributo.FieldByName('vlReducao').Clear;
                cdsCTeTributo.FieldByName('vlCredito').Clear;
              end; //if (cdsPadrao.State in [dsInsert]) and (cdsCTeTributo.State in [dsInsert]) then
              funcao.SomenteLeitura([DBEvlBaseIcmsT, DBEprIcms, DBEvlIcms], false);
            end; //fim do 0 : begin
       20 : begin
              if (cdsCTeTributo.State in [dsInsert, dsEdit]) then
              begin
                cdsCTeTributo.FieldByName('vlCredito').Clear;
              end; //if (cdsPadrao.State in [dsInsert]) and (cdsCTeTributo.State in [dsInsert]) then
              funcao.SomenteLeitura([DBEvlBaseIcmsT, DBEprIcms, DBEvlIcms, DBEprReducao, DBEvlReducao], false);
            end; //fim do 20 : begin
         40, 41, 51 : begin
                        if (cdsCTeTributo.State in [dsInsert, dsEdit]) then
                        begin
                          cdsCTeTributo.FieldByName('prReducao').Clear;
                          cdsCTeTributo.FieldByName('vlReducao').Clear;
                          cdsCTeTributo.FieldByName('vlCredito').Clear;
                          cdsCTeTributo.FieldByName('vlBaseIcms').Clear;
                          cdsCTeTributo.FieldByName('prIcms').Clear;
                          cdsCTeTributo.FieldByName('vlIcms').Clear;
                        end; //if (cdsPadrao.State in [dsInsert]) and (cdsCTeTributo.State in [dsInsert]) then

                      end; //fim do  40, 41, 51 : begin
        60 : begin
              if (cdsCTeTributo.State in [dsInsert, dsEdit]) then
              begin
                cdsCTeTributo.FieldByName('prReducao').Clear;
                cdsCTeTributo.FieldByName('vlReducao').Clear;
              end; //if (cdsPadrao.State in [dsInsert]) and (cdsCTeTributo.State in [dsInsert]) then
              funcao.SomenteLeitura([DBEvlBaseIcmsT, DBEprIcms, DBEvlIcms, DBEvlCredito], false);
            end; //fim do 0 : begin
        90 : begin
              funcao.SomenteLeitura([DBEvlBaseIcmsT, DBEprIcms, DBEvlIcms, DBEprReducao, DBEvlReducao, DBEvlCredito], false);
            end; //fim do 0 : begin
      end;

    end; //fim do if trim(DBEidStTributaria.Text) <> '' then

  end //fim do if cdsCTeTributo.FieldByName('tpTributo').AsString = 'Normal' then
  else
    if cdsCTeTributo.FieldByName('tpTributo').AsString = 'Outra UF' then
    begin
       if (cdsPadrao.State in [dsInsert]) and (cdsCTeTributo.State in [dsInsert]) then
       begin
         cdsCTeTributo.FieldByName('idStTributaria').AsInteger := 90;
         cdsCTeTributo.FieldByName('vlCredito').Clear;
       end;
       funcao.SomenteLeitura([DBEidStTributaria, DBEvlCredito], true);
       funcao.SomenteLeitura([DBEprReducao, DBEvlReducao, DBEvlBaseIcmsT, DBEprIcms, DBEvlIcms], false);
    end //fim do if cdsCTeTributo.FieldByName('tpTributo').AsString = 'Outra UF' then
    else
      if cdsCTeTributo.FieldByName('tpTributo').AsString = 'Simples' then
      begin
        if (cdsCTeTributo.State in [dsInsert, dsEdit]) then
        begin
          cdsCTeTributo.FieldByName('idStTributaria').Clear;
          cdsCTeTributo.FieldByName('prReducao').Clear;
          cdsCTeTributo.FieldByName('vlReducao').Clear;
          cdsCTeTributo.FieldByName('vlCredito').Clear;
          cdsCTeTributo.FieldByName('vlBaseIcms').Clear;
          cdsCTeTributo.FieldByName('prIcms').Clear;
          cdsCTeTributo.FieldByName('vlIcms').Clear;
        end;
      end; //fim do if cdsCTeTributo.FieldByName('tpTributo').AsString = 'Simples' then
end;

procedure TFrmCadCTe.IniciaFinancas;
begin
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
  cdsTituloRecMov.Active := false;
  cdsTituloRecMov.CommandText := 'SELECT * FROM TituloRecMov WHERE 1=2';

  if (trim(DBEidCTe.Text) <> '') then
  begin
    if cdsPadrao.State <> dsInsert then
    begin
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidCTe], '', 'CTeFinanc') do
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
        if FieldByName('idTituloRec').Value > 0 then
        begin
          cdsTituloRec.Active := False;
          cdsTituloRec.CommandText := 'SELECT * FROM TituloRec WHERE idTituloRec = ' + FieldByName('idTituloRec').AsString;
          cdsTituloRecParc.Active := False;
          cdsTituloRecParc.CommandText := 'SELECT * FROM TituloRecParc WHERE idTituloRec = ' + FieldByName('idTituloRec').AsString;
          cdsTituloRecMov.Active := False;
          cdsTituloRecMov.CommandText := 'SELECT * FROM TituloRecMov WHERE idTituloRec = ' + FieldByName('idTituloRec').AsString;
          cdsTituloRecMov.Active := True;
        end;
      end; // fim do with
    end; // fim do if cdsPadrao.state then
  end;

  cdsMovCaixa.Active := true;
  cdsMovConta.Active := true;
  cdsTituloRec.Active := true;
  cdsTituloRecMov.Active := true;
  TabTituloRec.Enabled := (cdsTituloRec.RecordCount = 0) Or (cdsTituloRec.FieldByName('stTituloRec').asString = 'ATIVO');
  cdsTituloRecParc.Active := true;
end;

procedure TFrmCadCTe.LimpaRateio;
//procedure que limpará os dados do rateio para gerar novamente
begin
  cdsCusto.First;
  while not cdsCusto.Eof do
  begin
    cdsCusto.Delete;
    cdsCusto.First;
  end;
end;

procedure TFrmCadCTe.LookCompDblClick(Sender: TObject);
begin
  inherited;
  if cdsCTeCompidComp.AsInteger > 0 then
    AbreCorrecao(Sender, cdsCTeCompidComp.AsInteger, nil);
end;

procedure TFrmCadCTe.LookIdCfopDblClick(Sender: TObject);
begin
  inherited;
  AbreCorrecao(Sender, 1, nil);
end;
procedure TFrmCadCTe.LookRazaoDocAntDblClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCLookup).DataSource.DataSet.RecordCount > 0 then
    AbreCorrecao(Sender, (Sender as TCLookup).DataSource.DataSet.RecNo, nil);
end;

procedure TFrmCadCTe.lookRazaoTomadorDblClick(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCLookup).Caption) <> '' then
    AbreCorrecao(Sender, 1, nil);
end;

end.

