unit uFrmRelCotacao;

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
  TFrmRelCotacao = class(TFrmPadraoRelEmpFiscal)
    frxRel: TfrxReport;
    DBEidCotacaoFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidCotacaoIni: TCDBEdit;
    CLabel8: TCLabel;
    DBEdtCotacaoFim: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtCotacaoIni: TCDBEdit;
    CLabel5: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCotacaoIni: TIntegerField;
    cdsPadraoidCotacaoFim: TIntegerField;
    cdsPadraodtCotacaoIni: TDateField;
    cdsPadraodtCotacaoFim: TDateField;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    CLabel1: TCLabel;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    DBEidFabricante: TCDBEdit;
    LookFabricante: TCLookUp;
    CLabel3: TCLabel;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidFabricante: TIntegerField;
    CLabel7: TCLabel;
    cdsPadraocodFabricante: TStringField;
    DBEcodFabricante: TCDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelClosePreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelCotacao: TFrmRelCotacao;

implementation

uses uDmPadrao, uFuncao, uDmFind;

{$R *.dfm}

procedure TFrmRelCotacao.actGerarExecute(Sender: TObject);
var
  sql : string;
begin
  if trim(DBEidFornecedor.Text) = '' then
  begin
    messagedlg('É preciso informar o fornecedor!', mtwarning, [mbok], 0);
    exit;
  end;
  cdsRelatorio.Active := false;
  sql := 'SELECT * FROM vCotacaoFornecedor WHERE idEmpresa = ' + DBEidEmpresa.Text +
       ' AND idFornecedor = ' + DBEidFornecedor.Text;
  if trim(DBEidProduto.Text) <> '' then
    sql := sql + ' AND idProduto = ' + DBEidProduto.Text;
  if trim(DBEidFabricante.Text) <> '' then
    sql := sql + ' AND idFabricante = ' + DBEidFabricante.Text;
  if trim(DBEcodFabricante.Text) <> '' then
    sql := sql + ' AND codFabricante = ' + QuotedStr(DBEcodFabricante.Text);
  if trim(DBEidCotacaoIni.Text) <> '' then
    sql := sql + ' AND idCotacao >= ' + DBEidCotacaoIni.Text;
  if trim(DBEidCotacaoFim.Text) <> '' then
    sql := sql + ' AND idCotacao >= ' + DBEidCotacaoFim.Text;
  if trim(DBEidCotacaoIni.Text) <> '' then
    sql := sql + ' AND idCotacao <= ' + DBEidCotacaoIni.Text;
  if trim(DBEdtCotacaoIni.Text) <> '' then
    sql := sql + ' AND dtCotacao >= ' + funcao.RetornaValorEField(DBEdtCotacaoIni, 3);
  if trim(DBEdtCotacaoIni.Text) <> '' then
    sql := sql + ' AND dtCotacao >= ' + funcao.RetornaValorEField(DBEdtCotacaoIni, 3);
  if trim(DBEdtCotacaoFim.Text) <> '' then
    sql := sql + ' AND dtCotacao >= ' + funcao.RetornaValorEField(DBEdtCotacaoFim, 3);
  cdsRelatorio.CommandText := sql;

  inherited;
end;

procedure TFrmRelCotacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmRelCotacao := nil;
end;

procedure TFrmRelCotacao.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := false;
  relatorio := 'RelCotacao.fr3';
  par := 0;
end;

procedure TFrmRelCotacao.FormShow(Sender: TObject);
begin
  inherited;
  Height := 270;
  Width := 500;

end;

procedure TFrmRelCotacao.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

end.
