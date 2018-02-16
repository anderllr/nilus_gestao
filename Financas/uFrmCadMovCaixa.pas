unit uFrmCadMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, CFind, ActnList, ImgList, DB, Provider,
  DBClient, StdCtrls, EditAlign, CEdit, ExtCtrls, CLookUp, Buttons, CBitBtn,
  ComCtrls, CPageControl, CStatusBar, CLabel, Mask, DBCtrls, CDBEdit, CDBMemo,
  FMTBcd, SqlExpr, CPanelGradient, CGroupBox, Grids, DBGrids, CDBGrid,
  CRadioButton, Math, CDBCheckBox, DBXCommon, uFrmCadPadraoEmpCont, ACBrBase,
  ACBrExtenso, frxClass, System.Actions;

type
  TFrmCadMovCaixa = class(TFrmCadPadraoEmpFiscal)
    Bevel6: TBevel;
    CLabel60: TCLabel;
    DBEidMovCaixa: TCDBEdit;
    sdsTituloRec: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel6: TCLabel;
    DBEdtMovCaixa: TCDBEdit;
    CLabel7: TCLabel;
    DBEvlMovCaixa: TCDBEdit;
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
    DBMdescMovCaixa: TCDBMemo;
    CLabel20: TCLabel;
    FindCliente: TCFind;
    FindCaixa: TCFind;
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
    sdsMovCaixaCons: TSQLDataSet;
    dspMovCaixaCons: TDataSetProvider;
    cdsMovCaixaCons: TClientDataSet;
    dsMovCaixaCons: TDataSource;
    TabRateio: TTabSheet;
    sdsMovCaixaRateio: TSQLDataSet;
    dspMovCaixaRateio: TDataSetProvider;
    cdsMovCaixaRateio: TClientDataSet;
    dsMovCaixaRateio: TDataSource;
    cdsResultado: TClientDataSet;
    CGroupBox14: TCGroupBox;
    CLabel5: TCLabel;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    CLabel8: TCLabel;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CBitBtn1: TCBitBtn;
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
    cdsMovCaixaRateioidEmpresa: TIntegerField;
    cdsMovCaixaRateioidResultado: TIntegerField;
    cdsMovCaixaRateioidGerencial: TIntegerField;
    TabConsulta: TTabSheet;
    cdsCons: TClientDataSet;
    dsCons: TDataSource;
    cdsConsdtMovCaixaIni: TDateTimeField;
    cdsConsdtMovCaixaFim: TDateTimeField;
    Bevel4: TBevel;
    DBGridCons: TCDBGrid;
    CLabel17: TCLabel;
    DBEdtMovCaixaIni: TCDBEdit;
    CLabel18: TCLabel;
    DBEdtMovCaixaFim: TCDBEdit;
    CBitBtn8: TCBitBtn;
    CLabel4: TCLabel;
    EDvlEntradasC: TCEdit;
    CLabel14: TCLabel;
    EDvlSaidasC: TCEdit;
    CLabel15: TCLabel;
    EDvlSaldoC: TCEdit;
    cdsMovCaixaConsdescGerencial: TStringField;
    cdsMovCaixaConsidMovFinanceira: TIntegerField;
    cdsMovCaixaConsdescMovCaixa: TStringField;
    cdsMovCaixaConsdtMovCaixa: TSQLTimeStampField;
    cdsMovCaixaConsvlMovCaixa: TFMTBCDField;
    cdsMovCaixaRateiodescResultado: TStringField;
    cdsMovCaixaRateioidMovCaixa: TIntegerField;
    cdsMovCaixaConsidMovCaixa: TIntegerField;
    LookResultado: TCLookUp;
    LookResultadoR: TCLookUp;
    LookGerencialP: TCLookUp;
    LookGerencialR: TCLookUp;
    FindGerencialP: TCFind;
    FindGerencialR: TCFind;
    FindResultado: TCFind;
    LookGerencialRP: TCLookUp;
    LookGerencialRR: TCLookUp;
    cdsMovCaixaRateioprRateio: TFMTBCDField;
    cdsMovCaixaRateiovlRateio: TFMTBCDField;
    cdsMovCaixaRateioidCadEmpresa: TSmallintField;
    EDtpMov: TCEdit;
    cdsMovCaixaConsidCaixa: TIntegerField;
    cdsMovCaixaConsidEmpresa: TIntegerField;
    cdsMovCaixaConsidCadEmpresa: TSmallintField;
    cdsMovCaixaConstpMov: TStringField;
    CGroupBox4: TCGroupBox;
    btnImpRecibo: TCBitBtn;
    Report: TfrxReport;
    Extenso: TACBrExtenso;
    LookCnpjCpfCliente: TCLookUp;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsConsconsolidaemp: TStringField;
    cdsConsconsolidafilial: TStringField;
    cdsMovCaixaConsidCadGeral: TIntegerField;
    cdsMovCaixaConsidSafra: TIntegerField;
    cdsMovCaixaConsfator: TSmallintField;
    cdsMovCaixaConsidGerencial: TIntegerField;
    cdsRecibo: TClientDataSet;
    dspRecibo: TDataSetProvider;
    sdsRecibo: TSQLDataSet;
    cdsMovCaixaConsidRateio: TSmallintField;
    procedure actExcluirExecute(Sender: TObject);
    procedure DBEidMovFinanceiraExit(Sender: TObject);
    procedure DBEidGerencialEnter(Sender: TObject);
    procedure DBEidRateioEnter(Sender: TObject);
    procedure DBEidResultadoEnter(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure cdsMovCaixaRateioAfterEdit(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure DBGridConsDblClick(Sender: TObject);
    procedure dspMovCaixaRateioBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBEprRateioExit(Sender: TObject);
    procedure DBEprRateioEnter(Sender: TObject);
    procedure dsConsDataChange(Sender: TObject; Field: TField);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidMovCaixaExit(Sender: TObject);
    procedure DBEidCaixaExit(Sender: TObject);
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure cdsMovCaixaRateioAfterInsert(DataSet: TDataSet);
    procedure dsMovCaixaRateioStateChange(Sender: TObject);
    procedure BtnSalvarRatClick(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEvlMovCaixaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEvlMovCaixaExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure SomaRateio;
    procedure HabilitaRatRes;
    procedure GeraRateio;
    procedure GeraSaldoCaixa(t : byte);
    procedure IniciaMoeda;
    procedure IniciaConsulta;
    function SelRegistro: Boolean;
    procedure AtualizaLookups;
    constructor create (Formulario: TComponent; Parametro: array of String);
    procedure DBEidMovFinanceiraEnter(Sender: TObject);
    procedure btnImpReciboClick(Sender: TObject);
    procedure HabilitaCampos;
    procedure cdsConsAfterInsert(DataSet: TDataSet);
    procedure BtnPesquisarClick(Sender: TObject);
    function BuscaRegistro(id : integer): Boolean;
    procedure VerificaNfE;
  private
    { Private declarations }
    vlTotalRateio : Currency;
    vlAnterior, id, idContratoVenda, sqlCons, idComissao : string;
    idRomaneio, idContratoFrete, idRecibo, tipo  : integer;
  public
    { Public declarations }
    idAdiantamento, idMovFinanceira : Integer;
  end;

var
  FrmCadMovCaixa: TFrmCadMovCaixa;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPesTituloRec,
  uFrmCadContratoVenda, uFrmCadRomaneio, uFrmPesMovCaixa, uFrmManutencaoFrete,
  uFrmComissaoContrato, uFrmCadAdiantamento;

{$R *.dfm}

procedure TFrmCadMovCaixa.actExcluirExecute(Sender: TObject);
Var
  sql : string;
begin
  cdsLookUp.Active := false;
  if (trim(DBEidMovCaixa.Text) <> '') then
  begin
     sql := 'SELECT 0 FROM MovCaixaTit WHERE idMovCaixa = ' + DBEidMovCaixa.Text +
            '   AND (idTituloPagMov IS NOT NULL OR idTituloRecMov IS NOT NULL) ';

     sql := sql + ' UNION ALL ';
     sql := sql + 'SELECT 0 AS registro FROM AdiantamentoMov WHERE idMovCaixa = ' + DBEidMovCaixa.Text +
                  ' AND idMovCaixa IS NOT NULL';

     cdsLookUp.CommandText := sql;
     cdsLookUp.Active := true;
     if not cdsLookUp.IsEmpty then
     begin
        messagedlg('Esta movimentação esta relacionada a um titulo !', mtInformation, [mbOk], 0);
        exit;
     end;
    if EDtpMov.Text = 'AVU' then
    begin
      //como correu tudo ok grava a tabela de movimentações gerais
      sql := 'EXEC spGeraMovGeral ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
              DBEidMovCaixa.Text + ', ' + QuotedStr('MCX') + ', ' + QuotedStr('E');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;

    sql := 'DELETE FROM ContratoVendaFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idMovCaixa = ' + DBEidMovCaixa.Text;
    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);
    sql := 'DELETE FROM ContratoVendaComFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idMovCaixa = ' + DBEidMovCaixa.Text;
    if trim(sql) <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
  inherited;
end;

procedure TFrmCadMovCaixa.actNovoExecute(Sender: TObject);
var
  idConta : string;
begin
  idConta := DBEidCaixa.Text;
  inherited;
  EDtpMov.Text := 'AVU';
  if trim(idConta) <> '' then
  begin
    DBEidCaixa.Text := idConta;
    DBEdtMovCaixa.SetFocus;
  end;
  EDtpMov.Text := 'AVU';  
end;

procedure TFrmCadMovCaixa.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  if Trim(DBEidCaixa.Text) = '' then
    exit;
  with cdsMovCaixaCons do
  begin
    Active := false;
    CommandText := sqlCons + ' AND idCaixa = ' + DBEidCaixa.Text;
    if cdsConsconsolidaemp.AsString = 'N' then
      CommandText := CommandText + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if (cdsConsconsolidafilial.AsString = 'N') and (cdsConsconsolidaemp.AsString = 'S') then
      CommandText := CommandText + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;

    if trim(cdsCons.FieldByName('dtMovCaixaIni').AsString) <> '' then
      CommandText := CommandText + ' AND dtMovCaixa >= ' + funcao.ConverteData(cdsCons.FieldByName('dtMovCaixaIni').AsDateTime);
    if trim(cdsCons.FieldByName('dtMovCaixaFim').AsString) <> '' then
      CommandText := CommandText + ' AND dtMovCaixa <= ' + funcao.ConverteData(cdsCons.FieldByName('dtMovCaixaFim').AsDateTime);
    Active := true;
    GeraSaldoCaixa(1);
    if trim(IndexFieldNames) = '' then
    begin
      IndexFieldNames := 'dtMovCaixa';
      DBGridCons.Columns[2].Title.Font.Style := DBGridCons.Columns[2].Title.Font.Style + [fsBold];
    end;
  end;
end;

procedure TFrmCadMovCaixa.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  erro : byte;
  idContratoFreteFinanc, idAdiantamentoMov : Integer;
  sql, sqlContrato : string;
begin
  //********************************************************************************//
  // Inicia o controle de transação
  erro := 0;
  //marca a transação

  screen.Cursor := crSQLWait;
  dmPadrao.dbConexao.CloseDataSets;
  if not dmPadrao.dbConexao.InTransaction then
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if trim(lookSinal.Caption) = '+' then
      cdsPadrao.FieldByName('fator').AsInteger := 1;
    if trim(lookSinal.Caption) = '-' then
      cdsPadrao.FieldByName('fator').AsInteger := -1;

    if (cdsPadrao.State in [dsInsert]) and (cdsMovCaixaRateio.IsEmpty) then
    begin
      AtualizaLookups;    
      GeraRateio;
      SomaRateio;      
    end;

    if vlTotalRateio <> cdsPadrao.FieldByName('vlMovCaixa').AsCurrency then
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
              DBEidMovCaixa.Text + ', ' + QuotedStr('MCX') + ', ' + QuotedStr('I');
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;

    dmPadrao.dbConexao.CommitFreeAndNil(t);

    if idContratoVenda <> '' then
    begin
      sqlContrato := 'INSERT INTO ContratoVendaFinanc (idEmpresa, idCadEmpresa, idCliente, idContratoVenda, idMovCaixa) ' +
                     ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + DBEidCadGeral.Text + ', ' + QuotedStr(idContratoVenda) +
                     ', ' + DBEidMovCaixa.Text +')';
      dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
    end
    else
      if idRomaneio > 0 then
      begin
        sqlContrato := 'INSERT INTO RomaneioFinanc (idEmpresa, idCadEmpresa, idRomaneio, idMovCaixa) ' +
                       ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + IntToStr(idRomaneio) +
                       ', ' + DBEidMovCaixa.Text +')';
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
          sqlContrato := 'INSERT INTO ContratoFreteFinanc (idEmpresa, idCadEmpresa, idContratoFrete, idContratoFreteFinanc, idMovCaixa) ' +
                         ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + IntToStr(idContratoFrete) +
                         ', ' + IntToStr(idContratoFreteFinanc) + ', ' + DBEidMovCaixa.Text + ')';
          dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
          FrmManutencaoFrete.GeraFinRomaneio('CXA', DBEidMovCaixa.Text);
        end;
       //Busca numeração do recibo
    //Verifica primeiro se o fornecedor está lançado para ai sim gerar recibo
    if trim(DBEidCadGeral.Text) <> '' then
    begin
       idRecibo := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idRecibo) id FROM Recibo WHERE tipo = ' + IntToStr(tipo)).FieldByName('id').AsInteger + 1;
      if idRecibo > 0 then
      begin
        if not(cdsRecibo.Active) then
          cdsRecibo.Open;
        cdsRecibo.Append;
        cdsRecibo.FieldByName('idEmpresa').AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
        cdsRecibo.FieldByName('idCadEmpresa').AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
        cdsRecibo.FieldByName('idRecibo').AsInteger := idRecibo;
        cdsRecibo.FieldByName('idMovCaixa').AsInteger := cdsPadrao.FieldByName('idMovCaixa').AsInteger;
        cdsRecibo.FieldByName('idMovConta').AsInteger := 0;
        cdsRecibo.FieldByName('tipo').AsInteger := tipo;
        cdsRecibo.FieldByName('vlRecibo').AsFloat := cdsPadrao.FieldByName('vlMovCaixa').AsFloat;
        cdsRecibo.FieldByName('dtRecibo').AsDateTime := cdsPadrao.FieldByName('dtMovCaixa').AsDateTime;
        cdsRecibo.FieldByName('referencia').AsString := DBMdescMovCaixa.Text;
        cdsRecibo.FieldByName('idCadGeral').AsInteger := cdsPadrao.FieldByName('idCadGeral').AsInteger;
        cdsRecibo.FieldByName('vlDescAcres').AsFloat := 0;
        cdsRecibo.Post;
        cdsRecibo.ApplyUpdates(0);
      end;
    end; //fim do if trim(DBEidCadGeral.Text) <> '' then
    if idAdiantamento > 0 then
    begin
      idAdiantamentoMov := Frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idAdiantamentoMov) idAdiantamentoMov FROM AdiantamentoMov WHERE idAdiantamento = ' + IntToStr(idAdiantamento)).FieldByName('idAdiantamentoMov').AsInteger+1;
      sql := 'INSERT INTO AdiantamentoMov (idAdiantamento, idAdiantamentoMov, dtAdiantamentoMov, ' +
             ' idMovFinanceira, vlAdiantamentoMov, fator, descAdiantamentoMov, idMovConta ' +
             ' ) VALUES (' + IntToStr(idAdiantamento) + ', ' + IntToStr(idAdiantamentoMov) + ', ' +
              QuotedStr(DateToStr(date)) + ', ' + IntToStr(idMovFinanceira) + ', ' + QuotedStr(cdsPadrao.fieldbyName('vlMovCaixa').AsString) + ', ' +
              '-1' + ', ' + QuotedStr('SALDO RESTANTE DE ADIANTAMENTO CONVERTIDO NA MOV. CAIXA ' + cdsPadrao.FieldByname('idMovCaixa').AsString) + ', ' + cdsPadrao.FieldByName('idMovCaixa').AsString + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
      sql := 'EXEC spVerStatusAdiantamento ' + IntToStr(idAdiantamento) + ', ' + QuotedStr('OUT');
      dmPadrao.dbConexao.ExecuteDirect(sql);
      FrmCadAdiantamento.DBEidAdiantamento.SetFocus;
    end;
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);

  GeraSaldoCaixa(0);
  HabilitaCampos;

  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ConfigFinanc WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString) do
  begin
    if FieldByName('impRecibo').AsString = 'S' then
    begin
      If (MessageDlg('Deseja Imprimir o Recibo?', mtconfirmation, [mbyes, mbno], 0) = mrYes) Then
        btnImpRecibo.Click;
    end;
  end;
end;

procedure TFrmCadMovCaixa.AtualizaLookups;
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

procedure TFrmCadMovCaixa.btnImpReciboClick(Sender: TObject);
Var
  slSQL: TStringList;
  sql : string;
begin
  inherited;
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

procedure TFrmCadMovCaixa.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesMovCaixa, FrmPesMovCaixa);
  FrmPesMovCaixa.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesMovCaixa.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesMovCaixa.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesMovCaixa.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      FieldByName('idMovCaixa').Value := FrmPesMovCaixa.cdsGrid.FieldByName('idMovCaixa').Value;
      DBEidMovCaixa.SetFocus;
      DBEidMovCaixaExit(DBEidMovCaixa);
      if BuscaRegistro(FieldByName('idMovCaixa').AsInteger) then
      begin
        AtualizaLookups;
        HabilitaCampos;
      end;
      DBEdtMovCaixa.SetFocus;
    end;
  end;
end;

procedure TFrmCadMovCaixa.BtnSalvarRatClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsMovCaixaRateio, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRat') and ((Sender as TBitBtn).Name <> 'BtnCancelarRat') then
    SomaRateio; //rateio
  DBEidResultadoR.SetFocus;
end;

function TFrmCadMovCaixa.BuscaRegistro(id: integer): Boolean;
var
  sql : String;
begin
  Result := false;
  if (cdsPadrao.IsEmpty) or (not cdsPadrao.Active) then
    exit;

  sql := 'SELECT tpMov FROM vMovCaixaCons WHERE  idCaixa = ' + DBEidCaixa.Text +
         ' AND idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
         ' AND idMovCaixa = ' + IntToStr(id);

  EDtpMov.Text := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('tpMov').AsString;

  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('idMovCaixa').AsInteger := id;

  DBEidMovCaixaExit(DBEidMovCaixa);
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

procedure TFrmCadMovCaixa.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    cdsPadrao.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;    
    cdsPadrao.FieldByName('dtMovCaixa').AsDateTime := date;
    HabilitaCampos;
  end;
  IniciaConsulta;
end;

procedure TFrmCadMovCaixa.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AtualizaLookups;
end;

procedure TFrmCadMovCaixa.cdsConsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsConsconsolidaemp.AsString := 'S';
  cdsConsconsolidafilial.AsString := 'S';
end;

procedure TFrmCadMovCaixa.cdsMovCaixaRateioAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMovCaixa.cdsMovCaixaRateioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;  
//  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value ;
end;

constructor TFrmCadMovCaixa.create(Formulario: TComponent; Parametro: array of String);
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

procedure TFrmCadMovCaixa.DBEidCaixaExit(Sender: TObject);
begin
  inherited;
  GeraSaldoCaixa(0);
{  caso surja a idéia de trazer dados automaticamente ai está o código de exemplo
   if trim(DBEidCliente.Text) = '' then
    exit;
  //Valores de Inicialização
  if cdsPadrao.State in [dsInsert] then
    with ExecutaSQLRet([DBEidEmpresa, DBEidCliente], 'spRetDadosTitulo', '') do
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
      if (FieldByName('idResultado').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idResultado').AsString) = '') then
        cdsPadrao.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
      if (FieldByName('idRateio').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idRateio').AsString) = '') then
        cdsPadrao.FieldByName('idRateio').AsInteger := FieldByName('idRateio').AsInteger;
      if (FieldByName('idGerencial').AsInteger > 0) and (trim(cdsPadrao.FieldByName('idGerencial').AsString) = '') then
        cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
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
      DBEtpDocumento.SetFocus;
    end;
  HabilitaRatRes;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');
  }
end;

procedure TFrmCadMovCaixa.DBEidGerencialEnter(Sender: TObject);
begin
  inherited;
  if idContratoFrete > 0 then
  begin
    DBEidMovFinanceiraEnter(DBEidMovFinanceira);
    DBEidMovFinanceiraExit(DBEidMovFinanceira);
  end
  else
    vlAnterior := DBEidGerencial.Text;
end;

procedure TFrmCadMovCaixa.DBEidMovCaixaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(Tabelas[0], chave);
  AbreTabSecundaria;
  SomaRateio;
  GeraSaldoCaixa(0);
  HabilitaRatRes;
  if cdsPadrao.FieldByName('idMovCaixa').AsInteger > 0 then
    VerificaNfE;
end;

procedure TFrmCadMovCaixa.DBEidMovFinanceiraEnter(Sender: TObject);
begin
  inherited;
  if idContratoFrete > 0 then
    vlAnterior := vlAnterior
  else
    vlAnterior := DBEidMovFinanceira.Text;
end;

procedure TFrmCadMovCaixa.DBEidMovFinanceiraExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidMovFinanceira.Text) <> vlAnterior then
  begin
    //primeiro irá fazer validação para ver se a movimentação é mesmo bancária
    if not (frmPrincipal.ExecutaSQLRet([DBEidMovFinanceira], '', 'MovFinanceira').FieldByName('idTpMovFinanceira').AsInteger in [6]) then
    begin
      messagedlg('Mov. Financeira inválida! Consulte atravéz do F4', mtwarning, [mbok], 0);
      cdsPadrao.FieldByName('idMovFinanceira').Clear;
      DBEidMovFinanceira.SetFocus;
      exit;
    end;

    AtualizaLookups;
  end;
end;

procedure TFrmCadMovCaixa.DBEidRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidRateio.Text;
end;

procedure TFrmCadMovCaixa.DBEidResultadoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidResultado.Text;
end;

procedure TFrmCadMovCaixa.DBEidResultadoExit(Sender: TObject);
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
    if not cdsMovCaixaRateio.IsEmpty then
      if messagedlg('O Rateio deverá ser recalculado para os novos valores! ' + #13 +
                    ' Deseja recalcular?', mtwarning, [mbyes, mbno], 0) = mryes then
        GeraRateio;
end;

procedure TFrmCadMovCaixa.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsMovCaixaRateio, [DBEidResultadoR]);
end;

procedure TFrmCadMovCaixa.DBEprRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadMovCaixa.DBEprRateioExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCDBEdit).Text then
  begin
    //Campos do rateio no valor do movimento
    if (Sender as TCDBEdit).Name = 'DBEprRateio' then
      cdsMovCaixaRateio.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsPadrao.FieldByName('vlMovCaixa').Value *
                               cdsMovCaixaRateio.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateio' then
      cdsMovCaixaRateio.FieldByName('prRateio').Value :=
         RoundTo(((cdsMovCaixaRateio.FieldByName('vlRateio').Value /
                   cdsPadrao.FieldByName('vlMovCaixa').Value) * 100), -3);
  end;
end;

procedure TFrmCadMovCaixa.DBEvlMovCaixaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString; 
end;

procedure TFrmCadMovCaixa.DBEvlMovCaixaExit(Sender: TObject);
begin
  inherited;
  //rotina que alguns campos utilizarão onde se houver mudanças deverá ser obrigatóriamente feito o recalculo das parcelas
  //não deu certo usar o oldvalue, pois enquanto o campo não for salvo ele mantém o valor antigo... ai fica passando e voltando
//  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).OldValue <> cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).Value then
  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString <> vlAnterior then
    if not cdsMovCaixaRateio.IsEmpty then
      GeraRateio;
end;

procedure TFrmCadMovCaixa.DBGridConsDblClick(Sender: TObject);
begin
  inherited;
  if SelRegistro then
  begin
    PagAbas.ActivePageIndex := 0;
    HabilitaCampos;
  end;
end;

procedure TFrmCadMovCaixa.dspMovCaixaRateioBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadMovCaixa.dsConsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (not cdsMovCaixaCons.IsEmpty) and (cdsMovCaixaCons.Active) then  
    IniciaConsulta;
  EDvlEntradasC.Value := 0;
  EDvlSaidasC.Value := 0;
  EDvlSaldoC.Value := 0;
end;

procedure TFrmCadMovCaixa.dsMovCaixaRateioStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;

procedure TFrmCadMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadMovCaixa := nil;
end;

procedure TFrmCadMovCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsMovCaixaRateio;
  chave[0] := DBEidMovCaixa;
  foco := DBEidCaixa;
  tab_chave := 'MovCaixa';
  Width := 620;
  Height := 460;
end;

procedure TFrmCadMovCaixa.FormShow(Sender: TObject);

begin
  cdsCons.CreateDataSet;
  cdsCons.Append;
  cdsMovCaixaCons.Active := false;
  inherited;
//  cdsCons.CreateDataSet;
  sqlCons := cdsMovCaixaCons.CommandText;
  IniciaMoeda;  
  IniciaConsulta;
  if trim(id) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idMovCaixa').AsString := id;
    DBEidMovCaixaExit(DBEidMovCaixa);
  end;
  EDtpMov.Text := 'AVU';

  if idContratoVenda <> '' then
  begin
    actNovo.Execute;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    DBEidMovCaixaExit(DBEidMovCaixa);
    DBEidCaixa.SetFocus;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('dtMovCaixa').AsDateTime := frmCadContratoVenda.cdsPadrao.FieldByName('dtEmissao').AsDateTime;
    cdsPadrao.FieldByName('idCadGeral').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idCliente').AsInteger;
    cdsPadrao.FieldByName('idSafra').AsInteger := frmCadContratoVenda.cdsPadrao.FieldByName('idSafra').AsInteger;
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 3;
    vlAnterior := '';
    DBEidMovFinanceiraExit(DBEidMovFinanceira);
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT idGerencial FROM ProdGerencial WHERE idProduto = ' +
                                            frmCadContratoVenda.cdsPadrao.FieldByName('idProduto').AsString +
                                            ' AND idEmpresa = ' + DBEidEmpresa.Text) do
    begin
      if RecordCount > 0 then
        cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
    end;
    cdsPadrao.FieldByName('vlMovCaixa').AsCurrency := frmCadContratoVenda.cdsPadrao.FieldByName('vlContratoVenda').AsCurrency;
    cdsPadrao.FieldByName('descMovCaixa').AsString := 'Referente a Contrato de Venda nr.: ' + idContratoVenda;

  end
  else
    if idRomaneio > 0 then
    begin
      actNovo.Execute;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;

      cdsEmpresaidEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      DBEidMovCaixaExit(DBEidMovCaixa);
      DBEidCaixa.SetFocus;
      cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadrao.FieldByName('dtMovCaixa').AsDateTime := frmCadRomaneio.cdsPadrao.FieldByName('dtRomaneio').AsDateTime;
      cdsPadrao.FieldByName('idCadGeral').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCliente').AsInteger;
      cdsPadrao.FieldByName('idSafra').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idSafra').AsInteger;
      cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 3;
      vlAnterior := '';
      DBEidMovFinanceiraExit(DBEidMovFinanceira);
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT idGerencial FROM ProdGerencial WHERE idProduto = ' +
                                              frmCadRomaneio.cdsPadrao.FieldByName('idProduto').AsString +
                                              ' AND idEmpresa = ' + DBEidEmpresa.Text) do
      begin
        if RecordCount > 0 then
          cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
      end;
      cdsPadrao.FieldByName('vlMovCaixa').AsCurrency := frmCadRomaneio.EDvlFinanc.Value;
      cdsPadrao.FieldByName('descMovCaixa').AsString := 'Referente a Romaneio nr.: ' + IntToStr(idRomaneio);
    end
    else
    if idContratoFrete > 0 then
    begin
      actNovo.Execute;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;

      cdsEmpresaidEmpresa.AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      DBEidMovCaixaExit(DBEidMovCaixa);
  //        DBEidBanco.SetFocus;
      cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadrao.FieldByName('dtMovCaixa').AsDateTime := FrmManutencaoFrete.cdsGrid.FieldByName('dtEmissao').AsDateTime;
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
      cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 4;
      funcao.SomenteLeitura([DBEidMovFinanceira], True);
      cdsPadrao.FieldByName('vlMovCaixa').AsCurrency := FrmManutencaoFrete.EdSaldoFinal.Value;
      cdsPadrao.FieldByName('descMovCaixa').AsString := 'Referente a Contrato de Frete nr.: ' + IntToStr(idContratoFrete);
    end;

end;

procedure TFrmCadMovCaixa.GeraRateio;
var
  idResMaior : integer;
  vlRateioMaior, vlDiferenca : currency;
begin
  idResMaior := 0;
  with cdsMovCaixaRateio do
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
      if trim(DBEidMovCaixa.Text) <> '' then
        FieldByName('idMovCaixa').AsString := DBEidMovCaixa.Text
      else
        FieldByName('idMovCaixa').Value := 0;
      FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
      FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
      FieldByName('vlRateio').Value := cdsPadrao.FieldByName('vlMovCaixa').Value;;
      FieldByName('prRateio').Value := '100';
      Post;
    end
    else
    begin  //início da geração do rateio / via plano de rateio
      if trim(DBEidRateio.Text) = '' then
      begin
        messagedlg('O centro de resultado ou o rateio devem ser informados!', mtwarning, [mbok], 0);
        cdsMovCaixaRateio.EmptyDataSet;
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
          cdsMovCaixaRateio.Append;
          if trim(DBEidMovCaixa.Text) <> '' then
            cdsMovCaixaRateio.FieldByName('idMovCaixa').AsString := DBEidMovCaixa.Text
          else
            cdsMovCaixaRateio.FieldByName('idMovCaixa').Value := 0;
            cdsMovCaixaRateio.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
            cdsMovCaixaRateio.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
            cdsMovCaixaRateio.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
            cdsMovCaixaRateio.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsPadrao.FieldByName('vlMovCaixa').Value *
                                                               FieldByName('prRateio').Value)/100);
          //para registrar quem tem o maior valor
          if vlRateioMaior < cdsMovCaixaRateio.FieldByName('vlRateio').Value then
            idResMaior := cdsMovCaixaRateio.FieldByName('idResultado').Value;
          cdsMovCaixaRateio.Post;
          Next;
        end; //fim do laço do rateio
      end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
    end; //fim do else   begin  //início da geração do rateio / via plano de rateio
    SomaRateio;
    //inicia processo para ajuste de valor caso haja diferença joga para o maior
    if (vlTotalRateio <>  cdsPadrao.FieldByName('vlMovCaixa').Value) then
    begin
      vlDiferenca := cdsPadrao.FieldByName('vlMovCaixa').Value - vlTotalRateio;
      IndexFieldNames := 'idResultado';
      FindKey([idResMaior]);
      Edit;
      FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
      Post;
    end;
  end; // fim do with cdsMovCaixaRateio do
  cdsMovCaixaRateio.First;
end;

procedure TFrmCadMovCaixa.GeraSaldoCaixa(t : byte);
//t = 0 : Tela de cadastro
//    1 : tela de consulta
begin
  if t = 0 then
  begin
    //Gera o Saldo Inicial de Caixa ou seja sem data
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidCaixa, nil, nil], 'spRetSaldoCaixa', '') do
    begin
      EDvlEntradas.Value := FieldByName('vlEntradas').AsCurrency;
      EDvlSaidas.Value := FieldByName('vlSaidas').AsCurrency;
      EDvlSaldo.Value := FieldByName('vlSaldo').AsCurrency;
    end;
  end;
  if t = 1 then
  begin
    //Gera o Saldo de Caixa com as datas
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidCaixa, DBEdtMovCaixaIni, DBEdtMovCaixaFim], 'spRetSaldoCaixa', '') do
    begin
      EDvlEntradasC.Value := FieldByName('vlEntradas').AsCurrency;
      EDvlSaidasC.Value := FieldByName('vlSaidas').AsCurrency;
      EDvlSaldoC.Value := FieldByName('vlSaldo').AsCurrency;
    end;
  end;
end;

procedure TFrmCadMovCaixa.HabilitaCampos;
begin
  if cdsPadrao.State in [dsEdit, dsBrowse] then
  begin
    funcao.SomenteLeitura([DBEidMovFinanceira], true);
    funcao.SomenteLeitura([DBEdtMovCaixa, DBEvlMovCaixa, DBEidCadGeral, DBEidResultado, DBEidRateio, DBEidGerencial, DBEidSafra, DBMdescMovCaixa], EDtpMov.Text <> 'AVU');
    btnImpRecibo.Enabled := trim(DBEidCadGeral.Text) <> '';
  end
  else
    if cdsPadrao.State = dsInsert then
    begin
      funcao.SomenteLeitura([DBEvlMovCaixa, DBEidCadGeral, DBEidResultado, DBEidRateio, DBEidGerencial, DBEidMovFinanceira], false);
      btnImpRecibo.Enabled := false;
    end;
end;

procedure TFrmCadMovCaixa.HabilitaRatRes;
//procedure criada para controlar a habilitação para ver se o título está recebendo rateio
// ou centro de resultado direto
begin
  funcao.SomenteLeitura([DBEidResultado, DBEidRateio, DBEidGerencial], EDtpMov.Text <> 'AVU');
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
  end; // fim do if EDtpMov.Text = 'AVU' then
end;

procedure TFrmCadMovCaixa.IniciaConsulta;
begin
  with cdsMovCaixaCons do
  begin
    Active := False;
    CommandText := sqlCons + ' AND 1=2';
    Active := true;
  end;
end;

procedure TFrmCadMovCaixa.IniciaMoeda;
begin
  EDvlEntradas.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaidas.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaldo.Decimals := FormatSettings.CurrencyDecimals;
  EDvlEntradasC.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaidasC.Decimals := FormatSettings.CurrencyDecimals;
  EDvlSaldoC.Decimals := FormatSettings.CurrencyDecimals;
end;

procedure TFrmCadMovCaixa.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    SelRegistro;
    AtualizaLookups;
  end;
  if (PagAbas.ActivePageIndex = 1) then //Rateio
  begin
    if (cdsPadrao.State in [dsInsert]) and (cdsMovCaixaRateio.IsEmpty) then
      GeraRateio;
  end;
  if (PagAbas.ActivePageIndex = 2) and (trim(DBEidCaixa.text) = '') then //Consulta
  begin
    messagedlg('Você deve informar uma conta caixa!', mtWarning, [mbok], 0);
    PagAbas.ActivePageIndex := 0;
    DBEidCaixa.SetFocus;
    exit;
  end;

end;

function TFrmCadMovCaixa.SelRegistro: Boolean;
var
  id : integer;
begin
  Result := false;
  if (cdsMovCaixaCons.IsEmpty) or (not cdsMovCaixaCons.Active) then
    exit;
  id := cdsMovCaixaCons.FieldByName('idMovCaixa').AsInteger;
  EDtpMov.Text := cdsMovCaixaConstpMov.AsString;  
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('idMovCaixa').AsInteger := id;
  DBEidMovCaixaExit(DBEidMovCaixa);
  Result := true;
end;

procedure TFrmCadMovCaixa.SomaRateio;
begin
  vlTotalRateio := 0;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlMovCaixa').AsCurrency-vlTotalRateio), 6, '');
  With cdsMovCaixaRateio do
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
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlMovCaixa').AsCurrency-vlTotalRateio), 6, '');
end;

procedure TFrmCadMovCaixa.VerificaNfE;
var
  sql : String;
begin
  //Procedure responsavel por veririficar se o Titulo tem vinculo com uma NfE
  sql := 'SELECT * FROM NfeFinanc WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
         ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
         ' AND idMovCaixa = ' + cdsPadrao.FieldByName('idMovCaixa').AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      funcao.SomenteLeitura([DBEidResultado, DBEidRateio, DBEidGerencial,
                             DBEidSafra, DBEidGerencialR, DBEidResultadoR,
                             DBEidMovFinanceira, DBEprRateio, DBEvlRateio, DBEidMovCaixa,
                             DBEidCaixa, DBEdtMovCaixa, DBEvlMovCaixa], True);
    end;
  end;
end;

end.
