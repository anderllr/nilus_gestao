program CadMenu;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uDmPadrao in '..\Padrao\uDmPadrao.pas' {dmPadrao: TDataModule},
  uFuncao in '..\Padrao\uFuncao.pas',
  uFrmVerInsert in 'uFrmVerInsert.pas' {FrmVerInsert};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cadastro de Menus do Sistema [Nilus]';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.CreateForm(TFrmVerInsert, FrmVerInsert);
  Application.Run;
end.
