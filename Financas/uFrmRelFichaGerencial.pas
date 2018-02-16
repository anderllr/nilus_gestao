unit uFrmRelFichaGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CDBCheckBox, System.Actions, System.ImageList;

type
  TFrmRelFichaGerencial = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    CGroupBox1: TCGroupBox;
    FindGerencial: TCFind;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsLookUpResultado: TClientDataSet;
    dspLookUpResultado: TDataSetProvider;
    FindResultado: TCFind;
    cdsPadraoclass_ini: TStringField;
    cdsPadraoclass_fim: TStringField;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerenciaR: TCLookUp;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel1: TCLabel;
    DBEclassificacaoInicial: TCDBEdit;
    CLabel3: TCLabel;
    DBEclassificacaoFinal: TCDBEdit;
    CBitBtn6: TCBitBtn;
    CBitBtn4: TCBitBtn;
    LookResultado: TCLookUp;
    DBEidResultado: TCDBEdit;
    CLabel11: TCLabel;
    DBCKocultardet: TCDBCheckBox;
    cdsPadraoagrupares: TStringField;
    FindClassificao: TCFind;
    FindSafra: TCFind;
    CLabel23: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoocultadet: TStringField;
    DBCKagrupares: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    frxEmpresaContabil: TfrxDBDataset;
    cdsEmpresaContabil: TClientDataSet;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    DBEdtVencimentoFim: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel7: TCLabel;
    DBCKagruparvenc: TCDBCheckBox;
    cdsPadraoagruparvenc: TStringField;
    DBCKincluiPrevisao: TCDBCheckBox;
    cdsPadraoincluiPrevisao: TStringField;
    DBEdtLiquidacaoIni: TCDBEdit;
    DBEdtLiquidacaoFim: TCDBEdit;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    cdsPadraodtLiquidacaoIni: TDateTimeField;
    cdsPadraodtLiquidacaoFim: TDateTimeField;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure actGerarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEclassificacaoFinalEnter(Sender: TObject);
    procedure DBEclassificacaoInicialEnter(Sender: TObject);
    procedure DBEclassificacaoFinalExit(Sender: TObject);
    procedure DBEclassificacaoInicialExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    mascara : string;
  public
    { Public declarations }
  end;

var
  FrmRelFichaGerencial: TFrmRelFichaGerencial;

implementation

uses uFuncao, uDmPadrao, uFrmPrincipal;

{$R *.dfm}

var
 funcao : Tfuncao;


procedure TFrmRelFichaGerencial.actGerarExecute(Sender: TObject);
var
  sql : string;
begin
  screen.Cursor := crSqlWait;
  cdsEmpresaContabil.Active := false;
  cdsEmpresaContabil.CommandText := 'SELECT * FROM EmpresaContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  cdsEmpresaContabil.Active := true;

  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
                                             cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' +
                                             cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  //
  relatorio := 'RelFichaGerencial.fr3';
  //relatorio := 'RelFichaGerencialAgrup.fr3';
  cdsRelatorio.Active := false;
  sql := Format('EXEC spRelFichaGerencial %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s',
                                    [funcao.RetornaValorEField(DBEidEmpresa, 3),
                                     funcao.RetornaValorEField(DBEidCadEmpresa, 3),
                                     funcao.RetornaValorEField(DBEdtInicial, 3),
                                     funcao.RetornaValorEField(DBEdtFinal, 3),
                                     funcao.RetornaValorEField(DBEdtVencimentoIni, 3),
                                     funcao.RetornaValorEField(DBEdtVencimentoFim, 3),
                                     funcao.RetornaValorEField(DBEidGerencial, 3),
                                     funcao.RetornaValorEField(DBEidResultado, 3),
                                     funcao.RetornaValorEField(DBEidSafra, 3),
                                     funcao.RetornaValorEField(DBEclassificacaoInicial, 3),
                                     funcao.RetornaValorEField(DBEclassificacaoFinal, 3),
                                     QuotedStr(cdsPadrao.FieldByName('ocultadet').Text),
                                     QuotedStr(cdsPadrao.FieldByName('agrupares').Text),
                                     QuotedStr(cdsPadrao.FieldByName('agruparvenc').Text),
                                     QuotedStr(cdsPadraoconsolidaemp.AsString), QuotedStr(cdsPadraoconsolidafilial.AsString),
                                     QuotedStr(cdsPadraoincluiPrevisao.AsString),
                                     funcao.RetornaValorEField(DBEdtLiquidacaoIni, 3),
                                     funcao.RetornaValorEField(DBEdtLiquidacaoFim, 3)
                                     ]);
  cdsRelatorio.CommandText := sql;
  //
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  //
//  TFrxMemoView(frxRel.FindComponent('MemData')).Memo.Text := funcao.IIF(cdsPadrao.FieldByName('agruparvenc').Value = 'S', 'Dt.Vencimento', 'Dt.Emissão');
  (frxRel.FindComponent('MemData') as TfrxMemoview).Memo.Clear;
  if DBCKagruparvenc.Checked then
    (frxRel.FindComponent('MemData') as TfrxMemoview).Memo.Add('Dt.Vencimento')
  else
    (frxRel.FindComponent('MemData') as TfrxMemoview).Memo.Add('Dt.Emissão');

{  (frxRel.FindComponent('MemDataLista') as TfrxMemoview).Memo.Clear;
  if DBCKagruparvenc.Checked then
    (frxRel.FindComponent('MemDataLista') as TfrxMemoview).Memo.Add('[frxDataset."dtVencimento"]')
  else
    (frxRel.FindComponent('MemDataLista') as TfrxMemoview).Memo.Add('[frxDataset."dtEmissao"]');
 }


  //
  TFrxMemoView(frxRel.FindComponent('lblTotalHeader')).Memo.Text := funcao.IIF(cdsPadrao.FieldByName('ocultadet').Value = 'N', '', '[frxDataset."vlGerencial"]');
  TFrxMasterData(frxRel.FindComponent('Band4')).Visible          := funcao.IIF(cdsPadrao.FieldByName('ocultadet').Value = 'N', True, False);
  TFrxGroupFooter(frxRel.FindComponent('GroupFooter1')).Visible  := funcao.IIF(cdsPadrao.FieldByName('ocultadet').Value = 'N', True, False);
  //
  TFrxGroupHeader(frxRel.FindComponent('GroupHeader2')).Condition := funcao.IIF(cdsPadrao.FieldByName('agrupares').Value = 'S', 'frxDataset."idResultado"', 'frxDataset."idGerencial"');
  TFrxGroupHeader(frxRel.FindComponent('GroupHeader2')).Visible   := funcao.IIF(cdsPadrao.FieldByName('agrupares').Value = 'S', True, False);
  TFrxGroupFooter(frxRel.FindComponent('GroupFooter2')).Visible   := funcao.IIF(cdsPadrao.FieldByName('agrupares').Value = 'S', True, False);
  //
//  inherited;
  //

  parametrorel;
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
  screen.Cursor := crDefault;
end;

procedure TFrmRelFichaGerencial.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('ocultadet').Value := 'N';
  cdsPadrao.FieldByName('agrupares').Value := 'N';
  cdsPadrao.FieldByName('incluiPrevisao').Value := 'S';
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';

  cdsPadraoagruparvenc.AsString := 'N';
end;

procedure TFrmRelFichaGerencial.DBEclassificacaoFinalEnter(Sender: TObject);
begin
  inherited;

  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('class_fim').AsString) <> '' then
      cdsPadrao.FieldByName('class_fim').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('class_fim').AsString);

end;

procedure TFrmRelFichaGerencial.DBEclassificacaoFinalExit(Sender: TObject);
begin
  inherited;

  if cdsPadrao.State in [dsInsert, dsEdit] then
  cdsPadrao.FieldByName('class_fim').AsString := funcao.Mascara(cdsPadrao.FieldByName('class_fim').AsString, 99, mascara );

end;

procedure TFrmRelFichaGerencial.DBEclassificacaoInicialEnter(Sender: TObject);
begin
  inherited;
  cdsPadraoclass_Fim.Value := cdsPadraoclass_Ini.Value;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('class_Ini').AsString) <> '' then
      cdsPadrao.FieldByName('class_Ini').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('class_Ini').AsString);

end;

procedure TFrmRelFichaGerencial.DBEclassificacaoInicialExit(Sender: TObject);
begin
  inherited;
   if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('class_Fim').AsString) <> '' then
      cdsPadrao.FieldByName('class_Fim').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('class_Fim').AsString);
    cdsPadraoclass_Fim.Value := cdsPadraoclass_Ini.Value;
end;

procedure TFrmRelFichaGerencial.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
end;

procedure TFrmRelFichaGerencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  FrmRelFichaGerencial := nil;

end;

procedure TFrmRelFichaGerencial.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelFichaGerencial';
  relatorio := 'RelFichaGerencial.fr3';
  SetLength(parametro, 9);
  //
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidEmpresa;
  parametro[2] := DBEdtInicial;
  parametro[3] := DBEdtFinal;
  parametro[4] := DBEidGerencial;
  parametro[5] := DBEidResultado;
  parametro[6] := DBEidSafra;
  parametro[7] := DBEclassificacaoInicial;
  parametro[8] := DBEclassificacaoFinal;
  parametro[9] := DBCKocultardet;
  parametro[10] := DBEdtLiquidacaoIni;
  parametro[11] := DBEdtLiquidacaoFim;

  //
  Width := 605;
  Height := 320;
  //
  fiscal := true;
end;

procedure TFrmRelFichaGerencial.FormShow(Sender: TObject);
begin
  inherited;
  DBEidEmpresaExit(DBEidEmpresa);
  DBEidGerencial.SetFocus;
  DBCKconsolidafilial.Visible := filial;
end;

procedure TFrmRelFichaGerencial.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
