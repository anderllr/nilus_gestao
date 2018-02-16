unit uFrmPesRecepcaoNFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions;

type
  TFrmPesRecepcaoNFE = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanRomaneio: TCPanelGradient;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    cdsGrididPedido: TIntegerField;
    cdsGriddtPedido: TDateField;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGridqtProduto: TFloatField;
    cdsGridqtSaldo: TFloatField;
    Bevel5: TBevel;
    cdsGridqtRecebida: TFloatField;
    cdsGridsel: TStringField;
    cdsGrididMaquina: TIntegerField;
    cdsGriddescMaquina: TStringField;
    cdsGridvlProduto: TCurrencyField;
    DBEqtRecebida: TCDBEdit;
    cdsGrididPedidoProd: TIntegerField;
    PanConfirmacao: TCPanelGradient;
    BtnConfirmar: TCBitBtn;
    BtnNenhum: TCBitBtn;
    BtnTodos: TCBitBtn;
    CBitBtn1: TCBitBtn;
    cdsGrididRecepcao: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridColEnter(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure BtnTodosClick(Sender: TObject);
    procedure MarcaGrid(marca: string);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure GravaProdutos;
  private
    { Private declarations }
    qtSel : integer;
    FOriginalOptions : TDBGridOptions;
    vlAnterior, sqlRec : string;
  public
    { Public declarations }
    idEmpresa, idForn : integer;
    idCadEmpresa : integer;
  end;

var
  FrmPesRecepcaoNFE: TFrmPesRecepcaoNFE;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind, uFrmNFE, uDmPadrao;

{$R *.dfm}

procedure TFrmPesRecepcaoNFE.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  cdsGrid.EmptyDataSet;
  if trim(DBEidFornecedor.Text) = '' then
  begin
    messagedlg('Você precisa informar o fornecedor!', mtwarning, [mbok], 0);
    exit;
  end;
  sql := 'SELECT p.idEmpresa, p.idCadEmpresa, p.idPedidoCompra, p.dtPedido, pp.idProduto, pp.idMaquina, ' +
         ' prod.descProduto, pp.vlProduto, pp.idPedidoProd, pp.qtPedida, (pp.qtPedida-pp.qtAtendida) qtSaldo, ' +
         ' rec.qtRecepcao, rec.idRecepcao FROM PedidoCompra p INNER JOIN PedidoCompraProd pp ON p.idEmpresa = pp.idEmpresa ' +
         ' AND p.idCadEmpresa = pp.idCadEmpresa AND p.idPedidoCompra = pp.idPedidoCompra INNER JOIN Produto prod ' +
         ' ON pp.idProduto = prod.idProduto INNER JOIN PedidoCompraRec rec ON pp.idEmpresa = rec.idEmpresa ' +
         ' AND pp.idCadEmpresa = rec.idCadEmpresa AND pp.idPedidoCompra = rec.idPedidoCompra ' +
         ' AND pp.idPedidoProd = rec.idPedidoProd WHERE rec.idDocSerie IS NULL AND rec.idNfe IS NULL ';

  sql := sql + ' AND p.idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND p.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if (trim(DBEidFornecedor.Text) <> '') then
    sql := sql + ' AND p.idFornecedor = ' + DBEidFornecedor.Text;
  //  showmessage(sql);
  if cdsGrid.State in [dsInsert, dsEdit] then
    cdsGrid.Cancel;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    First;
    while not Eof do
    begin
      cdsGrid.Append;
      cdsGridsel.AsString := 'S';
      if FieldByName('idMaquina').AsInteger > 0 then
        cdsGrididMaquina.AsInteger := FieldByName('idMaquina').AsInteger;
      cdsGrididPedido.AsInteger := FieldByName('idPedidoCompra').AsInteger;
      cdsGriddtPedido.AsDateTime := FieldByName('dtPedido').AsDateTime;
      cdsGrididProduto.AsInteger := FieldByName('idProduto').AsInteger;
      cdsGrididPedidoProd.AsInteger := FieldByName('idPedidoProd').AsInteger;
      cdsGriddescProduto.AsString := FieldByName('descProduto').AsString;
      cdsGridqtProduto.AsFloat := FieldByName('qtPedida').AsFloat;
      cdsGridvlProduto.AsFloat := FieldByName('vlProduto').AsFloat;
      cdsGridqtSaldo.AsFloat := FieldByName('qtSaldo').AsFloat;
      cdsGridqtRecebida.AsFloat := FieldByName('qtRecepcao').AsFloat;
      cdsGrididRecepcao.AsFloat := FieldByName('idRecepcao').AsFloat;
      cdsGrid.Post;
      Next;
    end;
  end;
  qtSel := cdsGrid.RecordCount;
  inherited;
end;

procedure TFrmPesRecepcaoNFE.BtnNenhumClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('N');
  qtSel := 0;
end;

procedure TFrmPesRecepcaoNFE.BtnConfirmarClick(Sender: TObject);
var
  msg, obs, sql, sqlPed, sqlSta, pedidos : string;
begin
  inherited;
  close;
  msg := '';
  if qtSel <= 0 then
    msg := 'Nenhum produto selecionado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  GravaProdutos;
  cdsGrid.First;
  obs := 'Pedido(s): ';
  sql := '';
  sqlPed := '';
  sqlSta := '';
  sqlRec := '';
  pedidos := '';
  while not cdsGrid.Eof do
  begin
    if (cdsGridsel.AsString = 'S') and (cdsGridqtRecebida.AsFloat > 0) then
    begin
      sqlRec := sqlRec + 'UPDATE PedidoCompraRec SET idDocSerie = ' + QuotedStr(frmNfe.DBEidDocSerie.Text) +
                          ', idNfE = ' + frmNfe.DBEidNfE.Text + ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                          ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idPedidoCompra =  ' +
                           cdsGrididPedido.AsString + ' AND idPedidoProd = ' + cdsGrididPedidoProd.AsString +
                           ' AND idRecepcao = ' + cdsGrididRecepcao.AsString + ';';

      if pos(cdsGrididPedido.AsString, pedidos) <= 0  then
        if trim(pedidos) = '' then
          pedidos := cdsGrididPedido.AsString
        else
          pedidos := pedidos + ',' + cdsGrididPedido.AsString;

    end; //fim da verificação seleção e quantidade
    cdsGrid.Next;
  end;  //fim do laço
  frmNfE.sqlRec := sqlRec;
  close;
end;

procedure TFrmPesRecepcaoNFE.BtnTodosClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('S');
  qtSel := cdsGrid.RecordCount;
end;

procedure TFrmPesRecepcaoNFE.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidEmpresa.Text;
end;

procedure TFrmPesRecepcaoNFE.DBGridCellClick(Column: TColumn);
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
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    if Column.Index <> 9 then
      Self.DBGrid.Options := Self.FOriginalOptions;

end;

procedure TFrmPesRecepcaoNFE.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid.SelectedIndex in [0,9]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;


end;

procedure TFrmPesRecepcaoNFE.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmPesRecepcaoNFE.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmPesRecepcaoNFE.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TFrmPesRecepcaoNFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesRecepcaoNFE := nil;
end;

procedure TFrmPesRecepcaoNFE.FormShow(Sender: TObject);
var
  r : TRect;
begin
  inherited;
  cdsGrid.CreateDataSet;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  if idForn > 0 then
  begin
    cdsPadrao.FieldByName('idFornecedor').AsInteger := idForn;
    actPesquisar.Execute;
  end;
  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 10;
  Top := r.top + 10;

  Self.FOriginalOptions := Self.DBGrid.Options;

end;

procedure TFrmPesRecepcaoNFE.GravaProdutos;
var
  msg, obs, sql, sqlPed, sqlSta : string;
begin
  inherited;
  msg := '';
  if qtSel <= 0 then
    msg := 'Nenhum produto selecionado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  if not Assigned(FrmNfE) then
    Application.CreateForm(TFrmNfE, FrmNfE);

  FrmNfE.actNovo.Execute;
  if not (FrmNfE.cdsPadrao.State in [dsInsert, dsEdit]) then
    FrmNfE.cdsPadrao.Edit;
  cdsGrid.First;
  obs := 'Pedido(s): ';
  sql := '';
  sqlPed := '';
  sqlSta := '';
  while not cdsGrid.Eof do
  begin

    if (cdsGridsel.AsString = 'S') and (cdsGridqtRecebida.AsFloat > 0) then
    begin
      if pos(cdsGrididPedido.AsString, obs) <= 0 then
      begin
        obs := obs + cdsGrididPedido.AsString + ',';
        sql := sql + 'INSERT INTO PedidoCompraNfE VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text +
           ',' + cdsGrididPedido.AsString + ',' + DBEidFornecedor.Text + ',1,' + QuotedStr(frmNfe.DBEidDocSerie.Text) +
           ',' + frmNfe.DBEidNfE.Text + ');'
      end;
      frmNfe.BtnNovoProd.Click;
      FrmNfE.cdsNfeProduto.FieldByName('idProduto').AsInteger := cdsGrididProduto.AsInteger;
      if cdsGrididMaquina.AsInteger > 0 then
        FrmNfE.cdsNfeProduto.FieldByName('idMaquina').AsInteger := cdsGrididMaquina.AsInteger;
      frmNfe.DBEidMaquinaExit(frmNfe.DBEidMaquina);
      if frmNfE.cdsNfEProduto.State = dsBrowse then  ///encontrou  só soma a quantidad
      begin
        frmNfE.cdsNfEProduto.Edit;
        frmNfE.cdsNfEProdutoqtProduto.AsFloat := frmNfE.cdsNfEProdutoqtProduto.AsFloat + cdsGridqtRecebida.AsFloat;
        frmNfE.DBEvlOutrasIcmsExit(frmNfE.DBEqtProduto);
      end
      else
        if frmNfE.cdsNfEProduto.State = dsInsert then  ///Produto novo
        begin
          frmNfE.cdsNfEProdutoqtProduto.AsFloat := frmNfE.cdsNfEProdutoqtProduto.AsFloat + cdsGridqtRecebida.AsFloat;
          frmNfE.DBEvlOutrasIcmsExit(frmNfE.DBEqtProduto);
          FrmNfE.cdsNfEProdutovlBruto.AsFloat := cdsGridvlProduto.AsFloat;
          FrmNfE.cdsNfEProdutoprDesconto.AsFloat := 0;
          FrmNfE.cdsNfEProdutovlDesconto.AsFloat := 0;
          FrmNfE.cdsNfEProdutovlLiquido.AsFloat := cdsGridvlProduto.AsFloat;
          frmNfE.DBEvlOutrasIcmsExit(frmNfE.DBEvlLiquido);
        end;
      frmNfE.cdsNfEProdutovlTotal.AsFloat := FrmNfE.cdsNfEProdutovlLiquido.AsFloat*frmNfE.cdsNfEProdutoqtProduto.AsFloat;
      frmNfE.cdsNfEProdutovlOutrasIcms.AsFloat := frmNfE.cdsNfEProdutovlTotal.AsFloat;
      frmNfE.DBEvlOutrasIcmsExit(frmNfE.DBEvlOutrasIcms);
      frmNfE.BtnSalvarProd.Click;

    end; //fim da verificação seleção e quantidade
    cdsGrid.Next;
  end;  //fim do laço
  frmNfE.sql := sql;
  frmNfE.sqlPed := sqlPed;
  frmNfE.sqlSta := sqlSta;
end;

procedure TFrmPesRecepcaoNFE.MarcaGrid(marca: string);
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
