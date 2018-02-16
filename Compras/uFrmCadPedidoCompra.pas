unit uFrmCadPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CCheckBox, CDBCheckBox,
  CDBRadioGroup, uFrmCadPadraoEmpFiscal, System.Actions, System.ImageList;

type
  TFrmCadPedidoCompra = class(TFrmCadPadraoEmpFiscal)
    sdsPedidoCompra: TSQLDataSet;
    actCadCidade: TAction;
    sdsPedidoProd: TSQLDataSet;
    dspPedidoProd: TDataSetProvider;
    cdsPedidoProd: TClientDataSet;
    dsPedidoProd: TDataSource;
    CGroupBox13: TCGroupBox;
    CLabel2: TCLabel;
    DBEdtPedido: TCDBEdit;
    DBEidPedidoCompra: TCDBEdit;
    CLabel14: TCLabel;
    DBEstPedido: TCDBEdit;
    CLabel25: TCLabel;
    DBMobsPedido: TCDBMemo;
    CLabel4: TCLabel;
    cdsProduto: TClientDataSet;
    cdsPedidoProddescProduto: TStringField;
    cdsMaquina: TClientDataSet;
    cdsPedidoProddescMaquina: TStringField;
    cdsPedidoProdcodFabricante: TStringField;
    cdsPedidoProdidEmpresa: TIntegerField;
    cdsPedidoProdidCadEmpresa: TSmallintField;
    cdsPedidoProdidPedidoCompra: TIntegerField;
    cdsPedidoProdidPedidoProd: TSmallintField;
    cdsPedidoProdidProduto: TIntegerField;
    cdsPedidoProdqtPedida: TFMTBCDField;
    cdsPedidoProdqtAtendida: TFMTBCDField;
    cdsPedidoProdvlProduto: TFMTBCDField;
    cdsPedidoProdvlTotal: TFMTBCDField;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    CLabel6: TCLabel;
    DBEvlPedido: TCDBEdit;
    cdsPedidoProdobsProduto: TStringField;
    cdsPedidoProdvlTotalPed: TAggregateField;
    BtnImprimir: TCBitBtn;
    cdsPedidoProdmarca: TStringField;
    cdsPedidoProdqtDiasEntrega: TSmallintField;
    CLookUp2: TCLookUp;
    DBEidCondicaoPgtoF: TCDBEdit;
    CLabel23: TCLabel;
    DBEdescContato: TCDBEdit;
    CLabel13: TCLabel;
    BtnExcluir2: TCBitBtn;
    BtnEncerrar: TCBitBtn;
    cdsPedidoProdidMaquina: TIntegerField;
    CLabel15: TCLabel;
    DBEnrPedidoOriginal: TCDBEdit;
    LookLancamento: TCLookUp;
    CBitBtn2: TCBitBtn;
    CLabel22: TCLabel;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLabel21: TCLabel;
    cdsPedidoProddtEntrega: TSQLTimeStampField;
    cdsPedidoProdstPedidoProd: TStringField;
    TabPrevisao: TTabSheet;
    PagTituloPag: TCPageControl;
    TabTituloPag: TTabSheet;
    CLabel84: TCLabel;
    CLabel124: TCLabel;
    CLabel125: TCLabel;
    CLabel126: TCLabel;
    CLabel127: TCLabel;
    CLabel128: TCLabel;
    CLabel129: TCLabel;
    CLabel131: TCLabel;
    CLabel130: TCLabel;
    CLabel117: TCLabel;
    CLabel80: TCLabel;
    CLabel76: TCLabel;
    DBEobsTituloPag: TCDBEdit;
    DBEprMulta: TCDBEdit;
    DBEprJuros: TCDBEdit;
    DBEprDescontoT: TCDBEdit;
    DBEdiasVencimento: TCDBEdit;
    DBCKincMes: TCDBCheckBox;
    DBEdtVencimentoIni: TCDBEdit;
    DBEqtParcelas: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp3: TCLookUp;
    DBEidIndice1: TCDBEdit;
    DBEvlPrevisaoPag: TCDBEdit;
    DBEnrTituloPag: TCDBEdit;
    CLookUp7: TCLookUp;
    DBEidDocSerieT: TCDBEdit;
    TabParcelas: TTabSheet;
    CGroupBox21: TCGroupBox;
    CLabel133: TCLabel;
    CLabel134: TCLabel;
    CLabel135: TCLabel;
    CLabel136: TCLabel;
    DBEidParcela: TCDBEdit;
    DBEvlParcela: TCDBEdit;
    DBEdtVencimentoP: TCDBEdit;
    DBEstTituloPagParc: TCDBEdit;
    CGroupBox22: TCGroupBox;
    CDBGrid3: TCDBGrid;
    GrpBtnParcelas: TCGroupBox;
    CLabel137: TCLabel;
    LblTotal: TCLabel;
    CLabel138: TCLabel;
    LblRestante: TCLabel;
    BtnSalvarParc: TCBitBtn;
    BtnCancelarParc: TCBitBtn;
    BtnExcluirParc: TCBitBtn;
    BtnNovoParc: TCBitBtn;
    dsPrevisaoPag: TDataSource;
    cdsPrevisaoPag: TClientDataSet;
    dspPrevisaoPag: TDataSetProvider;
    sdsPrevisaoPag: TSQLDataSet;
    sdsPrevisaoPagParc: TSQLDataSet;
    dspPrevisaoPagParc: TDataSetProvider;
    cdsPrevisaoPagParc: TClientDataSet;
    dsPrevisaoPagParc: TDataSource;
    cdsPrevisaoPagidPrevisaoPag: TIntegerField;
    cdsPrevisaoPagidEmpresa: TIntegerField;
    cdsPrevisaoPagidFornecedor: TIntegerField;
    cdsPrevisaoPagnrPrevisaoPag: TStringField;
    cdsPrevisaoPagidDocSerie: TStringField;
    cdsPrevisaoPagtpDocumento: TStringField;
    cdsPrevisaoPagdtEmissao: TSQLTimeStampField;
    cdsPrevisaoPagidSafra: TIntegerField;
    cdsPrevisaoPagidBanco: TIntegerField;
    cdsPrevisaoPagidIndice: TSmallintField;
    cdsPrevisaoPagidMovFinanceira: TIntegerField;
    cdsPrevisaoPagidResultado: TIntegerField;
    cdsPrevisaoPagidRateio: TSmallintField;
    cdsPrevisaoPagidGerencial: TIntegerField;
    cdsPrevisaoPagobsPrevisaoPag: TStringField;
    cdsPrevisaoPagvlPrevisaoPag: TFMTBCDField;
    cdsPrevisaoPagqtParcelas: TSmallintField;
    cdsPrevisaoPagdtVencimentoIni: TSQLTimeStampField;
    cdsPrevisaoPagdiasVencimento: TSmallintField;
    cdsPrevisaoPagprMulta: TFMTBCDField;
    cdsPrevisaoPagprDesconto: TFMTBCDField;
    cdsPrevisaoPagprJuros: TFMTBCDField;
    cdsPrevisaoPagincMes: TStringField;
    cdsPrevisaoPagstPrevisaoPag: TStringField;
    cdsPrevisaoPagidCadEmpresa: TSmallintField;
    FindSerieTit: TCFind;
    DBEidBanco: TCDBEdit;
    LookBanco: TCLookUp;
    CLabel19: TCLabel;
    LookGerencialP: TCLookUp;
    DBEidGerencial: TCDBEdit;
    CLabel20: TCLabel;
    CBitBtn1: TCBitBtn;
    FindGerencial: TCFind;
    dsPedidoFinanc: TDataSource;
    cdsPedidoFinanc: TClientDataSet;
    dspPedidoFinanc: TDataSetProvider;
    sdsPedidoFinanc: TSQLDataSet;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEidSafra: TCDBEdit;
    CLabel72: TCLabel;
    cdsPedidoFinancidEmpresa: TIntegerField;
    cdsPedidoFinancidCadEmpresa: TSmallintField;
    cdsPedidoFinancidPedidoCompra: TIntegerField;
    cdsPedidoFinancidPrevisaoPag: TIntegerField;
    TabProdutos: TTabSheet;
    CGroupBox4: TCGroupBox;
    CLabel3: TCLabel;
    CLabel5: TCLabel;
    CLabel7: TCLabel;
    CLabel1: TCLabel;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    CLabel16: TCLabel;
    CLabel18: TCLabel;
    DBEqtPedida: TCDBEdit;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    DBMobsProduto: TCDBMemo;
    LookProdMedida: TCLookUp;
    DBEvlProduto: TCDBEdit;
    DBEvlTotal: TCDBEdit;
    CBitBtn8: TCBitBtn;
    DBEmarca: TCDBEdit;
    DBEqtDiasEntrega: TCDBEdit;
    DBEdtEntrega: TCDBEdit;
    DBEstPedidoProd: TCDBEdit;
    CGroupBox1: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    BtnCancelarP: TCBitBtn;
    CGroupBox2: TCGroupBox;
    CDBGrid1: TCDBGrid;
    DBCKmostraFluxo: TCDBCheckBox;
    DBEdtVencimento: TCDBEdit;
    CLabel24: TCLabel;
    CGroupBox3: TCGroupBox;
    CLabel28: TCLabel;
    DBEdtReabertura: TCDBEdit;
    DBEdescMotivoReab: TCDBEdit;
    CLabel26: TCLabel;
    CLabel27: TCLabel;
    DBEdescUsuarioReab: TCDBEdit;
    CGroupBox5: TCGroupBox;
    BtnReabrir: TCBitBtn;
    cdsProdutoidProduto: TIntegerField;
    cdsProdutodescProduto: TStringField;
    cdsProdutoidProdCategoria: TSmallintField;
    cdsProdutoidProdMedida: TSmallintField;
    cdsProdutoidProdGrupo: TSmallintField;
    cdsProdutoidProdSubGrupo: TSmallintField;
    cdsProdutodtCadastro: TSQLTimeStampField;
    cdsProdutoobsProduto: TStringField;
    cdsProdutostProduto: TStringField;
    cdsProdutoidIndice: TSmallintField;
    cdsProdutoidCultura: TSmallintField;
    cdsProdutoidFabricante: TIntegerField;
    cdsProdutocodFabricante: TStringField;
    cdsProdutodescAplicacao: TStringField;
    cdsProdutoNcm: TStringField;
    cdsProdutoqtSacas: TFMTBCDField;
    cdsProdutoqtArrobas: TFMTBCDField;
    cdsProdutoCombustivel: TStringField;
    cdsProdutolocacao: TStringField;
    cdsProdutoproducao: TStringField;
    cdsProdutoidProdOrigem: TSmallintField;
    cdsPedidoProdqtRetirada: TFMTBCDField;
    procedure cdsPedidoProdAfterEdit(DataSet: TDataSet);
    procedure dspPedidoProdBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsPedidoProdAfterInsert(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidPedidoCompraExit(Sender: TObject);
    procedure dsPedidoProdStateChange(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidPedidoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEqtPedidaEnter(Sender: TObject);
    procedure DBEqtPedidaExit(Sender: TObject);
    procedure DBEvlProdutoExit(Sender: TObject);
    procedure DBEvlProdutoEnter(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure GerarPDF;
    procedure BtnExcluir2Click(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure DBEvlTotalEnter(Sender: TObject);
    procedure DBEvlTotalExit(Sender: TObject);
    procedure BtnEncerrarClick(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure DBEqtDiasEntregaExit(Sender: TObject);
    procedure DBEdtEntregaExit(Sender: TObject);
    procedure BtnCancelarPClick(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure dspPrevisaoPagBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure GeraParcelas;
    procedure SomaParcelas;
    procedure IniciaFinancas;
    procedure cdsPrevisaoPagAfterEdit(DataSet: TDataSet);
    procedure cdsPrevisaoPagAfterInsert(DataSet: TDataSet);
    procedure DBCKincMesExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure DBMobsPedidoExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure BtnReabrirClick(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
    vlTotalRateio, vlTotalParcelas, vlRatProd : currency;
  public
    { Public declarations }
  end;

var
  FrmCadPedidoCompra: TFrmCadPedidoCompra;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesProduto,
  uFrmPesPedidoCompra, uFrmRelPedidoCompra;

{$R *.dfm}

procedure TFrmCadPedidoCompra.actCancelarExecute(Sender: TObject);
begin
  inherited;
  BtnEncerrar.Enabled := false;
  BtnReabrir.Enabled := false;
  cdsPedidoProd.IndexFieldNames := '';
end;

procedure TFrmCadPedidoCompra.actExcluirExecute(Sender: TObject);
var
  sql : string;
begin
  cdsPedidoProd.IndexFieldNames := '';
  if Trim(cdsPrevisaoPagidPrevisaoPag.AsString) <> '' then
  begin
    sql := 'SELECT * FROM PedidoCompraFinanc WHERE idEmpresa = ' + cdsEmpresa.FieldByName('idEmpresa').AsString +
             ' AND idCadEmpresa = ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString +
             ' AND idPedidoCompra = ' + cdsPadrao.FieldByName('idPedidoCompra').AsString +
             ' AND idPrevisaoPag = ' + cdsPrevisaoPagidPrevisaoPag.AsString;

    cdsPedidoFinanc.Active := False;
    cdsPedidoFinanc.CommandText := sql;
    cdsPedidoFinanc.Active := True;
    if cdsPedidoFinanc.RecordCount > 0 then
    begin
      cdsPedidoFinanc.Delete;
      cdsPedidoFinanc.ApplyUpdates(0);
    end;
  end;
  inherited;
  BtnEncerrar.Enabled := false;
  BtnReabrir.Enabled := false;
end;

procedure TFrmCadPedidoCompra.actNovoExecute(Sender: TObject);
begin
  cdsPedidoProd.IndexFieldNames := '';
  //Colocado por BUG no Delphi XE4
  if cdsPedidoProd.State in [dsInsert, dsEdit] then
    cdsPedidoProd.Cancel;
  cdsPedidoProd.IndexFieldNames := '';
  //Até aqui Colocado por BUG no Delphi XE4
  funcao.SomenteLeitura([DBEdtPedido, DBMobsPedido, DBEidProduto, DBEidMaquina, DBEqtPedida,
         DBMobsProduto], false );
  inherited;
  BtnEncerrar.Enabled := false;
  BtnReabrir.Enabled := false;
end;

procedure TFrmCadPedidoCompra.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  //Colocado por BUG no Delphi XE4
  if cdsPedidoProd.State in [dsInsert, dsEdit] then
    cdsPedidoProd.Cancel;
  cdsPedidoProd.IndexFieldNames := '';
  //Até aqui Colocado por BUG no Delphi XE4
  Application.CreateForm(TFrmPesPedidoCompra, FrmPesPedidoCompra);
  FrmPesPedidoCompra.ShowModal;
  if FrmPesPedidoCompra.idPedido <> 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;
    cdsEmpresa.FieldByName('idEmpresa').AsInteger := FrmPesPedidoCompra.cdsGrididEmpresa.AsInteger;
    cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := FrmPesPedidoCompra.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmPesPedidoCompra.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmPesPedidoCompra.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idPedidoCompra').AsInteger := FrmPesPedidoCompra.idPedido;
    DBEidPedidoCompra.SetFocus;
    DBEidPedidoCompraExit(DBEidPedidoCompra);
  end;
end;

procedure TFrmCadPedidoCompra.actSalvarExecute(Sender: TObject);
var
  ed : boolean; //determina se foi edição
  sql : String;
  idPrevisaoPag : Integer;
begin
  ed := False;
  if cdsPedidoProd.State in [dsInsert, dsEdit] then
  begin
    cdsPedidoProd.Cancel;
    if cdsPedidoProd.State in [dsEdit] then
      ed := True;
  end;
//  cdsPadrao.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;

  if cdsPedidoProdvlTotalPed.Value <> cdsPadrao.FieldByName('vlPedido').Value then
    cdsPadrao.FieldByName('vlPedido').Value := cdsPedidoProdvlTotalPed.Value;
    //verifica alterações na tabela caixa

  if not(cdsPrevisaoPag.IsEmpty) then
  begin
    cdsPadrao.FieldByName('mostraFluxo').AsString := 'N';
    DBCKmostraFluxo.Enabled := False;
  end;
  GravaChave(1, '', nil);
  inherited;
  if not(cdsPrevisaoPag.IsEmpty) then
  begin
    if cdsPrevisaoPagParc.IsEmpty then
       GeraParcelas;

    cdsPrevisaoPag.ApplyUpdates(0);

    sql := 'SELECT * FROM PedidoCompraFinanc WHERE idEmpresa = ' + cdsEmpresa.FieldByName('idEmpresa').AsString +
           ' AND idCadEmpresa = ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString +
           ' AND idPedidoCompra = ' + cdsPrevisaoPagnrPrevisaoPag.AsString +
           ' AND idPrevisaoPag = ' + cdsPrevisaoPagidPrevisaoPag.AsString;

    cdsPedidoFinanc.Active := False;
    cdsPedidoFinanc.CommandText := sql;
    cdsPedidoFinanc.Active := True;

    if cdsPedidoFinanc.RecordCount = 0 then
    begin
      cdsPedidoFinanc.Append;
      cdsPedidoFinancidEmpresa.AsInteger := cdsEmpresa.FieldByName('idEmpresa').AsInteger;
      cdsPedidoFinancidCadEmpresa.AsInteger := cdsEmpresa.FieldByName('idCadEmpresa').AsInteger;
      cdsPedidoFinancidPedidoCompra.AsInteger := cdsPadrao.FieldByName('idPedidoCompra').AsInteger;
      cdsPedidoFinancidPrevisaoPag.AsInteger := cdsPrevisaoPagidPrevisaoPag.AsInteger;
      cdsPedidoFinanc.Post;
      cdsPedidoFinanc.ApplyUpdates(0);
    end;

    idPrevisaoPag := cdsPrevisaoPag.FieldByName('idPrevisaoPag').AsInteger;
    cdsPrevisaoPagParc.First;
    while not cdsPrevisaoPagParc.Eof do
    begin
      cdsPrevisaoPagParc.Edit;
      cdsPrevisaoPagParc.FieldByName('idPrevisaoPag').Value := idPrevisaoPag;
      cdsPrevisaoPagParc.Post;
      cdsPrevisaoPagParc.Next;
    end;

    cdsPrevisaoPagParc.ApplyUpdates(0);
  end;
  if (cdsPadrao.FieldByName('stPedido').AsString = 'ATIVO') OR
     (cdsPadrao.FieldByName('stPedido').AsString = 'PARCIAL') then
    GerarPDF;

  if ed then
    dmPadrao.dbConexao.ExecuteDirect('EXEC spVerStatusPedidoCompra ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                     funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidPedidoCompra, 3));
end;

procedure TFrmCadPedidoCompra.BtnAdicionarProdClick(Sender: TObject);
var
  teste : string;
begin
  inherited;
  if not(cdsPedidoProd.State in [dsEdit, dsInsert]) then
    cdsPedidoProd.Edit;

  funcao.GravaSec(chave, cdsPedidoProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), 'idPedidoProd');
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
    BtnNovoProd.Click;

  DBEidProduto.SetFocus;
end;

procedure TFrmCadPedidoCompra.BtnCancelarPClick(Sender: TObject);
begin
  inherited;
  if not(cdsPedidoProd.State in [dsEdit, dsInsert]) then
    cdsPedidoProd.Edit;
  cdsPedidoProdstPedidoProd.AsString := 'CANCELADO';
  cdsPedidoProd.Post;
end;

procedure TFrmCadPedidoCompra.BtnEncerrarClick(Sender: TObject);
begin
  inherited;
  if messagedlg('Deseja encerrar o pedido de compra?', mtconfirmation, [mbyes, mbno], 0, mbno) = mryes then
  begin
    if not (cdsPadrao.State in [dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('stPedido').AsString := 'ENCERRADO';
    BtnSalvar.Click;
    DBEidPedidoCompraExit(DBEidPedidoCompra);
  end;
end;

procedure TFrmCadPedidoCompra.BtnExcluir2Click(Sender: TObject);
var
  sit, sql : string;
begin
  inherited;
  sql := 'SELECT COUNT(*) qtde FROM PedidoCompraCotacao WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idPedidoCompra = ' + DBEidPedidoCompra.Text;
  if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger > 0 then
    if messagedlg('Pedido relacionado a uma cotação! Deseja excluir essa relação?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      sql := 'DELETE FROM PedidoCompraCotacao WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idPedidoCompra = ' + DBEidPedidoCompra.Text;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  sit := situacao;
  situacao := '';
  try
    actExcluir.Execute;
  finally
    situacao := sit;
  end;
  BtnReabrir.Enabled := false;
  cdsPedidoProd.IndexFieldNames := '';
end;

procedure TFrmCadPedidoCompra.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if trim(DBEidPedidoCompra.Text) = '' then
    exit;
  funcao.AbreFrm(TfrmRelPedidoCompra, TForm(frmRelPedidoCompra));
  FrmRelPedidoCompra.cdsEmpresa.FieldByName('idEmpresa').AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
  FrmRelPedidoCompra.cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
  FrmRelPedidoCompra.cdsPadraoidFornecedor.AsInteger := cdsPadrao.FieldByName('idFornecedor').AsInteger;
  FrmRelPedidoCompra.cdsPadraoidPedidoIni.AsInteger := cdsPadrao.FieldByName('idPedidoCompra').AsInteger;
  FrmRelPedidoCompra.cdsPadraoidPedidoFim.AsInteger := cdsPadrao.FieldByName('idPedidoCompra').AsInteger;
  FrmRelPedidoCompra.par := 2;
  FrmRelPedidoCompra.pdf := false;
  FrmRelPedidoCompra.actGerar.Execute;
end;

procedure TFrmCadPedidoCompra.BtnReabrirClick(Sender: TObject);
var
  msg : string;
begin
  inherited;
  msg := 'Reabrir o pedido e fazer alterações indevidas pode causar problemas nos vínculos para os relatórios!' + #13 +
         'Pedido reaberto não tem garantia de integridade futura!' + #13 +
         'Mesmo assim, deseja continuar e reabrir?';
  if messagedlg(msg, mtwarning, [mbyes, mbno], 0) = mrno then
    exit;

  msg := '';
  //escolheu reabrir
  //pede a justificativa para a reabertura
  if not(InputQuery('Informe o Motivo da reabertura...', 'Motivo da reabertura', msg)) then
      exit;


  if trim(msg) <> '' then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;

    cdsPadrao.FieldByName('dtReabertura').AsDateTime := date;
    cdsPadrao.FieldByName('descMotivoReab').AsString := msg;
    cdsPadrao.FieldByName('idUsuarioReab').AsString := frmPrincipal.idUsuario;
    cdsPadrao.FieldByName('descUsuarioReab').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM Usuario WHERE idUsuario = ' + frmPrincipal.idUsuario).FieldByName('descUsuario').AsString;
    cdsPadrao.FieldByName('stPedido').AsString := 'ATIVO';
    cdsPadrao.Post;
    cdsPadrao.ApplyUpdates(0);
    DBEidPedidoCompraExit(DBEidPedidoCompra);
  end
  else
    messagedlg('Motivo não informado! Reabertura negada!', mtinformation, [mbok], 0);
end;

procedure TFrmCadPedidoCompra.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('mostraFluxo').AsString := 'N';
end;

procedure TFrmCadPedidoCompra.cdsPedidoProdAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadPedidoCompra.cdsPedidoProdAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
  cdsPedidoProdqtAtendida.AsInteger := 0;
  cdsPedidoProdstPedidoProd.AsString := 'ATIVO';
end;

procedure TFrmCadPedidoCompra.cdsPrevisaoPagAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadPedidoCompra.cdsPrevisaoPagAfterInsert(DataSet: TDataSet);
var
  sql : string;
begin
  inherited;
  sql := ' SELECT MAX(idPrevisaoPag) id FROM PrevisaoPag';
  DataSet.FieldByName('idPrevisaoPag').AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('id').AsInteger+1;
  DataSet.FieldByName('idEmpresa').Value := cdsEmpresa.FieldByName('idEmpresa').Value;
  if frmPrincipal.filial then
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text
  else
    DataSet.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresaFin;
  DataSet.FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
  if cdsPadrao.FieldByName('idPedidoCompra').AsInteger > 0 then
    DataSet.FieldByName('nrPrevisaoPag').Value := cdsPadrao.FieldByName('idPedidoCompra').AsInteger
  else
    DataSet.FieldByName('nrPrevisaoPag').Value := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idPedidoCompra) id From PedidoCompra').FieldByName('id').AsInteger+1;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('vlPrevisaoPag').Value := cdsPedidoProdvlTotalPed.Value;
  DataSet.FieldByName('dtEmissao').Value := cdsPadrao.FieldByName('dtPedido').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 2; //Inclusão de titulo a pagar
  DataSet.FieldByName('stPrevisaoPag').Value := 'ATIVO'; //Status do titulo
  DataSet.FieldByName('incMes').Value := 'N'; //Mesmo dia

  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadPedidoCompra.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPrevisaoPag.FieldByName('incMes').AsString = 'S');
  if (cdsPrevisaoPag.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
  begin
    GeraParcelas;
  end;
end;

procedure TFrmCadPedidoCompra.DBEdtEntregaExit(Sender: TObject);
begin
  inherited;
  if DBEdtEntrega.Text <> '' then
  begin
    if cdsPedidoProd.State in [dsEdit, dsInsert] then
      cdsPedidoProdqtDiasEntrega.AsString := funcao.DifDias(cdsPadrao.FieldByName('dtPedido').AsDateTime, cdsPedidoProddtEntrega.AsDateTime); //cdsPadrao.FieldByName('dtPedido').AsDateTime - dsPedidoProddtEntrega.AsDateTime;
  end;
end;

procedure TFrmCadPedidoCompra.DBEidMaquinaExit(Sender: TObject);
var
  idProd, idMaquina, idCadProd : integer;
  tem : boolean;
begin
  inherited;

  idProd := cdsPedidoProdidProduto.AsInteger;
  idMaquina := cdsPedidoProdidMaquina.AsInteger;
  if cdsPedidoProd.State in [dsInsert, dsEdit] then
    cdsPedidoProd.Cancel;

  tem := true;
  cdsPedidoProd.IndexFieldNames := 'idProduto;idMaquina';
  if not cdsPedidoProd.FindKey([idProd,idMaquina]) then
  begin
    cdsPedidoProd.IndexFieldNames := 'idProduto';
    if not (idMaquina > 0) then
    begin
      if cdsPedidoProd.FindKey([idProd]) then
      begin
        if cdsPedidoProdidMaquina.AsInteger > 0 then //não é o correto
        begin
          cdsPedidoProd.Filtered := false;
          cdsPedidoProd.Filter := 'idProduto = ' + IntToStr(idProd) + ' AND idMaquina IS NULL';
          cdsPedidoProd.Filtered := true;
          if cdsPedidoProd.IsEmpty then
            tem := false
          else
          begin
            idCadProd := cdsPedidoProdidPedidoProd.AsInteger;
            cdsPedidoProd.IndexFieldNames := 'idPedidoProd';
            if not cdsPedidoProd.FindKey([idCadProd]) then
              tem := false;
          end;
          cdsPedidoProd.Filtered := false;
        end; //  fim do if cdsPedidoProdidMaquina.AsInteger > 0 then //não é o correto
      end
      else
        tem := false;
    end
    else
      tem := false;
  end;
  if not tem then
  begin
    cdsPedidoProd.Append;
    cdsPedidoProdidEmpresa.AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPedidoProdidCadEmpresa.AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPedidoProdidPedidoCompra.AsInteger := cdsPadrao.FieldByName('idPedidoCompra').AsInteger;
    cdsPedidoProdidPedidoProd.AsInteger := 0;
    cdsPedidoProdidProduto.AsInteger := idProd;
    if idMaquina > 0 then
       cdsPedidoProdidMaquina.AsInteger := idMaquina;
  end;

end;

procedure TFrmCadPedidoCompra.DBEidProdutoExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if Trim(DBEidProduto.Text) <> '' then
  begin
    sql := 'SELECT * FROM Produto WHERE idProduto = ' + DBEidProduto.Text;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if FieldByName('stProduto').AsString = 'CANCELADO' then
      begin
        MessageDlg('Produto Cancelado, favor verificar!', mtWarning, [mbOK], 0);
        DBEidProduto.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmCadPedidoCompra.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsPedidoProd.State in [dsEdit, dsInsert]) then
        cdsPedidoProd.Edit;
      cdsPedidoProd.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;
  end
  else
  if Key = VK_F2 then
    frmPrincipal.actCadProduto.Execute;}
end;

procedure TFrmCadPedidoCompra.DBEqtDiasEntregaExit(Sender: TObject);
begin
  inherited;
  if DBEqtDiasEntrega.Text <> '' then
  begin
    if cdsPedidoProd.State in [dsEdit, dsInsert] then
      cdsPedidoProddtEntrega.AsDateTime := cdsPadrao.FieldByName('dtPedido').AsDateTime + cdsPedidoProdqtDiasEntrega.AsInteger;
  end;
end;

procedure TFrmCadPedidoCompra.DBEqtPedidaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPedidoProdqtPedida.AsString;
end;

procedure TFrmCadPedidoCompra.DBEqtPedidaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> cdsPedidoProdqtPedida.AsString then
    if (cdsPedidoProdqtPedida.AsFloat > 0) and (cdsPedidoProdvlProduto.AsFloat > 0) then
      cdsPedidoProdvlTotal.AsFloat := cdsPedidoProdqtPedida.AsFloat * cdsPedidoProdvlProduto.AsFloat
    else
      cdsPedidoProdvlTotal.AsFloat := 0;
end;

procedure TFrmCadPedidoCompra.DBEvlProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPedidoProdvlProduto.AsString;
end;

procedure TFrmCadPedidoCompra.DBEvlProdutoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> cdsPedidoProdvlProduto.AsString then
    if (cdsPedidoProdqtPedida.AsFloat > 0) and (cdsPedidoProdvlProduto.AsFloat > 0) then
      cdsPedidoProdvlTotal.AsFloat := cdsPedidoProdqtPedida.AsFloat * cdsPedidoProdvlProduto.AsFloat
    else
      cdsPedidoProdvlTotal.AsFloat := 0;
end;

procedure TFrmCadPedidoCompra.DBEvlTotalEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPedidoProdvlTotal.AsString;
end;

procedure TFrmCadPedidoCompra.DBEvlTotalExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> cdsPedidoProdvlTotal.AsString then
    if (cdsPedidoProdqtPedida.AsFloat > 0) and (cdsPedidoProdvlTotal.AsFloat > 0) then
      cdsPedidoProdvlProduto.AsFloat :=  cdsPedidoProdvlTotal.AsFloat/cdsPedidoProdqtPedida.AsFloat
    else
      cdsPedidoProdvlProduto.AsFloat := 0;
end;

procedure TFrmCadPedidoCompra.DBMobsPedidoExit(Sender: TObject);
begin
  inherited;
  PagAbas.ActivePageIndex := 1;
  DBEidProduto.SetFocus;
end;

procedure TFrmCadPedidoCompra.DBEidPedidoCompraExit(Sender: TObject);
begin
  inherited;
  cdsPedidoProd.IndexFieldNames := '';
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
  funcao.SomenteLeitura([DBEdtPedido, DBEidProduto, DBEidMaquina, DBEqtPedida,
         DBMobsProduto], (cdsPadrao.FieldByName('stPedido').AsString = 'FECHADO')
           OR (cdsPadrao.FieldByName('stPedido').AsString = 'CANCELADO')
           OR (cdsPadrao.FieldByName('stPedido').AsString = 'PARCIAL') );

  BtnReabrir.Enabled := false;
  if (cdsPadrao.FieldByName('stPedido').AsString = 'TOTAL')
      OR (cdsPadrao.FieldByName('stPedido').AsString = 'CANCELADO')
      OR (cdsPadrao.FieldByName('stPedido').AsString = 'PARCIAL')
      OR (cdsPadrao.FieldByName('stPedido').AsString = 'ENCERRADO') then
  begin
    actSalvar.Enabled := false;
    actExcluir.Enabled := false;
    BtnAdicionarProd.Enabled := false;
    BtnCancelarProd.Enabled := false;
    BtnRetirarProd.Enabled := false;
    BtnNovoProd.Enabled := false;
//    if trim(DBEdescMotivoReab.Text) = '' then --Retirado para poder reabrir quantas vezes for necessário
      BtnReabrir.Enabled := true;
  end;
  BtnCancelarP.Enabled := (cdsPadrao.State in [dsEdit, dsBrowse]) and ((cdsPadrao.FieldByName('stPedido').AsString = 'PARCIAL')
  OR (cdsPadrao.FieldByName('stPedido').AsString = 'ATIVO'));
  BtnEncerrar.Enabled := (cdsPadrao.FieldByName('stPedido').AsString = 'PARCIAL');
  IniciaFinancas;
  if (cdsPadrao.FieldByName('mostraFluxo').AsString = 'N') AND
  (Trim(DBEidPedidoCompra.Text) <> '')  AND
   not(cdsPrevisaoPag.IsEmpty) then
    DBCKmostraFluxo.Enabled := False
  else
    DBCKmostraFluxo.Enabled := True;
end;

procedure TFrmCadPedidoCompra.DBEidPedidoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadPedidoCompra.dspPedidoProdBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspPedidoProd' then
    begin
      GeraAutoInc(DeltaDS, 'PedidoCompraProd', 'idPedidoProd', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadPedidoCompra.dspPrevisaoPagBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspMovCaixa' then
    begin
      GeraAutoInc(DeltaDS, 'MovCaixa', 'idMovCaixa', []);
      DeltaDS.FieldByName('idMovFinanceira').NewValue := 11; //Valor pago pelo caixa
      DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
    end
    else
      if (Sender as TDataSetProvider).Name = 'dspMovConta' then
      begin
        GeraAutoInc(DeltaDS, 'MovConta', 'idMovConta', []);
        DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
        if trim(DeltaDS.FieldByName('idCheque').AsString) = ''  then
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 12 //Valor pago pelo banco
        else
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 7; //Emissão de cheque
      end
      else
        if (Sender as TDataSetProvider).Name = 'dspTituloPag' then
        begin
          GeraAutoInc(DeltaDS, 'TituloPag', 'idTituloPag', []);
          DeltaDS.FieldByName('idEmpresa').NewValue := cdsEmpresa.FieldByName('idEmpresa').Value;
          DeltaDS.FieldByName('idFornecedor').NewValue := cdsPadrao.FieldByName('idFornecedor').Value;
          DeltaDS.FieldByName('dtEmissao').NewValue := cdsPadrao.FieldByName('dtLancamento').Value;
          DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 2; //Inclusão de titulo a pagar
          DeltaDS.FieldByName('stTituloPag').NewValue := 'ATIVO'; //Status do titulo
        end;
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadPedidoCompra.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  BtnExcluir2.Enabled := (cdsPadrao.State = dsBrowse) and (cdsPadrao.FieldByName('stPedido').AsString = 'ATIVO');
end;

procedure TFrmCadPedidoCompra.dsPedidoProdStateChange(Sender: TObject);
var
  qtPedida, qtAtendida : Double;
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsPedidoProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
  if cdsPedidoProd.Active then
    if cdsPedidoProd.RecordCount > 0 then
      BtnCancelarP.Enabled := True
    else
      BtnCancelarP.Enabled := False;
end;

procedure TFrmCadPedidoCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdsPedidoProd.State in [dsInsert, dsEdit] then
    cdsPedidoProd.Cancel;
  cdsPedidoProd.IndexFieldNames := '';
  inherited;
  FrmCadPedidoCompra := nil;
end;

procedure TFrmCadPedidoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsPedidoProd;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidPedidoCompra;
  foco := DBEidPedidoCompra;
  tab_chave := 'PedidoCompra';

  filial := true;
  situacao := 'stPedido';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadPedidoCompra.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actLanPedidoCompra';
  inherited;
  Height := 505;
  Width := 685;
  BtnEncerrar.Enabled := false;

  BtnReabrir.Enabled := false;

  BtnExcluir2.Visible := excluir;
end;

procedure TFrmCadPedidoCompra.GeraParcelas;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  if not cdsPrevisaoPagParc.IsEmpty then
    if messagedlg('Deseja recalcular as parcelas?', mtConfirmation, [mbyes, mbno], 0) = mrno then
      exit;

  if not funcao.VerCampoRequerido([cdsPrevisaoPag], 'idEmpresa,idCadEmpresa,idFornecedor,idSafra,dtEmissao,idMovFinanceira,idPrevisaoPag,nrPrevisaoPag,diasVencimento,prMulta,prJuros,prDesconto,stPrevisaoPag') then
  begin
    PagTituloPag.ActivePageIndex := 0;
    exit;
  end;

  with cdsPrevisaoPag do
  begin
    //preenche os campos que não podem ser nulos
    if trim(FieldByName('diasVencimento').AsString) = '' then
      FieldByName('diasVencimento').Value := 0;
    if trim(FieldByName('prMulta').AsString) = '' then
      FieldByName('prMulta').Value := 0;
    if trim(FieldByName('prJuros').AsString) = '' then
      FieldByName('prJuros').Value := 0;
    if trim(FieldByName('prDesconto').AsString) = '' then
      FieldByName('prDesconto').Value := 0;

    if (not (FieldByName('vlPrevisaoPag').Value > 0)) or
       (not (FieldByName('qtParcelas').Value > 0)) or
       ((not(FieldByName('diasVencimento').Value > 0)) and (FieldByName('incMes').AsString = 'N') and
       (FieldByName('qtParcelas').Value > 1)) or
       (not (trim(FieldByName('dtVencimentoIni').AsString) <> '')) then
    begin
      messagedlg('Para gerar as parcelas são necessários os campos: ' + #13 +
                 'Valor do Titulo; Parcelas; Primeiro Vencimento; Dias entre Parcelas', mterror, [mbok], 0);
      PagTituloPag.ActivePageIndex := 0;
      exit;
    end;
    if (FieldByName('dtVencimentoIni').Value < FieldByName('dtEmissao').Value) then
    begin
      messagedlg('O primeiro vencimento da parcela não pode ser menor que a data de emissão do título!',
                 mterror, [mbok], 0);
      PagTituloPag.ActivePageIndex := 0;
      DBEdtVencimentoIni.SetFocus;
      exit;
    end;

      //limpa a tabela se houverem registros nela
    if not cdsPrevisaoPagParc.IsEmpty then
       begin
         with cdsPrevisaoPagParc do
         begin
           First;
           while not Eof do
           begin
             delete;
             first;
           end;
         end;
         //
       end;

    //GERAÇÃO DAS PARCELAS
    vlParcela := funcao.ArredondaMoeda(FieldByName('vlPrevisaoPag').Value/FieldByName('qtParcelas').AsInteger);
    vlPrimeira := FieldByName('vlPrevisaoPag').Value-(vlParcela*(FieldByName('qtParcelas').AsInteger-1));
    dtParcela := FieldByName('dtVencimentoIni').AsDateTime;
    for i := 1 to FieldByName('qtParcelas').AsInteger do
    begin
      if not(cdsPrevisaoPagParc.Active) then
        cdsPrevisaoPagParc.Open;
      cdsPrevisaoPagParc.Append;
      if trim(FieldByName('idPrevisaoPag').AsString) = '' then
        cdsPrevisaoPagParc.FieldByName('idPrevisaoPag').Value := 0
      else
        cdsPrevisaoPagParc.FieldByName('idPrevisaoPag').Value := FieldByName('idPrevisaoPag').Value;
      cdsPrevisaoPagParc.FieldByName('idParcela').Value := i;
//      if not (cdsTituloPagParc.FieldByName('dtVencimento').AsDateTime <> FieldByName('dtVencimentoIni').AsDateTime) then
        cdsPrevisaoPagParc.FieldByName('dtVencimento').Value := dtParcela;
      cdsPrevisaoPagParc.FieldByName('stPrevisaoPagParc').AsString := 'ATIVO';
      if i = 1 then
        cdsPrevisaoPagParc.FieldByName('vlParcela').Value := vlPrimeira
      else
        cdsPrevisaoPagParc.FieldByName('vlParcela').Value := vlParcela;
      cdsPrevisaoPagParc.Post;
      if FieldByName('incMes').AsString = 'S' then
        dtParcela := IncMonth(FieldByName('dtVencimentoIni').AsDateTime, i)
      else
        dtParcela := dtParcela + FieldByName('diasVencimento').Value;
    end; //fim do for i := 1 to FieldByName('qtParcelas').AsInteger do
  end; //fim do with cdsTituloPag do
  SomaParcelas;
end;

procedure TFrmCadPedidoCompra.GerarPDF;
begin
  if trim(DBEidPedidoCompra.Text) = '' then
    exit;
  funcao.AbreFrm(TfrmRelPedidoCompra, TForm(frmRelPedidoCompra));
  FrmRelPedidoCompra.cdsEmpresa.FieldByName('idEmpresa').AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
  FrmRelPedidoCompra.cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
  FrmRelPedidoCompra.cdsPadraoidFornecedor.AsInteger := cdsPadrao.FieldByName('idFornecedor').AsInteger;
  FrmRelPedidoCompra.cdsPadraoidPedidoIni.AsInteger := cdsPadrao.FieldByName('idPedidoCompra').AsInteger;
  FrmRelPedidoCompra.cdsPadraoidPedidoFim.AsInteger := cdsPadrao.FieldByName('idPedidoCompra').AsInteger;
  FrmRelPedidoCompra.par := 2;
  FrmRelPedidoCompra.pdf := true;
  FrmRelPedidoCompra.actGerar.Execute;
end;

procedure TFrmCadPedidoCompra.IniciaFinancas;
begin
  cdsPrevisaoPag.Active := false;
  cdsPrevisaoPag.CommandText := 'SELECT * FROM PrevisaoPag WHERE 1=2';
  cdsPrevisaoPag.Active := true;
  cdsPrevisaoPagParc.Active := false;
  cdsPrevisaoPagParc.CommandText := 'SELECT * FROM PrevisaoPagParc WHERE 1=2';
  if (trim(DBEidFornecedor.Text) <> '') then
  begin
    if cdsPadrao.State <> dsInsert then
    begin
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidPedidoCompra], '', 'PedidoCompraFinanc') do
      begin
        if IsEmpty then
          exit;
        if FieldByName('idPrevisaoPag').Value > 0 then
        begin
          cdsPrevisaoPag.Active := False;
          cdsPrevisaoPag.CommandText := 'SELECT * FROM PrevisaoPag WHERE idPrevisaoPag = ' + FieldByName('idPrevisaoPag').AsString;
          cdsPrevisaoPagParc.Active := False;
          cdsPrevisaoPagParc.CommandText := 'SELECT * FROM PrevisaoPagParc WHERE idPrevisaoPag = ' + FieldByName('idPrevisaoPag').AsString;
        end;
      end; // fim do with
    end; // fim do if cdsPadrao.state then
  end;

  cdsPrevisaoPag.Active := true;
  cdsPrevisaoPagParc.Active := True;

  TabTituloPag.Enabled := (cdsPrevisaoPag.RecordCount = 0) Or (cdsPrevisaoPag.FieldByName('stPrevisaoPag').asString = 'ATIVO');
  cdsPrevisaoPagParc.Active := true;
end;

procedure TFrmCadPedidoCompra.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
    begin
      Height := 505;
      Width := 685;
    end
    else
    if PagAbas.ActivePageIndex = 1 then
      begin
        Height := 505;
        Width := 685;
        DBEidProduto.SetFocus;
      end
      else
        if PagAbas.ActivePageIndex = 2 then
          begin
            Height := 340;
            Width := 685;
          end;
end;

procedure TFrmCadPedidoCompra.SomaParcelas;
begin
  vlTotalParcelas := 0;
  With cdsPrevisaoPagParc do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlTotalParcelas := vlTotalParcelas + FieldByName('vlParcela').AsCurrency;
      Next;
    end;
    First;
  end;
end;

end.
