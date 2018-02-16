program Custos;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmPadrao in '..\padrao\uFrmPadrao.pas' {FrmPadrao},
  uFrmCadPadraoEmpCont in '..\padrao\uFrmCadPadraoEmpCont.pas' {FrmCadPadraoEmpCont},
  uFrmCadPadraoEmpFiscal in '..\padrao\uFrmCadPadraoEmpFiscal.pas' {FrmCadPadraoEmpFiscal},
  uFrmPadraoPesquisa in '..\padrao\uFrmPadraoPesquisa.pas' {FrmPadraoPesquisa},
  uFrmPadraoPesqEmpContabil in '..\padrao\uFrmPadraoPesqEmpContabil.pas',
  uFrmPadraoPesqEmpFiscal in '..\padrao\uFrmPadraoPesqEmpFiscal.pas' {FrmPadraoPesqEmpFiscal},
  uFrmPadraoRel in '..\padrao\uFrmPadraoRel.pas' {FrmPadraoRel},
  uFrmPadraoRelEmpresa in '..\padrao\uFrmPadraoRelEmpresa.pas' {FrmPadraoRelEmpresa},
  uFrmSobre in '..\padrao\uFrmSobre.pas' {FrmSobre},
  uRecError in '..\padrao\uRecError.pas' {ReconcileErrorForm},
  uDmPadrao in '..\Padrao\uDmPadrao.pas' {dmPadrao: TDataModule},
  uFrmPesCadFiscal in '..\Padrao\uFrmPesCadFiscal.pas' {FrmPesCadFiscal},
  uFrmCadPadraoGrid in '..\padrao\uFrmCadPadraoGrid.pas' {FrmCadPadraoGrid},
  uFrmCadUsuario in '..\Cadastros\uFrmCadUsuario.pas' {frmCadUsuario},
  uFrmPesClienteFiscal in '..\Padrao\uFrmPesClienteFiscal.pas' {FrmPesClienteFiscal},
  uFrmPesCnpj in '..\Padrao\uFrmPesCnpj.pas' {FrmPesCnpj},
  uCadCidade in '..\Cadastros\uCadCidade.pas' {frmCadCidade},
  uFrmPesEmpFiscal in '..\Padrao\uFrmPesEmpFiscal.pas' {FrmPesEmpFiscal},
  uCadDocSerie in '..\Financas\uCadDocSerie.pas' {frmCadDocSerie},
  uCadGeral in '..\Cadastros\uCadGeral.pas' {frmCadGeral},
  uFrmCadPadrao in '..\padrao\uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmCadAplicacao in 'uFrmCadAplicacao.pas' {FrmCadAplicacao},
  uFrmCadProdDeposito in '..\Produtos\uFrmCadProdDeposito.pas' {FrmCadProdDeposito},
  uCadResultado in '..\Financas\uCadResultado.pas' {FrmCadResultado},
  uFrmCadSafra in '..\Cadastros\uFrmCadSafra.pas' {FrmCadSafra},
  uFrmCadBem in '..\Patrimonial\uFrmCadBem.pas' {FrmCadBem},
  uFrmRelCustos in 'uFrmRelCustos.pas' {FrmRelCustos},
  uFrmPadraoPesquisaDevExpress in '..\Padrao\uFrmPadraoPesquisaDevExpress.pas' {FrmPadraoPesquisaDevExpress},
  uFrmPesCustos in 'uFrmPesCustos.pas' {FrmPesCustos},
  uFrmBackup in '..\padrao\uFrmBackup.pas' {frmBackup},
  uFrmRelProdEstoque in '..\Fiscal\uFrmRelProdEstoque.pas' {FrmRelProdEstoque},
  uFuncao in '..\Padrao\uFuncao.pas',
  uFrmPesEmpContabil in '..\Padrao\uFrmPesEmpContabil.pas' {FrmPesEmpContabil},
  uFrmPesContaCliente in '..\Financas\uFrmPesContaCliente.pas' {FrmPesContaCliente},
  uFrmSelEmpresas in '..\Padrao\uFrmSelEmpresas.pas' {FrmSelEmpresas},
  uDmFind in '..\Padrao\uDmFind.pas' {dmFind: TDataModule},
  uFrmRelEstoque in '..\Fiscal\uFrmRelEstoque.pas' {FrmRelEstoque},
  uFrmCadProdSubGrupo in '..\Produtos\uFrmCadProdSubGrupo.pas' {FrmCadProdSubGrupo},
  uFrmCadProdGrupo in '..\Produtos\uFrmCadProdGrupo.pas' {FrmCadProdGrupo},
  uFrmCadProdMedida in '..\Produtos\uFrmCadProdMedida.pas' {FrmCadProdMedida},
  uFrmCadRateio in '..\Financas\uFrmCadRateio.pas' {FrmCadRateio},
  uFrmCadProduto in '..\Produtos\uFrmCadProduto.pas' {FrmCadProduto},
  uFrmPesProduto in '..\Padrao\uFrmPesProduto.pas' {FrmPesProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nilus - Custos';
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmFind, dmFind);
  Application.Run;
end.
