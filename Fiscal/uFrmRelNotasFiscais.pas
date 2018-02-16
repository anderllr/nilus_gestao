unit uFrmRelNotasFiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBRadioGroup, CDBCheckBox,
  System.Actions, System.ImageList, Vcl.Grids, Vcl.DBGrids, CDBGrid, CGroupBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, frxExportXLSX;

type
  TFrmRelNotasFiscais = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    CLabel4: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel5: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEdtFim: TCDBEdit;
    DBEdtIni: TCDBEdit;
    DBRGstContrato: TCDBRadioGroup;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtIni: TDateField;
    cdsPadraodtFim: TDateField;
    cdsPadraostatus: TStringField;
    lblCliFor: TCLabel;
    DBEidCadGeral: TCDBEdit;
    LookCliente: TCLookUp;
    cdsPadraoidCadGeral: TIntegerField;
    cdsPadraotpNf: TStringField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    DBRGtpNf: TCDBRadioGroup;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    GrupoGrid: TCGroupBox;
    dsRelatorio: TDataSource;
    cdsRelatorioidEmpresa: TIntegerField;
    cdsRelatorioidCadEmpresa: TSmallintField;
    cdsRelatoriodtNf: TSQLTimeStampField;
    cdsRelatorioidNf: TIntegerField;
    cdsRelatorioidCadGeral: TIntegerField;
    cdsRelatoriodescCadGeral: TStringField;
    cdsRelatoriodescAbreviada: TStringField;
    cdsRelatorioidProduto: TIntegerField;
    cdsRelatoriodescProduto: TStringField;
    cdsRelatorioqtProduto: TFMTBCDField;
    cdsRelatoriovlNf: TFMTBCDField;
    cdsRelatorioidCfop: TIntegerField;
    cdsRelatoriostNf: TStringField;
    BtnConsultar: TCBitBtn;
    BtnImprimir: TCBitBtn;
    cxGrid: TcxGrid;
    DBView: TcxGridDBTableView;
    Nivel1: TcxGridLevel;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewdtNf: TcxGridDBColumn;
    DBViewidNf: TcxGridDBColumn;
    DBViewidCadGeral: TcxGridDBColumn;
    DBViewdescCadGeral: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewidProduto: TcxGridDBColumn;
    DBViewdescProduto: TcxGridDBColumn;
    DBViewqtProduto: TcxGridDBColumn;
    DBViewvlNf: TcxGridDBColumn;
    DBViewidCfop: TcxGridDBColumn;
    DBViewstNf: TcxGridDBColumn;
    btnExportar: TCBitBtn;
    DBCKincluiContrato: TCDBCheckBox;
    cdsPadraoincluiContrato: TStringField;
    cdsRelatorioidContratoCompra: TStringField;
    DBViewidContratoCompra: TcxGridDBColumn;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelNotasFiscais: TFrmRelNotasFiscais;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelNotasFiscais.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status : string;
begin
//  inherited;
  if not cdsRelatorio.Active then
    btnConsultar.Click
  else
    if cdsRelatorio.RecordCount = 0 then
      btnConsultar.Click;
  status := cdsPadraostatus.AsString; //DBRGstContrato.Items[DBRGstContrato.ItemIndex];

    //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;
  frxRel.LoadFromFile(caminho_rel);

  (frxRel.FindComponent('MDESC_CADASTRO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CADASTRO') as TfrxMemoview).Text := trim(LookCliente.Caption);

  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).Text := trim(LookProduto.Caption);

  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).Text := trim(LookSafra.Caption);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtFim.Text;

  (frxRel.FindComponent('MATIVO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCANCELADA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MINUTILIZADA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MTODOS') as TfrxMemoview).clear;

  (frxRel.FindComponent('MENTRADA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MSAIDA') as TfrxMemoview).clear;

  (frxRel.FindComponent('MENTRADA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MSAIDA') as TfrxMemoview).clear;

  case DBRGstContrato.ItemIndex of
  0 : (frxRel.FindComponent('MATIVO') as TfrxMemoview).Text := 'X';
  1 : (frxRel.FindComponent('MCANCELADA') as TfrxMemoview).Text := 'X';
  2 : (frxRel.FindComponent('MINUTILIZADA') as TfrxMemoview).Text := 'X';
  3 : (frxRel.FindComponent('MTODOS') as TfrxMemoview).Text := 'X';
  end;

  case DBRGtpNf.ItemIndex of
  0 : (frxRel.FindComponent('MENTRADA') as TfrxMemoview).Text := 'X';
  1 : (frxRel.FindComponent('MSAIDA') as TfrxMemoview).Text := 'X';
  end;

  (frxRel.FindComponent('MEMPRESA') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MFILIAL') as TfrxMemoview).Clear;

  if DBCKconsolidaemp.Checked then
    (frxRel.FindComponent('MEMPRESA') as TfrxMemoview).Text := 'X';

  if DBCKconsolidafilial.Checked then
    (frxRel.FindComponent('MFILIAL') as TfrxMemoview).Text := 'X';

  frxRel.ShowReport;

end;

procedure TFrmRelNotasFiscais.BtnConsultarClick(Sender: TObject);
var
  sql : string;
begin
//  inherited;

  sql := 'EXEC spRelNotasFiscais ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadGeral, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                                     + funcao.RetornaValorEField(DBEdtIni, 3) + ', '
                                     + funcao.RetornaValorEField(DBEdtFim, 3) + ', '
                                     + funcao.RetornaValorEField(DBRGstContrato, 3) + ', '
                                     + funcao.RetornaValorEField(DBRGtpNf, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKincluiContrato, 3);

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := true;
end;

procedure TFrmRelNotasFiscais.btnExportarClick(Sender: TObject);
begin
  inherited;
  if not cdsRelatorio.Active then
    btnConsultar.Click
  else
    if cdsRelatorio.RecordCount = 0 then
      btnConsultar.Click;

  //se ainda assim estiver sem dados aborta
  if cdsRelatorio.RecordCount = 0 then
  begin
    messagedlg('Sem dados para exportar!', mtwarning, [mbok], 0);
    exit;
  end;

  funcao.ExportaExcell(FrmRelNotasFiscais.Caption, cxGrid);
end;

procedure TFrmRelNotasFiscais.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  BtnGerar.Click;
end;

procedure TFrmRelNotasFiscais.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraostatus.AsString := 'AUTORIZADA';
  cdsPadraotpNf.AsString := 'E';
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'S';
  cdsPadraoincluiContrato.AsString := 'S';
end;

procedure TFrmRelNotasFiscais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelNotasFiscais := nil;
end;

procedure TFrmRelNotasFiscais.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelNotasFiscais.fr3';
  par := 0;
  Height := 570;
  Width :=  710;
end;

procedure TFrmRelNotasFiscais.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
