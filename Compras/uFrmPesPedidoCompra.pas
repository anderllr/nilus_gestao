unit uFrmPesPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions, System.ImageList;

type
  TFrmPesPedidoCompra = class(TFrmPadraoPesqEmpFiscal)
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
    DBCKstFechada: TCDBCheckBox;
    DBCKstParcial: TCDBCheckBox;
    FindFornecedor: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel1: TCLabel;
    DBEidPedidoFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidPedidoIni: TCDBEdit;
    CLabel8: TCLabel;
    DBCKstCancelado: TCDBCheckBox;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraostParcial: TStringField;
    cdsPadraostEncerrada: TStringField;
    cdsPadraostCancelado: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsPadraoidPedidoIni: TIntegerField;
    cdsPadraoidPedidoFim: TIntegerField;
    cdsGrididPedidoCompra: TIntegerField;
    cdsGriddtPedido: TSQLTimeStampField;
    cdsGridobsPedido: TStringField;
    cdsGridstPedido: TStringField;
    CLookUp1: TCLookUp;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    CLabel7: TCLabel;
    DBCKstTotal: TCDBCheckBox;
    cdsPadraostTotal: TStringField;
    DBEnrOriginalFim: TCDBEdit;
    CLabel2: TCLabel;
    DBEnrOriginalIni: TCDBEdit;
    CLabel3: TCLabel;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TStringField;
    cdsPadraonrOriginalIni: TStringField;
    cdsPadraonrOriginalFim: TStringField;
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
    idPedido : integer;
  end;

var
  FrmPesPedidoCompra: TFrmPesPedidoCompra;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind;

{$R *.dfm}

procedure TFrmPesPedidoCompra.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  idPedido := 0;
  status := '';
  sql := 'SELECT p.idEmpresa, p.idCadEmpresa, p.idPedidoCompra, p.dtPedido, p.obsPedido, p.stPedido FROM PedidoCompra p';
  if (trim(cdsPadraoidProduto.AsString) <> '') or (trim(cdsPadraoidMaquina.AsString) <> '') then
  begin
    sql := sql + ' LEFT JOIN PedidoCompraProd pp ON p.idEmpresa = pp.idEmpresa AND p.idCadEmpresa = pp.idCadEmpresa ' +
          ' AND p.idPedidoCompra = pp.idPedidoCompra WHERE 1=1';
    if trim(cdsPadraoidProduto.AsString) <> '' then
      sql := sql + ' AND pp.idProduto = ' + cdsPadraoidProduto.AsString;
    if trim(cdsPadraoidMaquina.AsString) <> '' then
      sql := sql + ' AND pp.idMaquina = ' + cdsPadraoidMaquina.AsString;
  end
  else
    sql := sql +  ' WHERE 1=1';

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND p.idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND p.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if (trim(cdsPadraoidFornecedor.AsString) <> '') then
    sql := sql + ' AND p.idFornecedor = ' + cdsPadraoidFornecedor.AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND p.dtPedido >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND p.dtPedido <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idPedidoIni').AsString) <> '' then
    sql := sql + ' AND p.idPedidoCompra >= ' + QuotedStr(cdsPadrao.FieldByName('idPedidoIni').AsString);
  if trim(cdsPadrao.FieldByName('idPedidoFim').AsString) <> '' then
    sql := sql + ' AND p.idPedidoCompra <= ' + QuotedStr(cdsPadrao.FieldByName('idPedidoFim').AsString);
  if trim(cdsPadrao.FieldByName('nrOriginalIni').AsString) <> '' then
    sql := sql + ' AND p.nrPedidoOriginal >= ' + QuotedStr(cdsPadrao.FieldByName('nrOriginalIni').AsString);
  if trim(cdsPadrao.FieldByName('nrOriginalFim').AsString) <> '' then
    sql := sql + ' AND p.nrPedidoOriginal <= ' + QuotedStr(cdsPadrao.FieldByName('nrOriginalFim').AsString);

  if cdsPadrao.FieldByName('stAtivo').AsString = 'S' then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stParcial').AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('PARCIAL')
    else
      status := status + ',' + QuotedStr('PARCIAL');
  if cdsPadrao.FieldByName('stTotal').AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('TOTAL')
    else
      status := status + ',' + QuotedStr('TOTAL');
  if cdsPadrao.FieldByName('stCancelado').AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');
  if cdsPadrao.FieldByName('stEncerrada').AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('ENCERREADO')
    else
      status := status + ',' + QuotedStr('ENCERREADO');

  if trim(status) <> '' then
    sql := sql + ' AND p.stPedido IN (' + status + ')';
    //showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidProduto.SetFocus;
  inherited;
end;

procedure TFrmPesPedidoCompra.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';

  cdsPadrao.FieldByName('stAtivo').AsString := 'S';
  cdsPadrao.FieldByName('stParcial').AsString := 'S';
  cdsPadrao.FieldByName('stEncerrada').AsString := 'N';
  cdsPadrao.FieldByName('stCancelado').AsString := 'N';
  cdsPadrao.FieldByName('stTotal').AsString := 'N';
  DBCKstAtivo.Checked := False;
end;

procedure TFrmPesPedidoCompra.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPesPedidoCompra.DBGridDblClick(Sender: TObject);
begin
  if (not cdsGrid.IsEmpty) then
    idPedido := cdsGrididPedidoCompra.AsInteger;
  inherited;
end;

procedure TFrmPesPedidoCompra.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not cdsGrid.IsEmpty) then
    idPedido := cdsGrididPedidoCompra.AsInteger;
  inherited;
end;

procedure TFrmPesPedidoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidProduto;
end;

procedure TFrmPesPedidoCompra.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stParcial').AsBoolean := True;
  cdsPadrao.FieldByName('stEncerrada').AsBoolean := False;
  cdsPadrao.FieldByName('stCancelado').AsBoolean := False;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;
  idPedido := 0;
end;

end.
