program Armazem;

uses
  Forms,
  uFuncao in '..\padrao\uFuncao.pas',
  uFrmPadrao in '..\padrao\uFrmPadrao.pas' {FrmPadrao},
  uFrmSobre in '..\padrao\uFrmSobre.pas' {FrmSobre},
  uFrmCadPadraoEmpCont in '..\padrao\uFrmCadPadraoEmpCont.pas' {FrmCadPadraoEmpCont},
  uFrmCadPadraoGrid in '..\padrao\uFrmCadPadraoGrid.pas' {FrmCadPadraoGrid},
  uFrmPadraoRel in '..\padrao\uFrmPadraoRel.pas' {FrmPadraoRel},
  uFrmPadraoRelEmpresa in '..\padrao\uFrmPadraoRelEmpresa.pas' {FrmPadraoRelEmpresa},
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uDmPadrao in '..\Padrao\uDmPadrao.pas' {dmPadrao: TDataModule},
  uFrmTpCadDesconto in 'uFrmTpCadDesconto.pas' {FrmTpCadDesconto},
  uFrmCadProdSubGrupo in '..\Produtos\uFrmCadProdSubGrupo.pas' {FrmCadProdSubGrupo},
  uFrmCadBalanca in 'uFrmCadBalanca.pas' {frmCadBalanca},
  uFrmCadCultura in 'uFrmCadCultura.pas' {FrmCadCultura},
  uFrmCadProdMedida in '..\Produtos\uFrmCadProdMedida.pas' {FrmCadProdMedida},
  uFrmCadProdDeposito in '..\Produtos\uFrmCadProdDeposito.pas' {FrmCadProdDeposito},
  uFrmCadProdGrupo in '..\Produtos\uFrmCadProdGrupo.pas' {FrmCadProdGrupo},
  uFrmPadraoPesquisa in '..\padrao\uFrmPadraoPesquisa.pas' {FrmPadraoPesquisa},
  uFrmPesEmpFiscal in '..\Padrao\uFrmPesEmpFiscal.pas' {FrmPesEmpFiscal},
  uFrmPesContratoArm in 'uFrmPesContratoArm.pas' {FrmPesContratoArm},
  uFrmCadPadraoEmpFiscal in '..\padrao\uFrmCadPadraoEmpFiscal.pas' {FrmCadPadraoEmpFiscal},
  uFrmCadRomaneio in 'uFrmCadRomaneio.pas' {FrmCadRomaneio},
  uFrmCadContratoArm in 'uFrmCadContratoArm.pas' {FrmCadContratoArm},
  uFrmCadProduto in '..\Produtos\uFrmCadProduto.pas' {FrmCadProduto},
  uFrmPesCadFiscal in '..\Padrao\uFrmPesCadFiscal.pas' {FrmPesCadFiscal},
  uFrmPadraoPesqEmpFiscal in '..\padrao\uFrmPadraoPesqEmpFiscal.pas' {FrmPadraoPesqEmpFiscal},
  uFrmPesRomaneio in 'uFrmPesRomaneio.pas' {FrmPesRomaneio},
  uFrmConfigArmazem in 'uFrmConfigArmazem.pas' {FrmConfigArmazem},
  uFrmCadDesconto in 'uFrmCadDesconto.pas' {FrmCadDesconto},
  uFrmCadTab in '..\Produtos\uFrmCadTab.pas' {FrmCadTab},
  uRecError in '..\padrao\uRecError.pas' {ReconcileErrorForm},
  uFrmPesCnpj in '..\Padrao\uFrmPesCnpj.pas' {FrmPesCnpj},
  uFrmCadNatureza in '..\Fiscal\uFrmCadNatureza.pas' {frmCadNatureza},
  uCadResultado in '..\Financas\uCadResultado.pas' {FrmCadResultado},
  uFrmNFE in '..\Fiscal\uFrmNFE.pas' {FrmNfE},
  uFrmNotaFiscal in '..\Fiscal\uFrmNotaFiscal.pas' {FrmNotaFiscal},
  uFrmPesNotas in '..\Fiscal\uFrmPesNotas.pas' {frmPesNotas},
  uFrmCadSafra in '..\Cadastros\uFrmCadSafra.pas' {FrmCadSafra},
  uFrmCadBem in '..\Patrimonial\uFrmCadBem.pas' {FrmCadBem},
  uCadGeral in '..\Cadastros\uCadGeral.pas' {frmCadGeral},
  uFrmCadMotorista in 'uFrmCadMotorista.pas' {FrmCadMotorista},
  uFrmBackup in '..\..\padrao\uFrmBackup.pas' {frmBackup},
  uFrmRelTabDesconto in 'uFrmRelTabDesconto.pas' {FrmRelTabDesconto},
  uFrmRelRomaneio in 'uFrmRelRomaneio.pas' {FrmRelRomaneio},
  uFrmCadPadrao in '..\..\Padrao\uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmPesEmpContabil in '..\Padrao\uFrmPesEmpContabil.pas' {FrmPesEmpContabil},
  uFrmPadraoPesqEmpContabil in '..\Padrao\uFrmPadraoPesqEmpContabil.pas' {FrmPadraoPesqEmpContabil},
  uFrmNotaGlogal in 'uFrmNotaGlogal.pas' {FrmNotaGlobal},
  uFrmPesClienteFiscal in '..\Padrao\uFrmPesClienteFiscal.pas' {FrmPesClienteFiscal},
  uFrmNFETransito in '..\Fiscal\uFrmNFETransito.pas' {FrmNFETransito},
  uFrmPesNfETransito in 'uFrmPesNfETransito.pas' {FrmPesNfETransito},
  uFrmRelContrato in 'uFrmRelContrato.pas' {FrmRelContrato},
  uFrmExtSaida in 'uFrmExtSaida.pas' {FrmRelExtSaida},
  uFrmRelExtEntrada in 'uFrmRelExtEntrada.pas' {FrmRelExtEntrada},
  uFrmRelTransporte in 'uFrmRelTransporte.pas' {FrmRelTransporte},
  uFrmConfigNF in '..\Fiscal\uFrmConfigNF.pas' {FrmConfigNF},
  uFrmPesContaCliente in '..\Financas\uFrmPesContaCliente.pas' {FrmPesContaCliente},
  uFrmCadPlanoConta in '..\Contabil\uFrmCadPlanoConta.pas' {frmCadPlanoConta},
  uCadCidade in '..\Cadastros\uCadCidade.pas' {frmCadCidade},
  uFrmSelEmpresas in '..\Padrao\uFrmSelEmpresas.pas' {FrmSelEmpresas};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nilus - Armazem';
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.                       
