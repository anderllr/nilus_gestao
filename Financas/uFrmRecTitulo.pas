unit uFrmRecTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, ComCtrls, CPageControl, DBCtrls, CDBCheckBox, CLookUp, Mask,
  CDBEdit, CLabel, EditAlign, CEdit, CGroupBox, Grids, DBGrids, CDBGrid, FMTBcd,
  CFind, DB, SqlExpr, Provider, DBClient, CDBMemo, DBXCommon, frxClass,
  ACBrBase, ACBrExtenso, CPanel, System.Actions, System.ImageList;

type
  TFrmRecTitulo = class(TFrmPadrao)
    Bevel2: TBevel;
    PanEmpresa: TCPanelGradient;
    CLabel1: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
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
    DBGrid: TCDBGrid;
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
    EDTotalRec: TCEdit;
    CLabel30: TCLabel;
    LookdescAbreviada: TCLookUp;
    EdDinheiro: TCEdit;
    CLabel2: TCLabel;
    CLabel9: TCLabel;
    EdCheque: TCEdit;
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
    TabCheque: TTabSheet;
    CGroupBox4: TCGroupBox;
    sdsChequeRec: TSQLDataSet;
    dspChequeRec: TDataSetProvider;
    cdsChequeRec: TClientDataSet;
    dsChequeRec: TDataSource;
    CLabel38: TCLabel;
    CLabel49: TCLabel;
    DBEComp: TCDBEdit;
    CLabel50: TCLabel;
    DBEidBanco: TCDBEdit;
    LookBanco: TCLookUp;
    CLabel51: TCLabel;
    DBEnrAgencia: TCDBEdit;
    CGroupBox5: TCGroupBox;
    BtnSalvarChq: TCBitBtn;
    BtnCancelarChq: TCBitBtn;
    BtnExcluirChq: TCBitBtn;
    BtnNovoChq: TCBitBtn;
    CLabel52: TCLabel;
    DBEnrConta: TCDBEdit;
    CLabel53: TCLabel;
    DBEnrCheque: TCDBEdit;
    DBEvlCheque: TCDBEdit;
    CLabel54: TCLabel;
    CGroupBox6: TCGroupBox;
    CDBGrid1: TCDBGrid;
    DBEdtLiquidacao: TCDBEdit;
    CLabel36: TCLabel;
    CLabel32: TCLabel;
    DBEemitente: TCDBEdit;
    DBEdtVencimento: TCDBEdit;
    cdsChequeRecidChequeRec: TIntegerField;
    cdsChequeRecidCliente: TIntegerField;
    cdsChequeRecidBanco: TIntegerField;
    cdsChequeRecComp: TIntegerField;
    cdsChequeRecnrAgencia: TStringField;
    cdsChequeRecnrConta: TStringField;
    cdsChequeRecnrCheque: TIntegerField;
    cdsChequeRecemitente: TStringField;
    cdsChequeRecvlCheque: TFMTBCDField;
    cdsChequeRecdtLancamento: TSQLTimeStampField;
    cdsChequeRecdtVencimento: TSQLTimeStampField;
    cdsChequeRecstChequeRec: TStringField;
    DBEidChequeRec: TCDBEdit;
    BtnConfirmar: TCBitBtn;
    idChequeRecIni: TCEdit;
    idChequeRecFim: TCEdit;
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
    CLabel47: TCLabel;
    DBMdescMovConta: TCDBMemo;
    CLabel46: TCLabel;
    DBEidMovFinanceiraC: TCDBEdit;
    LookMovFinanceiraBCO: TCLookUp;
    CLabel48: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CLabel44: TCLabel;
    DBEdtCompensacao: TCDBEdit;
    CLabel45: TCLabel;
    DBEvlMovConta: TCDBEdit;
    BtnPesquisar: TCBitBtn;
    DBEidUsuario: TCDBEdit;
    CLabel11: TCLabel;
    DBEidDocSerie: TCDBEdit;
    CLabel56: TCLabel;
    CLabel57: TCLabel;
    Bevel5: TBevel;
    LookDocSerie: TCLookUp;
    FindConta: TCFind;
    FindMovFinanceiraC: TCFind;
    CLookUp2: TCLookUp;
    CBitBtn2: TCBitBtn;
    FindBanco: TCFind;
    cdsPadraonrTitulo: TStringField;
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
    cdsPadraovlSaldoIni: TFMTBCDField;
    cdsPadraovlSaldoFim: TFMTBCDField;
    btnImpRecibo: TCBitBtn;
    Report: TfrxReport;
    lookidCnpjCpf: TCLookUp;
    DBEidCadEmpresa: TCDBEdit;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    Extenso: TACBrExtenso;
    BtnSelTodos: TCBitBtn;
    BtnNenhum: TCBitBtn;
    cdsPadraodescCadEmpresa: TStringField;
    cdsPadraodescAbreviada: TStringField;
    DBEvlSaldoFim: TCDBEdit;
    DBEvlSaldoIni: TCDBEdit;
    EdAdiantamento: TCEdit;
    CLabel4: TCLabel;
    TabAdiantamento: TTabSheet;
    dsAdiantamento: TDataSource;
    cdsAdiantamento: TClientDataSet;
    cdsAdiantamentovlAdiantamento: TCurrencyField;
    cdsAdiantamentodtAdiantamento: TDateField;
    cdsAdiantamentodescAdiantamento: TStringField;
    CGroupBox2: TCGroupBox;
    CLabel37: TCLabel;
    CLabel41: TCLabel;
    CLabel42: TCLabel;
    DBMdescAdiantamento: TCDBMemo;
    DBEvlAdiantamento: TCDBEdit;
    DBEdtAdiantamento: TCDBEdit;
    FindEmpresa: TCFind;
    cdsGridsomavlDesconto: TAggregateField;
    cdsGridsomavlAcrescimo: TAggregateField;
    DBEtpDocumento: TCDBEdit;
    CLabel55: TCLabel;
    cdsPadraotpDocumento: TStringField;
    DBEdtEmissao: TCDBEdit;
    CLabel58: TCLabel;
    cdsChequeRecdtEmissao: TSQLTimeStampField;
    CBitBtn4: TCBitBtn;
    CLookUp1: TCLookUp;
    DBEidCaixa1: TCDBEdit;
    CLabel59: TCLabel;
    cdsChequeRecidCaixa: TIntegerField;
    cdsRecibo: TClientDataSet;
    dspRecibo: TDataSetProvider;
    sdsRecibo: TSQLDataSet;
    CPanel1: TCPanel;
    CLabel60: TCLabel;
    CLabel61: TCLabel;
    DBEsomaTotal: TCDBEdit;
    DBEsomaSelecao: TCDBEdit;
    cdsGridfator: TByteField;
    cdsGridsomaTotal: TAggregateField;
    cdsGridsomaSelecao: TAggregateField;
    DBEidContratoVenda: TCDBEdit;
    Label8: TLabel;
    cdsPadraoidContratoVenda: TStringField;
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure cdsLookUpReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsChequeRecAfterInsert(DataSet: TDataSet);
    procedure DBMdescMovCaixaExit(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure dsChequeRecStateChange(Sender: TObject);
    procedure BtnSalvarChqClick(Sender: TObject);
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
    procedure SomaCheque;
    procedure btnImpReciboClick(Sender: TObject);
    procedure BtnSelTodosClick(Sender: TObject);
    procedure BtnNenhumClick(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoidEmpresaValidate(Sender: TField);
    procedure RetornaAdiantamento(idCadGeral: integer);
    procedure cdsAdiantamentoAfterInsert(DataSet: TDataSet);
    procedure DBEvlAdiantamentoExit(Sender: TObject);
    procedure LimpaAdiantamento;
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    vlTotalPago, vlAnt, vlSaldoAdto, vlPagoAnt, vlRecibo : Currency;
    idCadGeral, idCadEmpresa, idCadEmpresaMin, idRecibo : integer;
    qtSel : integer;
    historico, referencia, fator : string;
    filial : boolean;
    vlDescAcres : Double;
  public
    { Public declarations }
  end;

var
  FrmRecTitulo: TFrmRecTitulo;
  qtSel : integer;

implementation

uses uFuncao, uFrmPrincipal, uRecError, uDmPadrao, uFrmCadPadrao,
  uFrmPesEmpFiscal, uFrmPesEmpContabil, uCadTituloRec;

{$R *.dfm}

procedure TFrmRecTitulo.actConfirmaExecute(Sender: TObject);
var
  vlRestante : Currency;
begin
  inherited;
  //que será o valor real baixado do titulo descontando
  vlRestante := cdsGrid.FieldByName('vlPago').AsCurrency - cdsGrid.FieldByName('vlAcrescimo').AsCurrency +
                cdsGrid.FieldByName('vlDesconto').AsCurrency;
  if (vlRestante > cdsGrid.FieldByName('vlReal').AsCurrency) then
  begin
    messagedlg('O valor a ser abatido do titulo esta maior do que o Saldo restante!', mtwarning, [mbok], 0);
    exit;
  end;
  if (vlRestante < 0) then
  begin
    messagedlg('Saldo do titulo não poderá ficar menor que zero!', mtwarning, [mbok], 0);
    exit;
  end;
  if (cdsGrid.FieldByName('vlPago').AsCurrency < 0) then
  begin
    messagedlg('O valor pago não pode ser menor que zero!', mtwarning, [mbok], 0);
    exit;
  end;
  cdsGrid.Post;
  if cdsGridsomavlPago.Value > 0 then
    EDTotalRec.Value := cdsGridsomavlPago.Value
  else
    EDTotalRec.Value := 0;
//    EDTotalRec.Value := (EDTotalRec.Value - vlPagoAnt) + cdsGrid.FieldByName('vlPago').AsCurrency;
  //EDSaldoFinal.Value := cdsGridsomavlPago.AsFloat - (EDDinheiro.Value+EDBanco.Value);
  SomaValores;
  vlPagoAnt := 0;
end;

procedure TFrmRecTitulo.actPesquisarExecute(Sender: TObject);
var
  sql, ind : string;
begin
  ind := cdsGrid.IndexFieldNames;

  funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa, DBEidCliente, DBEnrTitulo,
                     DBEidDocSerie, DBEdtEmissaoIni, DBEdtEmissaoFim, DBEdtVencimentoIni,
                     DBEdtVencimentoFim, DBEvlSaldoini, DBEvlSaldoFim, DBCKconsolida,
                     DBEidUsuario, DBEtpDocumento, DBEidContratoVenda], 'spGeraTmpRecTitulo');
  //Preenche a tabela de cores
  with cdsConfigFinancCons do
  begin
    Active := false;
    CommandText := 'SELECT * FROM ConfigFinancCons WHERE idEmpresa = ' + DBEidEmpresa.Text;
    Active := true;
  end;
  sql := 'SELECT * FROM tmpRecTitulo WHERE idUsuario = ' + DBEidUsuario.Text;

//  showmessage(sql);
  cdsGrid.IndexFieldNames := '';
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  ConfigEdits;
  EDTotalRec.Value := 0;
  if trim(cdsGrid.IndexFieldNames) = '' then
  begin
    cdsGrid.IndexFieldNames := 'dtVencimento';
    DBGrid.Columns[9].Title.Font.Style := DBGrid.Columns[9].Title.Font.Style + [fsBold];
  end;
  //inicializa a tabela de caixa e banco
  cdsMovCaixa.Active := false;
  cdsMovCaixa.CommandText := 'SELECT * FROM MovCaixa WHERE 1=2';
  cdsMovCaixa.Active := true;

  cdsMovConta.Active := false;
  cdsMovConta.CommandText := 'SELECT * FROM MovConta WHERE 1=2';
  cdsMovConta.Active := true;

  cdsChequeRec.Active := false;
  cdsChequeRec.CommandText := 'SELECT * FROM ChequeRec WHERE 1=2';
  cdsChequeRec.Active := true;

  PagAbas.ActivePageIndex := 0;
  idChequeRecIni.Value := 0;
  idChequeRecFim.Value := 0;
  idCadGeral := 0;
  idCadEmpresa := 0;
  idCadEmpresaMin := 0;
  qtSel := 0;
  vlPagoAnt := 0;
  //Adiantamento
  LimpaAdiantamento;
  RetornaAdiantamento(0);
  inherited;

  if trim(ind) <> '' then
    cdsGrid.IndexFieldNames := ind;
end;

procedure TFrmRecTitulo.BtnConfirmarClick(Sender: TObject);
var
  idMovCaixa, idMovConta, idChequeRec : integer;
  t : TDBXTransaction;
  sql, obsCheque : string;
begin
  inherited;
  if EdSaldoFinal.Value <> 0 then
  begin
    messagedlg('O Saldo final tem que ser zero! Recebimento Cancelado', mtwarning, [mbok],0);
   exit;
  end;

  idMovCaixa := 0;
  idMovConta := 0;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    //se houver caixa inclui o caixa
    if (funcao.VerificaAlteracoes([cdsMovCaixa])) and (cdsMovCaixa.State in [dsEdit, dsInsert]) then //teve pagamento com o caixa
    begin
      idMovCaixa := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idMovCaixa) maximo FROM MovCaixa').FieldByName('maximo').AsInteger;
      if (not idMovCaixa > 0) then
        idMovCaixa := 1
      else
        idMovCaixa := idMovCaixa + 1;
      cdsMovCaixa.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
      cdsMovCaixa.FieldByName('idCadEmpresa').AsInteger := idCadEmpresaMin;
      cdsMovCaixa.FieldByName('idMovCaixa').AsInteger := idMovCaixa;
      cdsMovCaixa.FieldByName('dtMovCaixa').AsDateTime := cdsPadrao.FieldByName('dtLiquidacao').AsDateTime;
      cdsMovCaixa.FieldByName('idCadGeral').Value := idCadGeral;
      cdsMovCaixa.FieldByName('fator').AsInteger := 1;
      if not funcao.VerCampoRequerido([cdsMovCaixa], '') then
      begin
        dmPadrao.dbConexao.RollbackFreeAndNil(t);
        exit;
      end;
      cdsMovCaixa.Post;
      cdsMovCaixa.ApplyUpdates(0);
    end; //fim da verificação de alterações no caixa

    //se houver conta inclui o lançamento bancário
    if (funcao.VerificaAlteracoes([cdsMovConta])) and (cdsMovConta.State in [dsEdit, dsInsert]) then //teve pagamento com conta
    begin
      idMovConta := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idMovConta) maximo FROM MovConta').FieldByName('maximo').AsInteger;
      if (not idMovConta > 0) then
        idMovConta := 1
      else
        idMovConta := idMovConta + 1;
      cdsMovConta.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
      cdsMovConta.FieldByName('idCadEmpresa').AsInteger := idCadEmpresaMin;
      cdsMovConta.FieldByName('dtMovConta').AsDateTime := cdsPadrao.FieldByName('dtLiquidacao').AsDateTime;
      cdsMovConta.FieldByName('idMovConta').AsInteger := idMovConta;
      cdsMovConta.FieldByName('idCadGeral').Value := idCadGeral;
      cdsMovConta.FieldByName('fator').AsInteger := 1;
      if not funcao.VerCampoRequerido([cdsMovConta], '') then
      begin
        dmPadrao.dbConexao.RollbackFreeAndNil(t);
        exit;
      end;
      cdsMovConta.Post;
      cdsMovConta.ApplyUpdates(0);
    end; //fim da verificação de alterações no caixa

    //se houver cheques inclui eles
    if cdsChequeRec.RecordCount > 0 then
    begin
      //pega o primeiro registro do cheque
      idChequeRec := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idChequeRec) maximo FROM ChequeRec').FieldByName('maximo').AsInteger;
      if not (idChequeRec > 0) then
        idChequeRec := 0;
      idChequeRecIni.Value := idChequeRec + 1;
      cdsChequeRec.First;
      while not cdsChequeRec.Eof do
      begin
        idChequeRec := idChequeRec+1;
        cdsChequeRec.Edit;
        cdsChequeRec.FieldByName('idChequeRec').AsInteger := idChequeRec;
        cdsChequeRec.FieldByName('dtLancamento').AsDateTime := cdsPadrao.FieldByName('dtLiquidacao').AsDateTime;
        cdsChequeRec.Post;
        cdsChequeRec.Next;
      end;
      cdsChequeRec.ApplyUpdates(0);
      idChequeRecFim.Value := idChequeRec;

      cdsChequeRec.First;
      while not cdsChequeRec.Eof do
      begin
        idMovCaixa := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idMovCaixa) maximo FROM MovCaixa').FieldByName('maximo').AsInteger;
        if (not idMovCaixa > 0) then
          idMovCaixa := 1
        else
          idMovCaixa := idMovCaixa + 1;

        obsCheque := 'Cheque Nr.' + cdsChequeRecnrCheque.AsString +  ' Emitente: ' + cdsChequeRecemitente.AsString;
        sql := 'INSERT INTO MovCaixa (idMovCaixa, idEmpresa, idCadEmpresa, ' +
               ' dtMovCaixa, idCadGeral, fator, idMovFinanceira, idCaixa, vlMovCaixa, descMovCaixa) VALUES ( ' +
               IntToStr(idMovCaixa) + ', ' + DBEidEmpresa.Text + ', ' +
               IntToStr(idCadEmpresaMin) + ', ' + funcao.RetornaValorEField(DBEdtEmissao, 3) +
               ', ' + IntToStr(idCadGeral) + ', ' + '1' + ', ' + '10' + ', ' + cdsChequeRecidCaixa.AsString + ', ' +
               QuotedStr(Funcao.RetornaValorEField(DBEvlCheque, 3)) + ', ' + QuotedStr(obsCheque) + ')';
        dmPadrao.dbConexao.ExecuteDirect(sql);
        cdsChequeRec.Next;
      end;
    end; // fim do if cdsChequeRec.RecordCount > 0 then

    if cdsGrid.State in [dsEdit, dsInsert] then
      cdsGrid.Cancel;
    cdsGrid.ApplyUpdates(0);

    //se houve adiantamento faz execução diferenciada na procedure
    if (funcao.VerificaAlteracoes([cdsAdiantamento])) and (cdsAdiantamento.State in [dsEdit, dsInsert]) and (cdsAdiantamentovlAdiantamento.Value > 0) then //teve pagamento com adiantamento
    begin
      if not funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEdtLiquidacao, DBEidMovCaixa, DBEidMovConta,
                                idChequeRecIni, idChequeRecFim, DBEidUsuario, DBEvlAdiantamento, DBEdtAdiantamento, DBMdescAdiantamento], 'spRecTitulo') then
        frmPrincipal.erro := 1;
    end
    else
    begin
      if not funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEdtLiquidacao, DBEidMovCaixa, DBEidMovConta,
                                idChequeRecIni, idChequeRecFim, DBEidUsuario, DBEvlAdiantamento, DBEdtAdiantamento, DBMdescAdiantamento], 'spRecTitulo') then
        frmPrincipal.erro := 1;
    end;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    {*****************   Aqui foi todo modificado para a geração do Recibo ou seja o mesmo só vai ser gerado
                         após a concretização do Pagamento}
    referencia := '';
    if Trim(DBMDescMovConta.Text) <> '' then
    begin
      sql := 'select b.descBanco + ' + QuotedStr(', Ag.: ') + ' + c.idAgencia + '+ QuotedStr('  Conta: ') +
             ' + c.idContaCorrente descConta   from Conta c INNER JOIN Banco b ON c.idBanco = b.idBanco WHERE c.idConta = ' + DBEidConta.Text;
      referencia := DBMDescMovConta.Text + ', ' + frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descConta').AsString;
    end;

    if Trim(DBMDescMovCaixa.Text) <> '' then
    begin
      if trim(referencia) <> '' then
        referencia := referencia + ' - ';
      referencia := referencia + DBMDescMovCaixa.Text + ' Conta Caixa: ' + DBEidCaixa.Text;
    end;

    if Trim(DBMDescAdiantamento.Text) <> '' then
    begin
      if trim(referencia) <> '' then
        referencia := referencia + ' - ';
      referencia := referencia + 'Via Adiantamento: ' + DBMDescAdiantamento.Text;
    end;

    if Trim(DBEnrCheque.Text) <> '' then
    begin
      referencia := referencia + ' - ' + ' Ag.: ' + DBEnrAgencia.Text +'  Conta.: ' + DBEnrConta.Text +
                    ' Nr. Cheque.: ' + DBEnrCheque.Text + ' Data de Emissão.:' + DBEdtEmissao.Text +
                    ' Data Vencimento.: ' + DBEdtVencimento.Text + ' Emitente.: ' + DBEemitente.Text;
    end;

    //Busca os valores para ser impresso nos Recibos
    if (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat > 0) AND (cdsMovConta.FieldByName('vlMovConta').AsFloat > 0) then
    begin
      vlRecibo := cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat + cdsMovConta.FieldByName('vlMovConta').AsFloat;
    end
    else
      if cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat > 0 then
      begin
        vlRecibo := cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat;
      end
      else
        if cdsMovConta.FieldByName('vlMovConta').AsFloat > 0 then
        begin
          vlRecibo := cdsMovConta.FieldByName('vlMovConta').AsFloat;
        end
        else
        if cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat > 0 then
        begin
          vlRecibo := cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat;
        end
        else
        if (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat > 0) AND
           (cdsMovConta.FieldByName('vlMovConta').AsFloat > 0) AND
           (cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat > 0) then
        begin
          vlRecibo := cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat + cdsMovConta.FieldByName('vlMovConta').AsFloat + cdsAdiantamento.FieldByName('vlAdiantamento').AsFloat;
        end;


      //Faz verificações de Valores de Descontos e Acréscimos
      if cdsGridvlDesconto.AsFloat <> 0 then
      begin
        vlDescAcres := cdsGridvlDesconto.AsFloat;
        fator := 'DE';
      end
      else
        if cdsGridvlAcrescimo.AsFloat <> 0 then
        begin
          vlDescAcres := cdsGridvlAcrescimo.AsFloat;
          fator := 'AC';
        end;

      //Tratamento de Adiantamentos
      if ((cdsGridvlAcrescimo.AsFloat = 0) AND (cdsGridvlDesconto.AsFloat = 0) AND (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat <> 0)) then
      begin
        vlDescAcres := cdsAdiantamentovlAdiantamento.AsFloat;
        fator := 'AD';
      end;

      //Busca numeração do recibo
      idRecibo := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idRecibo) id FROM Recibo WHERE tipo = 1').FieldByName('id').AsInteger + 1;
      if idRecibo > 0 then
      begin
        if not(cdsRecibo.Active) then
          cdsRecibo.Open;
        cdsRecibo.Append;
        cdsRecibo.FieldByName('idEmpresa').AsInteger := cdsPadraoidEmpresa.AsInteger;
        cdsRecibo.FieldByName('idCadEmpresa').AsInteger := cdsPadraoidCadEmpresa.AsInteger;
        cdsRecibo.FieldByName('idRecibo').AsInteger := idRecibo;
        cdsRecibo.FieldByName('idMovCaixa').AsInteger := idMovCaixa;
        cdsRecibo.FieldByName('idMovConta').AsInteger := idMovConta;
        cdsRecibo.FieldByName('tipo').AsInteger := 1;
        cdsRecibo.FieldByName('vlRecibo').AsFloat := vlRecibo;
        cdsRecibo.FieldByName('dtRecibo').AsDateTime := StrToDate(DBEdtLiquidacao.Text);
        cdsRecibo.FieldByName('referencia').AsString := referencia;
        cdsRecibo.FieldByName('idCadGeral').AsInteger := cdsGrididCadGeral.AsInteger;
        cdsRecibo.FieldByName('vlDescAcres').AsFloat := vlDescAcres;
        cdsRecibo.FieldByName('fator').AsString := fator;
        cdsRecibo.Post;
        cdsRecibo.ApplyUpdates(0);
      end;
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ConfigFinanc WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString) do
  begin
    if FieldByName('impRecibo').AsString = 'S' then
    begin
      If (MessageDlg('Deseja Imprimir o Recibo?', mtconfirmation, [mbyes, mbno], 0) = mrYes) Then
        btnImpRecibo.Click;
    end;
  end;
  actPesquisar.Execute;
end;

procedure TFrmRecTitulo.btnImpReciboClick(Sender: TObject);
Var
  slSQL: TStringList;
  sql, arquivo : string;
begin
  //
  inherited;
//  If (EDTotalRec.Value <= 0) Then
//     Exit;
  //

  arquivo := dmPadrao.RetornaConfig('caminho_rel') + 'Recibo.fr3';
  //
  slSQL := TStringList.Create;
  //
  slSQL.Add('select g.idCadGeral, a.descCadAdicional, a.idInscEstadual, a.idCnpjCpf, a.idCidade,');
  slSQL.Add('a.endereco, a.numero, a.complemento, a.bairro, a.cep, a.fone,');
  slSQL.Add('rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade, rtrim(c.codDDD) codDDD');
  slSQL.Add('from cadgeral g');
  slSQL.Add('inner join cadadicional a');
  slSQL.Add('on (a.idcadgeral = g.idcadgeral)');
  slSQL.Add('inner join cidade c');
  slSQL.Add('on (c.idCidade = a.idCidade)');
  slSQL.Add('where g.idcadgeral = ' + DBEidEmpresa.Text + ' and');
  slSQL.Add('a.idcadadicional = ' + DBEidCadEmpresa.Text + ' and');
  slSQL.Add('g.empresa = ''S''');
  //
  sql := 'SELECT * FROM Recibo WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
         ' AND idRecibo = ' + IntToStr(idRecibo) + ' AND tipo = 1';
  cdsRecibo.Active := False;
  cdsRecibo.CommandText := sql;
  cdsRecibo.Active := True;

  Report.LoadFromFile(arquivo);
  //Apenas para não dar Erro
  (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;


  Extenso.Valor := cdsRecibo.FieldByName('vlRecibo').Value;

//  Report.Variables['idRecibo']            := QuotedStr('REC/XXX000001');
  //
  Report.Variables['valor']               := QuotedStr(cdsRecibo.FieldByName('vlRecibo').Value);
  Report.Variables['extenso-monetario']   := QuotedStr(UpperCase(Extenso.Texto));



  //Inicio do Tratamento de Valor de Desconto
  if (cdsRecibo.FieldByName('vlDescAcres').AsFloat <> 0) AND (Trim(cdsRecibo.FieldByName('fator').AsString) = 'DE') then
  begin
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Add('Desconto:');
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Clear;
    (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Add('Desconto:');
    Report.Variables['vlDescAcres'] := cdsRecibo.FieldByName('vlDescAcres').Value;
  end
  else
    if (cdsRecibo.FieldByName('vlDescAcres').AsFloat <> 0) AND (Trim(cdsRecibo.FieldByName('fator').AsString) = 'AC') then
    begin
      (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Clear;
      (Report.FindComponent('Memo39') as TfrxMemoView).Memo.Add('Acrescimo:');
      (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Clear;
      (Report.FindComponent('Memo41') as TfrxMemoView).Memo.Add('Acrescimo:');
      Report.Variables['vlDescAcres'] := cdsRecibo.FieldByName('vlDescAcres').Value;
    end;

    if (cdsRecibo.FieldByName('vlDescAcres').AsFloat <> 0) AND (Trim(cdsRecibo.FieldByName('fator').AsString) = 'AD') then
    begin
      // Apenas para não dar erros
      Report.Variables['vlDescAcres'] := cdsRecibo.FieldByName('vlDescAcres').Value;
      (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
      (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
      (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
      (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;
    end;


    // Parte Removida por mudanças
  {  if ((cdsGridvlAcrescimo.AsFloat = 0) AND (cdsGridvlDesconto.AsFloat = 0) AND (cdsMovCaixa.FieldByName('vlMovCaixa').AsFloat <> 0)) then
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
    end;    }

    //Fim do Tratamento de Valor de Desconto

 { //Monta o histórico da Referência
  referencia := '';
  if Trim(DBMDescMovConta.Text) <> '' then
  begin
    sql := 'select b.descBanco + ' + QuotedStr(', Ag.: ') + ' + c.idAgencia + '+ QuotedStr('  Conta: ') +
           ' + c.idContaCorrente descConta   from Conta c INNER JOIN Banco b ON c.idBanco = b.idBanco WHERE c.idConta = ' + DBEidConta.Text;
    referencia := DBMDescMovConta.Text + ', ' + frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descConta').AsString;
  end;

  if Trim(DBMDescMovCaixa.Text) <> '' then
  begin
    if trim(referencia) <> '' then
      referencia := referencia + ' - ';
    referencia := referencia + DBMDescMovCaixa.Text + ' Conta Caixa: ' + DBEidCaixa.Text;
  end;

  if Trim(DBMDescAdiantamento.Text) <> '' then
  begin
    if trim(referencia) <> '' then
      referencia := referencia + ' - ';
    referencia := referencia + 'Via Adiantamento: ' + DBMDescAdiantamento.Text;
  end;}

  Report.Variables['Referencia']          := QuotedStr(referencia);
  //


  With FrmPrincipal.ExecutaSQLRet([], '', slSQL.Text) Do
       Begin
         //
         Report.Variables['Nome-Empresa']        := QuotedStr(FieldByName('descCadAdicional').asString);
         Report.Variables['Cnpj-Cpf-Empresa']    := QuotedStr(FieldByName('idCnpjCpf').asString);
         Report.Variables['IE-RG-Empresa']       := QuotedStr(FieldByName('idInscEstadual').asString);
         Report.Variables['Endereco']            := QuotedStr(Format('%s, %s - %s', [FieldByName('endereco').asString, FieldByName('numero').asString, FieldByName('complemento').asString]));
         Report.Variables['Cidade']              := QuotedStr(FieldByName('nome_cidade').asString);
         Report.Variables['Fone']                := QuotedStr(Format('(%s)%s', [FieldByName('codDDD').asString, FieldByName('fone').asString]));
         //
         Report.Variables['Nome-Assinatura']     := QuotedStr(FieldByName('descCadAdicional').asString);
         Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(FieldByName('idCnpjCpf').asString);
         //
         Report.Variables['Nome']                := QuotedStr(Trim(LookDescCadCliente.Caption));
         Report.Variables['local-data']          := QuotedStr(FieldByName('NOME_CIDADE').asString + ', ' + funcao.CDoW(cdsRecibo.FieldByName('dtRecibo').AsDateTime, exdDMA));
         Report.Variables['idRecibo']            := IntToStr(idRecibo);
         //
       End;
  //
  slSQL.Free;
  slSQL := Nil;
  //
  Report.ShowReport;
end;

procedure TFrmRecTitulo.BtnNenhumClick(Sender: TObject);
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
  EDTotalRec.Clear;
end;
procedure TFrmRecTitulo.BtnSalvarChqClick(Sender: TObject);
var
  idMovCaixa : integer;
begin
  inherited;
  if Trim(DBEidCaixa1.Text) = '' then
  begin
    MessageDlg('O caixa deve ser informado!', mtWarning, [mbOK], 0);
    DBEidCaixa1.SetFocus;
    Exit;
  end;

  funcao.GravaSec([DBEidChequeRec], cdsChequeRec, BtnSalvarChq, BtnCancelarChq, BtnExcluirChq, BtnNovoChq, (Sender as TCBitBtn), '');
  DBEvlCheque.SetFocus;
  if (Sender as TCBitBtn).Name = 'BtnSalvarChq' then
  begin
    somacheque;
  end;
end; //fim da verificação de alterações no caixa



procedure TFrmRecTitulo.BtnSelTodosClick(Sender: TObject);
var
  vlsomar : Currency;
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
    first;
    idCadGeral := 0;
    idCadEmpresa := 0;
    idCadEmpresaMin := 0;
    while not eof do
    begin
      edit;
        if (idCadGeral <> 0) and (idCadEmpresa <> 0) then
        //Modificado pelo protocolo 122
//          if (idCadGeral <> FieldByName('idCadGeral').AsInteger) or (idCadEmpresa <> FieldByName('idCadEmpresa').AsInteger) then
          if (idCadGeral <> FieldByName('idCadGeral').AsInteger) then
          begin
            messagedlg('Não é possível selecionar titulos de dois fornecedores ou filiais diferentes!', mtinformation, [mbok], 0);
            exit;
          end;
        FieldByName('sel').AsString := 'S';
        cdsGridfator.AsInteger := 1;
        qtSel := qtSel + 1;
        idCadGeral := FieldByName('idCadGeral').AsInteger;
        idCadEmpresa := FieldByName('idCadEmpresa').AsInteger;
        if idCadEmpresaMin = 0 then
          idCadEmpresaMin := idCadEmpresa
        else
          if idCadEmpresa < idCadEmpresaMin then
            idCadEmpresaMin := idCadEmpresa;

      if FieldByName('sel').AsString = 'S' then
      begin
        FieldByName('vlPago').AsCurrency := FieldByName('vlReal').AsCurrency;
        vlSomar := FieldByName('vlPago').AsCurrency;
      end
      else
      begin
        vlSomar := FieldByName('vlPago').AsCurrency*-1;
        FieldByName('vlPago').AsCurrency := 0;
        FieldByName('vlAcrescimo').AsCurrency := 0;
        FieldByName('vlDesconto').AsCurrency := 0;
      end;
      Post;
      DBGrid.Refresh;
      if cdsGridsomavlPago.Value > 0 then
        EDTotalRec.Value := cdsGridsomavlPago.Value
      else
        EDTotalRec.Value := 0;

//      EDTotalRec.Value := cdsGridsomavlPago.Value - (EDDinheiro.Value+EDBanco.Value+EDAdiantamento.Value);
      EDSaldoFinal.Value := EDTotalRec.Value;
      Next;
    end; //while not eof do
  end; //with cdsGrid do
end;//procedure TFrmRecTitulo.BtnSelTodosClick(Sender: TObject);
procedure TFrmRecTitulo.cdsAdiantamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Adiantamento
  cdsAdiantamentodtAdiantamento.AsDateTime := Date;
  MontaHistorico;
  cdsAdiantamentodescAdiantamento.AsString := historico;
end;

procedure TFrmRecTitulo.cdsChequeRecAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('stChequeRec').AsString := 'ATIVO';
  DataSet.FieldByName('idCliente').AsInteger := idCadGeral;
  DataSet.FieldByName('dtLancamento').AsDateTime := cdsPadrao.FieldByName('dtLiquidacao').AsDateTime;
end;

procedure TFrmRecTitulo.cdsGridAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  for i := 0 to DataSet.FieldDefs.Count - 1 do
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TFrmRecTitulo.cdsLookUpReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  Action := HandleReconcileError(Dataset, UpdateKind, E);
  frmPrincipal.erro := 1;
end;

procedure TFrmRecTitulo.cdsMovCaixaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MontaHistorico;
  cdsMovCaixa.FieldByName('descMovCaixa').AsString := historico;
end;

procedure TFrmRecTitulo.cdsMovContaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MontaHistorico;
  cdsMovConta.FieldByName('descMovConta').AsString := historico;
  cdsMovConta.FieldByName('impresso').AsString := 'N';
end;

procedure TFrmRecTitulo.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('dtLiquidacao').AsDateTime := date;
  cdsPadrao.FieldByName('idUsuario').AsString := frmPrincipal.idUsuario;
end;

procedure TFrmRecTitulo.cdsPadraoidEmpresaValidate(Sender: TField);
begin
  inherited;
  if (trim(cdsPadraoidEmpresa.AsString) <> '') then
  begin
    if not filial then
    begin
      cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
         cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;

    end;
  end;

end;

procedure TFrmRecTitulo.ConfigEdits;
begin
  //configura o formato dos edits
  EDTotalRec.Decimals := FormatSettings.CurrencyDecimals;
  EdDinheiro.Decimals := FormatSettings.CurrencyDecimals;
  EdCheque.Decimals := FormatSettings.CurrencyDecimals;
  EdBanco.Decimals := FormatSettings.CurrencyDecimals;
  EdAdiantamento.Decimals := FormatSettings.CurrencyDecimals;
  EdSaldoFinal.Decimals := FormatSettings.CurrencyDecimals;
  //zera os edits
  EdDinheiro.Value := 0;
  EdCheque.Value := 0;
  EdBanco.Value := 0;
  EdAdiantamento.Value := 0;
end;

procedure TFrmRecTitulo.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TFrmRecTitulo.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsConfigMovRec.Active := false;
  cdsConfigMovRec.CommandText := 'SELECT * FROM ConfigFinancMovRec WHERE idEmpresa = ' + DBEidEmpresa.Text;
  cdsConfigMovRec.Active := true;

  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
       cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmRecTitulo.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
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
        if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
          FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
          (Formulario.FindComponent('DBEidCadEmpresa') as TCustomEdit).SetFocus;
        end;
      end;
    end; // fim do filial
  end; // fim do VK_F4

end;

procedure TFrmRecTitulo.DBEvlAdiantamentoExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEvlAdiantamento.Text) <> '' then
    EdAdiantamento.Value := cdsAdiantamentovlAdiantamento.AsCurrency
  else
    EdAdiantamento.Value := 0;

  SomaValores;
end;

procedure TFrmRecTitulo.DBEvlDescontoEnter(Sender: TObject);
begin
  inherited;
  (Sender as TCDBEdit).ReadOnly := cdsGrid.FieldByName('sel').AsString = 'N';
  vlAnt := cdsGrid.FieldByName((Sender as TCDBEdit).DataField).AsCurrency;

  //trata para o caso de estar entrando no campo do valor pago
  if (Sender as TCDBEdit).Name = 'DBEvlPago' then
    vlPagoAnt := vlAnt;

  if not (cdsGrid.State = dsEdit) then
    cdsGrid.Edit;
end;

procedure TFrmRecTitulo.DBEvlDescontoExit(Sender: TObject);
begin
  inherited;
  if vlAnt = cdsGrid.FieldByName((Sender as TCDBEdit).DataField).AsCurrency then
    exit;

  cdsGrid.FieldByName('vlPago').AsCurrency := cdsGrid.FieldByName('vlReal').AsCurrency -
                                              cdsGrid.FieldByName('vlDesconto').AsCurrency +
                                              cdsGrid.FieldByName('vlAcrescimo').AsCurrency;
  vlPagoAnt := cdsGrid.FieldByName('vlPago').AsCurrency;
end;

procedure TFrmRecTitulo.DBEvlMovCaixaExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEvlMovCaixa.Text) <> '' then
    EDDinheiro.Value := cdsMovCaixa.FieldByName('vlMovCaixa').AsCurrency
  else
    EDDinheiro.Value := 0;

  SomaValores;
end;

procedure TFrmRecTitulo.DBEvlMovContaExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEvlMovConta.Text) <> '' then
    EdBanco.Value := cdsMovConta.FieldByName('vlMovConta').AsCurrency
  else
    EDBanco.Value := 0;

  SomaValores;
end;

procedure TFrmRecTitulo.DBGridCellClick(Column: TColumn);
var
  vlSomar,vlPago : Currency;
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
        //Modificado pelo protocolo 122
//          if (idCadGeral <> FieldByName('idCadGeral').AsInteger) or (idCadEmpresa <> FieldByName('idCadEmpresa').AsInteger) then
          if (idCadGeral <> FieldByName('idCadGeral').AsInteger) then
          begin
            messagedlg('Não é possível selecionar titulos de dois fornecedores ou filiais diferentes!', mtinformation, [mbok], 0);
            exit;
          end;

        FieldByName('sel').AsString := 'S';
        cdsGridfator.AsInteger := 1;
        qtSel := qtSel + 1;
        idCadGeral := FieldByName('idCadGeral').AsInteger;
        idCadEmpresa := FieldByName('idCadEmpresa').AsInteger;
        if idCadEmpresaMin = 0 then
          idCadEmpresaMin := idCadEmpresa
        else
          if idCadEmpresa < idCadEmpresaMin then
            idCadEmpresaMin := idCadEmpresa;
      end;
      if FieldByName('sel').AsString = 'S' then
      begin
        FieldByName('vlPago').AsCurrency := FieldByName('vlReal').AsCurrency;
        vlSomar := FieldByName('vlPago').AsCurrency;
      end
      else
      begin
        vlSomar := FieldByName('vlPago').AsCurrency*-1;
        FieldByName('vlPago').AsCurrency := 0;
        FieldByName('vlAcrescimo').AsCurrency := 0;
        FieldByName('vlDesconto').AsCurrency := 0;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do

      //Verifica adiantamento
      RetornaAdiantamento(idCadGeral);
      if cdsGridsomavlPago.Value > 0 then
        EDTotalRec.Value := cdsGridsomavlPago.Value
      else
        EDTotalRec.Value := 0;

      EDSaldoFinal.Value := EDTotalRec.Value - (EDDinheiro.Value+EDBanco.Value+EdCheque.Value+EDAdiantamento.Value);
//      EDTotalRec.Value := EDTotalRec.Value + vlSomar;

  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmRecTitulo.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmRecTitulo.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if cdsGrid.RecordCount > 0 then
  begin
    if not Assigned(FrmCadTituloRec) then
      FrmCadTituloRec := TFrmCadTituloRec.create(Self, [cdsGridid.AsString]);
    FrmCadTituloRec.Show;
  end;
end;

procedure TFrmRecTitulo.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

  if (marca) and (Column.Index > 0) then
  begin
    Cor := cdsConfigFinancCons.FieldByName('CorREC').AsString;
    if (trim(Cor) <> '') and (trim(Cor) <> 'clWhite') then
    begin
      DBGrid.Canvas.Brush.Color := StringToColor(Cor); // coloque aqui a cor desejada
      DBGrid.DefaultDrawDataCell(Rect, DBGrid.columns[datacol].field, State);
    end;
  end;
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

  BtnSelTodos.Enabled := qtSel < cdsGrid.RecordCount;
  BtnNenhum.Enabled := qtSel > 0;
end;

procedure TFrmRecTitulo.DBMdescMovCaixaExit(Sender: TObject);
begin
  inherited;
  if not((BtnConfirmar.Focused) Or (btnImpRecibo.Focused)) then
  begin
    PagAbas.ActivePageIndex := PagAbas.ActivePageIndex + 1;
    if PagAbas.ActivePageIndex = 2 then
      DBEvlMovConta.SetFocus;
    if PagAbas.ActivePageIndex = 3 then
      DBEvlCheque.SetFocus;
  end;
end;


procedure TFrmRecTitulo.dsChequeRecStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarChq, BtnCancelarChq, BtnExcluirChq, BtnNovoChq);
end;

procedure TFrmRecTitulo.dsGridStateChange(Sender: TObject);
begin
  inherited;
  BtnConfirma.Enabled := cdsGrid.State = dsEdit;
end;

procedure TFrmRecTitulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsGrid.IndexFieldNames := '';
  inherited;
  FrmRecTitulo := nil;
end;

procedure TFrmRecTitulo.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  cdsPadrao.CreateDataSet;
  //Adiantamento
  cdsAdiantamento.CreateDataSet;
end;

procedure TFrmRecTitulo.FormShow(Sender: TObject);
begin
  inherited;
  cdsGrid.Active := true;
  cdsPadrao.Append;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('consolida').AsBoolean := false;
  DBEidCliente.SetFocus;
  Self.FOriginalOptions := Self.DBGrid.Options;
  Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
  vlTotalPago := 0;

  EDTotalRec.Value := 0;
  cdsConfigMovRec.Active := false;
  cdsConfigMovRec.CommandText := 'SELECT * FROM ConfigFinancMovRec WHERE idEmpresa = ' + DBEidEmpresa.Text;
  cdsConfigMovRec.Active := true;
  Height := 600;
  Width := 800;
  //Configuraçoes para filial
  filial := false;
  cdsLookup.Active := false;
  cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
  cdsLookup.Active := true;
  filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').Value := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
    DBEidCadEmpresa.Visible := false;
    LookdescCadEmpresa.Left := 127;
    LookdescCadEmpresa.Width := 274;
    DBGrid.Columns[2].Visible := false;

    FindEmpresa.JoinClause.Clear;
    FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                               ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                               ' AND acessa = ' + QuotedStr('S') + ')');

    DBEidEmpresa.Find := FindEmpresa;
  end
  else
    cdsPadrao.FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa;
  vlAnt := 0;

  //Adiantamento
  RetornaAdiantamento(0);
  idRecibo := 0;
end;

procedure TFrmRecTitulo.LimpaAdiantamento;
begin
  with cdsAdiantamento do
  begin
    First;
    while not eof do
    begin
      Delete;
      First;
    end;
  end;
end;

procedure TFrmRecTitulo.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex > 0 then
  begin
    if EDTotalRec.Value <= 0 then
    begin
      messagedlg('É preciso ter títulos selecionados para fazer os lançamentos de banco e caixa!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;
    if PagAbas.ActivePageIndex = 1 then
    begin
      if (not (cdsMovCaixa.FieldByName('vlMovCaixa').Value > 0)) and  (EDSaldoFinal.Value > 0) then
      begin
        if not (cdsMovCaixa.State in [dsEdit, dsInsert]) then
          cdsMovCaixa.Edit;

        cdsMovCaixa.FieldByName('vlMovCaixa').Value := EdSaldoFinal.Value;
      end;
      DBEvlMovCaixa.SetFocus;
    end
    else
      if PagAbas.ActivePageIndex = 2 then
      begin
        if (not (cdsMovConta.FieldByName('vlMovConta').Value > 0)) and (EDSaldoFinal.Value > 0) then
        begin
          if not (cdsMovConta.State in [dsEdit, dsInsert]) then
            cdsMovConta.Edit;
          cdsMovConta.FieldByName('vlMovConta').Value := EdSaldoFinal.Value;
        end;
        DBEvlMovConta.SetFocus;
      end
      else
        if PagAbas.ActivePageIndex = 3 then
        begin
          if (not (cdsChequeRec.FieldByName('vlCheque').Value > 0)) and (EDSaldoFinal.Value > 0) then
          begin
            if not (cdsChequeRec.State in [dsEdit, dsInsert]) then
              cdsChequeRec.Edit;
            cdsChequeRec.FieldByName('vlCheque').Value := EdSaldoFinal.Value;
          end;
          DBEvlCheque.SetFocus;
        end
        else
          if PagAbas.ActivePageIndex = 4 then //Adiantamento
          begin
            if vlSaldoAdto = 0 then
            begin
              messagedlg('Cliente não tem saldo de adiantamento!', mtinformation, [mbok], 0);
              PagAbas.ActivePageIndex := 0;
              exit;
            end;

            if (not (cdsAdiantamentovlAdiantamento.AsCurrency > 0)) and (EDSaldoFinal.Value > 0) then
            begin
              if not (cdsAdiantamento.State in [dsEdit, dsInsert]) then
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

procedure TFrmRecTitulo.RetornaAdiantamento(idCadGeral: integer);
var
  sql : string;
begin
  if idCadGeral > 0 then
  begin
    sql := 'EXEC spRetSaldoAdiantamento ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
           IntToStr(idCadGeral) + ', ' + QuotedStr('C');//Cliente
    vlSaldoAdto := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('vlAdiantamento').AsCurrency;
    TabAdiantamento.Caption := 'Adiantamento (' + FormatFloat('#,##0.00', vlSaldoAdto) + ')';
  end
  else
  begin
    vlSaldoAdto := 0;
    TabAdiantamento.Caption := 'Adiantamento';
  end;
end;

procedure TFrmRecTitulo.SomaValores;
begin
  EdSaldoFinal.Value := cdsGridsomavlPago.Value - (EdDinheiro.Value+EdCheque.Value+EdBanco.Value+EDAdiantamento.Value);
end;

procedure TFrmRecTitulo.SomaCheque;
var
  vlTotCheque : currency;
begin
  vlTotCheque := 0;
  with cdsChequeRec do
  begin
    First;
    while not eof do
    begin
      vlTotCheque := vlTotCheque + FieldByName('vlCheque').AsCurrency;
      Next;
    end; // fim do while not eof do
    EdCheque.Value := vlTotCheque;
    SomaValores;
  end; // fim do with cdsChequeRec do
end;

procedure TFrmRecTitulo.MontaHistorico;
var
  bm : TBookmark;
  cont : integer;
begin
  with cdsGrid do
  begin
    bm := GetBookmark;
    historico := '';    
    First;
    while not eof do
    begin
      if (FieldByName('sel').AsString = 'S') then
      begin
        if trim(historico) <> '' then
          historico := historico + ', ';
        historico := historico + frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM TituloRec WHERE idTituloRec = ' + FieldByName('id').AsString).FieldByName('obsTituloRec').AsString;
      end;
      next;
    end; //while not eof do
    //
    First;
    cont := 1; //para saber se está no primeiro titulo selecionado
    while not eof do
    begin
      if (FieldByName('sel').AsString = 'S') then
      begin
        if trim(historico) <> '' then
          historico := historico + ', ';
        if cont = 1 then
          historico := historico + 'TITULO(S)';
        historico := historico + ': ' + frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM TituloRec WHERE idTituloRec = ' + FieldByName('id').AsString).FieldByName('nrTituloRec').AsString;
        cont := cont + 1;
      end;
      next;
    end;
    GotoBookmark(bm);
    FreeBookmark(bm);
    if trim(historico) <> '' then
    begin
      if (funcao.VerificaAlteracoes([cdsMovCaixa])) and (cdsMovCaixa.State in [dsEdit, dsInsert]) then //teve lançamento com o caixa
        cdsMovCaixa.FieldByName('descMovCaixa').AsString := historico;
      if (funcao.VerificaAlteracoes([cdsMovConta])) and (cdsMovConta.State in [dsEdit, dsInsert]) then //teve lançamento com a conta
        cdsMovConta.FieldByName('descMovConta').AsString := historico;
    end;
  end; //with cdsGrid do }
  SomaValores;
end;

end.
