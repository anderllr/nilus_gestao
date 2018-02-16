unit uFrmRelContratoEmbarque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBRadioGroup, CDBCheckBox,
  System.Actions;

type
  TFrmRelContratoEmbarque = class(TFrmPadraoRelEmpresa)
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
    DBEidFornecedor: TCDBEdit;
    CLookUp3: TCLookUp;
    LookFornecedor: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    lblCliFor: TCLabel;
    DBCKmostrarZero: TCDBCheckBox;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TIntegerField;
    cdsPadraomostrarZero: TStringField;
    cdsPadraoidEmbarque: TIntegerField;
    cdsPadraoidCadEmbarque: TIntegerField;
    DBEidEmbarque: TCDBEdit;
    CLookUp1: TCLookUp;
    LookDescarga: TCLookUp;
    DBEidCadEmbarque: TCDBEdit;
    CLabel27: TCLabel;
    DBCKRomAConfirmar: TCDBCheckBox;
    cdsPadraoRomAConfirmar: TStringField;
    cdsPadraomostraNegativo: TStringField;
    DBCKmostraNegativo: TCDBCheckBox;
    cdsPadraoembarqueEfetivo: TStringField;
    DBCKembarqueEfetivo: TCDBCheckBox;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsRelatorioAfterInsert(DataSet: TDataSet);
    procedure DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidEmbarqueKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidContratoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelContratoEmbarque: TFrmRelContratoEmbarque;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal, uFrmPesClienteFiscal,
  uFrmPesContratoCompra;

{$R *.dfm}

procedure TFrmRelContratoEmbarque.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status : string;
begin
//  inherited;

  status := cdsPadraostatus.AsString; //DBRGstContrato.Items[DBRGstContrato.ItemIndex];
  sql := 'EXEC spRelContratoEmbarque ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidFornecedor, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidContrato, 3) + ', '
                                     + funcao.RetornaValorEField(DBEdtContratoIni, 3) + ', '
                                     + funcao.RetornaValorEField(DBEdtContratoFim, 3) + ', '
                                     + funcao.RetornaValorEField(DBRGstContrato, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKmostrarZero, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKRomAConfirmar, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidEmbarque, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadEmbarque, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKmostraNegativo, 3) + ', '
                                     + funcao.RetornaValorEField(DBCKembarqueEfetivo, 3);


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

  (frxRel.FindComponent('MDESC_PRODUTOR') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTOR') as TfrxMemoview).Text := trim(LookFornecedor.Caption);

  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).Text := trim(LookProduto.Caption);

  (frxRel.FindComponent('MDESC_EMBARQUE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_EMBARQUE') as TfrxMemoview).Text := trim(LookDescarga.Caption);

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
  (frxRel.FindComponent('MEFETIVADO') as TfrxMemoview).clear;

  if DBCKmostrarZero.Checked then
    (frxRel.FindComponent('MZERADO') as TfrxMemoview).Text := 'X';

  if DBCKmostraNegativo.Checked then
    (frxRel.FindComponent('MNEGATIVO') as TfrxMemoview).Text := 'X';

  if DBCKembarqueEfetivo.Checked then
    (frxRel.FindComponent('MEFETIVADO') as TfrxMemoview).Text := 'X';

  case DBRGstContrato.ItemIndex of
  0 : (frxRel.FindComponent('MATIVO') as TfrxMemoview).Text := 'X';
  1 : (frxRel.FindComponent('MCANCELADO') as TfrxMemoview).Text := 'X';
  2 : (frxRel.FindComponent('MENCERRADO') as TfrxMemoview).Text := 'X';
  3 : (frxRel.FindComponent('MTODOS') as TfrxMemoview).Text := 'X';
  end;

  frxRel.ShowReport;

end;

procedure TFrmRelContratoEmbarque.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('status').AsString := 'TODOS';
  DataSet.FieldByName('RomAConfirmar').AsString := 'S';
  cdsPadraomostrarZero.AsString := 'N';
  cdsPadraomostraNegativo.AsString := 'S';
  cdsPadraoembarqueEfetivo.AsString := 'N';
end;

procedure TFrmRelContratoEmbarque.cdsRelatorioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('mostrarZero').AsString := 'S';
end;

procedure TFrmRelContratoEmbarque.DBEidContratoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoCompra, FrmPesContratoCompra);
    FrmPesContratoCompra.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoCompra.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    if trim(DBEidFornecedor.Text) <> '' then
      FrmPesContratoCompra.idFornecedor := StrToInt(DBEidFornecedor.Text);
    if trim(DBEidCadFornecedor.Text) <> '' then
      FrmPesContratoCompra.idCadFornecedor := StrToInt(DBEidCadFornecedor.Text);
    FrmPesContratoCompra.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoCompra.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idFornecedor').Value;
        FieldByName('idCadFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadFornecedor').Value;
        FieldByName('idContrato').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').Value;
        DBEidContrato.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmRelContratoEmbarque.DBEidEmbarqueKeyDown(Sender: TObject;
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

procedure TFrmRelContratoEmbarque.DBEidEmbarqueKeyPress(Sender: TObject;
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

procedure TFrmRelContratoEmbarque.DBEidFornecedorKeyDown(Sender: TObject;
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
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmRelContratoEmbarque.DBEidFornecedorKeyPress(Sender: TObject;
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
      cdsPadrao.FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmRelContratoEmbarque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoEmbarque := nil;
end;

procedure TFrmRelContratoEmbarque.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoEmbarque.fr3';
  par := 0;
  Height := 340;
  Width :=  540;
end;

procedure TFrmRelContratoEmbarque.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
