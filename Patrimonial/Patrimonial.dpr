program Patrimonial;

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
  uFrmPesClienteFiscal in '..\Padrao\uFrmPesClienteFiscal.pas' {FrmPesClienteFiscal},
  uFrmPesCnpj in '..\Padrao\uFrmPesCnpj.pas' {FrmPesCnpj},
  uCadCidade in '..\Cadastros\uCadCidade.pas' {frmCadCidade},
  uFrmPesEmpFiscal in '..\Padrao\uFrmPesEmpFiscal.pas' {FrmPesEmpFiscal},
  uCadDocSerie in '..\Financas\uCadDocSerie.pas' {frmCadDocSerie},
  uCadGeral in '..\Cadastros\uCadGeral.pas' {frmCadGeral},
  uFrmCadBemSubGrupo in 'uFrmCadBemSubGrupo.pas' {FrmCadBemSubGrupo},
  uFrmCadMaquina in 'uFrmCadMaquina.pas' {FrmCadMaquina},
  uFrmCadBem in 'uFrmCadBem.pas' {FrmCadBem},
  uFrmPadraoPesqEmpContabil in '..\Padrao\uFrmPadraoPesqEmpContabil.pas' {FrmPadraoPesqEmpContabil},
  uFrmPesContaCliente in '..\Financas\uFrmPesContaCliente.pas' {FrmPesContaCliente},
  uFrmPesEmpContabil in '..\Padrao\uFrmPesEmpContabil.pas' {FrmPesEmpContabil},
  uFrmBackup in '..\Padrao\uFrmBackup.pas' {frmBackup},
  uFrmSelEmpresas in '..\Padrao\uFrmSelEmpresas.pas' {FrmSelEmpresas},
  uDmFind in '..\Padrao\uDmFind.pas' {dmFind: TDataModule},
  uFrmCadMaquinaMarca in 'uFrmCadMaquinaMarca.pas' {FrmCadMaquinaMarca},
  uFrmCadBemGrupo in 'uFrmCadBemGrupo.pas' {FrmCadBemGrupo},
  uFrmCadTipoMaquina in 'uFrmCadTipoMaquina.pas' {FrmCadTipoMaquina};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nilus - Patrimonial';
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmFind, dmFind);
  Application.Run;
end.
