unit uFrmRelEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBCheckBox, CGroupBox;

type
  TFrmRelEntrega = class(TFrmPadraoRelEmpresa)
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidPedidoIni: TIntegerField;
    cdsPadraoidPedidoFim: TIntegerField;
    cdsPadraodtPedidoIni: TDateField;
    cdsPadraodtPedidoFim: TDateField;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostParcial: TBooleanField;
    cdsPadraostTotal: TBooleanField;
    cdsPadraostCancelado: TBooleanField;
    cdsPadraostEncerrado: TBooleanField;
    cdsPadraoconsolidaFilial: TStringField;
    cdsPadraoidProdutoIni: TIntegerField;
    cdsPadraoidProdutoFim: TIntegerField;
    cdsPadraolistaFornecedor: TStringField;
    cdsPadraosomentePendente: TStringField;
    cdsPadraonrOrigIni: TIntegerField;
    cdsPadraonrOrigFim: TIntegerField;
    CLabel4: TCLabel;
    CLabel8: TCLabel;
    CLabel6: TCLabel;
    CLabel5: TCLabel;
    CLabel11: TCLabel;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEidPedidoFim: TCDBEdit;
    DBEidPedidoIni: TCDBEdit;
    DBEdtPedidoFim: TCDBEdit;
    DBEdtPedidoIni: TCDBEdit;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CGroupBox1: TCGroupBox;
    DBCKstCancelado: TCDBCheckBox;
    DBCKstTotal: TCDBCheckBox;
    DBCKstParcial: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    DBCKstEncerrado: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBEidProdutoFim: TCDBEdit;
    DBEidProdutoIni: TCDBEdit;
    frxRel: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure frxRelClosePreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   par : integer;
  end;

var
  FrmRelEntrega: TFrmRelEntrega;

implementation

uses uDmPadrao, uFuncao, uDmFind;

{$R *.dfm}

procedure TFrmRelEntrega.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, status : string;
begin
//  inherited;
  cdsRelatorio.Active := false;
  sql := 'SELECT PP.qtPedida, PP.qtAtendida, F.descCadFornecedor, Pr.descProduto, F.idCnpjCpf, P.idPedidoCompra, P.dtPedido, PP.dtEntrega FROM PedidoCompra P INNER JOIN  PedidoCompraProd PP ' +
         ' ON PP.idEmpresa = P.idEmpresa AND PP.idCadEmpresa = P.idCadEmpresa AND PP.idPedidoCompra = P.idPedidoCompra' +
         ' INNER JOIN vCadFornecedorContabil F ON P.idFornecedor = F.idFornecedor INNER JOIN Produto Pr' +
         ' ON PP.idProduto = Pr.idProduto  WHERE P.idEmpresa = ' + DBEidEmpresa.Text;
  if cdsPadraoconsolidaFilial.AsString = 'N' then
    sql := sql + ' AND P.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(DBEidFornecedor.Text) <> '' then
    sql := sql + ' AND P.idFornecedor = ' + DBEidFornecedor.Text;

  if trim(DBEidPedidoIni.Text) <> '' then
    sql := sql + ' AND P.idPedidoCompra >= ' + DBEidPedidoIni.Text;
  if trim(DBEidPedidoFim.Text) <> '' then
    sql := sql + ' AND P.idPedidoCompra <= ' + DBEidPedidoFim.Text;
  if trim(DBEdtPedidoIni.Text) <> '' then
    sql := sql + ' AND P.dtPedido >= ' + funcao.RetornaValorEField(DBEdtPedidoIni, 3);
  if trim(DBEdtPedidoFim.Text) <> '' then
    sql := sql + ' AND P.dtPedido <= ' + funcao.RetornaValorEField(DBEdtPedidoFim, 3);
  if trim(DBEidProdutoIni.Text) <> '' then
    sql := sql + ' AND PP.idProduto >= ' + cdsPadraoidProdutoIni.AsString;
  if trim(DBEidProdutoFim.Text) <> '' then
    sql := sql + ' AND PP.idProduto <= ' + cdsPadraoidProdutoFim.AsString;

  status := '';
  if cdsPadraostAtivo.AsBoolean then
    status := QuotedStr('ATIVO');

  if cdsPadraostParcial.AsBoolean then
    if trim(  status) <> '' then
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
    sql := sql + ' AND P.stPedido IN (' + status + ')';
  cdsRelatorio.CommandText := sql;

  caminho_rel := dmPadrao.RetornaConfig('caminho_rel');
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport;

end;

procedure TFrmRelEntrega.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraostAtivo.AsBoolean := true;
  cdsPadraostParcial.AsBoolean := true;
  cdsPadraostTotal.AsBoolean := true;
  cdsPadraostEncerrado.AsBoolean := true;
  cdsPadraostCancelado.AsBoolean := false;
  cdsPadraoconsolidaFilial.AsString := 'N';
end;

procedure TFrmRelEntrega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmPadrao.cdsEmpresaContabil.Active := false;
  inherited;
  FrmRelEntrega := nil;
end;

procedure TFrmRelEntrega.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := true;
  relatorio := 'RelEntrega.fr3';
  par := 0;
end;

procedure TFrmRelEntrega.FormShow(Sender: TObject);
begin
  inherited;
  Height := 290;
  Width := 545;
end;

procedure TFrmRelEntrega.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

end.
