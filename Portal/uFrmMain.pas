unit uFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, jpeg, ExtCtrls, Buttons, CSpeedButton, StdCtrls,
  ActnList, CActionList, CPanel, EditAlign, CEdit, CLabel, ShellAPI, DB,
  DBClient, Provider, DBXCommon, ScktComp, MidasLib, IdBaseComponent,
  IdComponent, IdIPWatch, CMemo;

type
  TFrmMain = class(TForm)
    ImageList1: TImageList;
    Image1: TImage;
    Image2: TImage;
    actBotoes: TCActionList;
    actArmazem: TAction;
    actCadastros: TAction;
    actContabil: TAction;
    actFinancas: TAction;
    actFiscal: TAction;
    actPatrimonial: TAction;
    actCustos: TAction;
    actSair: TAction;
    panBotoes: TCPanel;
    BtnCadastros: TSpeedButton;
    BtnContabil: TSpeedButton;
    BtnCustos: TSpeedButton;
    BtnFinancas: TSpeedButton;
    BtnFiscal: TSpeedButton;
    BtnPatrimonial: TSpeedButton;
    BtnSair: TSpeedButton;
    panAcesso: TCPanel;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    Shape1: TShape;
    EdtLogin: TCEdit;
    EdtSenha: TCEdit;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    cdsAtualizacao: TClientDataSet;
    cdsAtualizacaoidAtualizacao: TIntegerField;
    cdsAtualizacaodescAtualizacao: TMemoField;
    dsAtualizacao: TDataSource;
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    cdsUsuariologin: TStringField;
    cdsUsuariosenha: TStringField;
    cdsUsuariodescUsuario: TStringField;
    cdsUsuarioidUsuarioGrupo: TSmallintField;
    cdsUsuarioidUsuario: TSmallintField;
    dspTabela: TDataSetProvider;
    actSuporte: TAction;
    cdsUsuarioidEmpresa: TIntegerField;
    ClientSocket: TClientSocket;
    SpeedButton1: TSpeedButton;
    actCompras: TAction;
    cdsUsuarioidCadEmpresa: TSmallintField;
    IdIP: TIdIPWatch;
    procedure EdtLoginExit(Sender: TObject);
    function VerificaUsuario: Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure actArmazemExecute(Sender: TObject);
    Procedure ExecutaApp(Nome,NomeExec:string);
    Function VerModuloAberto: string;
    Procedure FechaModulosAbertos;
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocketDisconnect(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
    Ok, servidor: Boolean;
    idEmpresa, idCadEmpresa, idUsuario, descUsuario : string;
    idUsuarioGrupo : integer;
    erro : byte;
  end;

var
  FrmMain: TFrmMain;

implementation

uses uFuncao, uDmPadrao;

{$R *.dfm}

function TFrmMain.VerificaUsuario: Boolean;
begin
  cdsUsuario.Active := false;
//  cdsUsuario.CommandText := 'SELECT login, seg.senha FROM segusuariosenha seg, vConsUsuario ever WHERE seg.cd_usuario = ever.cd_usuario WHERE login = ' +
//                            quotedstr(trim(EdtLogin.Text));
  cdsUsuario.Params.ParamByName('login').AsString := trim(EdtLogin.Text);
  cdsUsuario.Active := true;

  {  cdsUsuario.IndexFieldNames := 'login';
  if not cdsUsuario.FindKey([Trim(EdtLogin.Text)]) then }
  if cdsUsuario.IsEmpty then
  begin
    messagedlg('Usuário não localizado!', mtwarning, [mbok], 0);
    EdtLogin.SetFocus;
    result := false;
  end
  else
  begin
    result := true;
//    BarLogin.Panels[0].Text := ' Usuário: ' + cdsUsuario.FieldByName('nome').AsString;
  end;
end;

function TFrmMain.VerModuloAberto: string;
//função que retorna os módulos abertos na hora de fechar o programa
var
  TheWindows: HWND;
  modulos : string;
begin
  modulos := '';

  //Cadastros
  TheWindows := FindWindow(NIL,'Nilus - Cadastros');
  if TheWindows <> 0 then
    modulos := modulos + #13 + 'Cadastros';

  //Contábil
  TheWindows := FindWindow(NIL,'Nilus - Contabil');
  if TheWindows <> 0 then
    modulos := modulos + #13 + 'Contábil';

  //Custos
  TheWindows := FindWindow(NIL,'Nilus - Custos');
  if TheWindows <> 0 then
    modulos := modulos + #13 + 'Custos';

  //Finanças
  TheWindows := FindWindow(NIL,'Nilus - Financas');
  if TheWindows <> 0 then
    modulos := modulos + #13 + 'Finanças';

  //Fiscal
  TheWindows := FindWindow(NIL,'Nilus - Fiscal');
  if TheWindows <> 0 then
    modulos := modulos + #13 + 'Fiscal';

  //Patrimonial
  TheWindows := FindWindow(NIL,'Nilus - Patrimonial');
  if TheWindows <> 0 then
    modulos := modulos + #13 + 'Patrimonial';
  Result := modulos;
end;

procedure TFrmMain.EdtLoginExit(Sender: TObject);
begin
  if Trim(EdtLogin.Text) = '' then
    exit;
  if not btnCancelar.Focused then

  VerificaUsuario;
end;

Procedure TFrmMain.ExecutaApp(Nome,NomeExec:string);
// Valores para Estdo: SW_SHOWNORMAL Janela em modo normal
// SW_MAXIMIZE Janela maximizada
// SW_MINIMIZE Janela minimizada
// SW_HIDE Janela Escondida
// Exemplo:
// ExecutaApp('CALCULADORA','OPEN','CALC.EXE','C:WINDOWS',8);
// Onde 'CALCULADORA' é o nome da janela do aplicativo
var
  TheWindows: HWND;
  arqAtu, dire, parametro : string;
begin
  theWindows := FindWindow(NIL,PWideChar(Nome));
  if TheWindows <> 0  then
    SetForegroundWindow(TheWindows)
  else
  begin

    if not (servidor) then //se não está no servidor então irá verifica a atualização
    begin
      arqAtu := '\\' + dmPadrao.RetornaConfig('ip_servidor') + '\Nilus\' + NomeExec;
      if not FileExists(arqAtu) then
      begin
        messagedlg('Arquivo não encontrado no servidor!' + #13 +
                   'Verifique se a Pasta Nilus está compartilhada no servidor!', mtwarning, [mbok], 0);
        exit;
      end;
    end;

    if (funcao.GetFileLastWriteTime(arqAtu) > funcao.GetFileLastWriteTime(NomeExec)) and (not servidor) then
    begin
        if FileExists(NomeExec) then
          DeleteFile(NomeExec);
        NomeExec := 'Atualizador.exe';
        parametro := ArqAtu + ' Nilus G3sta0 ' + idEmpresa + ' ' + idCadEmpresa + ' ' + idUsuario + ' ' + IntToStr(idUsuarioGrupo);
    end
    else
      parametro := 'Nilus G3sta0 ' + idEmpresa + ' ' + idCadEmpresa + ' ' + idUsuario + ' ' + IntToStr(idUsuarioGrupo);

    dire := ExtractFileDir(Application.ExeName);
    NomeExec := dire + '\' + NomeExec;

    ShellExecute(handle,'open',PWideChar(NomeExec),PWideChar(parametro),nil,SW_SHOWNORMAL);
  end;
end;

procedure TFrmMain.actArmazemExecute(Sender: TObject);
begin
  //
  If ((Sender as TAction).Name <> 'actSair') And (Not(Ok)) Then
     Exit;
  //
  If ((Sender as TAction).Name = 'actSair') Then
     Close
  Else If ((Sender as TAction).Name = 'actCadastros') Then
     ExecutaApp('Nilus - Cadastros', 'Cadastros.exe')
  Else If ((Sender as TAction).Name = 'actCompras') Then
     ExecutaApp('Nilus - Compras', 'Compras.exe')
  Else If ((Sender as TAction).Name = 'actContabil') Then
     ExecutaApp('Nilus - Contabil', 'Contabil.exe')
  Else If ((Sender as TAction).Name = 'actCustos') Then
     ExecutaApp('Nilus - Custos', 'Custos.exe')
  Else If ((Sender as TAction).Name = 'actFinancas') Then
     ExecutaApp('Nilus - Financas', 'Financas.exe')
  Else If ((Sender as TAction).Name = 'actFiscal') Then
     ExecutaApp('Nilus - Fiscal', 'Fiscal.exe')
  Else If ((Sender as TAction).Name = 'actPatrimonial') Then
     ExecutaApp('Nilus - Patrimonial', 'Patrimon.exe')
  Else If ((Sender as TAction).Name = 'actSuporte') Then
     WinExec('vitasuporte.exe', SW_SHOWNORMAL);
  //
end;

procedure TFrmMain.BtnCancelarClick(Sender: TObject);
begin
  //
  Close;
  //
end;

procedure TFrmMain.BtnOkClick(Sender: TObject);
begin
  if not VerificaUsuario then
    exit;
  idEmpresa := '';
  if Trim(EdtSenha.Text) = Trim(funcao.Crypt('D', cdsUsuariosenha.AsString)) then
  begin
    idUsuario := cdsUsuario.FieldByName('idUsuario').AsString;
    descUsuario := cdsUsuario.FieldByName('descUsuario').AsString;
    idUsuarioGrupo := cdsUsuario.FieldByName('idUsuarioGrupo').AsInteger;
    if cdsUsuario.FieldByName('idEmpresa').AsInteger > 0 then
      idEmpresa := cdsUsuario.FieldByName('idEmpresa').AsString;
    if cdsUsuario.FieldByName('idCadEmpresa').AsInteger > 0 then
      idCadEmpresa := cdsUsuario.FieldByName('idCadEmpresa').AsString;

    panAcesso.Visible := false;
    panBotoes.Visible := true;
  end
  else
  begin
    messagedlg('Senha inválida!', mterror, [mbok], 0);
    EdtSenha.SetFocus;
    exit;
  end;
  if trim(idEmpresa) = '' then
  begin
    cdsParametros.Active := false;
    cdsParametros.CommandText := 'SELECT MIN(idEmpresa) idEmpresa FROM vCadEmpresaContabil';
    cdsParametros.Active := true;
    idEmpresa := cdsParametros.FieldByName('idEmpresa').AsString;
    if trim(idEmpresa) = '' then
    begin
      messagedlg('Empresa não cadastrada! Cadastre no módulo de cadastros!', mtwarning, [mbok], 0);
      close;
    end;
  if trim(idCadEmpresa) = '' then
    idCadEmpresa := '1';
  end;
  //
  ClientSocket.Socket.SendText('Nilus Licenciado?');
  //
end;

procedure TFrmMain.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  //
  If (ClientSocket.Tag = 0) Then
     Begin
       //
       ShowMessage('O Nilus Server foi desligado !');
       FechaModulosAbertos;
       Halt;
       //
     End;
  //
end;

procedure TFrmMain.ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  //
  If ErrorCode = 10061 Then
     Begin
       //
       ShowMessage('Não foi possivel conectar-se ao Nilus Server !');
       ErrorCode := 0;
       FechaModulosAbertos;
       Halt;
       //
     End;
  //
end;

procedure TFrmMain.ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
begin
  //
  Ok := False;
  If (StrPas(PAnsiChar(Socket.ReceiveText)) = '999') Then
     Ok := True
  Else
  Begin
    //
    Ok := False;
    //
//    messagedlg(StrPas(PAnsiChar(Socket.ReceiveText)), mtwarning, [mbok], 0);
    FechaModulosAbertos;
    Close;
    //
  End;

//    OK := true;
  //
end;

procedure TFrmMain.FechaModulosAbertos;
//procedure que verifica os módulos abertos e os fecha
var
  TheWindows: HWND;
begin
  //

  //Cadastros
  TheWindows := FindWindow(NIL,'Nilus - Cadastros');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Contábil
  TheWindows := FindWindow(NIL,'Nilus - Contabil');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Custos
  TheWindows := FindWindow(NIL,'Nilus - Custos');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Finanças
  TheWindows := FindWindow(NIL,'Nilus - Financas');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Fiscal
  TheWindows := FindWindow(NIL,'Nilus - Fiscal');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Patrimonial
  TheWindows := FindWindow(NIL,'Nilus - Patrimonial');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Compras
  TheWindows := FindWindow(NIL,'Nilus - Compras');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);
  //
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  modulos : string;
begin
  modulos := VerModuloAberto;
  if trim(modulos) <> '' then
  begin
    if messagedlg('Os seguintes módulos estão abertos e deverão ser fechados!' + #13 + 'Deseja prosseguir?' + modulos, mtwarning, [mbyes, mbno], 0) = mryes then
    begin
      FechaModulosAbertos;
      Action := caFree;
      dmPadrao.dbConexao.CloseDataSets;
      dmPadrao.dbConexao.Close;
      Application.Terminate;
    end
    else
      Action := caNone;
  end
  else
  begin
    Action := caFree;
    dmPadrao.dbConexao.CloseDataSets;
    dmPadrao.dbConexao.Close;
    //
    If (ClientSocket.Active) Then
       Begin
         //
         ClientSocket.Tag := 1;
         ClientSocket.Close;
         //
       End;
    //
    Application.Terminate;
    //
  End;
  //
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Application.OnMessage := funcao.AppMessage;
  panBotoes.Visible := false;
  panAcesso.Visible := true;
  Width := 197;
//  Width := 500;
end;

procedure TFrmMain.FormShow(Sender: TObject);
Var
  ip: String;
begin
  //
//  ip := Funcao.ConfigIni('SERVER', 'ip', '', 1);
  ip := dmPadrao.RetornaConfig('ip_servidor');

  //
  if trim(ip) = '' then
    ip := '127.0.0.1';
  //


  servidor := true;

  if ip <> idIp.LocalIP then //computador de rede
  begin
    servidor := false;
    funcao.Atualizacao('PORTAL', '\\' + ip + '\Nilus\', Handle);
  end;

  ClientSocket.Address := '';
  ClientSocket.Host    := '';
  //
  If (Trim(ip) <> '') Then
     ClientSocket.Address := ip;
  //
  ClientSocket.Open;

  //
  //ExecutaApp('Nilus - Portal', 'Portal.exe')
end;

end.
