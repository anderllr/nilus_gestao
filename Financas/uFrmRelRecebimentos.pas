unit uFrmRelRecebimentos;

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
  TFrmRelRecebimentos = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    CLabel4: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEdtPagamentoFim: TCDBEdit;
    DBEdtPagamentoIni: TCDBEdit;
    DBCKincluirBcoCx: TCDBCheckBox;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    lblCliFor: TCLabel;
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
    DBCKagrupaCli: TCDBCheckBox;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoagrupaCli: TStringField;
    cdsPadraoagrupaLanc: TStringField;
    DBCKagrupaLanc: TCDBCheckBox;
    DBEidGerencial: TCDBEdit;
    LookGerenciaR: TCLookUp;
    CLabel13: TCLabel;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidContratoVenda: TStringField;
    Label8: TLabel;
    DBEidContratoVenda: TCDBEdit;
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
  FrmRelRecebimentos: TFrmRelRecebimentos;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelRecebimentos.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, msg: string;
begin
//  inherited;
  msg := '';
  if (DBEdtPagamentoIni.Text = '') or (DBEdtPagamentoFim.Text = '') then
    msg := 'O intervalo de Data deve ser informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelRecebimentos ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidCliente, 3) + ', '
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
                                 + funcao.RetornaValorEField(DBCKagrupaCli, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKagrupaLanc, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidContratoVenda, 3);


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
  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Text := trim(LookCliente.Caption);

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
    (frxRel.FindComponent('MGERENCIAL') as TfrxMemoview).Text := DBEidGerencial.Text + '-' + trim(LookGerenciaR.Caption);

  if DBCKincluirBcoCx.Checked then
    (frxRel.FindComponent('MBANCOCAIXA') as TfrxMemoview).Text := 'X';

  if DBCKmostrarRateio.Checked then
  begin
    (frxRel.FindComponent('MRATEIO') as TfrxMemoview).Text := 'X';
    (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Text := '[SUM(<frxDataset."vlRecebimentoRat">,MasterResultado,1)]';
  end
  else
    (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Text := '[SUM(<frxDataset."vlRecebimento">,MasterResultado,1)]';

  if DBCKconsolidaemp.Checked then
    (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).Text := 'X';

  if DBCKconsolidafilial.Checked then
    (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).Text := 'X';

  if DBCKagrupaLanc.Checked then
    (frxRel.FindComponent('MAGRUPALANC') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Text := DBEidContratoVenda.Text;

  //Trata as opções de agrupamento
  (frxRel.FindComponent('MTIT_GRUPO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MDESC_GRUPO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MTIT_TOTAL') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Clear;


  if DBCKagrupaCli.Checked then
  begin
    (frxRel.FindComponent('grpPrincipal') as TfrxGroupHeader).Condition := 'frxDataset."idCliente"';
    (frxRel.FindComponent('MTIT_GRUPO') as TfrxMemoview).Text := 'CLIENTE :';
    (frxRel.FindComponent('MDESC_GRUPO') as TfrxMemoview).Text := '[(<frxDataset."descCadCliente">)]';
    (frxRel.FindComponent('MTIT_TOTAL') as TfrxMemoview).Text := 'TOTAL : [(<frxDataset."descCadCliente">)]';
  end
  else
  begin
    (frxRel.FindComponent('grpPrincipal') as TfrxGroupHeader).Condition := 'frxDataset."dtRecebimento"';
    (frxRel.FindComponent('MTIT_GRUPO') as TfrxMemoview).Text := 'DATA DO RECEBIMENTO:';
    (frxRel.FindComponent('MDESC_GRUPO') as TfrxMemoview).Text := '[(<frxDataset."dtRecebimento">)]';
    (frxRel.FindComponent('MTIT_TOTAL') as TfrxMemoview).Text := 'TOTAL : [(<frxDataset."dtRecebimento">)]';
  end;
  frxRel.ShowReport;

end;

procedure TFrmRelRecebimentos.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoincluirBcoCx.AsString := 'S';
  cdsPadraomostrarRateio.AsString := 'N';
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'N';
  cdsPadraoagrupaCli.AsString := 'N';
  cdsPadraoagrupaLanc.AsString := 'S';
end;

procedure TFrmRelRecebimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelRecebimentos := nil;
end;

procedure TFrmRelRecebimentos.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelRecebimentos.fr3';
  par := 0;
  Height := 340;
  Width :=  550;
end;

procedure TFrmRelRecebimentos.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
