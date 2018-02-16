unit uFrmRelResumoDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, uFrmPadraoRelEmpFiscal, System.Actions, CDBCheckBox, CDBRadioGroup,
  System.ImageList;

type
  TFrmRelResumoDesconto = class(TFrmPadraoRelEmpresa)
    CGroupBox4: TCGroupBox;
    CLabel12: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    frxRel: TfrxReport;
    cdsPadraoidContratoVenda: TStringField;
    FindContrato: TCFind;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    LookCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    lblCliFor: TCLabel;
    cdsPadraoRomAConfirmar: TStringField;
    DBCKRomAConfirmar: TCDBCheckBox;
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEidContratoCompra: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    CLookUp3: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    LookCadFornecedor: TCLookUp;
    LookFornecedor: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TIntegerField;
    cdsPadraoidContratoCompra: TStringField;
    DBEdtContratoIni: TCDBEdit;
    DBEdtContratoFim: TCDBEdit;
    CLabel6: TCLabel;
    CLabel4: TCLabel;
    LookCadEmbarque: TCLookUp;
    LookEmbarque: TCLookUp;
    DBEidCadEmbarque: TCDBEdit;
    DBEidEmbarque: TCDBEdit;
    CLabel27: TCLabel;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel5: TCLabel;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    CLabel7: TCLabel;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidEmbarque: TIntegerField;
    cdsPadraoidCadEmbarque: TSmallintField;
    cdsPadraodtContratoIni: TDateTimeField;
    cdsPadraodtContratoFim: TDateTimeField;
    lookCidade: TCLookUp;
    DBRGaceitaClassifDestino: TCDBRadioGroup;
    cdsPadraoaceitaClassifDestino: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidCadEmbarqueKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelResumoDesconto: TFrmRelResumoDesconto;

implementation

uses uDmPadrao, uDmFind, uFrmPrincipal, uFrmPesContratoVenda, uFuncao,
  uFrmPesClienteFiscal, uFrmPesContratoCompra;

{$R *.dfm}

procedure TFrmRelResumoDesconto.actGerarExecute(Sender: TObject);
var
  sql, msg, caminho_rel : String;
begin
//  inherited;

  if Trim(DBEidProduto.Text) = '' then
    msg := msg + #13 + 'O Produto tem que ser Informado!';

  if Trim(DBEidSafra.Text) = '' then
    msg := msg + #13 + 'A safra tem que ser Informada!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidContratoVenda.SetFocus;
    exit;
  end;

  //Executa a Procedure de Cabeçalho
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  //Executa Prodedure de Busca Principal
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := 'EXEC spRelResumoDesconto ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCliente, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidContratoVenda, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidContratoCompra, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidEmbarque, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidCadEmbarque, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEdtContratoIni, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEdtContratoFim, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBCKRomAConfirmar, 3) + ', ' +
                                                            funcao.RetornaValorEField(DBRGaceitaClassifDestino, 3);

  cdsRelatorio.Active := True;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;

  frxRel.LoadFromFile(caminho_rel);

//  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).clear;
//  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).Text := 'RESUMO DE CONTRATO' + #13 + '(VENDA)';

  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Text := Trim(lookCliente.Caption) + ' - ' + Trim(lookCidade.Caption);

  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Text := DBEidContratoVenda.Text;

  (frxRel.FindComponent('MCONTRATOCOMPRA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONTRATOCOMPRA') as TfrxMemoview).Text := DBEidContratoCompra.Text;

  (frxRel.FindComponent('MDESC_FORNECEDOR') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_FORNECEDOR') as TfrxMemoview).Text := Trim(lookFornecedor.Caption) + ' - ' + Trim(lookCadFornecedor.Caption);

  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).Text := trim(lookProduto.Caption);

  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).Text := trim(lookSafra.Caption);

  (frxRel.FindComponent('MEMROM') as TfrxMemoview).clear;
  if DBCKRomAConfirmar.Checked then
    (frxRel.FindComponent('MEMROM') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MDESC_EMBARQUE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_EMBARQUE') as TfrxMemoview).Text := trim(LookEmbarque.Caption) + '-' + trim(LookCadEmbarque.Caption);

  (frxRel.FindComponent('MDT_INI') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INI') as TfrxMemoview).Text := DBEdtContratoIni.Text;

  (frxRel.FindComponent('MDT_FIM') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FIM') as TfrxMemoview).Text := DBEdtContratoFim.Text;

  (frxRel.FindComponent('MCLASSIF_DESTINO') as TfrxMemoview).clear;

  if cdsPadraoaceitaClassifDestino.AsString = 'S' then
    (frxRel.FindComponent('MCLASSIF_DESTINO') as TfrxMemoview).Text := 'MARCADO'
  else
    if cdsPadraoaceitaClassifDestino.AsString = 'N' then
      (frxRel.FindComponent('MCLASSIF_DESTINO') as TfrxMemoview).Text := 'NÃO MARCADO'
    else
      if cdsPadraoaceitaClassifDestino.AsString = 'T' then
        (frxRel.FindComponent('MCLASSIF_DESTINO') as TfrxMemoview).Text := 'TODOS';

  frxRel.ShowReport;
end;

procedure TFrmRelResumoDesconto.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoRomAConfirmar.AsString := 'S';
  cdsPadraoaceitaClassifDestino.AsString := 'T';
end;

procedure TFrmRelResumoDesconto.DBEidCadEmbarqueKeyPress(Sender: TObject;
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

procedure TFrmRelResumoDesconto.DBEidContratoCompraKeyDown(Sender: TObject;
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

procedure TFrmRelResumoDesconto.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadraoidCliente.AsInteger;
    FrmPesContratoVenda.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idCadEmpresa').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCadEmpresa').Value;
        FieldByName('idCliente').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idContratoVenda').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        DBEidContratoVenda.SetFocus;
      end;
    end;
  end;

end;

procedure TFrmRelResumoDesconto.DBEidEmbarqueKeyDown(Sender: TObject;
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

procedure TFrmRelResumoDesconto.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmRelResumoDesconto.DBEidFornecedorKeyDown(Sender: TObject;
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

procedure TFrmRelResumoDesconto.DBEidFornecedorKeyPress(Sender: TObject;
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

procedure TFrmRelResumoDesconto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelResumoDesconto := nil;
end;

procedure TFrmRelResumoDesconto.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelResumoDesconto.fr3';
  par := 0;
  foco := DBEidCliente;
end;

procedure TFrmRelResumoDesconto.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  Height := 440;
  Width := 717;
end;

procedure TFrmRelResumoDesconto.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
