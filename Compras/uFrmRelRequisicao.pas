unit uFrmRelRequisicao;

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
  TFrmRelRequisicao = class(TFrmPadraoRelEmpFiscal)
    DBEidCadEmpresa: TCDBEdit;
    frxRel: TfrxReport;
    cdsPadraoidRequisicaoIni: TIntegerField;
    cdsPadraoidRequisicaoFim: TIntegerField;
    cdsPadraodtRequisicaoIni: TDateField;
    cdsPadraodtRequisicaoFim: TDateField;
    DBEidRequisicaoFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidRequisicaoIni: TCDBEdit;
    CLabel8: TCLabel;
    DBEdtRequisicaoFim: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtRequisicaoIni: TCDBEdit;
    CLabel5: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxRelClosePreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelRequisicao: TFrmRelRequisicao;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmRelRequisicao.actGerarExecute(Sender: TObject);
var
  sql : string;
begin
  cdsRelatorio.Active := false;
  sql := 'SELECT * FROM vRequisicao WHERE idEmpresa = ' + DBEidEmpresa.Text +
      ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(DBEidRequisicaoIni.Text) <> '' then
    sql := sql + ' AND idRequisicao >= ' + DBEidRequisicaoIni.Text;
  if trim(DBEidRequisicaoFim.Text) <> '' then
    sql := sql + ' AND idRequisicao >= ' + DBEidRequisicaoFim.Text;
  if trim(DBEidRequisicaoIni.Text) <> '' then
    sql := sql + ' AND idRequisicao <= ' + DBEidRequisicaoIni.Text;
  if trim(DBEdtRequisicaoIni.Text) <> '' then
    sql := sql + ' AND dtRequisicao >= ' + funcao.RetornaValorEField(DBEdtRequisicaoIni, 3);
  if trim(DBEdtRequisicaoIni.Text) <> '' then
    sql := sql + ' AND dtRequisicao >= ' + funcao.RetornaValorEField(DBEdtRequisicaoIni, 3);
  if trim(DBEdtRequisicaoFim.Text) <> '' then
    sql := sql + ' AND dtRequisicao >= ' + funcao.RetornaValorEField(DBEdtRequisicaoFim, 3);
  cdsRelatorio.CommandText := sql;

  inherited;
end;



procedure TFrmRelRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelRequisicao := nil;
end;

procedure TFrmRelRequisicao.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := true;
  relatorio := 'RelRequisicao.fr3';
  par := 0;
end;

procedure TFrmRelRequisicao.FormShow(Sender: TObject);
begin
  inherited;
  Height := 225;
  Width := 545;

end;

procedure TFrmRelRequisicao.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

end.
