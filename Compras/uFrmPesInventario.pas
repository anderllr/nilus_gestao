unit uFrmPesInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil;

type
  TFrmPesInventario = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanFornecedor: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    PanRomaneio: TCPanelGradient;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CGroupBox1: TCGroupBox;
    DBCKstFechado: TCDBCheckBox;
    DBCKstContado: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    FindFornecedor: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel1: TCLabel;
    DBEidFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidIni: TCDBEdit;
    CLabel8: TCLabel;
    DBCKstCancelado: TCDBCheckBox;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraostAtivo: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    LookProdDeposito: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    CLabel2: TCLabel;
    cdsPadraoidIni: TIntegerField;
    cdsPadraoidFim: TIntegerField;
    cdsPadraostContado: TStringField;
    cdsPadraostFechado: TStringField;
    cdsPadraostCancelado: TStringField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididInventario: TIntegerField;
    cdsGriddescInventario: TStringField;
    cdsGridstInventario: TStringField;
    cdsPadraoidProdDeposito: TIntegerField;
    cdsGriddtInventario: TSQLTimeStampField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa : integer;
    id : integer;
  end;

var
  FrmPesInventario: TFrmPesInventario;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind;

{$R *.dfm}

procedure TFrmPesInventario.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  id := 0;
  status := '';
  sql := 'SELECT i.idEmpresa, i.idCadEmpresa, i.idInventario, i.dtInventario, i.descInventario, i.stInventario FROM Inventario i';
  if (trim(DBEidProduto.Text) <> '') or (trim(DBEidProdDeposito.Text) <> '') then
  begin
    sql := sql + ' INNER JOIN InventarioProd ip ON i.idEmpresa = ip.idEmpresa AND i.idCadEmpresa = ip.idCadEmpresa ' +
          ' AND i.idInventario = ip.idInventario WHERE 1=1';
    if trim(DBEidProduto.Text) <> '' then
      sql := sql + ' AND ip.idProduto = ' + DBEidProduto.Text;
    if trim(DBEidProdDeposito.Text) <> '' then
      sql := sql + ' AND ip.idProdDeposito = ' + DBEidProdDeposito.Text;
  end
  else
    sql := sql +  ' WHERE 1=1';

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND i.idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND i.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND i.dtInventario >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND i.dtInventario <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idIni').AsString) <> '' then
    sql := sql + ' AND i.idInventario >= ' + QuotedStr(cdsPadrao.FieldByName('idIni').AsString);
  if trim(cdsPadrao.FieldByName('idFim').AsString) <> '' then
    sql := sql + ' AND i.idInventario <= ' + QuotedStr(cdsPadrao.FieldByName('idFim').AsString);
  if cdsPadrao.FieldByName('stAtivo').AsString = 'S' then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stContado').AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('CONTADO')
    else
      status := status + ',' + QuotedStr('CONTADO');
  if cdsPadrao.FieldByName('stFechado').AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('FECHADO')
    else
      status := status + ',' + QuotedStr('FECHADO');
  if cdsPadrao.FieldByName('stCancelado').AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND i.stInventario IN (' + status + ')';
  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidProduto.SetFocus;
  inherited;
end;

procedure TFrmPesInventario.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';

  Dataset.FieldByName('stAtivo').AsString := 'S';
  Dataset.FieldByName('stContado').AsString := 'S';
end;

procedure TFrmPesInventario.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;
  end;}
end;

procedure TFrmPesInventario.DBGridDblClick(Sender: TObject);
begin
  if (not cdsGrid.IsEmpty) then
    id := cdsGrididInventario.AsInteger;
  inherited;
end;

procedure TFrmPesInventario.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not cdsGrid.IsEmpty) then
    id := cdsGrididInventario.AsInteger;
  inherited;
end;

procedure TFrmPesInventario.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidProduto;
end;

procedure TFrmPesInventario.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsString := 'S';
  cdsPadrao.FieldByName('stContado').AsString := 'S';
  cdsPadrao.FieldByName('stFechado').AsString := 'S';
  cdsPadrao.FieldByName('stCancelado').AsString := 'S';
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;
  id := 0;
end;

end.
