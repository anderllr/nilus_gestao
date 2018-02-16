unit uFrmRelPagamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBRadioGroup, CDBCheckBox,
  System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelPagamentos = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    CLabel4: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEdtPagamentoFim: TCDBEdit;
    DBEdtPagamentoIni: TCDBEdit;
    DBCKincluirBcoCx: TCDBCheckBox;
    DBEidFornecedor: TCDBEdit;
    LookCliente: TCLookUp;
    lblCliFor: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    CLabel11: TCLabel;
    cdsPadraodtPagamentoIni: TDateTimeField;
    cdsPadraodtPagamentoFim: TDateTimeField;
    cdsPadraoincluirBcoCx: TStringField;
    cdsPadraomostrarRateio: TStringField;
    DBCKmostrarRateio: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    DBEidConta: TCDBEdit;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    CLabel8: TCLabel;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CLabel1: TCLabel;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraoidConta: TIntegerField;
    cdsPadraoagrupaFor: TStringField;
    DBCKagrupaFor: TCDBCheckBox;
    cdsPadraoagrupaLanc: TStringField;
    DBCKagrupaLanc: TCDBCheckBox;
    DBEidGerencial: TCDBEdit;
    LookGerencialP: TCLookUp;
    CLabel13: TCLabel;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidContratoCompra: TStringField;
    DBEidContratoCompra: TCDBEdit;
    Label8: TLabel;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelPagamentos: TFrmRelPagamentos;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelPagamentos.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, msg: string;
begin
//  inherited;
  msg := '';
  if (DBEdtPagamentoIni.Text = '') or (DBEdtPagamentoFim.Text = '') then
    msg := 'O intervalo deve ser informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelPagamentos ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidFornecedor, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidCaixa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidConta, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtPagamentoIni, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtPagamentoFim, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidResultado, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidGerencial, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKincluirBcoCx, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKmostrarRateio, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKconsolidaFilial, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKagrupaFor, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKagrupaLanc, 3)+ ', '
                                 + funcao.RetornaValorEField(DBEidContratoCompra, 3);


    //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;
  frxRel.LoadFromFile(caminho_rel);

  (frxRel.FindComponent('MasterResultado') as TfrxMasterData).Visible := DBCKmostrarRateio.Checked;

  if DBCKmostrarRateio.Checked then
  begin
    (frxRel.FindComponent('grpMovimento') as TfrxGroupHeader).Height := 30;
    (frxRel.FindComponent('MTITULO') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('Linha') as TfrxLineview).Visible := true;
  end
  else
  begin
    (frxRel.FindComponent('grpMovimento') as TfrxGroupHeader).Height := 15;
    (frxRel.FindComponent('MTITULO') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('Linha') as TfrxLineview).Visible := false;
  end;
  (frxRel.FindComponent('MDESC_FORNECEDOR') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_FORNECEDOR') as TfrxMemoview).Text := trim(LookCliente.Caption);

  (frxRel.FindComponent('MDESC_RESULTADO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_RESULTADO') as TfrxMemoview).Text := trim(LookResultado.Caption);

  (frxRel.FindComponent('MDESC_CAIXA') as TfrxMemoview).clear;
  if trim(DBEidCaixa.Text) <> '' then
    (frxRel.FindComponent('MDESC_CAIXA') as TfrxMemoview).Text := DBEidCaixa.Text + '-' + trim(LookCaixa.Caption);

  (frxRel.FindComponent('MDESC_CONTA') as TfrxMemoview).clear;
  if trim(DBEidConta.Text) <> '' then
    (frxRel.FindComponent('MDESC_CONTA') as TfrxMemoview).Text := DBEidConta.Text + '- Ag.:' + trim(LookAgencia.Caption) +
    ' - CC.: ' + trim(LookContaCorrente.Caption) + ' - ' + trim(LookdescConta.Caption);

  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).Text := trim(LookSafra.Caption);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtPagamentoIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtPagamentoFim.Text;

  (frxRel.FindComponent('MBANCOCAIXA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MRATEIO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MAGRUPALANC') as TfrxMemoview).clear;
  (frxRel.FindComponent('MGERENCIAL') as TfrxMemoview).clear;

  if trim(DBEidGerencial.Text) <> '' then
    (frxRel.FindComponent('MGERENCIAL') as TfrxMemoview).Text := DBEidGerencial.Text + '-' + trim(LookGerencialP.Caption);

  if DBCKincluirBcoCx.Checked then
    (frxRel.FindComponent('MBANCOCAIXA') as TfrxMemoview).Text := 'X';

  if DBCKagrupaLanc.Checked then
    (frxRel.FindComponent('MAGRUPALANC') as TfrxMemoview).Text := 'X';

  if DBCKmostrarRateio.Checked then
  begin
    (frxRel.FindComponent('MRATEIO') as TfrxMemoview).Text := 'X';
    (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Text := '[SUM(<frxDataset."vlPagamentoRat">,MasterResultado,1)]';
  end
  else
    (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Text := '[SUM(<frxDataset."vlPagamento">,MasterResultado,1)]';

  if DBCKconsolidaemp.Checked then
    (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).Text := 'X';

  if DBCKconsolidafilial.Checked then
    (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).Text := 'X';

  //Trata as opções de agrupamento
  (frxRel.FindComponent('MTIT_GRUPO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MDESC_GRUPO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MTIT_TOTAL') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Clear;

  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Text := DBEidContratoCompra.Text;

  if DBCKagrupaFor.Checked then
  begin
    (frxRel.FindComponent('grpPrincipal') as TfrxGroupHeader).Condition := 'frxDataset."idFornecedor"';
    (frxRel.FindComponent('MTIT_GRUPO') as TfrxMemoview).Text := 'FORNECEDOR :';
    (frxRel.FindComponent('MDESC_GRUPO') as TfrxMemoview).Text := '[(<frxDataset."descCadFornecedor">)]';
    (frxRel.FindComponent('MTIT_TOTAL') as TfrxMemoview).Text := 'TOTAL : [(<frxDataset."descCadFornecedor">)]';
  end
  else
  begin
    (frxRel.FindComponent('grpPrincipal') as TfrxGroupHeader).Condition := 'frxDataset."dtPagamento"';
    (frxRel.FindComponent('MTIT_GRUPO') as TfrxMemoview).Text := 'DATA DO PAGAMENTO:';
    (frxRel.FindComponent('MDESC_GRUPO') as TfrxMemoview).Text := '[(<frxDataset."dtPagamento">)]';
    (frxRel.FindComponent('MTIT_TOTAL') as TfrxMemoview).Text := 'TOTAL : [(<frxDataset."dtPagamento">)]';
  end;
  frxRel.ShowReport;

end;

procedure TFrmRelPagamentos.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoincluirBcoCx.AsString := 'S';
  cdsPadraomostrarRateio.AsString := 'N';
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'N';
  cdsPadraoagrupaFor.AsString := 'N';
  cdsPadraoagrupaLanc.AsString := 'S';
end;

procedure TFrmRelPagamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelPagamentos := nil;
end;

procedure TFrmRelPagamentos.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelPagamentos.fr3';
  par := 0;
  Height := 340;
  Width :=  550;
end;

procedure TFrmRelPagamentos.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
