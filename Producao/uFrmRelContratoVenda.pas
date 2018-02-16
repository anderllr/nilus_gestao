unit uFrmRelContratoVenda;

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
  TFrmRelContratoVenda = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    CLabel4: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel5: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CLabel1: TCLabel;
    DBEidContrato: TCDBEdit;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEdtContratoFim: TCDBEdit;
    DBEdtContratoIni: TCDBEdit;
    DBRGstContrato: TCDBRadioGroup;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtIni: TDateField;
    cdsPadraodtFim: TDateField;
    cdsPadraostatus: TStringField;
    cdsPadraoidContrato: TStringField;
    DBCKmostrarZero: TCDBCheckBox;
    cdsPadraomostrarZero: TStringField;
    cdsPadraoidCliente: TIntegerField;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    lblCliFor: TCLabel;
    DBEidDescarga: TCDBEdit;
    LookDescarga: TCLookUp;
    CLabel27: TCLabel;
    cdsPadraoidDescarga: TIntegerField;
    DBCKRomAConfirmar: TCDBCheckBox;
    cdsPadraoRomAConfirmar: TStringField;
    cdsPadraomostraNegativo: TStringField;
    DBCKmostraNegativo: TCDBCheckBox;
    cdsPadraoAFixar: TStringField;
    DBCKAFixar: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    CDBRadioGroup1: TCDBRadioGroup;
    cdsPadraotpMercado: TStringField;
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
  FrmRelContratoVenda: TFrmRelContratoVenda;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelContratoVenda.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status, tpMercado : string;
begin
//  inherited;
  if cdsPadraotpMercado.AsString = 'TODOS' then
    tpMercado := '%'
  else
    tpMercado := '%' + cdsPadraotpMercado.AsString + '%';

  status := cdsPadraostatus.AsString; //DBRGstContrato.Items[DBRGstContrato.ItemIndex];
  sql := 'EXEC spRelContratoVenda ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                    + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                    + funcao.RetornaValorEField(DBEidCliente, 3) + ', '
                                    + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                    + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                                    + funcao.RetornaValorEField(DBEidContrato, 3) + ', '
                                    + funcao.RetornaValorEField(DBEdtContratoIni, 3) + ', '
                                    + funcao.RetornaValorEField(DBEdtContratoFim, 3) + ', '
                                    + funcao.RetornaValorEField(DBRGstContrato, 3) + ', '
                                    + funcao.RetornaValorEField(DBCKmostrarZero, 3) + ', '
                                    + funcao.RetornaValorEField(DBCKRomAConfirmar, 3) + ', '
                                    + funcao.RetornaValorEField(DBEidDescarga, 3) + ', '
                                    + funcao.RetornaValorEField(DBCKmostraNegativo, 3) + ', '
                                    + funcao.RetornaValorEField(DBCKAFixar, 3) + ', '
                                    + funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', '
                                    + funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', '
                                    + QuotedStr(tpMercado);

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

  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Text := DBEidContrato.Text;

  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Text := trim(LookCliente.Caption);

  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).Text := trim(LookProduto.Caption);

  (frxRel.FindComponent('MDESC_DESCARGA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_DESCARGA') as TfrxMemoview).Text := trim(LookDescarga.Caption);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtContratoIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtContratoFim.Text;

  (frxRel.FindComponent('MATIVO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCANCELADO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MENCERRADO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MTODOS') as TfrxMemoview).clear;
  (frxRel.FindComponent('MZERADO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MNEGATIVO') as TfrxMemoview).clear;

  if DBCKmostrarZero.Checked then
    (frxRel.FindComponent('MZERADO') as TfrxMemoview).Text := 'X';

  if DBCKmostraNegativo.Checked then
    (frxRel.FindComponent('MNEGATIVO') as TfrxMemoview).Text := 'X';

  case DBRGstContrato.ItemIndex of
  0 : (frxRel.FindComponent('MATIVO') as TfrxMemoview).Text := 'X';
  1 : (frxRel.FindComponent('MCANCELADO') as TfrxMemoview).Text := 'X';
  2 : (frxRel.FindComponent('MENCERRADO') as TfrxMemoview).Text := 'X';
  3 : (frxRel.FindComponent('MTODOS') as TfrxMemoview).Text := 'X';
  end;

  (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).clear;
  if DBCKAFixar.Checked then
    (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).clear;
  if DBCKconsolidaemp.Checked then
    (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).clear;
  if DBCKconsolidafilial.Checked then
    (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).Text := 'X';

  frxRel.ShowReport;

end;

procedure TFrmRelContratoVenda.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('status').AsString := 'TODOS';
  DataSet.FieldByName('mostrarZero').AsString := 'N';
  DataSet.FieldByName('RomAConfirmar').AsString := 'S';
  cdsPadraomostraNegativo.AsString := 'S';
  cdsPadraoAFixar.AsString := 'N';
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'N';
  cdsPadraotpMercado.AsString := 'TODOS';
end;

procedure TFrmRelContratoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoVenda := nil;
end;

procedure TFrmRelContratoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoVenda.fr3';
  par := 0;

  Height := 415;
  Width :=  540;
end;

procedure TFrmRelContratoVenda.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
