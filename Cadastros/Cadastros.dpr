program Cadastros;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmPadrao in '..\padrao\uFrmPadrao.pas' {FrmPadrao},
  uFrmCadPadrao in '..\padrao\uFrmCadPadrao.pas' {FrmCadPadrao},
  uFrmCadPadraoGrid in '..\padrao\uFrmCadPadraoGrid.pas' {FrmCadPadraoGrid},
  uFrmPadraoRel in '..\padrao\uFrmPadraoRel.pas' {FrmPadraoRel},
  uFrmSobre in '..\padrao\uFrmSobre.pas' {FrmSobre},
  uCadCidade in 'uCadCidade.pas' {frmCadCidade},
  uCadGeral in 'uCadGeral.pas' {frmCadGeral},
  uFrmCadUsuario in 'uFrmCadUsuario.pas' {frmCadUsuario},
  uFrmPadraoPesquisa in '..\padrao\uFrmPadraoPesquisa.pas' {FrmPadraoPesquisa},
  uFrmPesCnpj in '..\Padrao\uFrmPesCnpj.pas',
  uCadDocSerie in '..\Financas\uCadDocSerie.pas' {frmCadDocSerie},
  uRecError in '..\padrao\uRecError.pas' {ReconcileErrorForm},
  uFrmBackup in '..\padrao\uFrmBackup.pas' {frmBackup},
  uFuncao in '..\Padrao\uFuncao.pas',
  uFrmCadPadraoEmpFiscal in '..\Padrao\uFrmCadPadraoEmpFiscal.pas' {FrmCadPadraoEmpFiscal},
  uFrmCadPadraoEmpCont in '..\Padrao\uFrmCadPadraoEmpCont.pas' {FrmCadPadraoEmpCont},
  uFrmPadraoPesqEmpContabil in '..\Padrao\uFrmPadraoPesqEmpContabil.pas' {FrmPadraoPesqEmpContabil},
  uFrmPesContaCliente in '..\Financas\uFrmPesContaCliente.pas' {FrmPesContaCliente},
  uFrmCadPlanoConta in '..\Contabil\uFrmCadPlanoConta.pas' {frmCadPlanoConta},
  uFrmPesEmpFiscal in '..\Padrao\uFrmPesEmpFiscal.pas' {FrmPesEmpFiscal},
  uFrmPesEmpContabil in '..\Padrao\uFrmPesEmpContabil.pas' {FrmPesEmpContabil},
  uFrmSelEmpresas in '..\Padrao\uFrmSelEmpresas.pas' {FrmSelEmpresas},
  uCadUsuarioGrupo in 'uCadUsuarioGrupo.pas' {frmCadUsuarioGrupo},
  uDmPadrao in '..\Padrao\uDmPadrao.pas' {dmPadrao: TDataModule},
  uDmFind in '..\Padrao\uDmFind.pas' {dmFind: TDataModule},
  uCadSegMenu in 'uCadSegMenu.pas' {frmCadSegMenu},
  uCadSegModulo in 'uCadSegModulo.pas' {frmCadSegModulo},
  uCadSegGrupoMenu in 'uCadSegGrupoMenu.pas' {frmCadSegGrupoMenu},
  uFrmCadSegGrupoPermissao in 'uFrmCadSegGrupoPermissao.pas' {frmCadSegGrupoPermissao},
  uFrmSeguranca in 'uFrmSeguranca.pas' {FrmSeguranca},
  uFrmVerInsert in 'uFrmVerInsert.pas' {FrmVerInsert},
  uFrmPesSegMenu in 'uFrmPesSegMenu.pas' {FrmPesSegMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Nilus - Cadastros';
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TdmFind, dmFind);
  Application.CreateForm(TFrmSeguranca, FrmSeguranca);
  Application.CreateForm(TFrmVerInsert, FrmVerInsert);
  Application.CreateForm(TFrmPesSegMenu, FrmPesSegMenu);
  Application.Run;
end.
