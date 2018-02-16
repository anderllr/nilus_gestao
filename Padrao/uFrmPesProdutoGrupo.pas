unit uFrmPesProdutoGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, DB, DBClient, Provider, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, FMTBcd, SqlExpr, CLookUp;

type
  TFrmPesProdutoGrupo = class(TFrmPadraoPesquisa)
    cdsPadraoidFabricante: TIntegerField;
    LookFabricante: TCLookUp;
    DBEidFabricante: TCDBEdit;
    CLabel31: TCLabel;
    LookSubGrupo: TCLookUp;
    DBEidProdSubGrupo: TCDBEdit;
    CLabel7: TCLabel;
    LookGrupo: TCLookUp;
    DBEidProdGrupo: TCDBEdit;
    CLabel6: TCLabel;
    PanSimilar: TCPanelGradient;
    cdsPadraoidProdGrupo: TIntegerField;
    cdsPadraoidProdSubGrupo: TIntegerField;
    cdsGridSEL: TBooleanField;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGridcodFabricante: TStringField;
    cdsGridstProduto: TStringField;
    BtnNenhum: TCBitBtn;
    BtnTodos: TCBitBtn;
    BtnConfirmar: TCBitBtn;
    lblInfo: TCLabel;
    procedure DBGridDblClick(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure BtnTodosClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure Contar;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    qtSel : integer;
  public
    { Public declarations }
    id: integer;
  end;

var
  FrmPesProdutoGrupo: TFrmPesProdutoGrupo;

implementation

uses uDmFind, uFuncao;

{$R *.dfm}

procedure TFrmPesProdutoGrupo.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  cdsGrid.Filtered := false;
  sql := 'SELECT CONVERT(BIT, 1) SEL, idProduto, descProduto, codFabricante, stProduto FROM Produto WHERE 1=1 ';
  if trim(DBEidProdGrupo.Text) <> '' then
    sql := sql + ' AND idProdGrupo = ' + DBEidProdGrupo.Text;
  if trim(DBEidProdSubGrupo.Text) <> '' then
    sql := sql + ' AND idProdSubGrupo = ' + DBEidProdSubGrupo.Text;
  if trim(DBEidFabricante.Text) <> '' then
    sql := sql + ' AND idFabricante = ' + DBEidFabricante.Text;
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  qtSel := cdsGrid.RecordCount;
  BtnConfirmar.Enabled := qtSel > 0;
  BtnNenhum.Enabled := qtSel > 0;
  BtnTodos.Enabled := ((cdsGrid.RecordCount > 0) and (qtSel < cdsGrid.RecordCount));
  Contar;
//  inherited;
end;

procedure TFrmPesProdutoGrupo.actFecharExecute(Sender: TObject);
begin
  id := 0;
  inherited;

end;

procedure TFrmPesProdutoGrupo.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  if messagedlg('Deseja sobrescrever os dados de produtos?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    id := 1 //Tag para sobrescrever todos os produtos do inventário
  else
    id := 2;
  close;
end;

procedure TFrmPesProdutoGrupo.BtnNenhumClick(Sender: TObject);
begin
  inherited;
  funcao.MarcaGrid(false, DBGrid);
  qtSel := 0;
  BtnConfirmar.Enabled := qtSel > 0;
  BtnNenhum.Enabled := qtSel > 0;
  BtnTodos.Enabled := ((cdsGrid.RecordCount > 0) and (qtSel < cdsGrid.RecordCount));
  Contar;
end;

procedure TFrmPesProdutoGrupo.BtnTodosClick(Sender: TObject);
begin
  inherited;
  funcao.MarcaGrid(true, DBGrid);
  qtSel := cdsGrid.RecordCount;
  BtnConfirmar.Enabled := qtSel > 0;
  BtnNenhum.Enabled := qtSel > 0;
  BtnTodos.Enabled := ((cdsGrid.RecordCount > 0) and (qtSel < cdsGrid.RecordCount));
  Contar;
end;

procedure TFrmPesProdutoGrupo.Contar;
begin
  lblInfo.Caption := '[' + IntToStr(cdsGrid.RecordCount) + '] Listado(s)     [' + IntToStr(qtSel) +
          '] Selecionado(s)';
end;

procedure TFrmPesProdutoGrupo.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if FieldByName('SEL').AsBoolean then
        qtSel := qtSel - 1
      else
        qtSel := qtSel + 1;
    end;
    BtnConfirmar.Enabled := qtSel > 0;
    BtnNenhum.Enabled := qtSel > 0;
    BtnTodos.Enabled := ((cdsGrid.RecordCount > 0) and (qtSel < cdsGrid.RecordCount));
    Contar;
  end;
end;

procedure TFrmPesProdutoGrupo.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmPesProdutoGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  btnConfirmar.Enabled := false;
  btnNenhum.Enabled := false;
  btnTodos.Enabled := false;
end;

end.
