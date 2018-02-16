unit uFrmLayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, Grids, DBGrids, CDBGrid, SqlExpr, DB,
  Provider, DBClient, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls,
  CPageControl, CFind;

type
  TFrmLayout = class(TFrmCadPadraoEmpFiscal)
    DBGLayout: TCDBGrid;
    BtnVisualizar: TCBitBtn;
    CLabel76: TCLabel;
    DBEidDocSerieT: TCDBEdit;
    CLookUp3: TCLookUp;
    FindSerie: TCFind;
    cdsnfLayout: TClientDataSet;
    dspNfLayout: TDataSetProvider;
    sdsLayout: TSQLDataSet;
    dsLayout: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLayout: TFrmLayout;

implementation
uses uDmPadrao, uFrmPrincipal,uFuncao, uFrmCadPadrao;
{$R *.dfm}

procedure TFrmLayout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmLayout := nil;
end;

end.
