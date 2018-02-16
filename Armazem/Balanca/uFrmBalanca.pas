unit uFrmBalanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Buttons, ExtCtrls, RDComms, CComboBox;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    Bevel1: TBevel;
    btnIniciar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    edPeso: TEdit;
    btnPesar: TBitBtn;
    RDserial1: TRDserial;
    BtnFechar: TBitBtn;
    Timer1: TTimer;
    EdLeitura: TMemo;
    BtnSalvar: TBitBtn;
    CbPorta: TCComboBox;
    cboVelocidade: TCComboBox;
    procedure btnIniciarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesarClick(Sender: TObject);
    procedure RDserial1Error(Sender: TObject);
    procedure RDserial1RxChar(Sender: TObject; InQue: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    lendo, peso : string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnIniciarClick(Sender: TObject);
begin

  if cbporta.text = 'COM1' then
    RDSerial1.Porta := COM1;
  if cbporta.text = 'COM2' then
    RDSerial1.Porta := COM2;
  if cbporta.text = 'COM3' then
    RDSerial1.Porta := COM3;
  if cbporta.text = 'COM4' then
    RDSerial1.Porta := COM4;
  if cbporta.text = 'COM5' then
    RDSerial1.Porta := COM5;

  if trim(CBOVelocidade.Text) = 'BR110' then
     RDSerial1.Velocidade := br110
  else
  if trim(CBOVelocidade.Text) = 'BR300' then
     RDSerial1.Velocidade := br300
  else
  if trim(CBOVelocidade.Text) = 'BR600' then
     RDSerial1.Velocidade := br600
  else
  if trim(CBOVelocidade.Text) = 'BR1200' then
     RDSerial1.Velocidade := br1200
  else
  if trim(CBOVelocidade.Text) = 'BR2400' then
     RDSerial1.Velocidade := br2400
  else
  if trim(CBOVelocidade.Text) = 'BR4800' then
     RDSerial1.Velocidade := br4800
  else
  if trim(CBOVelocidade.Text) = 'BR9600' then
     RDSerial1.Velocidade := br9600
  else
  if trim(CBOVelocidade.Text) = 'BR14400' then
     RDSerial1.Velocidade := br14400
  else
  if trim(CBOVelocidade.Text) = 'BR19200' then
     RDSerial1.Velocidade := br19200
  else
  if trim(CBOVelocidade.Text) = 'BR38400' then
     RDSerial1.Velocidade := br38400
  else
  if trim(CBOVelocidade.Text) = 'BR56000' then
     RDSerial1.Velocidade := br56000
  else
  if trim(CBOVelocidade.Text) = 'BR57600' then
     RDSerial1.Velocidade := br57600
  else
  if trim(CBOVelocidade.Text) = 'BR115200' then
     RDSerial1.Velocidade := br115200;
{
BR110
BR300
BR600
BR1200
BR2400
BR4800
BR9600
BR14400
BR19200
BR38400
BR56000
BR57600
BR115200
}

  if btnIniciar.Caption = '&Iniciar' then
  begin
    btnIniciar.Caption := '&Parar';
    if RDserial1.Connected = false then
    begin
      RDserial1.Open;
      timer1.Enabled := true;
    end
  end
  else
  begin
    btnIniciar.Caption := '&Iniciar';
    timer1.Enabled := false;
    RDserial1.Close;
    RDserial1.AbortAllIO;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  // fica lendo a balança até obter o peso correto...
  timer1.Enabled := false;
  lendo          := '';
  if RDserial1.Connected = false then
  begin
    RDserial1.Open;
  end;

  // envia string 'a balança solicitando o peso...
  // Para impressora fiscal pode ser por exemplo o comando para ABRIR CUPOM
  RDserial1.WriteString(#5#13#10, True);

  // Este loop faz com que o programa aguarde uma resposta com 7 caracteres (já é esperado)
  // No caso de impressora Fiscal ver qual é a resposta esperada para cada comando enviado
  // voce pode tratar o loop pelo tamanho ou por um caracter especifico indicando o fim da resposta
  while length(lendo) < 8 do
  begin
    application.ProcessMessages; // permite processar outros eventos
  end;

  // Quando termina o loop significa que já obtive a resposta esperada, agora é só trata-la
  // terminou de ler, copia resultado para peso...
  peso           := copy(lendo,1,6);
  timer1.Enabled := true;

     // ver se balanca esta em equilibrio
  if length(trim(lendo)) >= 8 then
    btnPesar.Enabled := True
  else
    btnPesar.Enabled := False;
  edLeitura.Lines.Add(lendo);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  timer1.Enabled := false;
  if RDserial1.Connected then
    RDserial1.Close;
end;

procedure TForm1.btnPesarClick(Sender: TObject);
begin

  edPeso.Text := FloatToStr(StrToFloat(peso)) + ' KG';

  // Fecha comnunicaçao com a porta serial...
  if RDserial1.Connected then
  begin
    RDserial1.Close;
    timer1.Enabled := false;
  end;
  BtnIniciar.Caption := '&Iniciar';
  Peso := '';
end;

procedure TForm1.RDserial1Error(Sender: TObject);
begin
  // se ocorrer erro na comunicação...
  timer1.Enabled := false;
//  showmessage('Erro na comunicação com a balança... sistema vai tentar restaurar conexao');
  RDserial1.AbortAllIO;
  if RDserial1.Connected then
    RDserial1.Close;
  //
  BtnIniciar.Caption := '&Iniciar';
end;

procedure TForm1.RDserial1RxChar(Sender: TObject; InQue: Integer);
var
  resposta : string;
begin
  // le o resultado da balança, este evento é disparado quando enviamos
  // a sequencia solicitando o peso á BALANCA...

  // A leitura ocorre caracter a caracter, é necessário saber o tamanho da resposta esperada
  // ou então um caracter ou conjunto de caracter que indique seu termino...
  RDserial1.ReadString(resposta, InQue, True);
  lendo := lendo + resposta;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RDserial1.AbortAllIO;
  if RDserial1.Connected then
    RDserial1.Close;
  timer1.Enabled := false;
end;

procedure TForm1.BtnFecharClick(Sender: TObject);
begin
  RDserial1.AbortAllIO;
  timer1.Enabled := false;
  if RDserial1.Connected then
    RDserial1.Close;
  close;
end;

procedure TForm1.BtnSalvarClick(Sender: TObject);
begin
  if fileexists('BalancaTeste.txt') then
    DeleteFile('BalancaTeste.txt');
  edLeitura.Lines.SaveToFile('BalancaTeste.txt');
end;

end.
