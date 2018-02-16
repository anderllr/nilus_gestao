unit uFrmCadMovConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, CFind, ActnList, ImgList, DB, Provider,
  DBClient, StdCtrls, EditAlign, CEdit, ExtCtrls, CLookUp, Buttons, CBitBtn,
  ComCtrls, CPageControl, CStatusBar, CLabel, Mask, DBCtrls, CDBEdit, CDBMemo,
  FMTBcd, SqlExpr, CPanelGradient, CGroupBox, Grids, DBGrids, CDBGrid,
  CRadioButton, Math, CDBCheckBox, DBXCommon, CCheckBox, ACBrBase, ACBrExtenso,
  frxClass, frxDBSet, DateUtils, System.Actions, frxDMPExport, frxDMPClass,
  System.ImageList, frxExportPDF;

type
  TFrmCadMovConta = class(TFrmCadPadraoEmpFiscal)
    Bevel6: TBevel;
    CLabel60: TCLabel;
    DBEidMovConta: TCDBEdit;
    sdsTituloRec: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel6: TCLabel;
    DBEdtMovConta: TCDBEdit;
    CLabel7: TCLabel;
    DBEvlMovConta: TCDBEdit;
    CLabel10: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    CLabel11: TCLabel;
    DBEidResultado: TCDBEdit;
    CLabel12: TCLabel;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    DBMdescMovConta: TCDBMemo;
    CLabel20: TCLabel;
    FindCliente: TCFind;
    FindConta: TCFind;
    FindMovFinanceira: TCFind;
    CBitBtn4: TCBitBtn;
    FindRateio: TCFind;
    CBitBtn5: TCBitBtn;
    CBitBtn6: TCBitBtn;
    CLabel23: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    FindSafra: TCFind;
    sdsMovContaCons: TSQLDataSet;
    dspMovContaCons: TDataSetProvider;
    cdsMovContaCons: TClientDataSet;
    dsMovContaCons: TDataSource;
    TabRateio: TTabSheet;
    sdsMovContaRateio: TSQLDataSet;
    dspMovContaRateio: TDataSetProvider;
    cdsMovContaRateio: TClientDataSet;
    dsMovContaRateio: TDataSource;
    cdsResultado: TClientDataSet;
    CGroupBox14: TCGroupBox;
    CLabel5: TCLabel;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    CLabel8: TCLabel;
    DBEidConta: TCDBEdit;
    CGroupBox2: TCGroupBox;
    CLabel30: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel32: TCLabel;
    CLabel33: TCLabel;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    DBEidGerencialR: TCDBEdit;
    DBEidResultadoR: TCDBEdit;
    DBEvlParcelaR: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CLabel31: TCLabel;
    LblTotalRat: TCLabel;
    CLabel37: TCLabel;
    LblRestanteRat: TCLabel;
    BtnSalvarRat: TCBitBtn;
    BtnCancelarRat: TCBitBtn;
    BtnExcluirRat: TCBitBtn;
    BtnNovoRat: TCBitBtn;
    CDBGrid1: TCDBGrid;
    Bevel3: TBevel;
    CLabel9: TCLabel;
    DBEidCadGeral: TCDBEdit;
    LookCliente: TCLookUp;
    CBitBtn2: TCBitBtn;
    EDvlEntradas: TCEdit;
    EDvlSaidas: TCEdit;
    EDvlSaldo: TCEdit;
    LookSinal: TCLookUp;
    cdsMovContaRateioidEmpresa: TIntegerField;
    cdsMovContaRateioidResultado: TIntegerField;
    cdsMovContaRateioidGerencial: TIntegerField;
    TabConsulta: TTabSheet;
    cdsCons: TClientDataSet;
    dsCons: TDataSource;
    cdsConsdtMovContaIni: TDateTimeField;
    cdsConsdtMovContaFim: TDateTimeField;
    Bevel4: TBevel;
    DBGridCons: TCDBGrid;
    CLabel17: TCLabel;
    DBEdtMovContaIni: TCDBEdit;
    CLabel18: TCLabel;
    DBEdtMovContaFim: TCDBEdit;
    CBitBtn8: TCBitBtn;
    CLabel4: TCLabel;
    EDvlEntradasC: TCEdit;
    CLabel14: TCLabel;
    EDvlSaidasC: TCEdit;
    CLabel15: TCLabel;
    EDvlSaldoC: TCEdit;
    cdsMovContaConsdescGerencial: TStringField;
    cdsMovContaConsidMovFinanceira: TIntegerField;
    cdsMovContaConsdescMovConta: TStringField;
    cdsMovContaConsdtMovConta: TSQLTimeStampField;
    cdsMovContaConsvlMovConta: TFMTBCDField;
    cdsMovContaRateiodescResultado: TStringField;
    cdsMovContaRateioidMovConta: TIntegerField;
    cdsMovContaConsidMovConta: TIntegerField;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CGroupBox4: TCGroupBox;
    CLabel24: TCLabel;
    DBEidCheque: TCDBEdit;
    CLabel19: TCLabel;
    DBEdtCancelamento: TCDBEdit;
    CLabel21: TCLabel;
    DBEdtVencimento: TCDBEdit;
    CLabel16: TCLabel;
    DBEdtCompensacao: TCDBEdit;
    LookResultadoR: TCLookUp;
    LookGerencialRR: TCLookUp;
    LookGerencialRP: TCLookUp;
    FindGerencialR: TCFind;
    FindGerencialP: TCFind;
    FindResultado: TCFind;
    LookGerencialP: TCLookUp;
    LookResultado: TCLookUp;
    LookGerencialR: TCLookUp;
    CLabel22: TCLabel;
    EDvlaCompensar: TCEdit;
    CLabel25: TCLabel;
    EDvlACompensarC: TCEdit;
    cdsPadraoidMovConta: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidConta: TIntegerField;
    cdsPadraoidCadGeral: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidMovFinanceira: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidRateio: TSmallintField;
    cdsPadraoidCheque: TStringField;
    cdsPadraodtMovConta: TSQLTimeStampField;
    cdsPadraodtCompensacao: TSQLTimeStampField;
    cdsPadraodtVencimento: TSQLTimeStampField;
    cdsPadraodtCancelamento: TSQLTimeStampField;
    cdsPadraodescMovConta: TStringField;
    cdsPadraovlMovConta: TFMTBCDField;
    cdsPadraofator: TSmallintField;
    cdsMovContaRateioprRateio: TFMTBCDField;
    cdsMovContaRateiovlRateio: TFMTBCDField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsMovContaRateioidCadEmpresa: TSmallintField;
    cdsMovContaConsidConta: TIntegerField;
    cdsMovContaConsidEmpresa: TIntegerField;
    cdsMovContaConsidCadEmpresa: TSmallintField;
    cdsMovContaConstpMov: TStringField;
    EDtpMov: TCEdit;
    CGroupBox5: TCGroupBox;
    btnImpRecibo: TCBitBtn;
    BtnImpChq: TCBitBtn;
    CKNominal: TCCheckBox;
    CKPreDatado: TCCheckBox;
    Report: TfrxReport;
    rptCheque: TfrxDBDataset;
    Extenso: TACBrExtenso;
    LookCnpjCpfCliente: TCLookUp;
    cdsConsconsolidaemp: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsConsconsolidafilial: TStringField;
    CKVisado: TCCheckBox;
    BtnCopiaCheque: TCBitBtn;
    cdsMovContaConsidSafra: TIntegerField;
    cdsMovContaConsidCheque: TStringField;
    cdsMovContaConsidCadGeral: TIntegerField;
    cdsMovContaConsfator: TSmallintField;
    cdsMovContaConsidGerencial: TIntegerField;
    cdsRecibo: TClientDataSet;
    dspRecibo: TDataSetProvider;
    sdsRecibo: TSQLDataSet;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    cdsMovContaConsidRateio: TSmallintField;
    cdsPadraoimpresso: TStringField;
    cdsMovContaConsdtVencimento: TSQLTimeStampField;
    cdsMovContaConsimpresso: TStringField;
    frxPDFExport1: TfrxPDFExport;

    procedure actExcluirExecute(Sender: TObject);
    procedure DBEidMovFinanceiraExit(Sender: TObject);
    procedure DBEidChequeExit(Sender: TObject);
    procedure DBEdtMovContaExit(Sender: TObject);
    procedure DBEidGerencialEnter(Sender: TObject);
    procedure DBEidRateioEnter(Sender: TObject);
    procedure DBEidResultadoEnter(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure cdsMovContaRateioAfterEdit(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure DBGridConsDblClick(Sender: TObject);
    procedure dspMovContaRateioBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBEprRateioExit(Sender: TObject);
    procedure DBEprRateioEnter(Sender: TObject);
    procedure dsConsDataChange(Sender: TObject; Field: TField);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidMovContaExit(Sender: TObject);
    procedure DBEidContaExit(Sender: TObject);
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure cdsMovContaRateioAfterInsert(DataSet: TDataSet);
    procedure dsMovContaRateioStateChange(Sender: TObject);
    procedure BtnSalvarRatClick(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEvlMovContaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEvlMovContaExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure SomaRateio;
    procedure HabilitaRatRes;
    procedure GeraRateio;
    procedure GeraSaldoBanco(t : byte);
    procedure IniciaMoeda;
    procedure IniciaConsulta;
    function SelRegistro: Boolean;
    procedure AtualizaLookups;
    constructor create (Formulario: TComponent; Parametro: array of String);
    procedure DBEidChequeEnter(Sender: TObject);
    procedure AtualizaResultado;
    procedure cdsEmpresaidEmpresaValidate(Sender: TField);
    procedure HabilitaCampos;
    procedure HabilitaImpCheque(op: boolean);
    procedure BtnImpChqClick(Sender: TObject);
    procedure btnImpReciboClick(Sender: TObject);
    procedure HabilitaCheque(Op : boolean);
    procedure DBEidMovFinanceiraEnter(Sender: TObject);
    procedure cdsConsAfterInsert(DataSet: TDataSet);
    procedure BtnCopiaChequeClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    function BuscaRegistro(id : integer): Boolean;
    procedure VerificaNfE;
    procedure VerificaGeracao;
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
    vlTotalRateio : Currency;
    vlAnterior, id, sqlCons, idContratoVenda, idComissao : string;
    idRomaneio, idContratoFrete, idRecibo, tipo  : integer;
  public
    { Public declarations }
    idChequeAut : Boolean;
    idAdiantamento, idMovFinanceira : integer;
  end;

var
  FrmCadMovConta: TFrmCadMovConta;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPesTituloRec,
  uFrmCadContratoVenda, uFrmCadRomaneio, uFrmPesMovConta, uFrmManutencaoFrete,
  uFrmComissaoContrato, uFrmCadAdiantamento;

{$R *.dfm}

procedure TFrmCadMovConta.actCancelarExecute(Sender: TObject);
begin
  cdsMovContaCons.IndexFieldNames := '';
  cdsMovContaRateio.IndexFieldNames := '';
  inherited;

end;

procedure TFrmCadMovConta.actExcluirExecute(Sender: TObject);
var
  sql : string;
begin
  cdsMovContaCons.IndexFieldNames := '';
  cdsMovContaRateio.IndexFieldNames := '';
  cdsLookUp.Active := false;
  if (trim(DBEidMovConta.Text) <> '') then
  begin
     sql := 'SELECT 0 AS registro FROM MovContaTit WHERE idMovConta = ' + DBEidMovConta.Text +
            '   AND (idTituloPagMov IS NOT NULL OR idTituloRecMov IS NOT NULL) ';
     sql := sql + ' UNION ALL ';
     sql := sql + 'SELECT 0 AS registro FROM AdiantamentoMov WHERE idMovConta = ' + DBEidMovConta.Text +
                  ' AND idMovConta IS NOT NULL';
     cdsLookUp.CommandText := sql;
     cdsLookUp.Active := true;                          
     if not cdsLookUp.IsEmpty then
     begin
        messagedlg('Esta movimentação esta relacionada a um título !', mtInformation, [mbOk], 0);
        exit;
     end;
     if EDtpMov.Text = 'AVU' then
     begin
       //como correu tudo ok grava a tabela de movimentações gerais
       sql := 'EXEC spGeraMovGeral ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
               DBEidMovConta.Text + ', ' + QuotedStr('MCTA') + ', ' + QuotedStr('E');
       dmPadrao.dbConexao.ExecuteDirect(sql);
     end;

     sql := 'DELETE FROM ContratoVendaFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idMovConta = ' + DBEidMovConta.Text;
    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);
     sql := 'DELETE FROM ContratoVendaComFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idMovConta = ' + DBEidMovConta.Text;
    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
  inherited;
end;

procedure TFrmCadMovConta.actNovoExecute(Sender: TObject);
var
  idConta : string;
begin
  cdsMovContaCons.IndexFieldNames := '';
  cdsMovContaRateio.IndexFieldNames := '';

  idConta := DBEidConta.Text;

  inherited;
  EDtpMov.Text := 'AVU';
  if trim(idConta) <> '' then
  begin
    DBEidConta.Text := idConta;
    DBEdtMovConta.SetFocus;
  end;
  EDtpMov.Text := 'AVU';
  TabRateio.TabVisible := true;
end;

procedure TFrmCadMovConta.actPesquisarExecute(Sender: TObject);
var
  teste : string;
begin
  inherited;
  if Trim(DBEidConta.Text) = '' then
    exit;
  with cdsMovContaCons do
  begin
    Active := false;
    CommandText := sqlCons + ' AND idConta = ' + DBEidConta.Text;
    if cdsConsconsolidaemp.AsString = 'N' then
      CommandText := CommandText + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    {if (cdsConsconsolidafilial.AsString = 'N') and (cdsConsconsolidaemp.AsString = 'S') then}
    if cdsConsconsolidafilial.AsString = 'N' then
    if (cdsConsconsolidafilial.AsString = 'N') and (cdsConsconsolidaemp.AsString = 'S') then
      CommandText := CommandText + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
    if trim(cdsCons.FieldByName('dtMovContaIni').AsString) <> '' then
      CommandText := CommandText + ' AND dtMovConta >= ' + funcao.ConverteData(cdsCons.FieldByName('dtMovContaIni').AsDateTime);
    if trim(cdsCons.FieldByName('dtMovContaFim').AsString) <> '' then
      CommandText := CommandText + ' AND dtMovConta <= ' + funcao.ConverteData(cdsCons.FieldByName('dtMovContaFim').AsDateTime);
    teste := CommandText;
    Active := true;
    GeraSaldoBanco(1);
    if trim(IndexFieldNames) = '' then
    begin
      IndexFieldNames := 'dtMovConta';
      DBGridCons.Columns[2].Title.Font.Style := DBGridCons.Columns[2].Title.Font.Style + [fsBold];
    end;
  end;
end;

procedure TFrmCadMovConta.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  erro, tr : byte;
  sql, sqlContrato : string;
  idContratoFreteFinanc, idAdiantamentoMov : Integer;
begin
  if (StrToInt(DBEidMovFinanceira.text) = 7) then
    if ((trim(DBEdtVencimento.text) = '')) then //Consulta
    begin
      messagedlg('Você deve informar a data de Vencimento !', mtWarning, [mbok], 0);
      DBEdtVencimento.SetFocus;
      exit;
    end;
  //********************************************************************************//
  // Inicia o controle de transação
  erro := 0;
  //marca a transação
  dmPadrao.dbConexao.CloseDataSets;
  screen.Cursor := crSQLWait;
  if dmPadrao.dbConexao.InTransaction then
    tr := 1
  else
    tr := 0;

  if tr = 0 then
    if not dmPadrao.dbConexao.TransactionsSupported then
      tr := 1;

  if tr = 0 then
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if trim(lookSinal.Caption) = '+' then
      cdsPadrao.FieldByName('fator').AsInteger := 1;
    if trim(lookSinal.Caption) = '-' then
      cdsPadrao.FieldByName('fator').AsInteger := -1;

    if (cdsPadrao.State in [dsInsert]) and (cdsMovContaRateio.IsEmpty) then
    begin
      AtualizaLookups;
      GeraRateio;
      SomaRateio;
    end;

    if vlTotalRateio <> cdsPadrao.FieldByName('vlMovConta').AsCurrency then
      raise Exception.Create('Valor do Rateio diferente do lançamento!');

    GravaChave(1, '', nil);
    inherited;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if erro = 0 then
  begin
    if EDtpMov.Text = 'AVU' then
    begin
      //como correu tudo ok grava a tabela de movimentações gerais
      sql := 'EXEC spGeraMovGeral ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
              DBEidMovConta.Text + ', ' + QuotedStr('MCTA') + ', ' + QuotedStr('I');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;

    if tr = 0 then
      dmPadrao.dbConexao.CommitFreeAndNil(t);

    if idContratoVenda <> '' then
    begin
      sqlContrato := 'INSERT INTO ContratoVendaFinanc (idEmpresa, idCadEmpresa, idCliente, idContratoVenda, idMovConta) ' +
                     ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + DBEidCadGeral.Text + ', ' + QuotedStr(idContratoVenda) +
                     ', ' + DBEidMovConta.Text +')';
      dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
    end
    else
      if idRomaneio > 0 then
      begin
        sqlContrato := 'INSERT INTO RomaneioFinanc (idEmpresa, idCadEmpresa, idRomaneio, idMovConta) ' +
                       ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + IntToStr(idRomaneio) +
                       ', ' + DBEidMovConta.Text +')';
        dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
      end
      else
        if idContratoFrete > 0 then
        begin
          sql := 'SELECT MAX(idContratoFreteFinanc) AS id FROM ContratoFreteFinanc WHERE idEmpresa = ' +
                   DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                   ' AND idContratoFrete = ' + IntToStr(idContratoFrete);
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          begin
            if FieldByName('id').IsNull then
              idContratoFreteFinanc := 1
            else
              idContratoFreteFinanc := FieldByName('id').AsInteger + 1;
          end;
          sqlContrato := 'INSERT INTO ContratoFreteFinanc (idEmpresa, idCadEmpresa, idContratoFrete, idContratoFreteFinanc, idMovConta) ' +
                         ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + IntToStr(idContratoFrete) +
                         ', ' + IntToStr(idContratoFreteFinanc) + ', ' + DBEidMovConta.Text + ')';
          dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
          FrmManutencaoFrete.GeraFinRomaneio('CTA', DBEidMovConta.Text);
        end;
    if cdsPadraoidCheque.AsString <> '' then
    begin
      sql := 'UPDATE Conta SET ultidCheque = ' + cdsPadraoidCheque.AsString +
             ' WHERE idConta = ' + cdsPadraoidConta.AsString +
             ' AND geradoSeq = ' + QuotedStr('S');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    //Verifica primeiro se o fornecedor está lançado para ai sim gerar recibo
    if trim(DBEidCadGeral.Text) <> '' then
    begin
      idRecibo := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idRecibo) id FROM Recibo WHERE tipo = ' + IntToStr(tipo) ).FieldByName('id').AsInteger + 1;
      if idRecibo > 0 then
      begin
        if not(cdsRecibo.Active) then
          cdsRecibo.Open;
        cdsRecibo.Append;
        cdsRecibo.FieldByName('idEmpresa').AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
        cdsRecibo.FieldByName('idCadEmpresa').AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
        cdsRecibo.FieldByName('idRecibo').AsInteger := idRecibo;
        cdsRecibo.FieldByName('idMovCaixa').AsInteger := 0;
        cdsRecibo.FieldByName('idMovConta').AsInteger := cdsPadrao.FieldByName('idMovConta').AsInteger;
        cdsRecibo.FieldByName('tipo').AsInteger := tipo;
        cdsRecibo.FieldByName('vlRecibo').AsFloat := cdsPadrao.FieldByName('vlMovConta').AsFloat;
        cdsRecibo.FieldByName('dtRecibo').AsDateTime := cdsPadraodtMovConta.AsDateTime;
        cdsRecibo.FieldByName('referencia').AsString := LookAgencia.Caption + ' ' + LookContaCorrente.Caption + ' ' + LookdescConta.Caption + ' ' + DBMdescMovConta.Text;
        cdsRecibo.FieldByName('idCadGeral').AsInteger := cdsPadrao.FieldByName('idCadGeral').AsInteger;
        cdsRecibo.FieldByName('vlDescAcres').AsFloat := 0;
        cdsRecibo.Post;
        cdsRecibo.ApplyUpdates(0);
      end;
    end;//fim do if trim(DBEidCadGeral.Text) <> '' then
    if idAdiantamento > 0 then
    begin
      idAdiantamentoMov := Frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idAdiantamentoMov) idAdiantamentoMov FROM AdiantamentoMov WHERE idAdiantamento = ' + IntToStr(idAdiantamento)).FieldByName('idAdiantamentoMov').AsInteger+1;
      sql := 'INSERT INTO AdiantamentoMov (idAdiantamento, idAdiantamentoMov, dtAdiantamentoMov, ' +
             ' idMovFinanceira, vlAdiantamentoMov, fator, descAdiantamentoMov, idMovConta ' +
             '  ) VALUES (' + IntToStr(idAdiantamento) + ', ' + IntToStr(idAdiantamentoMov) + ', ' +
              QuotedStr(DateToStr(date)) + ', ' + IntToStr(idMovFinanceira) + ', ' + QuotedStr(cdsPadrao.fieldbyName('vlMovConta').AsString) + ', ' +
              '-1' + ', ' + QuotedStr('SALDO RESTANTE DE ADIANTAMENTO CONVERTIDO NA MOV. CONTA ' + cdsPadrao.FieldByname('idMovConta').AsString) + ', ' + cdsPadraoidMovConta.AsString + ')';
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
  end;
  GeraSaldoBanco(0);
  HabilitaCampos;
 //Verifica primeiro se o fornecedor está lançado para ai sim gerar recibo
  if Trim(DBEidCadGeral.Text) <> '' then
  begin
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ConfigFinanc WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString) do
    begin
      if FieldByName('impRecibo').AsString = 'S' then
      begin
        If (MessageDlg('Deseja Imprimir o Recibo?', mtconfirmation, [mbyes, mbno], 0) = mrYes) Then
          btnImpRecibo.Click;
      end;
    end;
  end;
end;

procedure TFrmCadMovConta.AtualizaLookups;
begin
  if trim(lookSinal.Caption) = '' then
    exit;
  LookGerencialR.Visible := true;
  LookGerencialP.Visible := true;
  LookGerencialRR.Visible := true;
  LookGerencialRP.Visible := true;

  LookGerencialR.ValidaCampoObrigatorio := false;
  LookGerencialP.ValidaCampoObrigatorio := false;
  LookGerencialRR.ValidaCampoObrigatorio := false;
  LookGerencialRP.ValidaCampoObrigatorio := false;


  if trim(lookSinal.Caption) = '+' then
  begin
    DBEidGerencial.Find := FindGerencialR;
    DBEidGerencialR.Find := FindGerencialR;
    LookGerencialP.Visible := false;
    LookGerencialRP.Visible := false;
    LookGerencialR.ValidaCampoObrigatorio := true;
    LookGerencialRR.ValidaCampoObrigatorio := true;
    tipo := 1;
  end
  else
    if trim(lookSinal.Caption) = '-' then
    begin
      DBEidGerencial.Find := FindGerencialP;
      DBEidGerencialR.Find := FindGerencialP;
      LookGerencialR.Visible := false;
      LookGerencialRR.Visible := false;
      LookGerencialP.ValidaCampoObrigatorio := true;
      LookGerencialRP.ValidaCampoObrigatorio := true;
      tipo := 2;
    end;
end;

procedure TFrmCadMovConta.AtualizaResultado;
begin
  //preenche a tabela que irá fazer o lookup no grid do resultado
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
  cdsResultado.Active := false;
  cdsResultado.Active := true;
end;

procedure TFrmCadMovConta.BtnCopiaChequeClick(Sender: TObject);
var
  arqRel : string;
begin
  inherited;
  Report.DataSet := rptCheque;
  arqRel := dmPadrao.RetornaConfig('caminho_rel') + Format('RelCopia_%d.fr3', [cdsPadraoidConta.AsInteger]);
  If Not(FileExists(arqRel)) Then
  Begin
    messagedlg('O arquivo de cópia do cheque ainda não foi configurado. Verifique!', mtwarning, [mbok], 0);
    exit;
  End;
  //
//  sql := 'select g.idCadGeral, a.idCidade, rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade from cadgeral g inner join cadadicional a on (a.idcadgeral = g.idcadgeral) inner join cidade c on (c.idCidade = a.idCidade) where g.idcadgeral = ' + DBEidEmpresa.Text;
  //
  Extenso.Valor := cdsPadraovlMovConta.AsCurrency;
  //
  Report.LoadFromFile(arqRel);
  //
  TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text   := StringReplace(TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text, '[extenso-monetario]', UpperCase(Extenso.Texto), [rfReplaceAll, rfIgnoreCase]);
//  TfrxMemoView(Report.FindComponent('Line1')).Visible          := CKCruzado.Checked;
//  TfrxMemoView(Report.FindComponent('Line2')).Visible          := CKCruzado.Checked;
  TfrxMemoView(Report.FindComponent('lblNominal')).Memo.Text   := Trim(LookCliente.Caption);
  TfrxMemoView(Report.FindComponent('lblNominal')).Visible     := CKNominal.Checked;
  TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text := StringReplace(TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text, '[data]', FormatDateTime('dd/MM/yyyy', cdsPadraodtVencimento.AsDateTime), [rfReplaceAll, rfIgnoreCase]);
  TfrxMemoView(Report.FindComponent('lblPredatado')).Visible   := CKPredatado.Checked;
  //
  TfrxMemoView(Report.FindComponent('lblLocal')).Memo.Text     := FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1').FieldByName('descCidade').asString;
  TfrxMemoView(Report.FindComponent('lblDia')).Memo.Text       := funcao.StrZero(DayOf(Date()), 2);
  TfrxMemoView(Report.FindComponent('lblMes')).Memo.Text       := funcao.CDoW(Date(), exdMes);
  TfrxMemoView(Report.FindComponent('lblAno')).Memo.Text       := IntToStr(YearOf(Date()));
  //

  //dados da cópia de cheque
  TfrxMemoView(Report.FindComponent('lblnrCheque')).Memo.Text  := DBEidCheque.Text;
  if CKVisado.Checked then
    TfrxMemoView(Report.FindComponent('lblVisado')).Memo.Text  := 'X'
  else
    TfrxMemoView(Report.FindComponent('lblVisado')).Memo.Clear;

//  if CKCruzado.Checked then
//    TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Text  := 'X'
//  else
//    TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Clear;

  TfrxMemoView(Report.FindComponent('lblBancoConta')).Memo.Text  := 'Ag.:' + trim(LookAgencia.Caption) + ' - ' +
        'C/C.: ' + trim(LookContaCorrente.Caption) + ' - ' + trim(LookdescConta.Caption);
  TfrxMemoView(Report.FindComponent('lblHistorico')).Memo.Text  := trim(DBMdescMovConta.Text);

  Report.ShowReport;

end;

procedure TFrmCadMovConta.BtnImpChqClick(Sender: TObject);
var
  arqRel, sql : string;
begin
  inherited;
  Report.DataSet := rptCheque;
  Report.DotMatrixReport := true;
  arqRel := dmPadrao.RetornaConfig('caminho_rel') + Format('RelCheque_%d.fr3', [cdsPadraoidConta.AsInteger]);
  If Not(FileExists(arqRel)) Then
  Begin
    messagedlg('O arquivo de emissão do cheque ainda não foi configurado. Verifique!', mtwarning, [mbok], 0);
    exit;
  End;
  //
//  sql := 'select g.idCadGeral, a.idCidade, rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade from cadgeral g inner join cadadicional a on (a.idcadgeral = g.idcadgeral) inner join cidade c on (c.idCidade = a.idCidade) where g.idcadgeral = ' + DBEidEmpresa.Text;
  //
  Extenso.Valor := cdsPadraovlMovConta.AsCurrency;
  //
  Report.LoadFromFile(arqRel);
  //
  TfrxDMPMemoView(Report.FindComponent('lblExtenso')).Memo.Text   := StringReplace(TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text, '[extenso-monetario]', UpperCase(Extenso.Texto), [rfReplaceAll, rfIgnoreCase]);
//  TfrxMemoView(Report.FindComponent('Line1')).Visible          := CKCruzado.Checked;
//  TfrxMemoView(Report.FindComponent('Line2')).Visible          := CKCruzado.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Memo.Text   := Trim(LookCliente.Caption);
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Visible     := CKNominal.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Memo.Text := StringReplace(TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text, '[data]', FormatDateTime('dd/MM/yyyy', cdsPadraodtVencimento.AsDateTime), [rfReplaceAll, rfIgnoreCase]);
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Visible   := CKPredatado.Checked;
  //
  TfrxDMPMemoView(Report.FindComponent('lblLocal')).Memo.Text     := FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1').FieldByName('descCidade').asString;
  TfrxDMPMemoView(Report.FindComponent('lblDia')).Memo.Text       := funcao.StrZero(DayOf(Date()), 2);
  TfrxDMPMemoView(Report.FindComponent('lblMes')).Memo.Text       := funcao.CDoW(Date(), exdMes);
  TfrxDMPMemoView(Report.FindComponent('lblAno')).Memo.Text       := IntToStr(YearOf(Date()));
  //
  Report.ShowReport;

  //Marca a impressão do cheque -- feito via script para não causar problemas no dataset
  sql := 'UPDATE MovConta SET impresso = ' + QuotedStr('S') + ' WHERE idMovConta = ' + cdsPadraoidMovConta.AsString;
  dmPadrao.dbConexao.ExecuteDirect(sql);
end;

procedure TFrmCadMovConta.btnImpReciboClick(Sender: TObject);
Var
  slSQL: TStringList;
  sql : string;
begin
  inherited;
  Report.DotMatrixReport := false;
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'Recibo.fr3');

  slSQL := TStringList.Create;

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
         ' AND idRecibo = ' + IntToStr(idRecibo) + ' AND tipo = ' + IntToStr(tipo);
  cdsRecibo.Active := False;
  cdsRecibo.CommandText := sql;
  cdsRecibo.Active := True;

  Extenso.Valor := cdsRecibo.FieldByName('vlRecibo').Value;

  (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;

  //
//  Report.Variables['idRecibo']            := QuotedStr('PAG/XXX000001');
  //
  //Tratamento incluido para verificar quem está recebendo se a empresa ou o cliente/fornec
  if Trim(LookSinal.Caption) = '-' then //Estamos pagando
  begin
     Report.Variables['Nome-Assinatura']     := QuotedStr(FrmPrincipal.ExecutaSQLRet([], '', 'select descCadAdicional from cadadicional where idcadgeral = ' + cdsPadrao.FieldByName('idCadGeral').AsString).FieldByName('descCadAdicional').asString);
     Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(FrmPrincipal.ExecutaSQLRet([], '', 'select idCnpjCpf from cadadicional where idcadgeral = ' + cdsPadrao.FieldByName('idCadGeral').AsString).FieldByName('idCnpjCpf').asString);
  end
  else //estamos recebendo
  begin
     Report.Variables['Nome-Assinatura']     := QuotedStr(FrmPrincipal.ExecutaSQLRet([], '', 'select descCadAdicional from cadadicional where idcadgeral = ' + cdsPadrao.FieldByName('idEmpresa').AsString).FieldByName('descCadAdicional').asString);
     Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(FrmPrincipal.ExecutaSQLRet([], '', 'select idCnpjCpf from cadadicional where idcadgeral = ' + cdsPadrao.FieldByName('idEmpresa').AsString).FieldByName('idCnpjCpf').asString);
  end;
  Report.Variables['valor']               := QuotedStr(Funcao.Mascara(FloatToStr(Extenso.Valor), 6, ''));
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

  Report.Variables['Referencia']          := QuotedStr(cdsRecibo.FieldByName('referencia').AsString);
  //
  With FrmPrincipal.ExecutaSQLRet([], '', slSQL.Text) Do
       Begin
         //
         Report.Variables['Nome-Empresa']     := QuotedStr(FieldByName('descCadAdicional').asString);
         Report.Variables['Cnpj-Cpf-Empresa'] := QuotedStr(FieldByName('idCnpjCpf').asString);
         Report.Variables['IE-RG-Empresa']    := QuotedStr(FieldByName('idInscEstadual').asString);
         Report.Variables['Endereco']         := QuotedStr(Format('%s, %s - %s', [FieldByName('endereco').asString, FieldByName('numero').asString, FieldByName('complemento').asString]));
         Report.Variables['Cidade']           := QuotedStr(FieldByName('nome_cidade').asString);
         Report.Variables['Fone']             := QuotedStr(Format('(%s)%s', [FieldByName('codDDD').asString, FieldByName('fone').asString]));
         //
         //Tratamento incluido para verificar quem está recebendo se a empresa ou o cliente/fornec
         if Trim(LookSinal.Caption) = '-' then //Estamos pagando
           Report.Variables['Nome']             := QuotedStr(FieldByName('descCadAdicional').asString)
         else
           Report.Variables['Nome']             := QuotedStr(Trim(LookCliente.Caption)); //Estamos recebendo
         Report.Variables['local-data']       := QuotedStr(FieldByName('NOME_CIDADE').asString + ', ' + funcao.CDoW(cdsRecibo.FieldByName('dtRecibo').AsDateTime, exdDMA));
         Report.Variables['idRecibo']            := IntToStr(idRecibo);
         //
       End;
  //
  slSQL.Free;
  slSQL := Nil;
  //
  Report.ShowReport;
end;

procedure TFrmCadMovConta.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesMovConta, FrmPesMovConta);
  FrmPesMovConta.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesMovConta.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesMovConta.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesMovConta.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      FieldByName('idMovConta').Value := FrmPesMovConta.cdsGrid.FieldByName('idMovConta').Value;
      DBEidMovConta.SetFocus;
      DBEidMovContaExit(DBEidMovConta);
      if BuscaRegistro(FieldByName('idMovConta').AsInteger) then
      begin
        AtualizaLookups;
        HabilitaCampos;
      end;
      DBEdtMovConta.SetFocus;
    end;
  end;

  FrmPesMovConta := nil;
end;

procedure TFrmCadMovConta.BtnSalvarRatClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsMovContaRateio, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRat') and ((Sender as TBitBtn).Name <> 'BtnCancelarRat') then
    SomaRateio; //rateio
  if ((Sender as TBitBtn).Name = 'BtnNovoRat') then
  begin
    cdsMovContaRateioidResultado.AsString := '';
    cdsMovContaRateioidGerencial.AsString := '';
  end;
  DBEidResultadoR.SetFocus;
end;

function TFrmCadMovConta.BuscaRegistro(id : integer): Boolean;
var
  sql : String;
begin
  Result := false;
  if (cdsPadrao.IsEmpty) or (not cdsPadrao.Active) then
    exit;

  sql := 'SELECT tpMov FROM vMovContaCons WHERE  idConta = ' + DBEidConta.Text +
         ' AND idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
         ' AND idMovConta = ' + IntToStr(id);

  EDtpMov.Text := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('tpMov').AsString;

  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('idMovConta').AsInteger := id;

  DBEidMovContaExit(DBEidMovConta);
  if (cdsPadrao.FieldByName('idEmpresa').AsInteger <> cdsEmpresaidEmpresa.AsInteger) or
     (cdsPadrao.FieldByName('idCadEmpresa').AsInteger <> cdsEmpresaidCadEmpresa.AsInteger) then
  begin
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
  end;

  Result := true;
end;

procedure TFrmCadMovConta.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    cdsPadrao.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;    
    cdsPadrao.FieldByName('dtMovConta').AsDateTime := date;
    cdsPadraoimpresso.AsString := 'N';
    HabilitaCheque(false);
    HabilitaCampos;
  end;
  IniciaConsulta;
end;

procedure TFrmCadMovConta.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AtualizaLookups;
end;

procedure TFrmCadMovConta.cdsConsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsConsconsolidaemp.AsString := 'S';
  cdsConsconsolidafilial.AsString := 'S';
end;

procedure TFrmCadMovConta.cdsEmpresaidEmpresaValidate(Sender: TField);
begin
  inherited;
  if trim(cdsEmpresaidEmpresa.AsString) <> '' then
    AtualizaResultado;

end;

procedure TFrmCadMovConta.cdsMovContaRateioAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMovConta.cdsMovContaRateioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value ;
  if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
    DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value
  else
  begin
    DataSet.FieldByName('idResultado').Value := frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'RateioItem').FieldByName('idResultado').Value;
  end;
end;

constructor TFrmCadMovConta.create(Formulario: TComponent; Parametro: array of String);
begin
  inherited create(formulario);
  id := '';

  idContratoVenda := '';
  idRomaneio := 0;
  idContratoFrete := 0;
  idComissao := '';

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
      end
      else
       if Parametro[0] = 'CONTRATO FRETE' then
       begin
         if Parametro[1] <> '' then
           idContratoFrete := StrToInt(Parametro[1]);
       end
       else
         if Parametro[0] = 'COMISSAO VENDAS' then
         begin
           if Parametro[1] <> '' then
             idComissao := Parametro[1];
         end
         else
           id := Parametro[0];
  end;
end;

procedure TFrmCadMovConta.DBEdtMovContaExit(Sender: TObject);
begin
  inherited;
  with cdsPadrao do
    if State in [dsInsert] then
      if trim(FieldByName('dtMovConta').AsString) <> '' then
        if trim(FieldByName('dtCompensacao').AsString) = '' then
          FieldByName('dtCompensacao').AsDateTime := FieldByName('dtMovConta').AsDateTime;
end;

procedure TFrmCadMovConta.DBEidChequeEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidCheque.Text;
end;

procedure TFrmCadMovConta.DBEidChequeExit(Sender: TObject);
var
sql:string;
begin
  inherited;
  if trim(DBEidCheque.Text) = '' then
    exit;
  if (vlAnterior <> DBEidCheque.Text) then
  begin
    if trim(DBEidConta.Text) = '' then
    begin
      messagedlg('Você deve informar a conta!', mtwarning, [mbok], 0);
      DBEidConta.SetFocus;
      exit;
    end;
    sql := 'SELECT COUNT(*) qtde FROM MovConta WHERE idCheque IS NOT NULL AND idConta = ' +
            DBEidConta.Text + ' AND idCheque = ' + DBEidCheque.Text;

    if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger > 0 then
    begin
      messagedlg('Cheque já existente!', mtwarning, [mbok], 0);
      cdsPadrao.FieldByName('idCheque').Clear;
      DBEidCheque.SetFocus;
      exit;
    end;
  end;

  funcao.SomenteLeitura([DBEdtVencimento, DBEdtCancelamento], trim(cdsPadrao.FieldByName('idCheque').AsString) = '');
  if not DBEdtVencimento.ReadOnly then
    DBEdtVencimento.SetFocus;
end;

procedure TFrmCadMovConta.DBEidContaExit(Sender: TObject);
begin
  inherited;
  GeraSaldoBanco(0);
  HabilitaRatRes;
  if idContratoFrete > 0 then
    funcao.SomenteLeitura([DBEidMovFinanceira], True);
end;

procedure TFrmCadMovConta.DBEidGerencialEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidGerencial.Text;
end;

procedure TFrmCadMovConta.DBEidMovContaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(Tabelas[0], chave);
  AbreTabSecundaria;
  SomaRateio;
  GeraSaldoBanco(0);
  HabilitaRatRes;
  if cdsPadrao.FieldByName('idMovConta').AsInteger > 0 then
    VerificaNfE;
  VerificaGeracao;
end;

procedure TFrmCadMovConta.DBEidMovFinanceiraEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidMovFinanceira.Text;
end;

procedure TFrmCadMovConta.DBEidMovFinanceiraExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if trim(DBEidMovFinanceira.Text) <> vlAnterior then
  begin
    //primeiro irá fazer validação para ver se a movimentação é mesmo bancária
    if not (frmPrincipal.ExecutaSQLRet([DBEidMovFinanceira], '', 'MovFinanceira').FieldByName('idTpMovFinanceira').AsInteger in [7, 8, 15]) then
    begin
      messagedlg('Mov. Financeira inválida! Consulte atravéz do F4', mtwarning, [mbok], 0);
      cdsPadraoidMovFinanceira.Clear;
      DBEidMovFinanceira.SetFocus;
      exit;
    end;

    AtualizaLookups;
    HabilitaRatRes;
    VerificaGeracao;
    if (cdsPadraoidMovFinanceira.AsInteger = 7) AND not(idChequeAut) then
      HabilitaCheque(true);
    if idChequeAut then
    begin
      if cdsPadraoidMovFinanceira.AsInteger = 7 then
      begin
        funcao.SomenteLeitura([DBEdtVencimento], False);
        funcao.SomenteLeitura([DBEidCheque], True);
        sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsPadraoidConta.AsString;
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          cdsPadraoidCheque.AsInteger := FieldByName('ultidCheque').AsInteger+1;
        end;
      end;
    end;
  end;
end;

procedure TFrmCadMovConta.DBEidRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidRateio.Text;
end;

procedure TFrmCadMovConta.DBEidResultadoEnter(Sender: TObject);
begin
  inherited;

  vlAnterior := DBEidResultado.Text;
end;

procedure TFrmCadMovConta.DBEidResultadoExit(Sender: TObject);
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
    if not cdsMovContaRateio.IsEmpty then
      if messagedlg('O Rateio deverá ser recalculado para os novos valores! ' + #13 +
                    ' Deseja recalcular?', mtwarning, [mbyes, mbno], 0) = mryes then
        GeraRateio;
  VerificaGeracao;
end;

procedure TFrmCadMovConta.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsMovContaRateio, [DBEidResultadoR]);
end;

procedure TFrmCadMovConta.DBEprRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadMovConta.DBEprRateioExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCDBEdit).Text then
  begin
    //Campos do rateio no valor do movimento
    if (Sender as TCDBEdit).Name = 'DBEprRateio' then
      cdsMovContaRateio.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsPadrao.FieldByName('vlMovConta').Value *
                               cdsMovContaRateio.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateio' then
      cdsMovContaRateio.FieldByName('prRateio').Value :=
         RoundTo(((cdsMovContaRateio.FieldByName('vlRateio').Value /
                   cdsPadrao.FieldByName('vlMovConta').Value) * 100), -3);
  end;
end;

procedure TFrmCadMovConta.DBEvlMovContaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString;
end;

procedure TFrmCadMovConta.DBEvlMovContaExit(Sender: TObject);
begin
  inherited;
  //rotina que alguns campos utilizarão onde se houver mudanças deverá ser obrigatóriamente feito o recalculo das parcelas
  //não deu certo usar o oldvalue, pois enquanto o campo não for salvo ele mantém o valor antigo... ai fica passando e voltando
//  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).OldValue <> cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).Value then
  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString <> vlAnterior then
    if not cdsMovContaRateio.IsEmpty then
      GeraRateio;
end;

procedure TFrmCadMovConta.DBGridConsDblClick(Sender: TObject);
begin
  inherited;
  if SelRegistro then
  begin
    PagAbas.ActivePageIndex := 0;
    funcao.SomenteLeitura([DBEdtVencimento, DBMdescMovConta, DBEdtCancelamento], Trim(DBEdtCancelamento.Text) <> '');
    if (EDtpMov.Text <> 'AVU')  then
      funcao.SomenteLeitura([DBEdtCancelamento], true);
    BtnSalvar.Visible := Trim(DBEdtCancelamento.Text) = '';
    AtualizaLookups;
    HabilitaCampos;
  end;
end;

procedure TFrmCadMovConta.dspMovContaRateioBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadMovConta.dsConsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (not cdsMovContaCons.IsEmpty) and (cdsMovContaCons.Active) then
    IniciaConsulta;
  EDvlEntradasC.Value := 0;
  EDvlSaidasC.Value := 0;
  EDvlSaldoC.Value := 0;
end;

procedure TFrmCadMovConta.dsMovContaRateioStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;

procedure TFrmCadMovConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsMovContaCons.IndexFieldNames := '';
  cdsMovContaRateio.IndexFieldNames := '';

  inherited;
  FrmCadMovConta := nil;
end;

procedure TFrmCadMovConta.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsMovContaRateio;
  chave[0] := DBEidMovConta;
  foco := DBEidConta;
  tab_chave := 'MovConta';
  Width := 620;
  Height := 540;
end;

procedure TFrmCadMovConta.FormShow(Sender: TObject);
begin
  inherited;
  cdsCons.CreateDataSet;
  cdsCons.Append;
  sqlCons := cdsMovContaCons.CommandText;

  IniciaMoeda;  
  IniciaConsulta;
  if trim(id) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idMovConta').AsString := id;
    DBEidMovContaExit(DBEidMovConta);
  end;
  EDtpMov.Text := 'AVU';
  AtualizaResultado;

  HabilitaCheque(false);
  btnImpRecibo.Enabled := false;
  HabilitaImpCheque(false);

  if idContratoVenda <> '' then
  begin
    actNovo.Execute;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    DBEidMovConta.SetFocus;
    DBEidMovContaExit(DBEidMovConta);
    DBEidConta.SetFocus;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('dtMovConta').AsDateTime := frmCadContratoVenda.cdsPadrao.FieldByName('dtEmissao').AsDateTime;
    cdsPadrao.FieldByName('idCadGeral').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCliente').AsInteger;
    cdsPadrao.FieldByName('idSafra').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idSafra').AsInteger;
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 5;
    vlAnterior := '';
    DBEidMovFinanceiraExit(DBEidMovFinanceira);
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT idGerencial FROM ProdGerencial WHERE idProduto = ' +
                                            frmCadContratoVenda.cdsPadrao.FieldByName('idProduto').AsString +
                                            ' AND idEmpresa = ' + DBEidEmpresa.Text) do
    begin
      if RecordCount > 0 then
        cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
    end;
    cdsPadrao.FieldByName('vlMovConta').AsCurrency := frmCadContratoVenda.cdsPadrao.FieldByName('vlContratoVenda').AsCurrency;
    cdsPadrao.FieldByName('descMovConta').AsString := 'Referente a Contrato de Venda nr.: ' + idContratoVenda;
  end
  else
    if idRomaneio > 0 then
    begin
      actNovo.Execute;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;

      cdsEmpresaidEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      DBEidMovConta.SetFocus;
      DBEidMovContaExit(DBEidMovConta);
      DBEidConta.SetFocus;
      cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadrao.FieldByName('dtMovConta').AsDateTime := frmCadRomaneio.cdsPadrao.FieldByName('dtRomaneio').AsDateTime;
      cdsPadrao.FieldByName('idCadGeral').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCliente').AsInteger;
      cdsPadrao.FieldByName('idSafra').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idSafra').AsInteger;
      cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 5;
      vlAnterior := '';
      DBEidMovFinanceiraExit(DBEidMovFinanceira);
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT idGerencial FROM ProdGerencial WHERE idProduto = ' +
                                              frmCadRomaneio.cdsPadrao.FieldByName('idProduto').AsString +
                                              ' AND idEmpresa = ' + DBEidEmpresa.Text) do
      begin
        if RecordCount > 0 then
          cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
      end;
      cdsPadrao.FieldByName('vlMovConta').AsCurrency := frmCadRomaneio.EDvlFinanc.Value;
      cdsPadrao.FieldByName('descMovConta').AsString := 'Referente a Romaneio nr.: ' + IntToStr(idRomaneio);
    end
    else
    if idContratoFrete > 0 then
    begin
      actNovo.Execute;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;

      cdsEmpresaidEmpresa.AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      DBEidMovContaExit(DBEidMovConta);
  //        DBEidBanco.SetFocus;
      cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadrao.FieldByName('dtMovConta').AsDateTime := FrmManutencaoFrete.cdsGrid.FieldByName('dtEmissao').AsDateTime;
//      cdsPadrao.FieldByName('idDocSerie').AsString := 'TPAG';
//      cdsPadrao.FieldByName('tpDocumento').AsString := 'CONTRATO FRETE';
      if not FrmManutencaoFrete.cdsGrid.FieldByName('idMotorista').IsNull then
        cdsPadrao.FieldByName('idCadGeral').AsInteger := FrmManutencaoFrete.cdsGrid.FieldByName('idMotorista').AsInteger;
      cdsPadrao.FieldByName('idSafra').AsInteger := FrmManutencaoFrete.cdsGrid.FieldByName('idSafra').AsInteger;
    {  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT idGerencial FROM ProdGerencial WHERE idProduto = ' +
                                              FrmManutencaoFrete.cdsPadrao.FieldByName('idProduto').AsString +
                                              ' AND idEmpresa = ' + DBEidEmpresa.Text) do
      begin
        if RecordCount > 0 then
          cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
      end;}
      cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 5;
      funcao.SomenteLeitura([DBEidMovFinanceira], True);
      cdsPadrao.FieldByName('vlMovConta').AsCurrency := FrmManutencaoFrete.EdSaldoFinal.Value;
      cdsPadrao.FieldByName('descMovConta').AsString := 'Referente a Contrato de Frete nr.: ' + IntToStr(idContratoFrete);
    end;

end;

procedure TFrmCadMovConta.GeraRateio;
var
  idResMaior : integer;
  vlRateioMaior, vlDiferenca : currency;
begin
  idResMaior := 0;
  with cdsMovContaRateio do
  begin
    if not Active then
      AbreTabSecundaria;
    //limpa a tabela se houverem registros nela
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        delete;
        first;
      end;
    end;
    if trim(cdsPadrao.FieldByName('idGerencial').AsString) = '' then
    begin
      messagedlg('O Centro Gerencial deve ser informado!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBEidGerencial.SetFocus;
      exit;
    end;
    //início da geração do rateio / sem plano de rateio direto pelo plano de resultado
    if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
    begin
      Append;
      if trim(DBEidMovConta.Text) <> '' then
        FieldByName('idMovConta').AsString := DBEidMovConta.Text
      else
        FieldByName('idMovConta').Value := 0;
      FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
      FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
      FieldByName('vlRateio').Value := cdsPadrao.FieldByName('vlMovConta').Value;;
      FieldByName('prRateio').Value := '100';
      Post;
    end
    else
    begin  //início da geração do rateio / via plano de rateio
      if trim(DBEidRateio.Text) = '' then
      begin
        messagedlg('O centro de resultado ou o rateio devem ser informados!', mtwarning, [mbok], 0);
        cdsMovContaRateio.EmptyDataSet;
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
          cdsMovContaRateio.Append;
          if trim(DBEidMovConta.Text) <> '' then
            cdsMovContaRateio.FieldByName('idMovConta').AsString := DBEidMovConta.Text
          else
            cdsMovContaRateio.FieldByName('idMovConta').Value := 0;
            cdsMovContaRateio.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
            cdsMovContaRateio.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
            cdsMovContaRateio.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
            cdsMovContaRateio.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsPadrao.FieldByName('vlMovConta').Value *
                                                               FieldByName('prRateio').Value)/100);
          //para registrar quem tem o maior valor
          if vlRateioMaior < cdsMovContaRateio.FieldByName('vlRateio').Value then
            idResMaior := cdsMovContaRateio.FieldByName('idResultado').Value;
          cdsMovContaRateio.Post;
          Next;
        end; //fim do laço do rateio
      end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
    end; //fim do else   begin  //início da geração do rateio / via plano de rateio
    SomaRateio;
    //inicia processo para ajuste de valor caso haja diferença joga para o maior
    if (vlTotalRateio <>  cdsPadrao.FieldByName('vlMovConta').Value) then
    begin
      vlDiferenca := cdsPadrao.FieldByName('vlMovConta').Value - vlTotalRateio;
      IndexFieldNames := 'idResultado';
      FindKey([idResMaior]);
      Edit;
      FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
      Post;
    end;
  end; // fim do with cdsMovContaRateio do
  cdsMovContaRateio.First;

end;

procedure TFrmCadMovConta.GeraSaldoBanco(t : byte);
//t = 0 : Tela de cadastro
//    1 : tela de consulta
begin
  if t = 0 then
  begin
    //Gera o Saldo Inicial de Banco ou seja sem data
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidConta, nil, nil, nil, DBCKconsolidafilial], 'spRetSaldoConta', '') do
    begin
      EDvlEntradas.Value := FieldByName('vlEntradas').AsCurrency;
      EDvlSaidas.Value := FieldByName('vlSaidas').AsCurrency;
      EDvlSaldo.Value := FieldByName('vlSaldoAtual').AsCurrency;
      EDvlACompensar.Value := FieldByName('vlACompensar').AsCurrency;
    end;
  end;
  if t = 1 then
  begin
    //Gera o Saldo de Banco com as datas
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidConta, DBEdtMovContaIni, DBEdtMovContaFim, nil, DBCKconsolidafilial], 'spRetSaldoConta', '') do
    begin
      EDvlEntradasC.Value := FieldByName('vlEntradas').AsCurrency;
      EDvlSaidasC.Value := FieldByName('vlSaidas').AsCurrency;
      EDvlSaldoC.Value := FieldByName('vlSaldoAtual').AsCurrency;
      EDvlACompensarC.Value := FieldByName('vlACompensar').AsCurrency;      
    end;
  end;
end;

procedure TFrmCadMovConta.HabilitaCampos;
//procedure que irá verificar se alguns campos devem ou não ser habilitados
begin
  if cdsPadrao.State in [dsEdit, dsBrowse] then
  begin
    funcao.SomenteLeitura([DBEidMovFinanceira, DBEidCheque], true);
    funcao.SomenteLeitura([DBEvlMovConta, DBEidCadGeral, DBEidResultado, DBEidRateio, DBEidGerencial, DBEdtVencimento, DBEdtCancelamento, DBEdtCompensacao, DBMdescMovConta], EDtpMov.Text <> 'AVU');
    if EDtpMov.Text = 'AVU' then
    begin
      funcao.SomenteLeitura([DBEvlMovConta], (trim(DBEdtCompensacao.Text) <> ''));
      funcao.SomenteLeitura([DBEdtVencimento, DBEdtCancelamento], (trim(DBEdtCompensacao.Text) <> '') or (trim(DBEidCheque.Text) = ''));
    end;
    btnImpRecibo.Enabled := trim(DBEidCadGeral.Text) <> '';
    HabilitaImpCheque(trim(DBEidCheque.Text) <> '');
  end
  else
    if cdsPadrao.State = dsInsert then
    begin
      funcao.SomenteLeitura([DBEvlMovConta, DBEidCadGeral, DBEidResultado, DBEidRateio,
                             DBEidGerencial, DBEidMovFinanceira], false);
      funcao.SomenteLeitura([DBEdtCancelamento], true);
      btnImpRecibo.Enabled := false;
      HabilitaImpCheque(false);
    end;
end;

procedure TFrmCadMovConta.HabilitaCheque(Op: boolean);
//procedure que verifica se habilita ou não os dados do cheque
begin
  funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento], not Op);
end;

procedure TFrmCadMovConta.HabilitaImpCheque(op: boolean);
begin
  BtnImpChq.Enabled := op;
  BtnCopiaCheque.Enabled := op;
  CKNominal.Checked := op;
//  CKCruzado.Checked := op;
  CKVisado.Checked := false;
  CKPreDatado.Checked := op;
  CKNominal.Enabled := op;
//  CKCruzado.Enabled := op;
  CKVisado.Enabled := op;
  CKPreDatado.Enabled := op;
end;

procedure TFrmCadMovConta.HabilitaRatRes;
//procedure criada para controlar a habilitação para ver se o título está recebendo rateio
// ou centro de resultado direto
begin
  funcao.SomenteLeitura([DBEidResultado, DBEidRateio, DBEidGerencial, DBEidCadGeral, DBEidSafra,
                         DBEidMovFinanceira, DBEidCheque, DBEdtMovConta, DBEvlMovConta, DBEdtCancelamento], EDtpMov.Text <> 'AVU');
  funcao.SomenteLeitura([DBEidCheque], true);

  if EDtpMov.Text = 'AVU' then
  begin
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
    TabRateio.TabVisible := true;
  end // fim do if EDtpMov.Text = 'AVU' then
  else
    TabRateio.TabVisible := false;
  if trim(DBEidMovFinanceira.Text) <> '' then
    if frmPrincipal.ExecutaSQLRet([DBEidMovFinanceira], '', 'MovFinanceira').FieldByName('idTpMovFinanceira').Value = 8 then
      funcao.SomenteLeitura([DBEidCheque], false);

  //habilitação dos dados do cheque
  funcao.SomenteLeitura([DBEdtVencimento, DBEdtCancelamento], trim(cdsPadrao.FieldByName('idCheque').AsString) = '');
end;

procedure TFrmCadMovConta.IniciaConsulta;
begin
  with cdsMovContaCons do
  begin
    Active := False;
    CommandText := sqlCons + ' AND 1=2';
    Active := true;
  end;
end;

procedure TFrmCadMovConta.IniciaMoeda;
begin
  EDvlEntradas.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaidas.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaldo.Decimals := FormatSettings.CurrencyDecimals;
  EDvlEntradasC.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaidasC.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaldoC.Decimals := FormatSettings.CurrencyDecimals;
end;

procedure TFrmCadMovConta.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    SelRegistro;
    AtualizaLookups;
  end;
  if (PagAbas.ActivePageIndex = 1) then //Rateio
  begin
    if (cdsPadrao.State in [dsInsert]) and (cdsMovContaRateio.IsEmpty) then
      GeraRateio;
  end;
  if (PagAbas.ActivePageIndex = 2) and (trim(DBEidConta.text) = '') then //Consulta
  begin
    messagedlg('Você deve informar uma conta Banco!', mtWarning, [mbok], 0);
    PagAbas.ActivePageIndex := 0;
    DBEidConta.SetFocus;
    exit;
  end; 
end;

function TFrmCadMovConta.SelRegistro: Boolean;
var
  id : integer;
begin
  Result := false;
  if (cdsMovContaCons.IsEmpty) or (not cdsMovContaCons.Active) then
    exit;
  id := cdsMovContaCons.FieldByName('idMovConta').AsInteger;
  EDtpMov.Text := cdsMovContaConstpMov.AsString;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('idMovConta').AsInteger := id;

  DBEidMovContaExit(DBEidMovConta);
  if (cdsPadrao.FieldByName('idEmpresa').AsInteger <> cdsEmpresaidEmpresa.AsInteger) or
     (cdsPadrao.FieldByName('idCadEmpresa').AsInteger <> cdsEmpresaidCadEmpresa.AsInteger) then
  begin
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
  end;

  Result := true;
end;

procedure TFrmCadMovConta.SomaRateio;
begin
  vlTotalRateio := 0;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlMovConta').AsCurrency-vlTotalRateio), 6, '');
  With cdsMovContaRateio do
  begin
    if IsEmpty then
      exit;
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
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlMovConta').AsCurrency-vlTotalRateio), 6, '');
end;

procedure TFrmCadMovConta.VerificaGeracao;
var
  sql : string;
begin
  sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsPadraoidConta.AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if Trim(FieldByName('geradoSeq').AsString) = 'S' then
    begin
      funcao.SomenteLeitura([DBEidCheque], True);
      idChequeAut := True;
    end
    else
    begin
      funcao.SomenteLeitura([DBEidCheque], False);
      idChequeAut := False;
    end;
  end;
end;

procedure TFrmCadMovConta.VerificaNfE;
var
  sql : String;
begin
  //Procedure responsavel por veririficar se o Titulo tem vinculo com uma NfE
  sql := 'SELECT * FROM NfeFinanc WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
         ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
         ' AND idMovConta = ' + cdsPadrao.FieldByName('idMovConta').AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      funcao.SomenteLeitura([DBEidResultado, DBEidRateio, DBEidGerencial,
                             DBEidSafra, DBEidGerencialR, DBEidResultadoR,
                             DBEidMovFinanceira, DBEprRateio, DBEvlRateio,
                             DBEidMovConta, DBEidConta, DBEidCheque, DBEvlMovConta,
                             DBEprRateio, DBEvlRateio, DBEvlParcelaR, DBEdtMovContaIni,
                             DBEdtMovConta, DBEdtMovContaFim, DBEdtCancelamento, DBEdtVencimento,
                             DBEdtCompensacao], True);
    end;
  end;
end;

end.
