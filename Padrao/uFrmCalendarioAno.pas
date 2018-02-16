unit uFrmCalendarioAno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzSpnEdt, ExtCtrls, RzPanel, Grids, RzGrids;

type
  TFrmCalendarioAno = class(TForm)
    Ano: TRzSpinner;
    Mes: TRzStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MesDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalendarioAno: TFrmCalendarioAno;

implementation

{$R *.dfm}

procedure TFrmCalendarioAno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCalendarioAno.FormCreate(Sender: TObject);
begin
  Height := 278;
  Width := 316;
end;

procedure TFrmCalendarioAno.FormShow(Sender: TObject);
begin
  Mes.Cells[0,0] := 'Janeiro';
  Mes.Cells[1,0] := 'Fevereiro';
  Mes.Cells[2,0] := 'Março';
  Mes.Cells[0,1] := 'Abril';
  Mes.Cells[1,1] := 'Maio';
  Mes.Cells[2,1] := 'Junho';
  Mes.Cells[0,2] := 'Julho';
  Mes.Cells[1,2] := 'Agosto';
  Mes.Cells[2,2] := 'Setembro';
  Mes.Cells[0,3] := 'Outubro';
  Mes.Cells[1,3] := 'Novembro';
  Mes.Cells[2,3] := 'Dezembro';
end;

procedure TFrmCalendarioAno.MesDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  texto : string;
  largurat : integer;
  largurac : integer;
  alturat : integer;
  alturac : integer;
begin
  texto := mes.Cells[ACol, ARow];
  largurat := Canvas.TextWidth(texto) div 2;
  largurac := mes.ColWidths[ACol] div 2;

  alturat := Canvas.TextHeight(texto) div 2;
  alturac := mes.DefaultRowHeight div 2;

  Mes.Canvas.FillRect(Rect);
  Mes.Canvas.TextOut(Rect.Left+largurac-largurat-10,Rect.Top+alturac-alturat, texto);

end;

end.
