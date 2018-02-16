unit uFrmRelPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpFiscal, FMTBcd, DB, SqlExpr, CFind, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  System.Actions, System.ImageList;

type
  TFrmRelPedidoCompra = class(TFrmPadraoRelEmpFiscal)
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
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEnrOrigFim: TCDBEdit;
    DBEnrOrigIni: TCDBEdit;
    cdsPadraonrOrigIni: TStringField;
    cdsPadraonrOrigFim: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelClosePreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimePdf;
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
    pdf : boolean;
  end;

var
  FrmRelPedidoCompra: TFrmRelPedidoCompra;

implementation

uses uDmPadrao, uFuncao, uDmFind, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelPedidoCompra.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel : string;
begin
  if (trim(DBEidFornecedor.Text) = '') and ((trim(DBEidPedidoIni.Text) = '') or (trim(DBEidPedidoFim.Text) = ''))  then
  begin
    messagedlg('É preciso informar o fornecedor ou o número do pedido!', mtwarning, [mbok], 0);
    exit;
  end;
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  cdsRelatorio.Active := false;
  sql := 'SELECT * FROM vPedidoCompra WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;

  if trim(DBEidFornecedor.Text) <> '' then
    sql := sql + ' AND idFornecedor = ' + DBEidFornecedor.Text;
  if trim(DBEidPedidoIni.Text) <> '' then
    sql := sql + ' AND idPedidoCompra >= ' + DBEidPedidoIni.Text;
  if trim(DBEidPedidoFim.Text) <> '' then
    sql := sql + ' AND idPedidoCompra <= ' + DBEidPedidoFim.Text;
  if trim(DBEdtPedidoIni.Text) <> '' then
    sql := sql + ' AND dtPedido >= ' + funcao.RetornaValorEField(DBEdtPedidoIni, 3);
  if trim(DBEdtPedidoIni.Text) <> '' then
    sql := sql + ' AND dtPedido <= ' + funcao.RetornaValorEField(DBEdtPedidoIni, 3);
  if trim(DBEdtPedidoFim.Text) <> '' then
    sql := sql + ' AND dtPedido >= ' + funcao.RetornaValorEField(DBEdtPedidoFim, 3);
  if trim(DBEnrOrigIni.Text) <> '' then
    sql := sql + ' AND nrPedidoOriginal >= '  + funcao.RetornaValorEField(DBEnrOrigIni, 3);
  if trim(DBEnrOrigFim.Text) <> '' then
    sql := sql + ' AND nrPedidoOriginal <= '  + funcao.RetornaValorEField(DBEnrOrigFim, 3);
  cdsRelatorio.CommandText := sql;
//  cdsRelatorio.

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  if not pdf then
    frxRel.ShowReport
  else
    ImprimePdf;
  //inherited;
end;

procedure TFrmRelPedidoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmRelPedidoCompra := nil;
end;

procedure TFrmRelPedidoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := true;
  relatorio := 'RelPedidoCompra.fr3';
  par := 0;
  pdf := false;
end;

procedure TFrmRelPedidoCompra.FormShow(Sender: TObject);
begin
  inherited;
  Height := 250;
  Width := 545;

end;

procedure TFrmRelPedidoCompra.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

procedure TFrmRelPedidoCompra.ImprimePdf;
var
  caminho : string;
 begin
{  caminho := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigCompras').FieldByName('caminho_pedido').AsString;
  if trim(caminho) <> '' then
  begin
    // procedimento que irá gerar a impressão do pedido em pdf
    caminho := caminho + 'Filial-' + DBEidCadEmpresa.Text + '\';
    if not (DirectoryExists(caminho)) then
      CreateDir(caminho);
    frxPDFExport1.DefaultPath := caminho;
    frxPDFExport1.FileName := DBEidPedidoIni.Text + '.pdf';
    frxPDFExport1.ShowDialog := false;
    frxRel.ShowReport;
    frxRel.Export(frxPDFExport1);
    frxRel.PreviewForm.Close;
    close;
  end; }
end;

end.
