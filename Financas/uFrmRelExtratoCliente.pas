unit uFrmRelExtratoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, DB, StdCtrls, DBCtrls, CDBCheckBox,
  ExtCtrls, CDBRadioGroup, CGroupBox, SqlExpr, CFind, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, Mask,
  CDBEdit, Buttons, CBitBtn, CPanelGradient, CLabel;

type
  TFrmRelExtratoCliente = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel5: TCLabel;
    Label4: TLabel;
    Label2: TLabel;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    LblCad: TCLabel;
    Label3: TLabel;
    CLabel6: TCLabel;
    CLabel4: TCLabel;
    DBEclassificacaoFim: TCDBEdit;
    DBEclassificacaoIni: TCDBEdit;
    DBEidCliente: TCDBEdit;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtVencimentoIni: TCDBEdit;
    DBEnrTituloIni: TCDBEdit;
    LookCliente: TCLookUp;
    DBEdtEmissaoFim: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    DBEnrTituloFim: TCDBEdit;
    DBRGTipo: TCDBRadioGroup;
    DBCBincluirPrev: TCDBCheckBox;
    cdsPadraoidCliente: TIntegerField;
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
    frxRel: TfrxReport;
    FindGerencial: TCFind;
    FindCadGeral: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEclassificacaoFimExit(Sender: TObject);
    procedure DBEclassificacaoIniEnter(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    mascara : string;
  public
    { Public declarations }
  end;

var
  FrmRelExtratoCliente: TFrmRelExtratoCliente;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao;

{$R *.dfm}

procedure TFrmRelExtratoCliente.actGerarExecute(Sender: TObject);
begin
  if (trim(DBEidCliente.Text) = '') then
  begin
    messagedlg(' É necessário que se informe o Cliente ', mtInformation, [mbOk], 0);
    exit;
  end;     
  inherited;

end;


procedure TFrmRelExtratoCliente.cdsPadraoAfterInsert(DataSet: TDataSet);
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

procedure TFrmRelExtratoCliente.DBEclassificacaoFimExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoFim').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoFim').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoFim').AsString);
    cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
end;

procedure TFrmRelExtratoCliente.DBEclassificacaoIniEnter(Sender: TObject);
begin
  inherited;
      cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoIni').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoIni').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoIni').AsString);
end;

procedure TFrmRelExtratoCliente.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
end;

procedure TFrmRelExtratoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelExtratoCliente := nil;
end;

procedure TFrmRelExtratoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelExtratoCliente';
  relatorio := 'RelExtratoCliente.fr3';
  SetLength(parametro, 15);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidCadEmpresa;
  parametro[2] := DBEidCliente;
  parametro[3] := DBEdtEmissaoIni;
  parametro[4] := DBEdtEmissaoFim;
  parametro[5] := DBEdtVencimentoIni;
  parametro[6] := DBEdtVencimentoFim;
  parametro[7] := DBEnrTituloIni;
  parametro[8] := DBEnrTituloFim;
  parametro[9] := DBEclassificacaoIni;
  parametro[10] := DBEclassificacaoFim;
  parametro[11] := DBRGTipo;
  parametro[12] := DBCBincluirPrev;
  parametro[13] := DBCKconsolidaemp;
  parametro[14] := DBCKconsolidafilial;
  height := 318;
  width := 488;
  fiscal := true;
end;

procedure TFrmRelExtratoCliente.FormShow(Sender: TObject);
begin
  inherited;
  DBEidCliente.SetFocus;
end;

end.
