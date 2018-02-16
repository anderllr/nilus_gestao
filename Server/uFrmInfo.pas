unit uFrmInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CLabel, Buttons, CBitBtn, Clipbrd, ExtCtrls;

type
  TFrmInfo = class(TForm)
    CLabel1: TCLabel;
    lblNome: TCLabel;
    lblCpf: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    lblMaquina: TCLabel;
    lblSerial: TCLabel;
    CLabel7: TCLabel;
    CBitBtn1: TCBitBtn;
    Timer1: TTimer;
    lblTempo: TCLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    sec : integer;
  public
    { Public declarations }
  end;

var
  FrmInfo: TFrmInfo;

implementation

{$R *.dfm}

procedure TFrmInfo.CBitBtn1Click(Sender: TObject);
var
  s : string;
begin
  s := 'Nome: ' + lblNome.Caption + #13 +
       'Cpf/Cnpj: ' + lblCpf.Caption + #13 +
       'Máquina: ' + lblMaquina.Caption + #13 +
       'Serial: ' + lblSerial.Caption;

  Clipboard.AsText := s;
  close;
end;

procedure TFrmInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := false;
  action := caFree;
end;

procedure TFrmInfo.FormCreate(Sender: TObject);
begin
  sec := 0;
  Timer1.Enabled := true;
end;

procedure TFrmInfo.Timer1Timer(Sender: TObject);
var
  fecha : integer;
begin
  sec := sec + 1;
  fecha := 60-sec;
  lblTempo.Caption := '* Esta será fechada em ' + IntToStr(fecha);
  lblTempo.Refresh;
  if sec >= 59 then
    close;
end;

end.
