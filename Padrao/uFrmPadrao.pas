unit uFrmPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, CPanelGradient, StdCtrls, CLabel, ImgList, StdActns,
  CActionList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ComCtrls, CStatusBar,
  CPageControl, EditAlign, CEdit, CMemo, CButtonGroup, ButtonGroup, CButton,
  Buttons, CBitBtn, ActnList, System.Actions, System.ImageList;

type
  TFrmPadrao = class(TForm)
    imgIcones: TImageList;
    PagAbas: TCPageControl;
    TabAbas: TTabSheet;
    Acao: TActionList;
    actFechar: TAction;
    actExecutar: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    actNovo: TAction;
    PanBotoes: TCPanelGradient;
    BtnSalvar: TCBitBtn;
    BtnFechar: TCBitBtn;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Posiciona;
  private
    { Private declarations }
  public
    { Public declarations }
    Formulario : TForm;
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

procedure TFrmPadrao.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPadrao.FormCreate(Sender: TObject);
begin
  Formulario := (Sender as TForm);
  (Formulario.FindComponent('PagAbas') as TCPageControl).ActivePageIndex := 0;
end;

procedure TFrmPadrao.FormShow(Sender: TObject);
begin
  Posiciona;
end;

procedure TFrmPadrao.Posiciona;
var
  r : TRect;
begin
  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  if Formulario.FormStyle = fsMDIChild then
  begin
    Left := r.Left + 10;
    Top := r.top + 10;
  end
  else
  begin
    Left := r.Left + 175;
    Top := r.top + 57;
  end;
end;

end.
