unit uFrmVerInsert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CMemo, ExtCtrls, CPanelGradient, CLabel, Buttons, CBitBtn;

type
  TFrmVerInsert = class(TForm)
    MemScript: TCMemo;
    PanBotoes: TCPanelGradient;
    CLabel1: TCLabel;
    CPanelGradient1: TCPanelGradient;
    BtnLimpar: TCBitBtn;
    BtnVoltar: TCBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnVoltarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    script : TStrings;
  public
    { Public declarations }
  end;

var
  FrmVerInsert: TFrmVerInsert;

implementation

uses uFrmPrincipal;

{$R *.dfm}

procedure TFrmVerInsert.BtnLimparClick(Sender: TObject);
begin
  if messagedlg('Está certo de já ter copiado para o programa de atualização?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    MemScript.Lines.Clear;
    FrmPrincipal.histScript.clear;

  end;
end;

procedure TFrmVerInsert.BtnVoltarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmVerInsert.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MemScript.Text <> script.Text then
  begin
    if messagedlg('O script foi modificado deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      Action := cafree
    else
      Action := canone;
  end
  else
    Action := caFree;
end;

procedure TFrmVerInsert.FormShow(Sender: TObject);
begin
  script := TStringList.Create;
  script.Text := MemScript.Text;
end;

end.
