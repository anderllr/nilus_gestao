unit uFrmRelCurvaABCContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBRadioGroup, CDBCheckBox,
  System.Actions, frxExportXLSX, System.ImageList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, CGroupBox;

type
  TFrmRelCurvaABCContrato = class(TFrmPadraoRelEmpresa)
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
    DBEdtContratoFim: TCDBEdit;
    DBEdtContratoIni: TCDBEdit;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtIni: TDateField;
    cdsPadraodtFim: TDateField;
    cdsPadraoidEmbarque: TIntegerField;
    cdsPadraoidCadEmbarque: TIntegerField;
    DBEidEmbarque: TCDBEdit;
    CLookUp1: TCLookUp;
    LookDescarga: TCLookUp;
    DBEidCadEmbarque: TCDBEdit;
    CLabel27: TCLabel;
    cdsPadraotpContrato: TStringField;
    cdsPadraoprA: TFloatField;
    cdsPadraoprB: TFloatField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    DBRGtpContrato: TCDBRadioGroup;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    CLabel1: TCLabel;
    DBEprA: TCDBEdit;
    CLabel7: TCLabel;
    DBEprB: TCDBEdit;
    CLabel8: TCLabel;
    GrupoGrid: TCGroupBox;
    cxGrid: TcxGrid;
    DBView: TcxGridDBTableView;
    Nivel1: TcxGridLevel;
    BtnImprimir: TCBitBtn;
    btnExportar: TCBitBtn;
    BtnConsultar: TCBitBtn;
    dsRelatorio: TDataSource;
    DBViewidCadGeral: TcxGridDBColumn;
    DBViewdescCadastro: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewdescCidade: TcxGridDBColumn;
    DBViewestado: TcxGridDBColumn;
    DBViewvlTotal: TcxGridDBColumn;
    DBViewtpRegistro: TcxGridDBColumn;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidEmbarqueKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelCurvaABCContrato: TFrmRelCurvaABCContrato;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmRelCurvaABCContrato.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status : string;
begin
//  inherited;

  if not cdsRelatorio.Active then
    btnConsultar.Click
  else
    if cdsRelatorio.RecordCount = 0 then
      btnConsultar.Click;

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

  (frxRel.FindComponent('MPRA') as TfrxMemoview).clear;
  if trim(DBEprA.Text) <> '' then
    (frxRel.FindComponent('MPRA') as TfrxMemoview).Text := DBEprA.Text;

  (frxRel.FindComponent('MPRB') as TfrxMemoview).clear;
  if trim(DBEprB.Text) <> '' then
    (frxRel.FindComponent('MPRB') as TfrxMemoview).Text := DBEprA.Text;

  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).Text := trim(LookProduto.Caption);

  (frxRel.FindComponent('MDESC_EMBARQUE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_EMBARQUE') as TfrxMemoview).Text := trim(LookDescarga.Caption);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtContratoIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtContratoFim.Text;

  (frxRel.FindComponent('MTITULO') as TfrxMemoview).clear;
  if cdsPadraotpContrato.AsString = 'C' then
    (frxRel.FindComponent('MTITULO') as TfrxMemoview).Text := 'CURVA ABC DE CONTRATOS' + #13 + '(COMPRA)'
  else
    (frxRel.FindComponent('MTITULO') as TfrxMemoview).Text := 'CURVA ABC DE CONTRATOS' + #13 + '(VENDA)';

  (frxRel.FindComponent('MEMPRESA') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MFILIAL') as TfrxMemoview).Clear;

  if DBCKconsolidaemp.Checked then
    (frxRel.FindComponent('MEMPRESA') as TfrxMemoview).Text := 'X';

  if DBCKconsolidafilial.Checked then
    (frxRel.FindComponent('MFILIAL') as TfrxMemoview).Text := 'X';


  frxRel.ShowReport;

end;

procedure TFrmRelCurvaABCContrato.BtnConsultarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEdtContratoIni.Text) = '') or (trim(DBEdtContratoFim.Text) = '') then
  begin
    messagedlg('Você deve informar um período!', mtwarning, [mbok], 0);
    exit;
  end;


  sql := 'EXEC spRelCurvaABCContrato ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEdtContratoIni, 3) + ', '
                                     + funcao.RetornaValorEField(DBEdtContratoFim, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidEmbarque, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadEmbarque, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                     + funcao.RetornaValorEField(DBRGtpContrato, 3) + ', '
                                     + funcao.RetornaValorEField(DBEprA, 3) + ', '
                                     + funcao.RetornaValorEField(DBEprB, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKconsolidaEmp, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKconsolidaFilial, 3);

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := true;
end;

procedure TFrmRelCurvaABCContrato.btnExportarClick(Sender: TObject);
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

  funcao.ExportaExcell(FrmRelCurvaABCContrato.Caption, cxGrid);
end;

procedure TFrmRelCurvaABCContrato.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  BtnGerar.Click;
end;

procedure TFrmRelCurvaABCContrato.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'S';
  cdsPadraotpContrato.AsString := 'C';
end;

procedure TFrmRelCurvaABCContrato.DBEidEmbarqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadEmbarque') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmRelCurvaABCContrato.DBEidEmbarqueKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmRelCurvaABCContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelCurvaABCContrato := nil;
end;

procedure TFrmRelCurvaABCContrato.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelCurvaABCContrato.fr3';
  par := 0;
  Height := 621;
  Width :=  709;
end;

procedure TFrmRelCurvaABCContrato.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.

