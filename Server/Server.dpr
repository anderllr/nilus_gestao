program Server;

uses
  Forms,
  Main_Form in 'Main_Form.pas' {FrmSrvMain},
  Server_DM in 'Server_DM.pas' {DMServer: TDataModule},
  uFuncao in '..\padrao\uFuncao.pas',
  uDmPadrao in '..\Padrao\uDmPadrao.pas' {dmPadrao: TDataModule},
  uFrmInfo in 'uFrmInfo.pas' {FrmInfo};

{$R *.res}

begin
  If Not(funcao.AppIsRunning(True)) Then
    Begin
      Application.Initialize;
      Application.Title := 'Nilus Server';
      Application.CreateForm(TdmPadrao, dmPadrao);
      Application.CreateForm(TFrmSrvMain, FrmSrvMain);
      Application.CreateForm(TFrmInfo, FrmInfo);
      Application.Run;
    End
  Else
     Halt;
end.
