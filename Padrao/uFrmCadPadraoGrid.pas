unit uFrmCadPadraoGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Grids,
  DBGrids, CDBGrid, CGroupBox, CEdit, CDBEdit, CPanelGradient, FMTBcd, SqlExpr,
  System.Actions, System.ImageList;

type
  TFrmCadPadraoGrid = class(TFrmCadPadrao)
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPadraoGrid: TFrmCadPadraoGrid;

implementation

{$R *.dfm}


procedure TFrmCadPadraoGrid.FormCreate(Sender: TObject);
begin
  inherited;
  Grid := true;
end;

end.
