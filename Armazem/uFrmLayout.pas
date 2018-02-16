unit uFrmLayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, DB, Provider, DBClient, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, ComCtrls, CPageControl;

type
  TFrmLayout = class(TFrmCadPadraoGrid)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLayout: TFrmLayout;

implementation

{$R *.dfm}

end.
