unit uFrmCTeValidacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, CDBGrid,
  Vcl.StdCtrls, CGroupBox, Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient,
  CLabel;

type
  TFrmCTeValidacao = class(TForm)
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
  FrmCTeValidacao: TFrmCTeValidacao;

implementation

{$R *.dfm}

uses uFrmCadCTe;

procedure TFrmCTeValidacao.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCTeValidacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
