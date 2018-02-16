unit uFrmRelContratoCompraDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, uFrmPadraoRelEmpFiscal, System.Actions, CDBCheckBox,
  System.ImageList, frxExportXLSX;

type
  TFrmRelContratoCompraDet = class(TFrmPadraoRelEmpresa)
    CGroupBox4: TCGroupBox;
    CLabel12: TCLabel;
    DBEidContratoCompra: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    frxRel: TfrxReport;
    FindContrato: TCFind;
    FrxDatasetTitulos: TfrxDBDataset;
    cdsRelTitulos: TClientDataSet;
    dspRelTitulos: TDataSetProvider;
    FrxDatasetRomaneios: TfrxDBDataset;
    cdsRomaneios: TClientDataSet;
    dspRomaneios: TDataSetProvider;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TSmallintField;
    cdsPadraoidContratoCompra: TStringField;
    DBEidFornecedor: TCDBEdit;
    CLookUp3: TCLookUp;
    CLookUp2: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    lblCliFor: TCLabel;
    cdsPadraoRomAConfirmar: TStringField;
    DBCKRomAConfirmar: TCDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelContratoCompraDet: TFrmRelContratoCompraDet;

implementation

uses uDmPadrao, uDmFind, uFrmPrincipal, uFrmPesContratoVenda,
  uFrmPesClienteFiscal, uFrmPesContratoCompra, uFuncao;

{$R *.dfm}

procedure TFrmRelContratoCompraDet.actGerarExecute(Sender: TObject);
var
  sql, msg, caminho_rel : String;
begin
//  inherited;
  if Trim(DBEidContratoCompra.Text) = '' then
    msg := 'O Numero do Contrato Tem que ser Informado!';

  if (Trim(DBEidFornecedor.Text) = '') or (Trim(DBEidCadFornecedor.Text) = '') then
    msg := msg + #13 + 'O Cliente Tem que ser Informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidContratoCompra.SetFocus;
    exit;
  end;

  //Executa a Procedure de Cabeçalho
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  //Executa Prodedure de Busca Principal
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := 'EXEC spRelContratoCompraDet ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                               cdsPadraoidFornecedor.AsString + ', ' + cdsPadraoidCadFornecedor.AsString + ', ' +
                               QuotedStr(DBEidContratoCompra.Text);
  cdsRelatorio.Active := True;

  //Executa Prodedure de Busca Titulos
  cdsRelTitulos.Active := False;
  cdsRelTitulos.CommandText := 'EXEC spRelContDetCompraTit ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                cdsPadraoidFornecedor.AsString + ', ' + cdsPadraoidCadFornecedor.AsString + ', ' +
                                QuotedStr(DBEidContratoCompra.Text);
  cdsRelTitulos.Active := True;

  //Executa Prodedure de Busca Romaneios
  cdsRomaneios.Active := False;
  cdsRomaneios.CommandText := 'EXEC spRelContCompraDetRom ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                cdsPadraoidFornecedor.AsString + ', ' + cdsPadraoidCadFornecedor.AsString + ', ' +
                                QuotedStr(DBEidContratoCompra.Text) + ', ' + funcao.RetornaValorEField(DBCKRomAConfirmar, 3);
  cdsRomaneios.Active := True;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  if cdsRelTitulos.FieldByName('temMov').AsString = 'N' then
  begin
    (frxRel.FindComponent('Shape3') as TfrxShapeView).Visible := False;
    (frxRel.FindComponent('Memo73') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo74') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo69') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo56') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo55') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo57') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo58') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('MasterData2') as TfrxMasterData).Height := 0.70;
  end;
  frxRel.ShowReport;
end;

procedure TFrmRelContratoCompraDet.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoRomAConfirmar.AsString := 'S';
end;

procedure TFrmRelContratoCompraDet.DBEidContratoCompraKeyDown(Sender: TObject;
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
        FieldByName('idContratoCompra').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').Value;
        DBEidContratoCompra.SetFocus;
      end;
    end;
  end;

end;

procedure TFrmRelContratoCompraDet.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmRelContratoCompraDet.DBEidFornecedorKeyDown(Sender: TObject;
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

procedure TFrmRelContratoCompraDet.DBEidFornecedorKeyPress(Sender: TObject;
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

procedure TFrmRelContratoCompraDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoCompraDet := nil;
end;

procedure TFrmRelContratoCompraDet.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoDetCompra.fr3';
  par := 0;
  foco := DBEidFornecedor;
end;

procedure TFrmRelContratoCompraDet.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  Height := 300;
  Width := 717;
end;

procedure TFrmRelContratoCompraDet.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
