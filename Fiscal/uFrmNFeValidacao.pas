unit uFrmNFeValidacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, CDBGrid,
  Vcl.StdCtrls, CGroupBox, Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient,
  CLabel, Data.DB;

type
  TFrmNFeValidacao = class(TForm)
    PanBotoes: TCPanelGradient;
    BtnFechar: TCBitBtn;
    PanTopo: TCPanelGradient;
    GrupoGrid: TCGroupBox;
    DBGrid: TCDBGrid;
    LblCad: TCLabel;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNFeValidacao: TFrmNFeValidacao;

implementation

{$R *.dfm}

uses uFrmNotaFiscal;

procedure TFrmNFeValidacao.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmNFeValidacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
