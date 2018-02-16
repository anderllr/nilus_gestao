unit uFrmRelContratoVendaFinanc;

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
  TFrmRelContratoVendaFinanc = class(TFrmPadraoRelEmpresa)
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
    DBCKmostraAPagarZero: TCDBCheckBox;
    cdsPadraomostraAPagarZero: TStringField;
    cdsPadraoAFixar: TStringField;
    DBCKAFixar: TCDBCheckBox;
    DBCKmostraRecebimento: TCDBCheckBox;
    cdsPadraomostraRecebimento: TStringField;
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
  FrmRelContratoVendaFinanc: TFrmRelContratoVendaFinanc;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelContratoVendaFinanc.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status : string;
begin
//  inherited;

  status := cdsPadraostatus.AsString; //DBRGstContrato.Items[DBRGstContrato.ItemIndex];
  sql := 'EXEC spRelContratoVendaFinanc ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
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
                                     + funcao.RetornaValorEField(DBCKmostraAPagarZero, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKAFixar, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKmostraRecebimento, 3);


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
  if trim(DBEidCliente.Text) <> '' then
    (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Text := trim(DBEidCliente.Text) + '-' + trim(LookCliente.Caption);

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
  (frxRel.FindComponent('MRECEBERZERO') as TfrxMemoview).clear;

  if DBCKmostrarZero.Checked then
    (frxRel.FindComponent('MZERADO') as TfrxMemoview).Text := 'X';

  if DBCKmostraAPagarZero.Checked then
    (frxRel.FindComponent('MRECEBERZERO') as TfrxMemoview).Text := 'X';

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

  //Ajusta as alturas dos relatórios
  (frxRel.FindComponent('grpLista') as TfrxGroupHeader).Height := 15;
  (frxRel.FindComponent('DetailData1') as TfrxDetailData).Height := 0;
  (frxRel.FindComponent('MRECEBIMENTOS') as TfrxMemoview).Visible := false;
  (frxRel.FindComponent('MDATA') as TfrxMemoview).Visible := false;
  (frxRel.FindComponent('MCOMPENSACAO') as TfrxMemoview).Visible := false;
  (frxRel.FindComponent('MCONTA') as TfrxMemoview).Visible := false;
  (frxRel.FindComponent('MVALOR') as TfrxMemoview).Visible := false;

  if DBCKmostraRecebimento.Checked then
  begin
    (frxRel.FindComponent('grpLista') as TfrxGroupHeader).Height := 30;
    (frxRel.FindComponent('DetailData1') as TfrxDetailData).Height := 15;
    (frxRel.FindComponent('MRECEBIMENTOS') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MDATA') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MCOMPENSACAO') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MCONTA') as TfrxMemoview).Visible := true;
    (frxRel.FindComponent('MVALOR') as TfrxMemoview).Visible := true;

  end;
  frxRel.ShowReport;

end;

procedure TFrmRelContratoVendaFinanc.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('status').AsString := 'TODOS';
  DataSet.FieldByName('mostrarZero').AsString := 'N';
  DataSet.FieldByName('RomAConfirmar').AsString := 'S';
  cdsPadraomostraNegativo.AsString := 'S';
  cdsPadraoAFixar.AsString := 'N';
  cdsPadraomostraAPagarZero.AsString := 'N';
  cdsPadraomostraRecebimento.AsString := 'N';
end;

procedure TFrmRelContratoVendaFinanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoVendaFinanc := nil;
end;

procedure TFrmRelContratoVendaFinanc.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoVendaFinanc.fr3';
  par := 0;
  Height := 360;
  Width :=  540;
end;

procedure TFrmRelContratoVendaFinanc.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
