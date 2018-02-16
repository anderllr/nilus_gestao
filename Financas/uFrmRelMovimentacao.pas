unit uFrmRelMovimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, StdCtrls, CGroupBox, SqlExpr, CFind,
  DB, frxClass, frxDBSet, frxExportCSV, frxExportMail, frxExportODF,
  frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, CLookUp, Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CLabel, CCheckBox, CDBCheckBox, CDBRadioGroup, System.Actions,
  System.ImageList;

type
  TFrmRelMovimentacao = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    FindConta: TCFind;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    frxReport1: TfrxReport;
    cdsRelLancamento: TClientDataSet;
    dspReLancamento: TDataSetProvider;
    frxDBRelLancamento: TfrxDBDataset;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKlistaTrans: TCDBCheckBox;
    cdsPadraolistaTrans: TStringField;
    cdsPadraotpRel: TStringField;
    DBRGtpRel: TCDBRadioGroup;
    DBEidConta: TCDBEdit;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    CLabel8: TCLabel;
    LookCaixa: TCLookUp;
    DBEidCaixa: TCDBEdit;
    CLabel1: TCLabel;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraoidConta: TIntegerField;
    procedure frxReport1AfterPrint(Sender: TfrxReportComponent);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelMovimentacao: TFrmRelMovimentacao;

implementation

uses uFuncao, uDmPadrao, uFrmPadraoRel, uDmFind;

{$R *.dfm}

procedure TFrmRelMovimentacao.actGerarExecute(Sender: TObject);
var
  idEmp : string;
begin
  //  ---------------------------- Tratamento da data -------------------------

  if ((TRIM(DBEdtInicial.Text) = '') or (TRIM(DBEdtFinal.Text)= '')) then
  begin
    MessageDlg('É necessario informar o periodo !',mtwarning,[mbok],0);
    DBEdtInicial.SetFocus;
    exit;
  end;


  // Fim do tratamento da data ------------------------------------------------------

  inherited;
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelExtratoMov ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.text + ',' +
                               funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                               funcao.RetornaValorEField(DBEdtFinal, 3)+ ',' +
                               QuotedStr(cdsPadraoconsolidaemp.AsString) + ',' +
                               QuotedStr(cdsPadraoconsolidafilial.AsString) + ',' +
                               QuotedStr(cdsPadraolistaTrans.AsString) + ',' +
                               funcao.RetornaValorEField(DBRGtpRel, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidCaixa, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidConta, 3);
  cdsRelLancamento.Active := false;
  //trata a variável para não listar nada quando não for banco ou ambos
  if cdsPadraotpRel.AsString <> 'C' then //caixa apenas
    idEmp := DBEidEmpresa.text
  else
    idEmp := '0';
  cdsRelLancamento.CommandText := 'EXEC spRelLancamentoFuturo ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.text + ',0, ' +
                               funcao.RetornaValorEField(DBEdtFinal, 3) + ',' +
                               QuotedStr(cdsPadraoconsolidaemp.AsString) + ',' +
                               QuotedStr('N');

  frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelMovimentacao.fr3');
  (frxReport1.FindComponent('MemEmpresa') as TFrxMemoView).Memo.Clear;
  (frxReport1.FindComponent('MemEmpresa') as TFrxMemoView).Memo.Add(DBEidEmpresa.Text + '.' + DBEidCadEmpresa.Text + ' - ' + LookdescCadEmpresa.Caption);
  frxReport1.ShowReport;
end;

procedure TFrmRelMovimentacao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  DataSet.FieldByName('tpRel').AsString := 'A';
  Dataset.FieldByName('listaTrans').AsString:= 'S';
end;

procedure TFrmRelMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelMovimentacao := nil;
end;

procedure TFrmRelMovimentacao.FormCreate(Sender: TObject);
begin
  inherited;
//  proc := 'spRelExtratoBancario';
  relatorio := 'RelMovimentacao.fr3';
//  SetLength(parametro, 4);
//  parametro[0] := DBEidEmpresa;
//  parametro[1] := DBEidConta;
//  parametro[2] := DBEdtInicial;
//  parametro[3] := DBEdtFinal;
  Width := 589;
  Height := 300;
//  cdsPadraoidEmpresa.Value := 1;
  fiscal := true;
end;

procedure TFrmRelMovimentacao.FormShow(Sender: TObject);
begin
  inherited;
  DBCKconsolidafilial.Visible := filial;
end;

procedure TFrmRelMovimentacao.frxReport1AfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
