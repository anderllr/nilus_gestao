unit uFrmPagTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, ComCtrls, CPageControl, DBCtrls, CDBCheckBox, CLookUp, Mask,
  CDBEdit, CLabel, EditAlign, CEdit, CGroupBox, Grids, DBGrids, CDBGrid, FMTBcd,
  CFind, DB, SqlExpr, Provider, DBClient, CDBMemo, DBXCommon, cxControls,
  cxContainer, cxEdit, cxCheckBox, frxClass, frxDBSet, ACBrBase, ACBrExtenso,
  CButton, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, Math,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, CPanel, System.Actions,
  frxDMPExport, frxDMPClass, System.ImageList, System.DateUtils;

type
  TFrmPagTitulo = class(TFrmPadrao)
    Bevel2: TBevel;
    PanEmpresa: TCPanelGradient;
    CLabel1: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    DBCKconsolida: TCDBCheckBox;
    PanCliente: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    CLabel7: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    CLabel10: TCLabel;
    DBEnrTitulo: TCDBEdit;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtEmissaoFim: TCDBEdit;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    Bevel6: TBevel;
    CPanelGradient1: TCPanelGradient;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    CLabel21: TCLabel;
    CLabel22: TCLabel;
    CLabel23: TCLabel;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    dsGrid: TDataSource;
    cdsGrid: TClientDataSet;
    dspGrid: TDataSetProvider;
    sdsGrid: TSQLDataSet;
    cdsPadrao: TClientDataSet;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodtEmissaoIni: TDateTimeField;
    cdsPadraodtEmissaoFim: TDateTimeField;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    cdsPadraoconsolida: TBooleanField;
    dsPadrao: TDataSource;
    FindCliente: TCFind;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    CLabel26: TCLabel;
    DBEvlReal: TCDBEdit;
    CLabel27: TCLabel;
    DBEvlDesconto: TCDBEdit;
    CLabel28: TCLabel;
    DBEvlAcrescimo: TCDBEdit;
    CLabel29: TCLabel;
    DBEvlPago: TCDBEdit;
    cdsGridsomavlPago: TAggregateField;
    BtnConfirma: TCBitBtn;
    actConfirma: TAction;
    cdsConfigFinancCons: TClientDataSet;
    cdsConfigFinancConsidEmpresa: TIntegerField;
    cdsConfigFinancConsCorTREC: TStringField;
    cdsConfigFinancConsCorTPAG: TStringField;
    cdsConfigFinancConsCorPREC: TStringField;
    cdsConfigFinancConsCorPPAG: TStringField;
    dspConfigFinancCons: TDataSetProvider;
    sdsConfigFinancCons: TSQLDataSet;
    cdsConfigFinancConsCorREC: TStringField;
    cdsConfigFinancConsCorPAG: TStringField;
    CPanelGradient2: TCPanelGradient;
    CLabel33: TCLabel;
    Bevel10: TBevel;
    CLabel30: TCLabel;
    LookdescAbreviada: TCLookUp;
    EdDinheiro: TCEdit;
    CLabel2: TCLabel;
    CLabel31: TCLabel;
    EdBanco: TCEdit;
    CLabel34: TCLabel;
    EdSaldoFinal: TCEdit;
    TabCaixa: TTabSheet;
    sdsMovCaixa: TSQLDataSet;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    dsMovCaixa: TDataSource;
    FindCaixa: TCFind;
    FindMovFinanceira: TCFind;
    sdsTituloRecMov: TSQLDataSet;
    dspTituloRecMov: TDataSetProvider;
    cdsTituloRecMov: TClientDataSet;
    sdsConfigMovRec: TSQLDataSet;
    dspConfigMovRec: TDataSetProvider;
    cdsConfigMovRec: TClientDataSet;
    cdsPadraodtLiquidacao: TDateTimeField;
    cdsPadraoidUsuario: TIntegerField;
    DBEidMovCaixa: TCDBEdit;
    TabBanco: TTabSheet;
    DBEidMovConta: TCDBEdit;
    sdsMovConta: TSQLDataSet;
    dspMovConta: TDataSetProvider;
    cdsMovConta: TClientDataSet;
    dsMovConta: TDataSource;
    DBEdtLiquidacao: TCDBEdit;
    CLabel36: TCLabel;
    BtnConfirmar: TCBitBtn;
    DBMdescMovCaixa: TCDBMemo;
    CLabel43: TCLabel;
    CLabel35: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    LookSinal: TCLookUp;
    CBitBtn3: TCBitBtn;
    CBitBtn1: TCBitBtn;
    LookCaixa: TCLookUp;
    DBEidCaixa: TCDBEdit;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    DBEvlMovCaixa: TCDBEdit;
    BtnPesquisar: TCBitBtn;
    DBEidUsuario: TCDBEdit;
    CLabel11: TCLabel;
    DBEidDocSerie: TCDBEdit;
    CLabel56: TCLabel;
    CLabel57: TCLabel;
    Bevel5: TBevel;
    FindConta: TCFind;
    FindMovFinanceiraC: TCFind;
    FindBanco: TCFind;
    CGroupBox4: TCGroupBox;
    CLabel9: TCLabel;
    CLabel37: TCLabel;
    DBEidCheque: TCDBEdit;
    DBEdtVencimento: TCDBEdit;
    CGroupBox1: TCGroupBox;
    DBMdescMovConta: TCDBMemo;
    CLabel47: TCLabel;
    CLabel46: TCLabel;
    DBEidMovFinanceiraC: TCDBEdit;
    LookMovFinanceiraBCO: TCLookUp;
    CLookUp2: TCLookUp;
    CBitBtn2: TCBitBtn;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    DBEidConta: TCDBEdit;
    CLabel48: TCLabel;
    CLabel45: TCLabel;
    DBEvlMovConta: TCDBEdit;
    CLabel44: TCLabel;
    DBEdtCompensacao: TCDBEdit;
    CLabel32: TCLabel;
    DBEdtMovConta: TCDBEdit;
    cdsPadraonrTitulo: TStringField;
    FindSerie: TCFind;
    cdsGridid: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididDocSerie: TStringField;
    cdsGridnrTitulo: TStringField;
    cdsGrididParcela: TSmallintField;
    cdsGrididCadGeral: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGridvlParcela: TFMTBCDField;
    cdsGridSaldo: TFMTBCDField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGridstParcela: TStringField;
    cdsGridstTitulo: TStringField;
    cdsGridtpConsulta: TStringField;
    cdsGridsel: TStringField;
    cdsGridvlPago: TFMTBCDField;
    cdsGridvlDesconto: TFMTBCDField;
    cdsGridvlAcrescimo: TFMTBCDField;
    cdsGridIndice: TStringField;
    cdsGridvlReal: TFMTBCDField;
    cdsGrididUsuario: TIntegerField;
    cbEmitir: TcxCheckBox;
    cbNominal: TcxCheckBox;
    rptCheque: TfrxDBDataset;
    Report: TfrxReport;
    BtnImpChq: TCBitBtn;
    cbPredatado: TcxCheckBox;
    btnImpRecibo: TCBitBtn;
    DBEidCadEmpresa: TCDBEdit;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    DBGrid: TCDBGrid;
    DBEsomavlPago: TCDBEdit;
    Extenso: TACBrExtenso;
    BtnSelTodos: TCBitBtn;
    btnNenhum: TCBitBtn;
    cdsPadraovlSaldoIni: TFMTBCDField;
    cdsPadraovlSaldoFim: TFMTBCDField;
    DBEvlSaldoIni: TCDBEdit;
    DBEvlSaldoFim: TCDBEdit;
    TabAdiantamento: TTabSheet;
    EDAdiantamento: TCEdit;
    CLabel4: TCLabel;
    dsAdiantamento: TDataSource;
    cdsAdiantamento: TClientDataSet;
    cdsAdiantamentovlAdiantamento: TCurrencyField;
    cdsAdiantamentodtAdiantamento: TDateField;
    cdsAdiantamentodescAdiantamento: TStringField;
    CGroupBox2: TCGroupBox;
    CLabel38: TCLabel;
    CLabel49: TCLabel;
    CLabel50: TCLabel;
    DBMdescAdiantamento: TCDBMemo;
    DBEvlAdiantamento: TCDBEdit;
    DBEdtAdiantamento: TCDBEdit;
    LookDocSerie: TCLookUp;
    FindEmpresa: TCFind;
    BtnCopiaCheque: TCBitBtn;
    cbVisado: TcxCheckBox;
    cdsGridsomavlDesconto: TAggregateField;
    cdsGridsomavlAcrescimo: TAggregateField;
    cdsPadraotpDocumento: TStringField;
    DBEtpDocumento: TCDBEdit;
    CLabel41: TCLabel;
    cdsRecibo: TClientDataSet;
    dspRecibo: TDataSetProvider;
    sdsRecibo: TSQLDataSet;
    BtnSubstituir: TCBitBtn;
    cdsTmp: TClientDataSet;
    cdsTmpidTituloPag: TIntegerField;
    cdsTmpidEmpresa: TIntegerField;
    cdsTmpidFornecedor: TIntegerField;
    cdsTmpnrTituloPag: TStringField;
    cdsTmpidDocSerie: TStringField;
    cdsTmptpDocumento: TStringField;
    cdsTmpdtEmissao: TSQLTimeStampField;
    cdsTmpidSafra: TIntegerField;
    cdsTmpidBanco: TIntegerField;
    cdsTmpidIndice: TSmallintField;
    cdsTmpidMovFinanceira: TIntegerField;
    cdsTmpidResultado: TIntegerField;
    cdsTmpidRateio: TSmallintField;
    cdsTmpidGerencial: TIntegerField;
    cdsTmpobsTituloPag: TStringField;
    cdsTmpvlTituloPag: TFMTBCDField;
    cdsTmpqtParcelas: TSmallintField;
    cdsTmpdtVencimentoIni: TSQLTimeStampField;
    cdsTmpdiasVencimento: TSmallintField;
    cdsTmpprMulta: TFMTBCDField;
    cdsTmpprDesconto: TFMTBCDField;
    cdsTmpprJuros: TFMTBCDField;
    cdsTmpincMes: TStringField;
    cdsTmpstTituloPag: TStringField;
    cdsTmpidCadEmpresa: TSmallintField;
    cdsTmpidPortador: TSmallintField;
    cdsTmpidConta: TSmallintField;
    cdsTmpidDocumento: TIntegerField;
    dspTmp: TDataSetProvider;
    sdsTmp: TSQLDataSet;
    CPanel1: TCPanel;
    cdsGridsomaTotal: TAggregateField;
    cdsGridsomaSelecao: TAggregateField;
    CLabel42: TCLabel;
    DBEsomaTotal: TCDBEdit;
    DBEsomaSelecao: TCDBEdit;
    CLabel51: TCLabel;
    cdsGridfator: TByteField;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    cdsGridsomavlPagoSelecao: TAggregateField;
    DBEsomavlPagoSelecao: TCDBEdit;
    CLabel52: TCLabel;
    cdsPadraoidContratoCompra: TStringField;
    DBEidContratoCompra: TCDBEdit;
    Label8: TLabel;
    cdsGridprMulta: TFMTBCDField;
    cdsGridprJuros: TFMTBCDField;
    BtnCalcular: TCBitBtn;
    cdsGridprDescontos: TFMTBCDField;
    procedure DBEidChequeExit(Sender: TObject);
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure DBEidMovFinanceiraCExit(Sender: TObject);
    procedure cdsLookUpReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBMdescMovCaixaExit(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure DBEvlMovContaExit(Sender: TObject);
    procedure actConfirmaExecute(Sender: TObject);
    procedure DBEvlMovCaixaExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEvlDescontoEnter(Sender: TObject);
    procedure dsGridStateChange(Sender: TObject);
    procedure DBEvlDescontoExit(Sender: TObject);
    procedure cdsGridAfterOpen(DataSet: TDataSet);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MontaHistorico;
    procedure SomaValores;
    procedure ConfigEdits;
    procedure AtualizaMov;
    procedure cbEmitirPropertiesEditValueChanged(Sender: TObject);
    procedure BtnImpChqClick(Sender: TObject);
    procedure btnImpReciboClick(Sender: TObject);
    procedure DBEidChequeEnter(Sender: TObject);
    procedure BtnSelTodosClick(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoidEmpresaValidate(Sender: TField);
    procedure RetornaAdiantamento(idCadGeral: Integer);
    procedure cdsAdiantamentoAfterInsert(DataSet: TDataSet);
    procedure DBEvlAdiantamentoExit(Sender: TObject);
    procedure LimpaAdiantamento;
    procedure BtnCopiaChequeClick(Sender: TObject);
    procedure DBEidContaExit(Sender: TObject);
    procedure BtnSubstituirClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure CalculaAcrescimosDescontos;
    procedure BtnCalcularClick(Sender: TObject);
    function VerificaCadEmpresa: Boolean;
  private
    { Private declarations }
    FOriginalOptions: TDBGridOptions;
    vlTotalPago, vlAnt, vlSaldoAdto, vlPagoAnt: Currency;
    idCadGeral, idCadEmpresa, idCadEmpresaMin, idRecibo: Integer;
    qtSel: Integer;
    historico, vlAnterior, referencia: string;
    filial, idChequeAut: boolean;
    vlRecibo, vlDescAcres: Double;
  public
    { Public declarations }
  end;

var
  FrmPagTitulo: TFrmPagTitulo;
  qtSel: Integer;

implementation

uses uFuncao, uFrmPrincipal, uRecError, uDmPadrao, uFrmCadPadrao,
  uFrmPesEmpContabil, uFrmPesEmpFiscal, uCadTituloPag;
{$R *.dfm}

procedure TFrmPagTitulo.actConfirmaExecute(Sender: TObject);
var
  vlRestante: Currency;
begin
  inherited;

  // que será o valor real baixado do titulo descontando
  vlRestante := cdsGrid.FieldByName('vlPago').AsCurrency -
    cdsGrid.FieldByName('vlAcrescimo').AsCurrency +
    cdsGrid.FieldByName('vlDesconto').AsCurrency;
  if (vlRestante > cdsGrid.FieldByName('vlReal').AsCurrency) then
  begin
    messagedlg
      ('O valor a ser abatido do titulo esta maior do que o Saldo restante!',
      mtwarning, [mbok], 0);
    exit;
  end;
  if (vlRestante < 0) then
  begin
    messagedlg('Saldo do titulo não poderá ficar menor que zero!', mtwarning,
      [mbok], 0);
    exit;
  end;
  if (cdsGrid.FieldByName('vlPago').AsCurrency < 0) then
  begin
    messagedlg('O valor pago não pode ser menor que zero!', mtwarning,
      [mbok], 0);
    exit;
  end;
  cdsGrid.Post;
  EdSaldoFinal.Value := cdsGridsomavlPago.Value -
    (EdDinheiro.Value + EdBanco.Value + EDAdiantamento.Value);
  SomaValores;
  vlPagoAnt := 0;
end;

procedure TFrmPagTitulo.actPesquisarExecute(Sender: TObject);
var
  sql, ind: string;
begin
  ind := cdsGrid.IndexFieldNames;
  funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp,
    [DBEidEmpresa, DBEidCadEmpresa, DBEidCliente, DBEnrTitulo, DBEidDocSerie,
    DBEdtEmissaoIni, DBEdtEmissaoFim, DBEdtVencimentoIni, DBEdtVencimentoFim,
    DBEvlSaldoIni, DBEvlSaldoFim, DBCKconsolida, DBEidUsuario, DBEtpDocumento,
    DBEidContratoCompra], 'spGeraTmpPagTitulo');
  // Preenche a tabela de cores
  with cdsConfigFinancCons do
  begin
    Active := false;
    CommandText := 'SELECT * FROM ConfigFinancCons WHERE idEmpresa = ' +
      DBEidEmpresa.Text;
    Active := true;
  end;
  sql := 'SELECT * FROM tmpPagTitulo WHERE idUsuario = ' + DBEidUsuario.Text;

  // showmessage(sql);
  cdsGrid.IndexFieldNames := '';
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  while not cdsGrid.Eof do
  begin
    if not(cdsGrid.State in [dsInsert, dsEdit]) then
      cdsGrid.Edit;
    cdsGridvlPago.AsFloat := 0;
    cdsGridfator.AsInteger := 0;
    cdsGrid.Post;
    cdsGrid.Next;
  end;
  cdsGrid.First;
  DBEidCliente.SetFocus;
  ConfigEdits;

  if trim(cdsGrid.IndexFieldNames) = '' then
  begin
    cdsGrid.IndexFieldNames := 'dtVencimento';
    DBGrid.Columns[9].Title.Font.Style := DBGrid.Columns[9].Title.Font.Style
      + [fsBold];
  end;
  // inicializa a tabela de caixa e banco
  cdsMovCaixa.Active := false;
  cdsMovCaixa.CommandText := 'SELECT * FROM MovCaixa WHERE 1=2';
  cdsMovCaixa.Active := true;

  cdsMovConta.Active := false;
  cdsMovConta.CommandText := 'SELECT * FROM MovConta WHERE 1=2';
  cdsMovConta.Active := true;

  PagAbas.ActivePageIndex := 0;
  idCadGeral := 0;
  idCadEmpresa := 0;
  idCadEmpresaMin := 0;
  qtSel := 0;
  vlPagoAnt := 0;
  // Adiantamento
  LimpaAdiantamento;
  RetornaAdiantamento(0);
  inherited;
  if trim(ind) <> '' then
    cdsGrid.IndexFieldNames := ind;
end;

procedure TFrmPagTitulo.AtualizaMov;
var
  sql: string;
begin
  funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento], true);
  if trim(DBEidMovFinanceiraC.Text) <> '' then
    funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento],
      trim(DBEidMovFinanceiraC.Text) <> '7');
  //
  cbEmitir.Enabled := trim(DBEidMovFinanceiraC.Text) = '7';
  if idChequeAut then
  begin
    if cdsMovConta.FieldByName('idMovFinanceira').AsInteger = 7 then
    begin
      funcao.SomenteLeitura([DBEdtVencimento], false);
      funcao.SomenteLeitura([DBEidCheque], true);
      sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsMovConta.FieldByName
        ('idConta').AsString;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        cdsMovConta.FieldByName('idCheque').AsInteger :=
          FieldByName('ultidCheque').AsInteger + 1;
      end;
    end;
  end;
  //
end;

procedure TFrmPagTitulo.BtnCalcularClick(Sender: TObject);
begin
  inherited;
  if (messagedlg('Deseja calcular acréscimos e descontos?', mtConfirmation,
    [mbYes, mbNo], 0, mbNo) = mrYes) then
  begin
    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if cdsGridsel.AsString = 'S' then
      begin
        CalculaAcrescimosDescontos;
      end;
      cdsGrid.Next;
    end;
  end;
end;

procedure TFrmPagTitulo.BtnConfirmarClick(Sender: TObject);
var
  idMovCaixa, idMovConta: Integer;
  t: TDBXTransaction;
  sql, fator: string;
begin
  inherited;
  if EdSaldoFinal.Value <> 0 then
  begin
    messagedlg('O Saldo final tem que ser zero! Pagamento Cancelado', mtwarning,
      [mbok], 0);
    exit;
  end;
  idMovCaixa := 0;
  idMovConta := 0;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  // marca a transação
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    // se houver caixa inclui o caixa
    if (funcao.VerificaAlteracoes([cdsMovCaixa])) and
      (cdsMovCaixa.State in [dsEdit, dsInsert]) and
      (cdsMovCaixa.FieldByName('vlMovCaixa').Value > 0) then
    // teve pagamento com o caixa
    begin
      idMovCaixa := frmPrincipal.ExecutaSQLRet([], '',
        'SELECT MAX(idMovCaixa) maximo FROM MovCaixa').FieldByName('maximo')
        .AsInteger;
      if (not idMovCaixa > 0) then
        idMovCaixa := 1
      else
        idMovCaixa := idMovCaixa + 1;
      cdsMovCaixa.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
      cdsMovCaixa.FieldByName('idCadEmpresa').AsInteger := idCadEmpresaMin;
      cdsMovCaixa.FieldByName('idMovCaixa').AsInteger := idMovCaixa;
      cdsMovCaixa.FieldByName('idCadGeral').Value := idCadGeral;
      cdsMovCaixa.FieldByName('dtMovCaixa').AsDateTime :=
        cdsPadrao.FieldByName('dtLiquidacao').AsDateTime;
      cdsMovCaixa.FieldByName('fator').AsInteger := -1;
      if not funcao.VerCampoRequerido([cdsMovCaixa], '') then
      begin
        dmPadrao.dbConexao.RollbackFreeAndNil(t);
        exit;
      end;
      cdsMovCaixa.Post;
      cdsMovCaixa.ApplyUpdates(0);
    end; // fim da verificação de alterações no caixa

    // se houver conta inclui o lançamento bancário
    if (funcao.VerificaAlteracoes([cdsMovConta])) and
      (cdsMovConta.State in [dsEdit, dsInsert]) and
      (cdsMovConta.FieldByName('vlMovConta').Value > 0) then
    // teve pagamento com conta
    begin
      idMovConta := frmPrincipal.ExecutaSQLRet([], '',
        'SELECT MAX(idMovConta) maximo FROM MovConta').FieldByName('maximo')
        .AsInteger;
      if (not idMovConta > 0) then
        idMovConta := 1
      else
        idMovConta := idMovConta + 1;
      cdsMovConta.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
      cdsMovConta.FieldByName('idCadEmpresa').AsInteger := idCadEmpresaMin;
      // cdsMovConta.FieldByName('dtMovConta').AsDateTime := cdsPadrao.FieldByName('dtLiquidacao').AsDateTime;
      cdsMovConta.FieldByName('idMovConta').AsInteger := idMovConta;
      cdsMovConta.FieldByName('idCadGeral').Value := idCadGeral;
      if not funcao.VerCampoRequerido([cdsMovConta], '') then
      begin
        dmPadrao.dbConexao.RollbackFreeAndNil(t);
        exit;
      end;
      cdsMovConta.Post;
      //
      cdsMovConta.ApplyUpdates(0);
      //
    end; // fim da verificação de alterações no caixa

    if cdsGrid.State in [dsEdit, dsInsert] then
      cdsGrid.Cancel;
    cdsGrid.ApplyUpdates(0);

    if cdsMovConta.FieldByName('idCheque').AsString <> '' then
    begin
      sql := 'UPDATE Conta SET ultidCheque = ' + cdsMovConta.FieldByName
        ('idCheque').AsString + ' WHERE idConta = ' + cdsMovConta.FieldByName
        ('idConta').AsString + ' AND geradoSeq = ' + QuotedStr('S');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    // se houve adiantamento faz execução diferenciada na procedure
    if (funcao.VerificaAlteracoes([cdsAdiantamento])) and
      (cdsAdiantamento.State in [dsEdit, dsInsert]) and
      (cdsAdiantamentovlAdiantamento.Value > 0) then
    // teve pagamento com adiantamento
    begin
      if not funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp,
        [DBEidEmpresa, DBEdtLiquidacao, DBEidMovCaixa, DBEidMovConta,
        DBEidUsuario, DBEvlAdiantamento, DBEdtAdiantamento,
        DBMdescAdiantamento], 'spPagTitulo') then
        frmPrincipal.erro := 1;
    end
    else // executa a procedure sem passar os parametros de adiantamento
    begin
      if not funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp,
        [DBEidEmpresa, DBEdtLiquidacao, DBEidMovCaixa, DBEidMovConta,
        DBEidUsuario, nil, nil, nil], 'spPagTitulo') then
        frmPrincipal.erro := 1;
    end;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      dmPadrao.dbConexao.RollbackFreeAndNil(t);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    { *****************   Aqui foi todo modificado para a geração do Recibo ou seja o mesmo só vai ser gerado
      após a concretização do Pagamento }
    // Monta o histórico da Referência
    referencia := '';
    if trim(DBMdescMovConta.Text) <> '' then
    begin
      sql := 'select b.descBanco + ' + QuotedStr(', Ag.: ') +
        ' + c.idAgencia + ' + QuotedStr('  Conta: ') +
        ' + c.idContaCorrente descConta   from Conta c INNER JOIN Banco b ON c.idBanco = b.idBanco WHERE c.idConta = '
        + DBEidConta.Text;
      referencia := frmPrincipal.ExecutaSQLRet([], '', sql)
        .FieldByName('descConta').AsString + ', ' + DBMdescMovConta.Text;
      if trim(DBEidCheque.Text) <> '' then
        referencia := referencia + ',  CHEQUE: ' + DBEidCheque.Text;
    end;

    if trim(DBMdescMovCaixa.Text) <> '' then
    begin
      if trim(referencia) <> '' then
        referencia := referencia + ' - ';
      referencia := referencia + DBMdescMovCaixa.Text + ' Conta Caixa: ' +
        DBEidCaixa.Text;
    end;

    if trim(DBMdescAdiantamento.Text) <> '' then
    begin
      if trim(referencia) <> '' then
        referencia := referencia + ' - ';
      referencia := referencia + 'Via Adiantamento: ' +
        DBMdescAdiantamento.Text;
    end;

    // Busca os valores para ser impresso nos Recibos
    if (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat > 0) AND
      (cdsMovConta.FieldByName('vlMovConta').AsFloat > 0) then
    begin
      vlRecibo := cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat +
        cdsMovConta.FieldByName('vlMovConta').AsFloat;
    end
    else if cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat > 0 then
    begin
      vlRecibo := cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat;
    end
    else if cdsMovConta.FieldByName('vlMovConta').AsFloat > 0 then
    begin
      vlRecibo := cdsMovConta.FieldByName('vlMovConta').AsFloat;
    end
    else if cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat > 0 then
    begin
      vlRecibo := cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat;
    end
    else if (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat > 0) AND
      (cdsMovConta.FieldByName('vlMovConta').AsFloat > 0) AND
      (cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat > 0) then
    begin
      vlRecibo := cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat +
        cdsMovConta.FieldByName('vlMovConta').AsFloat +
        cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat;
    end;

    // Faz verificações de Valores de Descontos e Acréscimos
    if cdsGridvlDesconto.AsFloat <> 0 then
    begin
      vlDescAcres := cdsGridvlDesconto.AsFloat;
      fator := 'DE';
    end
    else if cdsGridvlAcrescimo.AsFloat <> 0 then
    begin
      vlDescAcres := cdsGridvlAcrescimo.AsFloat;
      fator := 'AC';
    end;

    // Tratamento de Adiantamentos
    if ((cdsGridvlAcrescimo.AsFloat = 0) AND (cdsGridvlDesconto.AsFloat = 0) AND
      (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat <> 0)) then
    begin
      vlDescAcres := cdsAdiantamentovlAdiantamento.AsFloat;
      fator := 'AD';
    end;

    // Busca numeração do recibo
    idRecibo := frmPrincipal.ExecutaSQLRet([], '',
      'SELECT MAX(idRecibo) id FROM Recibo WHERE tipo = 2').FieldByName('id')
      .AsInteger + 1;
    if idRecibo > 0 then
    begin
      if not(cdsRecibo.Active) then
        cdsRecibo.Open;
      cdsRecibo.Append;
      cdsRecibo.FieldByName('idEmpresa').AsInteger :=
        cdsGrididEmpresa.AsInteger;
      cdsRecibo.FieldByName('idCadEmpresa').AsInteger :=
        cdsGrididCadEmpresa.AsInteger;
      cdsRecibo.FieldByName('idRecibo').AsInteger := idRecibo;
      cdsRecibo.FieldByName('idMovCaixa').AsInteger := idMovCaixa;
      cdsRecibo.FieldByName('idMovConta').AsInteger := idMovConta;
      cdsRecibo.FieldByName('tipo').AsInteger := 2;
      cdsRecibo.FieldByName('vlRecibo').AsFloat := vlRecibo;
      cdsRecibo.FieldByName('dtRecibo').AsDateTime :=
        StrToDate(DBEdtLiquidacao.Text);
      cdsRecibo.FieldByName('referencia').AsString := referencia;
      cdsRecibo.FieldByName('idCadGeral').AsInteger :=
        cdsGrididCadGeral.AsInteger;
      cdsRecibo.FieldByName('vlDescAcres').AsFloat := vlDescAcres;
      cdsRecibo.FieldByName('fator').AsString := fator;
      cdsRecibo.Post;
      cdsRecibo.ApplyUpdates(0);
    end;
    cbEmitir.Checked := false;
  end;
  with frmPrincipal.ExecutaSQLRet([], '',
    'SELECT * FROM ConfigFinanc WHERE idEmpresa = ' + cdsPadrao.FieldByName
    ('idEmpresa').AsString) do
  begin
    if FieldByName('impRecibo').AsString = 'S' then
    begin
      If (messagedlg('Deseja Imprimir o Recibo?', mtConfirmation, [mbYes, mbNo],
        0) = mrYes) Then
        btnImpRecibo.Click;
    end;
  end;
  actPesquisar.Execute;
end;

procedure TFrmPagTitulo.BtnCopiaChequeClick(Sender: TObject);
var
  sql: String;
begin
  inherited;
  // Report.DataSet := rptCheque;
  //
  If Not(FileExists(dmPadrao.RetornaConfig('caminho_rel') +
    Format('RelCopia_%d.fr3', [dsMovConta.DataSet.FieldByName('idConta')
    .AsInteger]))) Then
  Begin
    //
    ShowMessage
      ('O arquivo de emissão do cheque ainda não foi configurado. Verifique.');
    exit;
    //
  End;
  //
  sql := 'select g.idCadGeral, a.idCidade, rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade from cadgeral g inner join cadadicional a on (a.idcadgeral = g.idcadgeral) inner join cidade c on (c.idCidade = a.idCidade) where g.idcadgeral = '
    + DBEidEmpresa.Text;
  //
  Extenso.Valor := cdsMovConta.FieldByName('vlMovConta').AsFloat;
  //
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') +
    Format('RelCopia_%d.fr3', [dsMovConta.DataSet.FieldByName('idConta')
    .AsInteger]));
  //
  TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text :=
    StringReplace(TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text,
    '[extenso-monetario]', UpperCase(Extenso.Texto),
    [rfReplaceAll, rfIgnoreCase]);
  // TfrxMemoView(Report.FindComponent('Line1')).Visible          := cbCruzado.Checked;
  // TfrxMemoView(Report.FindComponent('Line2')).Visible          := cbCruzado.Checked;
  TfrxMemoView(Report.FindComponent('lblNominal')).Memo.Text :=
    trim(LookDescCadCliente.Caption);
  TfrxMemoView(Report.FindComponent('lblNominal')).Visible := cbNominal.Checked;
  TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text :=
    StringReplace(TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text,
    '[data]', cdsMovConta.FieldByName('dtVencimento').Text,
    [rfReplaceAll, rfIgnoreCase]);
  TfrxMemoView(Report.FindComponent('lblPredatado')).Visible :=
    cbPredatado.Checked;
  //
  TfrxMemoView(Report.FindComponent('lblLocal')).Memo.Text :=
    frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('NOME_CIDADE').AsString;
  TfrxMemoView(Report.FindComponent('lblDia')).Memo.Text :=
    funcao.StrZero(funcao.Day(Date()), 2);
  TfrxMemoView(Report.FindComponent('lblMes')).Memo.Text :=
    funcao.CDoW(Date(), exdMes);
  TfrxMemoView(Report.FindComponent('lblAno')).Memo.Text :=
    IntToStr(funcao.Year(Date()));
  //
  // dados da cópia de cheque
  TfrxMemoView(Report.FindComponent('lblnrCheque')).Memo.Text :=
    DBEidCheque.Text;
  if cbVisado.Checked then
    TfrxMemoView(Report.FindComponent('lblVisado')).Memo.Text := 'X'
  else
    TfrxMemoView(Report.FindComponent('lblVisado')).Memo.Clear;

  // if cbCruzado.Checked then
  // TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Text  := 'X'
  // else
  // TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Clear;

  TfrxMemoView(Report.FindComponent('lblBancoConta')).Memo.Text :=
    'Ag.:' + trim(LookAgencia.Caption) + ' - ' + 'C/C.: ' +
    trim(LookContaCorrente.Caption) + ' - ' + trim(LookdescConta.Caption);
  TfrxMemoView(Report.FindComponent('lblHistorico')).Memo.Text :=
    trim(DBMdescMovConta.Text);

  Report.ShowReport;

end;

procedure TFrmPagTitulo.BtnImpChqClick(Sender: TObject);
var
  sql: String;
begin
  inherited;
  Report.DotMatrixReport := true;
  Report.DataSet := rptCheque;
  //
  If Not(FileExists(dmPadrao.RetornaConfig('caminho_rel') +
    Format('RelCheque_%d.fr3', [dsMovConta.DataSet.FieldByName('idConta')
    .AsInteger]))) Then
  Begin
    //
    ShowMessage
      ('O arquivo de emissão do cheque ainda não foi configurado. Verifique.');
    exit;
    //
  End;
  //
  sql := 'select g.idCadGeral, a.idCidade, rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade from cadgeral g inner join cadadicional a on (a.idcadgeral = g.idcadgeral) inner join cidade c on (c.idCidade = a.idCidade) where g.idcadgeral = '
    + DBEidEmpresa.Text;
  //
  Extenso.Valor := cdsMovConta.FieldByName('vlMovConta').AsFloat;
  //
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') +
    Format('RelCheque_%d.fr3', [dsMovConta.DataSet.FieldByName('idConta')
    .AsInteger]));
  //
  TfrxDMPMemoView(Report.FindComponent('lblExtenso')).Memo.Text :=
    StringReplace(TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text,
    '[extenso-monetario]', UpperCase(Extenso.Texto),
    [rfReplaceAll, rfIgnoreCase]);
  // TfrxDMPMemoView(Report.FindComponent('Line1')).Visible          := cbCruzado.Checked;
  // TfrxDMPMemoView(Report.FindComponent('Line2')).Visible          := cbCruzado.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Memo.Text :=
    trim(LookDescCadCliente.Caption);
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Visible :=
    cbNominal.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Memo.Text :=
    StringReplace(TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text,
    '[data]', cdsMovConta.FieldByName('dtVencimento').Text,
    [rfReplaceAll, rfIgnoreCase]);
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Visible :=
    cbPredatado.Checked;
  //
  TfrxDMPMemoView(Report.FindComponent('lblLocal')).Memo.Text :=
    frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('NOME_CIDADE').AsString;
  TfrxDMPMemoView(Report.FindComponent('lblDia')).Memo.Text :=
    funcao.StrZero(funcao.Day(Date()), 2);
  TfrxDMPMemoView(Report.FindComponent('lblMes')).Memo.Text :=
    funcao.CDoW(Date(), exdMes);
  TfrxDMPMemoView(Report.FindComponent('lblAno')).Memo.Text :=
    IntToStr(funcao.Year(Date()));
  //
  Report.ShowReport;
  //

  // Marca a impressão do cheque -- feito via script para não causar problemas no dataset
  if not(cdsMovConta.State in [dsEdit, dsInsert]) then
    cdsMovConta.Edit;
  cdsMovConta.FieldByName('impresso').AsString := 'S';

end;

procedure TFrmPagTitulo.btnImpReciboClick(Sender: TObject);
Var
  slSQL: TStringList;
  sql: string;
begin
  inherited;
  Report.DotMatrixReport := false;
  // If (cdsGridsomavlPago.Value <= 0) Then
  // Exit;
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'Recibo.fr3');
  slSQL := TStringList.Create;
  slSQL.Add(
    'select g.idCadGeral, a.descCadAdicional, a.idInscEstadual, a.idCnpjCpf, a.idCidade,');
  slSQL.Add('a.endereco, a.numero, a.complemento, a.bairro, a.cep, a.fone,');
  slSQL.Add(
    'rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade, rtrim(c.codDDD) codDDD');
  slSQL.Add('from cadgeral g');
  slSQL.Add('inner join cadadicional a');
  slSQL.Add('on (a.idcadgeral = g.idcadgeral)');
  slSQL.Add('inner join cidade c');
  slSQL.Add('on (c.idCidade = a.idCidade)');
  slSQL.Add('where g.idcadgeral = ' + DBEidEmpresa.Text + ' and');
  slSQL.Add('a.idcadadicional = ' + DBEidCadEmpresa.Text + ' and');
  slSQL.Add('g.empresa = ''S''');

  sql := 'SELECT * FROM Recibo WHERE idEmpresa = ' + DBEidEmpresa.Text +
    ' AND idRecibo = ' + IntToStr(idRecibo) + ' AND tipo = 2';
  cdsRecibo.Active := false;
  cdsRecibo.CommandText := sql;
  cdsRecibo.Active := true;
  referencia := cdsRecibo.FieldByName('referencia').AsString;
  Extenso.Valor := cdsRecibo.FieldByName('vlRecibo').Value;

  (Report.FindComponent('Memo40') as TfrxMemoView).Visible := false;
  (Report.FindComponent('Memo26') as TfrxMemoView).Visible := false;
  (Report.FindComponent('Memo41') as TfrxMemoView).Visible := false;
  (Report.FindComponent('Memo39') as TfrxMemoView).Visible := false;

  // Report.Variables['idRecibo']            := QuotedStr('PAG/XXX000001');

  Report.Variables['Nome-Assinatura'] :=
    QuotedStr(frmPrincipal.ExecutaSQLRet([], '',
    'select descCadAdicional from cadadicional where idcadgeral = ' +
    cdsRecibo.FieldByName('idCadGeral').AsString)
    .FieldByName('descCadAdicional').AsString);
  Report.Variables['Cnpj-Cpf-Assinatura'] :=
    QuotedStr(frmPrincipal.ExecutaSQLRet([], '',
    'select idCnpjCpf from cadadicional where idcadgeral = ' +
    cdsRecibo.FieldByName('idCadGeral').AsString).FieldByName('idCnpjCpf')
    .AsString);
  Report.Variables['valor'] :=
    QuotedStr(funcao.Mascara(FloatToStr(Extenso.Valor), 6, ''));
  Report.Variables['extenso-monetario'] := QuotedStr(UpperCase(Extenso.Texto));

  // Inicio do Tratamento de Valor de Desconto
  if (cdsRecibo.FieldByName('vlDescAcres').AsFloat <> 0) AND
    (trim(cdsRecibo.FieldByName('fator').AsString) = 'DE') then
  begin
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Add('Desconto:');
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Add('Desconto:');
    Report.Variables['vlDescAcres'] :=
      cdsRecibo.FieldByName('vlDescAcres').Value;
  end
  else if (cdsRecibo.FieldByName('vlDescAcres').AsFloat <> 0) AND
    (trim(cdsRecibo.FieldByName('fator').AsString) = 'AC') then
  begin
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Add('Acrescimo:');
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Add('Acrescimo:');
    Report.Variables['vlDescAcres'] :=
      cdsRecibo.FieldByName('vlDescAcres').Value;
  end;

  if (cdsRecibo.FieldByName('vlDescAcres').AsFloat <> 0) AND
    (trim(cdsRecibo.FieldByName('fator').AsString) = 'AD') then
  begin
    // Apenas para não dar erros
    Report.Variables['vlDescAcres'] :=
      cdsRecibo.FieldByName('vlDescAcres').Value;
    (Report.FindComponent('Memo40') as TfrxMemoView).Visible := false;
    (Report.FindComponent('Memo26') as TfrxMemoView).Visible := false;
    (Report.FindComponent('Memo41') as TfrxMemoView).Visible := false;
    (Report.FindComponent('Memo39') as TfrxMemoView).Visible := false;
  end;

  { if ((cdsGridvlAcrescimo.AsFloat = 0) AND (cdsGridvlDesconto.AsFloat = 0) AND (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat <> 0)) then
    begin
    // Apenas para não dar erros
    Report.Variables['vlDescAcres'] := cdsAdiantamentovlAdiantamento.AsFloat;
    (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
    (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
    (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
    (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;
    end;

    if ((cdsGridvlAcrescimo.AsFloat = 0) AND (cdsGridvlDesconto.AsFloat = 0) AND (cdsMovConta.FieldByName('vlMovConta').AsFloat <> 0)) then
    begin
    // Apenas para não dar erros
    Report.Variables['vlDescAcres'] := cdsAdiantamentovlAdiantamento.AsFloat;
    (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
    (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
    (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
    (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;
    end; }

  // Fim do Tratamento de Valor de Desconto

  { //Monta o histórico da Referência
    referencia := '';
    if Trim(DBMDescMovConta.Text) <> '' then
    begin
    sql := 'select b.descBanco + ' + QuotedStr(', Ag.: ') + ' + c.idAgencia + '+ QuotedStr('  Conta: ') +
    ' + c.idContaCorrente descConta   from Conta c INNER JOIN Banco b ON c.idBanco = b.idBanco WHERE c.idConta = ' + DBEidConta.Text;
    referencia := DBMDescMovConta.Text + ', ' + frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descConta').AsString;
    if trim(DBEidCheque.Text) <> '' then
    referencia := referencia + ',  CHEQUE: ' + DBEidCheque.Text;
    end;

    if Trim(DBMDescMovCaixa.Text) <> '' then
    begin
    if trim(referencia) <> '' then
    referencia := referencia + ' - ';
    referencia := referencia + DBMDescMovCaixa.Text + ' Conta Caixa: ' + DBEidCaixa.Text;
    end; }

  { if Trim(DBMDescAdiantamento.Text) <> '' then
    begin
    if trim(referencia) <> '' then
    referencia := referencia + ' - ';
    referencia := referencia + 'Via Adiantamento: ' + DBMDescAdiantamento.Text;
    end; }

  Report.Variables['Referencia'] := QuotedStr(referencia);
  With frmPrincipal.ExecutaSQLRet([], '', slSQL.Text) Do
  Begin
    Report.Variables['Nome-Empresa'] :=
      QuotedStr(FieldByName('descCadAdicional').AsString);
    Report.Variables['Cnpj-Cpf-Empresa'] :=
      QuotedStr(FieldByName('idCnpjCpf').AsString);
    Report.Variables['IE-RG-Empresa'] :=
      QuotedStr(FieldByName('idInscEstadual').AsString);
    Report.Variables['Endereco'] :=
      QuotedStr(Format('%s, %s - %s', [FieldByName('endereco').AsString,
      FieldByName('numero').AsString, FieldByName('complemento').AsString]));
    Report.Variables['Cidade'] :=
      QuotedStr(FieldByName('nome_cidade').AsString);
    Report.Variables['Fone'] :=
      QuotedStr(Format('(%s)%s', [FieldByName('codDDD').AsString,
      FieldByName('fone').AsString]));
    Report.Variables['Nome'] := QuotedStr(FieldByName('descCadAdicional')
      .AsString);
    Report.Variables['local-data'] :=
      QuotedStr(FieldByName('NOME_CIDADE').AsString + ', ' +
      funcao.CDoW(cdsRecibo.FieldByName('dtRecibo').AsDateTime, exdDMA));
    Report.Variables['idRecibo'] := IntToStr(idRecibo);
  End;
  slSQL.Free;
  slSQL := Nil;
  Report.ShowReport;
end;

procedure TFrmPagTitulo.BtnNenhumClick(Sender: TObject);
begin
  inherited;
  DBGrid.Cursor := crHourGlass;
  cdsGrid.First;
  repeat
    cdsGrid.Edit;
    cdsGridsel.Value := 'N';
    cdsGridfator.AsInteger := 0;
    cdsGrid.Post;
    cdsGrid.Next;
  until cdsGrid.Eof;
  DBGrid.Refresh;
  cdsGrid.First;
  DBGrid.Cursor := crDefault;
  EdSaldoFinal.Clear;
  DBEsomavlPago.Clear;
end;

procedure TFrmPagTitulo.BtnSelTodosClick(Sender: TObject);
var
  vlsomar: Currency;
begin
  inherited;
  cdsGrid.First;
  repeat
    cdsGrid.Edit;
    cdsGridsel.Value := 'S';
    cdsGridfator.AsInteger := 1;
    cdsGrid.Post;
    cdsGrid.Next;
  until cdsGrid.Eof;
  DBGrid.Refresh;
  cdsGrid.First;
  with cdsGrid do
  begin
    First;
    idCadGeral := 0;
    idCadEmpresa := 0;
    idCadEmpresaMin := 0;
    while not Eof do
    begin
      Edit;
      if (idCadGeral <> 0) and (idCadEmpresa <> 0) then
        // Modificado pelo protocolo 122
        // if (idCadGeral <> FieldByName('idCadGeral').AsInteger) or (idCadEmpresa <> FieldByName('idCadEmpresa').AsInteger) then
        if (idCadGeral <> FieldByName('idCadGeral').AsInteger) then
        begin
          messagedlg
            ('Não é possível selecionar titulos de dois fornecedores ou filiais diferentes!',
            mtinformation, [mbok], 0);
          exit;
        end;
      FieldByName('sel').AsString := 'S';
      cdsGridfator.AsInteger := 1;
      qtSel := qtSel + 1;
      idCadGeral := FieldByName('idCadGeral').AsInteger;
      idCadEmpresa := FieldByName('idCadEmpresa').AsInteger;
      if ((idCadEmpresaMin = 0) AND (VerificaCadEmpresa)) then
          idCadEmpresaMin := idCadEmpresa
        else
          if idCadEmpresa <> StrToInt(DBEidCadEmpresa.Text) then
            idCadEmpresaMin := StrToInt(DBEidCadEmpresa.Text)
          else
            if idCadEmpresa < idCadEmpresaMin then
              idCadEmpresaMin := idCadEmpresa;

      if FieldByName('sel').AsString = 'S' then
      begin
        // FieldByName('vlPago').AsCurrency := FieldByName('vlReal').AsCurrency;
        vlsomar := FieldByName('vlPago').AsCurrency;
      end
      else
      begin
        vlsomar := FieldByName('vlPago').AsCurrency * -1;
        FieldByName('vlPago').AsCurrency := 0;
        FieldByName('vlAcrescimo').AsCurrency := 0;
        FieldByName('vlDesconto').AsCurrency := 0;
      end;
      Post;
      DBGrid.Refresh;
      EdSaldoFinal.Value := cdsGridsomavlPago.Value -
        (EdDinheiro.Value + EdBanco.Value + EDAdiantamento.Value);
      Next;
    end; // while not eof do
  end; // with cdsGrid do
end;

procedure TFrmPagTitulo.BtnSubstituirClick(Sender: TObject);
var
  sql, idTituloPag: string;
begin
  // Utilizei a mesma tela pois a mesma ja facilita na seleção de varios lançamentos
  inherited;
  with cdsGrid do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('sel').AsString = 'S' then
      begin
        if idTituloPag <> '' then
          idTituloPag := idTituloPag + ', ' +
            QuotedStr(FieldByName('nrTitulo').AsString)
        else
          idTituloPag := '(' + QuotedStr(FieldByName('nrTitulo').AsString);
      end;
      Next;
    end;
    if idTituloPag <> '' then
      idTituloPag := idTituloPag + ')';
  end;
  sql := 'SELECT idFornecedor, SUM(vlTituloPag) as vlTituloPag FROM TituloPag WHERE nrTituloPag IN '
    + idTituloPag + ' GROUP BY idFornecedor';
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    Application.CreateForm(TFrmCadTituloPag, FrmCadTituloPag);
    FrmCadTituloPag.BtnNovo.Click;
    FrmCadTituloPag.cdsPadraoidFornecedor.AsInteger :=
      FieldByName('idFornecedor').AsInteger;
    FrmCadTituloPag.cdsPadraoidMovFinanceira.AsInteger := 41;
    FrmCadTituloPag.cdsPadraovlTituloPag.AsFloat :=
      FieldByName('vlTituloPag').AsFloat;
    FrmCadTituloPag.cdsPadraoidDocSerie.AsString := 'TPAG';
    FrmCadTituloPag.Show;
  end;
end;

procedure TFrmPagTitulo.CalculaAcrescimosDescontos;
var
  mes: Integer;
  ValorJuros, ValorMulta: Currency;
begin
  cdsGrid.Edit;
  cdsGridvlPago.AsCurrency := cdsGridvlReal.AsCurrency;
  cdsGrid.Post;
  // Calcula os juros e multa dos titulos
  mes := MonthsBetween(cdsGriddtVencimento.AsDateTime, now);
  if ((now > cdsGriddtVencimento.AsDateTime) and (mes = 0)) then
    mes := 1;
  ValorMulta := 0;
  ValorJuros := 0;
  if ((mes >= 1) and (now > cdsGriddtVencimento.AsDateTime)) then
  begin
    ValorMulta := ((cdsGridvlReal.AsCurrency * cdsGridprMulta.AsCurrency *
      mes) / 100);
    ValorJuros := ((cdsGridvlReal.AsCurrency * cdsGridprJuros.AsCurrency *
      mes) / 100);
    cdsGrid.Edit;
    cdsGridvlAcrescimo.AsCurrency := (ValorMulta + ValorJuros);
    cdsGridvlPago.AsCurrency :=
      (cdsGridvlReal.AsCurrency + cdsGridvlAcrescimo.AsCurrency);
    cdsGridSaldo.AsCurrency :=
      (cdsGridvlReal.AsCurrency + cdsGridvlAcrescimo.AsCurrency);
    cdsGrid.Post;
  end;
  // Calcula os descontos dos titulos
  if now <= cdsGriddtVencimento.AsDateTime then
  begin
    cdsGrid.Edit;
    cdsGridvlDesconto.AsCurrency :=
      ((cdsGridvlReal.AsCurrency * cdsGridprDescontos.AsCurrency) / 100);
    cdsGridvlPago.AsCurrency :=
      (cdsGridvlReal.AsCurrency - cdsGridvlDesconto.AsCurrency);
    cdsGridSaldo.AsCurrency :=
      (cdsGridvlReal.AsCurrency - cdsGridvlDesconto.AsCurrency);
    cdsGrid.Post;
  end;
end;

// procedure TFrmPagTitulo.BtnSelTodosClick(Sender: TObject);
procedure TFrmPagTitulo.cbEmitirPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  //
  cbNominal.Enabled := TcxCheckBox(Sender).Checked;
  // cbCruzado.Enabled   := TcxCheckBox(Sender).Checked;
  cbPredatado.Enabled := TcxCheckBox(Sender).Checked;
  BtnImpChq.Enabled := TcxCheckBox(Sender).Checked;
  BtnCopiaCheque.Enabled := TcxCheckBox(Sender).Checked;
  cbVisado.Enabled := TcxCheckBox(Sender).Checked;
  //
end;

procedure TFrmPagTitulo.cdsAdiantamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // Adiantamento
  cdsAdiantamentodtAdiantamento.AsDateTime := Date;
  MontaHistorico;
  cdsAdiantamentodescAdiantamento.AsString := historico;
end;

procedure TFrmPagTitulo.cdsGridAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  for i := 0 to DataSet.FieldDefs.Count - 1 do
    DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText :=
      funcao.FieldGetText;
end;

procedure TFrmPagTitulo.cdsLookUpReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  Action := HandleReconcileError(DataSet, UpdateKind, E);
  frmPrincipal.erro := 1;
end;

procedure TFrmPagTitulo.cdsMovCaixaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MontaHistorico;
  cdsMovCaixa.FieldByName('descMovCaixa').AsString := historico;
end;

procedure TFrmPagTitulo.cdsMovContaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MontaHistorico;
  cdsMovConta.FieldByName('idMovConta').AsInteger := 0;
  cdsMovConta.FieldByName('idEmpresa').AsInteger := 0;
  cdsMovConta.FieldByName('idCadEmpresa').AsInteger := 0;
  cdsMovConta.FieldByName('descMovConta').AsString := historico;
  cdsMovConta.FieldByName('fator').AsInteger := -1;
  // é negativo por ser pagamento
  cdsMovConta.FieldByName('impresso').AsString := 'N';
end;

procedure TFrmPagTitulo.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('dtLiquidacao').AsDateTime := Date;
  cdsPadrao.FieldByName('idUsuario').AsString := frmPrincipal.idUsuario;
end;

procedure TFrmPagTitulo.cdsPadraoidEmpresaValidate(Sender: TField);
begin
  inherited;
  if (trim(cdsPadraoidEmpresa.AsString) <> '') then
  begin
    if not filial then
    begin
      cdsPadrao.FieldByName('idCadEmpresa').AsString :=
        frmPrincipal.ExecutaSQLRet([], '',
        'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = '
        + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
        cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;

    end;
  end;
end;

procedure TFrmPagTitulo.ConfigEdits;
begin
  // configura o formato dos edits
  // EDTotalRec.Decimals := CurrencyDecimals;
  EdDinheiro.Decimals := FormatSettings.CurrencyDecimals;
  EdBanco.Decimals := FormatSettings.CurrencyDecimals;
  EDAdiantamento.Decimals := FormatSettings.CurrencyDecimals;
  EdSaldoFinal.Decimals := FormatSettings.CurrencyDecimals;
  // zera os edits
  EdDinheiro.Value := 0;
  EdBanco.Value := 0;
  EDAdiantamento.Value := 0;
end;

procedure TFrmPagTitulo.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add
    ('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
    ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = '
    + ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario +
    '  AND acessa = ' + QuotedStr('S') +
    ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add
    ('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
    ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = '
    + ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario +
    '  AND acessa = ' + QuotedStr('S') +
    ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add
    ('SELECT idCnpjCpf FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
    ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = '
    + ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario +
    '  AND acessa = ' + QuotedStr('S') +
    ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TFrmPagTitulo.DBEidChequeEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidCheque.Text;
end;

procedure TFrmPagTitulo.DBEidChequeExit(Sender: TObject);
var
  sql: string;
begin
  inherited;
  if trim(DBEidCheque.Text) = '' then
    exit;

  if vlAnterior <> DBEidCheque.Text then
  begin
    if trim(DBEidConta.Text) = '' then
    begin
      messagedlg('Você deve informar a conta!', mtwarning, [mbok], 0);
      DBEidConta.SetFocus;
      exit;
    end;
    sql := 'SELECT COUNT(*) qtde FROM MovConta WHERE idCheque IS NOT NULL AND idConta = '
      + DBEidConta.Text + ' AND idCheque = ' + QuotedStr(DBEidCheque.Text);

    if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger > 0
    then
    begin
      messagedlg('Cheque já existente!', mtwarning, [mbok], 0);
      cdsMovConta.FieldByName('idCheque').Clear;
      DBEidCheque.SetFocus;
      exit;
    end;
  end;
end;

procedure TFrmPagTitulo.DBEidContaExit(Sender: TObject);
var
  sql: string;
begin
  inherited;
  sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsMovConta.FieldByName
    ('idConta').AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if trim(FieldByName('geradoSeq').AsString) = 'S' then
    begin
      funcao.SomenteLeitura([DBEidCheque], true);
      idChequeAut := true;
    end
    else
    begin
      funcao.SomenteLeitura([DBEidCheque], false);
      idChequeAut := false;
    end;
  end;
end;

procedure TFrmPagTitulo.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsConfigMovRec.Active := false;
  cdsConfigMovRec.CommandText :=
    'SELECT * FROM ConfigFinancMovRec WHERE idEmpresa = ' + DBEidEmpresa.Text;
  cdsConfigMovRec.Active := true;

  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString :=
      frmPrincipal.ExecutaSQLRet([], '',
      'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' +
      cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmPagTitulo.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    if filial then
    begin
      Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
      FrmPesEmpFiscal.ShowModal;
      with cdsPadrao do
      begin
        if not(FrmPesEmpFiscal.cdsGrid.IsEmpty) then
        begin
          if not(State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName
            ('idEmpresa').Value;
          FieldByName('idCadEmpresa').Value :=
            FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
          (Formulario.FindComponent('DBEidCadEmpresa') as TCustomEdit).SetFocus;
        end;
      end;
    end; // fim do filial
  end; // fim do VK_F4

end;

procedure TFrmPagTitulo.DBEidMovFinanceiraCExit(Sender: TObject);
begin
  inherited;
  AtualizaMov;
end;

procedure TFrmPagTitulo.DBEvlAdiantamentoExit(Sender: TObject);
begin
  inherited;
  if trim(DBEvlAdiantamento.Text) <> '' then
    EDAdiantamento.Value := cdsAdiantamentovlAdiantamento.AsCurrency
  else
    EDAdiantamento.Value := 0;

  SomaValores;
end;

procedure TFrmPagTitulo.DBEvlDescontoEnter(Sender: TObject);
begin
  inherited;
  (Sender as TCDBEdit).ReadOnly := cdsGrid.FieldByName('sel').AsString = 'N';
  vlAnt := cdsGrid.FieldByName((Sender as TCDBEdit).DataField).AsCurrency;

  // trata para o caso de estar entrando no campo do valor pago
  if (Sender as TCDBEdit).Name = 'DBEvlPago' then
    vlPagoAnt := vlAnt;

  if not(cdsGrid.State = dsEdit) then
    cdsGrid.Edit;
end;

procedure TFrmPagTitulo.DBEvlDescontoExit(Sender: TObject);
begin
  inherited;
  if vlAnt = cdsGrid.FieldByName((Sender as TCDBEdit).DataField).AsCurrency then
    exit;

  cdsGrid.FieldByName('vlPago').AsCurrency := cdsGrid.FieldByName('vlReal')
    .AsCurrency - cdsGrid.FieldByName('vlDesconto').AsCurrency +
    cdsGrid.FieldByName('vlAcrescimo').AsCurrency;
  vlPagoAnt := cdsGrid.FieldByName('vlPago').AsCurrency;
end;

procedure TFrmPagTitulo.DBEvlMovCaixaExit(Sender: TObject);
begin
  inherited;
  if trim(DBEvlMovCaixa.Text) <> '' then
    EdDinheiro.Value := cdsMovCaixa.FieldByName('vlMovCaixa').AsCurrency
  else
    EdDinheiro.Value := 0;

  SomaValores;
end;

procedure TFrmPagTitulo.DBEvlMovContaExit(Sender: TObject);
begin
  inherited;
  if trim(DBEvlMovConta.Text) <> '' then
    EdBanco.Value := cdsMovConta.FieldByName('vlMovConta').AsCurrency
  else
    EdBanco.Value := 0;

  SomaValores;
end;

procedure TFrmPagTitulo.DBGridCellClick(Column: TColumn);
var
  vlsomar: Currency;
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
        cdsGridfator.AsInteger := 0;
        qtSel := qtSel - 1;
        if qtSel = 0 then
        begin
          idCadGeral := 0;
          idCadEmpresa := 0;
          idCadEmpresaMin := 0;
        end;
      end
      else
      begin
        if (idCadGeral <> 0) and (idCadEmpresa <> 0) then
          // Modificado pelo protocolo 122
          // if (idCadGeral <> FieldByName('idCadGeral').AsInteger) or (idCadEmpresa <> FieldByName('idCadEmpresa').AsInteger) then
          if (idCadGeral <> FieldByName('idCadGeral').AsInteger) then
          begin
            messagedlg
              ('Não é possível selecionar titulos de dois fornecedores ou filiais diferentes!',
              mtinformation, [mbok], 0);
            exit;
          end;

        FieldByName('sel').AsString := 'S';
        cdsGridfator.AsInteger := 1;
        qtSel := qtSel + 1;
        idCadGeral := FieldByName('idCadGeral').AsInteger;
        idCadEmpresa := FieldByName('idCadEmpresa').AsInteger;
        if ((idCadEmpresaMin = 0) AND (VerificaCadEmpresa)) then
          idCadEmpresaMin := idCadEmpresa
        else
          if idCadEmpresa <> StrToInt(DBEidCadEmpresa.Text) then
            idCadEmpresaMin := StrToInt(DBEidCadEmpresa.Text)
          else
            if idCadEmpresa < idCadEmpresaMin then
              idCadEmpresaMin := idCadEmpresa;
      end;
      if FieldByName('sel').AsString = 'S' then
      begin
        // FieldByName('vlPago').AsCurrency := FieldByName('vlReal').AsCurrency;
        CalculaAcrescimosDescontos;
        vlsomar := FieldByName('vlPago').AsCurrency;
      end
      else
      begin
        vlsomar := FieldByName('vlPago').AsCurrency * -1;
        FieldByName('vlPago').AsCurrency := 0;
        FieldByName('vlAcrescimo').AsCurrency := 0;
        FieldByName('vlDesconto').AsCurrency := 0;
      end;
      if State = dsEdit then
        Post;
      DBGrid.Refresh;
    end; // fim do with cdsGrid do

    EdSaldoFinal.Value := cdsGridsomavlPago.Value -
      (EdDinheiro.Value + EdBanco.Value + EDAdiantamento.Value);

    // Verifica adiantamento
    RetornaAdiantamento(idCadGeral);
  end // fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmPagTitulo.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmPagTitulo.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if cdsGrid.RecordCount > 0 then
  begin
    if not Assigned(FrmCadTituloPag) then
      FrmCadTituloPag := TFrmCadTituloPag.Create(Self, [cdsGridid.AsString]);
    FrmCadTituloPag.Show;
  end;
end;

procedure TFrmPagTitulo.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
  CtrlState: array [boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or
    DFCS_CHECKED);
var
  CheckBoxRectangle: TRect;
  marca: boolean;
  cor: String;
begin
  inherited;
  cor := 'clWhite';
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

  if (marca) and (Column.Index > 0) then
  begin
    cor := cdsConfigFinancCons.FieldByName('CorREC').AsString;
    if (trim(cor) <> '') and (trim(cor) <> 'clWhite') then
    begin
      DBGrid.Canvas.Brush.Color := StringToColor(cor);
      // coloque aqui a cor desejada
      DBGrid.DefaultDrawDataCell(Rect, DBGrid.Columns[DataCol].field, State);
    end;
  end;
  // if (Column = 1) and (ARow >= 1) then
  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON,
      CtrlState[marca]);
    DBGrid.Canvas.Brush.Color := StringToColor(cor);
  end;
  BtnSelTodos.Enabled := qtSel < cdsGrid.RecordCount;
  btnNenhum.Enabled := qtSel > 0;
end;

procedure TFrmPagTitulo.DBMdescMovCaixaExit(Sender: TObject);
begin
  inherited;
  if not((BtnConfirmar.Focused) Or (btnImpRecibo.Focused)) then
    if PagAbas.ActivePageIndex <> 2 then
    begin
      PagAbas.ActivePageIndex := PagAbas.ActivePageIndex + 1;
      if PagAbas.ActivePageIndex = 2 then
        DBEvlMovConta.SetFocus;
    end;
end;

procedure TFrmPagTitulo.dsGridStateChange(Sender: TObject);
begin
  inherited;
  BtnConfirma.Enabled := cdsGrid.State = dsEdit;
end;

procedure TFrmPagTitulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsGrid.IndexFieldNames := '';
  inherited;
  FrmPagTitulo := nil;
end;

procedure TFrmPagTitulo.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  cdsPadrao.CreateDataSet;
  // Adiantamento
  cdsAdiantamento.CreateDataSet;
end;

procedure TFrmPagTitulo.FormShow(Sender: TObject);
begin
  inherited;
  cdsGrid.IndexFieldNames := '';
  cdsGrid.Active := true;
  cdsPadrao.Append;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('consolida').AsBoolean := false;
  DBEidCliente.SetFocus;
  Self.FOriginalOptions := Self.DBGrid.Options;
  Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
  vlTotalPago := 0;

  cdsConfigMovRec.Active := false;
  cdsConfigMovRec.CommandText :=
    'SELECT * FROM ConfigFinancMovRec WHERE idEmpresa = ' + DBEidEmpresa.Text;
  cdsConfigMovRec.Active := true;
  Height := 600;
  Width := 850;
  // Configuraçoes para filial
  filial := false;
  cdsLookUp.Active := false;
  cdsLookUp.CommandText :=
    'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' +
    frmPrincipal.idEmpresa;
  cdsLookUp.Active := true;
  filial := cdsLookUp.FieldByName('lancafilial').AsString = 'S';
  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').Value :=
      frmPrincipal.ExecutaSQLRet([], '',
      'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' +
      frmPrincipal.idEmpresa).FieldByName('id').AsString;
    DBEidCadEmpresa.Visible := false;
    LookdescCadEmpresa.Left := 127;
    LookdescCadEmpresa.Width := 274;
    DBGrid.Columns[2].Visible := false;

    FindEmpresa.JoinClause.Clear;
    FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa '
      + ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
      ' AND acessa = ' + QuotedStr('S') + ')');

    DBEidEmpresa.Find := FindEmpresa;
  end
  else
    cdsPadrao.FieldByName('idCadEmpresa').Value := frmPrincipal.idCadEmpresa;
  vlAnt := 0;
  // Adiantamento
  RetornaAdiantamento(0);
end;

procedure TFrmPagTitulo.LimpaAdiantamento;
begin
  with cdsAdiantamento do
  begin
    First;
    while not Eof do
    begin
      Delete;
      First;
    end;
  end;
end;

procedure TFrmPagTitulo.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex > 0 then
  begin
    if cdsGridsomavlPago.Value <= 0 then
    begin
      messagedlg
        ('É preciso ter títulos selecionados para fazer os lançamentos de banco e caixa!',
        mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;
    if PagAbas.ActivePageIndex = 1 then // Caixa
    begin
      if (not(cdsMovCaixa.FieldByName('vlMovCaixa').Value > 0)) and
        (EdSaldoFinal.Value > 0) then
      begin
        if not(cdsMovCaixa.State in [dsEdit, dsInsert]) then
          cdsMovCaixa.Edit;

        cdsMovCaixa.FieldByName('vlMovCaixa').Value := EdSaldoFinal.Value;
      end;
      DBEvlMovCaixa.SetFocus;
    end
    else if PagAbas.ActivePageIndex = 2 then // Banco
    begin
      if (not(cdsMovConta.FieldByName('vlMovConta').Value > 0)) and
        (EdSaldoFinal.Value > 0) then
      begin
        if not(cdsMovConta.State in [dsEdit, dsInsert]) then
          cdsMovConta.Edit;
        cdsMovConta.FieldByName('vlMovConta').Value := EdSaldoFinal.Value;
      end;
      DBEvlMovConta.SetFocus;
      AtualizaMov;
    end
    else if PagAbas.ActivePageIndex = 3 then // Adiantamento
    begin
      if vlSaldoAdto = 0 then
      begin
        messagedlg('Fornecedor não tem saldo de adiantamento!', mtinformation,
          [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;

      if (not(cdsAdiantamentovlAdiantamento.AsCurrency > 0)) and
        (EdSaldoFinal.Value > 0) then
      begin
        if not(cdsAdiantamento.State in [dsEdit, dsInsert]) then
          cdsAdiantamento.Append;
        if vlSaldoAdto > EdSaldoFinal.Value then
          cdsAdiantamentovlAdiantamento.AsCurrency := EdSaldoFinal.Value
        else
          cdsAdiantamentovlAdiantamento.AsCurrency := vlSaldoAdto;
      end;
      DBEvlAdiantamento.SetFocus;
    end;
  end;
end;

procedure TFrmPagTitulo.RetornaAdiantamento(idCadGeral: Integer);
var
  sql: string;
begin
  if idCadGeral > 0 then
  begin
    sql := 'EXEC spRetSaldoAdiantamento ' + DBEidEmpresa.Text + ', ' +
      DBEidCadEmpresa.Text + ', ' + IntToStr(idCadGeral) + ', ' +
      QuotedStr('F'); // Fornecedor
    vlSaldoAdto := frmPrincipal.ExecutaSQLRet([], '', sql)
      .FieldByName('vlAdiantamento').AsCurrency;
    TabAdiantamento.Caption := 'Adiantamento (' + FormatFloat('#,##0.00',
      vlSaldoAdto) + ')';
  end
  else
  begin
    vlSaldoAdto := 0;
    TabAdiantamento.Caption := 'Adiantamento';
  end;
end;

procedure TFrmPagTitulo.SomaValores;
begin
  EdSaldoFinal.Value := cdsGridsomavlPago.Value -
    (EdDinheiro.Value + EdBanco.Value + EDAdiantamento.Value);
end;

function TFrmPagTitulo.VerificaCadEmpresa: Boolean;
begin
  //Verifica se a filial existe
  Result := frmPrincipal.ExecutaSQLRet([], '',
          'SELECT * FROM CadAdicional WHERE idCadGeral  = ' + DBEidEmpresa.Text + ' AND idCadAdicional = ' + IntToStr(idCadEmpresa)).RecordCount > 0;
end;

procedure TFrmPagTitulo.MontaHistorico;
var
  bm: TBookmark;
  cont: Integer;
  idDocumento: Integer;
  descDocumento: String;
begin
  cdsGrid.DisableControls;
  //
  with cdsGrid do
  begin
    bm := GetBookmark;
    First;
    historico := '';
    while not Eof do
    begin
      if (FieldByName('sel').AsString = 'S') then
      begin
        if trim(historico) <> '' then
          historico := historico + ', ';
        historico := historico + frmPrincipal.ExecutaSQLRet([], '',
          'SELECT * FROM TituloPag WHERE idTituloPag = ' + FieldByName('id')
          .AsString).FieldByName('obsTituloPag').AsString;
      end;
      Next;
    end; // while not eof do
    //
    First;
    cont := 1; // para saber se está no primeiro titulo selecionado
    while not Eof do
    begin
      if (FieldByName('sel').AsString = 'S') then
      begin
        idDocumento := frmPrincipal.ExecutaSQLRet([], '',
          'SELECT * FROM TituloPag WHERE idTituloPag = ' + FieldByName('id')
          .AsString).FieldByName('idDocumento').AsInteger;
        descDocumento := frmPrincipal.ExecutaSQLRet([], '',
          'SELECT * FROM Documento WHERE idDocumento = ' + IntToStr(idDocumento)
          ).FieldByName('descDocumento').AsString;
        if trim(historico) <> '' then
          historico := historico + ', ';
        if cont = 1 then
          if descDocumento <> '' then
            historico := historico + ' ' + descDocumento
          else
            historico := historico + ' ' + 'TITULO(S)';
        historico := historico + ' ' + frmPrincipal.ExecutaSQLRet([], '',
          'SELECT * FROM TituloPag WHERE idTituloPag = ' + FieldByName('id')
          .AsString).FieldByName('nrTituloPag').AsString;
        cont := cont + 1;
      end;
      Next;
    end;
    //
    GotoBookmark(bm);
    FreeBookmark(bm);
    if trim(historico) <> '' then
    begin
      if (funcao.VerificaAlteracoes([cdsMovCaixa])) and
        (cdsMovCaixa.State in [dsEdit, dsInsert]) then
      // teve lançamento com o caixa
        cdsMovCaixa.FieldByName('descMovCaixa').AsString := historico;
      if (funcao.VerificaAlteracoes([cdsMovConta])) and
        (cdsMovConta.State in [dsEdit, dsInsert]) then
      // teve lançamento com a conta
        cdsMovConta.FieldByName('descMovConta').AsString := historico;
    end;
  end; // with cdsGrid do }
  //
  cdsGrid.EnableControls;
  //
  SomaValores;
  //
end;

end.
