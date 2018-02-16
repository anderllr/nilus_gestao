unit uFrmRelRelacContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, EditAlign, CEdit,
  CDBRadioGroup, ClipBrd, System.Actions, System.ImageList;

type
  TFrmRelRelacContabil = class(TFrmPadraoRelEmpresa)
    CLabel10: TCLabel;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    CLabel12: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    DBEidHistorico: TCDBEdit;
    LookHistorico: TCLookUp;
    DBEcdPlanoContaDeb: TCDBEdit;
    DBEcdPlanoContaCre: TCDBEdit;
    LookGerencial: TCLookUp;
    LookResultado: TCLookUp;
    DBEidResultado: TCDBEdit;
    DBEidGerencial: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    DBRGtpPlanoConta: TCDBRadioGroup;
    EDtpPlanoConta: TCEdit;
    frxRel: TfrxReport;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidMovFinanceira: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraocdPlanoContaDeb: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraocdPlanoContaCre: TIntegerField;
    cdsPadraoidContHistorico: TIntegerField;
    FindResultado: TCFind;
    FindContHistorico: TCFind;
    FindGerencial: TCFind;
    FindMovFinanceira: TCFind;
    FindContRelaciona: TCFind;
    FindPlanoContaCre: TCFind;
    FindPlanoContaDeb: TCFind;
    LookdescPlanoContaDeb: TCLookUp;
    LookdescPlanoContaCre: TCLookUp;
    procedure actGerarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBRGtpPlanoContaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    par : Integer;
  end;

var
  FrmRelRelacContabil: TFrmRelRelacContabil;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmRelRelacContabil.actGerarExecute(Sender: TObject);
Var
vOrigem:string;
sql, status, tpConsulta : string;
begin
  if DBRGtpPlanoConta.ItemIndex = 0 then
  begin
    vOrigem:= 'FISCAL';
  end
  else
    begin
      vOrigem:='GERENCIAL';
    end;
  status := '';
  tpConsulta := '';
  sql := ' WHERE 1=1';

  screen.Cursor := crSqlWait;

  sql := sql + ' AND R.tpPlanoConta = ' + quotedstr(vOrigem);

  if trim(cdsPadrao.FieldByName('idEmpresa').AsString) <> '' then
    sql := sql + ' AND R.idEmpresa = ' + Trim(DBEidEmpresa.Text);

  if trim(cdsPadrao.FieldByName('idMovFinanceira').AsString) <> '' then
    sql := sql + ' AND R.idMovFinanceira = ' + Trim(DBEidMovFinanceira.text);

  if trim(cdsPadrao.FieldByName('idGerencial').AsString) <> '' then
    sql := sql + ' AND R.idGerencial = ' + Trim(DBEidGerencial.Text);

  if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
    sql := sql + ' AND R.idResultado = ' + Trim(DBEidResultado.Text);

  if trim(cdsPadrao.FieldByName('idContHistorico').AsString) <> '' then
    sql := sql + ' AND R.idContHistorico = ' + Trim(DBEidHistorico.Text);

  if trim(cdsPadrao.FieldByName('cdPlanoContaDeb').AsString) <> '' then
    sql := sql + ' AND R.cdPlanoContaDeb = ' + Trim(DBEcdPlanoContaDeb.Text);

  if trim(cdsPadrao.FieldByName('cdPlanoContaCre').AsString) <> '' then
    sql := sql + ' AND R.cdPlanoContaCre = ' + Trim(DBEcdPlanoContaCre.Text);

//  showmessage(sql);
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'SELECT R.*, CASE WHEN R.cdPlanoContaCre <> 0 ' +
                              ' THEN P.descPlanoConta END AS descPlanoContaCre, ' +
                      		    ' CASE WHEN R.cdPlanoContaDeb <> 0 THEN P.descPlanoConta END ' +
                              ' AS descPlanoContaDeb FROM vPesRelaciona R LEFT JOIN PlanoConta P ' +
                              ' ON R.cdPlanoContaCre = P.cdPlanoConta OR R.cdPlanoContaDeb = P.cdPlanoConta ' +
                              sql;
//  ClipBoard.AsText := cdsRelatorio.CommandText;
  cdsRelatorio.Active := true;
  screen.Cursor := crDefault;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  frxRel.ShowReport;
end;

procedure TFrmRelRelacContabil.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraotpPlanoConta.AsString := 'F';
end;

procedure TFrmRelRelacContabil.DBRGtpPlanoContaChange(Sender: TObject);
begin
  inherited;
  EDtpPlanoConta.text:=DBRGtpPlanoConta.value;
end;

procedure TFrmRelRelacContabil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelRelacContabil := nil;
end;

procedure TFrmRelRelacContabil.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelRelacContabil.fr3';
//  SetLength(parametro, 1);
  fiscal := False;
  par := 0;
end;

procedure TFrmRelRelacContabil.FormShow(Sender: TObject);
begin
  inherited;
  Height := 228;
  Width := 750;
end;

end.
