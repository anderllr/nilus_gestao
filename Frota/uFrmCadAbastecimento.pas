unit uFrmCadAbastecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, CFind, DB, SqlExpr, Provider,
  DBClient, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl,
  CGroupBox, CDBRadioGroup, CDBCheckBox, Math, Grids, DBGrids, CDBGrid, DBXCommon,
  System.Actions ;

type
  TFrmCadAbastecimento = class(TFrmCadPadraoEmpFiscal)
    CGroupBox8: TCGroupBox;
    CLabel10: TCLabel;
    LookProdDeposito: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel41: TCLabel;
    DBEqtEstoque: TCDBEdit;
    CLabel46: TCLabel;
    CLabel60: TCLabel;
    DBEidMaquina: TCDBEdit;
    CLookUp10: TCLookUp;
    CLabel1: TCLabel;
    DBEvlUltAbastecimento: TCDBEdit;
    DBEhr_kmAtual: TCDBEdit;
    CLabel2: TCLabel;
    DBEqtAbastceimento: TCDBEdit;
    CLabel40: TCLabel;
    CLabel45: TCLabel;
    DBEvlAbastecimento: TCDBEdit;
    CLabel3: TCLabel;
    DBEvlTotal: TCDBEdit;
    LookTipoAtividade: TCLookUp;
    CLabel8: TCLabel;
    DBEidTipoAtividade: TCDBEdit;
    DBEbomba: TCDBEdit;
    CLabel4: TCLabel;
    DBEdescResponsavel: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtAbastecimento: TCDBEdit;
    CLabel6: TCLabel;
    DBEidAbastecimento: TCDBEdit;
    CLabel7: TCLabel;
    DBRGtpAbastecimento: TCDBRadioGroup;
    chktanqueCheio: TCDBCheckBox;
    FindProduto: TCFind;
    FindAbastecimento: TCFind;
    TabCustos: TTabSheet;
    CGroupBox3: TCGroupBox;
    CLabel44: TCLabel;
    CLabel14: TCLabel;
    CLabel157: TCLabel;
    CLabel13: TCLabel;
    CLabel18: TCLabel;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    DBEvlAbastecimento1: TCDBEdit;
    LookResultadoC: TCLookUp;
    DBEidResultadoC: TCDBEdit;
    DBEidGerencialC: TCDBEdit;
    LookGerencialC: TCLookUp;
    CGroupBox4: TCGroupBox;
    DBGridCusto: TCDBGrid;
    CGroupBox2: TCGroupBox;
    CLabel12: TCLabel;
    CLabel9: TCLabel;
    CLabel11: TCLabel;
    CLabel86: TCLabel;
    CBitBtn6: TCBitBtn;
    LookRateio: TCLookUp;
    DBEidRateio: TCDBEdit;
    CBitBtn5: TCBitBtn;
    LookTalhao: TCLookUp;
    DBEidResultado: TCDBEdit;
    CBitBtn7: TCBitBtn;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    DBEidGerencial: TCDBEdit;
    CLookUp2: TCLookUp;
    CBitBtn1: TCBitBtn;
    dsCusto: TDataSource;
    cdsCusto: TClientDataSet;
    cdsCustoidEmpresa: TIntegerField;
    cdsCustoidCadEmpresa: TSmallintField;
    cdsCustoidResultado: TIntegerField;
    cdsCustoprRateio: TFMTBCDField;
    cdsCustovlRateio: TFMTBCDField;
    cdsCustoidGerencial: TIntegerField;
    cdsCustovlTotalRateio: TAggregateField;
    dspCusto: TDataSetProvider;
    sdsCusto: TSQLDataSet;
    cdsResultado: TClientDataSet;
    cdsRateio: TClientDataSet;
    cdsRateioidEmpresa: TIntegerField;
    cdsRateioidRateio: TSmallintField;
    cdsRateioidResultado: TIntegerField;
    cdsRateioprRateio: TFMTBCDField;
    cdsCustodescResultado: TStringField;
    cdsCustoidAbastecimento: TIntegerField;
    CGroupBox15: TCGroupBox;
    BtnAdicionarCusto: TCBitBtn;
    BtnCancelarCusto: TCBitBtn;
    BtnRetirarCusto: TCBitBtn;
    BtnNovoCusto: TCBitBtn;
    CGroupBox5: TCGroupBox;
    CLabel15: TCLabel;
    DBEvlTotalRateio: TCDBEdit;
    cdsCustoidAbastecimentoCusto: TIntegerField;
    sdsAbastecimento: TSQLDataSet;
    TabFinancas: TTabSheet;
    grpCaixa: TCGroupBox;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel21: TCLabel;
    CLabel22: TCLabel;
    DBEvlMovCaixa: TCDBEdit;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CBitBtn2: TCBitBtn;
    DBEdescMovCaixa: TCDBEdit;
    DBEdtMovCaixa: TCDBEdit;
    grpBanco: TCGroupBox;
    CLabel23: TCLabel;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLabel26: TCLabel;
    CLabel27: TCLabel;
    CLabel28: TCLabel;
    DBEvlMovConta: TCDBEdit;
    DBEdtCompensacao: TCDBEdit;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    DBEdescMovConta: TCDBEdit;
    DBEidCheque: TCDBEdit;
    DBEdtVencimento: TCDBEdit;
    PagTituloPag: TCPageControl;
    TabTituloPag: TTabSheet;
    CLabel29: TCLabel;
    CLabel30: TCLabel;
    CLabel31: TCLabel;
    CLabel32: TCLabel;
    CLabel33: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    CLabel19: TCLabel;
    CLabel38: TCLabel;
    CLabel20: TCLabel;
    CLabel39: TCLabel;
    CLabel42: TCLabel;
    DBEobsTituloPag: TCDBEdit;
    DBEprMulta: TCDBEdit;
    DBEprJuros: TCDBEdit;
    DBEprDescontoT: TCDBEdit;
    DBEdiasVencimento: TCDBEdit;
    DBCKincMes: TCDBCheckBox;
    DBEdtVencimentoIni: TCDBEdit;
    DBEqtParcelas: TCDBEdit;
    CBitBtn3: TCBitBtn;
    LookLancamento: TCLookUp;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp4: TCLookUp;
    CLookUp5: TCLookUp;
    DBEidContaFor: TCDBEdit;
    DBEvlTituloPag: TCDBEdit;
    DBEidPortador: TCDBEdit;
    LookPortador: TCLookUp;
    DBEnrTituloPag: TCDBEdit;
    CLookUp3: TCLookUp;
    DBEidDocSerieT: TCDBEdit;
    LookHabilita: TCLookUp;
    TabParcelas: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel43: TCLabel;
    CLabel47: TCLabel;
    CLabel48: TCLabel;
    CLabel49: TCLabel;
    DBEidParcela: TCDBEdit;
    DBEvlParcela: TCDBEdit;
    DBEdtVencimentoP: TCDBEdit;
    DBEstTituloPagParc: TCDBEdit;
    CGroupBox6: TCGroupBox;
    CDBGrid1: TCDBGrid;
    GrpBtnParcelas: TCGroupBox;
    CLabel50: TCLabel;
    LblTotal: TCLabel;
    CLabel51: TCLabel;
    LblRestante: TCLabel;
    BtnSalvarParc: TCBitBtn;
    BtnCancelarParc: TCBitBtn;
    BtnExcluirParc: TCBitBtn;
    BtnNovoParc: TCBitBtn;
    sdsMovCaixa: TSQLDataSet;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    dsMovCaixa: TDataSource;
    dsMovConta: TDataSource;
    cdsMovConta: TClientDataSet;
    dspMovConta: TDataSetProvider;
    sdsMovConta: TSQLDataSet;
    sdsTituloPag: TSQLDataSet;
    dspTituloPag: TDataSetProvider;
    cdsTituloPag: TClientDataSet;
    cdsTituloPagidTituloPag: TIntegerField;
    cdsTituloPagidEmpresa: TIntegerField;
    cdsTituloPagidFornecedor: TIntegerField;
    cdsTituloPagnrTituloPag: TStringField;
    cdsTituloPagidDocSerie: TStringField;
    cdsTituloPagtpDocumento: TStringField;
    cdsTituloPagdtEmissao: TSQLTimeStampField;
    cdsTituloPagidSafra: TIntegerField;
    cdsTituloPagidBanco: TIntegerField;
    cdsTituloPagidIndice: TSmallintField;
    cdsTituloPagidMovFinanceira: TIntegerField;
    cdsTituloPagidResultado: TIntegerField;
    cdsTituloPagidRateio: TSmallintField;
    cdsTituloPagidGerencial: TIntegerField;
    cdsTituloPagobsTituloPag: TStringField;
    cdsTituloPagvlTituloPag: TFMTBCDField;
    cdsTituloPagqtParcelas: TSmallintField;
    cdsTituloPagdtVencimentoIni: TSQLTimeStampField;
    cdsTituloPagdiasVencimento: TSmallintField;
    cdsTituloPagprMulta: TFMTBCDField;
    cdsTituloPagprDesconto: TFMTBCDField;
    cdsTituloPagprJuros: TFMTBCDField;
    cdsTituloPagincMes: TStringField;
    cdsTituloPagstTituloPag: TStringField;
    cdsTituloPagidCadEmpresa: TSmallintField;
    cdsTituloPagidPortador: TSmallintField;
    cdsTituloPagidConta: TSmallintField;
    cdsTituloPagidDocumento: TIntegerField;
    dsTituloPag: TDataSource;
    dsTituloPagParc: TDataSource;
    cdsTituloPagParc: TClientDataSet;
    dspTituloPagParc: TDataSetProvider;
    sdsTituloPagParc: TSQLDataSet;
    sdsTituloPagMov: TSQLDataSet;
    dspTituloPagMov: TDataSetProvider;
    cdsTituloPagMov: TClientDataSet;
    cdsFinanc: TClientDataSet;
    dspFinanc: TDataSetProvider;
    sdsFinanc: TSQLDataSet;
    DBEidMovCaixa: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    DBEidTituloPag: TCDBEdit;
    cdsFinancidEmpresa: TIntegerField;
    cdsFinancidCadEmpresa: TSmallintField;
    cdsFinancidAbastecimento: TIntegerField;
    cdsFinancidTituloPag: TIntegerField;
    cdsFinancidMovConta: TIntegerField;
    cdsFinancidMovCaixa: TIntegerField;
    LookFornecedor: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel52: TCLabel;
    CLabel53: TCLabel;
    DBEqtEstoqueAtual: TCDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidAbastecimentoExit(Sender: TObject);
    procedure ConfigMaquina;
    procedure DBEidMaquinaEnter(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure RetornaSaldoEstoque;
    procedure DBEqtAbastceimentoExit(Sender: TObject);
    procedure DBEqtAbastceimentoEnter(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure DBRGtpAbastecimentoExit(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure DBEidProdutoEnter(Sender: TObject);
    procedure GeraRateio;
    procedure LimpaRateio;
    procedure PagAbasChange(Sender: TObject);
    procedure HabilitaRatRes;
    procedure DBEidResultadoExit(Sender: TObject);
    procedure dspCustoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure BtnAdicionarCustoClick(Sender: TObject);
    procedure GeraParcelas;
    procedure SomaParcelas;
    procedure GeraMovimentacao;
    procedure PagTituloPagChange(Sender: TObject);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure IniciaFinancas;
    procedure cdsTituloPagAfterInsert(DataSet: TDataSet);
    procedure dspMovCaixaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspTituloPagMovBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBCKincMesExit(Sender: TObject);
    procedure DBEidPortadorExit(Sender: TObject);
    procedure DBEidPortadorEnter(Sender: TObject);
    procedure DBEobsTituloPagExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure DBEdtAbastecimentoExit(Sender: TObject);
    procedure DBEidSafraExit(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
    qtSaldoAtual, qtSaldo : double;
    vlCustoMedio : currency;
    vlProdAnterior, vlTotalParcelas : currency;
  public
    { Public declarations }
  end;

var
  FrmCadAbastecimento: TFrmCadAbastecimento;

implementation

uses uFrmPrincipal, uFuncao, uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadAbastecimento.actExcluirExecute(Sender: TObject);
var
  sqlProc, sql, sqlMov : string;
begin
  try
    sqlProc := 'EXEC spAtualizaEstoque ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
         QuotedStr('ABA') + ', NULL, ' + DBEidAbastecimento.Text + ', NULL, NULL, ' + QuotedStr('OUT');
    begin
      if messagedlg('Tem certeza que deseja excluir!', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;
      if cdsFinanc.RecordCount > 0 then
      begin
        if not cdsFinancidTituloPag.IsNull then
        begin
          sql := 'SELECT * FROM TituloPag WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                 ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
                 ' AND idTituloPag = ' + cdsFinancidTituloPag.AsString;
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          if FieldByName('stTituloPag').AsString = 'ATIVO' then
          begin
            sqlMov := 'EXEC spExcluiTituloPag ' + cdsFinancidTituloPag.AsString;
          end
          else
          begin
            MessageDlg('O Titulo Relacionado a essa manutenção já tem movimentação!', mtWarning, [mbOK], 0);
            Exit;
          end;
        end
        else
          if not cdsFinancidMovCaixa.IsNull then
          begin
            sql := 'SELECT * FROM MovCaixaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                   ' AND idMovCaixa = ' + cdsFinancidMovCaixa.AsString;
            with frmPrincipal.ExecutaSQLRet([], '', sql) do
            if RecordCount > 0 then
            begin
              sqlMov := 'DELETE FROM MovCaixaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                        ' AND idMovCaixa = ' + cdsFinancidMovCaixa.AsString;
              if sqlMov <> '' then
                dmPadrao.dbConexao.ExecuteDirect(sqlMov);
            end;
            sqlMov := 'DELETE FROM MovCaixa WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                      ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
                     ' AND idMovCaixa = ' + cdsFinancidMovCaixa.AsString;
          end
          else
            if not cdsFinancidMovConta.IsNull then
            begin
              sql := 'SELECT * FROM MovContaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                     ' AND idMovConta = ' + cdsFinancidMovConta.AsString;
              with frmPrincipal.ExecutaSQLRet([], '', sql) do
              if RecordCount > 0 then
              begin
                sqlMov := 'DELETE FROM MovContaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                          ' AND idMovConta = ' + cdsFinancidMovConta.AsString;
                if sqlMov <> '' then
                  dmPadrao.dbConexao.ExecuteDirect(sqlMov);
              end;
              sqlMov := 'DELETE FROM MovConta WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                        ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
                        ' AND idMovConta = ' + cdsFinancidMovConta.AsString;
            end;

        sql := 'DELETE FROM AbastecimentoFinanc ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idAbastecimento = ' + QuotedStr(cdsPadrao.FieldByName('idAbastecimento').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);
        if sqlMov <> '' then
          dmPadrao.dbConexao.ExecuteDirect(sqlMov);

        sql := 'DELETE FROM MaquinaManutencaoItem ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idManutencao = ' + QuotedStr(cdsPadrao.FieldByName('idManutencao').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);

        sql := 'DELETE FROM MaquinaManutencaoCusto ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idManutencao = ' + QuotedStr(cdsPadrao.FieldByName('idManutencao').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);

        sql := 'DELETE FROM MaquinaManutencao ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idManutencao = ' + QuotedStr(cdsPadrao.FieldByName('idManutencao').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end
      else
      begin
        sql := 'DELETE FROM AbastecimentoFinanc ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idAbastecimento = ' + QuotedStr(cdsPadrao.FieldByName('idAbastecimento').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);
        if sqlMov <> '' then
          dmPadrao.dbConexao.ExecuteDirect(sqlMov);

        sql := 'DELETE FROM AbastecimentoCusto ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idAbastecimento = ' + QuotedStr(cdsPadrao.FieldByName('idAbastecimento').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);

        sql := 'DELETE FROM Abastecimento ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idAbastecimento = ' + QuotedStr(cdsPadrao.FieldByName('idAbastecimento').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
    end;
  finally
    dmPadrao.dbConexao.ExecuteDirect(sqlProc);
  end;
  BtnNovo.Click;
end;

procedure TFrmCadAbastecimento.actNovoExecute(Sender: TObject);
begin
  cdsCusto.IndexFieldNames := '';
  inherited;

end;

procedure TFrmCadAbastecimento.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  sql : string;
  idTituloPag : integer;
begin
  if Trim(DBEidProduto.Text) = '' then
  begin
    MessageDlg('Produto deve ser informado!', mtWarning, [mbOK], 0);
    DBEidProduto.SetFocus;
    Exit;
  end;
  if Trim(DBEidMaquina.Text) = '' then
  begin
    MessageDlg('Maquina deve ser informado!', mtWarning, [mbOK], 0);
    DBEidProduto.SetFocus;
    Exit;
  end;
  if cdsPadrao.FieldByName('tpAbastecimento').AsString = 'I' then
  begin
    if Trim(DBEidProdDeposito.Text) = '' then
    begin
      MessageDlg('Obrigatório informar o Depósito!', mtWarning, [mbOK], 0);
      DBEidProdDeposito.SetFocus;
      Exit;
    end;
    if not (qtSaldoAtual > 0) then
    begin
      MessageDlg('Estoque zerado Favor verificar!', mtWarning, [mbOK], 0);
      DBEidProduto.SetFocus;
      Exit;
    end;
    if (cdsPadrao.FieldByName('qtEstoque').AsFloat < cdsPadrao.FieldByName('qtAbastecimento').AsFloat) then
    begin
      MessageDlg('Saldo no Lançamento indisponível no depósito solicitado!', mtWarning, [mbOK], 0);
      DBEidProduto.SetFocus;
      Exit;
    end;
    if ((cdsPadrao.FieldByName('qtEstoqueAtual').AsFloat-cdsPadrao.FieldByName('qtAbastecimento').AsFloat) < 0) then
    begin
      MessageDlg('O Saldo Atual não pode ficar negativo!', mtWarning, [mbOK], 0);
      DBEidProduto.SetFocus;
      Exit;
    end;
  end;
  //********************************************************************************//
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  //
  Try
    //Grava o idCadEmpresa no Padrão pois não faz mais parte da chave
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
    GravaChave(1, '', nil);
    inherited;
    sql := 'EXEC spFechaAbastecimento ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                        DBEidAbastecimento.Text + ', ' +
                                        funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                        funcao.RetornaValorEField(DBEidTituloPag, 3) + ', ' +
                                        QuotedStr(DBEidMovConta.Text) + ', ' +
                                        QuotedStr(DBEidMovCaixa.Text);
    with frmPrincipal.ExecutaSqlRet([], '', sql) do
      if FieldByName('msg').AsString <> 'OK' then
        raise Exception.Create(FieldByName('msg').AsString);

  Except
    On E: Exception Do
       Begin
         //
         MessageDlg(E.Message, mterror, [mbok], E.HelpContext);
         frmPrincipal.erro := 1;
         //
       End;
  End;
    //***************** DADOS FINANCEIROS ********************//
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    //verifica alterações na tabela caixa  -  modificado
    if (trim(DBEidCaixa.Text) <> '') or (trim(DBEvlMovCaixa.Text) <> '') or (trim(DBEdescMovCaixa.Text) <> '') then
    begin
      cdsMovCaixa.FieldByName('fator').AsString := '-1'; //pagando
      cdsMovCaixa.Post;
      cdsMovCaixa.ApplyUpdates(0);
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela conta -- modificado
    if (trim(DBEidConta.Text) <> '') or (trim(DBEvlMovConta.Text) <> '') or (trim(DBEdescMovConta.Text) <> '') then
    begin
      cdsMovConta.FieldByName('fator').AsString := '-1'; //pagando
      cdsMovConta.Post;
      cdsMovConta.ApplyUpdates(0);
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela caixa
    if funcao.VerificaAlteracoes([cdsTituloPag]) then
    begin
      if cdsTituloPagParc.IsEmpty then
        GeraParcelas;
      if trim(DBEobsTituloPag.Text) = '' then
      begin
        if not (cdsTituloPag.State in [dsInsert, dsEdit]) then
          cdsTituloPag.Edit;
        cdsTituloPagobsTituloPag.AsString := 'Ref.: Abastecimento.: ' + DBEidAbastecimento.Text;
      end;
      cdsTituloPag.ApplyUpdates(0);
      idTituloPag := cdsTituloPag.FieldByName('idTituloPag').AsInteger;
      cdsTituloPagParc.First;
      while not cdsTituloPagParc.Eof do
      begin
        cdsTituloPagParc.Edit;
        cdsTituloPagParc.FieldByName('idTituloPag').Value := idTituloPag;
        cdsTituloPagParc.Post;
        cdsTituloPagParc.Next;
      end;

      cdsTituloPagParc.ApplyUpdates(0);
      //
      If (cdsTituloPagMov.ChangeCount > 0) Then
         cdsTituloPagMov.ApplyUpdates(0);
      //
      //
    end; //fim do verificação de alterações na tabela de titulo
    //***************** FIM DADOS FINANCEIROS ********************//

//    dmPadrao.dbConexao.CloseDataSets;

  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
end;

procedure TFrmCadAbastecimento.BtnAdicionarCustoClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, BtnNovoCusto, (Sender as TCBitBtn), '');
end;

procedure TFrmCadAbastecimento.BtnSalvarParcClick(Sender: TObject);
begin
  inherited;
  if not (cdsTituloPagParc.State IN [dsEdit, dsInsert]) then
    cdsTituloPagParc.Edit;
  funcao.GravaSec([DBEidTituloPag], cdsTituloPagParc, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc, (Sender as TCBitBtn), 'idParcela');
  if (Sender as TBitBtn).Name <> 'BtnNovoParc' then
    SomaParcelas;

  if (Sender as TBitBtn).Name <> 'BtnSalvarParc' then
  begin
    SomaParcelas;
    GeraMovimentacao;
  end;

  DBEidParcela.SetFocus;
end;

procedure TFrmCadAbastecimento.cdsMovCaixaAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  valor := 0;
  if cdsPadrao.FieldByName('vlTotal').Value > 0 then
  begin
    valor := cdsPadrao.FieldByName('vlTotal').Value;
    if trim(DBEvlTituloPag.Text) <> '' then
      valor := valor - cdsTituloPag.FieldByName('vlTituloPag').AsCurrency;

    if trim(DBEvlMovConta.Text) <> '' then
      valor := valor - cdsMovConta.FieldByName('vlMovConta').AsCurrency;

    if valor < 0 then
      valor := 0;
  end;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idMovCaixa').AsInteger := 0;
  DataSet.FieldByName('dtMovCaixa').Value := cdsPadrao.FieldByName('dtAbastecimento').Value;
  DataSet.FieldByName('vlMovCaixa').Value := valor;
  DataSet.FieldByName('idMovFinanceira').Value := 11; //Valor pago pelo caixa
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  if cdsPadrao.FieldByName('idFornecedor').IsNull then
    DataSet.FieldByName('idCadGeral').Value := DBEidEmpresa.Text
  else
    DataSet.FieldByName('idCadGeral').Value := cdsPadrao.FieldByName('idFornecedor').Value;
end;

procedure TFrmCadAbastecimento.cdsMovContaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsMovConta.FieldByName('impresso').AsString := 'N';
end;

procedure TFrmCadAbastecimento.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('tanqueCheio').AsString := 'N';
  cdsPadrao.FieldByName('tpAbastecimento').AsString := 'I';
end;

procedure TFrmCadAbastecimento.cdsTituloPagAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsPadrao.FieldByName('vlTotal').Value > 0 then
    begin
      valor := cdsPadrao.FieldByName('vlTotal').Value;
      if trim(DBEvlMovCaixa.Text) <> '' then
        valor := valor - cdsMovCaixa.FieldByName('vlMovCaixa').AsCurrency;

      if trim(DBEvlMovConta.Text) <> '' then
        valor := valor - cdsMovConta.FieldByName('vlMovConta').AsCurrency;

      if valor < 0 then
        valor := 0;
    end;

  DataSet.FieldByName('idTituloPag').Value := 0;
  DataSet.FieldByName('idEmpresa').Value := cdsEmpresa.FieldByName('idEmpresa').Value;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  if cdsPadrao.FieldByName('idFornecedor').IsNull then
    DataSet.FieldByName('idFornecedor').Value := DBEidEmpresa.Text
  else
    DataSet.FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
  DataSet.FieldByName('vlTituloPag').Value := valor;
  DataSet.FieldByName('nrTituloPag').Value := cdsPadrao.FieldByName('idAbastecimento').Value;
  DataSet.FieldByName('dtEmissao').Value := cdsPadrao.FieldByName('dtAbastecimento').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idIndice').Value := 1;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 2; //Inclusão de titulo a pagar
  DataSet.FieldByName('stTituloPag').Value := 'ATIVO'; //Status do titulo
  DataSet.FieldByName('incMes').Value := 'N'; //Mesmo dia
  DataSet.FieldByName('obsTituloPag').Value := 'Ref.: Abastecimento.: ' + cdsPadrao.FieldByName('idAbastecimento').Value;
end;

procedure TFrmCadAbastecimento.ConfigMaquina;
//procedure que irá buscar os dados quando a máquina for alterada
var
  sql : string;
begin
  //zera os valores de km e hora
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('hr_kmAtual').Value := 0;
  if trim(DBEidMaquina.Text) <> '' then
  begin
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidMaquina], 'spRetDadosMaquina', '') do
    begin
      First;
      //Ajusta os valores padrões
      cdsPadrao.FieldByName('hr_kmAtual').Value := FieldByName('hr_kmInicial').Value;
    end;
    if Trim(DBEidProduto.Text) <> '' then
    begin
      sql := 'SELECT * FROM Abastecimento WHERE idMaquina = ' + DBEidMaquina.Text +
             ' AND idProduto = ' + DBEidProduto.Text +
             ' AND dtAbastecimento = ' +
             '(SELECT MAX(dtAbastecimento) FROM Abastecimento WHERE idMaquina = ' + DBEidMaquina.Text + ' AND idProduto = ' + DBEidProduto.Text + ')';
      cdsPadrao.FieldByName('vlUltAbastecimento').AsFloat := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtAbastecimento').AsFloat;
    end;
  end;
end;

procedure TFrmCadAbastecimento.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsTituloPag.FieldByName('incMes').AsString = 'S');
  if (cdsTituloPag.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
    DBEprMulta.SetFocus;
end;

procedure TFrmCadAbastecimento.DBEdtAbastecimentoExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEdtAbastecimento.Text) <> vlAnterior) and (trim(DBEidProduto.Text) <> '') then
  begin
    vlAnterior := '';
    DBEidProdutoExit(DBEidProduto);
  end;

end;

procedure TFrmCadAbastecimento.DBEidAbastecimentoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
  AbreTabSecundaria;
  HabilitaRatRes;
  IniciaFinancas;
end;

procedure TFrmCadAbastecimento.DBEidMaquinaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadAbastecimento.DBEidMaquinaExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCDBEdit).Text) then
  begin
    ConfigMaquina;
  end;
end;

procedure TFrmCadAbastecimento.DBEidPortadorEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidPortador.Text;
end;

procedure TFrmCadAbastecimento.DBEidPortadorExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEidPortador.Text then
  begin
    if trim(LookHabilita.Caption) = 'S' then
    begin
      funcao.SomenteLeitura([DBEidContaFor], false);
      if trim(DBEidFornecedor.Text) <> '' then
        with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadGeralConta WHERE idCadGeral = ' +
                                                DBEidFornecedor.Text + ' AND padrao = ' + QuotedStr('S')) do
        begin
          if (not IsEmpty) and (cdsTituloPag.State in [dsEdit, dsInsert]) then
            cdsTituloPagidConta.AsInteger := FieldByName('idConta').AsInteger;
        end;
    end
    else
    begin
      if (cdsTituloPag.State in [dsEdit, dsInsert]) then
        cdsTituloPagidConta.Clear;
      funcao.SomenteLeitura([DBEidContaFor], true);
    end;
  end;
end;

procedure TFrmCadAbastecimento.DBEidProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadAbastecimento.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCDBEdit).Text) then
    if Trim(DBEidProdDeposito.Text) <> '' then
    begin
      RetornaSaldoEstoque;
      if(trim(DBEidProduto.text) <> '') then
      begin
    //    cdsAplicacaoProdvlAplicacao.AsCurrency := vlCustoMedio;
        cdsPadrao.FieldByName('qtEstoque').AsFloat := qtSaldo;
        cdsPadrao.FieldByName('qtEstoqueAtual').AsFloat := qtSaldoAtual;
        cdsPadrao.FieldByName('vlAbastecimento').AsFloat := vlCustoMedio;
      end
      else
      begin
        cdsPadrao.FieldByName('qtEstoque').AsFloat := 0;
        cdsPadrao.FieldByName('qtEstoqueAtual').AsFloat := 0;
        cdsPadrao.FieldByName('vlAbastecimento').AsFloat := 0;
      end;
    end;
end;

procedure TFrmCadAbastecimento.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCDBEdit).Text) <> vlAnterior then
  begin
    HabilitaRatRes;
    if (trim(DBEidResultado.Text) <> '') or (trim(DBEidRateio.Text) <> '') then
      GeraRateio;
  end;
  if ((Sender as TCustomEdit).Name = 'DBEidRAteio') then
    PagAbas.ActivePageIndex := 1;
end;

procedure TFrmCadAbastecimento.DBEidSafraExit(Sender: TObject);
begin
  inherited;
  //se usa estoque por safra ele atualiza novamente
  if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
    if vlAnterior <> trim(DBEidSafra.Text) then
    begin
      vlAnterior := '';
      DBEidProdutoExit(DBEidProduto);
    end;
end;

procedure TFrmCadAbastecimento.DBEobsTituloPagExit(Sender: TObject);
begin
  inherited;
  if (cdsTituloPag.State in [dsInsert]) and (cdsTituloPagParc.IsEmpty) then
    GeraParcelas;
end;

procedure TFrmCadAbastecimento.DBEqtAbastceimentoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadAbastecimento.DBEqtAbastceimentoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEqtAbastceimento.Text then
    cdsPadrao.FieldByName('vlTotal').AsCurrency := RoundTo(cdsPadrao.FieldByName('qtAbastecimento').AsFloat*cdsPadrao.FieldByName('vlAbastecimento').AsFloat, -2);
end;

procedure TFrmCadAbastecimento.DBRGtpAbastecimentoExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEidProdDeposito], cdsPadrao.FieldByName('tpAbastecimento').AsString = 'E');
  funcao.SomenteLeitura([DBEvlAbastecimento, DBEidFornecedor], cdsPadrao.FieldByName('tpAbastecimento').AsString = 'I');
end;

procedure TFrmCadAbastecimento.dspCustoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspCusto' then
    begin
      GeraAutoInc(DeltaDS, 'AbastecimentoCusto', 'idAbastecimentoCusto', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadAbastecimento.dspMovCaixaBeforeUpdateRecord(Sender: TObject;
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
        if trim(DBEdtCompensacao.Text) = '' then
          DeltaDS.FieldByName('dtMovConta').NewValue := cdsPadrao.FieldByName('dtAbastecimento').Value
        else
          DeltaDS.FieldByName('dtMovConta').NewValue := DeltaDS.FieldByName('dtCompensacao').Value;
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
          DeltaDS.FieldByName('dtEmissao').NewValue := cdsPadrao.FieldByName('dtAbastecimento').Value;
          DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 2; //Inclusão de titulo a pagar
          DeltaDS.FieldByName('stTituloPag').NewValue := 'ATIVO'; //Status do titulo
        end;
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadAbastecimento.dspTituloPagMovBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  DeltaDS.FieldByName('idTituloPag').NewValue := cdsTituloPagidTituloPag.AsInteger;
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
    begin
      GeraAutoInc(DeltaDS, 'TituloPagMov', 'idTituloPagMov', []);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadAbastecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsCusto.IndexFieldNames := '';
  inherited;
  FrmCadAbastecimento := nil;
end;

procedure TFrmCadAbastecimento.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCusto;
  Tabelas[2] := cdsFinanc;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidAbastecimento;
  foco := DBEidAbastecimento;
  tab_chave := 'Abastecimento';
  Height := 530;
  Width := 820;
end;

procedure TFrmCadAbastecimento.FormShow(Sender: TObject);
var
  sql : string;
begin
  inherited;
{  sql := 'SELECT * FROM cadConfigEstoque WHERE idEmpresa = ' + frmPrincipal.idEmpresa;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if FieldByName('usaEstoqueFilial').AsString = 'S' then
      filial := False
    else
      filial := True;
    if not filial then
    begin
      cdsEmpresa.FieldByName('idCadEmpresa').Value := FieldByName('filialPadrao').AsString;
      DBEidCadEmpresa.Visible := false;
      LookdescCadEmpresa.Left := 111;
      LookdescCadEmpresa.Width := 274;

      FindEmpresa.JoinClause.Clear;
      FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                 ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                                 ' AND acessa = ' + QuotedStr('S') + ')');

      DBEidEmpresa.Find := FindEmpresa;
    end
    else
      cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa;
  end;}
end;

procedure TFrmCadAbastecimento.GeraMovimentacao;
begin
  with cdsTituloPagMov do
  begin
    if not Active then
      Active := true;
    cdsTituloPagParc.First;
    while not cdsTituloPagParc.Eof do
    begin
      if cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
      begin
        //se a movimentação nao estiver limpa ele limpa a tabela
        Filtered := false;
        Filter := 'idParcela = ' + cdsTituloPagParc.FieldByName('idParcela').AsString;
        Filtered := true;
        if RecordCount > 0 then
        begin
          Delete;
          if (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) then
            ApplyUpdates(0);
        end;
        Filtered := false;

        Append;
        FieldByName('idTituloPagMov').Value := 0;
        if trim(cdsTituloPag.FieldByName('idTituloPag').AsString) <> '' then
          FieldByName('idTituloPag').Value := cdsTituloPag.FieldByName('idTituloPag').Value
        else
          FieldByName('idTituloPag').Value := 0;
        FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
        FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
        if cdsPadrao.FieldByName('idFornecedor').IsNull then
          FieldByName('idFornecedor').Value := DBEidEmpresa.Text
        else
          FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
        FieldByName('idParcela').Value := cdsTituloPagParc.FieldByName('idParcela').Value;
        FieldByName('idMovFinanceira').Value := cdsTituloPag.FieldByName('idMovFinanceira').Value;
        FieldByName('dtTituloPagMov').Value := cdsTituloPag.FieldByName('dtEmissao').Value;
        FieldByName('vlTituloPagMov').Value := cdsTituloPagParc.FieldByName('vlParcela').Value;
        FieldByName('fator').Value := 1;
        Post;
      end; // fim do if cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
      cdsTituloPagParc.Next;
    end;
    cdsTituloPagParc.First;
  end;
end;

procedure TFrmCadAbastecimento.GeraParcelas;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  if cdsTituloPagParc.Active then
    if not cdsTituloPagParc.IsEmpty then
      if messagedlg('Deseja recalcular as parcelas?', mtConfirmation, [mbyes, mbno], 0) = mrno then
        exit;

  if not funcao.VerCampoRequerido([cdsTituloPag], 'idEmpresa,idCadEmpresa,idFornecedor,idSafra,dtEmissao,idMovFinanceira,idTituloPag,nrTituloPag,diasVencimento,prMulta,prJuros,prDesconto,stTituloPag') then
  begin
    PagTituloPag.ActivePageIndex := 0;
    exit;
  end;

  with cdsTituloPag do
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

    if (not (FieldByName('vlTituloPag').Value > 0)) or
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
    if not cdsTituloPagParc.IsEmpty then
       begin
         //
         with cdsTituloPagMov do
         begin
           First;
           while not Eof do
           begin
             delete;
             first;
           end;
         end;
         //
         with cdsTituloPagParc do
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
    vlParcela := funcao.ArredondaMoeda(FieldByName('vlTituloPag').Value/FieldByName('qtParcelas').AsInteger);
    vlPrimeira := FieldByName('vlTituloPag').Value-(vlParcela*(FieldByName('qtParcelas').AsInteger-1));
    dtParcela := FieldByName('dtVencimentoIni').AsDateTime;
    for i := 1 to FieldByName('qtParcelas').AsInteger do
    begin
      If not cdsTituloPagParc.Active then
        cdsTituloPagParc.Open;
      cdsTituloPagParc.Append;
      if trim(FieldByName('idTituloPag').AsString) = '' then
        cdsTituloPagParc.FieldByName('idTituloPag').Value := 0
      else
        cdsTituloPagParc.FieldByName('idTituloPag').Value := FieldByName('idTituloPag').Value;
      cdsTituloPagParc.FieldByName('idParcela').Value := i;
      cdsTituloPagParc.FieldByName('dtVencimento').Value := dtParcela;
      cdsTituloPagParc.FieldByName('stTituloPagParc').AsString := 'ATIVO';
      if i = 1 then
        cdsTituloPagParc.FieldByName('vlParcela').Value := vlPrimeira
      else
        cdsTituloPagParc.FieldByName('vlParcela').Value := vlParcela;
      cdsTituloPagParc.Post;
      if FieldByName('incMes').AsString = 'S' then
        dtParcela := IncMonth(FieldByName('dtVencimentoIni').AsDateTime, i)
      else
        dtParcela := dtParcela + FieldByName('diasVencimento').Value;
    end; //fim do for i := 1 to FieldByName('qtParcelas').AsInteger do
  end; //fim do with cdsTituloPag do
  SomaParcelas;
  GeraMovimentacao;
end;

procedure TFrmCadAbastecimento.GeraRateio;
//procedure responsável por realizar o cálculo do rateio
//será executada todas as vezes que for necessário
var
  vlDif, vlTotalRateio : currency;
  idAbCusto : Integer;
begin
   LimpaRateio;
   if cdsPadrao.FieldByName('idResultado').AsInteger > 0 then
   begin
     if not (cdsPadrao.FieldByName('idGerencial').AsInteger > 0) then
     begin
       messagedlg('Você deve informar o gerencial!', mtwarning, [mbok], 0);
       exit;
     end;
     if cdsCusto.State in [dsInsert, dsEdit] then
       cdsCusto.Cancel;
     cdsCusto.Append;
     cdsCustoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
     cdsCustoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
     if cdsPadrao.FieldByName('idAbastecimento').AsInteger > 0 then
       cdsCustoidAbastecimento.AsInteger := cdsPadrao.FieldByName('idAbastecimento').AsInteger
     else
       cdsCustoidAbastecimento.AsInteger := 0;
     if cdsCustoidAbastecimentoCusto.AsString = '' then
        cdsCustoidAbastecimentoCusto.AsInteger := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idAbastecimentoCusto) id FROM AbastecimentoCusto').FieldByName('id').AsInteger +1;
     cdsCustoidResultado.AsInteger := cdsPadrao.FieldByName('idResultado').AsInteger;
     cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
     cdsCustoprRateio.AsFloat := 100;
     cdsCustovlRateio.AsCurrency := cdsPadrao.FieldByName('vlTotal').AsCurrency;
     cdsCusto.Post;
   end
   else
     if cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
     begin
       if not (cdsPadrao.FieldByName('idGerencial').AsInteger > 0) then
       begin
         messagedlg('Você deve informar o gerencial!', mtwarning, [mbok], 0);
         exit;
       end;

       with cdsRateio do
       begin
         Active := false;
         CommandText := 'SELECT * FROM RateioItem WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
                                  ' AND idRateio = ' + cdsPadrao.FieldByName('idRateio').AsString;
         Active := true;

         if cdsRateio.RecordCount = 0 then
           exit;
         idAbCusto := 1;
         First;
         while not eof do
         begin
           if cdsCusto.State in [dsInsert, dsEdit] then
             cdsCusto.Cancel;
           cdsCusto.Append;
           cdsCustoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
           cdsCustoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
           if cdsPadrao.FieldByName('idAbastecimento').AsInteger > 0 then
             cdsCustoidAbastecimento.AsInteger := cdsPadrao.FieldByName('idAbastecimento').AsInteger
           else
             cdsCustoidAbastecimento.AsInteger := 0;
           cdsCustoidAbastecimentoCusto.AsInteger := idAbCusto;
           cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
           cdsCustoidResultado.AsInteger := FieldByName('idResultado').AsInteger;
           cdsCustoprRateio.AsFloat := FieldByName('prRateio').AsFloat;
           cdsCustovlRateio.AsCurrency := RoundTo((cdsPadrao.FieldByName('vlTotal').AsCurrency*FieldByName('prRateio').AsFloat)/100, -2);
           cdsCusto.Post;
           idAbCusto := idAbCusto + 1;
           Next;
         end; // fim do while not eof do
         vlTotalRateio := 0;
         if not (cdsCustovlTotalRateio.IsNull) then
           if cdsCustovlTotalRateio.Value > 0 then
             vlTotalRateio := cdsCustovlTotalRateio.Value;

         vlDif := cdsPadrao.FieldByName('vlTotal').AsCurrency-vlTotalRateio;
         if vlDif <> 0 then
         begin
           cdsCusto.IndexFieldNames := 'vlRateio';
           cdsCusto.Last;
           cdsCusto.Edit;
           cdsCustovlRateio.AsCurrency := cdsCustovlRateio.AsCurrency + vlDif;
           cdsCusto.Post;
           cdsCusto.IndexFieldNames := '';
         end;
       end; //fim do with cdsRateio do
     end; // fim do if cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
end;

procedure TFrmCadAbastecimento.HabilitaRatRes;
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

procedure TFrmCadAbastecimento.IniciaFinancas;
begin
//verifica para deixar disponível para inserção as tabelas financeiras
  cdsMovCaixa.Active := false;
  cdsMovCaixa.CommandText := 'SELECT * FROM MovCaixa WHERE 1=2';
  cdsMovConta.Active := false;
  cdsMovConta.CommandText := 'SELECT * FROM MovConta WHERE 1=2';
  cdsTituloPag.Active := false;
  cdsTituloPag.CommandText := 'SELECT * FROM TituloPag WHERE 1=2';
  cdsTituloPag.Active := true;
  cdsTituloPagParc.Active := false;
  cdsTituloPagParc.CommandText := 'SELECT * FROM TituloPagParc WHERE 1=2';
  cdsTituloPagMov.Active := false;
  cdsTituloPagMov.CommandText := 'SELECT * FROM TituloPagMov WHERE 1=2';

  if (trim(DBEidAbastecimento.Text) <> '') then
  begin
    if cdsPadrao.State <> dsInsert then
    begin
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidAbastecimento], '', 'AbastecimentoFinanc') do
      begin
        if IsEmpty then
          exit;
        if FieldByName('idMovCaixa').Value > 0 then
        Begin
          cdsMovCaixa.Active := False;
          cdsMovCaixa.CommandText := 'SELECT * FROM MovCaixa WHERE idMovCaixa = ' + FieldByName('idMovCaixa').AsString;
        End;
        if FieldByName('idMovConta').Value > 0 then
        Begin
          cdsMovConta.Active := False;
          cdsMovConta.CommandText := 'SELECT * FROM MovConta WHERE idMovConta = ' + FieldByName('idMovConta').AsString;
        End;
        if FieldByName('idTituloPag').Value > 0 then
        begin
          cdsTituloPag.Active := False;
          cdsTituloPag.CommandText := 'SELECT * FROM TituloPag WHERE idTituloPag = ' + FieldByName('idTituloPag').AsString;
          cdsTituloPagParc.Active := False;
          cdsTituloPagParc.CommandText := 'SELECT * FROM TituloPagParc WHERE idTituloPag = ' + FieldByName('idTituloPag').AsString;
          cdsTituloPagMov.Active := False;
          cdsTituloPagMov.CommandText := 'SELECT * FROM TituloPagMov WHERE idTituloPag = ' + FieldByName('idTituloPag').AsString;
          cdsTituloPagMov.Active := True;
        end;
      end; // fim do with
    end; // fim do if cdsPadrao.state then
  end;
  cdsMovCaixa.Active := true;
  cdsMovConta.Active := true;
  cdsTituloPag.Active := true;
  cdsTituloPagMov.Active := true;
  TabTituloPag.Enabled := (cdsTituloPag.RecordCount = 0) Or (cdsTituloPag.FieldByName('stTituloPag').asString = 'ATIVO');
  cdsTituloPagParc.Active := true;
end;

procedure TFrmCadAbastecimento.LimpaRateio;
//procedure que limpará os dados do rateio para gerar novamente
begin
  cdsCusto.First;
  while not cdsCusto.Eof do
  begin
    cdsCusto.Delete;
    cdsCusto.First;
  end;
end;

procedure TFrmCadAbastecimento.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 530;
    Width := 590;
  end
  else
    if PagAbas.ActivePageIndex = 1 then
    begin
      Height := 530;
      Width := 700;
    end
    else
      if PagAbas.ActivePageIndex = 2 then
      begin
        Height := 550;
        Width := 730;
      end;
end;

procedure TFrmCadAbastecimento.PagTituloPagChange(Sender: TObject);
begin
  inherited;
  if (Sender as TCPageControl).ActivePageIndex = 0 then
    (Sender as TCPageControl).Align := alnone
  else
  begin
    (Sender as TCPageControl).Align := alclient;
    if (cdsTituloPag.State in [dsInsert]) and (cdsTituloPagParc.IsEmpty) then
      GeraParcelas;
  end;
  grpCaixa.Visible := (Sender as TCPageControl).Align = alnone;
  grpBanco.Visible := (Sender as TCPageControl).Align = alnone;
end;

procedure TFrmCadAbastecimento.RetornaSaldoEstoque;
var
  sql : string;
begin
  vlCustoMedio := 0;
  qtSaldoAtual := 0;
  qtSaldo := 0;
  if trim(DBEidProduto.Text) <> '' then
  begin //busca o saldo e valor de custo médio do produto
    if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
      sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, %s', [DBEidEmpresa.Text, DBEidProduto.Text, DBEidProdDeposito.Text,
             funcao.ConverteData(date), QuotedStr('SEL'), funcao.RetornaValorEField(DBEidSafra, 3)])
    else
      sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, 0', [DBEidEmpresa.Text, DBEidProduto.Text, DBEidProdDeposito.Text,
             funcao.ConverteData(date), QuotedStr('SEL')]);

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      qtSaldoAtual := FieldByName('qtProduto').Value;
      vlCustoMedio := FieldByName('vlCustoMedio').AsCurrency;
    end;

    //Agora busca o saldo
    if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
      sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, %s', [DBEidEmpresa.Text, DBEidProduto.Text, DBEidProdDeposito.Text,
             funcao.RetornaValorEField(DBEdtAbastecimento, 3), QuotedStr('SEL'), funcao.RetornaValorEField(DBEidSafra, 3)])
    else
      sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, 0', [DBEidEmpresa.Text, DBEidProduto.Text, DBEidProdDeposito.Text,
             funcao.RetornaValorEField(DBEdtAbastecimento, 3), QuotedStr('SEL')]);

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
      qtSaldo := FieldByName('qtProduto').Value;
  end;
end;

procedure TFrmCadAbastecimento.SomaParcelas;
begin
  vlTotalParcelas := 0;
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsTituloPag.FieldByName('vlTituloPag').AsCurrency-vlTotalParcelas), 6, '');
  With cdsTituloPagParc do
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
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsTituloPag.FieldByName('vlTituloPag').AsCurrency-vlTotalParcelas), 6, '');
end;

end.
