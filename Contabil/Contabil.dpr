program Contabil;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmPadrao in '..\padrao\uFrmPadrao.pas' {FrmPadrao},
  uFrmCadPadrao in '..\padrao\uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmCadPadraoEmpCont in '..\padrao\uFrmCadPadraoEmpCont.pas' {FrmCadPadraoEmpCont},
  uFrmCadPadraoEmpFiscal in '..\padrao\uFrmCadPadraoEmpFiscal.pas' {FrmCadPadraoEmpFiscal},
  uFrmPadraoPesquisa in '..\padrao\uFrmPadraoPesquisa.pas' {FrmPadraoPesquisa},
  uFrmPadraoPesqEmpFiscal in '..\padrao\uFrmPadraoPesqEmpFiscal.pas' {FrmPadraoPesqEmpFiscal},
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
  uFrmPesCnpj in '..\Padrao\uFrmPesCnpj.pas' {FrmPesCnpj},
  uFrmPesEmpFiscal in '..\Padrao\uFrmPesEmpFiscal.pas' {FrmPesEmpFiscal},
  uCadDocSerie in '..\Financas\uCadDocSerie.pas' {frmCadDocSerie},
  uCadGeral in '..\Cadastros\uCadGeral.pas' {frmCadGeral},
  uFrmConfigContabil in 'uFrmConfigContabil.pas' {FrmConfigContabil},
  uFrmBackup in '..\padrao\uFrmBackup.pas' {frmBackup},
  uFrmCadPlanoContaGrupo in 'uFrmCadPlanoContaGrupo.pas' {FrmCadPlanoContaGrupo},
  uFrmRelCodigo in 'uFrmRelCodigo.pas' {FrmRelCodigo},
  uFrmContRelaciona in 'uFrmContRelaciona.pas' {FrmCadContRelaciona},
  uCadHistorico in 'uCadHistorico.pas' {frmCadHistorico},
  uFrmCadPlanoConta in 'uFrmCadPlanoConta.pas' {frmCadPlanoConta},
  uCadMovFinanceira in '..\Financas\uCadMovFinanceira.pas' {frmCadMovFinanceira},
  uFrmCadGerencial in '..\Financas\uFrmCadGerencial.pas' {FrmCadGerencial},
  uCadResultado in '..\Financas\uCadResultado.pas' {FrmCadResultado},
  uFrmLote in 'uFrmLote.pas' {FrmCadLote},
  uFrmPadraoPesqEmpContabil in '..\Padrao\uFrmPadraoPesqEmpContabil.pas' {FrmPadraoPesqEmpContabil},
  uCadCidade in '..\Cadastros\uCadCidade.pas' {frmCadCidade},
  uFrmPesContaCliente in '..\Financas\uFrmPesContaCliente.pas' {FrmPesContaCliente},
  uFrmRelPlanoConta in 'uFrmRelPlanoConta.pas' {FrmRelPlanoConta},
  uFrmSelEmpresas in '..\Padrao\uFrmSelEmpresas.pas' {FrmSelEmpresas},
  uFrmPesLote in 'uFrmPesLote.pas' {frmPesLote},
  uFrmPesRelaciona in 'uFrmPesRelaciona.pas' {FrmPesRelaciona},
  uFrmRelSlip in 'uFrmRelSlip.pas' {FrmRelSlip},
  uFrmRelDiario in 'uFrmRelDiario.pas' {FrmRelDiario},
  uFrmRelDRE in 'uFrmRelDRE.pas' {FrmRelDRE},
  uFrmRelBalancete in 'uFrmRelBalancete.pas' {FrmRelBalancete},
  uDmFind in '..\Padrao\uDmFind.pas' {dmFind: TDataModule},
  uFrmCalendarioAno in '..\Padrao\uFrmCalendarioAno.pas' {FrmCalendarioAno},
  uFrmRelRazao in 'uFrmRelRazao.pas' {FrmRelRazao};

//  uFrmRelBalancetebkb2 in 'uFrmRelBalancetebkb2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nilus - Contabil';
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmFind, dmFind);
  Application.Run;
end.
