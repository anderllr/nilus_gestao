unit uFrmTransfContratoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions;

type
  TFrmTransfContratoVenda = class(TFrmPadraoPesqEmpFiscal)
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
    lblCliFor: TCLabel;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    CLabel12: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidContratoVenda: TStringField;
    cdsPadraoidClienteDes: TIntegerField;
    cdsPadraoidContratoVendaDes: TStringField;
    BtnConfirmar: TCBitBtn;
    DBEidContratoVendaDes: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    CLookUp3: TCLookUp;
    CLabel4: TCLabel;
    CLookUp4: TCLookUp;
    DBEidClienteDes: TCDBEdit;
    CLabel5: TCLabel;
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
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoVendaDesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure BtnPesquisar2Click(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    qtSel : integer;
    FOriginalOptions : TDBGridOptions;
    vlAnterior : string;
  public
    { Public declarations }
  end;

var
  FrmTransfContratoVenda: TFrmTransfContratoVenda;

implementation

uses uFuncao, uFrmPrincipal, uDmFind, uDmPadrao, uRecError,
  uFrmPesContratoVenda;

{$R *.dfm}

procedure TFrmTransfContratoVenda.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  if (trim(DBEidCliente.Text) = '') or (trim(DBEidContratoVenda.Text) = '') then
  begin
    messagedlg('O Contrato e o cliente devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelContratoResumo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCliente, 3) + ', 1, ' + //idCadAdicional 1 para cliente
                                       funcao.RetornaValorEField(DBEidContratoVenda, 3) + ', ' +
                                       QuotedStr('V') + ', ' +  QuotedStr('S');
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  qtSel := 0;
  BtnConfirmar.Enabled := false;
  inherited;
end;

procedure TFrmTransfContratoVenda.BtnConfirmarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidCliente.Text) = '') or (trim(DBEidContratoVenda.Text) = '') then
  begin
    messagedlg('O Contrato e o cliente de Origem devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEidClienteDes.Text) = '') or (trim(DBEidContratoVendaDes.Text) = '') then
  begin
    messagedlg('O Contrato e o cliente de destino devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEidClienteDes.Text) = trim(DBEidCliente.Text)) and (trim(DBEidContratoVendaDes.Text) = trim(DBEidContratoVenda.Text)) then
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
      sql := 'UPDATE Romaneio SET idCliente = ' + funcao.RetornaValorEField(DBEidClienteDes, 3) + ', ' +
             'idContratoVenda = ' + funcao.RetornaValorEField(DBEidContratoVendaDes, 3) +
             ' WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ' AND idRomaneio = ' + cdsGrididRomaneio.AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    cdsGrid.Next;
  end;

  //executa novamente as consultas
  actPesquisar.Execute;
  BtnPesquisar2.Click;

  messagedlg('Transferência confirmada com sucesso!', mtinformation, [mbok], 0);
  DBEidCliente.SetFocus;
end;

procedure TFrmTransfContratoVenda.BtnNenhumClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('N');
  qtSel := 0;
  BtnConfirmar.Enabled := qtSel > 0;

end;

procedure TFrmTransfContratoVenda.BtnPesquisar2Click(Sender: TObject);
var
  sql : string;
begin
  if (trim(DBEidClienteDes.Text) = '') or (trim(DBEidContratoVendaDes.Text) = '') then
  begin
    messagedlg('O Contrato e o cliente devem ser informados!', mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEidClienteDes.Text) = trim(DBEidCliente.Text)) and (trim(DBEidContratoVendaDes.Text) = trim(DBEidContratoVenda.Text)) then
  begin
    messagedlg('O Contrato deve ser diferente!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelContratoResumo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidClienteDes, 3) + ', 1, ' + //idCadAdicional 1 para cliente
                                       funcao.RetornaValorEField(DBEidContratoVendaDes, 3) + ', ' +
                                       QuotedStr('V') + ', ' +  QuotedStr('S');
  cdsGrid2.Active := false;
  cdsGrid2.CommandText := sql;
  cdsGrid2.Active := true;

end;

procedure TFrmTransfContratoVenda.BtnTodosClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('S');
  qtSel := cdsGrid.RecordCount;
  BtnConfirmar.Enabled := qtSel > 0;
end;

procedure TFrmTransfContratoVenda.cdsGridqtRecebidaValidate(Sender: TField);
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

procedure TFrmTransfContratoVenda.DBEidContratoVendaDesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadraoidClienteDes.AsInteger;
    //desabilita os campos de empresa para não mudar
    funcao.SomenteLeitura([FrmPesContratoVenda.DBEidEmpresa, FrmPesContratoVenda.DBEidCadEmpresa, FrmPesContratoVenda.DBCKconsolidaemp,
                           FrmPesContratoVenda.DBCKconsolidafilial, FrmPesContratoVenda.DBEidCliente], true);

    FrmPesContratoVenda.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idClienteDes').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idContratoVendaDes').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        DBEidContratoVendaDes.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmTransfContratoVenda.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadraoidCliente.AsInteger;
    //desabilita os campos de empresa para não mudar
    funcao.SomenteLeitura([FrmPesContratoVenda.DBEidEmpresa, FrmPesContratoVenda.DBEidCadEmpresa, FrmPesContratoVenda.DBCKconsolidaemp,
                           FrmPesContratoVenda.DBCKconsolidafilial, FrmPesContratoVenda.DBEidCliente], true);

    FrmPesContratoVenda.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idCliente').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idContratoVenda').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        DBEidContratoVenda.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmTransfContratoVenda.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsEmpresaidEmpresa.AsString;
end;

procedure TFrmTransfContratoVenda.DBEidEmpresaExit(Sender: TObject);
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

procedure TFrmTransfContratoVenda.DBGridCellClick(Column: TColumn);
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

procedure TFrmTransfContratoVenda.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid.SelectedIndex in [0, 11]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmTransfContratoVenda.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmTransfContratoVenda.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmTransfContratoVenda.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TFrmTransfContratoVenda.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if cdsGrid.State in [dsInsert, dsEdit] then
      cdsGrid.Post;
  end;
end;

procedure TFrmTransfContratoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmTransfContratoVenda := nil;
end;

procedure TFrmTransfContratoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;

end;

procedure TFrmTransfContratoVenda.FormShow(Sender: TObject);
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

  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Append;

  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmTransfContratoVenda.MarcaGrid(marca: string);
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
