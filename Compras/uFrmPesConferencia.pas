unit uFrmPesConferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, cxNavigator, System.Actions;

type
  TFrmPesConferencia = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    FindFornecedor: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraostAtivo: TStringField;
    cdsPadraostParcial: TStringField;
    cdsPadraostTotal: TStringField;
    cdsPadraostCancelado: TStringField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididPedidoCompra: TIntegerField;
    cdsGriddtPedido: TSQLTimeStampField;
    cdsGridobsPedido: TStringField;
    cdsGridstPedido: TStringField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraopedidos: TStringField;
    PanFornecedor: TCPanelGradient;
    Bevel3: TBevel;
    DBCKstCancelado: TCDBCheckBox;
    DBCBstTotal: TCDBCheckBox;
    DBCKstParcial: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    DBEdtFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    CLookUp1: TCLookUp;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    DBCKconsolidafilial: TCDBCheckBox;
    DBEidPedidos: TcxPopupEdit;
    LblCad: TCLabel;
    CPanelGradient2: TCPanelGradient;
    CLabel1: TCLabel;
    CPanelGradient1: TCPanelGradient;
    CLabel2: TCLabel;
    BtnPesquisar: TCBitBtn;
    CGroupBox1: TCGroupBox;
    GridProdutos: TCDBGrid;
    dspPedidos: TDataSetProvider;
    sdsPedidos: TSQLQuery;
    cdsPedidos: TClientDataSet;
    cdsPedidosSELECIONADO: TStringField;
    dsPedidos: TDataSource;
    panPopupPedidos: TPanel;
    Shape8: TShape;
    Label29: TLabel;
    Label30: TLabel;
    GridFornecedores: TcxGrid;
    DBTableViewPedido: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrididPedidoCompra: TcxGridDBColumn;
    cxGriddtPedido: TcxGridDBColumn;
    cxGridvlPedido: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtnAplicar: TCBitBtn;
    BtnCancelar: TCBitBtn;
    BtnLimpar: TCBitBtn;
    cbNumero: TcxCheckBox;
    cbData: TcxCheckBox;
    cbValor: TcxCheckBox;
    cdsPedidosidPedidoCompra: TIntegerField;
    cdsPedidosdtPedido: TSQLTimeStampField;
    cdsPedidosvlPedido: TFMTBCDField;
    cdsPedidosstPedido: TStringField;
    cdsPedidosobsPedido: TStringField;
    cxGridobsPedido: TcxGridDBColumn;
    cxGridstPedido: TcxGridDBColumn;
    dsPedidoProd: TDataSource;
    cdsPedidoProd: TClientDataSet;
    dspPedidoProd: TDataSetProvider;
    sdsPedidoProd: TSQLDataSet;
    cdsPedidoProdidProduto: TIntegerField;
    cdsPedidoProddescProduto: TStringField;
    cdsPedidoProdqtPedida: TFMTBCDField;
    cdsPedidoProdqtAtendida: TFMTBCDField;
    cdsPedidoProdqtSaldo: TFMTBCDField;
    cdsPedidoProdvlProduto: TFMTBCDField;
    cdsPedidoProdidPedidoProd: TSmallintField;
    cdsPadraostEncerrado: TStringField;
    DBCKstEncerrado: TCDBCheckBox;
    cdsPedidoProdidMaquina: TIntegerField;
    cdsPedidoProddescMaquina: TStringField;
    DBEnrPedidoOriginal: TCDBEdit;
    CLabel10: TCLabel;
    cdsGridnrPedidoOriginal: TStringField;
    cdsPadraonrPedidoOriginal: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure BtnAplicarClick(Sender: TObject);
    procedure Montar_Selecao_Pedidos;
    procedure Limpar_Selecao_Pedidos;
    procedure panPopupPedidosEnter(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure DBTableViewPedidoDblClick(Sender: TObject);
    procedure DBEidPedidosPropertiesPopup(Sender: TObject);
    procedure DBTableViewPedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBTableViewPedidoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure DBEidFornecedorEnter(Sender: TObject);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure cdsGridAfterScroll(DataSet: TDataSet);
    procedure GridProdutosDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    stDestaque: TcxStyle;
    vlAnterior : string;
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idPedido : integer;
  end;

var
  FrmPesConferencia: TFrmPesConferencia;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind, uFrmHistoricoRecepcao;

{$R *.dfm}

   //*********   FORNECEDORES   ************//
procedure TFrmPesConferencia.Montar_Selecao_Pedidos;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsPedidos do
  begin
    sCodigos := TStringList.Create();
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;
    While Not(DataSet.Eof) Do
    Begin
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idPedidoCompra').AsString);
      DataSet.Next;
    End;
    //
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    //
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);
    //
    funcao.ASort(iCodigos);
    //
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    //
    DBEidPedidos.Text := funcao.SepararValores(aCodigos, ', ');
    //
    sCodigos.Free;
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; // fim do with
end;

procedure TFrmPesConferencia.panPopupPedidosEnter(Sender: TObject);
begin
  inherited;
  If Not(dsPedidos.DataSet.Active) Then
     dsPedidos.DataSet.Open;
end;

procedure TFrmPesConferencia.Limpar_Selecao_Pedidos;
Var bReg: Pointer;
begin
  with dsPedidos do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidPedidos.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;

procedure TFrmPesConferencia.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  idPedido := 0;
  status := '';
  sql := 'SELECT p.idEmpresa, p.idCadEmpresa, p.idPedidoCompra, p.dtPedido, p.obsPedido, p.stPedido, p.nrPedidoOriginal FROM PedidoCompra p WHERE 1=1';

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND p.idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND p.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if (trim(cdsPadraoidFornecedor.AsString) <> '') then
    sql := sql + ' AND p.idFornecedor = ' + cdsPadraoidFornecedor.AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND p.dtPedido >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND p.dtPedido <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);

  if trim(DBEidPedidos.Text) <> '' then
    sql := sql + ' AND p.idPedidoCompra IN (' + DBEidPedidos.Text + ')'
  else
  begin
    if cdsPadrao.FieldByName('stAtivo').AsString = 'S' then
      status := QuotedStr('ATIVO');
    if cdsPadrao.FieldByName('stParcial').AsString = 'S' then
      if trim(status) = '' then
        status := QuotedStr('PARCIAL')
      else
        status := status + ',' + QuotedStr('PARCIAL');
    if cdsPadrao.FieldByName('stTotal').AsString = 'S' then
      if trim(status) = '' then
        status := QuotedStr('TOTAL')
      else
        status := status + ',' + QuotedStr('TOTAL');
    if cdsPadrao.FieldByName('stCancelado').AsString = 'S' then
      if trim(status) = '' then
        status := QuotedStr('CANCELADO')
      else
        status := status + ',' + QuotedStr('CANCELADO');

    if cdsPadrao.FieldByName('stEncerrado').AsString = 'S' then
      if trim(status) = '' then
        status := QuotedStr('ENCERRADO')
      else
        status := status + ',' + QuotedStr('ENCERRADO');

  end;

  if trim(DBEnrPedidoOriginal.Text) <> '' then
    sql := sql + ' AND p.nrPedidoOriginal = ' + QuotedStr(DBEnrPedidoOriginal.Text);

  if trim(status) <> '' then
    sql := sql + ' AND p.stPedido IN (' + status + ')';

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  inherited;
end;

procedure TFrmPesConferencia.BtnAplicarClick(Sender: TObject);
begin
  inherited;
  DBEidPedidos.PopupWindow.Close;
  Montar_Selecao_Pedidos;
end;

procedure TFrmPesConferencia.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  DBEidPedidos.PopupWindow.Close;
end;

procedure TFrmPesConferencia.BtnLimparClick(Sender: TObject);
begin
  inherited;
  DBEidPedidos.PopupWindow.Close;
  Limpar_Selecao_Pedidos;
end;

procedure TFrmPesConferencia.cdsGridAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cdsPedidoProd.Active := false;
  if not cdsGrid.IsEmpty then
    cdsPedidoProd.CommandText := 'SELECT idPedidoProd, idProduto, descProduto, idMaquina, descMaquina, qtPedida, ' +
                 ' qtAtendida, (qtPedida-qtAtendida) qtSaldo, vlProduto FROM vPedidoCompra ' +
                 ' WHERE idEmpresa = ' + cdsGrididEmpresa.AsString + ' AND idCadEmpresa = ' +
                 cdsGrididCadEmpresa.AsString + ' AND idPedidoCompra = ' +
                 cdsGrididPedidoCompra.AsString
  else
    cdsPedidoProd.CommandText := 'SELECT idPedidoProd, idProduto, descProduto, idMaquina, descMaquina, qtPedida, qtAtendida, (qtPedida-qtAtendida) qtSaldo, vlProduto FROM vPedidoCompra WHERE 1=2';
  cdsPedidoProd.Active := true;
end;

procedure TFrmPesConferencia.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';

  Dataset.FieldByName('stAtivo').AsString := 'S';
  Dataset.FieldByName('stParcial').AsString := 'S';
  Dataset.FieldByName('stTotal').AsString := 'S';
  Dataset.FieldByName('stCancelado').AsString := 'S';
  Dataset.FieldByName('stEncerrado').AsString := 'S';
end;

procedure TFrmPesConferencia.DBEidFornecedorEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPadraoidFornecedor.AsString;
end;

procedure TFrmPesConferencia.DBEidFornecedorExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if vlAnterior <> cdsPadraoidFornecedor.AsString then
  begin
    cdsPedidos.Active := false;
    sql := 'SELECT idPedidoCompra, dtPedido, vlPedido, stPedido, obsPedido FROM PedidoCompra WHERE 1=1';
    if trim(cdsPadraoidFornecedor.AsString) <> '' then
    begin
      if not DBCKconsolidaemp.Checked then
        sql := sql + ' AND idEmpresa = ' + cdsEmpresaidEmpresa.AsString;

      if not DBCKconsolidafilial.Checked then
        sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;

      sql := sql + ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString;

    end
    else
      sql := sql + ' AND 1=2';

    cdsPedidos.CommandText := sql;
    cdsPedidos.Active := true;
  end;

end;

procedure TFrmPesConferencia.DBEidPedidosPropertiesPopup(Sender: TObject);
begin
  inherited;
  If (cbNumero.Checked) Then
     cxGrididPedidoCompra.Focused := True;
  //
  If (cbData.Checked) Then
     cxGriddtPedido.Focused := True;
  //
  If (cbValor.Checked) Then
     cxGridvlPedido.Focused := True;
end;

procedure TFrmPesConferencia.DBGridDblClick(Sender: TObject);
begin
  if (not cdsGrid.IsEmpty) then
    idPedido := cdsGrididPedidoCompra.AsInteger;
  inherited;
end;

procedure TFrmPesConferencia.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not cdsGrid.IsEmpty) then
    idPedido := cdsGrididPedidoCompra.AsInteger;
  inherited;
end;

procedure TFrmPesConferencia.DBTableViewPedidoDblClick(Sender: TObject);
begin
  inherited;
  //
  dsPedidos.DataSet.Edit;
  //
  If (dsPedidos.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsPedidos.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsPedidos.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsPedidos.DataSet.Post;
  //
end;

procedure TFrmPesConferencia.DBTableViewPedidoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewPedido.OnDblClick(DBTableViewPedido);
end;

procedure TFrmPesConferencia.DBTableViewPedidoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  If (ARecord.Values[0] = 'S') Then
     AStyle := stDestaque;
end;

procedure TFrmPesConferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmPesConferencia := nil;
end;

procedure TFrmPesConferencia.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
  Height := 564;
  Width := 780;
end;

procedure TFrmPesConferencia.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsString := 'S';
  cdsPadrao.FieldByName('stParcial').AsString := 'S';
  cdsPadrao.FieldByName('stTotal').AsString := 'S';
  cdsPadrao.FieldByName('stCancelado').AsString := 'S';
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;
  idPedido := 0;
end;

procedure TFrmPesConferencia.GridProdutosDblClick(Sender: TObject);
begin
  inherited;
  if cdsPedidoProd.RecordCount > 0 then
  begin
    Application.CreateForm(TFrmHistoricoRecepcao, FrmHistoricoRecepcao);
    FrmHistoricoRecepcao.cdsPedidoRec.Active := false;
    FrmHistoricoRecepcao.cdsPedidoRec.CommandText := 'SELECT dtRecepcao, qtRecepcao, idDocSerie, idNfE  FROM PedidoCompraRec ' +
                       ' WHERE idEmpresa = ' + cdsGrididEmpresa.AsString +
                       ' AND idCadEmpresaOri = ' + cdsGrididCadEmpresa.AsString +
                       ' AND idPedidoCompra = ' + cdsGrididPedidoCompra.AsString +
                       ' AND idPedidoProd = ' + cdsPedidoProdidPedidoProd.AsString +
                       ' ORDER BY dtRecepcao';
    FrmHistoricoRecepcao.cdsPedidoRec.Active := true;
    FrmHistoricoRecepcao.ShowModal;
  end;
end;

end.
