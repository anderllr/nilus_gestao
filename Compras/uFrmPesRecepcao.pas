unit uFrmPesRecepcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions, System.ImageList;

type
  TFrmPesRecepcao = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanFornecedor: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    PanRomaneio: TCPanelGradient;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel1: TCLabel;
    LookMaquina: TCLookUp;
    DBEidMaquina: TCDBEdit;
    CLabel7: TCLabel;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraostAtivo: TStringField;
    cdsPadraostParcial: TStringField;
    cdsPadraostCancelado: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoidPedidoIni: TIntegerField;
    cdsPadraoidPedidoFim: TIntegerField;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TIntegerField;
    cdsGrididPedido: TIntegerField;
    cdsGriddtPedido: TDateField;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGridqtProduto: TFloatField;
    cdsGridqtSaldo: TFloatField;
    PanNota: TCPanelGradient;
    Bevel5: TBevel;
    cdsGridqtRecebida: TFloatField;
    BtnTodos: TCBitBtn;
    BtnNenhum: TCBitBtn;
    BtnGerarNfe: TCBitBtn;
    cdsGridsel: TStringField;
    cdsGrididMaquina: TIntegerField;
    cdsGriddescMaquina: TStringField;
    DBEidNfE: TCDBEdit;
    CLabel2: TCLabel;
    LookDocSerie: TCLookUp;
    DBEidDocSerie: TCDBEdit;
    CLabel3: TCLabel;
    dsRodape: TDataSource;
    cdsRodape: TClientDataSet;
    cdsRodapeidDocSerie: TStringField;
    cdsRodapeidNfe: TIntegerField;
    cdsGridvlProduto: TCurrencyField;
    DBEqtRecebida: TCDBEdit;
    cdsGrididPedidoProd: TIntegerField;
    PanConfirmacao: TCPanelGradient;
    BtnImprimir: TCBitBtn;
    BtnConfirmar: TCBitBtn;
    cdsDistribuiNf: TClientDataSet;
    dsDistribuiNf: TDataSource;
    cdsDistribuiNfidEmpresa: TIntegerField;
    cdsDistribuiNfidPedido: TIntegerField;
    cdsDistribuiNfidProduto: TIntegerField;
    cdsDistribuiNfqtde: TFloatField;
    cdsDistribuiNfidFornecedor: TIntegerField;
    cdsDistribuiNfidCadEmpresa: TIntegerField;
    cdsDistribuiNfidDocSerie: TStringField;
    cdsDistribuiNfidMaquina: TIntegerField;
    cdsDistribuiNfidPedidoProd: TIntegerField;
    cdsGriddtRecebida: TDateField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraonrOriginalIni: TIntegerField;
    cdsPadraonrOriginalFim: TIntegerField;
    DBEnrOriginalIni: TCDBEdit;
    CLabel10: TCLabel;
    CLabel9: TCLabel;
    DBEnrOriginalFim: TCDBEdit;
    DBEidPedidoIni: TCDBEdit;
    CLabel4: TCLabel;
    CLabel8: TCLabel;
    DBEidPedidoFim: TCDBEdit;
    cdsGriddescCadFornecedor: TStringField;
    cdsGridnrPedidoOriginal: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridColEnter(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure BtnTodosClick(Sender: TObject);
    procedure MarcaGrid(marca: string);
    procedure BtnGerarNfeClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure configPainel;
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure RetornaDados;
    procedure LimpaDistribui;
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure cdsGridqtRecebidaValidate(Sender: TField);
  private
    { Private declarations }
    qtSel : integer;
    FOriginalOptions : TDBGridOptions;
    vlAnterior : string;
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa : integer;
//    id, idProd : Integer;
    sqlRec : string;
    VerStatus : Boolean;
  end;

var
  FrmPesRecepcao: TFrmPesRecepcao;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind, uFrmNFE, uDmPadrao,
  uFrmPesConferencia, uFrmCadPedidoCompra, uRecError, uFrmDistribuiNF;

{$R *.dfm}

procedure TFrmPesRecepcao.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  cdsGrid.EmptyDataSet;
 { if trim(cdsPadraoidFornecedor.AsString) = '' then
  begin
    messagedlg('Você precisa informar o fornecedor!', mtwarning, [mbok], 0);
    exit;
  end;}
  sql := 'SELECT p.idEmpresa, p.idCadEmpresa, p.idPedidoCompra, p.dtPedido, pp.idProduto, pp.idMaquina, ' +
         ' prod.descProduto, pp.vlProduto, pp.idPedidoProd, pp.qtPedida, (pp.qtPedida-pp.qtAtendida) qtSaldo, ' +
         ' F.descCadFornecedor, p.nrPedidoOriginal ' +
         ' FROM PedidoCompra p';
  sql := sql + ' INNER JOIN PedidoCompraProd pp ON p.idEmpresa = pp.idEmpresa AND p.idCadEmpresa = pp.idCadEmpresa ' +
          ' AND p.idPedidoCompra = pp.idPedidoCompra INNER JOIN Produto prod ON pp.idProduto = prod.idProduto ' +
          ' INNER JOIN vCadFornecedorContabil F ON p.idFornecedor = F.idFornecedor ' +
          ' WHERE (pp.qtPedida-pp.qtAtendida) > 0  AND stPedidoProd = ' + QuotedStr('ATIVO');
  if trim(cdsPadraoidProduto.AsString) <> '' then
    sql := sql + ' AND pp.idProduto = ' + cdsPadraoidProduto.AsString;
  if trim(cdsPadraoidMaquina.AsString) <> '' then
    sql := sql + ' AND pp.idMaquina = ' + cdsPadraoidMaquina.AsString;

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
  if trim(cdsPadrao.FieldByName('idPedidoIni').AsString) <> '' then
    sql := sql + ' AND p.idPedidoCompra >= ' + QuotedStr(cdsPadrao.FieldByName('idPedidoIni').AsString);
  if trim(cdsPadrao.FieldByName('idPedidoFim').AsString) <> '' then
    sql := sql + ' AND p.idPedidoCompra <= ' + QuotedStr(cdsPadrao.FieldByName('idPedidoFim').AsString);
  if trim(cdsPadrao.FieldByName('nrOriginalIni').AsString) <> '' then
    sql := sql + ' AND p.nrPedidoOriginal >= ' + QuotedStr(cdsPadrao.FieldByName('nrOriginalIni').AsString);
  if trim(cdsPadrao.FieldByName('nrOriginalFim').AsString) <> '' then
    sql := sql + ' AND p.nrPedidoOriginal <= ' + QuotedStr(cdsPadrao.FieldByName('nrOriginalFim').AsString);

  status := QuotedStr('ATIVO');
  status := status + ',' + QuotedStr('PARCIAL');
  if trim(status) <> '' then
    sql := sql + ' AND p.stPedido IN (' + status + ')';

  if cdsGrid.State in [dsInsert, dsEdit] then
    cdsGrid.Cancel;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    First;
    while not Eof do
    begin
      cdsGrid.Append;
      cdsGridsel.AsString := 'N';
      cdsGrididEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
      cdsGrididCadEmpresa.AsInteger := FieldByname('idCadEmpresa').AsInteger;
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
      cdsGridqtRecebida.AsFloat := FieldByName('qtSaldo').AsFloat;
      cdsGriddescCadFornecedor.AsString := FieldByName('descCadFornecedor').AsString;
      cdsGridnrPedidoOriginal.AsString := FieldByName('nrPedidoOriginal').AsString;
      cdsGriddtRecebida.AsDateTime := date;
      cdsGrid.Post;
      Next;
    end;
  end;
  qtSel := cdsGrid.RecordCount;
  BtnGerarNFE.Enabled := qtSel > 0;

  cdsRodape.Append;
  DBEidProduto.SetFocus;
  cdsGrid.First;
  inherited;
end;

procedure TFrmPesRecepcao.BtnGerarNfeClick(Sender: TObject);
var
  msg, obs, sql, sqlPed, sqlSta, sqlPedNfe, sqlVerifica : string;
  idRecepcao : integer;
begin
  inherited;
  msg := '';
  if qtSel <= 0 then
    msg := 'Nenhum produto selecionado!';

  if (trim(DBEidDocSerie.Text) = '') or (trim(cdsRodapeidNfE.AsString) = '') or (Trim(cdsPadraoidFornecedor.AsString) = '') then
    msg := 'É preciso informar a série e o número da nota e o código do fornecedor a ser gerada?';

  if msg = '' then
  begin
    cdsLookup.Active :=false;
    cdsLookup.CommandText := 'SELECT COUNT(*) qtde FROM NfE WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString + ' AND idCadEmpresa = ' +
        DBEidCadEmpresa.Text + ' AND idFornecedor = ' + cdsPadraoidFornecedor.AsString + ' AND idCadFornecedor = 1 AND idDocSerie = ' +
        QuotedStr(DBEidDocSerie.Text) + ' AND idNfE = ' + cdsRodapeidNfE.AsString;
    cdsLookup.Active := true;
    if cdsLookup.FieldByName('qtde').AsInteger > 0 then
      msg := 'Nota fiscal já existe!';
  end;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  Application.CreateForm(TFrmNfE, FrmNfE);

  frmNfe.Posiciona;
  frmNfe.IniciaTela;
  frmNfe.TrataEmpresa;

  FrmNfE.actNovo.Execute;
  if not (frmNfE.cdsEmpresa.State in [dsInsert, dsEdit]) then
    frmNfE.cdsEmpresa.Edit;
  frmNfE.cdsEmpresaidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  frmNfE.cdsEmpresaidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  FrmNfE.cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  FrmNfE.cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  FrmNfE.cdsPadraoidDocSerie.AsString := cdsRodapeidDocSerie.AsString;
  FrmNfE.cdsPadraoidFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
  FrmNfE.cdsPadraoidCadFornecedor.AsInteger := 1;
  FrmNfE.cdsPadraoidNfE.AsInteger := cdsRodapeidNfe.AsInteger;
  frmNfe.origem := 'Recepção';
  FrmNfE.DBEidNfEExit(FrmNfE.DBEidNfE);
  if not (FrmNfE.cdsPadrao.State in [dsInsert, dsEdit]) then
    FrmNfE.cdsPadrao.Edit;
  cdsGrid.First;
  obs := 'Pedido(s): ';
  sql := '';
  sqlPed := '';
  sqlSta := '';
  sqlRec := '';
  while not cdsGrid.Eof do
  begin
    if (cdsGridsel.AsString = 'S') and (cdsGridqtRecebida.AsFloat > 0) then
    begin
      if pos(cdsGrididPedido.AsString, obs) <= 0 then
      begin
        obs := obs + cdsGrididPedido.AsString + ',';
        sqlPedNfe := sqlPedNfe + 'INSERT INTO PedidoCompraNfE VALUES(' + cdsEmpresaidEmpresa.AsString + ', ' + DBEidCadEmpresa.Text +
               ',' + cdsGrididPedido.AsString + ',' + cdsPadraoidFornecedor.AsString + ',1,' + QuotedStr(DBEidDocSerie.Text) +
               ',' + cdsRodapeidNfE.AsString + ');'
      end;
      sql := 'SELECT ISNULL(MAX(idRecepcao), 0) idRecepcao FROM PedidoCompraRec WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
                                                  ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                                                  ' AND idPedidoCompra = ' + cdsGrididPedido.AsString +
                                                  ' AND idPedidoProd = ' + cdsGrididPedidoProd.AsString;
      idRecepcao := frmPrincipal.ExecutaSQLRet([],'', sql).FieldByName('idRecepcao').AsInteger;
      idRecepcao := idRecepcao + 1;
      sqlRec := sqlRec + ' INSERT INTO PedidoCompraRec (idEmpresa, idCadEmpresa, idPedidoCompra, ' +
                        ' idPedidoProd, idRecepcao, dtRecepcao, qtRecepcao, idDocSerie, idNfe, idCadEmpresaOri) VALUES(' +
                       cdsEmpresaidEmpresa.AsString + ', ' + DBEidCadEmpresa.Text + ', ' +
                       cdsGrididPedido.AsString + ', ' + cdsGrididPedidoProd.AsString + ', ' + IntToStr(idRecepcao) +
                       ', ' + funcao.ConverteData(cdsGriddtRecebida.AsDateTime) + ', ' + funcao.RetornaValorEField(DBEqtRecebida, 3) + ', ' +
                       QuotedStr(trim(DBEidDocSerie.Text)) + ',' + cdsRodapeidNfE.AsString + ', ' + cdsGrididCadEmpresa.AsString +  ');';
      sqlSta := sqlSta + 'EXEC spVerStatusPedidoCompra ' + cdsGrididEmpresa.AsString + ', ' + cdsGrididCadEmpresa.AsString + ', ' +
                cdsGrididPedido.AsString + ';';
      sqlPed := sqlPed + 'UPDATE PedidoCompraProd SET qtAtendida = qtAtendida + ' + funcao.TiraVirgula(cdsGridqtRecebida.AsString) +
                ' WHERE idEmpresa = ' + cdsGrididEmpresa.AsString +
                ' AND idCadEmpresa = ' + cdsGrididCadEmpresa.AsString +
                ' AND idPedidoCompra = ' + cdsGrididPedido.AsString +
                ' AND idPedidoProd = ' + cdsGrididPedidoProd.AsString + '; ';
      frmNfe.BtnNovoProd.Click;
      FrmNfE.cdsNfeProduto.FieldByName('idProduto').AsInteger := cdsGrididProduto.AsInteger;
//      if cdsGrididMaquina.AsInteger > 0 then
//        FrmNfE.cdsNfeProduto.FieldByName('idMaquina').AsInteger := cdsGrididMaquina.AsInteger;
      frmNfe.DBEidMaquinaExit(frmNfe.DBEidMaquina);
      if frmNfE.cdsNfEProduto.State = dsBrowse then  ///encontrou  só soma a quantidad
      begin
        frmNfE.cdsNfEProduto.Edit;
        frmNfE.cdsNfEProdutoqtProduto.AsFloat := frmNfE.cdsNfEProdutoqtProduto.AsFloat + cdsGridqtRecebida.AsFloat;
        frmNfE.DBEqtProdutoExit(frmNfE.DBEqtProduto);
      end
      else
        if frmNfE.cdsNfEProduto.State = dsInsert then  ///Produto novo
        begin
          frmNfE.cdsNfEProdutoqtProduto.AsFloat := frmNfE.cdsNfEProdutoqtProduto.AsFloat + cdsGridqtRecebida.AsFloat;
          frmNfE.DBEqtProdutoExit(frmNfE.DBEqtProduto);
          FrmNfE.cdsNfEProdutovlBruto.AsFloat := cdsGridvlProduto.AsFloat;
          FrmNfE.cdsNfEProdutoprDesconto.AsFloat := 0;
          FrmNfE.cdsNfEProdutovlDesconto.AsFloat := 0;
          FrmNfE.cdsNfEProdutovlLiquido.AsFloat := cdsGridvlProduto.AsFloat;
          frmNfE.DBEqtProdutoExit(frmNfE.DBEvlLiquido);
        end;
      frmNfE.cdsNfEProdutovlTotal.AsFloat := FrmNfE.cdsNfEProdutovlLiquido.AsFloat*frmNfE.cdsNfEProdutoqtProduto.AsFloat;
      frmNfE.cdsNfEProdutovlOutrasIcms.AsFloat := frmNfE.cdsNfEProdutovlTotal.AsFloat;
      frmNfE.DBEqtProdutoExit(frmNfE.DBEqtProduto);
      FrmNfE.Recepcao := True;
      frmNfE.BtnSalvarProd.Click;

    end; //fim da verificação seleção e quantidade
    cdsGrid.Next;
  end;  //fim do laço
  frmNfE.sql := sql;
  frmNfE.sqlPed := sqlPed;
  frmNfE.sqlSta := sqlSta;
  frmNfE.sqlRec := sqlRec;
  FrmNfE.sqlPedNfe := sqlPedNfe;
  //desabilita os campos caso a nota tenha sido originada da recepção do pedido
    funcao.SomenteLeitura([frmNfE.DBEidNfE], true);


  FrmNfE.Recepcao := False;
  frmNfE.ShowModal;
  sqlSta := sqlSta + 'EXEC spVerStatusPedidoCompra ' + cdsGrididEmpresa.AsString + ', ' + cdsGrididCadEmpresa.AsString + ', ' +
                cdsGrididPedido.AsString + ';';
  dmPadrao.dbConexao.ExecuteDirect(sqlSta);

  //Aqui faz a Busca por Previsões no caso de Haver vai aparecer uma Mensagem Perguntando se deseja dar baixa
  sqlVerifica := 'SELECT * FROM PedidoCompraFinanc WHERE idEmpresa = ' + cdsGrididEmpresa.AsString +
                 ' AND idCadEmpresa = ' + cdsGrididCadEmpresa.AsString +
                 ' AND idPedidoCompra = ' + cdsGrididPedido.AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sqlVerifica) do
  begin
    if RecordCount > 0 then
    begin
      If (MessageDlg('Esse pedido tem previsão de pagamento, Deseja baixar a previsão?', mtconfirmation, [mbyes, mbno], 0) = mrYes) Then
      begin
        sql := 'UPDATE PrevisaoPagParc SET stPrevisaoPagParc = '+ quotedstr('BAIXADA')+ 'WHERE idPrevisaoPag = '+ FieldByName('idPrevisaoPag').AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);

        sql := 'SELECT COUNT(p.idParcela) AS idParcela FROM PrevisaoPagParc p WHERE p.idPrevisaoPag = ' + FieldByName('idPrevisaoPag').AsString +
              ' AND stPrevisaoPagParc = ' + quotedstr('BAIXADA');

        // Caso ocorra de o usuario dar baixa em todas as parcelas =====================================================================
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          sql := 'UPDATE PrevisaoPag SET stPrevisaoPag = ' + quotedstr('BAIXADA') + ' WHERE idEmpresa = ' + FieldByName('idEmpresa').AsString +
                 ' AND idCadEmpresa = ' + FieldByName('idCadEmpresa').AsString + ' AND idPrevisaoPag = ' + FieldByName('idPrevisaoPag').AsString +
                 ' AND qtParcelas = ' + quotedstr(FieldByName('idParcela').AsString);
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end;
       // ==============================================================================================================================
      end;
    end;
  end;
  actPesquisar.Execute;
end;

procedure TFrmPesRecepcao.BtnNenhumClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('N');
  qtSel := 0;
  BtnGerarNFE.Enabled := qtSel > 0;

end;

procedure TFrmPesRecepcao.BtnConfirmarClick(Sender: TObject);
var
  msg, obs, sql, sqlPed, sqlSta, pedidos : string;
  idRecepcao : integer;
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
      sqlPed := sqlPed + 'UPDATE PedidoCompraProd SET qtAtendida = qtAtendida + ' + funcao.RetornaValorEField(DBEqtRecebida, 3) +
                 ' WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString + ' and idCadEmpresa = ' + DBEidCadEmpresa.Text +
                 ' AND idPedidoCompra = ' + cdsGrididPedido.AsString + ' AND idPedidoProd = ' + cdsGrididPedidoProd.AsString + ';';
      sqlSta := sqlSta + 'EXEC spVerStatusPedidoCompra ' + cdsGrididEmpresa.AsString + ', ' + cdsGrididCadEmpresa.AsString + ', ' +
                cdsGrididPedido.AsString + ';';
      sql := 'SELECT ISNULL(MAX(idRecepcao), 0) idRecepcao FROM PedidoCompraRec WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
                                                  ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                                                  ' AND idPedidoCompra = ' + cdsGrididPedido.AsString +
                                                  ' AND idPedidoProd = ' + cdsGrididPedidoProd.AsString;
      idRecepcao := frmPrincipal.ExecutaSQLRet([],'', sql).FieldByName('idRecepcao').AsInteger + 1;
      if (trim(DBEidDocSerie.Text) <> '') and (trim(cdsRodapeidNfE.AsString) <> '') then
        sqlRec := sqlRec + ' INSERT INTO PedidoCompraRec (idEmpresa, idCadEmpresa, idPedidoCompra, ' +
                           ' idPedidoProd, idRecepcao, dtRecepcao, qtRecepcao, idDocSerie, idNfe, idCadEmpresaOri) VALUES(' +
                           cdsEmpresaidEmpresa.AsString + ', ' + DBEidCadEmpresa.Text + ', ' +
                           cdsGrididPedido.AsString + ', ' + cdsGrididPedidoProd.AsString + ', ' + IntToStr(idRecepcao) +
                           ', ' + funcao.ConverteData(cdsGriddtRecebida.AsDateTime) + ', ' + funcao.RetornaValorEField(DBEqtRecebida, 3) + ', ' +
                           QuotedStr(trim(DBEidDocSerie.Text)) + ',' + cdsRodapeidNfE.AsString + ', ' + cdsGrididCadEmpresa.AsString +  ');'
      else
        sqlRec := sqlRec + ' INSERT INTO PedidoCompraRec (idEmpresa, idCadEmpresa, idPedidoCompra, ' +
                           ' idPedidoProd, idRecepcao, dtRecepcao, qtRecepcao, idCadEmpresaOri) VALUES(' +
                           cdsEmpresaidEmpresa.AsString + ', ' + DBEidCadEmpresa.Text + ', ' +
                           cdsGrididPedido.AsString + ', ' + cdsGrididPedidoProd.AsString + ', ' + IntToStr(idRecepcao) +
                           ', ' + funcao.ConverteData(cdsGriddtRecebida.AsDateTime) + ', ' +
                           funcao.RetornaValorEField(DBEqtRecebida, 3) + ', ' + cdsGrididCadEmpresa.AsString + ');';

      if pos(cdsGrididPedido.AsString, pedidos) <= 0  then
        if trim(pedidos) = '' then
          pedidos := cdsGrididPedido.AsString
        else
          pedidos := pedidos + ',' + cdsGrididPedido.AsString;

    end; //fim da verificação seleção e quantidade
    cdsGrid.Next;
  end;  //fim do laço
  if VerStatus then
  begin
    if trim(sqlSta) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sqlSta);
  end;
  if (PanConfirmacao.Visible) and (not PanNota.Visible) then //significa q não irá gerar nota
  begin
    if trim(sqlPed) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sqlPed);
    if trim(sqlSta) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sqlSta);
    if trim(sqlRec) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sqlRec);
    actPesquisar.Execute;
    Application.CreateForm(TFrmPesConferencia, FrmPesConferencia);
    FrmPesConferencia.Show;
    if not (FrmPesConferencia.cdsPadrao.State in [dsInsert, dsEdit]) then
      FrmPesConferencia.cdsPadrao.Append;
    FrmPesConferencia.cdsPadraoidFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
    FrmPesConferencia.DBEidPedidos.Text := pedidos;
    FrmPesconferencia.actPesquisar.Execute;
  end;

end;

procedure TFrmPesRecepcao.BtnTodosClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('S');
  qtSel := cdsGrid.RecordCount;
  BtnGerarNFE.Enabled := qtSel > 0;
end;

procedure TFrmPesRecepcao.cdsGridqtRecebidaValidate(Sender: TField);
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

procedure TFrmPesRecepcao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';

  Dataset.FieldByName('stAtivo').AsBoolean := true;
  Dataset.FieldByName('stParcial').AsBoolean := true;
end;

procedure TFrmPesRecepcao.configPainel;
begin
  //Verifica se está configurado para gerar ou não Nota Fiscal de Entrada
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigCompras') do
  begin
    PanConfirmacao.Visible := FieldByName('geraNFRecepcao').AsString = 'N';
    PanNota.Visible := FieldByName('geraNFRecepcao').AsString = 'S';
  end;
end;

procedure TFrmPesRecepcao.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsEmpresaidEmpresa.AsString;
end;

procedure TFrmPesRecepcao.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> cdsEmpresaidEmpresa.AsString then
    configPainel;
end;

procedure TFrmPesRecepcao.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;
  end;}
end;

procedure TFrmPesRecepcao.DBGridCellClick(Column: TColumn);
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
      BtnGerarNFE.Enabled := qtSel > 0;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    if not (Column.Index in [11]) then
      Self.DBGrid.Options := Self.FOriginalOptions;

end;

procedure TFrmPesRecepcao.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid.SelectedIndex in [0, 11]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmPesRecepcao.DBGridDblClick(Sender: TObject);
begin
  Application.CreateForm(TFrmDistribuiNF, FrmDistribuiNF);
  LimpaDistribui;

  RetornaDados;

  cdsGrid.Filtered := false;
  FrmDistribuiNF.ShowModal;
  actPesquisar.Execute;
end;

procedure TFrmPesRecepcao.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmPesRecepcao.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TFrmPesRecepcao.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if cdsGrid.State in [dsInsert, dsEdit] then
      cdsGrid.Post;
  end;
end;

procedure TFrmPesRecepcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesRecepcao := nil;
end;

procedure TFrmPesRecepcao.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidProduto;
  cdsRodape.CreateDataSet;
end;

procedure TFrmPesRecepcao.FormShow(Sender: TObject);
var
  r : TRect;
begin
  inherited;
  cdsDistribuiNf.CreateDataSet;
  cdsGrid.CreateDataSet;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;

  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 10;
  Top := r.top + 10;

  BtnGerarNfe.Enabled := false;
  Self.FOriginalOptions := Self.DBGrid.Options;

  configPainel;
  VerStatus := False;
  Height := 526;
  Width := 1050;
end;

procedure TFrmPesRecepcao.LimpaDistribui;
begin
  with cdsDistribuiNf do
  begin
    First;
    while not eof do
    begin
      First;
      Delete;
    end;
  end;
end;

procedure TFrmPesRecepcao.MarcaGrid(marca: string);
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

procedure TFrmPesRecepcao.RetornaDados;
var
  sql : string;
  temReq : boolean;
begin
  with cdsDistribuiNf do
  begin
    if not (IsEmpty) then
      exit;

{    sql := 'SELECT pc.idEmpresa, pc.idCadEmpresa, pc.idPedidoCompra, pc.idFornecedor, pcp.idProduto, pcp.qtPedida ' +
           ' pcp.idPedidoProd, pcp.idMaquina ' +
           ' FROM PedidoCompra pc INNER JOIN PedidoCompraProd pcp ' +
           ' ON pcp.idEmpresa = pc.idEmpresa AND pcp.idCadEmpresa = pc.idCadEmpresa ' +
           ' AND pcp.idPedidoCompra = pc.idPedidoCompra WHERE pc.idEmpresa = ' +
           cdsGrididEmpresa.AsString + ' AND pc.idCadEmpresa = ' +
           cdsGrididCadEmpresa.AsString + ' AND pc.idPedidoCompra = ' + IntToStr(id) +
            'AND pcp.idProduto = ' + IntToStr(idProd) +
           ' GROUP BY pc.idEmpresa, pc.idFornecedor, pcp.idProduto, pcp.qtPedida, pc.idPedidoCompra, pc.idCadEmpresa';
    temReq := false;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not IsEmpty then
      begin
        temReq := true;
        First;
        while not Eof do
        begin
          cdsDistribuiNf.Append;
          cdsDistribuiNf.FieldByName('idCadEmpresa').AsInteger := FieldByName('idCadEmpresa').AsInteger;
          cdsDistribuiNf.FieldByName('idPedido').AsInteger := FieldByName('idPedidoCompra').AsInteger;
          cdsDistribuiNf.FieldByName('idFornecedor').AsInteger := FieldByName('idFornecedor').AsInteger;
          cdsDistribuiNf.FieldByName('idProduto').AsInteger := FieldByName('idProduto').AsInteger;
          cdsDistribuiNf.FieldByName('qtde').AsFloat := FieldByName('qtPedida').AsFloat;
          cdsDistribuiNfidPedidoProd.AsInteger := FieldByName('idPedidoProd').AsInteger;
          if FieldByName('idMaquina').AsInteger > 0 then
            cdsDistribuiNfidMaquina.AsInteger := FieldByName('idMaquina').AsInteger;
          cdsDistribuiNf.Post;
          Next;
        end; //im do while not Eof do
      end; // fim do if not IsEmpty then
    end; //with frmPrincipal.ExecutaSQLRet([], '', sql) do  }
//    if not temReq then
//    begin
      Append;
      FieldByName('idCadEmpresa').AsInteger := cdsGrididCadEmpresa.AsInteger;
      FieldByName('idPedido').AsInteger := cdsGrididPedido.AsInteger;
      FieldByName('idFornecedor').AsInteger := cdsPadraoidFornecedor.AsInteger;
      FieldByName('idProduto').AsInteger := cdsGrididProduto.AsInteger;
      FieldByName('qtde').AsFloat := cdsGridqtRecebida.AsFloat;
      FieldByName('idPedidoProd').AsInteger := cdsGrididPedidoProd.AsInteger;
      if cdsGrididMaquina.AsInteger > 0 then
        FieldByName('idMaquina').AsInteger := cdsGrididMaquina.AsInteger;
      Post;
//    end;
  end; //with FrmCadCotacao.cdsCotacaoFilial
end;

end.
