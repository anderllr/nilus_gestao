unit Main_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Menus, ComCtrls, Buttons, CBitBtn, CLabel,
  IdBaseComponent, IdComponent, IdIPWatch, DBXCommon, DB, DBClient, MidasLib,
  Wininet, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, ShellAPI,
  Spin, FMTBcd, SqlExpr, Provider, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, ActnList, ImgList,
  CSpeedButton, System.Actions, IdHTTP, System.ImageList;

const
  WM_NOTIFYICON  = WM_USER+333;

type
  TFrmSrvMain = class(TForm)
    Image1: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    BtnAtualizar: TCBitBtn;
    RzButton3: TCBitBtn;
    lblConexoes: TCLabel;
    RzButton2: TCBitBtn;
    IdIP: TIdIPWatch;
    dsAtualizacao: TDataSource;
    cdsAtualizacao: TClientDataSet;
    cdsAtualizacaoidAtualizacao: TIntegerField;
    cdsAtualizacaodescAtualizacao: TMemoField;
    cdsAtualiza: TClientDataSet;
    cdsAtualizaid: TIntegerField;
    cdsAtualizasenha: TStringField;
    FTP: TIdFTP;
    cdsAtualizaTemp: TClientDataSet;
    cdsAtualizaTempid: TIntegerField;
    cdsAtualizaTempsenha: TStringField;
    lblInfo: TCLabel;
    EDVersao: TSpinEdit;
    LblRecebe: TLabel;
    dsLic: TDataSource;
    cdsLic: TClientDataSet;
    dspLic: TDataSetProvider;
    sdsLic: TSQLDataSet;
    cdsLicdescLic: TStringField;
    dbConexao2: TZConnection;
    dsCadastro: TDataSource;
    cdsCadastro: TClientDataSet;
    dspCadastro: TDataSetProvider;
    dsTmp: TDataSource;
    cdsTmp: TClientDataSet;
    dspTmp: TDataSetProvider;
    sdsTmp: TZReadOnlyQuery;
    sdsCadastro: TZQuery;
    Timer1: TTimer;
    BtnInformacao: TCSpeedButton;
    ActionList1: TActionList;
    ImageList1: TImageList;
    actInformacao: TAction;
    idHttp: TIdHTTP;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    function VerificaAtualiza: boolean;
    function VerExisteArq(nomeArq: string): boolean;
    procedure RetVersao;
    procedure EDVersaoChange(Sender: TObject);
    function VerificarLicenca: string;
    function TemInternet: boolean;
    procedure dspCadastroBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure Timer1Timer(Sender: TObject);
    procedure actInformacaoExecute(Sender: TObject);
    procedure BaixaArquivo(caminho, arquivo : string);
    procedure HttpWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure HttpWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure HttpWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
  private
    { Private declarations }
    ftphost, ftpuser, ftppath, ftppassword, cpf_cnpj, nrHD : string;
    id, idTemp : integer;
    altera, primeira, atualiza : boolean;
    TempoInicio, TempoFim:TTime;
    TamanhoAntigo: Integer;
  public
    { Public declarations }
    licenciado : boolean;
    TotalBytes: Int64;
    LastWorkCount: Int64;
    LastTicks: LongWord;
    erro : byte;
    Chave, DtLimite: Boolean;
    TrayIcon: TNotifyIconData;
    HMainIcon: HICON;
    msgLic : string;
    procedure ClickTrayIcon(var msg: TMessage); message WM_NOTIFYICON;
    Procedure MinimizeClick(Sender:TObject);
    Function  VerificaChave: boolean;
    Procedure FechaModulosAbertos;
    Procedure VerAtualizaBD;
    Function SerialNum(FDrive:String) :String;
    function GetComputerNameFunc : string;
  end;

var
  FrmSrvMain: TFrmSrvMain;

const
// Function Code
 UNIKEY_FIND		 =	1 ;	// Find UniKey
 UNIKEY_LOGON		 =	3 ;	// Open UniKey
// Error Code
 SUCCESS			   =  0;	//Success
 ERROR_NO_UNIKEY =  3;	//No UniKey dongle

implementation

uses Server_DM, uDmPadrao, uFuncao, uFrmInfo;

{$R *.dfm}

function TFrmSrvMain.GetComputerNameFunc : string;
var
  buffer: Array[0..255] of char;
  size: DWord;
begin
  size := 256;
  if GetComputerName (buffer,size) then
    Result := Buffer
  else
    Result := '';
end;

procedure TFrmSrvMain.HttpWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
var
  Diferenca, Resto:Integer;
begin
  if AWorkMode=wmRead then
//    progRecebe.Position := AWorkCount;
//  TamanhoAntigo := progRecebe.Position;
//  Diferenca := progRecebe.Position - TamanhoAntigo;
//  Resto := progRecebe.Max - progRecebe.Position;
//  lblTmp.Caption := '90 segundos restantes.';  //Seg_Hora((Resto div Diferenca) div 2)+' segundos restantes.';
  Application.ProcessMessages;
//  lblVel.caption := formatfloat('0,000.000', progRecebe.Position / 800) + ' kbytes de ' + formatfloat('#,000', progRecebe.Max / 800) + ' megabytes transferidos';
end;

procedure TFrmSrvMain.HttpWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  if AWorkMode = wmRead then
  begin
    TamanhoAntigo := 0;
    TempoInicio := 0;
  //  progRecebe.Max := AWorkCountMax;
  //  progRecebe.Position := 0;
  end;
end;

procedure TFrmSrvMain.HttpWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
//  progRecebe.Position := progRecebe.Max;
end;

Function TFrmSrvMain.SerialNum(FDrive:String) :String;
Var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel : Array[0..11] of Char;
begin
  Try
    GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
    Result := IntToHex(Serial,8);
  Except
    Result :='';
  end;
end;

procedure TFrmSrvMain.FechaModulosAbertos;
//procedure que verifica os módulos abertos e os fecha
var
  TheWindows: HWND;
begin
  //

  //Armazém
  TheWindows := FindWindow(NIL,'Nilus - Armazem');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

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

  //Portal
  TheWindows := FindWindow(NIL,'Nilus - Portal');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Compras
  TheWindows := FindWindow(NIL,'Nilus - Compras');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);

  //Nilus Integrado
  TheWindows := FindWindow(NIL,'Nilus Gestão do Agronegócio');
  if TheWindows <> 0 then
    PostMessage( TheWindows, WM_CLOSE, 0, 0);
end;

procedure TFrmSrvMain.VerAtualizaBD;
var
//  sql : string;
  arquivo: string;
  ultimo, ultimoLocal : integer;
  t : TDBXTransaction;
begin
   //verifica se tem atualizações disponíveis de banco de dados
  arquivo := ExtractFilePath(Application.ExeName) + '\ScriptDB\AtualizaNilus';
  //
  if FileExists(arquivo) then
  begin
    with cdsAtualizacao do
    begin
      CreateDataSet;
      LoadFromFile(arquivo);
      IndexFieldNames := 'idAtualizacao';
      Last;
      ultimo := cdsAtualizacaoidAtualizacao.Value;
      ultimoLocal := 0;
      if trim(DmPadrao.RetornaConfig('idAtualizacao')) <> '' then
        ultimoLocal := StrToInt(DmPadrao.RetornaConfig('idAtualizacao'));
      //
      if ultimo >  ultimoLocal then
      begin
        messagedlg('Foi detectada uma atualização de Banco de Dados' + #13 +
                    'Clique em OK e aguarde a finalização!', mtInformation, [mbok], 0);
        Screen.Cursor := crSQLWait;
        Filtered := false;
        Filter := 'idAtualizacao > ' + IntToStr(ultimoLocal);
        Filtered := true;
        First;

        while not Eof do
        begin
          erro := 0;
          dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
          try
            dmPadrao.dbConexao.ExecuteDirect(FieldByName('descAtualizacao').AsString);
          except
            on E: Exception do
            begin
              erro := 1;
            end;
          end;

          if erro > 0 then
          begin
            messagedlg('Erro na atualização! ID: ' + FieldByName('idAtualizacao').AsString, mterror, [mbok], 0);
            dmPadrao.dbConexao.RollbackFreeAndNil(t);
            Application.Terminate;
            exit;
          end
          else
          begin
            dmPadrao.dbConexao.CommitFreeAndNil(t);
            dmPadrao.dbConexao.ExecuteDirect('UPDATE CadConfig SET idAtualizacao = ' + FieldByName('idAtualizacao').AsString);
          end;
          Next;
        end;
        Screen.Cursor := crDefault;
        messagedlg('Atualização concluida com sucesso!', mtinformation, [mbok], 0);
      end; // fim do if ultimo >  ultimoLocal then
    end;//fim do with cdsatualizacao
  end;
end;

function TFrmSrvMain.VerExisteArq(nomeArq: string): boolean;
var
  hConnection, hOpen, hFind: PInteger;
  hData: TWIN32FINDDATA;
begin
  hOpen := InternetOpen ('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  hConnection := InternetConnect (hOpen, PWideChar(ftphost), INTERNET_DEFAULT_FTP_PORT,
    PWideChar(ftpuser+'@nilus.com.br'), PWideChar(ftppassword), INTERNET_SERVICE_FTP, INTERNET_FLAG_PASSIVE, 0);
  FtpSetCurrentDirectory (hConnection, PWideChar(ftppath));
  hFind := FtpFindFirstFile (hConnection, PWideChar(nomeArq), hData, 0, 0);

  if hFind = nil then
    Result := false
  else
    Result := true;

  InternetCloseHandle (hConnection);
  InternetCloseHandle (hOpen);
end;

function TFrmSrvMain.VerificaAtualiza: boolean;
//função que verificará se existe atualização
var
  temAtu : boolean;
  FileDownload : TFileStream;
  arqVersao, urlArq : string;
begin
  temAtu := true;
  lblInfo.Caption := 'Verificando Atualização... Aguarde...!';
  Application.ProcessMessages;

  {try
    try
      if FTP.Connected then
      begin
        FTP.Disconnect;
      end
      else
      begin
        FTP.Host := ftphost;
        FTP.Username := ftpuser+'@nilus.com.br';
        FTP.Password := ftppassword;
        FTP.Passive := true;
        Try
          FTP.Connect;
        Except
          on E: Exception do
          begin
            FTP.Passive := false;
            FTP.Connect;
          end;
        End;
          FTP.ChangeDir(ftppath);
      end;
    except
      on E: Exception do
      begin
        messagedlg(E.Message, mterror, [mbok], E.HelpContext);
        temAtu := false;
      end;
    end;
  finally
    try
      if FTP.Connected then
      begin
        if VerExisteArq('atualiza.xml') then
        begin
          if FileExists('atualizatemp.xml') then
            DeleteFile('atualizatemp.xml');
          FTP.Get('atualiza.xml', 'atualizatemp.xml');
        end;
      end
      else
      begin
        temAtu := false;
        messagedlg('Problemas na conexão!', mtwarning, [mbok], 0);
      end;
    except
      on E: Exception do
      begin
        messagedlg(E.Message, mterror, [mbok], E.HelpContext);
        temAtu := false;
      end;
    end;

  end;}
  try
//    fileDownload := TFileStream.Create('atualizatemp.xml', fmCreate);
//    urlArq := 'http://www.nilus.com.br/' + ftppath + '/' + 'atualiza.xml';
//    IdHTTP.Get(urlArq, fileDownload);
    BaixaArquivo(ExtractFileDir(Application.ExeName)+ '\', 'atualiza.xml');
    Application.ProcessMessages;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      temAtu := false;
    end;
  end;

  idTemp := 0;
  //verifica se baixou o arquivo temporário
  if FileExists('atualizatemp.xml') then
  begin
    cdsAtualizaTemp.LoadFromFile('atualizatemp.xml');
    idTemp := cdsAtualizaTempid.AsInteger;
  end;

  if (idTemp > StrToInt(EDVersao.Text)) and (temAtu) then
    Result := true
  else
    Result := false;

  lblInfo.Caption := '';
end;

Function TFrmSrvMain.VerificaChave : boolean;
{var
  mFun,mP1,mP2,mP3,mP4,rt:Word;
  lP1,lP2:LongWord;
  mBuf:array[0..100] of Byte;
  mHand:array[0..16] of Word;
  i : integer; }
begin
  //
{  Result := false;
  mFun := UNIKEY_FIND;
  lp1 := 0;
  lp2 := 0;
  mP1 := 388;
  mP2 := 23304;
  mP3 := 28598;
  mP4 := 58921;
  //
  for i:=0 to 30 do
       mBuf[i]:=0;
  rt := UniKey(mFun,@mHand[0],@lp1,@lp2,@mP1,@mP2,@mP3,@mP4,@mBuf[0]);
  if rt <> 0 then
  begin
    MessageDlg('Atenção!','Chave não encontrada! Entre em contato com o desenvolvedor!', mtWarning, [mbOK], 0, dckScreen, 10);
    Application.Terminate;
    exit;
  end;
  //
  mFun := UNIKEY_LOGON;
  rt:= UniKey(mFun,@mHand[0],@lP1,@lP2,@mP1,@mP2,@mP3,@mP4,@mBuf[0]);
  if rt <> 0 then
  begin
    MessageDlg('Atenção!','Chave não encontrada! Entre em contato com o desenvolvedor!', mtWarning, [mbOK], 0, dckScreen, 10);
    Application.Terminate;
    exit;
  end
  else
    Result := true;}
  //
end;

function TFrmSrvMain.VerificarLicenca: string;
var
  msgRet, descLic, data, status, nomeMaquina, descCadEmpresa : string;
  obrig, internet : boolean;
  cont, erro : integer;
begin
  //função que será responsável por verificar se o sistema não está travado ou bloqueado
  // e se está devidamente licenciado

  msgRet := 'ok';

  //pega os dados básicos da máquina
  with dmPadrao.cdsTmp do
  begin
    Active := false;
    CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa = 1';
    Active := true;
    cpf_cnpj := FieldByName('idCnpjCpf').AsString;
    descCadEmpresa := FieldByName('descCadEmpresa').AsString;
  end; //fim do with dmPadrao.cdsTmp do

  nrHD := SerialNum(copy(ExtractFileDrive(Application.ExeName), 1,1));
  nomeMaquina := GetComputerNameFunc;

  //Verifica se existe a tabela de licença
  with dmPadrao do
  begin
    cdsTmp.Active := false;
    cdsTmp.CommandText := 'SELECT COUNT(*) Qtde FROM sysobjects WHERE name = ' + QuotedStr('tabLic');
    cdsTmp.Active := true;

    if cdsTmp.FieldByName('Qtde').AsInteger = 0 then
      msgRet := 'Table';
    cdsTmp.Active := false;
  end;

  if msgRet = 'ok' then   //primeiro
  begin
    //Abre a tabela da licença
    cdsLic.Active := false;
    cdsLic.CommandText := 'SELECT * FROM tabLic';
    cdsLic.Active := true;

    //Se não houver registro na tabLic significa que é a primeira vez que ela é aberta então cria a estrutura e salva
    if cdsLic.RecordCount = 0 then
    begin
      cdsLic.Append;
      descLic := '00' + //Contador
                 '00/00/0000' + //Data da ultima ativação
                 'BLOQUEADO'; //Status como não tem inicia BLOQUEADO até que seja feita a verificação
      cdsLicdescLic.AsString := funcao.Crypt('C', descLic);
      cdsLic.Post;
      cdsLic.ApplyUpdates(0);
    end;
  end; //primeiro --- if msgRet = 'ok' then

  //Agora inicia as verificações
  if msgRet = 'ok' then //segundo
  begin
    //inicia a variável obrig como false, ela determinará a obrigatoriedade de conectar com a internet
    obrig := false;
    //Abre a tabela da licença
    cdsLic.Active := false;
    cdsLic.CommandText := 'SELECT * FROM tabLic WHERE 1=1';
    cdsLic.Active := true;

    descLic := trim(funcao.Crypt('D', cdsLicdescLic.AsString));

    //verifica se é a primeira vez que fará a verificação
    data := copy(descLic, 3, 10);
    status := trim(copy(descLic, 13, 10));
    cont := StrToInt(copy(descLic, 1,2));
    if (data = '00/00/0000') or  //primeira vez que está sendo executado
       (status = 'BLOQUEADO') or //está bloqueado
       (cont = 20) then //já executou sem verificar a internet mais de 20 vezes/dias
      obrig := true;

    if obrig then //é obrigatório
    begin
       if not TemInternet then
         msgRet := 'Internet'
       else
       begin
         erro := 0;
         try
           dbConexao2.Connected := false;
           dbConexao2.Connected := true;
         except
            on E: Exception do
            begin
              erro := 1;
              msgRet := 'BD - ' + E.Message;
            end;
         end; //fim do except
         if erro <> 1 then //conectou
         begin
           cdsCadastro.Active := false;
           cdsCadastro.CommandText := 'SELECT * FROM clientenilus WHERE cpf_cnpj = ' + QuotedStr(cpf_cnpj) +
                ' AND nrHD = ' + QuotedStr(nrHD) + 'AND nomeMaquina = ' + QuotedStr(nomeMaquina);
           cdsCadastro.Active := true;

           //Se não tem é pq é a primeira vez então inclui como ativo para ser avaliado na sequência
           if cdsCadastro.RecordCount = 0 then
           begin
             cdsTmp.Active := false;
             cdsTmp.CommandText := 'SELECT MAX(id_clientenilus) ultimo FROM clientenilus';
             cdsTmp.Active := true;
             cdsCadastro.Append;
             cdsCadastro.FieldByName('id_clientenilus').AsInteger := cdsTmp.FieldByName('ultimo').AsInteger + 1;
             cdsCadastro.FieldByName('cpf_cnpj').AsString := cpf_cnpj;
             cdsCadastro.FieldByName('nome_cliente').AsString := descCadEmpresa;
             cdsCadastro.FieldByName('nrHD').AsString := nrHD;
             cdsCadastro.FieldByName('nomeMaquina').AsString := nomeMaquina;
             cdsCadastro.FieldByName('dt_ativacao').AsDateTime := date;
             cdsCadastro.FieldByName('status').AsString := 'ATIVO';
             cdsCadastro.FieldByName('stAtualiza').AsString := 'ATIVO';
             cdsCadastro.Post;
             cdsCadastro.ApplyUpdates(0);
           end; //fim da inserção dos dados na tabela
           status := cdsCadastro.FieldByName('status').AsString;
           if cdsCadastro.FieldByName('stAtualiza').AsString = 'ATIVO' then
             atualiza := True
           else
             atualiza := False;
           data := FormatDateTime('dd/MM/yyyy', date);
           cont := 1;
           if status = 'BLOQUEADO' then
             msgRet := 'Block';
         end; //fim do else do erro = 1
       end; //else do if not TemInternet then
    end // fim do if obrig then //é obrigatório
    else
    begin
      //Está ativo porém irá fazer uma verificação
      if not TemInternet then
      begin
        //não tem internet e provavelmente está ativo - então irá incrementar o contador apenas
        //isso se a data da ultima verificação for diferente da de hoje
        if data <>  FormatDateTime('dd/MM/yyyy', date) then
        begin
          cont := cont + 1;
          data := FormatDateTime('dd/MM/yyyy', date); //atualiza a data tb
        end; //fim do if data <>  FormatDateTime('dd/MM/yyyy', date) then
      end // fim do if not TemInternet then
      else
      begin  //tendo internet vai procurar o BD
         erro := 0;
         try
           dbConexao2.Disconnect;
           dbConexao2.Connected := true;
         except
            on E: Exception do
            begin
              erro := 1;
            end;
         end; //fim do except

         //não tendo conectado ao banco e a data sendo diferente novamente incrementa o cont
         if erro = 1 then
         begin
           if data <>  FormatDateTime('dd/MM/yyyy', date) then
           begin
             cont := cont + 1;
             data := FormatDateTime('dd/MM/yyyy', date); //atualiza a data tb
           end; //fim do if data <>  FormatDateTime('dd/MM/yyyy', date) then
         end //fim do if erro = 1 then
         else
         begin //sendo o erro = 0 vai para o BD
           cdsCadastro.Active := false;
           cdsCadastro.CommandText := 'SELECT * FROM clientenilus WHERE cpf_cnpj = ' + QuotedStr(cpf_cnpj) +
                ' AND nrHD = ' + QuotedStr(nrHD) + 'AND nomeMaquina = ' + QuotedStr(nomeMaquina);
           cdsCadastro.Active := true;
           if cdsCadastro.RecordCount = 0 then
           begin
             cdsLic.Delete;
             cdsLic.ApplyUpdates(0);
             msgRet := 'Table';
             status := '';
           end
           else
           begin
             status := cdsCadastro.FieldByName('status').AsString;
             if cdsCadastro.FieldByName('stAtualiza').AsString = 'ATIVO' then
               atualiza := True
             else
               atualiza := False;
             data := FormatDateTime('dd/MM/yyyy', date);
             cont := 1;
           end;
           if status = 'BLOQUEADO' then
             msgRet := 'Block';
         end;
      end; // fim do else do if not TemInternet then
    end; // fim do else do if obrig then //é obrigatório
  end; //if msgRet = 'ok' then //segundo

  //fecha a conexão do MySql
  dbConexao2.Connected := false;
  if msgRet <> 'Table' then
  begin
    //Independente do resultado agora faz a gravação na tabela de licença
    descLic := funcao.PreencheString(IntToStr(cont), '0', 'E', 2) +
               data +
               funcao.PreencheString(status, ' ', 'E', 10);
    cdsLic.Edit;
    cdsLicdescLic.AsString := funcao.Crypt('C', descLic);
    cdsLic.Post;
    cdsLic.ApplyUpdates(0);
  end; // fim do if msgRet <> 'Table' then

  Result := msgRet;
end;

procedure TFrmSrvMain.FormActivate(Sender: TObject);
begin
  //
  Shell_NotifyIcon(NIM_ADD, @TrayIcon);
  //
  If (IsWindowVisible(Application.Handle)) Then
     ShowWindow(Application.Handle, SW_HIDE);
  //
end;

procedure TFrmSrvMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Application.Minimize;
  Action := caNone;
  //
end;

procedure TFrmSrvMain.FormCreate(Sender: TObject);
begin
  //marca o timer para não fazer verificação de licença já na primeira vez
  primeira := true;

  funcao.ExcluiAntigos;
  //
  HMainIcon := LoadIcon(MainInstance, 'MAINICON');
  //
  Shell_NotifyIcon(NIM_DELETE, @TrayIcon);
  //
  With TrayIcon Do
       Begin
         //
         cbSize               := System.SizeOf(TNotifyIconData);
         Wnd                  := handle;
         uID                  := 123;
         uFlags               := NIF_MESSAGE or NIF_ICON or NIF_TIP;
         uCallbackMessage     := WM_NOTIFYICON;
         hIcon                := HMainIcon;
         szTip                := 'Clique aqui para abrir o Painel do Nilus Server';
         //
       End;
  //
  Application.OnMinimize      := MinimizeClick;
  //

  Height := 273;
  Width := 368;

  //Inicializa os dados do FTP
  ftphost := 'ftp.nilus.com.br';
  ftpuser := 'ftpnilus';
  ftppath := 'atualiza/nilus';
  ftppassword := 's3rv1d0r3s';

  //inicia os datasets

  cdsAtualiza.CreateDataSet;
  cdsAtualizaTemp.CreateDataSet;

  RetVersao;
  altera := true;
  EDVersao.Text := InttoStr(id);
  altera := false;
end;

procedure TFrmSrvMain.FormDestroy(Sender: TObject);
begin
  //
  Shell_NotifyIcon(NIM_Delete, @TrayIcon);
  //
end;

procedure TFrmSrvMain.FormShow(Sender: TObject);
var
  sql : string;
begin
  //
  Top  := Screen.Height - Height - 45;
  Left := Screen.Width  - Width  - 15;
  try
    VerAtualizaBD;
    //
    //  Chave := VerificaChave;

    //Atualiza o IP do Servidor na CadConfig
    sql := 'UPDATE CadConfig SET ip_servidor = ' + QuotedStr(trim(IdIP.LocalIP));
    dmPadrao.dbConexao.ExecuteDirect(sql);

    dmPadrao.cdsTmp.Active := false;
    dmPadrao.cdsTmp.CommandText := 'SELECT * FROM CadConfig';
    dmPadrao.cdsTmp.Active := true;
    if dmPadrao.cdsTmp.FieldByName('fixa_caminho').AsString = 'N' then
    begin
      sql := 'UPDATE CadConfig SET caminho_rel = ' + QuotedStr('\\' + trim(IdIP.LocalIP) + '\Nilus\Relatorios\') ;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  finally
    try
//      msgLic := VerificarLicenca;
//      if date > StrToDate('30/09/2014') then
      //  msgLic := VerificarLicenca    --comentado ate ajustar questao do servidor
        msgLic := 'ok';
//      else
//        msgLic := 'ok';
    finally
      //informações de licença
      if msgLic = 'ok' then
      begin
        licenciado := true;
        //Agora envia o CPF ou CNPJ para não haver desvio de base
        with dmPadrao.cdsTmp do
        begin
          Active := false;
          CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa = 1';
          Active := true;
          msgLic := msgLic + FieldByName('idCnpjCpf').AsString;
        end;
      end
      else
      begin
        if msgLic = 'Block' then
        begin
//          msgLic := 'Problemas na ativação do Nilus! Entre em contato com o desenvolvedor';
          sql := 'UPDATE SegGrupoPermissao SET excluir = ' + QuotedStr('N') + ', ' +
                                              'incluir = ' + QuotedStr('N') + ', ' +
                                              'editar = ' + QuotedStr('N');
          dmPadrao.dbConexao.ExecuteDirect(sql);

          msgLic := 'bl';

          //Agora envia o CPF ou CNPJ para não haver desvio de base
          with dmPadrao.cdsTmp do
          begin
            Active := false;
            CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa = 1';
            Active := true;
            msgLic := msgLic + FieldByName('idCnpjCpf').AsString;
          end;
        end
        else
          msgLic := 'Problemas na ativação do Nilus! *** MSG: ' + msgLic + ' ***';
        licenciado := false;
      end;

      Application.CreateForm(TdmServer, dmServer);
      if date > StrToDate('30/09/2014') then
        Timer1.Enabled := true;
    end; //segundo fynally
  end; //primeiro fynally atualizaBD
  //após ter atualizado o banco de dados
end;

Procedure TFrmSrvMain.MinimizeClick(Sender:TObject);
begin
  //
  {hide the taskbar button}
  If (IsWindowVisible(Application.Handle)) Then
     ShowWindow(Application.Handle, SW_HIDE);
  //
end;

procedure TFrmSrvMain.actInformacaoExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmInfo, FrmInfo);
  with dmPadrao.cdsTmp do
  begin
    Active := false;
    CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa = 1';
    Active := true;
    FrmInfo.lblCpf.Caption := FieldByName('idCnpjCpf').AsString;
    FrmInfo.lblNome.Caption := FieldByName('descCadEmpresa').AsString;
    FrmInfo.lblSerial.Caption := SerialNum(copy(ExtractFileDrive(Application.ExeName), 1,1));
    FrmInfo.lblMaquina.Caption := GetComputerNameFunc;
  end; //fim do with dmPadrao.cdsTmp do
  FrmInfo.ShowModal;
end;

procedure TFrmSrvMain.BaixaArquivo(caminho, arquivo: string);
var
  MyFile: TFileStream;
  link : string;
begin
  link := 'http://www.nilus.com.br/' + ftppath + '/';
  if arquivo = 'atualiza.xml' then
    MyFile := TFileStream.Create(caminho+'atualizatemp.xml', fmCreate)
  else
    MyFile := TFileStream.Create(caminho+arquivo, fmCreate);
  try
    if arquivo <> 'atualiza.xml' then
    begin
      IdHTTP.OnWorkBegin := HttpWorkBegin;
      IdHTTP.OnWork := HttpWork;
      IdHTTP.OnWorkEnd := HttpWorkEnd;
    end;
    IdHTTP.Get(link+arquivo, MyFile); // fazendo o download do arquivo
  finally
    MyFile.Free;
  end;
end;

procedure TFrmSrvMain.BtnAtualizarClick(Sender: TObject);
var
  parametros, cmd, sql : string;
  SUInfo : TStartupInfo;
  ProcInfo : TProcessInformation;
begin
  sql := 'SELECT * FROM clientenilus WHERE cpf_cnpj = ' + QuotedStr(cpf_cnpj) +
         ' AND nrHD = ' + QuotedStr(nrHD);

  if not atualiza then
  begin
    messagedlg('Atualização Bloqueada!', mtinformation, [mbok], 0);
    Exit;
  end
  else
  begin
    If MessageDlg('Todos os programas abertos deverão ser fechados!''' + #13#10 + 'Deseja Continuar?', mtWarning, [mbYes, mbNo], 0) = mryes then
    Begin
      Screen.Cursor := crHourGlass;
      FechaModulosAbertos;
      if VerificaAtualiza then
      begin
        FillChar(SUInfo, System.SizeOf(SUInfo), #0);
        SUInfo.cb := System.SizeOf(SUInfo);
        SUInfo.dwFlags := STARTF_USESHOWWINDOW;
        SUInfo.wShowWindow := SW_SHOWNORMAL;
        parametros := EDVersao.Text + ' ' + //id atual
                     InttoStr(idTemp) + ' ' + //id da atualização
                     ftphost + ' ' + //caminho do ftp
                     ftpuser + ' ' + //usuário do ftp
                     ftppath + ' ' + //caminho da atualização no ftp
                     ftppassword; //senha do ftp
        if (cdsAtualizaTempsenha.IsNull) or (trim(cdsAtualizaTempsenha.AsString) = '') then
          parametros := parametros + ' ' + 'BRANCO'
        else
          parametros := parametros + ' ' + cdsAtualizaTempsenha.AsString;;

        cmd := 'Update.exe' + ' ' + parametros;
        try
          CreateProcess(nil, PWideChar(cmd),nil, nil,false, CREATE_NEW_CONSOLE OR NORMAL_PRIORITY_CLASS, nil, nil, SUInfo, ProcInfo);
        finally
          Halt;
        end;
      end
      else
      begin
        messagedlg('Não existem atualizações disponíveis!', mtinformation, [mbok], 0);
        lblInfo.Caption := '';
      end;
      Screen.Cursor := crDefault;
    End;
  end;
end;

procedure TFrmSrvMain.RetVersao;
begin
  id := 0;
  if FileExists('atualiza.xml') then
  begin
    cdsAtualiza.LoadFromFile('atualiza.xml');
    id := cdsAtualizaid.AsInteger;
  end;
end;

procedure TFrmSrvMain.RzButton2Click(Sender: TObject);
begin
  //
  Application.Minimize;
  //
end;

procedure TFrmSrvMain.RzButton3Click(Sender: TObject);
begin
  //
  If MessageBox(Handle,'Tem certeza que deseja fechar o Nilus Server ?',
                       ' Atenção !',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
       //
       DMServer.ServerSocket.Close;
       //
       DMServer.Free;
       DMServer := Nil;
       //
       FechaModulosAbertos;
       //
       Halt;
       //
     End;
  //
end;

function TFrmSrvMain.TemInternet: boolean;
var
  flags : DWORD;
begin
 // verifica se está conectado a internet usando a API do Windows, é preciso declarar a uses WinInet.
 if not InternetGetConnectedState(@flags, 0) then
    result := false
 else
    result := true;
end;

procedure TFrmSrvMain.Timer1Timer(Sender: TObject);
var
  i : integer;
  sql : string;
begin
  if not primeira then
  begin
    //paraliza o timer
    Timer1.Enabled := false;
    try
     // msgLic := VerificarLicenca;      --comentado ate ajustar questao do servidor
      msgLic := 'ok';
    finally
      //informações de licença
      if msgLic = 'ok' then
      begin
        licenciado := true;
        //Agora envia o CPF ou CNPJ para não haver desvio de base
        with dmPadrao.cdsTmp do
        begin
          Active := false;
          CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa = 1';
          Active := true;
          msgLic := msgLic + FieldByName('idCnpjCpf').AsString;
        end;
      end
      else
      begin
        if msgLic = 'Block' then
        begin
          msgLic := 'bl';
          sql := 'UPDATE SegGrupoPermissao SET excluir = ' + QuotedStr('N') + ', ' +
                                               'incluir = ' + QuotedStr('N') + ', ' +
                                               'editar = ' + QuotedStr('N');
          dmPadrao.dbConexao.ExecuteDirect(sql);

          //Agora envia o CPF ou CNPJ para não haver desvio de base
          with dmPadrao.cdsTmp do
          begin
            Active := false;
            CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa = 1';
            Active := true;
            msgLic := msgLic + FieldByName('idCnpjCpf').AsString;
          end;
        end
        else
          msgLic := 'Problemas na ativação do Nilus! *** MSG: ' + msgLic + ' ***';

        licenciado := false;
       //Sends the messages to all clients connected to the server
       for i:=0 to dmServer.ServerSocket.Socket.ActiveConnections-1 do
         dmServer.ServerSocket.Socket.Connections[i].SendText(msgLic);
      end;
      Timer1.Enabled := true;
    end; //segundo fynally
  end;

  primeira := false;
end;

procedure TFrmSrvMain.ClickTrayIcon(var msg: TMessage);
begin
  //
  Case msg.lparam Of
    //
    WM_LBUTTONUP, WM_LBUTTONDBLCLK :
    {WM_BUTTONDOWN may cause next Icon to activate if this icon is deleted -
        (Icons shift left and left neighbor will be under mouse at ButtonUp time)}
    Begin
      //
      Application.Restore;  {restore the application}
      //
      If (WindowState = wsMinimized) Then
         WindowState := wsNormal;  {Reset minimized state}
      //
      Visible := True;
      //
      SetForegroundWindow(Application.Handle); {Force form to the foreground }
      //
    End;
  End;
  //
end;

procedure TFrmSrvMain.dspCadastroBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  DmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmSrvMain.EDVersaoChange(Sender: TObject);
begin
  if not altera then
  begin

    if messagedlg('Tem certeza que deseja alterar a versão?' + #13 +
                 'Isso poderá deixar o processo de atualização mais lento', mtconfirmation, [mbyes, mbno], 0) = mrno then
      exit;

    if StrToInt(EDVersao.Text) < 0 then
    begin
      altera := true;
      EDVersao.Text := '0';
      altera := false;
    end;

    if StrToInt(EDVersao.Text) > id then
    begin
      altera := true;
      EDVersao.Text := IntToStr(id);
      altera := false;
    end;
  end;

end;

end.
