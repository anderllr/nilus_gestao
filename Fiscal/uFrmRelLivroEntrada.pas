unit uFrmRelLivroEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, frxClass, StdCtrls, CGroupBox, SqlExpr,
  CFind, DB, frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList,
  CLookUp, Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  CLabel;

type
  TfrmRelLivroEntrada = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraopar: TStringField;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtFinal: TCDBEdit;
    DBEpar: TCDBEdit;
    frxDBResumo: TfrxDBDataset;
    dspResumo: TDataSetProvider;
    cdsResumo: TClientDataSet;
    frxDBPagina: TfrxDBDataset;
    dspPagina: TDataSetProvider;
    cdsPagina: TClientDataSet;
    cdsPadraoidLivro: TIntegerField;
    cdsPadraomesAno: TStringField;
    cdsPadraonrPagina: TIntegerField;
    DBEnrPagina: TCDBEdit;
    DBEidLivro: TCDBEdit;
    DBEmesAno: TCDBEdit;
    cdsPadraoidCfop: TIntegerField;
    LookCfop: TCLookUp;
    DBEidCfop: TCDBEdit;
    CLabel1: TCLabel;
    frxDBResCfop: TfrxDBDataset;
    dspResCfop: TDataSetProvider;
    cdsResCfop: TClientDataSet;
    procedure DBEdtFinalExit(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure DBEdtInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelLivroEntrada: TfrmRelLivroEntrada;
implementation

uses uFuncao, uDmPadrao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TfrmRelLivroEntrada.actGerarExecute(Sender: TObject);
var
DataI, DataF : TDateTime;
anoi, mesi, diai : Word;
anof, mesf, diaf : Word;
begin
  //Tratamento dos parametros de data, para que o usuário informe somente a data
  //correta
  if ((TRIM(DBEdtInicial.Text) = '') or (TRIM(DBEdtFinal.Text)= '')) then
  begin
      MessageDlg('É necessario informar o periodo !',mtwarning,[mbok],0);
      DBEdtInicial.SetFocus;
      exit;
  end;

  DataI := StrToDate(DBEdtInicial.Text);
  DecodeDate(DataI,anoi,mesi,diai);
  DataF := StrToDate(DBEdtFinal.Text);
  DecodeDate(DataF,anof,mesf,diaf);
  if(mesf <> mesi) then
  begin
      MessageDlg('Erro com a informação do periodo ! Verifique se o mês da data incial é o mesmo da final !',mtwarning,[mbok],0);
      DBEdtInicial.SetFocus;
      exit;
  end;

  //mesano
  cdsLookUp.Active := false;
  cdsLookUp.CommandText := 'EXEC spRetDataMesAno ' + QuotedStr(DBEdtInicial.Text);
  cdsLookUp.Active := true;
  cdsPadraomesAno.AsString := cdsLookUp.FieldByName('Data').AsString;
  cdsLookUp.Active := false;

  cdsResumo.Active := false;
  cdsResumo.CommandText := 'EXEC spRelLivroEntradasRes ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                           funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEdtInicial, 3) +
                           ', ' + funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                           funcao.RetornaValorEField(DBEidCfop, 3);
  cdsResumo.Active := true;

  cdsResCfop.Active := false;
  cdsResCfop.CommandText := 'EXEC spRelLivroEntradasResCfop ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                           funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEdtInicial, 3) +
                           ', ' + funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                           funcao.RetornaValorEField(DBEidCfop, 3);
  cdsResCfop.Active := true;

  cdsPagina.Active := false;
  cdsPagina.CommandText := 'SELECT ISNULL(nrPaginaIni, 0) nrPaginaIni FROM Pagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
                           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idLivro = 1 AND mesAno = ' + QuotedStr(DBEmesAno.Text);
  cdsPagina.Active := true;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelLivroEntradas ' + Format('%s, %s, %s, %s, %s, %s', [funcao.RetornaValorEField(DBEidEmpresa, 3),
      funcao.RetornaValorEField(DBEidCadEmpresa, 3), funcao.RetornaValorEField(DBEdtInicial, 3), funcao.RetornaValorEField(DBEdtFinal, 3),
      funcao.RetornaValorEField(DBEidCfop, 3), funcao.RetornaValorEField(DBEpar, 3)]);
  cdsRelatorio.Active := true;
//  inherited;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  if frxRel.PrepareReport then
  begin
    cdsPadraonrPagina.AsInteger := frxRel.PreviewPages.Count + cdsPagina.FieldByName('nrPaginaIni').AsInteger;
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEidLivro, DBEmesAno, DBEnrPagina], 'spGravaPaginaLivro');
  end;
  frxRel.ShowReport;
end;

procedure TfrmRelLivroEntrada.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('par').AsString := 'L';
  cdsPadraoidLivro.AsInteger := 1;
  cdsPadraonrPagina.AsInteger := 1;
end;

procedure TfrmRelLivroEntrada.DBEdtFinalExit(Sender: TObject);
var
  dia, mes, ano : Word;
begin
  inherited;
  if (trim(DBEdtFinal.Text)='') then
  begin
    DecodeDate(StrToDate(DBEdtInicial.Text),ano, mes, dia);
    dia := funcao.UltDiaDoMes(StrToDate(DBEdtInicial.Text));
    cdsPadraodtFinal.AsString := Format('%s/%s/%s',[IntToStr(dia),InttoStr(mes),InttoStr(ano)]);
  end;
end;

procedure TfrmRelLivroEntrada.DBEdtInicialExit(Sender: TObject);
var
  dia, mes, ano : Word;
begin
  inherited;
  if (trim(DBEdtInicial.Text)<>'') then
  begin
    DecodeDate(StrToDate(DBEdtInicial.Text),ano, mes, dia);
    dia := funcao.UltDiaDoMes(StrToDate(DBEdtInicial.Text));
    cdsPadraodtFinal.AsString := Format('%s/%s/%s',[IntToStr(dia),InttoStr(mes),InttoStr(ano)]);
  end;
end;

procedure TfrmRelLivroEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelLivroEntrada := nil;
end;

procedure TfrmRelLivroEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelLivroEntrada.fr3';
  Width := 534;
  Height := 200;
  fiscal := true;
end;

procedure TfrmRelLivroEntrada.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtInicial.SetFocus;
end;

procedure TfrmRelLivroEntrada.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
