program prjPrincipal;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFuncao in 'uFuncao.pas',
  uDmPadrao in 'uDmPadrao.pas' {dmPadrao: TDataModule},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  uFrmPadrao in 'uFrmPadrao.pas' {FrmPadrao},
  uFind in '..\componente\uFind.pas' {FFind},
  uFrmCadPadrao in 'uFrmCadPadrao.pas' {FrmCadPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TFrmPadrao, FrmPadrao);
  Application.Run;
end.
