unit uFrmCaptcha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  CPanelGradient, Vcl.Buttons, CBitBtn;

type
  TFrmCaptcha = class(TForm)
    CPanelGradient1: TCPanelGradient;
    ImgCaptcha: TImage;
    EditCaptcha: TEdit;
    Label10: TLabel;
    BtnCarregar: TCBitBtn;
    BtnAlteraCod: TCBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BtnCarregarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAlteraCodClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaptcha: TFrmCaptcha;

implementation

{$R *.dfm}


uses UTDownloadXMLNFeDLL, utils, uFrmImportaNFe;

var
  BaixarXMLNFe: TDownloadXMLNFeDLL;

procedure TFrmCaptcha.BtnAlteraCodClick(Sender: TObject);
begin
  try
    //********Pode ser usado no final do nome do arquivo gif, jpg e bmp***********
    if BaixarXMLNFe.Captcha('Captcha.jpg') then begin
      ImgCaptcha.Picture.LoadFromFile('Captcha.jpg');
      EditCaptcha.Clear;
      EditCaptcha.SetFocus;
    end else
      MsgErr('Erro quando foi baixar o captcha.' + BaixarXMLNFe.Msg);
  finally
  end;
end;

procedure TFrmCaptcha.BtnCarregarClick(Sender: TObject);
begin
  FrmImportaNFe.captcha := EditCaptcha.Text;
  Close;
end;

procedure TFrmCaptcha.FormCreate(Sender: TObject);
begin
  BaixarXMLNFe:= TDownloadXMLNFeDLL.Create;
  BaixarXMLNFe.CaptchaBossURL('http://fasttypers.org/imagepost.ashx');
  BaixarXMLNFe.DLLLicenca('XQDKJ6ONXKHGWQT4286O');
end;

procedure TFrmCaptcha.FormShow(Sender: TObject);
begin
  try
    //********Pode ser usado no final do nome do arquivo gif, jpg e bmp***********
    if BaixarXMLNFe.Captcha('Captcha.jpg') then begin
      ImgCaptcha.Picture.LoadFromFile('Captcha.jpg');
      EditCaptcha.Clear;
      EditCaptcha.SetFocus;
    end else
      MsgErr('Erro quando foi baixar o captcha.' + BaixarXMLNFe.Msg);
  finally
  end;
end;

end.
