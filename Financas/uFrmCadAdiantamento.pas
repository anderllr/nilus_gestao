unit uFrmCadAdiantamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, DB, SqlExpr, CFind, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, Grids, DBGrids,
  CDBGrid, CDBMemo, CGroupBox, CDBCheckBox, DBXCommon, CDBRadioGroup, CCheckBox,
  frxClass, frxDBSet, ACBrBase, ACBrExtenso, DateUtils, System.Actions, frxDMPClass;

type
  TFrmCadAdiantamento = class(TFrmCadPadraoEmpFiscal)
    sdsResultado: TSQLDataSet;
    grpContas: TCGroupBox;
    CLabel8: TCLabel;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CBitBtn1: TCBitBtn;
    CLabel1: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CBitBtn2: TCBitBtn;
    CGroupBox2: TCGroupBox;
    DBEdtAdiantamento: TCDBEdit;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEvlAdiantamento: TCDBEdit;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEidAdiantamento: TCDBEdit;
    CLabel2: TCLabel;
    DBEstAdiantamento: TCDBEdit;
    DBMdescAdiantamento: TCDBMemo;
    DBRGtpAdiantamento: TCDBRadioGroup;
    LookCliente: TCLookUp;
    DBEidCadGeral: TCDBEdit;
    lblCliFor: TCLabel;
    CBitBtn3: TCBitBtn;
    cdsMov: TClientDataSet;
    dsMov: TDataSource;
    dspMov: TDataSetProvider;
    sdsMov: TSQLDataSet;
    TabMovimento: TTabSheet;
    CGroupBox7: TCGroupBox;
    GridParcelas: TCDBGrid;
    cdsMovidAdiantamento: TIntegerField;
    cdsMovidAdiantamentoMov: TSmallintField;
    cdsMovidMovCaixa: TIntegerField;
    cdsMovidMovConta: TIntegerField;
    cdsMovidTituloPagMov: TIntegerField;
    cdsMovidTituloRecMov: TIntegerField;
    cdsMovidMovFinanceira: TIntegerField;
    cdsMovvlAdiantamentoMov: TFMTBCDField;
    cdsMovfator: TSmallintField;
    cdsMovFinanceira: TClientDataSet;
    cdsMovdescMovFinanceira: TStringField;
    cdsMovsinal: TStringField;
    cdsMovdtAdiantamentoMov: TSQLTimeStampField;
    cdsMovdescAdiantamentoMov: TStringField;
    CGroupBox1: TCGroupBox;
    btnImpRecibo: TCBitBtn;
    BtnImpChq: TCBitBtn;
    CKNominal: TCCheckBox;
    CKCruzado: TCCheckBox;
    CKPreDatado: TCCheckBox;
    CLabel3: TCLabel;
    DBEdtCompensacao: TCDBEdit;
    CLabel24: TCLabel;
    DBEidCheque: TCDBEdit;
    CLabel21: TCLabel;
    DBEdtVencimento: TCDBEdit;
    Report: TfrxReport;
    Extenso: TACBrExtenso;
    rptCheque: TfrxDBDataset;
    LookCnpjCpfCliente: TCLookUp;
    cdsPadraoidAdiantamento: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraodtAdiantamento: TSQLTimeStampField;
    cdsPadraodescAdiantamento: TStringField;
    cdsPadraovlAdiantamento: TFMTBCDField;
    cdsPadraotpAdiantamento: TStringField;
    cdsPadraoidCadGeral: TIntegerField;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraoidConta: TIntegerField;
    cdsPadraostAdiantamento: TStringField;
    cdsPadraoidCheque: TStringField;
    cdsPadraodtVencimento: TSQLTimeStampField;
    cdsPadraodtCompensacao: TSQLTimeStampField;
    cdsMovvlSaldoAdto: TAggregateField;
    DBEvlSaldoAdto: TCDBEdit;
    CLabel4: TCLabel;
    cdsPadraovlMovConta: TCurrencyField;
    BtnCopiaCheque: TCBitBtn;
    cdsRecibo: TClientDataSet;
    dspRecibo: TDataSetProvider;
    sdsRecibo: TSQLDataSet;
    CBitBtn4: TCBitBtn;
    DBEidGerencial: TCDBEdit;
    CLabel10: TCLabel;
    cdsPadraoidGerencial: TIntegerField;
    LookGerencialR: TCLookUp;
    FindGerencialP: TCFind;
    FindGerencialR: TCFind;
    LookGerencialP: TCLookUp;
    DBRGtpFinanc: TCDBRadioGroup;
    BtnGerar: TCBitBtn;
    cdsPadraotpFinanc: TStringField;
    procedure DBEidAdiantamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidAdiantamentoExit(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure dspPadraoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
{    procedure DBEidResultadoExit(Sender: TObject); }
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsMovCalcFields(DataSet: TDataSet);
    procedure DBRGtpAdiantamentoExit(Sender: TObject);
    procedure VerLabels;
    procedure HabilitaEdits;
    procedure DBEidCaixaExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure HabilitaImpCheque(op: boolean);
    procedure actPesquisarExecute(Sender: TObject);
    procedure btnImpReciboClick(Sender: TObject);
    procedure BtnImpChqClick(Sender: TObject);
    procedure cdsPadraoCalcFields(DataSet: TDataSet);
    constructor create (Formulario: TComponent; Parametro: Array of String);
    procedure BtnCopiaChequeClick(Sender: TObject);
    procedure AtualizaLookups;
    procedure BtnGerarClick(Sender: TObject);
    procedure DBRGtpFinancExit(Sender: TObject);
  private
    { Private declarations }
    id : string;
    idRomaneio, idRecibo, idCliente : integer;
    idContratoVenda : string;
    referencia : string;
    idMovCaixa, idMovConta, tipo : Integer;
    vlRecibo : Currency;
  public
    { Public declarations }

  end;

var
  FrmCadAdiantamento: TFrmCadAdiantamento;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao, uFrmPadrao,
  uFrmPesMovTransf, uDmFind, uFrmPesAdiantamento, uFrmCadContratoVenda,
  uFrmCadRomaneio, uFrmCadMovCaixa, uFrmCadMovConta, uCadTituloPag,
  uCadTituloRec;

{$R *.dfm}

procedure TFrmCadAdiantamento.actExcluirExecute(Sender: TObject);
var
  sql, sqlMov : string;
begin
  if cdsMov.RecordCount > 1 then
  begin
    messagedlg('Já existe movimento lançado para este adiantamento! Não pode ser excluído!', mtwarning, [mbok], 0);
    exit;
  end;

   if messagedlg('Deseja realmente excluir o adiantamento selecionado!' + #13 +
                'O lançamento de banco/caixa/contrato de venda também será excluído!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    cdsMov.First;
    sql := '';
    sqlMov := '';

    if ((DBEidConta.Text) <> '') then
    begin
      if trim(cdsMovidMovConta.AsString) <> '' then
        sqlMov := 'DELETE FROM MovConta WHERE idMovConta = ' + cdsMovidMovConta.AsString;
    end
    else
      if (DBEidCaixa.Text) <> '' then
        if trim(cdsMovidMovCaixa.AsString) <> '' then
          sqlMov := 'DELETE FROM MovCaixa WHERE idMovCaixa = ' + cdsMovidMovCaixa.AsString;

    sql := 'DELETE FROM ContratoVendaFinanc WHERE idAdiantamento = ' + DBEidAdiantamento.Text;

    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);

    sql := 'DELETE FROM AdiantamentoMov WHERE idAdiantamento = ' + DBEidAdiantamento.Text;

    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);

    if trim(sqlMov) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sqlMov);

    sql := 'DELETE FROM Adiantamento WHERE idAdiantamento = ' + DBEidAdiantamento.Text;

    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);

    actNovo.Execute;
  end;
//  inherited;
end;

procedure TFrmCadAdiantamento.actFecharExecute(Sender: TObject);
begin
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if (trim(DBEdtAdiantamento.Text) = '') and (trim(DBEvlAdiantamento.Text) = '') and (trim(DBMdescAdiantamento.Text) = '') then
      cdsPadrao.Cancel;

  inherited;
end;

procedure TFrmCadAdiantamento.actNovoExecute(Sender: TObject);
begin
  funcao.SomenteLeitura([DBEdtAdiantamento, DBEvlAdiantamento, DBMdescAdiantamento, DBRGtpAdiantamento,
                         DBEidCaixa, DBEidConta, DBEidCadGeral],false);
  funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento], true);
  inherited;
  HabilitaImpCheque(false);
end;

procedure TFrmCadAdiantamento.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesAdiantamento, FrmPesAdiantamento);
  FrmPesAdiantamento.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesAdiantamento.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesAdiantamento.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesAdiantamento.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      FieldByName('idAdiantamento').Value := FrmPesAdiantamento.cdsGrid.FieldByName('idAdiantamento').Value;
      DBEidAdiantamento.SetFocus;
      DBEidAdiantamentoExit(DBEidAdiantamento);
    end;
  end;
end;

procedure TFrmCadAdiantamento.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  erro : byte;
  msg, sqlContrato, sql : string;
begin
  if ((trim(DBEidCaixa.Text) = '') and (trim(DBEidConta.Text) =  '')) then
    msg := 'Você deve informar um Caixa ou Conta!' + #13;

  if ((trim(DBEidCadGeral.Text) = '')) then
    msg := msg + 'Você deve informar o Cliente ou Fornecedor!' + #13;

  if (trim(DBEidCheque.Text) <> '') and (trim(DBEdtVencimento.Text) = '') then
    msg := msg + 'Para cheque você deve informar o vencimento!' + #13;

  if trim(msg) <> '' then
  begin
    MessageDlg(msg, mtWarning, [mbOk], 0);
    exit;
  end;

  // Inicia o controle de transação
  erro := 0;
  //marca a transação
  GravaChave(1, '', nil);
  inherited;
  screen.Cursor := crSQLWait;
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if not (funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidAdiantamento], 'spAdiantamento')) then
      erro := 1;

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
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    if idContratoVenda <> '' then
    begin
      sqlContrato := 'INSERT INTO ContratoVendaFinanc (idEmpresa, idCadEmpresa, idCliente, idContratoVenda, idAdiantamento) ' +
                     ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + DBEidCadGeral.Text + ', ' + QuotedStr(idContratoVenda) +
                     ', ' + DBEidAdiantamento.Text + ')';
      dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
    end;

    if idRomaneio > 0 then
    begin
      sqlContrato := 'INSERT INTO RomaneioFinanc (idEmpresa, idCadEmpresa, idRomaneio, idAdiantamento) ' +
                     ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + IntToStr(idRomaneio) +
                     ', ' + DBEidAdiantamento.Text + ')';
      dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
    end;
    if cdsPadrao.FieldByName('idCheque').AsString <> '' then
    begin
      sql := 'UPDATE Conta SET ultidCheque = ' + cdsPadrao.FieldByName('idCheque').AsString +
             ' WHERE idConta = ' + cdsPadrao.FieldByName('idConta').AsString +
             ' AND geradoSeq = ' + QuotedStr('S');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    DBEidAdiantamentoExit(DBEidAdiantamento);
    if DBRGtpAdiantamento.ItemIndex = 0 then
      tipo := 1
    else
      if DBRGtpAdiantamento.ItemIndex = 1 then
        tipo := 2;

    idRecibo := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idRecibo) id FROM Recibo WHERE tipo = ' + IntToStr(tipo)).FieldByName('id').AsInteger + 1;
    vlRecibo := cdsPadrao.FieldByName('vlAdiantamento').AsCurrency;

    //Monta o histórico da Referência
    referencia := '';
    if (Trim(DBMdescAdiantamento.Text) <> '') and (trim(DBEidConta.Text) <> '') then
    begin
      sql := 'select b.descBanco + ' + QuotedStr(', Ag.: ') + ' + c.idAgencia + '+ QuotedStr('  Conta: ') +
             ' + c.idContaCorrente descConta   from Conta c INNER JOIN Banco b ON c.idBanco = b.idBanco WHERE c.idConta = ' + DBEidConta.Text;
      referencia := DBMdescAdiantamento.Text + ', ' + frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descConta').AsString;
      if trim(DBEidCheque.Text) <> '' then
        referencia := referencia + ',  CHEQUE: ' + DBEidCheque.Text;
    end
    else
      referencia := trim(DBMdescAdiantamento.Text);

    idMovCaixa := frmPrincipal.ExecutaSQLRet([], '', 'SELECT idMovCaixa FROM AdiantamentoMov WHERE idAdiantamento = ' + DBEidAdiantamento.Text).FieldByName('idMovCaixa').AsInteger;
    idMovConta := frmPrincipal.ExecutaSQLRet([], '', 'SELECT idMovConta FROM AdiantamentoMov WHERE idAdiantamento = ' + DBEidAdiantamento.Text).FieldByName('idMovConta').AsInteger;
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
      cdsRecibo.FieldByName('tipo').AsInteger := tipo;
      cdsRecibo.FieldByName('vlRecibo').AsFloat := vlRecibo;
      cdsRecibo.FieldByName('dtRecibo').AsDateTime := cdsPadraodtAdiantamento.AsDateTime;
      cdsRecibo.FieldByName('referencia').AsString := referencia;
      cdsRecibo.FieldByName('idCadGeral').AsInteger := cdsPadraoidCadGeral.AsInteger;
      cdsRecibo.Post;
      cdsRecibo.ApplyUpdates(0);
      If (MessageDlg('Deseja Imprimir o Recibo?', mtconfirmation, [mbyes, mbno], 0) = mrYes) Then
        btnImpRecibo.Click;
    end;
    //actNovo.Execute;
  end
  else
  begin
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  end;
end;

procedure TFrmCadAdiantamento.AtualizaLookups;
begin
  LookGerencialR.Visible := true;
  LookGerencialP.Visible := true;

  LookGerencialR.ValidaCampoObrigatorio := false;
  LookGerencialP.ValidaCampoObrigatorio := false;

  if trim(cdsPadraotpAdiantamento.AsString) = 'C' then
  begin
    DBEidGerencial.Find := FindGerencialR;
    LookGerencialP.Visible := false;
    LookGerencialR.ValidaCampoObrigatorio := true;
    tipo := 1;
  end
  else
    if trim(cdsPadraotpAdiantamento.AsString) = 'F' then
    begin
      DBEidGerencial.Find := FindGerencialP;
      LookGerencialR.Visible := false;
      LookGerencialP.ValidaCampoObrigatorio := true;
      tipo := 2;
    end;
end;

procedure TFrmCadAdiantamento.BtnCopiaChequeClick(Sender: TObject);
var
  arqRel : string;
begin
  inherited;
  Report.DataSet := rptCheque;
  arqRel := dmPadrao.RetornaConfig('caminho_rel') + Format('RelCopia_%d.fr3', [cdsPadrao.FieldByName('idAdiantamento').AsInteger]);
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
  TfrxMemoView(Report.FindComponent('Line1')).Visible          := CKCruzado.Checked;
  TfrxMemoView(Report.FindComponent('Line2')).Visible          := CKCruzado.Checked;
//  TfrxMemoView(Report.FindComponent('lblNominal')).Memo.Text   := Trim(LookCliente.Caption);
//  TfrxMemoView(Report.FindComponent('lblNominal')).Visible     := CKNominal.Checked;
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

  if CKCruzado.Checked then
    TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Text  := 'X'
  else
    TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Clear;

  TfrxMemoView(Report.FindComponent('lblBancoConta')).Memo.Text  := 'Ag.:' + trim(LookAgencia.Caption) + ' - ' +
        'C/C.: ' + trim(LookContaCorrente.Caption) + ' - ' + trim(LookdescConta.Caption);
  TfrxMemoView(Report.FindComponent('lblHistorico')).Memo.Text  := trim(cdsPadraodescAdiantamento.AsString);

  Report.ShowReport;
end;

procedure TFrmCadAdiantamento.BtnGerarClick(Sender: TObject);
var
  sql : string;
  idAdiantamentoMov, idMovFinanceira : integer;
begin
  if cdsPadraotpFinanc.AsString = 'CX' then
  begin
    Application.CreateForm(TFrmCadMovCaixa, FrmCadMovCaixa);
    FrmCadMovCaixa.BtnNovo.Click;
    FrmCadMovCaixa.cdsPadrao.FieldByName('idCadGeral').AsInteger := cdsPadraoidCadGeral.AsInteger;
    FrmCadMovCaixa.cdsPadrao.FieldByName('vlMovCaixa').Value :=  cdsMovvlSaldoAdto.Value;
    FrmCadMovCaixa.cdsPadrao.FieldByName('descMovCaixa').AsString := cdsPadraodescAdiantamento.AsString;
    if cdsPadraotpAdiantamento.AsString = 'C' then
    begin
      FrmCadMovCaixa.cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 3;
      FrmCadMovCaixa.idMovFinanceira := 34;
    end
    else
    begin
      FrmCadMovCaixa.cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 4;
      FrmCadMovCaixa.idMovFinanceira := 33;
    end;
    FrmCadMovCaixa.AtualizaLookups;
    FrmCadMovCaixa.cdsPadrao.FieldByName('idGerencial').AsInteger := cdsPadraoidGerencial.AsInteger;
    FrmCadMovCaixa.idAdiantamento := cdsPadraoidAdiantamento.AsInteger;
    FrmCadMovCaixa.Show;
    FrmCadMovCaixa.DBEidCaixa.SetFocus;
  end
  else
    if cdsPadraotpFinanc.AsString = 'CN' then
    begin
      Application.CreateForm(TFrmCadMovConta, FrmCadMovConta);
      FrmCadMovConta.BtnNovo.Click;
      FrmCadMovConta.cdsPadrao.FieldByName('idCadGeral').AsInteger := cdsPadraoidCadGeral.AsInteger;
      FrmCadMovConta.cdsPadrao.FieldByName('vlMovConta').Value :=  cdsMovvlSaldoAdto.Value;
      FrmCadMovConta.cdsPadrao.FieldByName('descMovConta').AsString := cdsPadraodescAdiantamento.AsString;
      FrmCadMovConta.cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 14;
      FrmCadMovConta.AtualizaLookups;
//      FrmCadMovConta.cdsPadrao.FieldByName('idGerencial').AsInteger := cdsPadraoidGerencial.AsInteger;
      FrmCadMovConta.idAdiantamento := cdsPadraoidAdiantamento.AsInteger;
      FrmCadMovConta.Show;
      FrmCadMovConta.DBEidConta.SetFocus;
      if cdsPadraotpAdiantamento.AsString = 'C' then
      begin
        FrmCadMovConta.idMovFinanceira := 34;
      end
      else
      begin
        FrmCadMovConta.idMovFinanceira := 33;
      end;
    end
    else
      if cdsPadraotpFinanc.AsString = 'TI' then
      begin
        if cdsPadraotpAdiantamento.AsString = 'C' then
        begin
          Application.CreateForm(TFrmCadTituloRec, FrmCadTituloRec);
          FrmCadTituloRec.BtnNovo.Click;
          FrmCadTituloRec.cdsPadrao.FieldByName('idCliente').AsInteger := cdsPadraoidCadGeral.AsInteger;
          FrmCadTituloRec.cdsPadrao.FieldByName('idDocSerie').AsString := 'TRE';
          FrmCadTituloRec.cdsPadrao.FieldByName('nrTituloRec').AsString := cdsPadraoidAdiantamento.AsString;
          FrmCadTituloRec.cdsPadrao.FieldByName('vlTituloRec').Value :=  cdsMovvlSaldoAdto.Value;
          FrmCadTituloRec.cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 1;
//          FrmCadTituloRec.cdsPadrao.FieldByName('idGerencial').AsInteger := cdsPadraoidGerencial.AsInteger;
          FrmCadTituloRec.Show;
          FrmCadTituloRec.DBEdtEmissao.SetFocus;
          FrmCadTituloRec.idAdiantamento := cdsPadraoidAdiantamento.AsInteger;
          FrmCadTituloRec.idMovFinanceira := 34;
        end
        else
        begin
          Application.CreateForm(TFrmCadTituloPag, FrmCadTituloPag);
          FrmCadTituloPag.BtnNovo.Click;
          FrmCadTituloPag.cdsPadrao.FieldByName('idFornecedor').AsInteger := cdsPadraoidCadGeral.AsInteger;
          FrmCadTituloPag.cdsPadrao.FieldByName('idDocSerie').AsString := 'TPAG';
          FrmCadTituloPag.cdsPadrao.FieldByName('nrTituloPag').AsString := cdsPadraoidAdiantamento.AsString;
          FrmCadTituloPag.cdsPadrao.FieldByName('vlTituloPag').Value :=  cdsMovvlSaldoAdto.Value;
          FrmCadTituloPag.cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 2;
//          FrmCadTituloPag.cdsPadrao.FieldByName('idGerencial').AsInteger := cdsPadraoidGerencial.AsInteger;
          FrmCadTituloPag.Show;
          FrmCadTituloPag.DBEdtEmissao.SetFocus;
          FrmCadTituloPag.idAdiantamento := cdsPadraoidAdiantamento.AsInteger;
          FrmCadTituloPag.idMovFinanceira := 33;
        end;
      end;
  cdsPadraotpFinanc.AsString := '';
  BtnGerar.Enabled := False;
  PagAbas.ActivePageIndex := 0;
end;

procedure TFrmCadAdiantamento.BtnImpChqClick(Sender: TObject);
var
  arqRel, sql : string;
begin
  inherited;
  arqRel := dmPadrao.RetornaConfig('caminho_rel') + Format('RelCheque_%d.fr3', [cdsPadrao.FieldByName('idConta').AsInteger]);
  If Not(FileExists(arqRel)) Then
  Begin
    messagedlg('O arquivo de emissão do cheque ainda não foi configurado. Verifique!', mtwarning, [mbok], 0);
    exit;
  End;
  //
  Extenso.Valor := cdsPadrao.FieldByName('vlAdiantamento').AsCurrency;
  //
  Report.LoadFromFile(arqRel);
  //
  TfrxDMPMemoView(Report.FindComponent('lblExtenso')).Memo.Text   := StringReplace(TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text, '[extenso-monetario]', UpperCase(Extenso.Texto), [rfReplaceAll, rfIgnoreCase]);
//  TfrxDMPMemoView(Report.FindComponent('Line1')).Visible          := CKCruzado.Checked;
//  TfrxDMPMemoView(Report.FindComponent('Line2')).Visible          := CKCruzado.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Memo.Text   := Trim(LookCliente.Caption);
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Visible     := CKNominal.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Memo.Text := StringReplace(TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text, '[data]', FormatDateTime('dd/MM/yyyy', cdsPadrao.FieldByName('dtVencimento').AsDateTime), [rfReplaceAll, rfIgnoreCase]);
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Visible   := CKPredatado.Checked;
  //
  TfrxDMPMemoView(Report.FindComponent('lblLocal')).Memo.Text     := FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1').FieldByName('descCidade').asString;
  TfrxDMPMemoView(Report.FindComponent('lblDia')).Memo.Text       := funcao.StrZero(DayOf(Date()), 2);
  TfrxDMPMemoView(Report.FindComponent('lblMes')).Memo.Text       := funcao.CDoW(Date(), exdMes);
  TfrxDMPMemoView(Report.FindComponent('lblAno')).Memo.Text       := IntToStr(YearOf(Date()));
  //
  Report.ShowReport;

  //Marca a impressão do cheque -- feito via script para não causar problemas no dataset
  sql := 'UPDATE MovConta SET impresso = ' + QuotedStr('S') + ' WHERE idMovConta = ' + cdsMov.FieldByName('idMovConta').AsString;
  dmPadrao.dbConexao.ExecuteDirect(sql);
end;

procedure TFrmCadAdiantamento.btnImpReciboClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'Recibo.fr3');

  Extenso.Valor := cdsPadrao.FieldByName('vlAdiantamento').AsCurrency;
  //
  Report.Variables['idRecibo']            :=  IntToStr(idRecibo); // QuotedStr('REC/XXX000001');

  // apenas para não dar erros
  Report.Variables['vlDescAcres'] := cdsPadrao.FieldByName('vlAdiantamento').AsFloat;
  (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;

  Report.Variables['valor']               := QuotedStr(FormatFloat('#,##0.00', cdsPadrao.FieldByName('vlAdiantamento').AsCurrency));
  Report.Variables['extenso-monetario']   := QuotedStr(UpperCase(Extenso.Texto));

  Report.Variables['Referencia']          := QuotedStr(referencia);

  //
  with FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1') do
  begin
    //
    Report.Variables['Nome-Empresa']        := QuotedStr(FieldByName('descCadCliente').asString);
    Report.Variables['Cnpj-Cpf-Empresa']    := QuotedStr(FieldByName('idCnpjCpf').asString);
    Report.Variables['IE-RG-Empresa']       := QuotedStr(FieldByName('idInscEstadual').asString);
    Report.Variables['Endereco']            := QuotedStr(FieldByName('endereco').asString);
    Report.Variables['Cidade']              := QuotedStr(trim(FieldByName('descCidade').asString) + '-' + FieldByName('idEstado').asString);
    Report.Variables['Fone']                := QuotedStr(FieldByName('fone').asString);

    //Tratarei pelo sinal aqui para ver se está pagando ou recebendo
    if cdsPadrao.FieldByName('tpAdiantamento').AsString = 'C' then //significa q estou recebendo então o recibo sai no meu nome
    begin
      Report.Variables['Nome-Assinatura']     := QuotedStr(FieldByName('descCadCliente').asString); //Empresa
      Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(FieldByName('idCnpjCpf').asString);

      Report.Variables['Nome']                := QuotedStr(trim(LookCliente.Caption));
      Report.Variables['local-data']          := QuotedStr(trim(FieldByName('descCidade').asString) + '-' + FieldByName('idEstado').asString + ', ' + funcao.CDoW(cdsPadrao.FieldByName('dtAdiantamento').AsDateTime, exdDMA));
    end
    else //agora para quando estou pagando
    begin
      Report.Variables['Nome-Assinatura']     := QuotedStr(trim(LookCliente.Caption));
      Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(trim(LookCnpjCpfCliente.Caption));

      Report.Variables['Nome']                := QuotedStr(FieldByName('descCadCliente').asString);
      Report.Variables['local-data']          := QuotedStr(trim(FieldByName('descCidade').asString) + '-' + FieldByName('idEstado').asString + ', ' + funcao.CDoW(cdsPadrao.FieldByName('dtAdiantamento').AsDateTime, exdDMA));
    end;
  end;
  //
  Report.ShowReport;

  //
end;

procedure TFrmCadAdiantamento.cdsMovCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsMovfator.AsInteger > 0 then
    cdsMovsinal.AsString := '+'
  else
    cdsMovsinal.AsString := '-';
end;

procedure TFrmCadAdiantamento.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('tpAdiantamento').AsString := 'C';
    DataSet.FieldByName('stAdiantamento').AsString := 'ATIVO';
    VerLabels;
  end;
end;

procedure TFrmCadAdiantamento.cdsPadraoCalcFields(DataSet: TDataSet);
begin
  inherited;
  //rotina criada em razão da impressão do cheque
  cdsPadraovlMovConta.AsCurrency := cdsPadraovlAdiantamento.AsCurrency;
end;

constructor TFrmCadAdiantamento.create(Formulario: TComponent;
  Parametro: array of String);
var
  i : integer;
begin
  inherited create(formulario);
  id := '';

  idContratoVenda := '';
  idRomaneio := 0;

  if high(Parametro) >= 0  then
  begin
    if Parametro[0] = 'CONTRATO' then
    begin
      if Parametro[1] <> '' then
        idCliente := StrToInt(Parametro[1]);
      if Parametro[2] <> '' then
        idContratoVenda := Parametro[1];
    end
    else
      if Parametro[0] = 'ROMANEIO' then
      begin
        if Parametro[1] <> '' then
          idRomaneio := StrToInt(Parametro[1]);
      end
      else
        id := Parametro[0];
  end;
end;

procedure TFrmCadAdiantamento.DBRGtpAdiantamentoExit(Sender: TObject);
begin
  inherited;
  VerLabels;
  AtualizaLookups;
end;

procedure TFrmCadAdiantamento.DBRGtpFinancExit(Sender: TObject);
begin
  inherited;
  if cdsPadraotpFinanc.AsString <> '' then
    BtnGerar.Enabled := True
  else
    BtnGerar.Enabled := False;
end;

{procedure TFrmCadMovTransf.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
end;                           }

procedure TFrmCadAdiantamento.DBEidAdiantamentoExit(Sender: TObject);
var
  leitura : boolean;
  sql : string;
begin
  inherited;
  if (not (BuscaChave(tabelas[0], [DBEidAdiantamento]))) and (trim(DBEidAdiantamento.Text) <> '') then
  begin
    messagedlg('Adiantamento não existe!', mtwarning, [mbok], 0);
    DBEidAdiantamento.SetFocus;
    exit;
  end;

  AbreTabSecundaria;
  if (trim(DBEidAdiantamento.Text) <> '') then
  begin
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    if cdsPadrao.FieldByName('idEmpresa').AsInteger <> cdsEmpresaidEmpresa.AsInteger then
      cdsEmpresaidEmpresa.AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;

    if cdsPadrao.FieldByName('idCadEmpresa').AsInteger <> cdsEmpresaidCadEmpresa.AsInteger then
      cdsEmpresaidCadEmpresa.AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;

    cdsEmpresa.Post;
  end;
  leitura := cdsPadrao.State <> dsInsert;

  funcao.SomenteLeitura([DBEdtAdiantamento, DBEvlAdiantamento, DBMdescAdiantamento, DBRGtpAdiantamento,
                         DBEidCaixa, DBEidConta, DBEidCadGeral],leitura);

//  BtnSalvar.Visible := not leitura;

  VerLabels;

  if not leitura then
    HabilitaEdits;

  btnImpRecibo.Enabled := leitura;
  HabilitaImpCheque((leitura) and (trim(DBEidCheque.Text) <> ''));
  if DBEidAdiantamento.Text <> '' then
  begin
    sql := 'EXEC spVerStatusAdiantamento ' + DBEidAdiantamento.Text + ', ' + QuotedStr('OUT');
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
  if cdsMovvlSaldoAdto.Value > 0 then
    DBRGtpFinanc.Enabled := True
  else
    DBRGtpFinanc.Enabled := False;
  AtualizaLookups;
end;

procedure TFrmCadAdiantamento.DBEidAdiantamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadAdiantamento.DBEidCaixaExit(Sender: TObject);
begin
  inherited;
  HabilitaEdits;
end;

procedure TFrmCadAdiantamento.dspPadraoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  DeltaDS.FieldByName('idEmpresa').NewValue := cdsEmpresa.FieldByName('idEmpresa').Value;
  DeltaDS.FieldByName('idCadEmpresa').NewValue := cdsEmpresa.FieldByName('idCadEmpresa').Value;  
end;

procedure TFrmCadAdiantamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadAdiantamento := nil;
end;

procedure TFrmCadAdiantamento.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsMov;
  chave[0] := DBEidAdiantamento;
  foco := DBEidAdiantamento;
  tab_chave := 'Adiantamento';
  Height := 500;
  Width := 615;
end;

procedure TFrmCadAdiantamento.FormShow(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdtAdiantamento, DBEvlAdiantamento, DBMdescAdiantamento, DBRGtpAdiantamento,
                         DBEidCaixa, DBEidConta, DBEidCadGeral],false);
  funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento], true);
  HabilitaImpCheque(false);

  if trim(id) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idAdiantamento').AsString := id;
    DBEidAdiantamentoExit(DBEidAdiantamento);
  end;

  if idContratoVenda <> '' then
  begin
    actNovo.Execute;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    DBEidAdiantamentoExit(DBEidAdiantamento);
    DBEidCaixa.SetFocus;
    cdsPadraoidEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPadraoidCadEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadraodtAdiantamento.AsDateTime := frmCadContratoVenda.cdsPadrao.FieldByName('dtEmissao').AsDateTime;
    cdsPadraotpAdiantamento.AsString := 'C';
    cdsPadraoidCadGeral.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCliente').AsInteger;
    cdsPadraovlAdiantamento.AsCurrency := frmCadContratoVenda.cdsPadrao.FieldByName('vlContratoVenda').AsCurrency;
    cdsPadraodescAdiantamento.AsString := 'Referente a Contrato de Venda nr.: ' + idContratoVenda;
  end
  else
    if idRomaneio > 0 then
    begin
      actNovo.Execute;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;

      cdsEmpresaidEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      DBEidAdiantamentoExit(DBEidAdiantamento);
      DBEidCaixa.SetFocus;
      cdsPadraoidEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadraoidCadEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadraodtAdiantamento.AsDateTime := frmCadRomaneio.cdsPadrao.FieldByName('dtRomaneio').AsDateTime;
      cdsPadraotpAdiantamento.AsString := 'C';
      cdsPadraoidCadGeral.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCliente').AsInteger;
      cdsPadraovlAdiantamento.AsCurrency := frmCadRomaneio.EDvlFinanc.Value;
      cdsPadraodescAdiantamento.AsString := 'Referente a Romaneio nr.: ' + IntToStr(idRomaneio);
    end;

end;

procedure TFrmCadAdiantamento.HabilitaEdits;
var
  sql : string;
begin
  funcao.SomenteLeitura([DBEidConta], trim(DBEidCaixa.Text) <> '');
  funcao.SomenteLeitura([DBEidCaixa], trim(DBEidConta.Text) <> '');
  funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento], not ((trim(DBEidConta.Text) <> '') and
                                                        (cdsPadrao.FieldByName('tpAdiantamento').AsString = 'F')));
  if cdsPadrao.FieldByName('tpAdiantamento').AsString = 'F' then
  begin
    if cdsPadrao.FieldByName('idConta').AsInteger > 0 then
    begin
      sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsPadrao.FieldByName('idConta').AsString;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if Trim(FieldByName('geradoSeq').AsString) = 'S' then
        begin
          funcao.SomenteLeitura([DBEdtVencimento], False);
          funcao.SomenteLeitura([DBEidCheque], True);
          sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsPadrao.FieldByName('idConta').AsString;
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          begin
            cdsPadrao.FieldByName('idCheque').AsInteger := FieldByName('ultidCheque').AsInteger+1;
          end;
        end
        else
        begin
          funcao.SomenteLeitura([DBEidCheque], False);
        end;
      end;
    end;
  end;
end;

procedure TFrmCadAdiantamento.HabilitaImpCheque(op: boolean);
begin
  BtnImpChq.Enabled := op;
  BtnCopiaCheque.Enabled := op;
  CKNominal.Checked := op;
  CKCruzado.Checked := op;
  CKPreDatado.Checked := op;
  CKNominal.Enabled := op;
  CKCruzado.Enabled := op;
  CKPreDatado.Enabled := op;
end;

procedure TFrmCadAdiantamento.PagAbasChange(Sender: TObject);
begin
  inherited;
  case PagAbas.ActivePageIndex of
    0 : Width := 615;
    1 : Width := 800;
  end;
end;

procedure TFrmCadAdiantamento.VerLabels;
begin
  if cdsPadrao.FieldByName('tpAdiantamento').AsString = 'C' then
  begin
    lblCliFor.Caption := 'Cliente';
    grpContas.Caption := 'Adiantamento de Cliente - Lançamento a Crédito';
  end
  else
  begin
    lblCliFor.Caption := 'Fornecedor';
    grpContas.Caption := 'Adiantamento para Fornecedor - Lançamento a Débito';
  end;
end;

end.
