unit uFrmRelResultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, StdCtrls, CGroupBox, SqlExpr, CFind,
  DB, frxClass, frxDBSet, frxExportCSV, frxExportMail, frxExportODF,
  frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, CLookUp, Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CLabel, CDBRadioGroup, System.Actions, System.ImageList;

type
  TfrmRelResultado = class(TFrmPadraoRelEmpresa)
    DBRGTalhao: TCDBRadioGroup;
    DBRGstResultado: TCDBRadioGroup;
    frxRel: TfrxReport;
    cdsPadraoidBem: TIntegerField;
    cdsPadraoTalhao: TStringField;
    cdsPadraostResultado: TStringField;
    CGroupBox7: TCGroupBox;
    CLabel16: TCLabel;
    DBEidBem: TCDBEdit;
    LookBem: TCLookUp;
    CGroupBox1: TCGroupBox;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    CLabel23: TCLabel;
    cdsPadraoidSafra: TIntegerField;
    procedure frxRelAfterPrintReport(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelResultado: TfrmRelResultado;

implementation

uses uFrmPadraoRel, uDmPadrao, uDmFind, uFrmPrincipal;

{$R *.dfm}

procedure TfrmRelResultado.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel : string;
begin
//  inherited;
  sql := 'SELECT * FROM vRelResultadoProd WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString;

  if Trim(cdsPadraoidBem.AsString) <> '' then
    sql := sql + ' AND idBem = ' + cdsPadraoidBem.AsString;
  if Trim(cdsPadraoTalhao.AsString) <> '' then
    sql := sql + ' AND Talhao LIKE ' + QuotedStr(cdsPadraoTalhao.AsString);
  if Trim(cdsPadraostResultado.AsString) <> '' then
    sql := sql + ' AND stResultado LIKE ' + QuotedStr(cdsPadraostResultado.AsString);
  if Trim(cdsPadraoidSafra.AsString) <> '' then
    sql := sql + ' AND idSafra = ' + cdsPadraoidSafra.AsString;
{  if (cdsPadraoTalhao.AsString = 'S') OR (cdsPadraoTalhao.AsString = '%') then
    if cdsPadraoidSafra.AsString = '' then
    begin
      MessageDlg('A safra deve ser informada!', mtWarning, [mbOK], 0);
      DBEidSafra.SetFocus;
      Exit;
    end;}
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;
  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport
end;

procedure TfrmRelResultado.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('Talhao').AsString := '%';
  Dataset.FieldByName('stResultado').AsString := '%';
end;

procedure TfrmRelResultado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmRelResultado := nil;
end;

procedure TfrmRelResultado.FormCreate(Sender: TObject);
begin
  inherited;
  tabela := 'vRelResultadoProd';
  relatorio := 'RelResultados.fr3';
  SetLength(parametro, 4);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidBem;
  parametro[2] := DBRGTalhao;
  parametro[3] := DBRGstResultado;
  Width := 490;
  Height := 310;
  ordem := ' ORDER BY idBem, idResultado';
end;

procedure TfrmRelResultado.frxRelAfterPrintReport(Sender: TObject);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
