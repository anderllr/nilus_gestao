unit uFrmRelFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, StdCtrls, DBCtrls, CDBComboBox, ExtCtrls,
  CDBRadioGroup, CFind, DB, frxClass, frxDBSet, frxExportCSV, frxExportMail,
  frxExportODF, frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML,
  frxExportText, frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, CLookUp, Mask, CDBEdit, Buttons, CBitBtn, CPanelGradient, CLabel,
  CDBCheckBox, frxExportXLSX, System.Actions, System.ImageList,
  uFrmPadraoRelEmpFiscal, Data.FMTBcd, Data.SqlExpr;

type
  TFrmRelFuncionarios = class(TFrmPadraoRelEmpFiscal)
    CLabel6: TCLabel;
    CLabel5: TCLabel;
    DBEdtAdmissaoFim: TCDBEdit;
    DBEdtAdmissaoIni: TCDBEdit;
    DBRGsexo: TCDBRadioGroup;
    CLabel90: TCLabel;
    LookDepartamento: TCLookUp;
    DBEidDepartamento: TCDBEdit;
    CLabel89: TCLabel;
    LookTpAdmissao: TCLookUp;
    DBEidTipoAdmissao: TCDBEdit;
    DBCBestado_civil: TCDBComboBox;
    CLabel71: TCLabel;
    CLabel99: TCLabel;
    DBEidFuncao: TCDBEdit;
    LookFuncao: TCLookUp;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEdtDemissaoFim: TCDBEdit;
    DBEdtDemissaoIni: TCDBEdit;
    cdsPadraoidDepartamento: TIntegerField;
    cdsPadraoidTpAdmissao: TIntegerField;
    cdsPadraoidFuncao: TIntegerField;
    cdsPadraoEst_civil: TStringField;
    cdsPadraodtAdmissaoIni: TDateField;
    cdsPadraodtAdmissaoFim: TDateField;
    cdsPadraodtDemissaoIni: TDateField;
    cdsPadraodtDemissaoFim: TDateField;
    cdsPadraosexo: TStringField;
    frxRel: TfrxReport;
    DBRGTp_relatorio: TCDBRadioGroup;
    cdsPadraotpRel: TStringField;
    CLabel4: TCLabel;
    DBEidFuncionario: TCDBEdit;
    CLookUp1: TCLookUp;
    cdsPadraoidFuncionario: TIntegerField;
    DBRGstFuncionario: TCDBRadioGroup;
    cdsPadraostFuncionario: TStringField;
    cdsPadraoidConta: TIntegerField;
    DBCKstEncerrado: TCDBCheckBox;
    DBRGOrdem: TCDBRadioGroup;
    cdsPadraoordem: TStringField;
    cdsPadraoinclui: TStringField;
    DBCKimpCabecalho: TCDBCheckBox;
    cdsPadraoimpCabecalho: TStringField;
    DBEidCadEmpresa: TCDBEdit;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdtDemissaoFimExit(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelFuncionarios: TFrmRelFuncionarios;

implementation

uses uFuncao, uDmPadrao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelFuncionarios.actGerarExecute(Sender: TObject);
var
  sql, est_civil, caminho_rel, tp_relatorio, sexo, ordem : string;
begin
  //  inherited;
  sql := 'SELECT * FROM vCadFuncionario WHERE 1=1 ';

  //Codigo do Departamento
  if Trim(DBEidDepartamento.Text) <> '' then
    sql := sql + ' AND idDepartamento = ' + DBEidDepartamento.Text;

  //Codigo do Tipo de Admissão
  if Trim(DBEidTipoAdmissao.Text) <> '' then
    sql := sql + ' AND idTipoAdmissao = ' + DBEidTipoAdmissao.Text;

  //Codigo da Funcao
  if Trim(DBEidFuncao.Text) <> '' then
    sql := sql + ' AND idFuncao = ' + DBEidFuncao.Text;

  //Codigo do funcionário
  if Trim(DBEidFuncionario.Text) <> '' then
    sql := sql + ' AND idCadGeral = ' + DBEidFuncionario.Text;

  //Estado Civil
  est_civil := DBCBestado_civil.Items[DBCBestado_civil.ItemIndex];
  if est_civil <> '' then
    if est_civil <> 'Todos' then
      sql := sql + ' AND estado_civil = ' + QuotedStr(est_civil);

  sexo := DBRGsexo.Items[DBRGsexo.ItemIndex];
  if sexo <> '' then
    if sexo <> 'Todos' then
      sql := sql + ' AND sexo = ' + QuotedStr(sexo);

  //Data de Admissão Inicial
  if Trim(DBEdtAdmissaoIni.Text) <> '' then
    sql := sql + ' AND dtAdmissao >= ' + funcao.RetornaValorEField(DBEdtAdmissaoIni, 3);

  //Data de Admissão Final
  if Trim(DBEdtAdmissaoFim.Text) <> '' then
    sql := sql + ' AND dtAdmissao <= ' + funcao.RetornaValorEField(DBEdtAdmissaoFim, 3);

  //Data de Demissão Inicial
  if Trim(DBEdtDemissaoIni.Text) <> '' then
    sql := sql + ' AND dtAdmissao >= ' + funcao.RetornaValorEField(DBEdtDemissaoIni, 3);

  //Data de Demissão Final
  if Trim(DBEdtDemissaoFim.Text) <> '' then
    sql := sql + ' AND dtAdmissao <= ' + funcao.RetornaValorEField(DBEdtDemissaoFim, 3);

  if Trim(cdsPadraostFuncionario.AsString) <> '' then
    sql := sql + ' AND stFuncionario = ' + QuotedStr(cdsPadraostFuncionario.AsString);

  //Trata a consolidação das empresas
  if cdsPadraoconsolidaEmp.AsString = 'N' then
  begin
    sql := sql + ' AND idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3);
    if cdsPadraoconsolidaFilial.AsString = 'N' then
      sql := sql + ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);
  end;


  if Trim(cdsPadraoordem.AsString) <> '' then
    sql := sql + ' ORDER BY ' + cdsPadraoordem.AsString;

  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;

  tp_relatorio := DBRGTp_relatorio.Items[DBRGTp_relatorio.ItemIndex];

  if tp_relatorio = 'Analitico' then
    relatorio := 'RelFuncionariosAnalitica.fr3'
  else
    relatorio := 'RelFuncionariosDetalhado.fr3';

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  (frxRel.FindComponent('MdescDepartamento') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdescDepartamento') as TFrxMemoView).Memo.Add(LookDepartamento.Caption);
  (frxRel.FindComponent('MtpAdmissao') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MtpAdmissao') as TFrxMemoView).Memo.Add(LookTpAdmissao.Caption);
  (frxRel.FindComponent('Mfuncao') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('Mfuncao') as TFrxMemoView).Memo.Add(LookFuncao.Caption);
  (frxRel.FindComponent('MdtAdmissaoIni') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdtAdmissaoIni') as TFrxMemoView).Memo.Add(DBEdtAdmissaoIni.Text);
  (frxRel.FindComponent('MdtAdmissaoFim') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdtAdmissaoFim') as TFrxMemoView).Memo.Add(DBEdtAdmissaoFim.Text);
  (frxRel.FindComponent('MdtDemissaoIni') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdtDemissaoIni') as TFrxMemoView).Memo.Add(DBEdtDemissaoIni.Text);
  (frxRel.FindComponent('MdtDemissaoFim') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MdtDemissaoFim') as TFrxMemoView).Memo.Add(DBEdtDemissaoFim.Text);
  (frxRel.FindComponent('MEstCivil') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MEstCivil') as TFrxMemoView).Memo.Add(est_civil);
  (frxRel.FindComponent('Msexo') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('Msexo') as TFrxMemoView).Memo.Add(sexo);
  (frxRel.FindComponent('HeaderCabecalho') as TfrxHeader).Visible := cdsPadraoimpCabecalho.AsString = 'S';
  frxRel.ShowReport;
end;

procedure TFrmRelFuncionarios.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ordem').AsString := 'descCadAdicional';
  DataSet.FieldByName('stFuncionario').AsString := 'ATIVO';
  DataSet.FieldByName('inclui').AsString := 'S';
  DataSet.FieldByName('impCabecalho').AsString := 'S';
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'S';
end;

procedure TFrmRelFuncionarios.DBEdtDemissaoFimExit(Sender: TObject);
begin
  inherited;
//  DBRGsexo.SetFocus;
end;

procedure TFrmRelFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelFuncionarios := nil;
end;

procedure TFrmRelFuncionarios.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelFuncionariosAnalitica.fr3';
  par := 0;
end;

procedure TFrmRelFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
  Height := 520;
  Width := 600;
  cdsPadraosexo.AsString := 'Todos';
  cdsPadraoEst_civil.AsString := 'Solteiro';
  DBRGTp_relatorio.ItemIndex := 0;
end;

procedure TFrmRelFuncionarios.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
