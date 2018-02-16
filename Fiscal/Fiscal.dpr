program Fiscal;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmPadrao in '..\padrao\uFrmPadrao.pas' {FrmPadrao},
  uFrmCadPadrao in '..\padrao\uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmCadPadraoEmpCont in '..\padrao\uFrmCadPadraoEmpCont.pas' {FrmCadPadraoEmpCont},
  uFrmCadPadraoEmpFiscal in '..\padrao\uFrmCadPadraoEmpFiscal.pas' {FrmCadPadraoEmpFiscal},
  uFrmPadraoPesquisa in '..\padrao\uFrmPadraoPesquisa.pas' {FrmPadraoPesquisa},
  uFrmPadraoRel in '..\padrao\uFrmPadraoRel.pas' {FrmPadraoRel},
  uFrmPadraoRelEmpresa in '..\padrao\uFrmPadraoRelEmpresa.pas' {FrmPadraoRelEmpresa},
  uFrmSobre in '..\padrao\uFrmSobre.pas' {FrmSobre},
  uFuncao in '..\padrao\uFuncao.pas',
  uRecError in '..\padrao\uRecError.pas' {ReconcileErrorForm},
  uDmPadrao in '..\Padrao\uDmPadrao.pas' {dmPadrao: TDataModule},
  uFrmPesCadFiscal in '..\Padrao\uFrmPesCadFiscal.pas' {FrmPesCadFiscal},
  uFrmCadPadraoGrid in '..\padrao\uFrmCadPadraoGrid.pas' {FrmCadPadraoGrid},
  uFrmCadUsuario in '..\Cadastros\uFrmCadUsuario.pas' {frmCadUsuario},
  uFrmPesEmpContabil in '..\Padrao\uFrmPesEmpContabil.pas' {FrmPesEmpContabil},
  uFrmPesClienteFiscal in '..\Padrao\uFrmPesClienteFiscal.pas' {FrmPesClienteFiscal},
  uCadGeral in '..\Cadastros\uCadGeral.pas' {frmCadGeral},
  uFrmPesCnpj in '..\Padrao\uFrmPesCnpj.pas' {FrmPesCnpj},
  uCadDocSerie in '..\Financas\uCadDocSerie.pas' {frmCadDocSerie},
  uFrmCadProdDeposito in '..\Produtos\uFrmCadProdDeposito.pas' {FrmCadProdDeposito},
  uFrmCadCfop in 'uFrmCadCfop.pas' {frmCadCfop},
  uFrmCadImpostoOutro in 'uFrmCadImpostoOutro.pas' {frmCadImpostoOutro},
  uFrmCadProdMedida in '..\Produtos\uFrmCadProdMedida.pas' {FrmCadProdMedida},
  uFrmCadTab in '..\Produtos\uFrmCadTab.pas' {FrmCadTab},
  uFrmCadProduto in '..\Produtos\uFrmCadProduto.pas' {FrmCadProduto},
  uFrmTpCadDesconto in '..\Armazem\uFrmTpCadDesconto.pas' {FrmTpCadDesconto},
  uFrmCadProdGrupo in '..\Produtos\uFrmCadProdGrupo.pas' {FrmCadProdGrupo},
  uFrmCadProdSubGrupo in '..\Produtos\uFrmCadProdSubGrupo.pas' {FrmCadProdSubGrupo},
  uFrmCadNatureza in 'uFrmCadNatureza.pas' {frmCadNatureza},
  uFrmCadSafra in '..\Cadastros\uFrmCadSafra.pas' {FrmCadSafra},
  uCadResultado in '..\Financas\uCadResultado.pas' {FrmCadResultado},
  uFrmCadGerencial in '..\Financas\uFrmCadGerencial.pas' {FrmCadGerencial},
  uFrmNFETransito in 'uFrmNFETransito.pas' {FrmNFETransito},
  uFrmMovEstoque in '..\Produtos\uFrmMovEstoque.pas' {FrmMovEstoque},
  uFrmPadraoPesquisaDevExpress in '..\Padrao\uFrmPadraoPesquisaDevExpress.pas' {FrmPadraoPesquisaDevExpress},
  uFrmRelFichaEstoque in '..\Produtos\uFrmRelFichaEstoque.pas' {FrmRelFichaEstoque},
  uFrmNotaFiscal in 'uFrmNotaFiscal.pas' {FrmNotaFiscal},
  uFrmPesEmpFiscal in '..\Padrao\uFrmPesEmpFiscal.pas' {FrmPesEmpFiscal},
  uFrmPadraoPesqEmpFiscal in '..\padrao\uFrmPadraoPesqEmpFiscal.pas' {FrmPadraoPesqEmpFiscal},
  uFrmPesNotas in 'uFrmPesNotas.pas' {frmPesNotas},
  uCadIndice in '..\Financas\uCadIndice.pas' {frmCadIndice},
  uFrmRelLivroEntrada in 'uFrmRelLivroEntrada.pas' {frmRelLivroEntrada},
  uFrmRelLivroSaida in 'uFrmRelLivroSaida.pas' {FrmRelLivroSaida},
  uFrmRelProdEstoque in 'uFrmRelProdEstoque.pas' {FrmRelProdEstoque},
  uFrmCadCultura in '..\Armazem\uFrmCadCultura.pas' {FrmCadCultura},
  uCadBanco in '..\Financas\uCadBanco.pas' {frmCadBanco},
  uFrmCadCaixa in '..\Financas\uFrmCadCaixa.pas' {FrmCadCaixa},
  uFrmCadBem in '..\Patrimonial\uFrmCadBem.pas' {FrmCadBem},
  uFrmRelApuracaoIcms in 'uFrmRelApuracaoIcms.pas' {FrmRelApuracaoIcms},
  uCadTributoDetalhe in 'uCadTributoDetalhe.pas' {FrmCadTributoDetalhe},
  uFrmBackup in '..\padrao\uFrmBackup.pas' {frmBackup},
  uFrmLayout in 'uFrmLayout.pas' {FrmLayout},
  uFrmNFE in 'uFrmNFE.pas' {FrmNfE},
  uFrmPadraoPesqEmpContabil in '..\Padrao\uFrmPadraoPesqEmpContabil.pas' {FrmPadraoPesqEmpContabil},
  uFrmNotaGlogal in '..\Armazem\uFrmNotaGlogal.pas' {FrmNotaGlobal},
  uFrmCadSaldoCredor in 'uFrmCadSaldoCredor.pas' {FrmCadSaldoCredor},
  uFrmCadConfigLivros in 'uFrmCadConfigLivros.pas' {FrmCadConfigLivro},
  uFrmConfigNF in 'uFrmConfigNF.pas' {FrmConfigNF},
  uFrmPesContaCliente in '..\Financas\uFrmPesContaCliente.pas' {FrmPesContaCliente},
  uCadCidade in '..\Cadastros\uCadCidade.pas' {frmCadCidade},
  uFrmSelEmpresas in '..\Padrao\uFrmSelEmpresas.pas' {FrmSelEmpresas},
  uFrmRelEstoque in 'uFrmRelEstoque.pas' {FrmRelEstoque},
  uDmFind in '..\Padrao\uDmFind.pas' {dmFind: TDataModule},
  uFrmPesProduto in '..\Padrao\uFrmPesProduto.pas' {FrmPesProduto},
  uFrmPesRecepcaoNFE in '..\Compras\uFrmPesRecepcaoNFE.pas' {FrmPesRecepcaoNFE},
  uCadFabricante in '..\Compras\uCadFabricante.pas' {frmCadFabricante},
  uFrmGeraSPED in 'uFrmGeraSPED.pas' {FrmSPED},
  uFrmGeraSintegra in 'uFrmGeraSintegra.pas' {FrmSintegra};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nilus - Fiscal';
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmFind, dmFind);
  Application.Run;
end.