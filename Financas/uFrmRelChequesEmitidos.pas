unit uFrmRelChequesEmitidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpFiscal, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CDBCheckBox, CDBRadioGroup, System.Actions, System.ImageList;

type
  TFrmRelChequesEmitidos = class(TFrmPadraoRelEmpFiscal)
    Group1: TCGroupBox;
    CLabel82: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CLabel4: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtEmissaoFim: TCDBEdit;
    CLabel8: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel10: TCLabel;
    DBEdtVencimentoFim: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtCompenIni: TCDBEdit;
    CLabel3: TCLabel;
    DBEdtCompenFim: TCDBEdit;
    DBCKcompensado: TCDBCheckBox;
    DBCKintegraLimite: TCDBCheckBox;
    DBCKconsolidaEmp: TCDBCheckBox;
    DBCKincluirCanc: TCDBCheckBox;
    frxRel: TfrxReport;
    cdsPadraoidConta: TIntegerField;
    cdsPadraodtEmissaoIni: TDateField;
    cdsPadraodtEmissaoFim: TDateField;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    cdsPadraodtCompenIni: TDateField;
    cdsPadraodtCompenFim: TDateField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraointegraLimite: TStringField;
    cdsPadraoincluirCanc: TStringField;
    DBRGOrdem: TCDBRadioGroup;
    cdsPadraoordem: TStringField;
    cdsPadraocompensado: TStringField;
    cdsPadraonaocompensado: TStringField;
    DBCKnaocompensado: TCDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelChequesEmitidos: TFrmRelChequesEmitidos;

implementation

uses uDmPadrao, uFrmPrincipal, uDmFind, uFuncao;

{$R *.dfm}

procedure TFrmRelChequesEmitidos.actGerarExecute(Sender: TObject);
var
  sql, status, caminho_rel : string;
begin
  status := '';
  if Trim(DBEidConta.Text) = '' then
  begin
    MessageDlg('A Conta deve ser informado!', mtWarning, [mbOK], 0);
    DBEidConta.SetFocus;
    Exit;
  end;
  //Busca dados dos Cheques
  sql := 'SELECT M.*, C.descConta, F.* FROM MovConta M INNER JOIN vCadFornecedorContabil F ' +
         ' ON M.idCadGeral = F.idFornecedor INNER JOIN Conta C ON M.idConta = C.idConta ' +
         ' WHERE 1=1 AND idCheque IS NOT NULL';
  if not(DBCKconsolidaEmp.Checked) then
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
  if cdsPadraoidConta.AsInteger > 0 then
    sql := sql + ' AND M.idConta = ' + cdsPadraoidConta.AsString;
  if Trim(cdsPadraodtEmissaoIni.AsString) <> '' then
    sql := sql + ' AND M.dtMovConta >= ' + funcao.RetornaValorEField(DBEdtEmissaoIni, 3);
  if Trim(cdsPadraodtEmissaoFim.AsString) <> '' then
    sql := sql + ' AND M.dtMovConta <= ' + funcao.RetornaValorEField(DBEdtEmissaoFim, 3);
  if Trim(cdsPadraodtVencimentoIni.AsString) <> '' then
    sql := sql + ' AND M.dtVencimento >= ' + funcao.RetornaValorEField(DBEdtVencimentoIni, 3);
  if Trim(cdsPadraodtVencimentoFim.AsString) <> '' then
    sql := sql + ' AND M.dtVencimento <= ' + funcao.RetornaValorEField(DBEdtVencimentoFim, 3);
  if Trim(cdsPadraodtCompenIni.AsString) <> '' then
    sql := sql + ' AND M.dtCompensacao >= ' + funcao.RetornaValorEField(DBEdtCompenIni, 3);
  if Trim(cdsPadraodtCompenFim.AsString) <> '' then
    sql := sql + ' AND M.dtCompensacao <= ' + funcao.RetornaValorEField(DBEdtCompenFim, 3);

  if not DBCKcompensado.Checked then
    sql := sql + ' AND M.dtCompensacao IS NULL';

  if not DBCKnaocompensado.Checked then
    sql := sql + ' AND M.dtCompensacao IS NOT NULL';

  if not(DBCKincluirCanc.Checked) then
    sql := sql + ' AND M.dtCancelamento IS NULL';
//  else
//    sql := sql + ' AND M.dtCancelamento IS NOT NULL';


  sql := sql + ' ORDER BY ' + cdsPadraoordem.AsString;

  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;

  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + FrmPrincipal.idCadEmpresa;
  dmPadrao.cdsEmpresaContabil.Active := true;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not (FileExists(caminho_rel)) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok],0);
    exit;
  end;

  frxRel.LoadFromFile(caminho_rel);

  (frxRel.FindComponent('MDESC_CONTA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CONTA') as TfrxMemoview).Text := trim(DBEidConta.Text) + '-' + trim(LookAgencia.Caption) + '-' +
                                                                trim(LookContaCorrente.Caption) + '-' + trim(LookdescConta.Caption);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtEmissaoIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtEmissaoFim.Text;

  (frxRel.FindComponent('MDT_VENC_INI') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_VENC_INI') as TfrxMemoview).Text := DBEdtVencimentoIni.Text;

  (frxRel.FindComponent('MDT_VENC_FIM') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_VENC_FIM') as TfrxMemoview).Text := DBEdtVencimentoFim.Text;

  (frxRel.FindComponent('MDT_COMP_INI') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_COMP_INI') as TfrxMemoview).Text := DBEdtCompenIni.Text;

  (frxRel.FindComponent('MDT_COMP_FIM') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_COMP_FIM') as TfrxMemoview).Text := DBEdtCompenFim.Text;

  (frxRel.FindComponent('MLIMITE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCOMP') as TfrxMemoview).clear;
  (frxRel.FindComponent('MNAOCOMP') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCANCELADO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MORDEM') as TfrxMemoview).clear;

  if DBCKintegraLimite.Checked then
    (frxRel.FindComponent('MLIMITE') as TfrxMemoview).Text := 'X';

  if DBCKcompensado.Checked then
    (frxRel.FindComponent('MCOMP') as TfrxMemoview).Text := 'X';

  if DBCKconsolidaEmp.Checked then
    (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).Text := 'X';

  if DBCKnaocompensado.Checked then
    (frxRel.FindComponent('MNAOCOMP') as TfrxMemoview).Text := 'X';

  if DBCKincluirCanc.Checked then
    (frxRel.FindComponent('MCANCELADO') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MORDEM') as TfrxMemoview).Text := DBRGOrdem.Items.Strings[DBRGOrdem.ItemIndex];

  frxRel.ShowReport
end;

procedure TFrmRelChequesEmitidos.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoincluirCanc.AsString := 'N';
  cdsPadraointegraLimite.AsString := 'N';
  cdsPadraocompensado.AsString := 'S';
  cdsPadraonaocompensado.AsString := 'S';
  cdsPadraoordem.AsString := 'M.idConta';
end;

procedure TFrmRelChequesEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelChequesEmitidos := nil;
end;

procedure TFrmRelChequesEmitidos.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := False;
  relatorio := 'RelChequesEmitidos.fr3';
  par := 0;
end;

procedure TFrmRelChequesEmitidos.FormShow(Sender: TObject);
begin
  inherited;
  Height := 280;
  Width := 630;
end;

end.
