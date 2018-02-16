unit uFrmCadCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CCheckBox, CDBCheckBox,
  CDBRadioGroup, uFrmCadPadraoEmpCont, EditAlign, CEdit, System.Actions,
  System.ImageList;

type
  TFrmCadCotacao = class(TFrmCadPadraoEmpCont)
    sdsCotacao: TSQLDataSet;
    actCadCidade: TAction;
    sdsCotacaoProd: TSQLDataSet;
    dspCotacaoProd: TDataSetProvider;
    cdsCotacaoProd: TClientDataSet;
    dsCotacaoProd: TDataSource;
    CGroupBox13: TCGroupBox;
    CLabel2: TCLabel;
    DBEdtCotacao: TCDBEdit;
    DBEidCotacao: TCDBEdit;
    CLabel14: TCLabel;
    CGroupBox1: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox2: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox4: TCGroupBox;
    DBEstCotacao: TCDBEdit;
    CLabel25: TCLabel;
    DBEqtProduto: TCDBEdit;
    CLabel3: TCLabel;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel5: TCLabel;
    DBMobsCotacao: TCDBMemo;
    CLabel4: TCLabel;
    CLabel7: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    cdsProduto: TClientDataSet;
    cdsMaquina: TClientDataSet;
    FindCotacao: TCFind;
    LookCriterioCompra: TCLookUp;
    DBEidCriterioCompra: TCDBEdit;
    CLabel6: TCLabel;
    TabFornecedor: TTabSheet;
    CPanelGradient1: TCPanelGradient;
    Bevel3: TBevel;
    CLabel11: TCLabel;
    DBEidFornecedor: TCDBEdit;
    dsFornecedor: TDataSource;
    cdsFornecedor: TClientDataSet;
    dsCotacaoFornecedorProd: TDataSource;
    cdsCotacaoFornecedorProd: TClientDataSet;
    dspCotacaoFornecedorProd: TDataSetProvider;
    sdsCotacaoFornecedorProd: TSQLDataSet;
    cdsCotacaoFornecedorProdidEmpresa: TIntegerField;
    cdsCotacaoFornecedorProdidCotacao: TIntegerField;
    cdsCotacaoFornecedorProdidFornecedor: TIntegerField;
    cdsCotacaoFornecedorProdidProduto: TIntegerField;
    cdsCotacaoFornecedorProdvlProduto: TFMTBCDField;
    cdsCotacaoFornecedorProdidCondicaoPgto: TSmallintField;
    cdsCotacaoFornecedorProdqtDiasEntrega: TSmallintField;
    cdsCotacaoFornecedorProdsugerido: TStringField;
    cdsCotacaoFornecedorProdfechado: TStringField;
    cdsCotacaoFornecedorProddescProduto: TStringField;
    cdsCotacaoFornecedorProddescMaquina: TStringField;
    cdsCondicaoPgto: TClientDataSet;
    cdsCotacaoFornecedorProddescCondicaoPgto: TStringField;
    cdsCotacaoFornecedorProdPrazoMedio: TIntegerField;
    BtnSalvarFor: TCBitBtn;
    GridFornecedor: TCDBGrid;
    dspFornecedor: TDataSetProvider;
    sdsFornecedor: TSQLDataSet;
    CPanelGradient2: TCPanelGradient;
    TabSugestao: TTabSheet;
    CPanelGradient3: TCPanelGradient;
    Bevel4: TBevel;
    GridProdutoSugestao: TCDBGrid;
    CPanelGradient4: TCPanelGradient;
    CLabel9: TCLabel;
    dsCotacaoSugestao: TDataSource;
    cdsCotacaoSugestao: TClientDataSet;
    dspCotacaoSugestao: TDataSetProvider;
    sdsCotacaoSugestao: TSQLDataSet;
    cdsCotacaoSugestaoidEmpresa: TIntegerField;
    cdsCotacaoSugestaoidCotacao: TIntegerField;
    cdsCotacaoSugestaoidFornecedor: TIntegerField;
    cdsCotacaoSugestaodescCadFornecedor: TStringField;
    cdsCotacaoSugestaoidProduto: TIntegerField;
    cdsCotacaoSugestaodescProduto: TStringField;
    cdsCotacaoSugestaodescMaquina: TStringField;
    cdsCotacaoSugestaoordem: TSmallintField;
    cdsCotacaoSugestaovlProduto: TFMTBCDField;
    cdsCotacaoSugestaoptvlProduto: TFMTBCDField;
    cdsCotacaoSugestaodescCondicaoPgto: TStringField;
    cdsCotacaoSugestaoptCondicaoPgto: TFMTBCDField;
    cdsCotacaoSugestaoqtDiasEntrega: TSmallintField;
    cdsCotacaoSugestaoptQtDiasEntrega: TFMTBCDField;
    cdsCotacaoSugestaoptTotal: TFMTBCDField;
    GridCotacaoFornecedorProd: TCDBGrid;
    GridSugestaoFornecedor: TCDBGrid;
    cdsCotacaoSugestaofechado: TStringField;
    cdsCotacaoProdidEmpresa: TIntegerField;
    cdsCotacaoProdidCotacao: TIntegerField;
    cdsCotacaoProdidCotacaoProd: TSmallintField;
    cdsCotacaoProdidProduto: TIntegerField;
    cdsCotacaoProdqtProduto: TFMTBCDField;
    cdsCotacaoProddescProduto: TStringField;
    BtnGeraSugestao: TCBitBtn;
    TabFechamento: TTabSheet;
    BtnFechamento: TCBitBtn;
    DBEidCotacaoProd: TCDBEdit;
    CPanelGradient5: TCPanelGradient;
    CLabel8: TCLabel;
    DBEdescCadFornecedor: TCDBEdit;
    CLabel1: TCLabel;
    dsRetUltimaCompra: TDataSource;
    cdsRetUltimaCompra: TClientDataSet;
    cdsRetUltimaCompramsg: TStringField;
    cdsRetUltimaCompraidFornecedor: TIntegerField;
    cdsRetUltimaCompradescCadFornecedor: TStringField;
    cdsRetUltimaCompradtUltimaCompra: TSQLTimeStampField;
    cdsRetUltimaCompravlUltimaCompra: TFMTBCDField;
    cdsRetUltimaCompradescProduto: TStringField;
    DBEdtUltimaCompra: TCDBEdit;
    CLabel10: TCLabel;
    DBEvlUltimaCompra: TCDBEdit;
    CLabel12: TCLabel;
    CPanelGradient6: TCPanelGradient;
    CLabel13: TCLabel;
    CPanelGradient7: TCPanelGradient;
    BtnGerarPedido: TCBitBtn;
    DBGridFechamento: TCDBGrid;
    DBEvlTotalGeral: TCDBEdit;
    CLabel15: TCLabel;
    dsCotacaoFecha: TDataSource;
    cdsCotacaoFecha: TClientDataSet;
    dspCotacaoFecha: TDataSetProvider;
    sdsCotacaoFecha: TSQLDataSet;
    cdsCotacaoFechaidEmpresa: TIntegerField;
    cdsCotacaoFechaidCotacao: TIntegerField;
    cdsCotacaoFechaidFornecedor: TIntegerField;
    cdsCotacaoFechadescCadFornecedor: TStringField;
    cdsCotacaoFechaidProduto: TIntegerField;
    cdsCotacaoFechadescProduto: TStringField;
    cdsCotacaoFechaordem: TSmallintField;
    cdsCotacaoFechavlProduto: TFMTBCDField;
    cdsCotacaoFechaptvlProduto: TFMTBCDField;
    cdsCotacaoFechadescCondicaoPgto: TStringField;
    cdsCotacaoFechaptCondicaoPgto: TFMTBCDField;
    cdsCotacaoFechaqtDiasEntrega: TSmallintField;
    cdsCotacaoFechaptQtDiasEntrega: TFMTBCDField;
    cdsCotacaoFechaptTotal: TFMTBCDField;
    cdsCotacaoFechafechado: TStringField;
    cdsCotacaoFechaqtProduto: TFMTBCDField;
    cdsCotacaoFechavlTotalProd: TFMTBCDField;
    cdsCotacaoFechavlTotalGeral: TAggregateField;
    cdsCotacaoFornecedorProdcodFabricante: TStringField;
    cdsCotacaoProdcodFabricante: TStringField;
    cdsCotacaoFornecedorProdidCotacaoProd: TSmallintField;
    cdsCotacaoFornecedorProdidCotacaoFornecedor: TSmallintField;
    cdsCotacaoSugestaocodFabricante: TStringField;
    LookCondicaoPgto: TCLookUp;
    DBEidCondicaoPgto: TCDBEdit;
    CLabel16: TCLabel;
    DBEcodFabricante: TCDBEdit;
    CLabel17: TCLabel;
    DBEdescProduto: TCDBEdit;
    CLabel18: TCLabel;
    DBEdescMaquina: TCDBEdit;
    CLabel19: TCLabel;
    DBEvlProduto: TCDBEdit;
    CLabel20: TCLabel;
    DBEqtDiasEntrega: TCDBEdit;
    CLabel21: TCLabel;
    BtnAtualizarProd: TCBitBtn;
    dsCotacaoFornecedor: TDataSource;
    cdsCotacaoFornecedor: TClientDataSet;
    dspCotacaoFornecedor: TDataSetProvider;
    sdsCotacaoFornecedor: TSQLDataSet;
    cdsCotacaoFornecedoridEmpresa: TIntegerField;
    cdsCotacaoFornecedoridCotacao: TIntegerField;
    cdsCotacaoFornecedoridFornecedor: TIntegerField;
    cdsCotacaoFornecedoridCotacaoFornecedor: TIntegerField;
    cdsCotacaoFornecedordescContato: TStringField;
    cdsCotacaoFornecedoridCondicaoPgto: TSmallintField;
    cdsCotacaoFornecedordtEnvio: TSQLTimeStampField;
    cdsCotacaoFornecedordtRetorno: TSQLTimeStampField;
    cdsCotacaoFornecedorobsCotacaoFornecedor: TStringField;
    DBEdescContato: TCDBEdit;
    CLabel22: TCLabel;
    CLookUp2: TCLookUp;
    DBEidCondicaoPgtoF: TCDBEdit;
    CLabel23: TCLabel;
    DBEdtEnvio: TCDBEdit;
    CLabel24: TCLabel;
    DBEdtRetorno: TCDBEdit;
    CLabel26: TCLabel;
    cdsCotacaoFornecedordescCadFornecedor: TStringField;
    cdsCotacaoFornecedordescAbreviada: TStringField;
    cdsCotacaoSugestaoidCotacaoProd: TSmallintField;
    TabPedidos: TTabSheet;
    CPanelGradient8: TCPanelGradient;
    CLabel27: TCLabel;
    CPanelGradient9: TCPanelGradient;
    BtnImprimir: TCBitBtn;
    CDBGrid2: TCDBGrid;
    sdsPedido: TSQLDataSet;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    dsPedido: TDataSource;
    cdsPedidoidEmpresa: TIntegerField;
    cdsPedidoidCadEmpresa: TSmallintField;
    cdsPedidoidPedidoCompra: TIntegerField;
    cdsPedidoidFornecedor: TIntegerField;
    cdsPedidodescCadFornecedor: TStringField;
    cdsPedidodtPedido: TSQLTimeStampField;
    cdsPedidostPedido: TStringField;
    cdsPedidoidCotacao: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCotacao: TIntegerField;
    cdsPadraodtCotacao: TSQLTimeStampField;
    cdsPadraoidCriterioCompra: TSmallintField;
    cdsPadraoobsCotacao: TStringField;
    cdsPadraostCotacao: TStringField;
    BtnImprimirCotacao: TCBitBtn;
    CBitBtn8: TCBitBtn;
    LookProdMedida: TCLookUp;
    cdsCotacaoFornecedorProdmarca: TStringField;
    DBEmarca: TCDBEdit;
    CLabel28: TCLabel;
    BtnImprimirSugestao: TCBitBtn;
    EDObs: TCEdit;
    cdsCotacaoFechacodFabricante: TStringField;
    cdsCotacaoFechaidCotacaoProd: TSmallintField;
    cdsCotacaoFechamarca: TStringField;
    cdsCotacaoSugestaomarca: TStringField;
    cdsCotacaoSugestaoidCondicaoPgto: TSmallintField;
    cdsCotacaoSugestaodescContato: TStringField;
    CLookUp1: TCLookUp;
    CLookUp3: TCLookUp;
    dsCotacaoFilial: TDataSource;
    cdsCotacaoFilial: TClientDataSet;
    cdsCotacaoFilialidEmpresa: TIntegerField;
    cdsCotacaoFilialidCadEmpresa: TIntegerField;
    cdsCotacaoFilialqtde: TFloatField;
    dspEmpresaFiscal: TDataSetProvider;
    sdsEmpresaFiscal: TSQLDataSet;
    cdsEmpresaFiscal: TClientDataSet;
    cdsCotacaoFechaidCadEmpresa: TIntegerField;
    cdsCotacaoFilialdescEmpresa: TStringField;
    cdsCotacaoFilialdescFantasia: TStringField;
    cdsCotacaoFilialidCotacaoProd: TIntegerField;
    cdsCotacaoFilialsomaqtde: TAggregateField;
    cdsTmpFilial: TClientDataSet;
    sdsTmpFilial: TSQLDataSet;
    dspTmpFilial: TDataSetProvider;
    cdsTmpFilialidEmpresa: TIntegerField;
    cdsTmpFilialidCadEmpresa: TIntegerField;
    cdsTmpFilialidCotacao: TIntegerField;
    cdsTmpFilialidCotacaoProd: TIntegerField;
    cdsTmpFilialidProduto: TIntegerField;
    cdsTmpFilialqtProduto: TFMTBCDField;
    BtnExcluirProd: TCBitBtn;
    BtnExcluirForn: TCBitBtn;
    cdsCotacaoProdidMaquina: TIntegerField;
    cdsCotacaoProddescMaquina: TStringField;
    cdsCotacaoFornecedorProdidMaquina: TIntegerField;
    cdsCotacaoFechaidMaquina: TIntegerField;
    cdsCotacaoFechadescMaquina: TStringField;
    cdsCotacaoFechaidCondicaoPgto: TSmallintField;
    cdsCotacaoFechadescContato: TStringField;
    cdsTmpFilialidMaquina: TIntegerField;
    procedure cdsCotacaoProdAfterEdit(DataSet: TDataSet);
    procedure dspCotacaoProdBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsCotacaoProdAfterInsert(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidCotacaoExit(Sender: TObject);
    procedure dsCotacaoProdStateChange(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    constructor create (Formulario: TComponent; Parametro: Array of String);
    procedure BtnSalvarForClick(Sender: TObject);
    procedure cdsCotacaoProdAfterScroll(DataSet: TDataSet);
    procedure BtnGeraSugestaoClick(Sender: TObject);
    procedure cdsCotacaoSugestaovlProdutoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsCotacaoFornecedorProdvlProdutoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure GridSugestaoFornecedorDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure GridSugestaoFornecedorCellClick(Column: TColumn);
    procedure GridSugestaoFornecedorColEnter(Sender: TObject);
    procedure cdsCotacaoFornecedorProdAfterScroll(DataSet: TDataSet);
    procedure BtnFechamentoClick(Sender: TObject);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidCotacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsCotacaoFornecedorStateChange(Sender: TObject);
    procedure dsCotacaoFornecedorProdStateChange(Sender: TObject);
    procedure BtnAtualizarProdClick(Sender: TObject);
    procedure cdsCotacaoFornecedoridCondicaoPgtoValidate(Sender: TField);
    procedure BtnGerarPedidoClick(Sender: TObject);
    procedure ConsPedidos;
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnImprimirCotacaoClick(Sender: TObject);
    procedure BtnImprimirSugestaoClick(Sender: TObject);
    procedure DBEidFornecedorEnter(Sender: TObject);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure cdsCotacaoFornecedorAfterScroll(DataSet: TDataSet);
    procedure cdsCotacaoFornecedorAfterInsert(DataSet: TDataSet);
    procedure BuscaCotacaoProd;
    procedure DBGridFechamentoDblClick(Sender: TObject);
    procedure LimpaCotacaoFilial;
    procedure cdsCotacaoFilialAfterInsert(DataSet: TDataSet);
    procedure RetornaDados;
    procedure InsereTabela;
    procedure BtnExcluirProdClick(Sender: TObject);
    procedure BtnExcluirFornClick(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
  private
    { Private declarations }
    idCotacao : integer;
    fechar : boolean;
    FOriginalOptions : TDBGridOptions;
    vlAnterior : string;
  public
    { Public declarations }
  end;

var
  FrmCadCotacao: TFrmCadCotacao;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmCadRequisicao,
  uFrmPesProduto, uFrmPesCotacao, uFrmRelCotacao, uFrmRelPedidoCompra,
  uFrmRelCotacaoValor, uFrmCotacaoFilial;

{$R *.dfm}

procedure TFrmCadCotacao.actNovoExecute(Sender: TObject);
begin
  funcao.SomenteLeitura([DBEdtCotacao, DBMobsCotacao, DBEidProduto, DBEidMaquina, DBEqtProduto,
         DBMobsCotacao, DBEidCriterioCompra, BtnAdicionarProd, BtnCancelarProd,
         BtnRetirarProd, BtnNovoProd, DBEidFornecedor, DBEdescContato, DBEdtEnvio,
         DBEdtRetorno, DBEidCondicaoPgtoF, DBEvlProduto, DBEidCondicaoPgto, DBEqtDiasEntrega, DBEmarca], false );
  TabFechamento.TabVisible := false;
  TabPedidos.TabVisible := false;
  inherited;
end;

procedure TFrmCadCotacao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesCotacao, FrmPesCotacao);
  FrmPesCotacao.idEmpresa := cdsEmpresaidEmpresa.AsInteger;
  FrmPesCotacao.ShowModal;
  if FrmPesCotacao.idCotacao <> 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;
    cdsEmpresaidEmpresa.AsInteger := FrmPesCotacao.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmPesCotacao.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idCotacao').AsInteger := FrmPesCotacao.idCotacao;
    DBEidCotacao.SetFocus;
    DBEidCotacaoExit(DBEidCotacao);
  end;
end;

procedure TFrmCadCotacao.actSalvarExecute(Sender: TObject);
begin
  if cdsCotacaoProd.State in [dsInsert, dsEdit] then
    cdsCotacaoProd.Cancel;

  if cdsCotacaoProd.RecordCount = 0 then
  begin
    messagedlg('Cotação sem produtos! Não pode ser gravada!', mtwarning, [mbok],0);
    exit;
  end;
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadCotacao.BtnAdicionarProdClick(Sender: TObject);
var
  ins : boolean;
begin
  inherited;
  ins := false;
  if ((sender as tcbitbtn).Name = 'BtnAdicionarProd') and (cdsCotacaoProd.State = dsInsert) then
    ins := true;

  if ((sender as tcbitbtn).Name = 'BtnRetirarProd') and (cdsPadrao.State = dsEdit) then
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa,DBEidCotacao,DBEidCotacaoProd], 'spExcluiProdCotacao');

  funcao.GravaSec(chave, cdsCotacaoProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), 'idCotacaoProd');
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
  begin
    if (ins) and (cdsCotacaoFornecedor.RecordCount > 0) then
    begin
      if messagedlg('Já existem fornecedores lançados para essa cotação! ' + #13 +
                    'Deseja adicionar mais esse produto?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        cdsCotacaoProd.ApplyUpdates(0);
        BtnSalvar.Click;

        cdsCotacaoFornecedor.First;
        while not cdsCotacaoFornecedor.Eof do
        begin
          if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCotacao, DBEidFornecedor, DBEidCotacaoProd], 'spGeraCotFornecedor') then
          begin
            BuscaCotacaoProd;
          end;
          cdsCotacaoFornecedor.Next;
        end;
        cdsCotacaoFornecedor.First;
      end;
    end;
    BtnNovoProd.Click;
  end;

  DBEidProduto.SetFocus;
end;

procedure TFrmCadCotacao.BtnAtualizarProdClick(Sender: TObject);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
  cdsCotacaoFornecedorProd.Post;
  cdsCotacaoFornecedorProd.ApplyUpdates(0);
  if cdsCotacaoFornecedorProd.Eof then
    cdsCotacaoFornecedorProd.First
  else
    cdsCotacaoFornecedorProd.Next;
  DBEvlProduto.SetFocus;
end;

procedure TFrmCadCotacao.BtnExcluirFornClick(Sender: TObject);
var
  msg, sql : string;
begin
  inherited;
  if trim(DBEidFornecedor.Text) = '' then
  begin
    msg := 'Selecione um fornecedor!';
    messagedlg(msg, mtconfirmation, [mbok], 0);
    exit;
  end;

  msg := 'Tem certeza que quer excluir o Fornecedor, seus produtos e cotações? ';
  if messagedlg(msg, mtconfirmation, [mbyes, mbno], 0, mbno) = mrno then
    exit;

  dmPadrao.dbConexao.CloseDataSets;

  cdsCotacaoFornecedorProd.First;
  while not cdsCotacaoFornecedorProd.Eof do
  begin
    cdsCotacaoFornecedorProd.Delete;
    cdsCotacaoFornecedorProd.First;
  end;

  dmPadrao.dbConexao.CloseDataSets;
  cdsCotacaoFornecedorProd.ApplyUpdates(0);

  dmPadrao.dbConexao.CloseDataSets;
  //exclui as sugestões desse fornecedor
  sql := 'DELETE FROM CotacaoSugestao WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCotacao = ' + DBEidCotacao.Text + ' AND idFornecedor = ' + DBEidFornecedor.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  //por fim exclui o fornecedor

  cdsCotacaoFornecedor.Delete;
  dmPadrao.dbConexao.CloseDataSets;
  cdsCotacaoFornecedor.ApplyUpdates(0);
end;

procedure TFrmCadCotacao.BtnExcluirProdClick(Sender: TObject);
var
  msg : string;
begin
  inherited;
  if cdsCotacaoFornecedorProd.RecordCount <= 0 then
    exit;

  msg := 'Tem certeza que quer excluir o Produto: ' + #13 +
         cdsCotacaoFornecedorProddescProduto.AsString + #13 +
         'Fornecedor: ' + cdsCotacaoFornecedordescCadFornecedor.AsString;
  if messagedlg(msg, mtconfirmation, [mbyes, mbno], 0, mbno) = mrno then
    exit;

  dmPadrao.dbConexao.CloseDataSets;
  cdsCotacaoFornecedorProd.Delete;
  cdsCotacaoFornecedorProd.ApplyUpdates(0);
end;

procedure TFrmCadCotacao.BtnFechamentoClick(Sender: TObject);
begin
  inherited;
  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCotacao], 'spFechaCotacao') then
  begin
    fechar := true;
    cdsCotacaoFecha.Active := false;
    cdsCotacaoFecha.CommandText := 'SELECT vcot.*, prod.qtProduto, CONVERT(MONEY, vcot.vlProduto * prod.qtProduto)' +
                             ' AS vlTotalProd FROM vCotacaoSugestao vcot INNER JOIN CotacaoProd prod ON vcot.idEmpresa =' +
                             ' prod.idEmpresa AND vcot.idCotacao = prod.idCotacao AND vcot.idCotacaoProd = prod.idCotacaoProd AND' +
                             ' vcot.fechado = ' + QuotedStr('S') + ' WHERE vcot.idEmpresa = ' + DBEidEmpresa.Text +
                             ' AND vcot.idCotacao = ' + DBEidCotacao.Text;
    cdsCotacaoFecha.Active := true;
    TabFechamento.TabVisible := true;
    Width := 900;
    PagAbas.ActivePageIndex := 3;
  end;
  //Executa procedimento que popula os dados da tabela Cotação Filial
  cdsCotacaoFecha.First;
  while not cdsCotacaoFecha.Eof do
  begin
    RetornaDados;
    cdsCotacaoFecha.Next;
  end;
  cdsCotacaoFilial.Filtered := false;
end;

procedure TFrmCadCotacao.BtnGerarPedidoClick(Sender: TObject);
var
  obs : string;
begin
  inherited;
  if cdsCotacaoFecha.IsEmpty then
  begin
    messagedlg('Sem dados!', mtwarning, [mbok], 0);
    exit;
  end;
  InsereTabela;
  InputQuery('Informe a observação do pedido! Máximo de 250 caracteres...', 'Observação', obs);
  EDobs.Text := obs;
  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCotacao, EDobs], 'spGeraPedidoCompra') then
  begin
    DBEidCotacaoExit(DBEidCotacao);
    ConsPedidos;
    PagAbas.ActivePageIndex := 4;
  end;
end;

procedure TFrmCadCotacao.BtnGeraSugestaoClick(Sender: TObject);
begin
  inherited;
  if cdsCotacaoSugestao.RecordCount > 0 then
    if messagedlg('Já existe uma sugestão, deseja continuar mesmo assim?', mtconfirmation, [mbyes,mbno], 0) = mrno then
      exit;

  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCotacao], 'spGeraSugestaoCompra') then
    cdsCotacaoProd.First;
end;

procedure TFrmCadCotacao.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if cdsPedido.IsEmpty then
    exit;
  funcao.AbreFrm(TfrmRelPedidoCompra, TForm(frmRelPedidoCompra));
  FrmRelPedidoCompra.cdsEmpresa.FieldByName('idEmpresa').AsInteger := cdsPedidoidEmpresa.AsInteger;
  FrmRelPedidoCompra.cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := cdsPedidoidCadEmpresa.AsInteger;
  FrmRelPedidoCompra.cdsPadraoidFornecedor.AsInteger := cdsPedidoidFornecedor.AsInteger;
  FrmRelPedidoCompra.cdsPadraoidPedidoIni.AsInteger := cdsPedidoidPedidoCompra.AsInteger;
  FrmRelPedidoCompra.cdsPadraoidPedidoFim.AsInteger := cdsPedidoidPedidoCompra.AsInteger;
  FrmRelPedidoCompra.par := 2;
  FrmRelPedidoCompra.actGerar.Execute;
end;

procedure TFrmCadCotacao.BtnImprimirCotacaoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmRelCotacao, FrmRelCotacao);
  FrmRelCotacao.cdsEmpresa.FieldByName('idEmpresa').AsInteger := cdsEmpresaidEmpresa.AsInteger;
  FrmRelCotacao.cdsPadraoidFornecedor.AsInteger := cdsCotacaoFornecedoridFornecedor.AsInteger;
  FrmRelCotacao.cdsPadraoidCotacaoIni.AsInteger := cdsCotacaoFornecedoridCotacao.AsInteger;
  FrmRelCotacao.cdsPadraoidCotacaoFim.AsInteger := cdsCotacaoFornecedoridCotacao.AsInteger;
  FrmRelCotacao.par := 2;
  FrmRelCotacao.actGerar.Execute;
end;

procedure TFrmCadCotacao.BtnImprimirSugestaoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmRelCotacaoValor, FrmRelCotacaoValor);
  FrmRelCotacaoValor.cdsEmpresa.FieldByName('idEmpresa').AsInteger := cdsEmpresaidEmpresa.AsInteger;
  FrmRelCotacaoValor.cdsPadraoidFornecedor.AsInteger := cdsCotacaoFornecedoridFornecedor.AsInteger;
  FrmRelCotacaoValor.cdsPadraoidCotacaoIni.AsInteger := cdsCotacaoFornecedoridCotacao.AsInteger;
  FrmRelCotacaoValor.cdsPadraoidCotacaoFim.AsInteger := cdsCotacaoFornecedoridCotacao.AsInteger;
  FrmRelCotacaoValor.par := 2;
  FrmRelCotacaoValor.actGerar.Execute;

end;

procedure TFrmCadCotacao.BtnSalvarForClick(Sender: TObject);
begin
  inherited;
  cdsCotacaoFornecedor.Post;
  cdsCotacaoFornecedor.ApplyUpdates(0);
  cdsCotacaoFornecedorProd.First;
  cdsCotacaoFornecedor.Append;
  DBEidFornecedor.SetFocus;
end;

procedure TFrmCadCotacao.BuscaCotacaoProd;
begin
  cdsCotacaoFornecedorProd.Active := false;
  if trim(DBEidFornecedor.Text) = ''  then
  begin
    cdsCotacaoFornecedorProd.CommandText := 'SELECT * FROM CotacaoFornecedorProd WHERE 1=2';
  end
  else
    cdsCotacaoFornecedorProd.CommandText := 'SELECT * FROM CotacaoFornecedorProd WHERE idEmpresa = ' +
       DBEidEmpresa.Text + ' AND idCotacao = ' + DBEidCotacao.Text + ' AND idFornecedor = ' +
       DBEidFornecedor.Text;

  cdsCotacaoFornecedorProd.Active := true;
  cdsCotacaoFornecedorProd.First;
end;

procedure TFrmCadCotacao.ConsPedidos;
begin
  with cdsPedido do
  begin
    Active := false;
    CommandText := 'SELECT * FROM vCotacaoPedidoCompra WHERE ';
    if trim(DBEidCotacao.Text) = '' then
      CommandText := CommandText + ' 1=2'
    else
      CommandText := CommandText + ' idEmpresa = ' + DBEidEmpresa.Text + ' AND idCotacao = ' + DBEidCotacao.Text;
    Active := true;
  end;
end;

constructor TFrmCadCotacao.create(Formulario: TComponent;
  Parametro: array of String);
begin
  inherited create(formulario);
  idCotacao := StrToInt(Parametro[0]);
end;

procedure TFrmCadCotacao.cdsCotacaoFilialAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsInteger := cdsEmpresaidEmpresa.AsInteger;
end;

procedure TFrmCadCotacao.cdsCotacaoFornecedorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCotacaoFornecedoridEmpresa.AsInteger := cdsPadraoidEmpresa.AsInteger;
  cdsCotacaoFornecedoridCotacao.AsInteger := cdsPadraoidCotacao.AsInteger;
  cdsCotacaoFornecedoridCotacaoFornecedor.AsInteger := 0;
end;

procedure TFrmCadCotacao.cdsCotacaoFornecedorAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BuscaCotacaoProd;
end;

procedure TFrmCadCotacao.cdsCotacaoFornecedoridCondicaoPgtoValidate(
  Sender: TField);
var
  sql : string;
begin
  inherited;
  if trim(DBEidFornecedor.Text) = ''  then
    exit;

  if trim(DBEidCondicaoPgto.Text) = ''  then
    exit;

  if messagedlg('Alterar para todos os produtos?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    sql := 'UPDATE CotacaoFornecedorProd SET idCondicaoPgto = ' + cdsCotacaoFornecedoridCondicaoPgto.AsString +
       ' WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCotacao = ' + DBEidCotacao.Text + ' AND idFornecedor = ' +
       DBEidFornecedor.Text;
    dmPadrao.dbConexao.ExecuteDirect(sql);
    BuscaCotacaoProd;
  end;
end;

procedure TFrmCadCotacao.cdsCotacaoFornecedorProdAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not Dataset.IsEmpty then
  begin
    cdsRetUltimaCompra.Active := false;
    cdsRetUltimaCompra.CommandText := 'EXEC spRetProdUltimaCompra ' + cdsCotacaoFornecedorProdidProduto.AsString;
    cdsRetUltimaCompra.Active := true;
  end;
end;

procedure TFrmCadCotacao.cdsCotacaoFornecedorProdvlProdutoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatCurr('#,##0.00', Sender.AsFloat);
end;

procedure TFrmCadCotacao.cdsCotacaoProdAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadCotacao.cdsCotacaoProdAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;

end;

procedure TFrmCadCotacao.cdsCotacaoProdAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (not cdsCotacaoProd.IsEmpty) and (PagAbas.ActivePageIndex = 2) then // não está limpa e está na aba de sugestão
  begin
    cdsCotacaoSugestao.Active := false;
    cdsCotacaoSugestao.CommandText := 'SELECT * FROM vCotacaoSugestao WHERE idEmpresa = ' + DBEidEmpresa.Text +
      ' AND idCotacao = ' + DBEidCotacao.Text + ' AND idCotacaoProd = ' + cdsCotacaoProdidCotacaoProd.AsString +
      ' ORDER BY ordem ';
    cdsCotacaoSugestao.Active := true;
  end;
  
end;

procedure TFrmCadCotacao.cdsCotacaoSugestaovlProdutoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatCurr('#,##0.00', Sender.AsFloat);
end;

procedure TFrmCadCotacao.DBEidMaquinaExit(Sender: TObject);
var
  idProd : string;
begin
  inherited;
  if not (BuscaChaveSec(cdsCotacaoProd, [DBEidProduto, DBEidMaquina])) then
    if (trim(DBEidMaquina.Text) = '') and (trim(DBEidProduto.Text) <> '') then
    begin
      idProd := DBEidProduto.Text;
      with cdsCotacaoProd do
      begin
        if State in [dsEdit, dsInsert] then
          Cancel;
        IndexFieldNames := 'idProduto';
        First;
        while not Eof do
        begin
          if (FieldByName('idProduto').AsString = idProd) and (FieldByName('idMaquina').AsString = '') then
            exit;
          Next;
        end; // fim do while not Eof do
        Append;
        FieldByName('idProduto').AsString := idProd;
      end; //fim do with cdsRequisicaoProd
    end;
end;

procedure TFrmCadCotacao.DBEidCotacaoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
  funcao.SomenteLeitura([DBEdtCotacao, DBMobsCotacao, DBEidProduto, DBEidMaquina, DBEqtProduto, DBEidCriterioCompra,
       BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, DBEidFornecedor, DBEdescContato,
       DBEdtEnvio, DBEdtRetorno, DBEidCondicaoPgtoF, DBEvlProduto, DBEidCondicaoPgto, DBEqtDiasEntrega, DBEmarca],
       cdsPadrao.FieldByName('stCotacao').AsString <> 'ATIVO' );
  fechar := false;
  GridCotacaoFornecedorProd.Enabled := true;
  if cdsPadrao.FieldByName('stCotacao').AsString <> 'ATIVO' then
  begin
    actSalvar.Enabled := false;
    BtnAdicionarProd.Enabled := false;
    BtnCancelarProd.Enabled := false;
    BtnRetirarProd.Enabled := false;
    BtnNovoProd.Enabled := false;
    GridCotacaoFornecedorProd.Enabled := false;
    if cdsPadrao.FieldByName('stCotacao').AsString = 'FECHADO' then
    begin
      fechar := true;
    end;
  end;
  BtnGeraSugestao.Enabled := cdsPadrao.FieldByName('stCotacao').AsString = 'ATIVO';
  TabFechamento.TabVisible := cdsPadrao.FieldByName('stCotacao').AsString = 'FECHADO';
  TabPedidos.TabVisible := cdsPadrao.FieldByName('stCotacao').AsString = 'FECHADO';

  GridSugestaoFornecedor.Enabled := cdsPadrao.FieldByName('stCotacao').AsString <> 'FECHADO';
  BtnGerarPedido.Enabled := cdsPadrao.FieldByName('stCotacao').AsString <> 'FECHADO';
  ConsPedidos;
  cdsCotacaoFornecedor.Active := false;
  if trim(DBEidCotacao.Text) <> '' then
    cdsCotacaoFornecedor.CommandText := 'SELECT * FROM CotacaoFornecedor WHERE idEmpresa = ' + DBEidEmpresa.Text +
       ' AND idCotacao = ' + DBEidCotacao.Text
  else
    cdsCotacaoFornecedor.CommandText := 'SELECT * FROM CotacaoFornecedor WHERE 1=2';
  cdsCotacaoFornecedor.Active := true;
  cdsCotacaoFornecedor.Edit;

  BuscaCotacaoProd;
  //trata os botões que vão ficar habilitados

  //Limpa a tabela temporária de cotação por filial
  LimpaCotacaoFilial;

  if cdsPadrao.FieldByName('stCotacao').AsString <> 'ATIVO' then
    if cdsPedido.RecordCount > 0 then
      actExcluir.Enabled := false;
end;

procedure TFrmCadCotacao.DBEidCotacaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadCotacao.DBEidFornecedorEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidFornecedor.Text;
end;

procedure TFrmCadCotacao.DBEidFornecedorExit(Sender: TObject);
var
  idFornecedor : integer;
begin
  inherited;
  if (trim(vlAnterior) <> trim(DBEidFornecedor.Text)) and (trim(DBEidFornecedor.Text) <> '') then
  begin
    idFornecedor := cdsCotacaoFornecedoridFornecedor.AsInteger;
    cdsCotacaoFornecedor.Cancel;
    cdsCotacaofornecedor.IndexFieldNames := 'idFornecedor';
    if not cdsCotacaoFornecedor.FindKey([idFornecedor]) then
    begin
      cdsCotacaoFornecedor.Append;
      cdsCotacaoFornecedoridFornecedor.AsInteger := idFornecedor;
      cdsCotacaoFornecedoridCotacaoFornecedor.AsInteger := 1;
      cdsCotacaoFornecedor.Post;
      cdsCotacaoFornecedor.ApplyUpdates(0);
      if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCotacao, DBEidFornecedor, nil], 'spGeraCotFornecedor') then
      begin
        BuscaCotacaoProd;
      end;
      cdsCotacaoFornecedor.Edit;
    end;
  end;
end;

procedure TFrmCadCotacao.DBEidProdutoExit(Sender: TObject);
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

procedure TFrmCadCotacao.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsCotacaoProd.State in [dsEdit, dsInsert]) then
        cdsCotacaoProd.Edit;
      cdsCotacaoProd.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;
  end
  else
  if Key = VK_F2 then
    frmPrincipal.actCadProduto.Execute;}
end;

procedure TFrmCadCotacao.DBGridFechamentoDblClick(Sender: TObject);
begin
  inherited;
  if cdsCotacaoFecha.RecordCount > 0 then
  begin
    Application.CreateForm(TFrmCotacaoFilial, TForm(FrmCotacaoFilial));
    cdsEmpresaFiscal.Active := false;
    cdsEmpresaFiscal.CommandText := 'SELECT * FROM vCadEmpresaFiscal WHERE idEmpresa = ' + DBEidEmpresa.Text;
    cdsEmpresaFiscal.Active := true;
    FrmCotacaoFilial.ShowModal;
  end;
end;

procedure TFrmCadCotacao.dspCotacaoProdBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspCotacaoProd' then
      GeraAutoInc(DeltaDS, 'CotacaoProd', 'idCotacaoProd', chave)
    else
      if (Sender as TDataSetProvider).Name = 'dspCotacaoFornecedor' then
        GeraAutoInc(DeltaDS, 'CotacaoFornecedor', 'idCotacaoFornecedor', chave);
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadCotacao.dsCotacaoFornecedorProdStateChange(Sender: TObject);
begin
  inherited;
  BtnAtualizarProd.Enabled := cdsCotacaoFornecedorProd.State in [dsEdit, dsInsert];
end;

procedure TFrmCadCotacao.dsCotacaoFornecedorStateChange(Sender: TObject);
begin
  inherited;
  BtnSalvarFor.Enabled := cdsCotacaoFornecedor.State in [dsEdit, dsInsert];
end;

procedure TFrmCadCotacao.dsCotacaoProdStateChange(Sender: TObject);
begin
  inherited;
  if cdsPadraostCotacao.AsString = 'FECHADO' then
    exit;
  funcao.HabilitaBotoesSec(cdsCotacaoProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadCotacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsCotacaoFilial.IndexFieldNames := '';
  inherited;
  FrmCadCotacao := nil;
end;

procedure TFrmCadCotacao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCotacaoProd;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCotacao;
  foco := DBEidCotacao;
  tab_chave := 'Cotacao';
  situacao := 'stCotacao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  cdsCotacaoFilial.CreateDataSet;
end;

procedure TFrmCadCotacao.FormShow(Sender: TObject);
begin
  action := 'actLanCotacao';
  inherited;
  Height := 558;
  Width := 665;
  if idCotacao > 0 then //carrega a cotaçao chamada
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idCotacao').AsInteger := idCotacao;
    DBEidCotacaoExit(DBEidCotacao);
    
  end;
  TabFechamento.TabVisible := false;
  TabPedidos.TabVisible := false;
  Self.FOriginalOptions := Self.GridCotacaoFornecedorProd.Options;

  cdsCotacaoFechavlProduto.OnGetText := funcao.FieldGetText;
  cdsCotacaoFechavlTotalProd.OnGetText := funcao.FieldGetText;

  ///Cria o dataset de memória para a divisão de empresas no cotação filial

  cdsCotacaoFornecedor.Active := false;
  cdsCotacaoFornecedor.CommandText := 'SELECT * FROM CotacaoFornecedor WHERE 1=2';
  cdsCotacaoFornecedor.Active := true;

  cdsCotacaoFilial.IndexFieldNames := 'idEmpresa;idCadEmpresa';
end;

procedure TFrmCadCotacao.GridSugestaoFornecedorCellClick(Column: TColumn);
var
  bm : TBookmark;
  registro : integer;
begin
  inherited;
  if not GridSugestaoFornecedor.Enabled then
    exit;
  if Column.Index = 0 then
  begin
    with cdsCotacaoSugestao do
    begin
      if IsEmpty then
        exit;
      Self.GridSugestaoFornecedor.Options := Self.GridSugestaoFornecedor.Options - [dgEditing];
      Edit;
      if FieldByName('fechado').AsString = 'S' then
      begin
        FieldByName('fechado').AsString := 'N';
        Post;
      end
      else
      begin
        FieldByName('fechado').AsString := 'S';
        Post;
        //se estiver clicando para selecionar terá que desabilitar os demais
        bm := GetBookmark;
        registro := RecNo;
        First;
        while not Eof do
        begin
          if RecNo <> registro then
          begin
            Edit;
            FieldByName('fechado').AsString := 'N';
            Post;
          end;
          Next;
        end;
        GotoBookmark(bm);
        FreeBookmark(bm);
      end;
      ApplyUpdates(0);
      GridSugestaoFornecedor.Refresh;
    end; //fim do with cdsCotacaoSugestao do
  end //fim do if Column.Index = 0 then
  else
    Self.GridSugestaoFornecedor.Options := Self.FOriginalOptions;
end;

procedure TFrmCadCotacao.GridSugestaoFornecedorColEnter(Sender: TObject);
begin
  inherited;
  if GridSugestaoFornecedor.SelectedIndex > 0 then
    Self.GridSugestaoFornecedor.Options := Self.FOriginalOptions;
end;

procedure TFrmCadCotacao.GridSugestaoFornecedorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
begin
  inherited;
  marca := false;
  if cdsCotacaoSugestao.FieldByName('fechado').Value = 'S' then
    marca := true;

  if (Column.Index = 9) and (not marca) then
  begin
    GridSugestaoFornecedor.Canvas.Brush.Color := $00EFEFEF; // coloque aqui a cor desejada
    GridSugestaoFornecedor.DefaultDrawDataCell(Rect, GridSugestaoFornecedor.columns[datacol].field, State);
  end
  else
    if (marca) and (Column.Index > 0) then
    begin
      GridSugestaoFornecedor.Canvas.Brush.Color := $00588D8D; // coloque aqui a cor desejada
      GridSugestaoFornecedor.DefaultDrawDataCell(Rect, GridSugestaoFornecedor.columns[datacol].field, State);
    end;

  if (Column.Index = 0) then
  begin
    Self.GridSugestaoFornecedor.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.GridSugestaoFornecedor.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
  end;
end;

procedure TFrmCadCotacao.InsereTabela;
var
  sql : string;
begin
  sql := 'DELETE FROM tmpCotacaoFilial';
  dmPadrao.dbConexao.ExecuteDirect(sql);

  with FrmCadCotacao.cdsCotacaoFilial do
  begin
    //Desabilitar filtro
    Filtered := false;
    First;
    cdsTmpFilial.Active := false;
    cdsTmpFilial.Active := true;

    while not eof do
    begin
      cdsTmpFilial.Append;
      cdsTmpFilialidEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
      cdsTmpFilialidCadEmpresa.AsInteger := FieldByName('idCadEmpresa').AsInteger;
      cdsTmpFilialidCotacaoProd.AsInteger := FieldByName('idCotacaoProd').AsInteger;
      cdsTmpFilialqtProduto.AsFloat := FieldByName('qtde').AsFloat;
      cdsTmpFilialidCotacao.AsInteger := cdsCotacaoFechaidCotacao.AsInteger;
      cdsTmpFilial.Post;
      cdsTmpFilial.ApplyUpdates(0);
      Next;
    end;
  end;
  cdsTmpFilial.Active := false;
end;

procedure TFrmCadCotacao.LimpaCotacaoFilial;
begin
  with cdsCotacaoFilial do
  begin
    Last;
    while not Eof do
    begin
      Delete;
      Prior;
    end;
  end;
end;

procedure TFrmCadCotacao.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 558;
    Width := 665;
    PanBotoes.Visible := true;
  end
  else
    PanBotoes.Visible := false;
    if PagAbas.ActivePageIndex in [1,2,3] then
    begin
      if cdsCotacaoProd.RecordCount = 0 then
      begin
        messagedlg('Cotação sem produtos! Não pode ser gravada!', mtwarning, [mbok],0);
        PagAbas.ActivePageIndex := 0;
        DBEdtCotacao.SetFocus;
        exit;
      end;

      if ((trim(DBEidCotacao.Text) = '') or (cdsPadrao.State = dsInsert)) then
      begin
        messagedlg('Você deve selecionar uma cotação!', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        DBEdtCotacao.SetFocus;
        Height := 558;
        Width := 665;
        PanBotoes.Visible := true;
        exit;
      end;

      Height := 568;
      Width := 800;
      if PagAbas.ActivePageIndex = 1 then
      begin
        BtnExcluirProd.Enabled := cdsPadraostCotacao.AsString = 'ATIVO';
        BtnExcluirForn.Enabled := cdsPadraostCotacao.AsString = 'ATIVO';
      end
      else
      if PagAbas.ActivePageIndex = 2 then
      begin
         cdsCotacaoSugestao.Active := false;
         cdsCotacaoSugestao.CommandText := 'SELECT * FROM vCotacaoSugestao WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCotacao = ' + DBEidCotacao.Text + ' AND idProduto = ' + cdsCotacaoFornecedorProdidProduto.AsString +
         ' ORDER BY ordem ';
         cdsCotacaoSugestao.Active := true;
         Width := 750;
      end
      else
        if PagAbas.ActivePageIndex = 3 then
        begin
          Width := 900;
          cdsCotacaoFecha.Active := false;
          cdsCotacaoFecha.CommandText := 'SELECT vcot.*, prod.qtProduto, CONVERT(MONEY, vcot.vlProduto * prod.qtProduto)' +
                             ' AS vlTotalProd FROM vCotacaoSugestao vcot INNER JOIN CotacaoProd prod ON vcot.idEmpresa =' +
                             ' prod.idEmpresa AND vcot.idCotacao = prod.idCotacao AND vcot.idCotacaoProd = prod.idCotacaoProd AND' +
                             ' vcot.fechado = ' + QuotedStr('S') + ' WHERE vcot.idEmpresa = ' + DBEidEmpresa.Text +
                             ' AND vcot.idCotacao = ' + DBEidCotacao.Text;
          if not fechar then
            cdsCotacaoFecha.CommandText := cdsCotacaoFecha.CommandText + ' AND 1=2';

          cdsCotacaoFecha.Active := true;
        end;

    end;
  //  else

end;

procedure TFrmCadCotacao.RetornaDados;
var
  sql : string;
  temReq : boolean;
begin
  with cdsCotacaoFilial do
  begin
    Filtered := false;
    Filter := 'idCotacaoProd = ' + cdsCotacaoFechaidCotacaoProd.AsString;
    Filtered := true;

    if not (IsEmpty) then
      exit;

    sql := 'SELECT idCotacaoProd, idCadEmpresa, SUM(qtSolicitada) qtSolicitada FROM RequisicaoProdCot WHERE idEmpresa = ' +
           cdsCotacaoFechaidEmpresa.AsString + ' AND idCotacao = ' +
           cdsCotacaoFechaidCotacao.AsString + 'AND idCotacaoProd = ' +
           cdsCotacaoFechaidCotacaoProd.AsString + ' GROUP BY idCotacaoProd, idCadEmpresa';
    temReq := false;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not IsEmpty then
      begin
        temReq := true;
        First;
        while not Eof do
        begin
          cdsCotacaoFilial.Append;
          cdsCotacaoFilial.FieldByName('idCadEmpresa').AsInteger := FieldByName('idCadEmpresa').AsInteger;
          cdsCotacaoFilial.FieldByName('qtde').AsFloat := FieldByName('qtSolicitada').AsFloat;
          cdsCotacaoFilial.FieldByName('idCotacaoProd').AsInteger := FieldByName('idCotacaoProd').AsInteger;
          cdsCotacaoFilial.Post;
          Next;
        end; //im do while not Eof do
      end; // fim do if not IsEmpty then
    end; //with frmPrincipal.ExecutaSQLRet([], '', sql) do  }
    if not temReq then
    begin
      Append;
      FieldByName('idCadEmpresa').AsInteger := 1;
      FieldByName('qtde').AsFloat := cdsCotacaoFechaqtProduto.AsFloat;
      FieldByName('idCotacaoProd').AsInteger := cdsCotacaoFechaidCotacaoProd.AsInteger;
      Post;
    end;
  end; //with FrmCadCotacao.cdsCotacaoFilial
end;//procedure TFrmCotacaoFilial.retornadados;

end.
