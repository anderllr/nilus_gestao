unit uFuncao;
{******************************************************************************
  Autor     : Anderson Rocha

  Unit de Funcoes usadas no aplicativo (não banco de dados)
*******************************************************************************}
interface

uses
  Windows, forms, Controls, StdCtrls, Graphics, ExtCtrls, DBCtrls, SysUtils,
  dialogs, Messages, DBGrids, Math, variants, Classes, CEdit, CDBEdit, CMemo,
  CDBMemo, CDBLookupCombo, CButtonGroup, uClasses, DB, DBClient, DateUtils,
  SqlExpr, DBXCommon, CDBComboBox, CDBRadioGroup, CDBCheckBox, IniFiles, CBitBtn,
  cxGridCustomView, ClipBrd, CDBGrid, ActnList, ShellAPI, CDBButtonEdit, mimemess, mimepart, smtpSend,
  cxGridExportLink, ExtDlgs, cxShellBrowserDialog, cxGrid;

type
  ModoExtData=(exdSemana,exdMes, exdDMA,exdSemanaDMA);
  Tfuncao = class
  private
    {private declarations}
  public
    {public declarations}
    function cpf(num: string): boolean;
    function cnpj(num: string): boolean;
    procedure CorEdit(Sender : TObject; Par : char);
    function  TiraMascara(Valor : String): String;
    function  AnoBiSexto(Ayear: Integer): Boolean;
    function  DiasPorMes(Ayear, AMonth: Integer): Integer;
    function  Mascara(vl_entrada : string; tipo : byte; mascara: string): string;
    procedure ValidaData(Sender : TObject);
    procedure ValidaDataMY(Sender : TObject);
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure PaintGradiente(BMP: TImage; CorIni, CorFim: TColor; Retangular: boolean);
    function Crypt(Action, Src: String): String;
    function ArredondaMoeda(valor : Double) : Currency;
    function FormataEdit(valor : Double; tam : byte) : String;
    Function ValidaCnpj_Cpf(Sender : TCustomEdit) : Boolean;
    function ConverteData(Data: TDateTime): String;
    function ConverteDataCrystal(Data: TDateTime): String;
    Function TiraPontoValor(Valor : String) : Currency;
    Function TiraVirgula(Valor: String) : String;
    procedure AbreFrm(Classe: TFormClass; var Referencia: TForm);
    procedure SomenteLeitura(Sender : Array of TObject; Status: Boolean);
    procedure FieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    function  ExecutaProc(conexao: TSqlConnection; cds: TClientDataSet;
              par : Array of TObject; proc: string): Boolean;
    function RetornaValorEField(campo: TObject; op: byte): string;
    procedure ValidaHora(Sender : TObject);
    function DayOfTheWeek(const Date: TDateTime): String;
    function Feriado(Data : TDateTime) : Boolean;
    function Atualizacao(modulo: string): Boolean;
    function ConfigIni(Topico : String; Identificador : String; Valor : String; Tipo : byte) : String;
    function GetFileLastWriteTime(sFileName : string ) : TDateTime;
    function GetBuildInfo:string;
    function VerificaAlteracoes(tabelas: array of TClientDataSet): boolean;
    function VerCampoRequerido(tabelas: array of TClientDataSet; exceto: string): boolean;
    function GetTemporaryDir: String;
    procedure GravaSec(chave: array of TObject; DataSet : TDataSet; Salvar, Cancelar, Excluir, Novo, Sender: TCBitBtn; campo_auto: string);
    procedure UpdateChave(tabela: TCustomClientDataSet; vl_chave : Array of TObject);
    procedure HabilitaBotoesSec(DataSet : TDataSet; Salvar, Cancelar, Excluir, Novo: TCBitBtn);
    function ChangeKey(Key : Char) : Char;
    function UltDiaDoMes(Data: TDateTime): Word;
    function RetCampoSintegra(valor: string; tipo: string; tamanho: integer): string;
    function RetDataSintegra(data: TDateTime): string;
    function ArrendDecimal(valor : Currency): Currency;
    function ChkInscEstadual(ie, uf : string) : Boolean;
    function BuscaChaveSec(Tabela: TClientDataSet; vl_chave: Array of TObject): Boolean;
    procedure MarcaGrid(marca: boolean; Grid: TCDBGrid);
    procedure VerPermissao(idUsuarioGrupo: integer; idSegModulo: integer; cdsTemp : TClientDataSet; Formulario: TForm);
    procedure ExcluiAntigos;
    Function StrZero( nInt,nTam:Integer ):String;
    Function Year( dData:TDateTime ): Integer;
    Function Month( dData:TDateTime ): Integer;
    Function Day( dData:TDateTime ): Integer;
    Function Hour( dData: TDateTime ): Integer;
    Function Minute( dData: TDateTime ): Integer;
    Function Second( dData: TDateTime ): Integer;
    Function CDoW( dData:TDateTime;Modo:ModoExtData ):String;
    Procedure ASort( var aVetor: array of integer );
    Function SepararValores(sVal: Array of String; sSep: String): String;
    function SIS_Alterar_Where(sInstrucao, sNovoWhere: String): String;
    Function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
    function AppIsRunning(ActivateIt: boolean) : Boolean;
    function VerExistFile(f : string): boolean;
    function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
    function PreencheString(campo, valor, orientacao: string;tamanho:integer): string;
    function EnviarEmail (sSmtpHost, sSmtpPort, sSmtpUser, sSmtpPasswd, sFrom, sTo,
                               sAssunto: String; sMensagem : TStrings; SSL : Boolean;
                               sCC: TStrings=nil; Anexos:TStrings=nil; PedeConfirma: Boolean = False;
                               AguardarEnvio: Boolean = False; NomeRemetente: String = '') : boolean;
    //
    Function Remove( s, ss: String ):String;
    function Extenso(Valor: Real; MF: string; Moeda: Boolean): string;
    procedure ExportaExcell(nome: string; cxGrid: TcxGrid);
    procedure AtribuiMaskField(Sender, campo : TField);
    function IsNumeric(S : String) : Boolean;
   end;

var
  funcao : Tfuncao;

implementation

uses ButtonGroup;

const
 OrdZero =  Ord('0');
//************************************************************************************

(***********************************************************)
Function Tfuncao.StrZero( nInt,nTam:Integer ):String;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To nTam Do X:=X+'0';
X:=X+IntToStr(nInt);
Result:=Copy(X,Length(X)-nTam+1,nTam)
End;

(***********************************************************)
Function Tfuncao.Year( dData:TDateTime ): Integer;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Year:=a;
End;

(***********************************************************)
Function Tfuncao.Month( dData:TDateTime ): Integer;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Month:=m;
End;

(***********************************************************)
Function Tfuncao.Day( dData:TDateTime ): Integer;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Day:=d;
End;

(***********************************************************)
Function Tfuncao.Hour( dData:TDateTime ): Integer;
(***********************************************************)
Var h,m,s, ms: Word;
Begin
DecodeTime( dData,h,m,s,ms );
Hour:=h;
End;

(***********************************************************)
Function Tfuncao.Minute( dData:TDateTime ): Integer;
(***********************************************************)
Var h,m,s,ms: Word;
Begin
DecodeTime( dData,h,m,s,ms );
Minute:=m;
End;

(***********************************************************)
Function Tfuncao.Second( dData:TDateTime ): Integer;
(***********************************************************)
Var h,m,s,ms: Word;
Begin
DecodeTime( dData,h,m,s,ms );
Second:=s;
End;

(***********************************************************)
Function Tfuncao.CDoW( dData:TDateTime;Modo:ModoExtData ):String;
(***********************************************************)
const aDiaSemana: Array[1..7] of String =
      ('Domingo','Segunda','Terça','Quarta','Quinta',
       'Sexta','Sábado');
    aMeses: Array[1..12] of String =
      ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto',
       'Setembro','Outubro','Novembro','Dezembro');
Begin
If Modo=exdSemana Then
   CDoW:=aDiaSemana[DayOfWeek( dData )]
Else If Modo=exdMes Then
   CDoW:=aMeses[Month( dData )]
Else If Modo=exdDMA Then
   CDoW:=IntToStr( Day(dData) )+' de '+
         aMeses[Month(dData)]+' de '+
         FormatFloat('#,##0', Year(dData))
Else If Modo=exdSemanaDMA Then
   CDoW:=aDiaSemana[DayOfWeek( dData )]+', '+
         IntToStr( Day(dData) )+' de '+
         aMeses[Month(dData)]+' de '+
         FormatFloat('#,##0', Year(dData))
End;

(***********************************************************)
Function Tfuncao.Remove( s, ss: String ):String;
(***********************************************************)
Begin
  While Pos(ss, s) > 0 Do
     Delete(s, Pos(ss, s), Length(ss));
  Result := s;
End;

(************************************************************)
function Tfuncao.AppIsRunning(ActivateIt: boolean) : Boolean;
(************************************************************)
var hSem : THandle;
    hWndMe : HWnd;
    AppTitle: string;
begin
  Result := False;
  AppTitle := Application.Title;
  hSem := CreateSemaphore(nil, 0, 1, pChar(AppTitle));
  if ((hSem <> 0) AND (GetLastError() = ERROR_ALREADY_EXISTS)) then
     begin
       CloseHandle(hSem);
       Result := True;
     end;
  if Result and ActivateIt then
     begin
       Application.Title :=  'zzzzzzz';
       hWndMe := FindWindow(nil, pChar(AppTitle));
       if (hWndMe <> 0) then
         begin
           if IsIconic(hWndMe) then
              begin
                ShowWindow(hWndMe, SW_SHOWNORMAL);
              end
           else
              begin
                SetForegroundWindow(hWndMe);
              end;
         end;
     end;
end;

(***********************************************************)
Function Tfuncao.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
(***********************************************************)
Begin
  //
  If Expressao Then
     Result := ParteTRUE
  Else
     Result := ParteFALSE;
  //
End;

function Tfuncao.IsNumeric(S: String): Boolean;
var
  i: integer;
begin
  Result := TryStrToInt(s, i);
end;

(***********************************************************)
Procedure Tfuncao.ASort( var aVetor: array of integer );
(***********************************************************)
Var nTam,nI,nJ,nK,nTemp: Integer;
begin
     nTam:=High( aVetor );
     nI:=(nTam+1) Div 2;
     While nI>0 Do
           Begin
           For nJ:=nI To nTam Do
               Begin
                    nK:=nJ-nI;
                    While nK>=0 Do
                          If aVetor[nK]>aVetor[nK+nI] Then
                             Begin
                               nTemp:=aVetor[nK];
                               aVetor[nK]:=aVetor[nK+nI];
                               aVetor[nK+nI]:=nTemp;
                               nK:=nK-nI;
                             End
                          Else
                             nK:=-1;
               End;
           nI:=nI div 2;
           End;
End;

(************************************************************)
Function Tfuncao.SepararValores(sVal: Array of String; sSep: String): String;
(************************************************************)
Var i: Integer;
begin
  //
  Result := '';
  //
  For i := 0 To High(sVal) Do
      Begin
        //
        If Trim(sVal[i]) <> '' Then
           Begin
             //
             If (Result = '') Then
                Result := Trim(sVal[i])
             Else
                Result := Result + sSep + Trim(sVal[i]);
             //
           End;
        //
      End;
  //
end;

//
function Tfuncao.SIS_Alterar_Where(sInstrucao, sNovoWhere: String): String;
Var sSelect, sFrom, sWhere, sGroupBy, sPlan, sOrderBy: String;
    sQuebrado: TStringList;
    i: Integer;
Begin
  //
  sQuebrado := TStringList.Create;
  //
  If (Pos('FROM', sInstrucao) > 0) Then
     Begin
       //
       sQuebrado.Add(Copy(sInstrucao, 1, Pos('FROM', sInstrucao) - 1));
       sInstrucao := Copy(sInstrucao, Pos('FROM', sInstrucao), Length(sInstrucao));
       //
     End;
  //
  If (Pos('WHERE', sInstrucao) > 0) Then
     Begin
       //
       sQuebrado.Add(Copy(sInstrucao, 1, Pos('WHERE', sInstrucao) - 1));
       sInstrucao := Copy(sInstrucao, Pos('WHERE', sInstrucao), Length(sInstrucao));
       //
     End;
  //
  If (Pos('GROUP BY', sInstrucao) > 0) Then
     Begin
       //
       sQuebrado.Add(Copy(sInstrucao, 1, Pos('GROUP BY', sInstrucao) - 1));
       sInstrucao := Copy(sInstrucao, Pos('GROUP BY', sInstrucao), Length(sInstrucao));
       //
     End;
  //
  If (Pos('PLAN', sInstrucao) > 0) Then
     Begin
       //
       sQuebrado.Add(Copy(sInstrucao, 1, Pos('PLAN', sInstrucao) - 1));
       sInstrucao := Copy(sInstrucao, Pos('PLAN', sInstrucao), Length(sInstrucao));
       //
     End;
  //
  If (Pos('ORDER BY', sInstrucao) > 0) Then
     Begin
       //
       sQuebrado.Add(Copy(sInstrucao, 1, Pos('ORDER BY', sInstrucao) - 1));
       sInstrucao := Copy(sInstrucao, Pos('ORDER BY', sInstrucao), Length(sInstrucao));
       //
     End;
  //
  sQuebrado.Add(sInstrucao);
  //
  For i := 0 to sQuebrado.Count - 1 Do
      Begin
        //
        If (Copy(sQuebrado[i], 1, 6) = 'SELECT') Then
           sSelect := sQuebrado[i];
        //
        If (Copy(sQuebrado[i], 1, 4) = 'FROM') Then
           sFrom := sQuebrado[i];
        //
        If (Copy(sQuebrado[i], 1, 5) = 'WHERE') Then
           sWhere := sQuebrado[i];
        //
        If (Copy(sQuebrado[i], 1, 8) = 'GROUP BY') Then
           sGroupBy := sQuebrado[i];
        //
        If (Copy(sQuebrado[i], 1, 4) = 'PLAN') Then
           sPlan := sQuebrado[i];
        //
        If (Copy(sQuebrado[i], 1, 8) = 'ORDER BY') Then
           sOrderBy := sQuebrado[i];
        //
      End;
  //
  Result := funcao.SepararValores([sSelect, sFrom, sNovoWhere, sGroupBy, sPlan, sOrderBy], ' ');
  //
  sQuebrado.Free;
  //
End;

procedure Tfuncao.CorEdit(Sender : TObject; Par : char);
var
  corentrada, corsaida : TColor;
begin
  //transforma o caracter para maiuscula
  Par := UpCase(Par);
  corentrada := $00EAFFFF;
  corsaida := clWindow;
  if (Sender is TCEdit) then
  begin
    //verifica se eh 'E' (entrada) ou 'S' (saida) do Edit
    if not ((Sender as TCEdit).ReadOnly) then
      case Par of
        'E' : (Sender as TCEdit).Color := corentrada;
        'S' : (Sender as TCEdit).Color := corsaida;
      end;
  end
  else
    if (Sender is TCMemo) then
    begin
    //verifica se eh 'E' (entrada) ou 'S' (saida) do Edit
      if not ((Sender as TCMemo).ReadOnly) then
        case Par of
          'E' : (Sender as TCMemo).Color := corentrada;
          'S' : (Sender as TCMemo).Color := corsaida;
        end
    end
    else
      if (Sender is TCDBEdit) then
      begin //verifica se eh 'E' (entrada) ou 'S' (saida) do Edit
        if not ((Sender as TCDBEdit).ReadOnly) then
          case Par of
            'E' : (Sender as TCDBEdit).Color := corentrada;
            'S' : (Sender as TCDBEdit).Color := corsaida;
          end
      end
      else
        if (Sender is TCDBMemo) then
        begin //verifica se eh 'E' (entrada) ou 'S' (saida) do Edit
          if not ((Sender as TCDBMemo).ReadOnly) then
            case Par of
              'E' : (Sender as TCDBMemo).Color := corentrada;
              'S' : (Sender as TCDBMemo).Color := corsaida;
            end
        end
        else
          if (Sender is TCDBLookupCombo) then
          begin //verifica se eh 'E' (entrada) ou 'S' (saida) do Edit
            if not ((Sender as TCDBLookupCombo).ReadOnly) then
              case Par of
                'E' : (Sender as TCDBLookupCombo).Color := corentrada;
                'S' : (Sender as TCDBLookupCombo).Color := corsaida;
              end;
          end;
end;

//************************************************************************************
function Tfuncao.TiraMascara(Valor : String): String;
Var
  i : Byte;
Begin

  Result := '';
  If Trim(valor) <> '' Then
    For i := 0 to Length(Valor) do
      If not (Valor[i] in ['/', '.', ',', '-', ':']) Then
        Result := Result + Valor[i];
  Result := Trim(Result);
end;
//************************************************************************************
function Tfuncao.AnoBiSexto(Ayear: Integer): Boolean;
begin
  // Verifica se o ano é Bi-Sexto
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
  (AYear mod 400 = 0));
end;
//************************************************************************************
function Tfuncao.DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
var
  dias : integer;
begin
  dias := DaysInMonth[AMonth];
  if (AMonth = 2) then
    if AnoBiSexto(AYear) then
      Inc(dias);

  Result := dias;
end;
function Tfuncao.DifDias(DataVenc, DataAtual: TDateTime): String;
{Retorna a diferenca de dias entre duas datas}
Var Data: TDateTime;
    dia, mes, ano: Word;
begin
  if DataAtual < DataVenc then
  begin
    Result := 'A data data atual não pode ser menor que a data inicial';
  end
  else
  begin
    Data := DataAtual - DataVenc;
    DecodeDate( Data, ano, mes, dia);
    Result := FloatToStr(Data);
  end;
end;

//************************************************************************************
function Tfuncao.EnviarEmail(sSmtpHost, sSmtpPort, sSmtpUser, sSmtpPasswd,
  sFrom, sTo, sAssunto: String; sMensagem: TStrings; SSL: Boolean; sCC,
  Anexos: TStrings; PedeConfirma, AguardarEnvio: Boolean;
  NomeRemetente: String): boolean;
var
  smtp: TSMTPSend;
  msg_lines: TStringList;
  m:TMimemess;
  p: TMimepart;
  i : integer;
begin
  msg_lines := TStringList.Create;
  smtp := TSMTPSend.Create;
  m:=TMimemess.create;
  try

    p := m.AddPartMultipart('mixed', nil);
    if sMensagem <> nil then
       m.AddPartText(sMensagem, p);
//    SaveToStream(StreamNFe) ;
//    m.AddPartBinary(StreamNFe,copy(NFe.infNFe.ID, (length(NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml', p);

    if assigned(Anexos) then
      for i := 0 to Anexos.Count - 1 do
      begin
        m.AddPartBinaryFromFile(Anexos[i], p);
      end;

    m.header.tolist.add(sTo);

    if Trim(NomeRemetente) <> '' then
      m.header.From := Format('%s<%s>', [NomeRemetente, sFrom])
    else
      m.header.From := sFrom;

    m.header.subject:= sAssunto;
    m.Header.ReplyTo := sFrom;
    if PedeConfirma then
       m.Header.CustomHeaders.Add('Disposition-Notification-To: '+sFrom);
    m.EncodeMessage;

    msg_Lines.AddStrings(m.Lines);

    smtp.UserName := sSmtpUser;
    smtp.Password := sSmtpPasswd;

    smtp.TargetHost := sSmtpHost;
    smtp.TargetPort := sSmtpPort;

    smtp.FullSSL := SSL;
    smtp.AutoTLS := true;

    if not smtp.Login() then
      raise Exception.Create('SMTP ERROR: Login:' + smtp.EnhCodeString);
//    if not smtp.StartTLS() then
//      raise Exception.Create('SMTP ERROR: StartTLS:' + smtp.EnhCodeString);

    if not smtp.MailFrom(sFrom, Length(sFrom)) then
      raise Exception.Create('SMTP ERROR: MailFrom:' + smtp.EnhCodeString);
    if not smtp.MailTo(sTo) then
      raise Exception.Create('SMTP ERROR: MailTo:' + smtp.EnhCodeString);
    if not smtp.MailData(msg_lines) then
      raise Exception.Create('SMTP ERROR: MailData:' + smtp.EnhCodeString);

    if not smtp.Logout() then
      raise Exception.Create('SMTP ERROR: Logout:' + smtp.EnhCodeString);

  finally
    msg_lines.Free;
    smtp.Free;
  end;
end;

procedure Tfuncao.ExcluiAntigos;
 //procedure q verifica os módulos antigos e apaga
var
  arq : string;
begin
  arq := 'Financas.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Cadastros.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Compras.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Contabil.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Custos.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Patrimon.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Patrimonial.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Portal.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'ServerDesenv.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Fiscal.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'Instalador.exe';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'dbxmss30.dll';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'dbxadapter30.dll';
  if FileExists(arq) then
    DeleteFile(arq);

  arq := 'midas.dll';
  if FileExists(arq) then
    DeleteFile(arq);

end;

function Tfuncao.ExecutaProc(conexao: TSqlConnection; cds: TClientDataSet;
  par: array of TObject; proc: string): Boolean;
var
  t : TDBXTransaction;
  erro, i, tr : byte;
  msg, valor : string;
begin
  tr := 0;
  conexao.CloseDataSets;
  if conexao.InTransaction then
    tr := 1; //significa q já está em transação

  screen.Cursor := crSqlWait;
  erro := 0;
  //marca a transação
  if tr = 0 then
  begin
    conexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  end;
  try
    with cds do
    begin
      Active := false;
      CommandText := 'EXEC ' + proc + ' ';
      for i := 0 to high(par) do
      begin
        if par[i] = nil then
          valor := 'NULL'
        else
          valor := Funcao.RetornaValorEField(par[i], 3);
          if trim(valor) = '' then
            valor := 'NULL';
          if i = 0 then
            CommandText := CommandText + valor
          else
            CommandText := CommandText + ', ' + valor;
      end;
      //showmessage(CommandText);
      //exit;
//      ClipBoard.asText := CommandText;
      Active := true;
      if Assigned(cds.FieldDefs.Find('msg') as TFieldDef) then
        if cds.FieldByName('msg').AsString <> 'OK' then
        begin
          msg := cds.FieldByName('msg').AsString;
          erro := 1;
        end;
    end;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if erro = 0 then
  begin
    if tr = 0 then
      Conexao.CommitFreeAndNil(t);
    Result := true;
  end
  else
  begin
    if tr = 0 then
      Conexao.RollbackFreeAndNil(t);
    if trim(msg) <> '' then
      messagedlg(msg, mterror, [mbok], 0);
    Result := false;
  end;
end;

procedure Tfuncao.ExportaExcell(nome: string; cxGrid: TcxGrid);
var
  caminho : String;
  ano, mes, dia : word;
  AbreArq: TOpenTextFileDialog;
  AbrePasta: TcxShellBrowserDialog;
  Handle : THandle;
begin
  try
    caminho := ExtractFileDir(Application.ExeName)+ '\Arquivos';
    if not(DirectoryExists(caminho)) then
      CreateDir(caminho);

    caminho := caminho + '\'+ nome + '.xls';
    if FileExists(caminho) then
       if MessageDlg('Essa pasta já contém um arquivo com esse nome. Deseja substituí-lo?', mtInformation,[mbYes,mbNo],0) = mrNo then
          Exit;
    ExportGridToExcel(caminho, cxGrid);
    if FileExists(caminho) then
    begin
      MessageDlg('Arquivo Gerado com Sucesso!', mtInformation, [mbOK], 0);
      ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
    end;

  except
    on E: Exception do
    begin
       raise exception.create('Erro! Arquivo não foi criado'+ e.message);
    end;
  end;
end;

//************************************************************************************
procedure Tfuncao.MarcaGrid(marca: boolean; Grid: TCDBGrid);
begin
  with (Grid.DataSource.DataSet) do
  begin
    First;
    while not Eof do
    begin
      if not (State in [dsInsert, dsEdit]) then
        Edit;
      FieldByName('SEL').AsBoolean := marca;
      Post;
      Next;
    end;
    First;
  end;
end;

function Tfuncao.Mascara(vl_entrada : string; tipo : byte; mascara: string): string;
  {Procedure que irá gerar a mascara conforme o parametro passado
   0 : Cep
   1 : Cnpj_Cpf
   2 : Classificação de Campos
   3 : Data
   4 : Hora
   5 : NCM
   6 : Moeda;
   99: Mascara Customizada}
var
  i, i2, cont : integer;
  valor, Mask, Mask2 : String;
begin
  if tipo <> 6 then //moeda não pode tirar... senão ele elimina os decimais
    vl_entrada := funcao.TiraMascara(trim(vl_entrada));
  if trim(mascara) <> '' then
    tipo := 99;

  case tipo of
    0 : Mask := '**.***-***';
    1 : If Length(trim(vl_entrada)) = 11 Then
        begin
          if funcao.cpf(trim(vl_entrada)) then
            Mask := '***.***.***-**'
          else
            Mask := trim(vl_entrada);
        end
        Else
          If Length(trim(vl_entrada)) = 14 Then
          begin
            if funcao.cnpj(trim(vl_entrada)) then
              Mask := '**.***.***/****-**'
            else
              Mask := trim(vl_entrada);            
          end
          Else
            Mask := trim(vl_entrada);
    2 : If Length(trim(vl_entrada)) = 2 tHEN
          exit
        Else
          If Length(trim(vl_entrada)) = 4 Then
            Mask := '**.**'
          Else
            If Length(trim(vl_entrada)) = 6 Then
              Mask := '**.**.**';
    3 : Mask := '**/**/****';
    4 : Mask := '**:**:**';
    5 : Mask := '**.**.****';
    6 : begin  //moeda
          if vl_entrada = '' then
            vl_entrada := '0';
          Mask := '0.';
          Mask2 := '#,';
          for i := 1 to FormatSettings.CurrencyDecimals do
          begin
            Mask := Mask + '0';
            Mask2 := Mask2 + '#';
          end;
          Mask := Mask2 + Mask;
        end;
    99: Mask := mascara;
  end;
  Valor := '';
  i2 := 1;
  cont := 0;
  if Mask <> trim(vl_entrada) then
  begin
    if tipo = 6 then  //moeda
      Valor := FormatFloat(Mask, StrToFloat(vl_entrada))
    else
      for i := 1 to Length(trim(Mask)) do
        if cont < length(vl_entrada) then
        begin
          If copy(trim(Mask), i, 1) = '*' Then
          begin
            Valor := Valor + Copy(trim(vl_entrada), i2, 1);
            i2 := i2 + 1;
            cont := cont + 1;
          end
          Else
            If copy(trim(Mask), i, 1) <> '*' Then
              Valor := Valor + Copy(trim(Mask), i, 1);
        end;
  end
  else
    Valor := vl_entrada;
  Result := Valor;
end;
//************************************************************************************
procedure Tfuncao.ValidaData(Sender : TObject);
Var
  Tamanho : Byte;
  DiasMesAtual, MesAtual, AnoAtual, DiaAtual : Word;
  erro : Boolean;
  Vl_Inicial, Dia, Mes, Ano, vl_final : String;
  Data : TDateTime;
begin
  erro := False;
  Vl_Inicial := (Sender as TCustomEdit).Text;
  if Trim(Vl_Inicial) = '' Then
    exit;

  vl_final := funcao.TiraMascara((Sender as TCustomEdit).Text);

  Tamanho := Length(Trim(vl_final));
  DecodeDate(Date, AnoAtual, MesAtual, DiaAtual);
  DiasMesAtual := DiasPorMes(AnoAtual, MesAtual);
  Mes := IntToStr(MesAtual);
  If Length(Trim(Mes)) = 1 Then
    Mes := '0' + Mes;
  If Tamanho = 0 Then
    Exit;
  case Tamanho of
  1 : Begin
        If (StrToInt(vl_final) > 0) Then
          vl_final := '0' + vl_final + Mes + IntToStr(AnoAtual)
        Else
          erro := True;
      end;
  2 : Begin
        If (StrToInt(vl_final) > 0) And (StrToInt(vl_final) <= DiasMesAtual) Then
          vl_final := vl_final + Mes + IntToStr(AnoAtual)
        Else
          erro := True;
      end;
  3 : Begin
        Dia := Copy(vl_final, 1, 2);
        Mes := Copy(vl_final, 3, 1);
        If (StrToInt(Mes) in [1..12]) Then
        begin
          If (StrToInt(Dia) > 0) And (StrToInt(Dia) <= DiasPorMes(AnoAtual, StrToInt(Mes))) Then
            vl_final := Dia + '0' + Mes + IntToStr(AnoAtual)
          Else
            erro := True;
        end
        Else
          erro := True;
      end;
  4 : Begin
        Dia := Copy(vl_final, 1, 2);
        Mes := Copy(vl_final, 3, 2);
        If (StrToInt(Mes) in [1..12]) Then
        begin
          If (StrToInt(Dia) > 0) And (StrToInt(Dia) <= DiasPorMes(AnoAtual, StrToInt(Mes))) Then
            vl_final := Dia + Mes + IntToStr(AnoAtual)
          Else
            erro := True;
        end
        Else
          erro := True;
      end;
  5 : erro := true;
  6..8 : Begin
           Dia := Copy(vl_final, 1, 2);
           Mes := Copy(vl_final, 3, 2);
           Ano := trim(Copy(vl_final, 5, 4));
           if Length(Ano) = 2 then
             Ano := copy(IntToStr(AnoAtual), 1, 2) + Ano
           else
             if Length(Ano) = 3 then
               Ano := copy(IntToStr(AnoAtual), 1, 1) + Ano;

           If (StrToInt(Mes) in [1..12]) Then
           begin
             If (StrToInt(Dia) <= 0) or (StrToInt(Dia) > DiasPorMes(StrToInt(Ano), StrToInt(Mes))) Then
               erro := True;
           end
           Else
             erro := True;
         end;
  end;
  If erro Then
  begin
    vl_final := Vl_Inicial;
//    Messagedlg('Data Inválida!', mtwarning, [mbok], 0);
//    (Sender as TCustomEdit).SetFocus;
    exit;
  end
  Else
    vl_final := funcao.Mascara(vl_final, 3, '');

  Try
    Data := StrToDate(vl_final);
    vl_final := DateToStr(Data);
  Except
    on EConvertError do
    begin
      vl_final := Vl_Inicial;
//      Messagedlg('Data Inválida!', mtwarning, [mbok], 0);
    end;
  end;
   //a partir daqui atribui o valor no edit
  (Sender as TCustomEdit).SetFocus;
  if (sender is TCDBEdit) then
  begin
    if (sender as TCDBEdit).DataSource.DataSet.State in [dsInsert, dsEdit] then
     (sender as TCDBEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBEdit).DataField).AsString := vl_final;
  end
  else
    (Sender as TCustomEdit).Text := vl_final;
end;
//************************************************************************************
procedure Tfuncao.ValidaDataMY(Sender : TObject);
Var
  Tamanho : Byte;
  DiasMesAtual, MesAtual, AnoAtual, DiaAtual : Word;
  erro : Boolean;
  Vl_Inicial, Dia, Mes, vl_final : String;
  Data : TDateTime;
begin
  erro := False;
  Vl_Inicial := (Sender as TCustomEdit).Text;
  if Trim(Vl_Inicial) = '' Then
    exit;

  vl_final := funcao.TiraMascara((Sender as TCustomEdit).Text);

  Tamanho := Length(Trim(vl_final));
  DecodeDate(Date, AnoAtual, MesAtual, DiaAtual);
  DiasMesAtual := DiasPorMes(AnoAtual, MesAtual);
  Mes := IntToStr(MesAtual);
  If Length(Trim(Mes)) = 1 Then
    Mes := '0' + Mes;
  If Tamanho = 0 Then
    Exit;
  case Tamanho of
  1 : Begin
        If (StrToInt(vl_final) > 0) Then
          vl_final := '010' + vl_final + IntToStr(AnoAtual)
        Else
          erro := True;
      end;
  2 : Begin
        If (StrToInt(vl_final) > 0) And (StrToInt(vl_final) <= DiasMesAtual) Then
          vl_final := '01' + vl_final + IntToStr(AnoAtual)
        Else
          erro := True;
      end;
  3 : Begin
        Dia := '01';
        Mes := Copy(vl_final, 1, 2);
        AnoAtual := StrToInt(Copy(vl_final, 3,1));
        AnoAtual := AnoAtual + 2000;
        If (StrToInt(Mes) in [1..12]) Then
        begin
          If (StrToInt(Dia) > 0) And (StrToInt(Dia) <= DiasPorMes(AnoAtual, StrToInt(Mes))) Then
            vl_final := Dia + Mes + IntToStr(AnoAtual)
          Else
            erro := True;
        end
        Else
          erro := True;
      end;
  4 : Begin
        Dia := '01';
        Mes := Copy(vl_final, 1, 2);
        AnoAtual := StrToInt(Copy(vl_final, 3,2));
        AnoAtual := AnoAtual + 2000;
        If (StrToInt(Mes) in [1..12]) Then
        begin
          If (StrToInt(Dia) > 0) And (StrToInt(Dia) <= DiasPorMes(AnoAtual, StrToInt(Mes))) Then
            vl_final := Dia + Mes + IntToStr(AnoAtual)
          Else
            erro := True;
        end
        Else
          erro := True;
      end;
  5 : erro := true;
  6 : Begin
           Dia := '01';
           Mes := Copy(vl_final, 1, 2);
           AnoAtual := StrToInt(Copy(vl_final, 3,4));
           vl_final := Dia + Mes + IntToStr(AnoAtual);
           If (StrToInt(Mes) in [1..12]) Then
           begin
             If (StrToInt(Dia) <= 0) or (StrToInt(Dia) > DiasPorMes(AnoAtual, StrToInt(Mes))) Then
               erro := True;
           end
           Else
             erro := True;
         end;
  end;
  If erro Then
  begin
    vl_final := Vl_Inicial;
//    Messagedlg('Data Inválida!', mtwarning, [mbok], 0);
//    (Sender as TCustomEdit).SetFocus;
    exit;
  end
  Else
    vl_final := funcao.Mascara(vl_final, 3, '');

  Try
    Data := StrToDate(vl_final);
    vl_final := DateToStr(Data);
  Except
    on EConvertError do
    begin
      vl_final := Vl_Inicial;
//      Messagedlg('Data Inválida!', mtwarning, [mbok], 0);
    end;
  end;
   //a partir daqui atribui o valor no edit
  (Sender as TCustomEdit).SetFocus;
  if (sender is TCDBEdit) then
  begin
    if (sender as TCDBEdit).DataSource.DataSet.State in [dsInsert, dsEdit] then
     (sender as TCDBEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBEdit).DataField).AsString := vl_final;
  end
  else
    if (sender is TCDBButtonEdit) then
    begin
      if (sender as TCDBButtonEdit).DataSource.DataSet.State in [dsInsert, dsEdit] then
       (sender as TCDBButtonEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBButtonEdit).DataField).AsString := vl_final;
    end
    else
      (Sender as TCustomEdit).Text := vl_final;
end;
//************************************************************************************

procedure Tfuncao.ValidaHora(Sender: TObject);
Var
  Tamanho : Byte;
  erro : Boolean;
  Vl_Inicial, Hora, Minuto, Segundo, vl_final : String;
  Horario : TDateTime;
begin
  erro := False;
  Vl_Inicial := (Sender as TCustomEdit).Text;
  if Trim(Vl_Inicial) = '' Then
    exit;

  vl_final := funcao.TiraMascara((Sender as TCustomEdit).Text);

  Tamanho := Length(Trim(vl_final));

  If Tamanho = 0 Then
    Exit;
  case Tamanho of
  1 : Begin
        If (StrToInt(vl_final) > 0) Then
          vl_final := '0' + vl_final + '0000'
        Else
          erro := True;
      end;
  2 : Begin
        If (StrToInt(vl_final) in [0..23]) Then
          vl_final := vl_final + '0000'
        Else
          erro := True;
      end;
  3 : Begin
        Hora := Copy(vl_final, 1, 2);
        Minuto := Copy(vl_final, 3, 1);
        If (StrToInt(hora) in [0..23]) and (StrToInt(minuto) in [0..59]) Then
           vl_final := Hora + '0' + Minuto + '00'
        Else
          erro := True;
      end;
  4 : Begin
        Hora := Copy(vl_final, 1, 2);
        Minuto := Copy(vl_final, 3, 1);
        If (StrToInt(hora) in [0..23]) and (StrToInt(minuto) in [0..59]) Then
           vl_final := Hora + Minuto + '00'
        Else
          erro := True;
      end;
  5 : begin
        Hora := Copy(vl_final, 1, 2);
        Minuto := Copy(vl_final, 3, 1);
        Segundo := Copy(vl_final, 5,1);
        If (StrToInt(hora) in [0..23]) and (StrToInt(minuto) in [0..59]) Then
           vl_final := Hora + Minuto + '0' + Segundo
        Else
          erro := True;
      end;
  6 : Begin
        Hora := Copy(vl_final, 1, 2);
        Minuto := Copy(vl_final, 3, 1);
        Segundo := Copy(vl_final, 5,2);
        If (StrToInt(hora) in [0..23]) and (StrToInt(minuto) in [0..59]) and (StrToInt(segundo) in [0..59]) Then
           vl_final := Hora + Minuto + Segundo
        Else
          erro := True;
      end;
  end;
  If erro Then
  begin
    vl_final := Vl_Inicial;
//    Messagedlg('Data Inválida!', mtwarning, [mbok], 0);
//    (Sender as TCustomEdit).SetFocus;
    exit;
  end
  Else
    vl_final := funcao.Mascara(vl_final, 4, '');

  Try
    Horario := StrToTime(vl_final);
    vl_final := TimeToStr(Horario);
  Except
    on EConvertError do
    begin
      vl_final := Vl_Inicial;
//      Messagedlg('Data Inválida!', mtwarning, [mbok], 0);
    end;
  end;
  //FormatDateTime('hh:mm:ss', StrToDateTime(Text));
   //a partir daqui atribui o valor no edit
  (Sender as TCustomEdit).SetFocus;
  if (sender is TCDBEdit) then
  begin
    if (sender as TCDBEdit).DataSource.DataSet.State in [dsInsert, dsEdit] then
     (sender as TCDBEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBEdit).DataField).AsString := vl_final;
  end
  else
    (Sender as TCustomEdit).Text := vl_final;
end;
//************************************************************************************
function Tfuncao.VerCampoRequerido(tabelas: array of TClientDataSet; exceto : string): boolean;
var
  t, i : integer;
  Field, msg : string;
begin
  Result := true;
  for t := 0 to high(tabelas) do
    if tabelas[t].State in [dsInsert, dsEdit] then
    begin
      for i := 0 to tabelas[t].FieldDefs.Count - 1 do
      begin
        Field := tabelas[t].FieldDefs[i].Name;
        if pos(Field, exceto) <= 0 then        
          if (tabelas[t].FieldByName(Field).Required) and (trim(tabelas[t].FieldByName(Field).AsString) = '') then
          begin
            msg := 'Campo ' + tabelas[t].FieldByName(Field).DisplayLabel + ' é obrigatório e não foi preenchido!';
            Result := false;
            messagedlg(msg, mterror, [mbok], 0);
//            raise Exception.Create(msg);
          end; //if tabelas[t].FieldByName(Field).NewValue <>  tabelas[t].FieldByName(Field).OldValue then
      end;  //for i := 0 to tabelas[t].FieldDefs.Count - 1 do
    end; //if tabelas[t].State in [dsInsert, dsEdit] then
end;

function Tfuncao.VerExistFile(f: string): boolean;
begin
  if not (FileExists(f)) then
  begin
    messagedlg('Arquivo inexistente!', mtwarning, [mbok], 0);
    Result := false;
  end
  else
    Result := true;
end;

function Tfuncao.VerificaAlteracoes(tabelas: array of TClientDataSet): boolean;
//função que verifica se tiveram alterações nos campos
var
  t, i : integer;
  Field : string;
begin
  Result := false;
  for t := 0 to high(tabelas) do
    if tabelas[t].State in [dsInsert, dsEdit] then
    begin
      for i := 0 to tabelas[t].FieldDefs.Count - 1 do
      begin
        Field := tabelas[t].FieldDefs[i].Name;
        if (tabelas[t].FieldByName(Field).NewValue <>  tabelas[t].FieldByName(Field).OldValue) and
           (trim(tabelas[t].FieldByName(Field).AsString) <> '') then
        begin
          Result := true;
          exit;
        end; //if tabelas[t].FieldByName(Field).NewValue <>  tabelas[t].FieldByName(Field).OldValue then
      end;  //for i := 0 to tabelas[t].FieldDefs.Count - 1 do
    end; //if tabelas[t].State in [dsInsert, dsEdit] then
end;

//************************************************************************************
procedure Tfuncao.VerPermissao(idUsuarioGrupo, idSegModulo: integer;
  cdsTemp: TClientDataSet; Formulario: TForm);
//rotina que irá tratar as permissões de acesso dos módulos, através dos actions
var
  i, idSegGrupoMenu, idSegMenu : integer;
  sql : string;
begin
  for i := 0 to Formulario.ComponentCount - 1 do
  begin
    if (Formulario.Components[i] is TAction) then
    begin
      if ((Formulario.Components[i] as TAction).Name <> 'fechar') AND ((Formulario.Components[i] as TAction).Name <> 'actSobre') then
      begin
        //busca o código do grupo de menu e do menu
        sql := 'SELECT idSegGrupoMenu, idSegMenu FROM SegMenu WHERE idSegModulo = ' + IntToStr(idSegModulo) +
               ' AND descSegMenuInterno = ' + QuotedStr((Formulario.Components[i] as TAction).Name);
        cdsTemp.Active := false;
        cdsTemp.CommandText := sql;
        cdsTemp.Active := true;
        idSegGrupoMenu := cdsTemp.FieldByName('idSegGrupoMenu').AsInteger;
        idSegMenu := cdsTemp.FieldByName('idSegMenu').AsInteger;
        //agora busca se tem permissão de acesso
        sql := 'SELECT acessar FROM SegGrupoPermissao WHERE idSegModulo = ' + IntToStr(idSegModulo) +
               ' AND idSegGrupoMenu = ' + IntToStr(idSegGrupoMenu) + ' AND idSegMenu = ' + IntToStr(idSegMenu) +
               ' AND idUsuarioGrupo = ' + IntToStr(idUsuarioGrupo);
        cdsTemp.Active := false;
        cdsTemp.CommandText := sql;
        cdsTemp.Active := true;
        (Formulario.Components[i] as TAction).Enabled := cdsTemp.FieldByName('acessar').AsString = 'S';
        cdsTemp.Active := false;
      end;
    end;

  end;
end;

//************************************************************************************
procedure Tfuncao.AppMessage(var Msg: TMsg; var Handled: Boolean);
var
  Classe : Array[0..255] of Char;
  iCount : Integer;
begin
  iCount := 255;
  GetClassName(msg.hwnd, classe, iCount);
  //
  if (screen.ActiveControl is TCustomEdit) Then
  begin
    if (screen.ActiveControl is TCDBEdit) then
    begin
      if ( not (screen.ActiveControl as TCDBEdit).ReadOnly ) then
        funcao.CorEdit(screen.ActiveControl, 'e');
    end
    else if (screen.ActiveControl is TCEdit) then
    begin
      if ( not (screen.ActiveControl as TCEdit).ReadOnly ) then
        funcao.CorEdit(screen.ActiveControl, 'e');
    end;
  end;

  //Enter como TAB e Validação de Campos
  If (Msg.message = WM_KEYDOWN) OR (Msg.message = WM_LBUTTONDOWN) then
  begin
    //
    if (screen.ActiveControl is TDBGrid) then
      exit;
    if (screen.ActiveControl is TcxGridSite) then
      exit;
    //
    if msg.wParam = 13 then
    begin
      if (LowerCase(Classe) <> 'tmemo') and (LowerCase(Classe) <> 'tdbmemo') and
         (LowerCase(Classe) <> 'tbitbtn') and (LowerCase(Classe) <> 'tbutton') and
         (LowerCase(Classe) <> 'tdbrid') and (LowerCase(Classe) <> 'tdbrichedit') and
         (LowerCase(Classe) <> 'tspeedbutton') and (LowerCase(Classe) <> 'TDBLookupComboBox') and
         (LowerCase(Classe) <> 'tcbuttongroup') and (LowerCase(Classe) <> 'tgrpbuttonitem') and
         (LowerCase(Classe) <> 'tcbitbtn') and
         (LowerCase(Classe) <> 'tcxgridsite') then
        msg.wParam := 9;
    end;

    if Msg.wParam in [VK_RETURN,VK_DOWN, VK_TAB, VK_UP, 1, VK_SPACE] then
    begin
      if (screen.ActiveControl is TCustomEdit) Then
      begin
        if ((screen.ActiveControl is TCDBEdit)) then
        begin
          if ((screen.ActiveControl as TCDBEdit).KeyMode in [kmDate, kmDateMY]) and ((screen.ActiveControl as TCDBEdit).ReadOnly = false) then
          begin
            if msg.wParam = VK_SPACE then
            begin
              if not ((screen.ActiveControl as TCDBEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                (screen.ActiveControl as TCDBEdit).DataSource.DataSet.Edit;
              (screen.ActiveControl as TCDBEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBEdit).DataField).AsString := dateToStr(date);
              msg.wParam := 0;
            end //VK_SPACE
            else
              if ((screen.ActiveControl as TCDBEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                if (screen.ActiveControl as TCDBEdit).KeyMode = kmDate then
                  funcao.ValidaData(screen.ActiveControl)
                else
                  funcao.ValidaDataMY(screen.ActiveControl);

          end;  //if ((screen.ActiveControl as TCDBEdit).KeyMode = kmDate) then
          if ((screen.ActiveControl as TCDBEdit).KeyMode = kmTime) and ((screen.ActiveControl as TCDBEdit).ReadOnly = false) then
          begin
            if msg.wParam = VK_SPACE then
            begin
              if not ((screen.ActiveControl as TCDBEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                (screen.ActiveControl as TCDBEdit).DataSource.DataSet.Edit;
              (screen.ActiveControl as TCDBEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBEdit).DataField).AsString := timeToStr(time);
              msg.wParam := 0;
            end //VK_SPACE
            else
              if ((screen.ActiveControl as TCDBEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                funcao.ValidaHora(screen.ActiveControl);
          end; //if ((screen.ActiveControl as TCDBEdit).KeyMode = kmTime) then

        end //if (screen.ActiveControl is TCDBEdit) then
        else
        if ((screen.ActiveControl is TCDBButtonEdit)) then
        begin
          if ((screen.ActiveControl as TCDBButtonEdit).KeyMode in [kmDate, kmDateMY]) and ((screen.ActiveControl as TCDBButtonEdit).ReadOnly = false) then
          begin
            if msg.wParam = VK_SPACE then
            begin
              if not ((screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                (screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.Edit;
              (screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBButtonEdit).DataField).AsString := dateToStr(date);
              msg.wParam := 0;
            end //VK_SPACE
            else
              if ((screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                if (screen.ActiveControl as TCDBButtonEdit).KeyMode = kmDate then
                  funcao.ValidaData(screen.ActiveControl)
                else
                  funcao.ValidaDataMY(screen.ActiveControl);

          end; //if ((screen.ActiveControl as TCDBButtonEdit).KeyMode = kmDate) then
          if ((screen.ActiveControl as TCDBEdit).KeyMode = kmTime) and ((screen.ActiveControl as TCDBEdit).ReadOnly = false) then
          begin
            if msg.wParam = VK_SPACE then
            begin
              if not ((screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                (screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.Edit;
              (screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.FieldByName((screen.ActiveControl as TCDBButtonEdit).DataField).AsString := timeToStr(time);
              msg.wParam := 0;
            end //VK_SPACE
            else
              if ((screen.ActiveControl as TCDBButtonEdit).DataSource.DataSet.State in [dsEdit, dsInsert]) then
                funcao.ValidaHora(screen.ActiveControl);
          end; //if ((screen.ActiveControl as TCDBButtonEdit).KeyMode = kmTime) then

        end
        else
        if (screen.ActiveControl is TCEdit) then
        begin
          if ((screen.ActiveControl as TCEdit).KeyMode = kmDate) and ((screen.ActiveControl as TCEdit).ReadOnly = false) then
          begin
            if msg.wParam = VK_SPACE then
            begin
              (screen.ActiveControl as TCustomEdit).Text := dateToStr(date);
              msg.wParam := 0;
            end //VK_SPACE
            else
              funcao.ValidaData(screen.ActiveControl);
          end; //if ((screen.ActiveControl as TCEdit).KeyMode = kmDate) then
          if ((screen.ActiveControl as TCEdit).KeyMode = kmTime) and ((screen.ActiveControl as TCEdit).ReadOnly = false) then
          begin
            if msg.wParam = VK_SPACE then
            begin
              (screen.ActiveControl as TCustomEdit).Text := TimeToStr(time);
              msg.wParam := 0;
            end //VK_SPACE
            else
              funcao.ValidaHora(screen.ActiveControl);
          end; //if ((screen.ActiveControl as TCEdit).KeyMode = kmDate) then

        end; //if (screen.ActiveControl is TCEdit) then
        funcao.CorEdit(screen.ActiveControl, 's');
      end;// se é edit
    end;
  end;
end;

//************************************************************************************
procedure Tfuncao.PaintGradiente(BMP: TImage; CorIni, CorFim: TColor; Retangular: boolean);
var x, Steps: integer;
    Deltas: array[0..2] of real;
    j, k: real;
    r: Trect;
begin
  with bmp.Picture do
  begin
    Bitmap.Width:= bmp.Width;
    Bitmap.Height:= bmp.Height;
  end;

  with BMP.Picture.Bitmap do
  begin
    Steps:= Max(Height, Width);
    Deltas[0]:= (GetRValue(CorFim) - GetRValue(CorIni)) / Steps;
    Deltas[1]:= (GetGValue(CorFim) - GetGValue(CorIni)) / Steps;
    Deltas[2]:= (GetBValue(CorFim) - GetBValue(CorIni)) / Steps;

    if Retangular then  //Gradiente retangular
    begin
      j := (Width / Steps) / 2;
      k := (Height / Steps) / 2;

      for x:= 0 to Steps-1 do
      begin
        r.Top := Round(x * k);
        r.Bottom := Height - r.Top;
        r.Right := Round(x * j);
        r.Left := Width - r.Right;
        Canvas.Brush.COlor:= RGB(Round(GetRValue(CorIni) + x * Deltas[0]), Round(GetGValue(CorIni) + x *
               Deltas[1]), Round(GetBValue(CorIni) + x * Deltas[2]));;
        Canvas.FillRect(Rect(r.Right, r.Top, r.Left, r.Bottom));
      end;
    end else   //Gradiente padrão
    begin
      j := Height / Steps;
      for x := 0 to Steps do
      begin
        r.Left := Width;
        r.Right := 0;
        r.Top := Round(x * j);
        r.Bottom := Round((x + 1) * j);
        With Canvas do
        begin
          Brush.Color := RGB(Round(GetRValue(CorIni) + x * Deltas[0]), Round(GetGValue(CorIni) + x *
            Deltas[1]), Round(GetBValue(CorIni) + x * Deltas[2]));
          FillRect(r);
        end;

      end;
    end;
  end;
end;
function Tfuncao.PreencheString(campo, valor, orientacao: string;
  tamanho: integer): string;
//função que irá prencher uma string com o valor q for passado até o tamanho
//orientação E: Esquerda
//           D: Direita
//           C: Centralizado
//Valor é o que voce quer preencher na string
//é o que vc precisa passar
var
  i, diferenca : integer;
  r : string;
begin
  r := '';
  if Length(trim(campo)) > tamanho then
    r := copy(trim(campo), 1, tamanho)
  else
    if Length(trim(campo)) < tamanho then
    begin
      r := trim(campo);
      diferenca := tamanho-Length(trim(campo));
      for i := 1 to diferenca do
        if orientacao = 'E' then
          r := valor + r
        else
          if orientacao = 'D' then
            r := r + valor
          else
            if ((orientacao = 'C') and (diferenca > 1)) then //Centralizado
            begin
              if i <= trunc(diferenca/2) then
                r := valor + r
              else
                r := r + valor;
            end;
    end;
  if trim(r) = '' then
    r := trim(campo);
  Result := r;
end;

//************************************************************************************

function Tfuncao.RetornaValorEField(campo: TObject; op: byte): string;
//op = 1 Valor
//op = 2 Field
//op = 3 Valor formatado para consultas diretas e procedure
var
  Field, valor : string;
  TipoField : TFieldType;
begin
  Field := '';
  valor := '';
  TipoField := ftUnknown;
  if (campo is TCEdit) then
  begin
    Field := (campo as TCEdit).Name;
    valor := (campo as TCEdit).Text;
    TipoField := (campo as TCEdit).DataType;
  end
  else
    if (campo is TCDBEdit) then
    begin
      Field := (campo as TCDBEdit).DataField;
      valor := (campo as TCDBEdit).DataSource.DataSet.FieldByName(Field).AsString;
      TipoField := (campo as TCDBEdit).Field.DataType;
    end
    else
      if (campo is TCDBComboBox) then
      begin
        Field := (campo as TCDBComboBox).DataField;
        valor := (campo as TCDBComboBox).DataSource.DataSet.FieldByName(Field).AsString;
        TipoField := (campo as TCDBComboBox).Field.DataType;
      end
      else
        if (campo is TCDBRadioGroup) then
        begin
          Field := (campo as TCDBRadioGroup).DataField;
          valor := (campo as TCDBRadioGroup).DataSource.DataSet.FieldByName(Field).AsString;
          TipoField := (campo as TCDBRadioGroup).Field.DataType;
        end
        else
          if (campo is TCDBCheckBox) then
          begin
            Field := (campo as TCDBCheckBox).DataField;
            valor := (campo as TCDBCheckBox).DataSource.DataSet.FieldByName(Field).AsString;
            TipoField := (campo as TCDBCheckBox).Field.DataType;
          end
          else
            if (campo is TCDBMemo) then
            begin
              Field := (campo as TCDBMemo).DataField;
              valor := (campo as TCDBMemo).DataSource.DataSet.FieldByName(Field).AsString;
              TipoField := (campo as TCDBMemo).Field.DataType;
            end;


  if op = 3 then //Parametro para retorno dos dados formatados.
  begin
//    if TipoField in [ftSmallint, ftInteger, ftLargeint, ftWord] then //nesse caso não muda
    if TipoField in [ftString, ftMemo, ftFixedChar, ftWideString, ftFixedWideChar, ftWideMemo] then
      valor := QuotedStr(valor)
    else
      if TipoField in [ftBoolean] then
      begin
        if (valor = 'true') or (valor = 'True') then
          valor := QuotedStr('S')
        else
          valor := QuotedStr('N');
      end
      else
        if TipoField in [ftDate, ftDateTime, ftTimeStamp] then
        begin
          if trim(valor) <> '' then
            valor := Funcao.ConverteData(StrToDate(valor))
          else
            valor := 'NULL'
        end
        else
        if TipoField in [ftInteger] then
        begin
          if trim(valor) <> '' then
            valor := Funcao.TiraVirgula(valor) //Tira Virgula também tira o ponto
          else
            valor := 'NULL'
        end
        else
        begin //inicia tipos numéricos
          if trim(valor) = ''  then
            valor := '0';
          if TipoField in [ftFloat, ftCurrency, ftBCD,ftFMTBcd] then
            valor := Funcao.TiraVirgula(valor);
        end;
  end; //fim do if op = 3
  if op in [1, 3] then
    Result := valor
  else
    Result := Field;
end;
//************************************************************************************
//Action: C - Crypt  /  D - Decrypt
function Tfuncao.Crypt(Action, Src: String): String;
  Label Fim;
var
  KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
//  SrcPos := 0;
//  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else
    if (Action = UpperCase('D')) then
    begin
      OffSet := StrToInt('$'+ copy(Src,1,2));
      SrcPos := 3;
      repeat
        SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
        if (KeyPos < KeyLen) Then
          KeyPos := KeyPos + 1
        else
          KeyPos := 1;
        TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
        if TmpSrcAsc <= OffSet then
          TmpSrcAsc := 255 + TmpSrcAsc - OffSet
        else
        TmpSrcAsc := TmpSrcAsc - OffSet;
        Dest := Dest + Chr(TmpSrcAsc);
        OffSet := SrcAsc;
        SrcPos := SrcPos + 2;
      until (SrcPos >= Length(Src));
    end;
  Result:= Dest;
  Fim:
end;
//************************************************************************************
function Tfuncao.ArredondaMoeda(valor : Double) : Currency;
begin
  Result := RoundTo(valor, FormatSettings.CurrencyDecimals*-1);
end;
//************************************************************************************
procedure Tfuncao.AtribuiMaskField(Sender, campo : TField);
var
  mascara, mascara2 : string;
  i, tam : byte;
begin
  mascara := Sender.Name;
  mascara := '';
  if Sender.DataType in [ftBCD, ftFMTBcd, ftCurrency] then
  begin
    mascara := '0.';
    mascara2 := '#,';
    tam := 0;
    //para campos decimais pega o tamanho do campo
    if Sender.DataType = ftBCD then
      tam := Sender.Size
    else //para moeda pega da variável do windows
      if Sender.DataType in [ftCurrency] then
        tam := FormatSettings.CurrencyDecimals
      else
        if Sender.DataType in [ftFMTBcd] then
        begin
          if Sender.AsBCD.Precision = 19 then //Campo Moeda com certeza
            tam := FormatSettings.CurrencyDecimals
          else
            tam := Sender.Size; //decimais comuns
        end;

    for i := 1 to  tam do
    begin
      mascara := mascara + '0';
      mascara2 := mascara2 + '#';
    end;

    mascara := mascara2 + mascara;
    if tam = 0 then
      mascara := '###,###,###';
  end
  else
    if Sender.DataType in [ftInteger] then //formata a separação de milhar
      mascara := '###,###,###0';

  if trim(mascara) <> '' then
  begin
    if Sender.DataType = ftBCD then
      TBCDField(Sender).DisplayFormat := mascara
    else
      if Sender.DataType = ftFMTBcd then
        TFMTBCDField(Sender).DisplayFormat := mascara
      else
        if Sender.DataType = ftCurrency then
          TCurrencyField(Sender).DisplayFormat := mascara;
//        else
//          if Sender.DataType in [ftInteger] then
//            TIntegerField(Sender).DisplayFormat := mascara;

  end; //if trim(mascara) <> '' then
end;

function Tfuncao.Atualizacao(modulo: string): Boolean;
var
  exec, arqAtu, arqOri : string;
begin
  Result := true;
  try
    arqAtu := funcao.ConfigIni('ATUALIZACAO', 'Caminho', '', 1) + ExtractFileName(Application.ExeName);
    arqOri := Application.ExeName;
//    showmessage('Atu: ' + DateTimeToStr(GetFileLastWriteTime(arqAtu)));
//    showmessage('Ori: ' + DateTimeToStr(GetFileLastWriteTime(arqOri)));
    if funcao.GetFileLastWriteTime(arqAtu) > funcao.GetFileLastWriteTime(arqOri) then
    begin
//      showmessage('É mais velho!');
      exec := 'Atualizador.exe';
      ShellExecute(Application.Handle,'open',PWideChar(exec),PWideChar(arqAtu),nil,SW_SHOWNORMAL);
      Application.Terminate;
    end;
  except
    Result := false;
  end;
end;

function Tfuncao.BuscaChaveSec(Tabela: TClientDataSet;
  vl_chave: array of TObject): Boolean;
//verifica os campos da chave para trazer os registros
var
  i : integer;
  Field, Fields, valor : string;
  vl_indice : Variant;
  temnulo : boolean;
begin
  valor := '';
  Fields := '';
  temnulo := false;

  vl_indice := VarArrayCreate([0,high(vl_chave)], VarOleStr);

  for i := 0 to High(vl_chave) do
  begin
    valor := Funcao.RetornaValorEField(vl_chave[i], 1);
    Field := Funcao.RetornaValorEField(vl_chave[i], 2);

    if trim(valor) = '' then
      temnulo := true;

    vl_indice[i] := valor;
    if Trim(Fields) = '' then
      Fields := Field
    else
      Fields := Fields + ';' + Field;
  end;

  if temnulo then
  begin
    result := false;
    exit;
  end
  else
  begin
    if Tabela.State in [dsInsert, dsEdit] then
      Tabela.Cancel;
    if not Tabela.Locate(Fields, vl_indice, []) then
    begin
      Tabela.Append;
      Result := false;
    end
    else
      Result := true;
  end;

  if tabela.State in [dsInsert] then
    for i := 0 to high(vl_chave) do
      Tabela.FieldByName(Funcao.RetornaValorEField(vl_chave[i], 2)).AsString := vl_indice[i];
end;

//************************************************************************************
function Tfuncao.FormataEdit(valor : Double; tam : byte) : String;
var
  mascara : string;
  i : byte;
begin
  mascara := '0.';

  for i := 1 to  tam do
    mascara := mascara + '0';

  if tam > 0 then
    Result := FormatFloat(mascara, valor)
  else
    Result := FloatToStr(valor);
end;
//************************************************************************************
Function Tfuncao.ValidaCnpj_Cpf(Sender : TCustomEdit) : Boolean;
Var
  Cnpj_Cpf : String;
begin
  Sender.Text := Funcao.TiraMascara(Trim(Sender.Text));
  Cnpj_Cpf := trim(Sender.Text);
  If Trim(Cnpj_Cpf) = '' Then
  begin
    result := True;
    exit;
  end;
  If Length(Trim(Sender.Text)) = 11 Then
    Result := Funcao.cpf(Sender.Text)
  Else
    If Length(Trim(Sender.Text)) = 14 Then
      Result := Funcao.cnpj(Trim(Sender.Text))
    Else
      If Length(Trim(Sender.Text)) < 8 Then
        Result := True
      Else
        Result := False;

  If Result = False Then
  begin
    Sender.Text := Cnpj_Cpf;
    messagedlg('CPF ou CNPJ Inválido!', mtwarning, [mbok], 0);
    Sender.SetFocus;
  end
  Else
  Begin
    If not (Length(Sender.Text) < 11) Then
      Sender.Text := Funcao.Mascara(Sender.Text, 1, '');
  end;
end;
//************************************************************************************
function TFuncao.cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[10]+num[11];
  if calculado=digitado then
  cpf:=true
  else
  cpf:=false;
end;
//************************************************************************************
function TFuncao.cnpj(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  n10:=StrToInt(num[10]);
  n11:=StrToInt(num[11]);
  n12:=StrToInt(num[12]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
  d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];
  if calculado=digitado then
  cnpj:=true
  else
  cnpj:=false;
end;
//************************************************************************************
function Tfuncao.ConfigIni(Topico, Identificador, Valor: String;
  Tipo: byte): String;
var
  ini : TiniFile;
  {Tipo 1 : Ler o Valor no Config.ini e 2 Gravar}
begin
  ini:= TiniFile.Create(ExtractFilePath(Application.ExeName) + 'configuracao.ini');
  If Tipo = 1 Then
    Result := ini.ReadString(Topico, Identificador, Valor)
  Else
    If Tipo = 2 Then
      ini.WriteString(Topico, Identificador, Valor);

  ini.Free;
end;
//************************************************************************************

function TFuncao.ConverteData(Data: TDateTime): String;
//função criada para converter a data caso o cliente use o Sql2000
var
  formato : string;
begin
//SQL 2000 - 2008
//  Result := QuotedStr(IntToStr(YearOf(Data)) + '-' + IntToStr(MonthOf(Data)) + '-' + IntToStr(DayOf(Data)));
//SQL 2005
  formato := ConfigIni('SQL', 'FormatoData', '', 1);
  if trim(formato) <> '' then
    Result := QuotedStr(FormatDateTime(formato, Data))
  else
    Result := QuotedStr(DateToStr(Data));
end;
function Tfuncao.ConverteDataCrystal(Data: TDateTime): String;
begin
  Result := IntToStr(YearOf(Data)) + ',' + IntToStr(MonthOf(Data)) + ',' + IntToStr(DayOf(Data)) + ' 00:00:00';
end;

//************************************************************************************
Function TFuncao.TiraPontoValor(Valor : String) : Currency;
//Função que retira o ponto de um valor passado e converte para moeda
var
  h : byte;
begin
  If Trim(Valor) <> '' Then
  begin
    h := Pos('.', valor);
    while h <> 0 do
    begin
      valor := copy(valor, 1, h-1) + copy(valor, h+1, Length(valor));
      h := Pos('.', valor);
    end;
//    Showmessage(valor);
    Result := StrToFloat(valor);
  end
  Else
    Result := 0;
end;
//************************************************************************************
function Tfuncao.TiraVirgula(Valor: String): String;
//Função que retira o ponto de um valor e depois transforma a virgula em ponto
//para que seja passado como parâmetro para o Sql Server
var
  h : byte;
begin
  If Trim(Valor) <> '' Then
  begin
    h := Pos('.', valor);
    while h <> 0 do
    begin
      valor := copy(valor, 1, h-1) + copy(valor, h+1, Length(valor));
      h := Pos('.', valor);
    end;
    h := Pos(',', valor);
    if h > 0 then
    begin
      //Inclui o ponto no lugar da virgula
      valor := copy(valor, 1, h-1) + '.' + copy(valor, h+1, Length(valor));
    end;
    Result := valor;
  end
  Else
    Result := '0';
end;
//************************************************************************************
procedure TFuncao.AbreFrm(Classe: TFormClass; var Referencia: TForm);
begin
  if Assigned(Referencia) then
  begin
//    Referencia.Update;
    Referencia.WindowState := wsNormal;
    Referencia.Top := 0;
    Referencia.Show;
  end
  else
  begin
    Application.CreateForm(Classe, Referencia);
//    Referencia. Update;
    if assigned(Referencia) then
    begin
      Referencia.KeyPreview := True;
      Referencia.Top := 0;
      Referencia.Show;
    end;
  end;
end;
//************************************************************************************
procedure Tfuncao.SomenteLeitura(Sender: array of TObject; Status: Boolean);
var
  i : integer;
begin
  for i := 0 to high(sender) do
    if (Sender[i] is TCDBEdit) then
    begin
      with (Sender[i] as TCDBEdit) do
      begin
        ReadOnly := Status;
        TabStop := not Status;
        if Status then
        begin
          Color := $00E7F2F3;
          Font.Style := Font.Style + [fsBold];
        end
        else
        begin
          Color := clWindow;
          Font.Style := Font.Style - [fsBold];
        end;
      end;  //fim with (Sender[i] as TCDBEdit) do
    end //if (Sender[i] is TCDBEdit) then
    else
      if (Sender[i] is TCDBMemo) then
      begin
        with (Sender[i] as TCDBMemo) do
        begin
          ReadOnly := Status;
          TabStop := not Status;
          if Status then
          begin
            Color := $00E7F2F3;
            Font.Style := Font.Style + [fsBold];
          end
          else
          begin
            Color := clWindow;
            Font.Style := Font.Style - [fsBold];
          end;
        end;  //fim with (Sender[i] as TCDBMemo) do
      end //if (Sender[i] is TCDBMemo) then
      else
        if (Sender[i] is TCDBComboBox) then
        begin
          with (Sender[i] as TCDBComboBox) do
          begin
            //só funciona o enabled
            TabStop := not Status;
            Enabled := not Status;
            if Status then
            begin
              Color := $00E7F2F3;
              Font.Style := Font.Style + [fsBold];
            end
            else
            begin
              Color := clWindow;
              Font.Style := Font.Style - [fsBold];
            end;
          end;  //fim with (Sender[i] as TCDBComboBox) do
        end //if (Sender[i] is TCDBComboBox) then
        else
          if (Sender[i] is TCDBCheckBox) then
          begin
            with (Sender[i] as TCDBCheckBox) do
            begin
              //só funciona o enabled
              Enabled := not Status;
              if Status then
              begin
                Color := $00E7F2F3;
                Font.Style := Font.Style + [fsBold];
              end
              else
              begin
                Color := clWindow;
                Font.Style := Font.Style - [fsBold];
              end;
            end;  //fim with (Sender[i] as TCDBCheckBox) do
          end //if (Sender[i] is TCDBCheckBox) then
          else
            if (Sender[i] is TCDBRadioGroup) then
            begin
              with (Sender[i] as TCDBRadioGroup) do
              begin
                //só funciona o enabled
                Enabled := not Status;
                if Status then
                begin
                  Color := $00E7F2F3;
                  Font.Style := Font.Style + [fsBold];
                end
                else
                begin
                  Color := clWindow;
                  Font.Style := Font.Style - [fsBold];
                end;
              end;  //fim with (Sender[i] as TCDBRadioGroup) do
            end //if (Sender[i] is TCDBRadioGroup) then
            else
            if (Sender[i] is TCEdit) then
            begin
              with (Sender[i] as TCEdit) do
              begin
                ReadOnly := Status;
                TabStop := not Status;
                if Status then
                begin
                  Color := $00E7F2F3;
                  Font.Style := Font.Style + [fsBold];
                end
                else
                begin
                  Color := clWindow;
                  Font.Style := Font.Style - [fsBold];
                end;
              end;  //fim with (Sender[i] as TCEdit) do
            end //if (Sender[i] is TCEdit) then
            else
              if (Sender[i] is TCBitBtn) then
              begin
                with (Sender[i] as TCBitBtn) do
                begin
                  Enabled := not Status;
                  TabStop := not Status;
                end;  //fim with (Sender[i] as TCBitBtn) do
              end //if (Sender[i] is TCBitBtn) then

end;
//************************************************************************************
procedure TFuncao.FieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  mascara, mascara2 : string;
  i, tam : byte;
begin
  mascara := Sender.Name;
  mascara := '';
  if Trim(Sender.AsString) = '' then
    exit;

  //Trata os campos de checkbox
  if Sender.FieldName = 'sel' then
  begin
    Text := '';
    exit;
  end;
  if Sender.DataType in [ftBCD, ftFMTBcd, ftCurrency] then
  begin
    mascara := '0.';
    mascara2 := '#,';
    tam := 0;
    //para campos decimais pega o tamanho do campo
    if Sender.DataType = ftBCD then
      tam := Sender.Size
    else //para moeda pega da variável do windows
      if Sender.DataType in [ftCurrency] then
        tam := FormatSettings.CurrencyDecimals
      else
        if Sender.DataType in [ftFMTBcd] then
        begin
          if Sender.AsBCD.Precision = 19 then //Campo Moeda com certeza
            tam := FormatSettings.CurrencyDecimals
          else
            tam := Sender.Size; //decimais comuns
        end;

    for i := 1 to  tam do
    begin
      mascara := mascara + '0';
      mascara2 := mascara2 + '#';
    end;

    mascara := mascara2 + mascara;
    if tam > 0 then
      Text := FormatFloat(mascara, Sender.AsFloat)
    else
      Text := FormatFloat('###,###,###', StrToFloat(Sender.AsString));
  end
  else
    Text := Sender.AsString;
end;
//************************************************************************************
function TFuncao.DayOfTheWeek(const Date: TDateTime): String;
var
   VetDias: array[1..7] of String;
begin
   VetDias[1] := 'Domingo';
   VetDias[2] := 'Segunda-Feira';
   VetDias[3] := 'Terça-Feira';
   VetDias[4] := 'Quarta-Feira';
   VetDias[5] := 'Quinta-Feira';
   VetDias[6] := 'Sexta-Feira';
   VetDias[7] := 'Sábado';
   Result := VetDias[DayOfWeek(Date)];
end;
//************************************************************************************
function TFuncao.Feriado(Data : TDateTime) : Boolean;
var
  a, b, c, d, e, f, g, h, i, k, l, m, p, q, Ano, Mes, Dia : Word;
begin
  Result := False;
  DecodeDate(Data, Ano, Mes, Dia);
  A := (Ano mod 19);
  B := (Ano div 100);
  C := (Ano mod 100);
  D := (B div 4);
  E := (B mod 4);
  F := ((B + 8) div 25);
  G := ((B - F + 1) div 3);
  H := ((19 * A + B - D - G + 15) mod 30);
  I := (C div 4);
  K := (C mod 4);
  L := ((32 + 2 * E + 2 * I - H - K) mod 7);
  M := ((A + 11 * H + 22 * L) div 451);
  P := ((H + L - 7 * M + 114) div 31);
  Q := ((H + L - 7 * M + 114) mod 31) + 1;
  if EncodeDate(ano, p, q) = Data then
    Result := True;
  if EncodeDate(ano, p, q) - 2 = Data then
    Result := True;
  if EncodeDate(ano, p, q) - 47 = Data then
    Result := True;
  if EncodeDate(ano, p, q) + 60 = Data then
    Result := True;
  if not Result then
    if ((Mes = 1) and (Dia = 1)) or//Ação de Graças
       ((Mes = 4) and (Dia = 21)) or //Tiradentes
       ((Mes = 5) and (Dia = 1)) or //Trabalhador
       ((Mes = 9) and (Dia = 7)) or //Independência
       ((Mes = 10) and (Dia = 12)) or //Padroeira
       ((Mes = 11) and (Dia = 2)) or //Finados
       ((Mes = 11) and (Dia = 15)) or //República
       ((Mes = 12) and (Dia = 25)) then //Natal
      Result := true;
end;
//************************************************************************************
function TFuncao.GetFileLastWriteTime(sFileName : string ) : TDateTime;
var
  ffd : TWin32FindData;
  dft : DWord;
  lft : TFileTime;
  h : THandle;
begin
  Result := StrToDate('01/01/1900');
  // get file information
  h := Windows.FindFirstFile(PChar(sFileName), ffd);
  if(INVALID_HANDLE_VALUE <> h)then
  begin
    Windows.FindClose( h );
    FileTimeToLocalFileTime(ffd.ftLastWriteTime, lft );
    FileTimeToDosDateTime(lft,LongRec(dft).Hi, LongRec(dft).Lo);
    Result := FileDateToDateTime(dft);
  end;
end;
//************************************************************************************
function TFuncao.GetBuildInfo:string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
  Prog : string;
begin
  Prog := Application.Exename;
  VerInfoSize := GetFileVersionInfoSize(PChar(prog), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
  result := Copy (IntToStr (100 + v1), 3, 2) + '.' +
  Copy (IntToStr (100 + v2), 3, 2) + '.' +
  Copy (IntToStr (100 + v3), 3, 2) + '.' +
  Copy (IntToStr (100 + v4), 3, 2);
end;
//************************************************************************************
Function TFuncao.GetTemporaryDir: String;
var
  pNetpath: ARRAY[ 0..MAX_path - 1 ] of Char;
  nlength: Cardinal;
begin
  nlength := MAX_path;
  FillChar( pNetpath, SizeOF( pNetpath ), #0 );
  GetTemppath( nlength, pNetpath );
  Result := StrPas( pNetpath );
end;
//************************************************************************************
procedure TFuncao.GravaSec(chave: array of TObject; DataSet : TDataSet; Salvar, Cancelar, Excluir, Novo, Sender: TCBitBtn; campo_auto: string);
//verifica o estado da tabela e habilita e desabilita os
//botões
begin
  if Assigned(Salvar) then
    if Sender.Name = Salvar.Name then
    begin
      funcao.UpdateChave(DataSet as TCustomClientDataSet, chave);
      if trim(campo_auto) <> '' then
        if Trim(DataSet.FieldByName(campo_auto).AsString) = ''  then
          DataSet.FieldByName(campo_auto).AsString := '0';
//      novo.Click;
      DataSet.Post;
    end;

  if Assigned(Excluir) then
    if Sender.Name = Excluir.Name then
    begin
      DataSet.Delete;
    end;

  if Assigned(Cancelar) then
    if Sender.Name = Cancelar.Name then
    begin
      DataSet.Cancel;
    end;

  if Assigned(Novo) then
    if Sender.Name = Novo.Name then
    begin
      DataSet.Append
    end;
end;
//*****************************************************************************/
procedure TFuncao.UpdateChave(tabela: TCustomClientDataSet; vl_chave : Array of TObject);
var
  i : integer;
  Field : String;
begin
  for i := 0 to high(vl_chave) do
  begin
    Field := Funcao.RetornaValorEField(vl_chave[i], 2);
//    showmessage(vl_chave[i].Text);
    if trim(tabela.FieldByName(Field).AsString) = '' then
      if trim(Funcao.RetornaValorEField(vl_chave[i], 1)) <> '' then
        tabela.FieldByName(Field).Value := Funcao.RetornaValorEField(vl_chave[i], 1)
      else
        tabela.FieldByName(Field).Value := '0';
  end;
  //e já finaliza a tabela
//  tabela.Post;
end;
//*****************************************************************************/
procedure TFuncao.HabilitaBotoesSec(DataSet : TDataSet; Salvar, Cancelar, Excluir, Novo: TCBitBtn);
//verifica o estado da tabela e habilita e desabilita os
//botões
begin
  if Assigned(Salvar) then
    Salvar.Enabled := DataSet.State in [dsInsert, dsEdit];

  if Assigned(Excluir) then
    Excluir.Enabled := (DataSet.State in [dsBrowse]) and (not (DataSet.IsEmpty));

  if Assigned(Cancelar) then
    Cancelar.Enabled := DataSet.State in [dsInsert, dsEdit];

  if Assigned(Novo) then
    Novo.Enabled := DataSet.State in [dsBrowse];

  //se não estiver em nenhum dos states - Desabilita todo
  if not (DataSet.State in [dsInsert, dsEdit, dsBrowse]) then
  begin
    Novo.Enabled := false;
    Salvar.Enabled := false;
    Excluir.Enabled := false;
    Cancelar.Enabled := false;
  end;

end;
//*****************************************************************************/
function TFuncao.ChangeKey(Key : Char) : Char;
//alterado tudo para maiuscula
begin
  case key of
  'á': Result := 'a';
  'é': Result := 'e';
  'í': Result := 'i';
  'ó': Result := 'o';
  'ú': Result := 'u';
  'à': Result := 'a';
  'è': Result := 'e';
  'ì': Result := 'i';
  'ò': Result := 'o';
  'ù': Result := 'u';
  'â': Result := 'a';
  'ê': Result := 'e';
  'î': Result := 'i';
  'ô': Result := 'o';
  'û': Result := 'u';
  'ä': Result := 'a';
  'ë': Result := 'e';
  'ï': Result := 'i';
  'ö': Result := 'o';
  'ü': Result := 'u';
  'ã': Result := 'a';
  'õ': Result := 'o';
  'ñ': Result := 'n';
  'ç': Result := 'c';
  'Á': Result := 'A';
  'É': Result := 'E';
  'Í': Result := 'I';
  'Ó': Result := 'O';
  'Ú': Result := 'U';
  'À': Result := 'A';
  'È': Result := 'E';
  'Ì': Result := 'I';
  'Ò': Result := 'O';
  'Ù': Result := 'U';
  'Â': Result := 'A';
  'Ê': Result := 'E';
  'Î': Result := 'I';
  'Ô': Result := 'O';
  'Û': Result := 'U';
  'Ä': Result := 'A';
  'Ë': Result := 'E';
  'Ï': Result := 'I';
  'Ö': Result := 'O';
  'Ü': Result := 'U';
  'Ã': Result := 'A';
  'Õ': Result := 'O';
  'Ñ': Result := 'N';
  'Ç': Result := 'C';
  '~': Result := #0;
  '^': Result := #0;
  '"': Result := #0;
  '´': Result := #0;
  '`': Result := #0;
  else Result := Key;
  end;
end;
//*****************************************************************************/
function Tfuncao.UltDiaDoMes(Data: TDateTime): Word;
// Retorna o Ultimo dia do mes de uma determinada
// data
var
  d,m,a: Word;
  dt: TDateTime;
begin
  DecodeDate(Data, a,m,d);
  Inc(m);
  if m = 13 then
  begin
    m := 1;
  end;
  dt := EncodeDate(a,m,1);
  dt := dt - 1;
  DecodeDate(dt, a,m,d);
  Result := d;
end;
//*****************************************************************************/
function Tfuncao.RetCampoSintegra(valor: string; tipo: string; tamanho: integer): string;
//tipo: N - Númerico
//      X - Alfanumérico
//      XD - Alfanumérico a direita
//      NV - Numérico a direita
//      QT - Quantidade a direita
var
  i : integer;
begin
  valor := trim(valor);
  for i := 1 to tamanho-(length(valor)) do
    if tipo = 'N' then
    begin
      valor := '0' + valor;
      valor := funcao.TiraMascara(valor);
    end
    else
      if tipo = 'X' then
        valor := valor + ' '
      else
        if tipo = 'XD' then
          valor := ' ' + valor;

   Result := valor;
end;
//*****************************************************************************/
function Tfuncao.RetDataSintegra(data: TDateTime): string;
//tipo: N - Númerico
var
  datafinal : string;
  di, mi, ai : Word;
  diai,mesi,anoi : string;
begin
  DecodeDate(data,ai, mi,di);
  diai := IntToStr(di);
  mesi := IntToStr(mi);

  if ((Length(diai)) < 2 ) then
    diai := '0' + diai;

  if ((Length(mesi)) < 2) then
    mesi := '0' + mesi;

  anoi := IntToStr(ai);
  datafinal := Format('%s%s%s',[anoi, mesi, diai]);

  Result := datafinal;
end;
//*****************************************************************************/

function Tfuncao.ArrendDecimal(valor: Currency): Currency;
var
vlmenor, vltotal : Currency;
begin
  vlmenor := Floor(valor);
  vltotal := valor - vlmenor;

  if (vltotal > (0.499))then
  begin
    Result := Ceil(valor);
  end
  else
  begin
    Result := Floor(valor);
  end;
end;
//*****************************************************************************/

Function AllTrim(const S : string) : string;
 {-Return a string with leading and trailing white space removed}
var
 I, L: Integer;
begin
 L := Length(S);
 I := 1;
 while (I <= L) and (S[I] <= ' ') do Inc(I);
 if I > L then Result := '' else
 begin
   while S[L] <= ' ' do Dec(L);
   Result := Copy(S, I, L - I + 1);
 end;
end; { AllTrim }

Function Empty(const s: String) : Boolean;
var
 aux : string;
begin
 aux := alltrim(s);
 if Length(aux) = 0 then Result := true else Result := false;
end;

Function IsNumero(const s: string) : boolean;
var
 i : byte;
begin
 Result := false;
 for i := 1 to length(s) do
   if not (s[i] in ['0'..'9']) then exit;
 Result := true;
end; { IsNumero }

{ chInt - Converte um caracter numérico para o valor inteiro correspondente. }
function CharToInt( ch: Char ): ShortInt;
begin
 Result := Ord ( ch ) - OrdZero;
end;

{ intCh = Converte um valor inteiro (de 0 a 9) para o caracter numérico
 correspondente. }

function IntToChar ( int: ShortInt ): Char;
begin
 Result := Chr ( int + OrdZero);
end;

Function CHKIEMG(const iemg : string):boolean;
var
 npos,i : byte;
 ptotal, psoma : Integer;
 dig1, dig2 : string[1];
 ie, insc : string;
 nresto : SmallInt;
begin
 //
 Result := true;
 ie := alltrim(iemg);
 if (empty(ie))  then exit;
 if copy(ie,1,2) = 'PR' then exit;
 if copy(ie,1,5) = 'ISENT' then exit;

 Result := false;
 If (Trim(iemg)='.') Then Exit;
 if (length(ie) <> 13) then Exit;
 if not IsNumero(ie) then Exit;

 dig1 := copy(ie,12,1);
 dig2 := copy(ie,13,1);
 insc := copy(ie,1,3) + '0' + copy(ie,4,8);
 //  CALCULA DIGITO 1
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   psoma := CharToInt(insc[npos]) * i;
   IF psoma >= 10 then psoma := psoma - 9;
   inc(ptotal,psoma);
   IF i = 2 then i := 0;
   dec(npos);
 end;
 nResto := ptotal mod 10;
 if NResto = 0 then  nResto := 10;
 nResto := 10 - nResto;
 if nResto <> StrToInt(dig1[1]) then exit;

 // CALCULA DIGITO 2
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   if i = 12 then i := 2;
   inc(ptotal, CharToInt(ie[npos]) * i);
   dec(npos);
 end;
 nResto := ptotal mod 11;
 if (nResto = 0) or (nResto = 1) then nResto := 11;
 nResto := 11 - nResto;
 if nResto <> StrToInt(dig2[1]) then exit;
 Result := true;
end; // ChkMG

// ----------------------------------- Inscrições Estaduais

Function ChkIEAC(const ie : string) : Boolean;  // 99.999.999/999-99
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[13]);
end; // ChkIEAC

Function ChkIEAL(const ie : string) : Boolean; // 24XNNNNND
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := soma - trunc(soma / 11) * 11;
 if dig = 10 then dig := 0;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAL

Function ChkIEAM(const ie : string) : Boolean;  // 99.999.999-9
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 if soma < 11 then dig := 11 - soma else
 begin
   i := (soma mod 11);
   if i <= 1 then dig := 0 else dig := 11 - i;
 end;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAM

Function ChkIEAP(const ie : string) : Boolean; // 999999999
var
 p,d, b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 p := 0;
 d := 0;
 i := StrToInt(copy(ie,1,8));
 if (i >= 03000001) and (i <= 03017000) then
 begin
   p := 5;
   d := 0;
 end else
 if (i >= 03017001) and (i <= 03019022) then
 begin
   p := 9;
   d := 1;
 end;
 b := 9;
 soma := p;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig = 10 then dig := 0 else
 if dig = 11 then dig := d;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAP

Function ChkIEBA(const ie : string) : Boolean; // 999999-99
var
 b, i, soma : Integer;
 nro : array[1..8] of byte;
 NumMod : word;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) <> 8) then exit;
 die := copy(ie,1,8);
 if not IsNumero(die) then exit;
 for i := 1 to 8 do nro[i] := CharToInt(die[i]);
 if nro[1] in [0, 1, 2, 3, 4, 5, 8] then NumMod := 10 else NumMod := 11;
 // calculo segundo
 b := 7;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[8]);
 if not Result then exit;
 // calculo segundo
 b := 8;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 inc(soma, (nro[8] * 2));
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[7]);
end; // ChkIEBA

Function ChkIECE(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) > 9) then exit;
 if not IsNumero(ie) then exit;
 die := ie;
 if length(ie) < 9 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 9;
 end;
 for i := 1 to 9 do nro[i] := CharToInt(die[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[9]);
end; // ChkIECE

Function ChkIEDF(const ie : string) : Boolean;  // 999.99999.999.99
var
 b, i, soma : Integer;
 nro : array[1..13] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 13 do nro[i] := CharToInt(ie[i]);
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[13]);
end; // ChkIEDF

Function ChkIEES(const ie : string) : Boolean;  // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := soma mod 11;
 if i < 2 then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end; // ChkIEES

Function ChkIEGO(const ie : string) : Boolean; // 99.999.999.9
var
 n, b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,1,2);
 if (s = '10') or (s = '11') or (s = '15') then
 begin
   for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
   n := trunc(StrToFloat(ie) / 10);
   if n = 11094402 then
   begin
     if (nro[9] = 0) or (nro[9] = 1) then
     begin
       Result := true;
       exit;
     end;
   end;

   b := 9;
   soma := 0;
   for i := 1 to 08 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
   end;
   i := (soma mod 11);
   if i = 0 then dig := 0 else
   if i = 1 then
   begin
     if (n >= 10103105) and (n <= 10119997) then
       dig := 1
     else
       dig := 0;
   end else
   begin
     dig := 11 - i;
   end;
   Result := (dig = nro[9]);
 end;
end; // ChkIEGO

Function ChkIEMA(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end; // ChkIEMA

Function ChkIEMT(const ie : string) : Boolean;  // 9999999999-9
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) < 9) then exit;
 die := ie;
 if length(die) < 11 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 11;
 end;
 if not IsNumero(die) then exit;
 for i := 1 to 11 do nro[i] := CharToInt(die[i]);
 b := 3;
 soma := 0;
 for i := 1 to 10 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[11]);
end; // ChkIEMT

Function ChkIEMS(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '28' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEMS

Function ChkIEPA(const ie : string) : Boolean; // 99.999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '15' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPA

Function ChkIEPB(const ie : string) : Boolean; // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPB

Function ChkIEPR(const ie : string) : Boolean; //  99999999-99
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
 b := 3;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
 if not result then exit;

 b := 4;
 soma := 0;
 for i := 1 to 09 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[10]);
end; // ChkIEPR

Function ChkIEPE(const ie : string) : Boolean; // 99.9.999.9999999-9
var
 b, i, soma : Integer;
 nro : array[1..14] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 14) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 14 do nro[i] := CharToInt(ie[i]);
 b := 5;
 soma := 0;
 for i := 1 to 13 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 0 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig > 9 then dig := dig - 10;
 Result := (dig = nro[14]);
end; // ChkIEPE

Function ChkIEPI(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPI

Function ChkIERJ(const ie : string) : Boolean; // 99.999.99-9
var
 b, i, soma : Integer;
 nro : array[1..08] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 08) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 08 do nro[i] := CharToInt(ie[i]);
 b := 2;
 soma := 0;
 for i := 1 to 07 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[08]);
end; // ChkIERJ

Function ChkIERN(const ie : string) : Boolean; // 99.999.999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := (soma mod 11);
 if (dig = 10) then dig := 0;
 Result := (dig = nro[09]);
end; // ChkIERN

Function ChkIERS(const ie : string) : Boolean;  // 999.999999-9
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 i := StrToInt(copy(ie,1,3));
 if (i >= 1) and (i <= 467) then
 begin
   for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
   b := 2;
   soma := 0;
   for i := 1 to 09 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
     if b = 1 then b := 9;
   end;
   dig := 11 - (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[10]);
 end;
end; // ChkIERS

// Rondônia - versão antiga
Function ChkIERO(const ie : string) : Boolean; // 999.99999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 6;
 soma := 0;
 for i := 4 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b)
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := dig - 10;
 Result := (dig = nro[09]);
end; // ChkIERO

// Rondônia - versão nova
Function ValidaInscRO(SIE :string): boolean;
var i,x,y,z,j : integer;
  s : string;
begin
  y := 6;
  z := 0;

  for j := 1 to length(trim(sie))do
      if sie[j] in
['0','1','2','3','4','5','6','7','8','9','0'] then
         s := s + sie[j];
  if not length(s)  <> 14 then begin
     for i := 1 to (14 - length(Trim(s))) do
             s := '0' + trim(s)
  end;
  for i := 1 to (length(s) - 1) do begin
      x := strtoint(s[i])* y;
      z := z + x;
      if y  > 2 then
         dec(y)
      else y := 9;
  end;
  x := z mod 11;
  y := 11 - x;
  if inttostr(y) = s[14] then
     Result := true
  else Result := false;
end;


Function ChkIERR(const ie : string) : Boolean; // 99.999999-9
var
 i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * i);
 end;
 dig := (soma mod 09);
 Result := (dig = nro[09]);
end; // ChkIERR

Function ChkIESC(const ie : string) : Boolean;  // 999.999.999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIESC

Function ChkIESP(const ie : string) : Boolean;
var
 i, soma : Integer;
 nro : array[1..12] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if UpperCase(copy(ie,1,1)) = 'P' then
 begin
   s := copy(ie,2,9);
   if not IsNumero(s) then exit;
   for i := 1 to 8 do nro[i] := CharToInt(s[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
 end else
 begin
   if (length(ie) < 12) then exit;
   if not IsNumero(ie) then exit;
   for i := 1 to 12 do nro[i] := CharToInt(ie[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
   soma := (nro[1] * 3) + (nro[2] * 2) + (nro[3] * 10) + (nro[4] * 9) +
           (nro[5] * 8) + (nro[6] * 7) + (nro[7] * 6) + (nro[8] * 5) +
           (nro[9] * 4) + (nro[10] * 3) + (nro[11] * 2);

   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[12]);
 end;
end; // ChkIESP

Function ChkIESE(const ie : string) : Boolean; // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (dig = nro[09]);
end; // ChkIESE

Function ChkIETO(const ie : string) : Boolean; // 99.99.999999-9
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) <> 11) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,3,2);
 if (s = '01') or (s = '02') or (s = '03') or (s = '99')  then
 begin
   for i := 1 to 11 do nro[i] := CharToInt(ie[i]);
   b := 9;
   soma := 0;
   for i := 1 to 10 do
   begin
     if (i <> 3) and (i <> 4) then
     begin
       inc(soma, nro[i] * b);
       dec(b);
     end;
   end;
   i := (soma mod 11);
   if (i <= 1) then dig := 0 else dig := 11 - i;
   Result := (dig = nro[11]);
 end;
end; // ChkIETO

// --------------------------------------------------------------

Function TFuncao.ChkInscEstadual(ie, uf : string) : Boolean;
var
 duf, die : string;
begin
 //
 Result:=False;
 If (Trim(ie)='.') Then Exit;
 //
 duf := UpperCase(uf);
 die := UpperCase(trim(ie));
 if (copy(die,1,5) = 'ISENT') or (die = '') then
 begin
   Result := true;
   exit;
 end;
 if duf = 'AC'  then Result := ChkIEAC(die) else
 if duf = 'AL'  then Result := ChkIEAL(die) else
 if duf = 'AP'  then Result := ChkIEAP(die) else
 if duf = 'AM'  then Result := ChkIEAM(die) else
 if duf = 'BA'  then Result := ChkIEBA(die) else
 if duf = 'CE'  then Result := ChkIECE(die) else
 if duf = 'DF'  then Result := ChkIEDF(die) else
 if duf = 'ES'  then Result := ChkIEES(die) else
 if duf = 'GO'  then Result := ChkIEGO(die) else
 if duf = 'MA'  then Result := ChkIEMA(die) else
 if duf = 'MG'  then Result := CHKIEMG(die) else
 if duf = 'MT'  then Result := ChkIEMT(die) else
 if duf = 'MS'  then Result := ChkIEMS(die) else
 if duf = 'PA'  then Result := ChkIEPA(die) else
 if duf = 'PB'  then Result := ChkIEPB(die) else
 if duf = 'PR'  then Result := ChkIEPR(die) else
 if duf = 'PE'  then Result := ChkIEPE(die) else
 if duf = 'PI'  then Result := ChkIEPI(die) else
 if duf = 'RJ'  then Result := ChkIERJ(die) else
 if duf = 'RN'  then Result := ChkIERN(die) else
 if duf = 'RS'  then Result := ChkIERS(die) else
 if duf = 'RO'  then Result := (ChkIERO(die) Or ValidaInscRO(die)) else
 if duf = 'RR'  then Result := ChkIERR(die) else
 if duf = 'SC'  then Result := ChkIESC(die) else
 if duf = 'SP'  then Result := ChkIESP(die) else
 if duf = 'SE'  then Result := ChkIESE(die) else
 if duf = 'TO'  then Result := ChkIETO(die) else
 Result := false;
end; // ChkInscEstadual

// --------------------------------------------------------------
function TFuncao.Extenso(Valor: Real; MF: string; Moeda: Boolean): string;
const
  UnidadesM: array[1..9] of string = ('UM', 'DOIS', 'TRÊS', 'QUATRO', 'CINCO', 'SEIS', 'SETE', 'OITO', 'NOVE');
  UnidadesF: array[1..9] of string = ('UMA', 'DUAS', 'TRES', 'QUATRO', 'CINCO', 'SEIS', 'SETE', 'OITO', 'NOVE');

  Dez: array[1..9] of string = ('ONZE', 'DOZE', 'TREZE', 'QUATORZE', 'QUINZE', 'DEZESSEIS', 'DEZESSETE',
  'DEZOITO', 'DEZENOVE');

  Dezenas: array[1..9] of string = ('DEZ', 'VINTE', 'TRINTA', 'QUARENTA', 'CINQUENTA', 'SESSENTA', 'SETENTA',
  'OITENTA', 'NOVENTA');

  Centenas: array[1..9] of string = ('CENTO', 'DUZENTOS', 'TREZENTOS', 'QUATROCENTOS', 'QUINHENTOS', 'SEISCENTOS',
  'SETECENTOS', 'OITOCENTOS', 'NOVECENTOS');

  Cifra: array[1..2] of string = (' REAL', ' REAIS');
  Cents: array[1..2] of string = (' CENTAVO', ' CENTAVOS');
  Zero = 'Zero';

var
  Texto, Milhar, Centena, Centavos: string;

function Ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
  if Expressao then
    Result :=	CasoVerdadeiro
  else
    Result := CasoFalso;
end;

function MiniExtenso(trio: string): string;
var
  Unidade, Dezena, Centena: string;
begin
  Unidade := '';
  Dezena := '';
  Centena := '';

  if (trio[2] = '1') and (trio[3] <> '0') then
  begin
    Unidade := Dez[StrToInt(trio[3])];
    Dezena := '';
  end
  else
  begin
    if trio[2] <> '0' then
	  Dezena := Dezenas[StrToInt(trio[2])];

    if trio[3] <> '0' then
	  Unidade := Ifs(MF = 'M', UnidadesM[StrToInt(trio[3])], UnidadesF[StrToInt(trio[3])]);
  end;

  if (trio[1] = '1') and (Unidade = '') and (Dezena = '') then
    Centena := 'CEM'
  else
    if trio[1] <> '0' then
      Centena := Centenas[StrToInt(trio[1])]
    else
      Centena := '';

  Result := Centena + Ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')), ' E ', '') +
            Dezena + Ifs(( Dezena <> '') and (Unidade<> '' ),' E ', '') + Unidade;
end;
begin
  if (valor > 999999.99) or (valor < 0) then
  begin
    Result := 'O número deve ser maior ou igual a zero e menor que 999.999,99.';
    Exit;
  end;

  if valor = 0 then
  begin
    Result := Zero;
    Exit;
  end;

  Result := '';

  Texto := FormatFloat('000000.00', Valor);

  Milhar := MiniExtenso(Copy(Texto, 1, 3));

  Centena := MiniExtenso(Copy(Texto, 4, 3));

  Centavos := MiniExtenso('0' + Copy(Texto, 8, 2));

  if Milhar <> '' then
     Result := Milhar + ' MIL';

  if Centena <> '' then
  begin
    if (Copy(Texto, 4, 1) = '0') and (Milhar <> '') then
	  Result := Result + ' E '
    else
	  if Milhar <> '' then
	    Result := Result + ', ';

    Result := Result + Centena;
  end;

  if Moeda = True then
    if Length(Result) = 2 then
	  Result := Result + Cifra[1]
    else
	  if Result <> '' then
	    Result := Result + Cifra[2];

  if Centavos <> '' then
  begin
    if Result <> '' then
	  Result := Result + ' E ' + Centavos
	else
	  Result := Centavos;

    if Moeda = True then
	  if Length(Centavos) = 2 then
	    Result := Result + Cents[1]
	  else
	    Result := Result + Cents[2];

  end;
end;
end.
