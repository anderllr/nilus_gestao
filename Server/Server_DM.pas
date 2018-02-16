unit Server_DM;

interface

uses
  SysUtils, Classes, IdBaseComponent, IdComponent, IdCustomTCPServer,
  IdSocksServer, ScktComp, ExtCtrls, Menus, Dialogs;

type
  TDMServer = class(TDataModule)
    ServerSocket: TServerSocket;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ServerSocketClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSocketClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    IDConexoes : TList;
    Function LocalizaConexao(ID: Pointer): Integer;
  end;

var
  DMServer: TDMServer;

implementation

uses Main_Form;

{$R *.dfm}

Function TDMServer.LocalizaConexao(ID: Pointer):Integer;
Begin
  //
  Result := IDConexoes.IndexOf(ID);
  //
End;

procedure TDMServer.DataModuleCreate(Sender: TObject);
begin
  //
  IDConexoes := TList.Create;
  IDConexoes.Clear;
  //
  ServerSocket.Open;
  //
end;

procedure TDMServer.DataModuleDestroy(Sender: TObject);
begin
  //
  ServerSocket.Close;
  //
  IDConexoes.Free;
  //
end;

procedure TDMServer.ServerSocketClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
Var IDsocket : ^byte;
begin
  //
  New(IDSocket);
  Socket.Data := IDSocket;
  IDConexoes.Add(Socket.data);
  //
  If (IDConexoes.Count = 0) Then
     FrmSrvMain.lblConexoes.Caption := 'Nenhuma conexão ativa.'
  Else If (IDConexoes.Count = 1) Then
     FrmSrvMain.lblConexoes.Caption := Format('%d conexão ativa.', [IDConexoes.Count])
  Else If (IDConexoes.Count > 1) Then
     FrmSrvMain.lblConexoes.Caption := Format('%d conexões ativas.', [IDConexoes.Count]);
  //
end;

procedure TDMServer.ServerSocketClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
Var NumConex : integer;
begin
  //
  IDConexoes.Remove(Socket.Data);
  Dispose(Socket.Data);
  //
  If (IDConexoes.Count = 0) Then
     FrmSrvMain.lblConexoes.Caption := 'Nenhuma conexão ativa.'
  Else If (IDConexoes.Count = 1) Then
     FrmSrvMain.lblConexoes.Caption := Format('%d conexão ativa.', [IDConexoes.Count])
  Else If (IDConexoes.Count > 1) Then
     FrmSrvMain.lblConexoes.Caption := Format('%d conexões ativas.', [IDConexoes.Count]);
  //
end;

procedure TDMServer.ServerSocketClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
Var
  IDCnn : Integer;
begin
  IDCnn := LocalizaConexao(Socket.Data);
  ServerSocket.Socket.Connections[IDCnn].Close;
end;

procedure TDMServer.ServerSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
Var
  Msg : String;
  IDCnn : Integer;
  HoraStr : String;
//  log : TStringList;
begin
//  log := TStringList.Create;

//  ShowMessage(StrPas(PAnsiChar(Socket.ReceiveText)));
  Msg := StrPas(PAnsiChar(Socket.ReceiveText));
//  log.Add(Msg);
  //
  IDCnn := LocalizaConexao(Socket.Data);

  If (Msg = 'Novo Nilus Licenciado?') Then
  Begin
//    log.Add('Pegunta correta...');
    //
    If (IDCnn >= 0) Then
      Begin
        //
//        If (FrmSrvMain.Licenciado) Then
//          ServerSocket.Socket.Connections[IDCnn].SendText('Nilus100%')
//        Else
          ServerSocket.Socket.Connections[IDCnn].SendText(FrmSrvMain.msgLic);
        //
      End;
    //
  End
  else
    ServerSocket.Socket.Connections[IDCnn].SendText('000');
  //
//  log.SaveToFile('logServer.txt');
end;

end.
