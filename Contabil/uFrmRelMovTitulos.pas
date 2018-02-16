unit uFrmRelMovTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, ExtDlgs,
  cxShellBrowserDialog, Menus, cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr,
  Provider, DBClient, ActnList, ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient;

type
  TFrmRelMovTitulos = class(TFrmPadraoPesquisaDevExpress)
    cdsGrididMov: TIntegerField;
    cdsGrididTituloPag: TStringField;
    cdsGrididTituloRec: TStringField;
    cdsGrididGerencial: TIntegerField;
    DBViewidMov: TcxGridDBColumn;
    DBViewidTituloPag: TcxGridDBColumn;
    DBViewidTituloRec: TcxGridDBColumn;
    DBViewidGerencial: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sql : string;
  end;

var
  FrmRelMovTitulos: TFrmRelMovTitulos;

implementation

{$R *.dfm}

procedure TFrmRelMovTitulos.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsNormal;
  Height := 393;
  Width := 542;
  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;
end;

end.
