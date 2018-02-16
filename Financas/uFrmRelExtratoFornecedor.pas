unit uFrmRelExtratoFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, StdCtrls, DBCtrls, CDBCheckBox, DB,
  ExtCtrls, CDBRadioGroup, CGroupBox, SqlExpr, CFind, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, Mask,
  CDBEdit, Buttons, CBitBtn, CPanelGradient, CLabel, System.Actions,
  System.ImageList;

type
  TFrmRelExtratoFornecedor = class(TFrmPadraoRelEmpresa)
    FindCadGeral: TCFind;
    CGroupBox1: TCGroupBox;
    DBEclassificacaoFim: TCDBEdit;
    CLabel5: TCLabel;
    DBEclassificacaoIni: TCDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    LblCad: TCLabel;
    DBEidFornecedor: TCDBEdit;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtVencimentoIni: TCDBEdit;
    DBEnrTituloIni: TCDBEdit;
    Label3: TLabel;
    CLabel6: TCLabel;
    CLabel4: TCLabel;
    LookFornecedor: TCLookUp;
    DBEdtEmissaoFim: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    DBEnrTituloFim: TCDBEdit;
    DBRGTipo: TCDBRadioGroup;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraodtEmissaoIni: TDateTimeField;
    cdsPadraodtEmissaoFim: TDateTimeField;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    cdsPadraonrTituloIni: TStringField;
    cdsPadraonrTituloFim: TStringField;
    cdsPadraoclassificacaoIni: TStringField;
    cdsPadraoclassificacaoFim: TStringField;
    cdsPadraotipo: TStringField;
    cdsPadraoincluirPrev: TStringField;
    DBCBincluirPrev: TCDBCheckBox;
    frxRel: TfrxReport;
    FindGerencial: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEclassificacaoIniEnter(Sender: TObject);
    procedure DBEclassificacaoFimExit(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
    mascara : string;
  public
    { Public declarations }
  end;

var
  FrmRelExtratoFornecedor: TFrmRelExtratoFornecedor;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmPadraoRel;

{$R *.dfm}

procedure TFrmRelExtratoFornecedor.actGerarExecute(Sender: TObject);
begin
  if (trim(DBEidFornecedor.Text) = '') then
  begin
    messagedlg(' É necessário que se informe o Fornecedor ', mtInformation, [mbOk], 0);
    exit;
  end;
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelExtratoFornecedor ' + DBEidEmpresa.Text +', ' + DBEidCadEmpresa.Text +', ' +
                             funcao.RetornaValorEField(DBEidFornecedor, 3) +', ' +
                             funcao.RetornaValorEField(DBEdtEmissaoIni, 3) +', ' +
                             funcao.RetornaValorEField(DBEdtEmissaoFim, 3) +', ' +
                             funcao.RetornaValorEField(DBEdtVencimentoIni, 3) +', ' +
                             funcao.RetornaValorEField(DBEdtVencimentoFim, 3) +', ' +
                             funcao.RetornaValorEField(DBEnrTituloIni, 3) +', ' +
                             funcao.RetornaValorEField(DBEnrTituloFim, 3) +', ' +
                             funcao.RetornaValorEField(DBEclassificacaoIni, 3) +', ' +
                             funcao.RetornaValorEField(DBEclassificacaoFim, 3) +', ' +
                             funcao.RetornaValorEField(DBRGTipo, 3) +', ' +
                             funcao.RetornaValorEField(DBCBincluirPrev, 3)+ ', ' +
                             QuotedStr(cdsPadraoconsolidaemp.AsString) + ',' +
                             QuotedStr(cdsPadraoconsolidafilial.AsString);
  cdsRelatorio.Active := True;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelExtratoFornecedor.fr3');
  frxRel.ShowReport;
end;

procedure TFrmRelExtratoFornecedor.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('tipo').AsString := 'T';
  DataSet.FieldByName('incluirPrev').AsString := 'S';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
  DataSet.FieldByName('consolidaemp').AsString := 'N'
end;

procedure TFrmRelExtratoFornecedor.DBEclassificacaoFimExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoFim').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoFim').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoFim').AsString);
    cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
end;

procedure TFrmRelExtratoFornecedor.DBEclassificacaoIniEnter(Sender: TObject);
begin
  inherited;
 cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoIni').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoIni').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoIni').AsString);
end;

procedure TFrmRelExtratoFornecedor.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
   mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
end;

procedure TFrmRelExtratoFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelExtratoFornecedor := nil;
end;

procedure TFrmRelExtratoFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
//  proc := 'spRelExtratoFornecedor';
  height := 306;
  width := 488;
  fiscal := true;
end;

procedure TFrmRelExtratoFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  DBEidFornecedor.SetFocus;
end;

procedure TFrmRelExtratoFornecedor.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
