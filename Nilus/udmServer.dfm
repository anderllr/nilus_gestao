object dmServer: TdmServer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 251
  Width = 443
  object ClientSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 5557
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    OnRead = ClientSocketRead
    OnError = ClientSocketError
    Left = 80
    Top = 8
  end
end
