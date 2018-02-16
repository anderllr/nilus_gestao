unit uFrmCarregaEstoque;

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
  cxGrid, StdCtrls, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  cxNavigator, System.Actions, System.ImageList;

type
  TFrmCarregaEstoque = class(TFrmPadraoPesquisaDevExpress)
    cdsGrididEstoque: TLargeintField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididProdDeposito: TSmallintField;
    cdsGriddtEstoque: TSQLTimeStampField;
    cdsGrididProduto: TIntegerField;
    cdsGridqtEstoque: TFMTBCDField;
    cdsGridvlEstoque: TFMTBCDField;
    cdsGridtpDocumento: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGrididFornecedor: TIntegerField;
    cdsGrididCadFornecedor: TSmallintField;
    cdsGridsinal: TSmallintField;
    cdsGrididEstornado: TLargeintField;
    DBViewidEstoque: TcxGridDBColumn;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidProdDeposito: TcxGridDBColumn;
    DBViewdtEstoque: TcxGridDBColumn;
    DBViewidProduto: TcxGridDBColumn;
    DBViewqtEstoque: TcxGridDBColumn;
    DBViewvlEstoque: TcxGridDBColumn;
    DBViewtpDocumento: TcxGridDBColumn;
    DBViewidDocSerie: TcxGridDBColumn;
    DBViewidFornecedor: TcxGridDBColumn;
    DBViewidCadFornecedor: TcxGridDBColumn;
    DBViewnrDocumento: TcxGridDBColumn;
    DBViewsinal: TcxGridDBColumn;
    DBViewidEstornado: TcxGridDBColumn;
    cdsGridsinal1: TStringField;
    DBViewsinal1: TcxGridDBColumn;
    cdsGridnrDocumento: TStringField;
    cdsGrididCadEmpresaOri: TSmallintField;
    cdsGrididSafra: TIntegerField;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idProduto : string
  end;

var
  FrmCarregaEstoque: TFrmCarregaEstoque;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao;

{$R *.dfm}

procedure TFrmCarregaEstoque.actPesquisarExecute(Sender: TObject);
var
  sql : string;
begin
//  inherited;
  sql := 'SELECT E.*, CASE WHEN sinal = 1 THEN ' + QuotedStr('ENT') + ' ELSE ' + QuotedStr('SAI') + ' END sinal1 FROM Estoque E' +
         ' WHERE idEmpresa = ' + idEmpresa + ' AND idProduto = ' + idProduto;
  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;
end;

procedure TFrmCarregaEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  empresa := true;
end;

procedure TFrmCarregaEstoque.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsNormal;
end;

end.
