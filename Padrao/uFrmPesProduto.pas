unit uFrmPesProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, DB, DBClient, Provider, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, FMTBcd, SqlExpr, CLookUp,
  System.Actions;

type
  TFrmPesProduto = class(TFrmPadraoPesquisa)
    CLabel42: TCLabel;
    DBEdescProduto: TCDBEdit;
    cdsPadraodescProduto: TStringField;
    cdsPadraoidFabricante: TIntegerField;
    cdsPadraocodFabricante: TStringField;
    cdsPadraodescAplicacao: TStringField;
    DBEcodFabricante: TCDBEdit;
    CLabel32: TCLabel;
    LookFabricante: TCLookUp;
    DBEidFabricante: TCDBEdit;
    CLabel31: TCLabel;
    DBEdescAplicacao: TCDBEdit;
    CLabel1: TCLabel;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGrididFabricante: TIntegerField;
    cdsGriddescFabricante: TStringField;
    cdsGridcodFabricante: TStringField;
    cdsGriddescAplicacao: TStringField;
    cdsGridstProduto: TStringField;
    PanSimilar: TCPanelGradient;
    CLabel2: TCLabel;
    GridSimilar: TCDBGrid;
    dsProdutoSimilar: TDataSource;
    cdsProdutoSimilar: TClientDataSet;
    dspProdutoSimilar: TDataSetProvider;
    sdsProdutoSimilar: TSQLDataSet;
    cdsProdutoSimilaridProdutoSimilar: TIntegerField;
    cdsProdutoSimilardescProduto: TStringField;
    procedure cdsGridAfterScroll(DataSet: TDataSet);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridSimilarDblClick(Sender: TObject);
    procedure GridSimilarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdescProdutoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idProduto : integer;
    busca : string;
  end;

var
  FrmPesProduto: TFrmPesProduto;

implementation

uses uDmFind;

{$R *.dfm}

procedure TFrmPesProduto.actFecharExecute(Sender: TObject);
begin
  idProduto := 0;
  inherited;

end;

procedure TFrmPesProduto.cdsGridAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsGrid.IsEmpty then
  begin
    cdsProdutoSimilar.Active := false;
    cdsProdutoSimilar.CommandText := 'SELECT sim.idProdutoSimilar,  pro.descProduto FROM ProdutoSimilar AS sim INNER JOIN Produto AS pro ON sim.idProdutoSimilar = pro.idProduto WHERE 1=2';
    cdsProdutoSimilar.Active := true;
  end
  else
  begin
    cdsProdutoSimilar.Active := false;
    cdsProdutoSimilar.CommandText := 'SELECT sim.idProdutoSimilar,  pro.descProduto FROM ProdutoSimilar AS sim INNER JOIN Produto AS pro ON sim.idProdutoSimilar = pro.idProduto WHERE sim.idProduto = ' + cdsGrididProduto.AsString;
    cdsProdutoSimilar.Active := true;
  end;

end;

procedure TFrmPesProduto.DBEdescProdutoEnter(Sender: TObject);
begin
  inherited;
  DBEdescProduto.SelStart := 1;
end;

procedure TFrmPesProduto.DBGridDblClick(Sender: TObject);
begin
  idProduto := 0;
  if not cdsGrid.IsEmpty then
    idProduto := cdsGrididProduto.AsInteger;
  inherited;

end;

procedure TFrmPesProduto.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  idProduto := 0;
  if not cdsGrid.IsEmpty then
    idProduto := cdsGrididProduto.AsInteger;
  inherited;

end;

procedure TFrmPesProduto.FormShow(Sender: TObject);
begin
  inherited;
  //Quando vem a variável busca com valor já preenche automático
  if trim(busca) <> '' then
  begin
//    DBEdescProduto.SetFocus;
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('descProduto').AsString := busca;
  end;
end;

procedure TFrmPesProduto.GridSimilarDblClick(Sender: TObject);
begin
  inherited;
  idProduto := 0;
  if not cdsProdutoSimilar.IsEmpty then
    idProduto := cdsProdutoSimilar.FieldByName('idProduto').AsInteger;
  close;
end;

procedure TFrmPesProduto.GridSimilarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  idProduto := 0;
  if not cdsProdutoSimilar.IsEmpty then
    idProduto := cdsProdutoSimilar.FieldByName('idProduto').AsInteger;
  if Key = VK_RETURN then 
    close;

end;

end.
