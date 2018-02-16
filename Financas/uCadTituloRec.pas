unit uCadTituloRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, CFind, ActnList, ImgList, DB, Provider,
  DBClient, StdCtrls, EditAlign, CEdit, ExtCtrls, CLookUp, Buttons, CBitBtn,
  ComCtrls, CPageControl, CStatusBar, CLabel, Mask, DBCtrls, CDBEdit, CDBMemo,
  FMTBcd, SqlExpr, CPanelGradient, CGroupBox, Grids, DBGrids, CDBGrid,
  CRadioButton, Math, CDBCheckBox, DBXCommon, uRecError, CPanel, System.Actions,
  System.ImageList;

type
  TFrmCadTituloRec = class(TFrmCadPadraoEmpFiscal)
    sdsTituloRec: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel5: TCLabel;
    DBEtpDocumento: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtEmissao: TCDBEdit;
    CLabel7: TCLabel;
    DBEvlTituloRec: TCDBEdit;
    CLabel11: TCLabel;
    DBEidResultado: TCDBEdit;
    CLabel12: TCLabel;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    DBMobsTituloRec: TCDBMemo;
    CLabel20: TCLabel;
    CLabel17: TCLabel;
    DBEprMulta: TCDBEdit;
    CLabel18: TCLabel;
    DBEprJuros: TCDBEdit;
    CLabel19: TCLabel;
    DBEprDesconto: TCDBEdit;
    DBEdiasVencimento: TCDBEdit;
    CLabel16: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel15: TCLabel;
    DBEqtParcelas: TCDBEdit;
    CLabel14: TCLabel;
    FindSerie: TCFind;
    FindCliente: TCFind;
    CLabel21: TCLabel;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    FindBanco: TCFind;
    CLabel22: TCLabel;
    LookLancamento: TCLookUp;
    CBitBtn2: TCBitBtn;
    FindIndice: TCFind;
    FindMovFinanceira: TCFind;
    CBitBtn4: TCBitBtn;
    FindRateio: TCFind;
    CBitBtn5: TCBitBtn;
    CBitBtn6: TCBitBtn;
    CLabel23: TCLabel;
    DBEidSafra: TCDBEdit;
    CBitBtn7: TCBitBtn;
    FindSafra: TCFind;
    sdsTituloRecParc: TSQLDataSet;
    dspTituloRecParc: TDataSetProvider;
    cdsTituloRecParc: TClientDataSet;
    dsTituloRecParc: TDataSource;
    TabParcelas: TTabSheet;
    CGroupBox6: TCGroupBox;
    CLabel24: TCLabel;
    DBEidParcela: TCDBEdit;
    CGroupBox7: TCGroupBox;
    CDBGrid2: TCDBGrid;
    GrpBtnParcelas: TCGroupBox;
    BtnSalvarParc: TCBitBtn;
    BtnCancelarParc: TCBitBtn;
    BtnExcluirParc: TCBitBtn;
    BtnNovoParc: TCBitBtn;
    CLabel25: TCLabel;
    DBEvlParcela: TCDBEdit;
    CLabel26: TCLabel;
    DBEdtVencimento: TCDBEdit;
    CLabel27: TCLabel;
    DBEstTituloRecParc: TCDBEdit;
    CLabel28: TCLabel;
    LblTotal: TCLabel;
    CLabel29: TCLabel;
    LblRestante: TCLabel;
    TabRateio: TTabSheet;
    sdsTituloRecRat: TSQLDataSet;
    dspTituloRecRat: TDataSetProvider;
    cdsTituloRecRat: TClientDataSet;
    dsTituloRecRat: TDataSource;
    cdsTituloRateio: TClientDataSet;
    dsTituloRateio: TDataSource;
    cdsTituloRateioidEmpresa: TIntegerField;
    cdsTituloRateioidResultado: TIntegerField;
    cdsTituloRateioidGerencial: TIntegerField;
    cdsTituloRateioprRateio: TFloatField;
    cdsTituloRateiovlRateio: TCurrencyField;
    GrpRateioParc: TCGroupBox;
    CLabel38: TCLabel;
    CLabel40: TCLabel;
    CGroupBox2: TCGroupBox;
    CLabel30: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    DBEidParcelaR: TCDBEdit;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    RBRatTitulo2: TCRadioButton;
    RBRatParcela2: TCRadioButton;
    CGroupBox4: TCGroupBox;
    CGroupBox3: TCGroupBox;
    CLabel31: TCLabel;
    LblTotalRat: TCLabel;
    CLabel37: TCLabel;
    LblRestanteRat: TCLabel;
    BtnSalvarRat: TCBitBtn;
    BtnCancelarRat: TCBitBtn;
    BtnExcluirRat: TCBitBtn;
    BtnNovoRat: TCBitBtn;
    GrpRateioTitulo: TCGroupBox;
    CLabel36: TCLabel;
    CLabel39: TCLabel;
    CGroupBox9: TCGroupBox;
    CLabel41: TCLabel;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    CLabel44: TCLabel;
    CLabel45: TCLabel;
    DBEvlTituloRecR: TCDBEdit;
    DBEidResultadoRT: TCDBEdit;
    DBEidGerencialRT: TCDBEdit;
    DBEprRateioRT: TCDBEdit;
    DBEvlRateioRT: TCDBEdit;
    RBRatTitulo: TCRadioButton;
    RBRatParcela: TCRadioButton;
    CGroupBox10: TCGroupBox;
    CDBGrid3: TCDBGrid;
    CGroupBox11: TCGroupBox;
    CLabel46: TCLabel;
    LblTotalRatTit: TCLabel;
    CLabel48: TCLabel;
    LblRestanteRatTit: TCLabel;
    BtnSalvarRatTit: TCBitBtn;
    BtnCancelarRatTit: TCBitBtn;
    BtnExcluirRatTit: TCBitBtn;
    BtnNovoRatTit: TCBitBtn;
    DBEidGerencialR: TCDBEdit;
    CLabel32: TCLabel;
    CLabel33: TCLabel;
    DBEidResultadoR: TCDBEdit;
    cdsResultado: TClientDataSet;
    CDBGrid1: TCDBGrid;
    cdsTituloRateiodescResultado: TStringField;
    DBEvlParcelaR: TCDBEdit;
    cdsTituloRateioidTituloRec: TIntegerField;
    cdsTituloRecRatdescResultado: TStringField;
    DBCKincMes: TCDBCheckBox;
    sdsTituloRecMov: TSQLDataSet;
    dspTituloRecMov: TDataSetProvider;
    cdsTituloRecMov: TClientDataSet;
    dsTituloRecMov: TDataSource;
    TabMovimentacao: TTabSheet;
    CGroupBox12: TCGroupBox;
    CDBGrid4: TCDBGrid;
    CGroupBox13: TCGroupBox;
    cdsTituloRecMovidTituloRecMov: TIntegerField;
    cdsTituloRecMovidEmpresa: TIntegerField;
    cdsTituloRecMovidCliente: TIntegerField;
    cdsTituloRecMovidTituloRec: TIntegerField;
    cdsTituloRecMovidParcela: TSmallintField;
    cdsTituloRecMovidMovFinanceira: TIntegerField;
    cdsTituloRecMovdtTituloRecMov: TSQLTimeStampField;
    cdsTituloRecMovvlTituloRecMov: TFMTBCDField;
    cdsTituloRecMovfator: TSmallintField;
    cdsMovFinanceira: TClientDataSet;
    cdsTituloRecMovdescMovFinanceira: TStringField;
    CGroupBox5: TCGroupBox;
    CLabel47: TCLabel;
    CLabel49: TCLabel;
    DBEvlTituloRecMov: TCDBEdit;
    DBEidMovFinanceiraM: TCDBEdit;
    CLabel53: TCLabel;
    DBEdtTituloRecMov: TCDBEdit;
    LookMovFinanceiraM: TCLookUp;
    LookResultado: TCLookUp;
    LookGerenciaR: TCLookUp;
    FindGerencialR: TCFind;
    FindResultado: TCFind;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    CLookUp3: TCLookUp;
    CLookUp4: TCLookUp;
    BtnExcluir2: TCBitBtn;
    actExcluir2: TAction;
    BtnAlterarMov: TCBitBtn;
    BtnExcluirMov: TCBitBtn;
    DBEidTituloRecMov: TCDBEdit;
    CBitBtn9: TCBitBtn;
    actCancelaParc: TAction;
    cdsTituloRecRatidTituloRec: TIntegerField;
    cdsTituloRecRatidParcela: TSmallintField;
    cdsTituloRecRatidEmpresa: TIntegerField;
    cdsTituloRecRatidResultado: TIntegerField;
    cdsTituloRecRatidGerencial: TIntegerField;
    cdsTituloRecRatprRateio: TFMTBCDField;
    cdsTituloRecRatvlRateio: TFMTBCDField;
    cdsTituloRecRatidCadEmpresa: TSmallintField;
    cdsTituloRateioidCadEmpresa: TIntegerField;
    cdsTituloRecMovidCadEmpresa: TSmallintField;
    panDados: TCPanel;
    DBEnrTituloRec: TCDBEdit;
    CLabel1: TCLabel;
    LookDocSerie: TCLookUp;
    DBEidDocSerie: TCDBEdit;
    CLabel3: TCLabel;
    DBEidTituloRec: TCDBEdit;
    CLabel60: TCLabel;
    DBEstTituloRec: TCDBEdit;
    CLabel4: TCLabel;
    LookCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    CLabel9: TCLabel;
    LookSafra: TCLookUp;
    cdsTituloRecMovvlRealIndice: TFMTBCDField;
    LookBanco: TCLookUp;
    CBitBtn1: TCBitBtn;
    DBEidBanco: TCDBEdit;
    CLabel8: TCLabel;
    LookMovFinanceira: TCLookUp;
    DBEidMovFinanceira: TCDBEdit;
    CLabel10: TCLabel;
    CLabel50: TCLabel;
    DBEvlSaldoParc: TCDBEdit;
    cdsTituloRecMovvlSaldoParc: TAggregateField;
    procedure DBEtpDocumentoEnter(Sender: TObject);
    procedure DBEidParcelaExit(Sender: TObject);
    procedure actCancelaParcExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure cdsTituloRecMovAfterScroll(DataSet: TDataSet);
    procedure BtnExcluirMovClick(Sender: TObject);
    procedure BtnAlterarMovClick(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actExcluir2Execute(Sender: TObject);
    procedure DBEvlParcelaExit(Sender: TObject);
    procedure DBEvlParcelaEnter(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidRateioEnter(Sender: TObject);
    procedure DBEidGerencialEnter(Sender: TObject);
    procedure DBEidResultadoEnter(Sender: TObject);
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure DBEidResultadoRTExit(Sender: TObject);
    procedure DBEnrTituloRecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dspTituloRecParcBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsTituloRecMovAfterInsert(DataSet: TDataSet);
    procedure DBCKincMesExit(Sender: TObject);
    procedure DBEprRateioRTExit(Sender: TObject);
    procedure DBEprRateioRTEnter(Sender: TObject);
    procedure dsTituloRateioStateChange(Sender: TObject);
    procedure DBMobsTituloRecExit(Sender: TObject);
    procedure RBRatParcelaClick(Sender: TObject);
    procedure RBRatTitulo2Click(Sender: TObject);
    procedure BtnSalvarRatTitClick(Sender: TObject);
    procedure cdsTituloRecRatAfterInsert(DataSet: TDataSet);
    procedure dsTituloRecRatStateChange(Sender: TObject);
    procedure BtnSalvarRatClick(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEvlTituloRecEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEvlTituloRecExit(Sender: TObject);
    procedure dsTituloRecParcStateChange(Sender: TObject);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure cdsTituloRecParcAfterInsert(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidClienteExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure LookLancamentoSetText(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEnrTituloRecExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    function GeraParcelas: boolean;
    procedure SomaParcelas;
    procedure SomaRateio;
    procedure SomaRateioTit;
    procedure HabilitaRatRes;
    procedure GeraRateioTitulo;
    procedure GeraRateioParcela(tipo: byte);
    procedure FiltraRateio;
    procedure GeraMovimentacao;
    constructor create (Formulario: TComponent; Parametro: array of String);
    procedure ExcluiParc;
    procedure CDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AtualizaResultado;
    procedure cdsTituloRecParcAfterEdit(DataSet: TDataSet);
    procedure DBEdtEmissaoEnter(Sender: TObject);
    procedure BtnCancelarParcClick(Sender: TObject);
    procedure ReplicaInformacoes;
    function ValidaPermissao(Tipo : string) : Boolean;
  private
    { Private declarations }
    vlTotalParcelas : Currency;
    vlTotalRateio : Currency;
    vlTotalRateioTit : Currency;
    vlAnterior : string;
    id, idContratoVenda, ContratoRomaneio : string;
    parcelaDif : boolean;
    idRomaneio : integer;
  public
     excluiRec : boolean;
     idAdiantamento, idMovFinanceira : integer;
    { Public declarations }
    idTitulo : string;
    idCliente, idDocSerie : string;
  end;

var
  FrmCadTituloRec: TFrmCadTituloRec;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPesTituloRec,
  uFrmPadrao, uFrmAlteraRec, uFrmPesTitulos, uFrmCadContratoVenda,
  uFrmCadRomaneio, uFrmCadAdiantamento;

{$R *.dfm}

procedure TFrmCadTituloRec.actCancelaParcExecute(Sender: TObject);
var
sql : string;
begin
  inherited;
  if (((trim(cdsTituloRecParc.FieldByName('stTituloRecParc').AsString)) = ('ATIVO'))OR
     ((trim(cdsTituloRecParc.FieldByName('stTituloRecParc').AsString)) = ('ABERTO')) ) then
  begin
    if messagedlg('Deseja cancelar a parcela selecionada !', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      sql := 'UPDATE TituloRecParc SET stTituloRecParc = ' + QuotedStr('CANCELADO') +
             ' WHERE idTituloRec = ' + cdsPadrao.FieldByName('idTituloRec').AsString +
             ' AND idParcela = ' + cdsTituloRecParc.FieldByName('idParcela').AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  end
  else
  begin
    messagedlg('Para Cancelar a parcela e necessário que esteja Ativa !',mtInformation, [mbOk], 0);
  end;

  DBEnrTituloRecExit(DBEnrTituloRec);
end;

procedure TFrmCadTituloRec.actExcluir2Execute(Sender: TObject);
var
  sql : string;
  bNotaFiscal : boolean;
begin
  inherited;
  if messagedlg('Deseja realmente excluir o titulo selecionado!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    bNotaFiscal := (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nffinanc where idTituloRec = ' + cdsPadrao.FieldByName('idTituloRec').Text).FieldByName('qtd').AsInteger > 0);

    //como correu tudo ok grava a tabela de movimentações gerais
    sql := 'EXEC spGeraMovGeral ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
           DBEidTituloRec.Text + ', ';
    if bNotaFiscal then
      sql := sql + QuotedStr('TRECF')
    else
      sql := sql + QuotedStr('TREC');

    sql := sql + ', ' + QuotedStr('E');

    if bNotaFiscal then
      if messagedlg('O Título seleciona está relacionado a uma nota fiscal!'  + #13 +
                    'Excluindo por aqui a nota continuará ativa! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloRec], '', 'ContratoVendaFinanc').RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a um Contrato de Compra!'  + #13 +
                    'Excluindo o contrato ficará sem título! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloRec], '', 'ContratoVendaTitulo').RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a um Contrato de Compra!'  + #13 +
                    'Excluindo o contrato ficará sem título! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloRec], '', 'RomaneioFinanc').RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a um Romaneio de Venda!'  + #13 +
                    'Excluindo o Romaneio ficará sem título! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);

    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloRec], 'spExcluiTituloRec') then
    begin
      actNovo.Execute;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  end;
end;

procedure TFrmCadTituloRec.actExcluirExecute(Sender: TObject);
var
  sql : String;
  bNotaFiscal : boolean;
begin

   bNotaFiscal := (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nffinanc where idTituloRec = ' + cdsPadrao.FieldByName('idTituloRec').Text).FieldByName('qtd').AsInteger > 0);

    if bNotaFiscal then
    begin
      messagedlg('O Título selecionado está relacionado a uma nota fiscal!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloRec], '', 'ContratoVendaFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um Contrato de Venda!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloRec], '', 'ContratoVendaTitulo').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um Contrato de Venda!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloRec], '', 'RomaneioFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um Romaneio de Venda!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

   inherited;

   DBEnrTituloRecExit(DBEnrTituloRec);

   sql := 'UPDATE TituloRecParc SET stTituloRecParc = '+ quotedstr('CANCELADO')+ 'WHERE idTituloRec = '+ DBEidTituloRec.Text;
   dmPadrao.dbConexao.ExecuteDirect(sql);

   if trim(sql) <> '' then
    dmPadrao.dbConexao.ExecuteDirect(sql);

   //como correu tudo ok grava a tabela de movimentações gerais
   sql := 'EXEC spGeraMovGeral ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
          DBEidTituloRec.Text + ', ';
   if bNotaFiscal then
     sql := sql + QuotedStr('TRECF')
   else
     sql := sql + QuotedStr('TREC');

    sql := sql + ', ' + QuotedStr('E');
   dmPadrao.dbConexao.ExecuteDirect(sql);
end;

procedure TFrmCadTituloRec.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  actCancelar.Execute;  
  Application.CreateForm(TFrmPesTituloRec, FrmPesTituloRec);
  FrmPesTituloRec.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesTituloRec.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesTituloRec.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesTituloRec.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesTituloRec.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesTituloRec.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesTituloRec.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesTituloRec.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      //FieldByName('idTituloRec').Value := FrmPesTituloRec.cdsGrid.FieldByName('idTituloRec').Value;
      FieldByName('idEmpresa').Value := FrmPesTituloRec.cdsGrid.FieldByName('idEmpresa').Value;
      FieldByName('idCadEmpresa').Value := FrmPesTituloRec.cdsGrid.FieldByName('idCadEmpresa').Value;
      FieldByName('idCliente').Value := FrmPesTituloRec.cdsGrid.FieldByName('idCliente').Value;
      FieldByName('nrTituloRec').Value := FrmPesTituloRec.cdsGrid.FieldByName('nrTituloRec').Value;
      FieldByName('idDocSerie').Value := FrmPesTituloRec.cdsGrid.FieldByName('idDocSerie').Value;
      DBEnrTituloRec.SetFocus;
    end;
  end;
  PagAbas.ActivePageIndex := 0;
  DBEnrTituloRec.SetFocus;
  excluiRec := true;
  DBEnrTituloRecExit(DBEnrTituloRec);
end;

procedure TFrmCadTituloRec.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  tr : byte;
  nrTituloRec, sql, sqlContrato : string;
  bNotaFiscal : boolean;
  idAdiantamentoMov : integer;
begin
  if (cdsTituloRecParc.IsEmpty) then
  begin
    if messagedlg('Parcelas não geradas! Gerar agora?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      if not GeraParcelas then
        exit;
    end
    else
      exit;
  end;

  ReplicaInformacoes;

  //Verifica se o valor do titulo está fechando com o valor de Parcelas
  if (cdsPadrao.FieldByName('vlTituloRec').AsCurrency <> vlTotalParcelas) and (not (cdsTituloRecParc.IsEmpty)) then
    raise Exception.Create('Valor das parcelas diferente do valor do título!');
  //Valores obrigatórios
  if trim(DBEdiasVencimento.Text) = '' then
    cdsPadrao.FieldByName('diasVencimento').Value := 0;
  if trim(DBEprJuros.Text) = '' then
    cdsPadrao.FieldByName('prJuros').Value := 0;
  if trim(DBEprMulta.Text) = '' then
    cdsPadrao.FieldByName('prMulta').Value := 0;
  if trim(DBEprDesconto.Text) = '' then
    cdsPadrao.FieldByName('prDesconto').Value := 0;
  nrTituloRec := DBEnrTituloRec.Text;
  //Gera o número do titulo caso não tenha sido digitado e esteja inserindo
  if (cdsPadrao.State in [dsInsert]) and (trim(DBEnrTituloRec.Text) = '') then
  begin
    if trim(DBEidDocSerie.Text) = '' then
    begin
      messagedlg('Você deve informar a série do documento!', mtwarning, [mbok], 0);
      exit;
    end; //fim do if trim(DBEidDocSerie.Text) = '' then
    //busca o último número do titulo na procedure
    cdsPadrao.FieldByName('nrTituloRec').Value := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidDocSerie], 'spRetNrTituloRec', '').FieldByName('nrTituloRec').AsString;
  end; //fim do if (cdsPadrao in [dsInsert]) and (trim(DBEnrTituloRec.Text) = '') then

  //********************************************************************************//
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  //
  If (cdsTituloRecRat.IsEmpty) Then
     Begin
       //
       If frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL' Then
          Begin
            //
            ShowMessage('É necessário lançar o rateio antes de salvar esse título.');
            Exit;
            //
          End
       Else
          GeraRateioParcela(0);
       //
     End;
  //
//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported
  if (cdsPadrao.State in [dsInsert]) and (cdsTituloRecParc.IsEmpty) then
    if not GeraParcelas then
    begin
      ShowMessage('É necessário lançar o rateio antes de salvar esse título.');
      exit;
    end;

  bNotaFiscal := (dsPadrao.State = dsEdit) And
                 (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nffinanc where idTituloRec = ' + cdsPadrao.FieldByName('idTituloRec').Text).FieldByName('qtd').AsInteger > 0);

    GravaChave(1, '', nil);

  tr := 1;
  if (dmPadrao.dbConexao.TransactionsSupported) and (not dmPadrao.dbConexao.InTransaction) then
    tr := 0;
  if tr = 0 then
  begin
    dmPadrao.dbConexao.CloseDataSets;
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  end;

  try
    inherited;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  //
  if frmPrincipal.erro = 0 then
  begin
     //como correu tudo ok grava a tabela de movimentações gerais
     sql := 'EXEC spGeraMovGeral ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
            DBEidTituloRec.Text + ', ';
     if bNotaFiscal then
       sql := sql + QuotedStr('TRECF')
     else
       sql := sql + QuotedStr('TREC');

     sql := sql + ', ' + QuotedStr('I');
    if tr = 0 then
      dmPadrao.dbConexao.CommitFreeAndNil(t);

    if idContratoVenda <> '' then
    begin
      sqlContrato := 'INSERT INTO ContratoVendaFinanc (idEmpresa, idCadEmpresa, idCliente, idContratoVenda, idTituloRec) ' +
                     ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + DBEidCliente.Text + ', ' + QuotedStr(idContratoVenda) +
                     ', ' + DBEidTituloRec.Text + ')';
      dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
      frmCadContratoVenda.DBEidContratoVendaExit(frmCadContratoVenda.DBEidContratoVenda);
    end
    else
      if idRomaneio > 0 then
      begin
        sqlContrato := 'INSERT INTO RomaneioFinanc (idEmpresa, idCadEmpresa, idRomaneio, idTituloRec) ' +
                       ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + IntToStr(idRomaneio) +
                       ', ' + DBEidTituloRec.Text + ')';
        dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
      end;
    if idTitulo <> '' then
    begin
      sql := 'UPDATE TituloRec SET stTituloRec = ' + QuotedStr('SUBSTITUIDO') +
             ' WHERE idTituloRec IN (' + idTitulo + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
      sql := 'UPDATE TituloRecParc SET stTituloRecParc = ' + QuotedStr('SUBSTITUIDO') +
             ' WHERE idTituloRec IN (' + idTitulo + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    if idAdiantamento > 0 then
    begin
      idAdiantamentoMov := Frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idAdiantamentoMov) idAdiantamentoMov FROM AdiantamentoMov WHERE idAdiantamento = ' + IntToStr(idAdiantamento)).FieldByName('idAdiantamentoMov').AsInteger+1;
      sql := 'INSERT INTO AdiantamentoMov (idAdiantamento, idAdiantamentoMov, dtAdiantamentoMov, ' +
             ' idMovFinanceira, vlAdiantamentoMov, fator, descAdiantamentoMov, idTituloRecMov ' +
             ' ) VALUES (' + IntToStr(idAdiantamento) + ', ' + IntToStr(idAdiantamentoMov) + ', ' +
              QuotedStr(DateToStr(date)) + ', ' + IntToStr(idMovFinanceira) + ', ' + QuotedStr(cdsPadrao.fieldbyName('vlTituloRec').AsString) + ', ' +
              '-1' + ', ' + QuotedStr('SALDO RESTANTE DE ADIANTAMENTO CONVERTIDONO TITULO ' + cdsPadrao.FieldByname('nrTituloRec').AsString) + ', ' + cdsTituloRecMovidTituloRecMov.AsString + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
      sql := 'EXEC spVerStatusAdiantamento ' + IntToStr(idAdiantamento) + ', ' + QuotedStr('OUT');
      dmPadrao.dbConexao.ExecuteDirect(sql);
      FrmCadAdiantamento.DBEidAdiantamento.SetFocus;
    end;
  end
  else
  begin
    if tr = 0 then
      dmPadrao.dbConexao.RollbackFreeAndNil(t);
    //retorna o número anterior
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('nrTituloRec').AsString := nrTituloRec;
  end;
end;

procedure TFrmCadTituloRec.AtualizaResultado;
begin
  //preenche a tabela que irá fazer o lookup no grid do resultado
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
  cdsResultado.Active := false;
  cdsResultado.Active := true;
end;

procedure TFrmCadTituloRec.BtnAlterarMovClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmAlteraRec, FrmAlteraRec);
  with FrmAlteraRec do
  begin
    vlAnterior := cdsTituloRecMov.FieldByName('vlTituloRecMov').AsString;
    idEmpresa := cdsTituloRecMov.FieldByName('idEmpresa').AsInteger;
    idCadEmpresa := cdsTituloRecMov.FieldByName('idCadEmpresa').AsInteger;    
    cdsMov.FieldByName('idTituloRecMov').Value := cdsTituloRecMov.FieldByName('idTituloRecMov').Value;
    cdsMov.FieldByName('idTituloRec').Value := cdsTituloRecMov.FieldByName('idTituloRec').Value;
    cdsMov.FieldByName('idMovFinanceira').Value := cdsTituloRecMov.FieldByName('idMovFinanceira').Value;
    cdsMov.FieldByName('dtTituloRecMov').Value := cdsTituloRecMov.FieldByName('dtTituloRecMov').Value;
    cdsMov.FieldByName('vlTituloRecMov').Value := cdsTituloRecMov.FieldByName('vlTituloRecMov').Value;
    ShowModal;
  end;
  GravaLog('Alteração de Movimentos: Titulos a Receber');
  DBEnrTituloRecExit(DBEnrTituloRec);
end;

procedure TFrmCadTituloRec.BtnCancelarParcClick(Sender: TObject);
begin
  inherited;
  cdsTituloRecParc.Cancel;
end;

procedure TFrmCadTituloRec.BtnExcluirMovClick(Sender: TObject);
begin
  inherited;
  if messagedlg('Todos os dados relacionados serão também excluídos! ' + #13 +
                'Esse procedimento irá excluir todos os demais recebimentos relacionados!' + #13 +
                'Deseja realmente excluir?', mtconfirmation, [mbyes, mbno], 0) = mryes   then
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloRecMov], 'spExcluiTituloRecMov') then
    begin
      PagAbas.ActivePageIndex := 0;
      excluiRec := true;
      DBEnrTituloRecExit(DBEnrTituloRec);
    end;
    GravaLog('Exclusão de Movimentos: Titulos a Receber')
end;

procedure TFrmCadTituloRec.BtnSalvarParcClick(Sender: TObject);
var
  recalc : boolean;
//  bReg: Pointer;
  idParc : integer;
begin
  inherited;
  if (cdsTituloRecParc.State = dsEdit) and (cdsTituloRecParc.FieldByName('stTituloRecParc').AsString <> 'ATIVO') then
  begin
    messagedlg('Parcela com movimentações não pode ser alterada!', mtwarning, [mbok], 0);
    exit;
  end;

  if (Sender as TBitBtn).Name = 'BtnNovoParc' then
  begin
    cdsTituloRecParc.IndexFieldNames := 'idParcela';
    cdsTituloRecParc.Last;
    idParc := cdsTituloRecParc.FieldByName('idParcela').AsInteger;
    idParc := idParc + 1;
  end;
  //
  recalc := false;
  if ((Sender as TBitBtn).Name <> 'BtnNovoParc') and ((Sender as TBitBtn).Name <> 'BtnCancelarParc') then
    if (parcelaDif) or ((Sender as TBitBtn).Name = 'BtnExcluirParc') then
    begin
//      if messagedlg('O Rateio irá ser recalculado! Deseja prosseguir?', mtinformation, [mbyes, mbno], 0) = mryes then
        recalc := true;
//      else
//        exit;
      if (Sender as TBitBtn).Name = 'BtnExcluirParc' then
      begin
//        showmessage(IntToStr(cdsTituloRecMov.RecordCount));
        cdsTituloRecMov.Delete;
        cdsTituloRecRat.Delete;
//        showmessage(IntToStr(cdsTituloRecMov.RecordCount));
      end;
    end;

  funcao.GravaSec(chave, cdsTituloRecParc, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc, (Sender as TCBitBtn), 'idParcela');
  if (Sender as TBitBtn).Name <> 'BtnNovoParc' then
  begin
    SomaParcelas;

    //Verifica se teve alteração em relação ao título
    if vlTotalParcelas <> cdsPadrao.FieldByName('vlTituloRec').AsCurrency then
      if messagedlg('Valor das parcelas diferente do valor do título!' + #13 +
                    'Deseja ajustar o valor do título?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        if not (cdsPadrao.State in [dsEdit, dsInsert]) then
          cdsPadrao.Edit;

        cdsPadrao.FieldByName('vlTituloRec').AsCurrency := vlTotalParcelas;

        //Ajusta novamente a diferença
        LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloRec').AsCurrency-vlTotalParcelas), 6, '');
      end;
  end
  else
    cdsTituloRecParc.FieldByName('idParcela').AsInteger := idParc;

//  showmessage(IntToStr(cdsTituloRecMov.RecordCount));

  if recalc then
  begin
    //
    GeraRateioParcela(0);
    GeraMovimentacao;
    //
  end;

// showmessage(IntToStr(cdsTituloRecMov.RecordCount));

  //para não dar erro no applyupdates geral
  if (cdsPadrao.State = dsEdit) then
  begin
    if ((Sender as TBitBtn).Name = 'BtnExcluirParc') then
    begin
//      showmessage(IntToStr(cdsTituloRecMov.RecordCount));
      cdsTituloRecMov.ApplyUpdates(0);
      cdsTituloRecRat.ApplyUpdates(0);
      cdsTituloRecParc.ApplyUpdates(0);
    end
    else
      if ((Sender as TBitBtn).Name = 'BtnSalvarParc') then
      begin
        cdsTituloRecParc.ApplyUpdates(0);
        cdsTituloRecRat.ApplyUpdates(0);
        cdsTituloRecMov.ApplyUpdates(0);
      end;
  end;

  //
  DBEvlParcela.SetFocus;
  //
end;

procedure TFrmCadTituloRec.BtnSalvarRatClick(Sender: TObject);
begin
  inherited;
  if (Sender as TBitBtn).Name = 'BtnSalvarRat' then
    if cdsTituloRateio.FieldByName('vlRateio').Value > cdsPadrao.FieldByName('vlTituloRec').Value then
    begin
      messagedlg('O valor do rateio não pode ser maior que o titulo!', mtwarning, [mbok], 0);
      exit;
    end;
  funcao.GravaSec(chave, cdsTituloRecRat, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRat') and ((Sender as TBitBtn).Name <> 'BtnCancelarRat') then
  begin
    GeraRateioTitulo;
    SomaRateio; //rateio
    SomaRateioTit;
    FiltraRateio;
  end;
  DBEidResultadoR.SetFocus;
end;

procedure TFrmCadTituloRec.BtnSalvarRatTitClick(Sender: TObject);
begin
  inherited;
  if (Sender as TBitBtn).Name = 'BtnSalvarRatTit' then
    if cdsTituloRateio.FieldByName('vlRateio').Value >  cdsPadrao.FieldByName('vlTituloRec').Value then
    begin
      messagedlg('O valor do rateio não pode ser maior que o titulo!', mtwarning, [mbok], 0);
      exit;
    end;

  funcao.GravaSec(chave, cdsTituloRateio, BtnSalvarRatTit, BtnCancelarRatTit, BtnExcluirRatTit, BtnNovoRatTit, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRatTit') and ((Sender as TBitBtn).Name <> 'BtnCancelarRatTit') then
  begin
    GeraRateioParcela(1);
    SomaRateioTit; //rateio
    FiltraRateio;
    SomaRateio;   
  end;
  DBEidResultadoRT.SetFocus;
end;

procedure TFrmCadTituloRec.CDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) Then
     DBEidParcela.SetFocus;
  //
end;

procedure TFrmCadTituloRec.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('idEmpresa').AsString := cdsEmpresa.FieldByName('idEmpresa').AsString;
    cdsPadrao.FieldByName('idCadEmpresa').AsString := cdsEmpresa.FieldByName('idCadEmpresa').AsString;
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 1;
    cdsPadrao.FieldByName('incMes').AsString := 'N';
    cdsPadrao.FieldByName('idCliente').AsString := idCliente;
    cdsPadrao.FieldByName('idDocSerie').AsString := idDocSerie;
    cdsTituloRecMov.Filtered := false;
    cdsTituloRecRat.Filtered := false;
  end;
end;

procedure TFrmCadTituloRec.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (cdsPadrao.FieldByName('stTituloRec').AsString <> 'ATIVO') and (cdsPadrao.FieldByName('stTituloRec').AsString <> 'ABERTO') then
  begin
    funcao.SomenteLeitura([DBEvlTituloRec, DBEdtEmissao, DBEqtParcelas, DBEdtVencimentoIni,
                           DBCKincMes, DBEdiasVencimento, DBEidIndice, DBEidMovFinanceira,
                           DBEidParcela, DBEvlParcela, DBEdtVencimento], true);
    GrpBtnParcelas.Enabled := false;
  end
  else
  begin
    funcao.SomenteLeitura([DBEvlTituloRec, DBEdtEmissao, DBEqtParcelas, DBEdtVencimentoIni,
                           DBCKincMes, DBEdiasVencimento, DBEidIndice, DBEidMovFinanceira,
                           DBEidParcela, DBEvlParcela, DBEdtVencimento], false);
    GrpBtnParcelas.Enabled := true;
  end;
end;

procedure TFrmCadTituloRec.cdsTituloRecMovAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idCliente').Value := cdsPadrao.FieldByName('idCliente').Value ;
end;

procedure TFrmCadTituloRec.cdsTituloRecMovAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BtnAlterarMov.Enabled := ((DataSet.FieldByName('idMovFinanceira').AsInteger in [8,9,10])
                             and (ValidaPermissao('editar')));
  BtnExcluirMov.Enabled := ((DataSet.FieldByName('idMovFinanceira').AsInteger <> 1) and (DataSet.FieldByName('idMovFinanceira').AsInteger > 0) and ValidaPermissao('excluir'));
end;

procedure TFrmCadTituloRec.cdsTituloRecParcAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

end;

procedure TFrmCadTituloRec.cdsTituloRecParcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('stTituloRecParc').AsString := 'ATIVO';
  if trim(cdsPadrao.FieldByName('idTituloRec').AsString) = '' then
    cdsTituloRecParc.FieldByName('idTituloRec').Value := 0
  else
    cdsTituloRecParc.FieldByName('idTituloRec').Value := cdsPadrao.FieldByName('idTituloRec').Value;

  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;  
end;

procedure TFrmCadTituloRec.cdsTituloRecRatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

constructor TFrmCadTituloRec.create(Formulario: TComponent; Parametro: array of String);
begin
  inherited create(formulario);
  id := '';
  idTitulo := '';
  idContratoVenda := '';
  idRomaneio := 0;

  if high(Parametro) >= 0  then
  begin
    if Parametro[0] = 'CONTRATO' then
    begin
      if Parametro[1] <> '' then
        idContratoVenda := Parametro[1];
    end
    else
      if Parametro[0] = 'ROMANEIO' then
      begin
        if Parametro[1] <> '' then
          idRomaneio := StrToInt(Parametro[1]);
        if Parametro[2] <> '' then
          ContratoRomaneio := Parametro[2];
      end
      else
        id := Parametro[0];
  end;
end;

procedure TFrmCadTituloRec.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');
  if (cdsPadrao.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
    DBEprMulta.SetFocus;
end;

procedure TFrmCadTituloRec.DBEdtEmissaoEnter(Sender: TObject);
begin
  inherited;
  if excluiRec then
  begin
//    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloRec], 'spVerStatusTRec');
    excluiRec := false;
  end;
end;

procedure TFrmCadTituloRec.DBEidClienteExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidCliente.Text) = '' then
    exit;
  //Valores de Inicialização
  //      showmessage('Até aqui tudo bem!');
  if cdsPadrao.State in [dsInsert] then
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCliente], 'spRetDadosTitulo', '') do
    begin
      if (FieldByName('idSafra').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idSafra').AsString) = '') then
        cdsPadrao.FieldByName('idSafra').AsInteger := FieldByName('idSafra').AsInteger;
      if (FieldByName('idBanco').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idBanco').AsString) = '') then
        cdsPadrao.FieldByName('idBanco').AsInteger := FieldByName('idBanco').AsInteger;
      if (FieldByName('idIndice').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idIndice').AsString) = '') then
        cdsPadrao.FieldByName('idIndice').AsInteger := FieldByName('idIndice').AsInteger;
      if (FieldByName('idMovFinanceira').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idMovFinanceira').AsString) = '') then
        cdsPadrao.FieldByName('idMovFinanceira').AsInteger := FieldByName('idMovFinanceira').AsInteger;
      if (FieldByName('idResultado').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idResultado').AsString) = '') then
        cdsPadrao.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
      if (FieldByName('idRateio').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idRateio').AsString) = '') then
        cdsPadrao.FieldByName('idRateio').AsInteger := FieldByName('idRateio').AsInteger;
//      if (FieldByName('idGerencial').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idGerencial').AsString) = '') then
//        cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
      if (FieldByName('idGerencial').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idGerencial').AsString) = '') then
        cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
      if (FieldByName('prMulta').AsInteger > 0) and (trim(cdsPadrao.FieldByName('prMulta').AsString) = '') then
        cdsPadrao.FieldByName('prMulta').AsInteger := FieldByName('prMulta').AsInteger;
      if (FieldByName('prJuros').AsInteger > 0) and (trim(cdsPadrao.FieldByName('prJuros').AsString) = '') then
        cdsPadrao.FieldByName('prJuros').AsInteger := FieldByName('prJuros').AsInteger;
      if (FieldByName('prDesconto').AsInteger > 0) and (trim(cdsPadrao.FieldByName('prDesconto').AsString) = '') then
        cdsPadrao.FieldByName('prDesconto').AsInteger := FieldByName('prDesconto').AsInteger;
      if (trim(cdsPadrao.FieldByName('dtEmissao').AsString) = '') then
        cdsPadrao.FieldByName('dtEmissao').AsDateTime := FieldByName('dtAtual').AsDateTime;

      DBEdtEmissao.SetFocus;
    end;
  HabilitaRatRes;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');
//  AbreTabSecundaria;
end;

procedure TFrmCadTituloRec.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidEmpresa.Text) <> '' then
  begin
    if (cdsEmpresa.FieldByName('idEmpresa').OldValue <> cdsEmpresa.FieldByName('idEmpresa').NewValue)  then
      cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
//    AbreTabSecundaria;
  end;

end;

procedure TFrmCadTituloRec.DBEidGerencialEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidGerencial.Text;
end;

procedure TFrmCadTituloRec.DBEidParcelaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsTituloRecParc, [DBEidParcela]);
end;

procedure TFrmCadTituloRec.DBEidRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidRateio.Text;
end;

procedure TFrmCadTituloRec.DBEidResultadoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidResultado.Text;
end;

procedure TFrmCadTituloRec.DBEidResultadoExit(Sender: TObject);
var
  calc : boolean;
begin
  calc := false;
  inherited;
  HabilitaRatRes;
  if ((Sender as TCDBEdit).Name = 'DBEidResultado') and (not BtnFechar.Focused) and
     (not BtnNovo.Focused) and (not BtnPesquisar.Focused) and (not BtnCancelar.Focused) then
    if not DBEidRateio.ReadOnly then
      DBEidRateio.SetFocus;

  if ((Sender as TCDBEdit).Name = 'DBEidResultado') then
    if trim(DBEidResultado.Text) <> '' then
      if (vlAnterior <> DBEidResultado.Text) then
        calc := true;

  if ((Sender as TCDBEdit).Name = 'DBEidRateio') then
    if trim(DBEidRateio.Text) <> '' then
      if (vlAnterior <> DBEidRateio.Text) then
        calc := true;

  if ((Sender as TCDBEdit).Name = 'DBEidGerencial') then
    if trim(DBEidGerencial.Text) <> '' then
      if (vlAnterior <> DBEidGerencial.Text) then
        calc := true;

  if calc then
    if not cdsTituloRecRat.IsEmpty then
      if messagedlg('O Rateio deverá ser recalculado para os novos valores! ' + #13 +
                    ' Deseja recalcular?', mtwarning, [mbyes, mbno], 0) = mryes then
        GeraRateioParcela(0);
end;

procedure TFrmCadTituloRec.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsTituloRecRat, [DBEidParcelaR, DBEidResultadoR]);
end;

procedure TFrmCadTituloRec.DBEidResultadoRTExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsTituloRateio, [DBEidResultadoRT]);
end;

procedure TFrmCadTituloRec.DBEnrTituloRecExit(Sender: TObject);
begin
  inherited;
  if BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidCliente, DBEnrTituloRec]) then
  begin
    PagAbas.ActivePageIndex := 0;
    DBEdtEmissao.SetFocus;
  end;
  HabilitaRatRes;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');
  AbreTabSecundaria;
  if (cdsPadrao.State = dsBrowse) then
  begin
    if (not cdsTituloRecRat.IsEmpty) then
      GeraRateioTitulo;
  end;
  SomaParcelas;
  if cdsPadrao.State = dsEdit then
    cdsPadrao.Post; 
end;

procedure TFrmCadTituloRec.DBEnrTituloRecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadTituloRec.DBEprRateioRTEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadTituloRec.DBEprRateioRTExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCDBEdit).Text then
  begin
    //Campos do rateio no valor do titulo
    if (Sender as TCDBEdit).Name = 'DBEprRateioRT' then
      cdsTituloRateio.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsPadrao.FieldByName('vlTituloRec').Value *
                               cdsTituloRateio.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateioRT' then
      cdsTituloRateio.FieldByName('prRateio').Value :=
         RoundTo(((cdsTituloRateio.FieldByName('vlRateio').Value /
                   cdsPadrao.FieldByName('vlTituloRec').Value) * 100), -3);

    //Campos do rateio no valor da parcela
    if (Sender as TCDBEdit).Name = 'DBEprRateio' then
      cdsTituloRecRat.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsTituloRecParc.FieldByName('vlParcela').Value *
                               cdsTituloRecRat.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateio' then
      cdsTituloRecRat.FieldByName('prRateio').Value :=
         RoundTo(((cdsTituloRecRat.FieldByName('vlRateio').Value /
                   cdsTituloRecParc.FieldByName('vlParcela').Value) * 100), -3);
  end;
end;

procedure TFrmCadTituloRec.DBEtpDocumentoEnter(Sender: TObject);
begin
  inherited;
  if excluiRec then
  begin
//    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloRec], 'spVerStatusTRec');
    excluiRec := false;
  end;
end;

procedure TFrmCadTituloRec.DBEvlParcelaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEvlParcela.Text;
end;

procedure TFrmCadTituloRec.DBEvlParcelaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim(DBEvlParcela.Text) then
    parcelaDif := true
  else
    parcelaDif := false;
end;

procedure TFrmCadTituloRec.DBEvlTituloRecEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPadrao.FieldByName('vlTituloRec').AsString;
end;

procedure TFrmCadTituloRec.DBEvlTituloRecExit(Sender: TObject);
begin
  inherited;
  //rotina que alguns campos utilizarão onde se houver mudanças deverá ser obrigatóriamente feito o recalculo das parcelas
  //não deu certo usar o oldvalue, pois enquanto o campo não for salvo ele mantém o valor antigo... ai fica passando e voltando
//  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).OldValue <> cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).Value then
//  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString <> vlAnterior then
  if cdsPadrao.FieldByName('vlTituloRec').AsString <> vlAnterior then
    if not cdsTituloRecParc.IsEmpty then
      GeraParcelas;
end;

procedure TFrmCadTituloRec.DBMobsTituloRecExit(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.State in dsEditModes) and (cdsTituloRecParc.IsEmpty) then
  begin
    if GeraParcelas then
    begin
      PagAbas.ActivePageIndex := 1;
      btnSalvar.SetFocus;
    end
    else
    begin
      PagAbas.ActivePageIndex := 0;
    end;
  end;
end;

procedure TFrmCadTituloRec.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  actExcluir2.Enabled := actExcluir.Enabled;
  //
  If (dsPadrao.State = dsEdit) And
     (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nffinanc where idTituloRec = ' + cdsPadrao.FieldByName('idTituloRec').Text).FieldByName('qtd').AsInteger > 0) Then
     Begin
       //
       ShowMessage('Você não poderá alterar esse título, pois o mesmo teve origem em uma Nota Fiscal !');
       dsPadrao.DataSet.Cancel;
       //
     End;
  //
end;

procedure TFrmCadTituloRec.dspTituloRecParcBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspTituloRecMov' then
    begin
      GeraAutoInc(DeltaDS, 'TituloRecMov', 'idTituloRecMov', []);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloRecMov' then
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmCadTituloRec.dsTituloRateioStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRatTit, BtnCancelarRatTit, BtnExcluirRatTit, BtnNovoRatTit);
end;

procedure TFrmCadTituloRec.dsTituloRecParcStateChange(Sender: TObject);
begin
  inherited;
  if GrpBtnParcelas.Enabled then  
    funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc)
  else
  begin
    BtnSalvarParc.Enabled := false;
    BtnCancelarParc.Enabled := false;
    BtnExcluirParc.Enabled := false;
    BtnNovoParc.Enabled := false;
  end;
end;

procedure TFrmCadTituloRec.dsTituloRecRatStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;

procedure TFrmCadTituloRec.ExcluiParc;
begin
      //limpa a tabela se houverem registros nela
    if not cdsTituloRecParc.IsEmpty then
      with cdsTituloRecParc do
      begin
        First;
        while not Eof do
        begin
          delete;
          first;
        end;
      end;
    //Verifica se o padrao está em modo de edição e já executa o applyupdates, para evitar erro de chaveestrangeira
    if cdsPadrao.State = dsEdit then
    begin
      //limpa a tabela se houverem registros nela
      if not cdsTituloRecRat.IsEmpty then
        with cdsTituloRecRat do
        begin
          First;
          while not Eof do
          begin
            delete;
            first;
          end;
        end;

      //limpa a tabela se houverem registros nela
      if not cdsTituloRecMov.IsEmpty then
        with cdsTituloRecMov do
        begin
          First;
          while not Eof do
          begin
            delete;
            first;
          end;
        end;

      if (not (cdsPadrao.State = dsInsert))  then
      begin
        cdsTituloRecMov.ApplyUpdates(0);
        cdsTituloRecRat.ApplyUpdates(0);
        cdsTituloRecParc.ApplyUpdates(0);
      end;
    end;

end;

procedure TFrmCadTituloRec.FiltraRateio;
begin
  cdsTituloRecRat.Filtered := false;
  cdsTituloRecRat.Filter := 'idParcela = ' + cdsTituloRecParc.FieldByName('idParcela').AsString;
  cdsTituloRecRat.Filtered := true;
end;

procedure TFrmCadTituloRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTituloRec := nil;
end;

procedure TFrmCadTituloRec.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 4);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsTituloRecParc;
  Tabelas[2] := cdsTituloRecRat;
  Tabelas[3] := cdsTituloRecMov;

//  Tabelas[2] := cdsCadEmpresa;
  chave[0] := DBEidTituloRec;
  foco := DBEidDocSerie;
  tab_chave := 'TituloRec';
  situacao := 'stTituloRec';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 532;
  Width := 620;
  excluiRec  := false;
//  FindPesquisa := FindProduto;
end;

procedure TFrmCadTituloRec.FormShow(Sender: TObject);
begin
  inherited;
  idCliente := '';
  idDocSerie := '';
  vlTotalParcelas := 0;
  cdsTituloRateio.CreateDataSet;
  if cdsPadrao.State in [dsInsert,dsEdit] then
  begin
    cdsPadrao.Cancel;
    actNovo.Execute;
  end;
  if trim(id) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idTituloRec').AsString := id;
    BuscaChave(cdsPadrao, [DBEidTituloRec]);
    //verifica se não é consulta de outra empresa
    if (trim(DBEidEmpresa.Text) <> trim(cdsPadrao.FieldByName('idEmpresa').AsString)) or
       (trim(DBEidCadEmpresa.Text) <> trim(cdsPadrao.FieldByName('idCadEmpresa').AsString)) then
    begin
      if not (cdsEmpresa.state in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;
      cdsEmpresa.FieldByName('idEmpresa').Value := cdsPadrao.FieldByName('idEmpresa').Value;
      cdsEmpresa.FieldByName('idCadEmpresa').Value := cdsPadrao.FieldByName('idCadEmpresa').Value;
    end;

    DBEnrTituloRecExit(DBEnrTituloRec);
  end;
  AtualizaResultado;

  if idContratoVenda <> '' then
  begin
    actNovo.Execute;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('nrTituloRec').AsString := frmCadContratoVenda.cdsPadrao.FieldByName('idContratoVenda').AsString;
    DBEnrTituloRecExit(DBEnrTituloRec);
    DBEdtEmissao.SetFocus;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('dtEmissao').AsDateTime := frmCadContratoVenda.cdsPadrao.FieldByName('dtEmissao').AsDateTime;
    cdsPadrao.FieldByName('idDocSerie').AsString := 'DRE';
    cdsPadrao.FieldByName('tpDocumento').AsString := frmCadContratoVenda.cdsPadrao.FieldByName('idContratoVenda').AsString;
    cdsPadrao.FieldByName('idCliente').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCliente').AsInteger;
    cdsPadrao.FieldByName('idSafra').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idSafra').AsInteger;
    cdsPadrao.FieldByName('idIndice').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idIndice').AsInteger;

    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ProdGerencial WHERE idProduto = ' +
                                            frmCadContratoVenda.cdsPadrao.FieldByName('idProduto').AsString +
                                            ' AND idEmpresa = ' + DBEidEmpresa.Text) do
    begin
      if FieldByName('idGerencial').AsInteger > 0 then
        cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
      if FieldByName('idResultado').AsInteger > 0 then
        cdsPadrao.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
    end;
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 1;
    cdsPadrao.FieldByName('vlTituloRec').AsCurrency := frmCadContratoVenda.cdsPadrao.FieldByName('vlContratoVenda').AsCurrency;
    cdsPadrao.FieldByName('obsTituloRec').AsString := 'Referente a Contrato de Venda nr.: ' + idContratoVenda;

  end
  else
    if idRomaneio > 0 then
    begin
      actNovo.Execute;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;

      cdsEmpresaidEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      DBEnrTituloRecExit(DBEnrTituloRec);
      DBEidIndice.SetFocus;
      cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadrao.FieldByName('dtEmissao').AsDateTime := frmCadRomaneio.cdsPadrao.FieldByName('dtRomaneio').AsDateTime;
      cdsPadrao.FieldByName('idDocSerie').AsString := 'DRE';
      cdsPadrao.FieldByName('tpDocumento').AsString := ContratoRomaneio;
      cdsPadrao.FieldByName('idCliente').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCliente').AsInteger;
      cdsPadrao.FieldByName('idSafra').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idSafra').AsInteger;
      cdsPadrao.FieldByName('idIndice').AsInteger := 1; //Real
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ProdGerencial WHERE idProduto = ' +
                                              frmCadRomaneio.cdsPadrao.FieldByName('idProduto').AsString +
                                              ' AND idEmpresa = ' + DBEidEmpresa.Text) do
      begin
        if FieldByName('idGerencial').AsInteger > 0 then
          cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
        if FieldByName('idResultado').AsInteger > 0 then
          cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
      end;
      cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 1;
      cdsPadrao.FieldByName('vlTituloRec').AsCurrency := FrmCadRomaneio.EDvlFinanc.Value;
      cdsPadrao.FieldByName('obsTituloRec').AsString := 'Referente a Romaneio nr.: ' + IntToStr(idRomaneio);
    end;

  BtnExcluir2.Visible := excluir;
end;

procedure TFrmCadTituloRec.GeraMovimentacao;
begin
  with cdsTituloRecMov do
  begin
    if not Active then
      Active := true;

    cdsTituloRecParc.First;
    while not cdsTituloRecParc.Eof do
    begin
      if cdsTituloRecParc.FieldByName('stTituloRecParc').AsString = 'ATIVO' then
      begin
        //se a movimentação nao estiver limpa ele limpa a tabela
        Filtered := false;
        Filter := 'idParcela = ' + cdsTituloRecParc.FieldByName('idParcela').AsString;
        Filtered := true;
        if RecordCount > 0 then
        begin
          Delete;
          if (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) then
            ApplyUpdates(0);
        end;
        Filtered := false;

        Append;
        FieldByName('idTituloRecMov').Value := 0;
        if trim(cdsPadrao.FieldByName('idTituloRec').AsString) <> '' then
          FieldByName('idTituloRec').Value := cdsPadrao.FieldByName('idTituloRec').Value
        else
          FieldByName('idTituloRec').Value := 0;
        FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
        FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
        FieldByName('idCliente').Value := cdsPadrao.FieldByName('idCliente').Value;
        FieldByName('idParcela').Value := cdsTituloRecParc.FieldByName('idParcela').Value;
        FieldByName('idMovFinanceira').Value := cdsPadrao.FieldByName('idMovFinanceira').Value;
        FieldByName('dtTituloRecMov').Value := cdsPadrao.FieldByName('dtEmissao').Value;
        FieldByName('vlTituloRecMov').Value := cdsTituloRecParc.FieldByName('vlParcela').Value;
        FieldByName('vlRealIndice').Value := cdsTituloRecParc.FieldByName('vlParcela').Value;
        if frmPrincipal.ExecutaSQLRet([DBEidMovFinanceira], '', 'MovFinanceira').FieldByName('sinal').AsString = '+' then
          FieldByName('fator').Value := 1
        else
          FieldByName('fator').Value := -1;
        Post;
      end; //fim do if cdsTituloRecParc.FieldByName('stTituloRecParc').AsString = 'ATIVO' then
      cdsTituloRecParc.Next;
    end;
    cdsTituloRecParc.First;
  end;
end;

function TFrmCadTituloRec.GeraParcelas: boolean;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  Result := false;
  if not cdsTituloRecParc.IsEmpty then
    if messagedlg('Deseja recalcular as parcelas?', mtconfirmation, [mbyes, mbno], 0) = mrno then
      exit;

  if not funcao.VerCampoRequerido([cdsPadrao], 'idTituloRec,nrTituloRec,diasVencimento,prMulta,prJuros,prDesconto') then
  begin
    PagAbas.ActivePageIndex := 0;
    exit;
  end;

  with cdsPadrao do
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

    if (not (FieldByName('vlTituloRec').Value > 0)) or
       (not (FieldByName('qtParcelas').Value > 0)) or
       ((not(FieldByName('diasVencimento').Value > 0)) and (FieldByName('incMes').AsString = 'N') and (FieldByName('qtParcelas').AsInteger > 1)) or
       (not (trim(FieldByName('dtVencimentoIni').AsString) <> '')) then
    begin
      messagedlg('Para gerar as parcelas são necessários os campos: ' + #13 +
                 'Valor do Titulo; Parcelas; Primeiro Vencimento; Dias entre Parcelas', mterror, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBEqtParcelas.SetFocus;
      exit;
    end;
    if ((FieldByName('dtVencimentoIni').Value < FieldByName('dtEmissao').Value)) then
    begin
      messagedlg('O primeiro vencimento da parcela não pode ser menor que a data de emissão do título!',
                 mterror, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBEdtVencimentoIni.SetFocus;
      Result := false;
      exit;
    end;

    ExcluiParc;

    //GERAÇÃO DAS PARCELAS
    vlParcela := funcao.ArredondaMoeda(FieldByName('vlTituloRec').Value/FieldByName('qtParcelas').AsInteger);
    vlPrimeira := FieldByName('vlTituloRec').Value-(vlParcela*(FieldByName('qtParcelas').AsInteger-1));
    dtParcela := FieldByName('dtVencimentoIni').AsDateTime;
    for i := 1 to FieldByName('qtParcelas').AsInteger do
    begin
      cdsTituloRecParc.Append;
      cdsTituloRecParc.FieldByName('idParcela').Value := i;
      cdsTituloRecParc.FieldByName('dtVencimento').Value := dtParcela;
      if i = 1 then
        cdsTituloRecParc.FieldByName('vlParcela').Value := vlPrimeira
      else
        cdsTituloRecParc.FieldByName('vlParcela').Value := vlParcela;
      cdsTituloRecParc.Post;
      if cdsPadrao.FieldByName('incMes').AsString = 'S' then
        dtParcela := IncMonth(FieldByName('dtVencimentoIni').AsDateTime, i)
      else
        dtParcela := dtParcela + FieldByName('diasVencimento').Value;
    end; //fim do for i := 1 to FieldByName('qtParcelas').AsInteger do
  end; //fim do with cdsPadrao do
  SomaParcelas;
//******************  INICIO DO RATEIO PELAS PARCELAS  ***********************//
  try
    GeraRateioParcela(0);
    GeraMovimentacao;
  except
    on E: Exception do
    begin
      ExcluiParc;
      exit;
    end;
  end;
  Result := true;
end;

procedure TFrmCadTituloRec.GeraRateioParcela(tipo: byte);
//variável tipo: 0 : baseado no titulo
//               1 : baseado na temporária cdsTituloRateio
var
  idResMaior : integer;
  vlRateioMaior, vlDiferenca : currency;
begin
//******************  INICIO DO RATEIO PELAS PARCELAS  ***********************//
  idResMaior := 0;
  with cdsTituloRecRat do
  begin
    Filtered := false;
    //limpa a tabela se houverem registros nela
    //limpa a tabela se houverem registros nela
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        delete;
        first;
      end;
      if (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) then
        ApplyUpdates(0);
    end;
    cdsTituloRecParc.First;
    while not cdsTituloRecParc.Eof do
    begin
      if tipo = 0 then //geração a partir do titulo
      begin
        //início da geração do rateio / sem plano de rateio direto pelo plano de resultado
        if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
        begin
            Append;
            if trim(DBEidTituloRec.Text) <> '' then
              FieldByName('idTituloRec').AsString := DBEidTituloRec.Text
            else
              FieldByName('idTituloRec').Value := 0;
            FieldByName('idParcela').Value := cdsTituloRecParc.FieldByName('idParcela').Value;
            FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
            FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
            FieldByName('vlRateio').Value := cdsTituloRecParc.FieldByName('vlParcela').Value;
            FieldByName('prRateio').Value := '100';
            Post;
        end
        else
        begin  //início da geração do rateio / via plano de rateio
          if trim(DBEidRateio.Text) = '' then
          begin
            messagedlg('O centro de resultado ou o rateio devem ser informados!', mtwarning, [mbok], 0);
            cdsTituloRecParc.EmptyDataSet;
            PagAbas.ActivePageIndex := 0;
            exit;
          end;
          if frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL' then
            exit;
          with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
          begin
            First;
            vlRateioMaior := 0;
            idResMaior := 0;
            while not Eof do
            begin
              cdsTituloRecRat.Append;
              if trim(DBEidTituloRec.Text) <> '' then
                cdsTituloRecRat.FieldByName('idTituloRec').AsString := DBEidTituloRec.Text
              else
                cdsTituloRecRat.FieldByName('idTituloRec').Value := 0;
              cdsTituloRecRat.FieldByName('idParcela').Value := cdsTituloRecParc.FieldByName('idParcela').Value;
              cdsTituloRecRat.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
              cdsTituloRecRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
              cdsTituloRecRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
              cdsTituloRecRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsTituloRecParc.FieldByName('vlParcela').Value *
                                                               FieldByName('prRateio').Value)/100);
              //para registrar quem tem o maior valor
              if vlRateioMaior < cdsTituloRecRat.FieldByName('vlRateio').Value then
                idResMaior := cdsTituloRecRat.FieldByName('idResultado').Value;
              cdsTituloRecRat.Post;
              Next;
            end; //fim do laço do rateio
          end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do

        end; //fim do else   begin  //início da geração do rateio / via plano de rateio
      end //fim do if tipo = 0
      else //para o tipo = 1
      begin
        with cdsTituloRateio do
        begin
          First;
          vlRateioMaior := 0;
          idResMaior := 0;
          while not Eof do
          begin
            cdsTituloRecRat.Append;
            cdsTituloRecRat.FieldByName('idTituloRec').Value := FieldByName('idTituloRec').Value;
            cdsTituloRecRat.FieldByName('idParcela').Value := cdsTituloRecParc.FieldByName('idParcela').Value;
            cdsTituloRecRat.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;
            cdsTituloRecRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
            cdsTituloRecRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
            cdsTituloRecRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsTituloRecParc.FieldByName('vlParcela').Value *
                                                             FieldByName('prRateio').Value)/100);
            //para registrar quem tem o maior valor
            if vlRateioMaior < cdsTituloRecRat.FieldByName('vlRateio').Value then
              idResMaior := cdsTituloRecRat.FieldByName('idResultado').Value;
            cdsTituloRecRat.Post;
            Next;
          end; //fim do laço do rateio
        end; // fim do with cdsTituloRateio do

      end; //fim do else para o tipo = 1

      SomaRateio;
      //inicia processo para ajuste de valor caso haja diferença joga para o maior
      if (vlTotalRateio <>  cdsTituloRecParc.FieldByName('vlParcela').Value) then
        if not ((tipo = 1) and (vlTotalRateioTit < cdsPadrao.FieldByName('vlTituloRec').Value)) then
        begin
          vlDiferenca := cdsTituloRecParc.FieldByName('vlParcela').Value - vlTotalRateio;
          IndexFieldNames := 'idResultado';
          FindKey([idResMaior]);
          Edit;
          FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
          Post;
        end;
      Filtered := false;
      cdsTituloRecParc.Next;
    end;// fim do while not cdsTituloRecParc.Eof do
  end; // fim do with cdsTituloRecRat do
  cdsTituloRecParc.First;
  if not (frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL') then
    GeraRateioTitulo;
end;

procedure TFrmCadTituloRec.GeraRateioTitulo;
var
  vlTitulo, vlRateio, prRateio : Double;
begin
  cdsTituloRateio.Active := true;
  cdsTituloRateio.EmptyDataSet;
  cdsTituloRateio.IndexFieldNames := 'idResultado';
  with cdsTituloRecRat do
  begin
    Filtered := false;
    IndexFieldNames := 'idResultado';
//    showmessage(inttostr(cdsTituloRecRat.RecordCount));
    First;
    while not Eof do
    begin
      if cdsTituloRateio.FindKey([FieldByName('idResultado').AsInteger]) then
      begin
        cdsTituloRateio.Edit;
        cdsTituloRateio.FieldByName('vlRateio').Value := cdsTituloRateio.FieldByName('vlRateio').Value +
                                                         FieldByName('vlRateio').Value;
        cdsTituloRateio.Post;
      end
      else
      begin
        cdsTituloRateio.Append;
        cdsTituloRateio.FieldByName('idTituloRec').Value := FieldByName('idTituloRec').Value;
        cdsTituloRateio.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
        cdsTituloRateio.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;
        cdsTituloRateio.FieldByName('vlRateio').Value := FieldByName('vlRateio').Value;
        cdsTituloRateio.FieldByName('prRateio').Value := 0;
        cdsTituloRateio.Post;
      end;
      Next;
    end; // fim do while not Eof do
  end; // fim do with cdsTituloRecRat do
  //Ajusta o percentual do rateio
  with cdsTituloRateio do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlTitulo := cdsPadrao.FieldByName('vlTituloRec').AsFloat;
      vlRateio := FieldByName('vlRateio').AsFloat;
      prRateio := RoundTo(((vlRateio / vlTitulo)*100), -3);
      Edit;
      FieldByName('prRateio').AsFloat := prRateio;
      Post;
      Next;
    end;
  end; //  fim do with cdsTituloRateio do
end;

procedure TFrmCadTituloRec.HabilitaRatRes;
//procedure criada para controlar a habilitação para ver se o título está recebendo rateio
// ou centro de resultado direto
begin
  funcao.SomenteLeitura([DBEidResultado, DBEidRateio], false);
  if trim(DBEidResultado.Text) <> '' then
  begin
    funcao.SomenteLeitura([DBEidRateio], true);
    funcao.SomenteLeitura([DBEidResultado], false);
  end
  else
    if trim(DBEidRateio.Text) <> '' then
    begin
      funcao.SomenteLeitura([DBEidRateio], false);
      funcao.SomenteLeitura([DBEidResultado], true);
    end;
end;

procedure TFrmCadTituloRec.LookLancamentoSetText(Sender: TObject);
begin
  inherited;
  if trim(LookLancamento.Caption) <> '' then
    LookLancamento.Caption := FormatFloat('#,##0.00', StrToFloat(LookLancamento.Caption));
end;

procedure TFrmCadTituloRec.PagAbasChange(Sender: TObject);
begin
  inherited;
  if (PagAbas.ActivePageIndex = 1) then //Parcelas
  begin
    if (cdsPadrao.State in [dsInsert]) and (cdsTituloRecParc.IsEmpty) then
      GeraParcelas;
  end;
  if (PagAbas.ActivePageIndex = 2) then //Rateio
  begin
    //Para abrir o rateio diretamente no total
    RBRatTitulo2Click(RBRatTitulo2);
    if (not cdsTituloRecRat.IsEmpty) then
    begin
      AtualizaResultado;
      SomaRateio;
      SomaRateioTit;
    end;
    If (Not cdsTituloRecParc.IsEmpty) Then
       FiltraRateio;
  end;
  if ((PagAbas.ActivePageIndex = 3) and (not cdsTituloRecParc.IsEmpty)) then //Movimentacao
  begin
    cdsTituloRecMov.Filtered := false;
    cdsTituloRecMov.Filter := 'idParcela = ' + cdsTituloRecParc.FieldByName('idParcela').AsString;
    cdsTituloRecMov.Filtered := true;
  end;
end;

procedure TFrmCadTituloRec.RBRatParcelaClick(Sender: TObject);
begin
  inherited;
  GrpRateioParc.Visible := true;
  GrpRateioTitulo.Visible := false;
  RBRatParcela2.Checked := true;
  FiltraRateio;
end;

procedure TFrmCadTituloRec.RBRatTitulo2Click(Sender: TObject);
begin
  inherited;
  GrpRateioParc.Visible := false;
  GrpRateioTitulo.Visible := true;
  RBRatTitulo.Checked := true;
end;

procedure TFrmCadTituloRec.ReplicaInformacoes;
var
sql : string;
begin
  // Busca informações para repertir fornecedor e serie
  sql := 'SELECT replicafornecedor, replicaserie FROM ConfigFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if FieldByName('replicafornecedor').AsString = 'S' then
       idCliente := DBEidCliente.Text;
    if FieldByName('replicaserie').AsString = 'S' then
       idDocSerie := DBEidDocSerie.Text;
  end;
end;

procedure TFrmCadTituloRec.SomaParcelas;
begin
  vlTotalParcelas := 0;
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloRec').AsCurrency-vlTotalParcelas), 6, '');
  With cdsTituloRecParc do
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
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloRec').AsCurrency-vlTotalParcelas), 6, '');
end;

procedure TFrmCadTituloRec.SomaRateio;
begin
  vlTotalRateio := 0;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsTituloRecParc.FieldByName('vlParcela').AsCurrency-vlTotalRateio), 6, '');
  With cdsTituloRecRat do
  begin
    if IsEmpty then
      exit;
    FiltraRateio;   
    First;
    while not Eof do
    begin
      vlTotalRateio := vlTotalRateio + FieldByName('vlRateio').AsCurrency;
      Next;
    end;
    Filtered := false;
    First;
  end;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsTituloRecParc.FieldByName('vlParcela').AsCurrency-vlTotalRateio), 6, '');
end;

procedure TFrmCadTituloRec.SomaRateioTit;
begin
  vlTotalRateioTit := 0;
  LblTotalRatTit.Caption := Funcao.Mascara(FloatToStr(vlTotalRateioTit), 6, '');
  LblRestanteRatTit.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloRec').AsCurrency-vlTotalRateioTit), 6, '');
  With cdsTituloRateio do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlTotalRateioTit := vlTotalRateioTit + FieldByName('vlRateio').AsCurrency;
      Next;
    end;
    First;
  end;
  LblTotalRatTit.Caption := Funcao.Mascara(FloatToStr(vlTotalRateioTit), 6, '');
  LblRestanteRatTit.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloRec').AsCurrency-vlTotalRateioTit), 6, '');
end;

function TFrmCadTituloRec.ValidaPermissao(Tipo: string): Boolean;
var
sql : string;
begin
  //Valida permissão para exclusão de movimentação de titulos
  Result := False;
  sql := 'SELECT * FROM SegGrupoPermissao WHERE idSegModulo = 5' +
         ' AND idSegGrupoMenu = 3' +
         ' AND idSegMenu = 2' +
         ' AND idUsuarioGrupo = ' + IntToStr(frmPrincipal.idUsuarioGrupo);
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
       Result := FieldByName(Tipo).AsString = 'S';
end;

end.




