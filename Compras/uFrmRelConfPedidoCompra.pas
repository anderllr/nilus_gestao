unit uFrmRelConfPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpFiscal, FMTBcd, DB, SqlExpr, CFind, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CDBCheckBox, CGroupBox, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelConfPedidoCompra = class(TFrmPadraoRelEmpFiscal)
    frxRel: TfrxReport;
    DBEidPedidoFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidPedidoIni: TCDBEdit;
    CLabel8: TCLabel;
    DBEdtPedidoFim: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtPedidoIni: TCDBEdit;
    CLabel5: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    cdsPadraoidPedidoIni: TIntegerField;
    cdsPadraoidPedidoFim: TIntegerField;
    cdsPadraodtPedidoIni: TDateField;
    cdsPadraodtPedidoFim: TDateField;
    DBEidCadEmpresa: TCDBEdit;
    CGroupBox1: TCGroupBox;
    DBCKstCancelado: TCDBCheckBox;
    DBCKstTotal: TCDBCheckBox;
    DBCKstParcial: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostParcial: TBooleanField;
    cdsPadraostTotal: TBooleanField;
    cdsPadraostCancelado: TBooleanField;
    DBCKstEncerrado: TCDBCheckBox;
    cdsPadraostEncerrado: TBooleanField;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaFilial: TStringField;
    DBEidProdutoFim: TCDBEdit;
    CLabel1: TCLabel;
    DBEidProdutoIni: TCDBEdit;
    CLabel3: TCLabel;
    cdsPadraoidProdutoIni: TIntegerField;
    cdsPadraoidProdutoFim: TIntegerField;
    cdsPadraolistaFornecedor: TStringField;
    cdsPadraosomentePendente: TStringField;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEnrOrigFim: TCDBEdit;
    DBEnrOrigIni: TCDBEdit;
    cdsPadraonrOrigIni: TStringField;
    cdsPadraonrOrigFim: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelClosePreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelConfPedidoCompra: TFrmRelConfPedidoCompra;

implementation

uses uDmPadrao, uFuncao, uDmFind, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelConfPedidoCompra.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, status : string;
begin
  inherited;
  cdsRelatorio.Active := false;
  sql := 'SELECT * FROM vConfPedidoCompra WHERE idEmpresa = ' + DBEidEmpresa.Text;

  if cdsPadraoconsolidaFilial.AsString = 'N' then
    sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(DBEidFornecedor.Text) <> '' then
    sql := sql + ' AND idFornecedor = ' + DBEidFornecedor.Text;

  if trim(DBEidPedidoIni.Text) <> '' then
    sql := sql + ' AND idPedidoCompra >= ' + DBEidPedidoIni.Text;
  if trim(DBEidPedidoFim.Text) <> '' then
    sql := sql + ' AND idPedidoCompra <= ' + DBEidPedidoFim.Text;
  if trim(DBEdtPedidoIni.Text) <> '' then
    sql := sql + ' AND dtPedido >= ' + funcao.RetornaValorEField(DBEdtPedidoIni, 3);
  if trim(DBEdtPedidoFim.Text) <> '' then
    sql := sql + ' AND dtPedido <= ' + funcao.RetornaValorEField(DBEdtPedidoFim, 3);
  if trim(DBEidProdutoIni.Text) <> '' then
    sql := sql + ' AND idProduto >= ' + cdsPadraoidProdutoIni.AsString;
  if trim(DBEidProdutoFim.Text) <> '' then
    sql := sql + ' AND idProduto <= ' + cdsPadraoidProdutoFim.AsString;
  if trim(DBEnrOrigIni.Text) <> '' then
    sql := sql + ' AND nrPedidoOriginal >= ' + QuotedStr(DBEnrOrigIni.Text);
  if trim(DBEnrOrigFim.Text) <> '' then
    sql := sql + ' AND nrPedidoOriginal <= ' + QuotedStr(DBEnrOrigFim.Text);


  status := '';
  if cdsPadraostAtivo.AsBoolean then
    status := QuotedStr('ATIVO');

  if cdsPadraostParcial.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + QuotedStr('PARCIAL')
    else
      status := QuotedStr('PARCIAL');

  if cdsPadraostTotal.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + QuotedStr('TOTAL')
    else
      status := QuotedStr('TOTAL');

  if cdsPadraostEncerrado.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + QuotedStr('ENCERRADO')
    else
      status := QuotedStr('ENCERRADO');

  if cdsPadraostCancelado.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + QuotedStr('CANCELADO')
    else
      status := QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND stPedido IN (' + status + ')';
  cdsRelatorio.CommandText := sql;

  caminho_rel := dmPadrao.RetornaConfig('caminho_rel');
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport;
end;

procedure TFrmRelConfPedidoCompra.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraostAtivo.AsBoolean := true;
  cdsPadraostParcial.AsBoolean := true;
  cdsPadraostTotal.AsBoolean := true;
  cdsPadraostEncerrado.AsBoolean := true;
  cdsPadraostCancelado.AsBoolean := false;
  cdsPadraoconsolidaFilial.AsString := 'N';
end;

procedure TFrmRelConfPedidoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmPadrao.cdsEmpresaContabil.Active := false;
  inherited;
  frmRelConfPedidoCompra := nil;
end;

procedure TFrmRelConfPedidoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := true;
  relatorio := 'RelConfPedidoCompra.fr3';
  par := 0;
end;

procedure TFrmRelConfPedidoCompra.FormShow(Sender: TObject);
begin
  inherited;
  Height := 290;
  Width := 545;
end;

procedure TFrmRelConfPedidoCompra.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

end.
