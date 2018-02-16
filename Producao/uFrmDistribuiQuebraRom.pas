unit uFrmDistribuiQuebraRom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, CDBGrid,
  Vcl.StdCtrls, Vcl.Buttons, CBitBtn, CLabel, Vcl.ExtCtrls, CPanelGradient,
  Vcl.Mask, Vcl.DBCtrls, CDBEdit;

type
  TFrmDistribuiQuebraRom = class(TForm)
    PanTopo: TCPanelGradient;
    CLabel1: TCLabel;
    BtnVoltar: TCBitBtn;
    PanBotoes: TCPanelGradient;
    DBGrid: TCDBGrid;
    DBEqtDescontoTotal: TCDBEdit;
    CLabel43: TCLabel;
    procedure DBGridColEnter(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
  public
    { Public declarations }
  end;

var
  FrmDistribuiQuebraRom: TFrmDistribuiQuebraRom;

implementation

{$R *.dfm}

uses uFrmCadOrdemFrete;

procedure TFrmDistribuiQuebraRom.BtnVoltarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmDistribuiQuebraRom.DBGridColEnter(Sender: TObject);
begin
  if (DBGrid.SelectedIndex in [4]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmDistribuiQuebraRom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
