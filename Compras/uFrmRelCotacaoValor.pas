unit uFrmRelCotacaoValor;

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
  TFrmRelCotacaoValor = class(TFrmPadraoRelEmpFiscal)
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
  FrmRelCotacaoValor: TFrmRelCotacaoValor;

implementation

uses uDmPadrao, uFuncao, uDmFind;

{$R *.dfm}

procedure TFrmRelCotacaoValor.actGerarExecute(Sender: TObject);
var
  sql : string;
begin
  if (trim(DBEidCotacaoIni.Text) = '') OR (trim(DBEidCotacaoFim.Text) = '') then
  begin
    messagedlg('É preciso informar a cotação!', mtwarning, [mbok], 0);
    exit;
  end;
  cdsRelatorio.Active := false;
  sql := 'SELECT * FROM vCotacaoFornecedor WHERE idEmpresa = ' + DBEidEmpresa.Text +
       ' AND idCotacao BETWEEN ' + DBEidCotacaoIni.Text + ' AND ' + DBEidCotacaoFim.Text;

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
  sql := sql + ' ORDER BY idEmpresa, idCotacao, descCadFornecedor, idProduto, idMaquina';
  cdsRelatorio.CommandText := sql;

  inherited;
end;

procedure TFrmRelCotacaoValor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmRelCotacaoValor := nil;
end;

procedure TFrmRelCotacaoValor.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := false;
  relatorio := 'RelCotacaoValor.fr3';
end;

procedure TFrmRelCotacaoValor.FormShow(Sender: TObject);
begin
  inherited;
  Height := 250;
  Width := 545;

end;

procedure TFrmRelCotacaoValor.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

end.
