unit uFrmTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CLabel, Vcl.Buttons,
  EditAlign, CEdit, frxDesgn, frxClass;

type
  TFrmTeste = class(TForm)
    CEdit1: TCEdit;
    SpeedButton1: TSpeedButton;
    CLabel1: TCLabel;
    Memo1: TMemo;
    Button1: TButton;
    CLabel2: TCLabel;
    EdNome: TCEdit;
    CLabel3: TCLabel;
    EDNumero: TCEdit;
    BtnImprimir: TButton;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    BtnSeparar: TButton;
    BtnConverter: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnSepararClick(Sender: TObject);
    procedure BtnConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTeste: TFrmTeste;

implementation

{$R *.dfm}

uses uFuncao;

procedure TFrmTeste.BtnConverterClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to Memo1.Lines.Count - 1 do

end;

procedure TFrmTeste.BtnImprimirClick(Sender: TObject);
begin
  frxReport1.LoadFromFile('G:\Sistemas\Nilus\Temp\CartaoCha.fr3');

  (frxReport1.FindComponent('MNome_Pessoa') as TfrxMemoview).clear;
  (frxReport1.FindComponent('MNome_Pessoa') as TfrxMemoview).Text := EdNome.Text;

  (frxReport1.FindComponent('MNome_Pessoa180') as TfrxMemoview).clear;
  (frxReport1.FindComponent('MNome_Pessoa180') as TfrxMemoview).Text := EdNome.Text;

  (frxReport1.FindComponent('MNumero_Pessoa') as TfrxMemoview).clear;
  (frxReport1.FindComponent('MNumero_Pessoa') as TfrxMemoview).Text := EdNumero.Text;

  (frxReport1.FindComponent('MNumero_Pessoa180') as TfrxMemoview).clear;
  (frxReport1.FindComponent('MNumero_Pessoa180') as TfrxMemoview).Text := EdNumero.Text;

  frxReport1.ShowReport;
  //

end;

procedure TFrmTeste.BtnSepararClick(Sender: TObject);
var
  i, c, cont : integer;
  s, s1 : string;
begin
  for i := 0 to Memo1.Lines.Count - 1 do
  begin
    s := Memo1.Lines.Strings[i];
    cont := 0;
    s1 := 'INSERT INTO CfopDevolucao VALUES(' + s + ')';
{    for c := 1 to Length(s) do
    begin
      if s[c] = ',' then
      begin
        cont := cont + 1;
        if cont = 1 then
          s1 := s1 + ', ' + ''''
        else
          if cont = 2 then
            s1 := s1 + '''' + ', '
          else
            s1 := s1 + ', ';
      end
      else
        s1 := s1 + s[c];
    end; //fim do     for c := 1 to Length(s) do
    s1 := s1 + ')';                   }
    Memo1.Lines.Strings[i] := s1;
  end;

end;

procedure TFrmTeste.Button1Click(Sender: TObject);
var
  arq : TStringList;
  p : string;
  col : integer;
begin
  arq := TStringList.Create;
  arq.LoadFromFile('G:\Desenv\BoletoIPTU\Docs\IPTU001.TXT');
  Memo1.Lines.Clear;

  col := 1135;
  p := copy(arq.Strings[0], col, 393);
  Memo1.Lines.Add(p);

  col := col + 394;
  p := copy(arq.Strings[0], col, 394);
  Memo1.Lines.Add(p);

  col := col + 394;
  p := copy(arq.Strings[0], col, 394);
  Memo1.Lines.Add(p);

  col := col + 394;
  p := copy(arq.Strings[0], col, 394);
  Memo1.Lines.Add(p);

  col := col + 394;
  p := copy(arq.Strings[0], col, 394);
  Memo1.Lines.Add(p);

  col := col + 394;
  p := copy(arq.Strings[0], col, 394);
  Memo1.Lines.Add(p);

  col := col + 394;
  p := copy(arq.Strings[0], col, 394);
  Memo1.Lines.Add(p);

  col := col + 394;
  p := copy(arq.Strings[0], col, 394);
  Memo1.Lines.Add(p);

  arq.Free;
end;

procedure TFrmTeste.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmTeste := nil;
end;

procedure TFrmTeste.SpeedButton1Click(Sender: TObject);
begin
  CLabel1.Caption := IntToStr(pos('EXEC', CEdit1.Text));
end;

end.
