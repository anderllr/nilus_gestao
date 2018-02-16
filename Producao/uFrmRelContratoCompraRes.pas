unit uFrmRelContratoCompraRes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, uFrmPadraoRelEmpFiscal, System.Actions, CDBCheckBox,
  System.ImageList;

type
  TFrmRelContratoCompraRes = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    FindContrato: TCFind;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoRomAConfirmar: TStringField;
    CGroupBox4: TCGroupBox;
    CLabel12: TCLabel;
    lblCliFor: TCLabel;
    DBEidContratoCompra: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLookUp3: TCLookUp;
    CLookUp2: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    DBCKRomAConfirmar: TCDBCheckBox;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TSmallintField;
    cdsPadraoidContratoCompra: TStringField;
    frxDBRelResumo: TfrxDBDataset;
    dspRelResumo: TDataSetProvider;
    cdsRelResumo: TClientDataSet;
    cdsRelResumonrTitulo: TStringField;
    cdsRelResumoidParcela: TSmallintField;
    cdsRelResumodtMovimento: TSQLTimeStampField;
    cdsRelResumovlMovimento: TFMTBCDField;
    cdsRelResumovlAcrescimo: TFMTBCDField;
    cdsRelResumovlDesconto: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelContratoCompraRes: TFrmRelContratoCompraRes;

implementation

uses uDmPadrao, uDmFind, uFrmPrincipal, uFuncao,
  uFrmPesContratoCompra, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmRelContratoCompraRes.actGerarExecute(Sender: TObject);
var
  sql, msg, caminho_rel : String;
begin
//  inherited;
  if Trim(DBEidContratoCompra.Text) = '' then
    msg := 'O Numero do Contrato Tem que ser Informado!';

  if (Trim(DBEidFornecedor.Text) = '') and (Trim(DBEidCadFornecedor.Text) = '') then
    msg := msg + #13 + 'O Fornecedor Tem que ser Informado!';

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
  cdsRelatorio.CommandText := 'EXEC spRelContratoResumo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidContratoCompra, 3) + ', ' +
                                                            QuotedStr('C') + ', ' +
                                                            funcao.RetornaValorEField(DBCKRomAConfirmar, 3);
  cdsRelatorio.Active := True;

  //Agora executa o rodapé financeiro
  cdsRelResumo.Active := False;
  cdsRelResumo.CommandText := 'EXEC spContratoFinanceiro ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidContratoCompra, 3) + ', ' +
                                                            QuotedStr('C');
  cdsRelResumo.Active := True;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;

  frxRel.LoadFromFile(caminho_rel);

  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).Text := 'RESUMO DE CONTRATO' + #13 + '(COMPRA)';

  (frxRel.FindComponent('MEMCLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MEMCLIENTE') as TfrxMemoview).Text := 'FORNEC.:';

  (frxRel.FindComponent('MEMEMBARQUE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MEMEMBARQUE') as TfrxMemoview).Text := 'EMBARQUE :';

  (frxRel.FindComponent('MTITRESUMO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MTITRESUMO') as TfrxMemoview).Text := 'RESUMO FINANCEIRO - (PAGAMENTOS)';

  (frxRel.FindComponent('MTOTALRESUMO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MTOTALRESUMO') as TfrxMemoview).Text := 'TOTAL PAGO :';

//  (frxRel.FindComponent('MEMBARCADO') as TfrxMemoview).clear;
//  (frxRel.FindComponent('MEMBARCADO') as TfrxMemoview).Text := 'EMBARC.';

//  (frxRel.FindComponent('MVLNFEMB') as TfrxMemoview).clear;
//  (frxRel.FindComponent('MVLNFEMB') as TfrxMemoview).Text := 'VALOR EMBARCADO :';

  (frxRel.FindComponent('MVLEMBARCADO') as TfrxMemoview).Visible := true;
  (frxRel.FindComponent('MVLEMB') as TfrxMemoview).Visible := true;
  (frxRel.FindComponent('MVLNF') as TfrxMemoview).Visible := false;
  (frxRel.FindComponent('MVLNFT') as TfrxMemoview).Visible := false;

  frxRel.ShowReport;
end;

procedure TFrmRelContratoCompraRes.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoRomAConfirmar.AsString := 'S';
end;

procedure TFrmRelContratoCompraRes.DBEidContratoCompraKeyDown(Sender: TObject;
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

procedure TFrmRelContratoCompraRes.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmRelContratoCompraRes.DBEidFornecedorKeyDown(Sender: TObject;
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

procedure TFrmRelContratoCompraRes.DBEidFornecedorKeyPress(Sender: TObject;
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

procedure TFrmRelContratoCompraRes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoCompraRes := nil;
end;

procedure TFrmRelContratoCompraRes.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoResumoCompra.fr3';
  par := 0;
  foco := DBEidFornecedor;
end;

procedure TFrmRelContratoCompraRes.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  Height := 300;
  Width := 717;
end;

procedure TFrmRelContratoCompraRes.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
