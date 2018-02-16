unit uFrmRelOrdemFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBRadioGroup, CDBCheckBox,
  System.Actions, System.ImageList;

type
  TFrmRelOrdemFrete = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEdtOrdemFreteFim: TCDBEdit;
    DBEdtOrdemFreteIni: TCDBEdit;
    DBCKmostrarNF: TCDBCheckBox;
    DBEidOrdemFreteIni: TCDBEdit;
    lblCliFor: TCLabel;
    cdsPadraoidOrdemFreteIni: TIntegerField;
    cdsPadraoidOrdemFreteFim: TIntegerField;
    cdsPadraodtOrdemFreteFim: TDateTimeField;
    cdsPadraodtOrdemFreteIni: TDateTimeField;
    cdsPadraomostrarNF: TStringField;
    CLabel5: TCLabel;
    DBEidOrdemFreteFim: TCDBEdit;
    cdsPadraodtLancamentoIni: TDateTimeField;
    cdsPadraodtLancamentoFim: TDateTimeField;
    CLabel1: TCLabel;
    CLabel4: TCLabel;
    DBEdtLancamentoFim: TCDBEdit;
    DBEdtLancamentoIni: TCDBEdit;
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
  FrmRelOrdemFrete: TFrmRelOrdemFrete;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelOrdemFrete.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, msg: string;
begin
//  inherited;
  msg := '';
  if ((DBEdtOrdemFreteIni.Text = '') or (DBEdtOrdemFreteFim.Text = '')) and
     ((DBEdtLancamentoIni.Text = '') or (DBEdtLancamentoFim.Text = '')) then
    msg := 'O intervalo de data deve ser informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelOrdemFrete ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidOrdemFreteIni, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidOrdemFreteFim, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtOrdemFreteIni, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtOrdemFreteFim, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtLancamentoIni, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtLancamentoFim, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKmostrarNF, 3);


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

  (frxRel.FindComponent('MasterNotas') as TfrxMasterData).Visible := DBCKmostrarNF.Checked;

  if DBCKmostrarNF.Checked then
  begin
    (frxRel.FindComponent('grpMovimento') as TfrxGroupHeader).Height := 30;
    (frxRel.FindComponent('MSERIE') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MNF') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MVALOR') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MVLPRODUTO') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MPSAIDA') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MPCHEGADA') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MQUEBRA') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MTOLER') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MDESCQUEBRA') as TfrxMemoview).Visible := true;
//    (frxRel.FindComponent('Linha') as TfrxLineview).Visible := true;
  end
  else
  begin
    (frxRel.FindComponent('grpMovimento') as TfrxGroupHeader).Height := 15;
    (frxRel.FindComponent('MSERIE') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MNF') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MVALOR') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MVLPRODUTO') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MPSAIDA') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MPCHEGADA') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MQUEBRA') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MTOLER') as TfrxMemoview).Visible := false;
    (frxRel.FindComponent('MDESCQUEBRA') as TfrxMemoview).Visible := false;
//    (frxRel.FindComponent('Linha') as TfrxLineview).Visible := false;
  end;
  (frxRel.FindComponent('MORDEM_INI') as TfrxMemoview).clear;
  (frxRel.FindComponent('MORDEM_INI') as TfrxMemoview).Text := trim(DBEidOrdemFreteIni.Text);

  (frxRel.FindComponent('MORDEM_FIM') as TfrxMemoview).clear;
  (frxRel.FindComponent('MORDEM_FIM') as TfrxMemoview).Text := trim(DBEidOrdemFreteIni.Text);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtOrdemFreteIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtOrdemFreteFim.Text;

  (frxRel.FindComponent('MLANC_INI') as TfrxMemoview).clear;
  (frxRel.FindComponent('MLANC_INI') as TfrxMemoview).Text := DBEdtLancamentoIni.Text;

  (frxRel.FindComponent('MLANC_FIM') as TfrxMemoview).clear;
  (frxRel.FindComponent('MLANC_FIM') as TfrxMemoview).Text := DBEdtLancamentoFim.Text;

  (frxRel.FindComponent('MMOSTRAR_NF') as TfrxMemoview).clear;

  if DBCKmostrarNF.Checked then
    (frxRel.FindComponent('MMOSTRAR_NF') as TfrxMemoview).Text := 'X';

//  if DBCKmostrarRateio.Checked then
//  begin
//    (frxRel.FindComponent('MRATEIO') as TfrxMemoview).Text := 'X';
//    (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Text := '[SUM(<frxDataset."vlPagamentoRat">,MasterResultado,1)]';
//  end
//  else
//    (frxRel.FindComponent('MSOMA_TOTAL') as TfrxMemoview).Text := '[SUM(<frxDataset."vlPagamento">,MasterResultado,1)]';
//

  frxRel.ShowReport;

end;

procedure TFrmRelOrdemFrete.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraomostrarNF.AsString := 'N';
end;

procedure TFrmRelOrdemFrete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelOrdemFrete := nil;
end;

procedure TFrmRelOrdemFrete.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelOrdemFrete.fr3';
  par := 0;
  Height := 325;
  Width :=  550;
end;

procedure TFrmRelOrdemFrete.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
