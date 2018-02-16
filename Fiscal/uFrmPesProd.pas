unit uFrmPesProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, StdCtrls, CLabel, DB, SqlExpr, DBClient,
  Provider, ActnList, ImgList, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  Grids, DBGrids, CDBGrid, CGroupBox;

type
  TFrmPesProd = class(TFrmPadraoPesquisa)
    lbl1: TCLabel;
    BtnVoltar: TCBitBtn;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGriddescFabricante: TStringField;
    cdsPadraoidFabricante: TIntegerField;
    procedure BtnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    codFabricante, idProduto : String;
  end;

var
  FrmPesProd: TFrmPesProd;

implementation

{$R *.dfm}

procedure TFrmPesProd.BtnVoltarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmPesProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not cdsGrid.IsEmpty then
    idProduto := cdsGrid.FieldByName('idProduto').AsString;
  inherited;
end;

procedure TFrmPesProd.FormShow(Sender: TObject);
begin
  inherited;
  cdsGrid.Active := false;
  cdsGrid.CommandText := 'SELECT idProduto, descProduto, descFabricante FROM Produto P INNER JOIN Fabricante F ON P.idFabricante = F.idFabricante WHERE P.codFabricante = ' + QuotedStr(codFabricante);
  cdsGrid.Active := True;
end;

end.
