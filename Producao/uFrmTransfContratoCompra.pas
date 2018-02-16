unit uFrmTransfContratoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions;

type
  TFrmTransfContratoCompra = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel5: TBevel;
    BtnTodos: TCBitBtn;
    BtnNenhum: TCBitBtn;
    PanConfirmacao: TCPanelGradient;
    CBitBtn1: TCBitBtn;
    CGroupBox1: TCGroupBox;
    CPanelGradient1: TCPanelGradient;
    CPanelGradient2: TCPanelGradient;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    BtnConfirmar: TCBitBtn;
    BtnPesquisar2: TCBitBtn;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididCadGeral: TIntegerField;
    cdsGrididCadAdicional: TSmallintField;
    cdsGrididContrato: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGriddescContratado: TStringField;
    cdsGridvlSaca: TFMTBCDField;
    cdsGridvlProduto: TFMTBCDField;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGrididEmbarque: TIntegerField;
    cdsGrididCadEmbarque: TSmallintField;
    cdsGriddescCadEmbarque: TStringField;
    cdsGriddescEntrega: TStringField;
    cdsGridvlContrato: TFMTBCDField;
    cdsGrididComissionado: TIntegerField;
    cdsGriddescComissionado: TStringField;
    cdsGrididRomaneio: TIntegerField;
    cdsGrididNf: TIntegerField;
    cdsGriddtRomaneio: TSQLTimeStampField;
    cdsGridplaca: TStringField;
    cdsGridqtPesoSaida: TIntegerField;
    cdsGridqtPesoDesconto: TIntegerField;
    cdsGridqtPesoLiquido: TIntegerField;
    cdsGriddtEntrega: TSQLTimeStampField;
    cdsGriddtPagamento: TSQLTimeStampField;
    cdsGridvlNf: TFMTBCDField;
    cdsGridvlTitulo: TFMTBCDField;
    cdsGridqtContrato: TIntegerField;
    cdsGridqtAcumulado: TIntegerField;
    cdsGridqtEmbarcado: TIntegerField;
    cdsGridqtEntregue: TIntegerField;
    cdsGridqtAEntregar: TIntegerField;
    cdsGridvlEmbarcado: TFMTBCDField;
    cdsGridvlEntregue: TFMTBCDField;
    cdsGrididSafra: TIntegerField;
    cdsGriddescSafra: TStringField;
    cdsGridqtPesoOri: TIntegerField;
    cdsGridqtDescontoOri: TIntegerField;
    CPanelGradient3: TCPanelGradient;
    DBEqtContrato: TCDBEdit;
    CLabel10: TCLabel;
    CLabel6: TCLabel;
    DBEqtSomaSaida: TCDBEdit;
    CLabel7: TCLabel;
    DBEqtSomaEntrega: TCDBEdit;
    cdsGridqtSomaSaida: TAggregateField;
    cdsGridqtSomaEntrega: TAggregateField;
    cdsGridsel: TStringField;
    CPanelGradient4: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    CLabel11: TCLabel;
    DBEqtContrato2: TCDBEdit;
    DBEqtSomaSaida2: TCDBEdit;
    DBEqtSomaEntrega2: TCDBEdit;
    DBGrid2: TCDBGrid;
    cdsGrid2: TClientDataSet;
    cdsGrid2qtSomaSaida: TAggregateField;
    cdsGrid2qtSomaEntrega: TAggregateField;
    dsGrid2: TDataSource;
    dspGrid2: TDataSetProvider;
    sdsGrid2: TSQLDataSet;
    cdsGrid2idEmpresa: TIntegerField;
    cdsGrid2idCadEmpresa: TSmallintField;
    cdsGrid2idCadGeral: TIntegerField;
    cdsGrid2idCadAdicional: TSmallintField;
    cdsGrid2idContrato: TStringField;
    cdsGrid2dtEmissao: TSQLTimeStampField;
    cdsGrid2descContratado: TStringField;
    cdsGrid2vlSaca: TFMTBCDField;
    cdsGrid2vlProduto: TFMTBCDField;
    cdsGrid2idProduto: TIntegerField;
    cdsGrid2descProduto: TStringField;
    cdsGrid2idEmbarque: TIntegerField;
    cdsGrid2idCadEmbarque: TSmallintField;
    cdsGrid2descCadEmbarque: TStringField;
    cdsGrid2descEntrega: TStringField;
    cdsGrid2vlContrato: TFMTBCDField;
    cdsGrid2idComissionado: TIntegerField;
    cdsGrid2descComissionado: TStringField;
    cdsGrid2idRomaneio: TIntegerField;
    cdsGrid2idNf: TIntegerField;
    cdsGrid2dtRomaneio: TSQLTimeStampField;
    cdsGrid2placa: TStringField;
    cdsGrid2qtPesoSaida: TIntegerField;
    cdsGrid2qtPesoDesconto: TIntegerField;
    cdsGrid2qtPesoLiquido: TIntegerField;
    cdsGrid2dtEntrega: TSQLTimeStampField;
    cdsGrid2dtPagamento: TSQLTimeStampField;
    cdsGrid2vlNf: TFMTBCDField;
    cdsGrid2vlTitulo: TFMTBCDField;
    cdsGrid2qtContrato: TIntegerField;
    cdsGrid2qtAcumulado: TIntegerField;
    cdsGrid2qtEmbarcado: TIntegerField;
    cdsGrid2qtEntregue: TIntegerField;
    cdsGrid2qtAEntregar: TIntegerField;
    cdsGrid2vlEmbarcado: TFMTBCDField;
    cdsGrid2vlEntregue: TFMTBCDField;
    cdsGrid2idSafra: TIntegerField;
    cdsGrid2descSafra: TStringField;
    cdsGrid2qtPesoOri: TIntegerField;
    cdsGrid2qtDescontoOri: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TStringField;
    cdsPadraoidContratoCompra: TStringField;
    cdsPadraoidFornecedorDes: TIntegerField;
    cdsPadraoidCadFornecedorDes: TIntegerField;
    cdsPadraoidContratoCompraDes: TStringField;
    DBEidContratoCompra: TCDBEdit;
    LookNrOriginal: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookEmissaoVenda: TCLookUp;
    CLabel12: TCLabel;
    CLookUp5: TCLookUp;
    CLookUp6: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    lblCliFor: TCLabel;
    CLabel4: TCLabel;
    DBEidFornecedorDes: TCDBEdit;
    DBEidCadFornecedorDes: TCDBEdit;
    CLookUp1: TCLookUp;
    CLabel5: TCLabel;
    DBEidContratoCompraDes: TCDBEdit;
    CLookUp2: TCLookUp;
    CLookUp3: TCLookUp;
    CLookUp4: TCLookUp;
    CLookUp7: TCLookUp;
    cdsGridvlTituloTotal: TFMTBCDField;
    cdsGrid2vlTituloTotal: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridColEnter(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure BtnTodosClick(Sender: TObject);
    procedure MarcaGrid(marca: string);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure cdsGridqtRecebidaValidate(Sender: TField);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure BtnPesquisar2Click(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoCompraDesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidFornecedorDesKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidFornecedorDesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    qtSel : integer;
    FOriginalOptions : TDBGridOptions;
    vlAnterior : string;
  public
    { Public declarations }
  end;

var
  FrmTransfContratoCompra: TFrmTransfContratoCompra;

implementation

uses uFuncao, uFrmPrincipal, uDmFind, uDmPadrao, uRecError,
  uFrmPesContratoVenda, uFrmPesContratoCompra, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmTransfContratoCompra.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or (trim(DBEidContratoCompra.Text) = '') then
  begin
    messagedlg('O Contrato e o fornecedor devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelContratoResumo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidContratoCompra, 3) + ', ' +
                                       QuotedStr('C') + ', ' +  QuotedStr('S');
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  qtSel := 0;
  BtnConfirmar.Enabled := false;
  inherited;
end;

procedure TFrmTransfContratoCompra.BtnConfirmarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or (trim(DBEidContratoCompra.Text) = '') then
  begin
    messagedlg('O Contrato e o Fornecedor de Origem devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEidFornecedorDes.Text) = '') or (trim(DBEidCadFornecedorDes.Text) = '')  or (trim(DBEidContratoCompraDes.Text) = '') then
  begin
    messagedlg('O Contrato e o fornecedor de destino devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEidFornecedorDes.Text) = trim(DBEidFornecedor.Text)) and (trim(DBEidContratoCompraDes.Text) = trim(DBEidContratoCompra.Text)) and
     (trim(DBEidCadFornecedorDes.Text) = trim(DBEidCadFornecedor.Text)) then
  begin
    messagedlg('O Contrato deve ser diferente!', mtwarning, [mbok], 0);
    exit;
  end;

  //vai ao início do grid
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsString = 'S' then
    begin
      sql := 'EXEC spTransfContratoCompra ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                              funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                              funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                              funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ', ' +
                                              funcao.RetornaValorEField(DBEidContratoCompra, 3) + ', ' +
                                              cdsGrididRomaneio.AsString + ', ' +
                                              funcao.RetornaValorEField(DBEidFornecedorDes, 3) + ', ' +
                                              funcao.RetornaValorEField(DBEidCadFornecedorDes, 3) + ', ' +
                                              funcao.RetornaValorEField(DBEidContratoCompraDes, 3);
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    cdsGrid.Next;
  end;

  //executa novamente as consultas
  actPesquisar.Execute;
  BtnPesquisar2.Click;

  messagedlg('Transferência confirmada com sucesso!', mtinformation, [mbok], 0);
  DBEidFornecedor.SetFocus;
end;

procedure TFrmTransfContratoCompra.BtnNenhumClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('N');
  qtSel := 0;
  BtnConfirmar.Enabled := qtSel > 0;

end;

procedure TFrmTransfContratoCompra.BtnPesquisar2Click(Sender: TObject);
var
  sql : string;
begin
  if (trim(DBEidFornecedorDes.Text) = '') or (trim(DBEidCadFornecedorDes.Text) = '') or (trim(DBEidContratoCompraDes.Text) = '') then
  begin
    messagedlg('O Contrato e o fornecedor devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEidFornecedorDes.Text) = trim(DBEidFornecedor.Text)) and (trim(DBEidCadFornecedorDes.Text) = trim(DBEidCadFornecedor.Text)) and
     (trim(DBEidContratoCompraDes.Text) = trim(DBEidContratoCompra.Text)) then
  begin
    messagedlg('O Contrato deve ser diferente!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelContratoResumo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidFornecedorDes, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadFornecedorDes, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidContratoCompraDes, 3) + ', ' +
                                       QuotedStr('C') + ', ' +  QuotedStr('S');
  cdsGrid2.Active := false;
  cdsGrid2.CommandText := sql;
  cdsGrid2.Active := true;

end;

procedure TFrmTransfContratoCompra.BtnTodosClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('S');
  qtSel := cdsGrid.RecordCount;
  BtnConfirmar.Enabled := qtSel > 0;
end;

procedure TFrmTransfContratoCompra.cdsGridqtRecebidaValidate(Sender: TField);
begin
  inherited;
{  if cdsGridqtRecebida.AsFloat > cdsGridqtSaldo.AsFloat then
  begin
    messagedlg('A quantidade recebida não pode ser maior que o saldo!', mtwarning, [mbok], 0);
    if not (cdsGrid.State in [dsInsert, dsEdit]) then
      cdsGrid.Edit;
    cdsGridqtRecebida.AsFloat := cdsGridqtSaldo.AsFloat;
    cdsGrid.Post;
  end;  }
end;

procedure TFrmTransfContratoCompra.DBEidContratoCompraDesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoCompra, FrmPesContratoCompra);
    //desabilita os campos de empresa para não mudar
    funcao.SomenteLeitura([FrmPesContratoCompra.DBEidEmpresa, FrmPesContratoCompra.DBEidCadEmpresa, FrmPesContratoCompra.DBCKconsolidaemp,
                           FrmPesContratoCompra.DBCKconsolidafilial, FrmPesContratoCompra.DBEidFornecedor, FrmPesContratoCompra.DBEidCadFornecedor], true);

    FrmPesContratoCompra.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoCompra.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    if trim(DBEidFornecedor.Text) <> '' then
      FrmPesContratoCompra.idFornecedor := StrToInt(DBEidFornecedorDes.Text);
    if trim(DBEidCadFornecedor.Text) <> '' then
      FrmPesContratoCompra.idCadFornecedor := StrToInt(DBEidCadFornecedorDes.Text);
    FrmPesContratoCompra.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoCompra.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idFornecedorDes').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idFornecedor').Value;
        FieldByName('idCadFornecedorDes').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadFornecedor').Value;
        FieldByName('idContratoCompraDes').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').Value;
        DBEidContratoCompra.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmTransfContratoCompra.DBEidContratoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoCompra, FrmPesContratoCompra);
    //desabilita os campos de empresa para não mudar
    funcao.SomenteLeitura([FrmPesContratoCompra.DBEidEmpresa, FrmPesContratoCompra.DBEidCadEmpresa, FrmPesContratoCompra.DBCKconsolidaemp,
                           FrmPesContratoCompra.DBCKconsolidafilial, FrmPesContratoCompra.DBEidFornecedor, FrmPesContratoCompra.DBEidCadFornecedor], true);

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

procedure TFrmTransfContratoCompra.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsEmpresaidEmpresa.AsString;
end;

procedure TFrmTransfContratoCompra.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if (cdsEmpresaidEmpresa.AsInteger <> cdsPadraoidEmpresa.AsInteger) or
     (cdsEmpresaidCadEmpresa.AsInteger <> cdsPadraoidCadEmpresa.AsInteger) then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;

    cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
    cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  end;
end;

procedure TFrmTransfContratoCompra.DBEidFornecedorDesKeyDown(Sender: TObject;
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
        FieldByName('idFornecedorDes').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedorDes').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedorDes') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmTransfContratoCompra.DBEidFornecedorDesKeyPress(Sender: TObject;
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
      cdsPadrao.FieldByName('idFornecedorDes').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadFornecedorDes').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmTransfContratoCompra.DBEidFornecedorKeyDown(Sender: TObject;
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

procedure TFrmTransfContratoCompra.DBEidFornecedorKeyPress(Sender: TObject;
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

procedure TFrmTransfContratoCompra.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
      Edit;
      if FieldByName('sel').AsString = 'S' then
      begin
        FieldByName('sel').AsString := 'N';
        qtSel := qtSel - 1;
      end
      else
      begin
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
      end;
      Post;
      BtnConfirmar.Enabled := qtSel > 0;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    if not (Column.Index in [11]) then
      Self.DBGrid.Options := Self.FOriginalOptions;

end;

procedure TFrmTransfContratoCompra.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid.SelectedIndex in [0, 11]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmTransfContratoCompra.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmTransfContratoCompra.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
  cor : String;
begin
  inherited;
  Cor := 'clWhite';
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

{  if (marca) and (Column.Index > 0) then
  begin
    Cor := '$00F7F7F7';
    if (trim(Cor) <> '') and (trim(Cor) <> 'clWhite') then
    begin
      DBGrid.Canvas.Brush.Color := StringToColor(Cor); // coloque aqui a cor desejada
      DBGrid.DefaultDrawDataCell(Rect, DBGrid.columns[datacol].field, State);
    end;
  end; }
//  if (Column = 1) and (ARow >= 1) then
  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
    DBGrid.Canvas.Brush.Color := StringToColor(Cor);
  end;
end;

procedure TFrmTransfContratoCompra.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TFrmTransfContratoCompra.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if cdsGrid.State in [dsInsert, dsEdit] then
      cdsGrid.Post;
  end;
end;

procedure TFrmTransfContratoCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmTransfContratoCompra := nil;
end;

procedure TFrmTransfContratoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;

end;

procedure TFrmTransfContratoCompra.FormShow(Sender: TObject);
var
  r : TRect;
begin
  inherited;
  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 10;
  Top := r.top + 10;

  BtnConfirmar.Enabled := false;
  Self.FOriginalOptions := Self.DBGrid.Options;

  Height := 560;
  Width := 960;

  //Só para habilitar as colunas
  cdsGrid2.Active := false;
  cdsGrid2.Active := true;

  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;

end;

procedure TFrmTransfContratoCompra.MarcaGrid(marca: string);
begin
  with cdsGrid do
  begin
    First;
    while not Eof do
    begin
      if not (State in [dsInsert, dsEdit]) then
        Edit;
      FieldByName('sel').AsString := marca;
      Post;
      Next;
    end;
    First;
  end;
end;

end.
