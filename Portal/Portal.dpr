program Portal;

uses
  Forms,
  Windows,
  Dialogs,
  uFrmPortal in 'uFrmPortal.pas' {FrmPortal},
  uDmPadrao in '..\Padrao\uDmPadrao.pas' {dmPadrao: TDataModule},
  uFuncao in '..\padrao\uFuncao.pas';

{$R *.res}

begin
  //
  If Not(AppIsRunning(True)) Then
     Begin
       //
       Application.Initialize;
       Application.Title := 'Nilus - Portal';
       Application.CreateForm(TFrmPortal, FrmPortal);
  Application.CreateForm(TdmPadrao, dmPadrao);
  Application.Run;
       //
     End
  Else
     Halt;
  //
End.
