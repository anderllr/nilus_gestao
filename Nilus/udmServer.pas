unit udmServer;

interface

uses
  SysUtils, Classes, ScktComp, IdBaseComponent, IdComponent, IdIPWatch, Dialogs;

type
  TdmServer = class(TDataModule)
    ClientSocket: TClientSocket;
    procedure DataModuleCreate(Sender: TObject);
    procedure ClientSocketDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmServer: TdmServer;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TdmServer.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ClientSocket.Socket.SendText('Novo Nilus Licenciado?');
end;

procedure TdmServer.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  //
  If (ClientSocket.Tag = 0) Then
     Begin
       //
       ShowMessage('O Nilus Server foi desligado !');
       Halt;
       //
     End;
  //
end;

procedure TdmServer.ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
var
  msg : string;
begin
  msg := '';
  if ((ErrorCode = 10061)) Then
    msg := 'Não foi possivel conectar-se ao Nilus Server !'
  else
//    if (ErrorCode <> 10060) then
      msg := 'Server não encontrado!';

//  if (ErrorCode <> 10060) then
  begin
    messagedlg(msg, mterror, [mbok], 0);
    Halt;
  end;

  ErrorCode := 0;
end;

procedure TdmServer.ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
var
  ok : boolean;
  msg, cpf : string;
  log : TStringList;
begin
//  log := TStringList.Create;
  Ok := False;
  msg := StrPas(PAnsiChar(Socket.ReceiveText));
//  log.Add('StrPas: ' + msg);
  If (copy(msg, 1, 2) = 'ok') Then
  begin
     Ok := True;
     frmPrincipal.licenciado := ok;
  end
  Else
  If (copy(msg, 1, 2) = 'bl') Then //Bloqueado
  Begin
    Ok := True;
    frmPrincipal.licenciado := false;
  End
  else
    begin //algum outro problema
      ok := false;
      messagedlg(msg, mtwarning, [mbok], 0);
      halt;
    end;
//  log.SaveToFile('logNilus.txt');
//  log.Free;
  //Agora verifica o CPF
  if ok then
  begin
    with dmPadrao.cdsTmp do
    begin
      cpf := trim(copy(msg, 3, length(msg)));
      Active := false;
      CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa = 1';
      Active := true;
      if cpf <> FieldByName('idCnpjCpf').AsString then
      begin
        messagedlg('Base inválida para a licença selecionada no server!', mtwarning, [mbok], 0);
        halt;
      end;
    end;
  end;
end;

procedure TdmServer.DataModuleCreate(Sender: TObject);
var
  ip, host: String;
begin
  //
  ip := Funcao.ConfigIni('SERVER', 'ip', '', 1);
  if trim(ip) = '' then
    host := Funcao.ConfigIni('SERVER', 'host', '', 1);

  //
  if (trim(ip) = '') and (trim(host) = '') then
    ip := '127.0.0.1';
  //

  ClientSocket.Address := '';
  ClientSocket.Host    := '';
  //
  if (trim(host) <> '') then
    ClientSocket.Host    := host
  else
    if (Trim(ip) <> '') Then
      ClientSocket.Address := ip;
  //
  ClientSocket.Open;
end;

end.
