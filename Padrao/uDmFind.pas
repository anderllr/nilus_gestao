unit uDmFind;

interface

uses
  SysUtils, Classes, CFind;

type
  TdmFind = class(TDataModule)
    FindBanco: TCFind;
    FindSegmento: TCFind;
    FindGrupoCad: TCFind;
    FindPortador: TCFind;
    FindProduto: TCFind;
    FindEquipamentos: TCFind;
    FindUsuario: TCFind;
    FindProdDeposito: TCFind;
    FindCriterioCompra: TCFind;
    FindCondicaoPgto: TCFind;
    FindFornecedor: TCFind;
    FindFabricante: TCFind;
    FindSerieEntrada: TCFind;
    FindPropriedade: TCFind;
    FindSubGrupo: TCFind;
    FindGrupo: TCFind;
    FindCfop: TCFind;
    FindSegModulo: TCFind;
    FindUsuarioGrupo: TCFind;
    FindTipoMaquina: TCFind;
    FindMaquinaMarca: TCFind;
    FindMaquina: TCFind;
    FindSegGrupoMenu: TCFind;
    FindSegMenu: TCFind;
    FindCultura: TCFind;
    FindSafra: TCFind;
    FindGerencial: TCFind;
    FindTalhao: TCFind;
    FindDocSerie: TCFind;
    FindGrupoGerencial: TCFind;
    FindCaixa: TCFind;
    FindConta: TCFind;
    FindTipoPneu: TCFind;
    FindTipoOleo: TCFind;
    FindTipoFiltro: TCFind;
    FindTipoAtividade: TCFind;
    FindResultadoTalhao: TCFind;
    FindRateio: TCFind;
    FindNilus: TCFind;
    FindTipoDepreciacao: TCFind;
    FindGerenciaP: TCFind;
    FindIndice: TCFind;
    FindPlanoConta: TCFind;
    FindResultado: TCFind;
    FindDocSerieTpag: TCFind;
    FindDepartamento: TCFind;
    FindFuncao: TCFind;
    FindTipoAdmissao: TCFind;
    FindArmOperacao: TCFind;
    FindVariedade: TCFind;
    FindArmOperacaoE: TCFind;
    FindSeguradora: TCFind;
    FindDocumento: TCFind;
    FindCidade: TCFind;
    FindSubGrupoAplic: TCFind;
    FindMedida: TCFind;
    FindTrpUnidadeMedida: TCFind;
    FindDocSerieCTe: TCFind;
    FindTrpTipoServico: TCFind;
    FindTrpTipoCte: TCFind;
    FindTrpModal: TCFind;
    FindTrpFormaPgto: TCFind;
    FindNaturezaCTe: TCFind;
    FindTrpModeloNF: TCFind;
    FindTrpTipoDocumento: TCFind;
    FindTpCarroceria: TCFind;
    FindTpProprietario: TCFind;
    FindTpRodado: TCFind;
    FindEstado: TCFind;
    FindDocSerieTRec: TCFind;
    FindMedidaCTe: TCFind;
    FindServico: TCFind;
    FindTributacao: TCFind;
    FindTrpTpDocTransporte: TCFind;
    FindGerencialR: TCFind;
    FindTrpRespSeguro: TCFind;
    FindCSTPisCofins: TCFind;
    FindNaturezaNf: TCFind;
    FindCadastroCpf: TCFind;
    FindDocSerieNf: TCFind;
    FindDesconto: TCFind;
    FindProdOrigem: TCFind;
    FindContaCad: TCFind;
    FindModBC: TCFind;
    FindTrangenia: TCFind;
    FindImpostoOutro: TCFind;
    FindClienteCpf: TCFind;
    FindItemFrete: TCFind;
    FindDREFinanceiro: TCFind;
    FindDREGrupo: TCFind;
    FindCfopE: TCFind;
    FindMovFinanceiraBco: TCFind;
    FindNaturezaE: TCFind;
    FindSerTpContrato: TCFind;
    FindMovFinanceiraCAP: TCFind;
    FindContHistorico: TCFind;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFind: TdmFind;

implementation

uses uDmPadrao;

{$R *.dfm}

end.
