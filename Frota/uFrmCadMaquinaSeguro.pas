unit uFrmCadMaquinaSeguro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, CFind, DB, SqlExpr, Provider,
  DBClient, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl,
  CDBRadioGroup, CDBMemo, CGroupBox, Grids, DBGrids, CDBGrid, CDBCheckBox, DBXcommon,
  Math, System.Actions;

type
  TFrmCadMaquinaSeguro = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel7: TCLabel;
    CLabel11: TCLabel;
    CLabel59: TCLabel;
    LblCad: TCLabel;
    DBEidMaquina: TCDBEdit;
    DBEdtEmissao: TCDBEdit;
    CLookUp10: TCLookUp;
    DBMMdescSeguro: TCDBMemo;
    DBEhr_kmAtual: TCDBEdit;
    DBEvlSeguro: TCDBEdit;
    lookEstadoFor: TCLookUp;
    lookCidadeFor: TCLookUp;
    lookEnderecoFor: TCLookUp;
    lookIeFornecedor: TCLookUp;
    LookFornecedorFiscal: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidSeguro: TIntegerField;
    cdsPadraodescSeguro: TStringField;
    cdsPadraodtEmissao: TSQLTimeStampField;
    cdsPadraodtVencimento: TSQLTimeStampField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidSeguradora: TIntegerField;
    cdsPadraohr_kmAtual: TFMTBCDField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidRateio: TIntegerField;
    cdsPadraovlSeguro: TFMTBCDField;
    CGroupBox2: TCGroupBox;
    CLabel12: TCLabel;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
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
    TabAntigos: TTabSheet;
    TabCustos: TTabSheet;
    cdsTituloPagMov: TClientDataSet;
    dsTituloPagParc: TDataSource;
    cdsTituloPagParc: TClientDataSet;
    dspTituloPagParc: TDataSetProvider;
    dspTituloPagMov: TDataSetProvider;
    sdsTituloPagMov: TSQLDataSet;
    sdsTituloPagParc: TSQLDataSet;
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
    dsTituloPag: TDataSource;
    dsMovConta: TDataSource;
    dsMovCaixa: TDataSource;
    cdsMovCaixa: TClientDataSet;
    cdsMovConta: TClientDataSet;
    dspMovConta: TDataSetProvider;
    dspMovCaixa: TDataSetProvider;
    sdsMovCaixa: TSQLDataSet;
    sdsMovConta: TSQLDataSet;
    Group1: TCGroupBox;
    DBGrid: TCDBGrid;
    dsSegAnteriores: TDataSource;
    cdsSegAnteriores: TClientDataSet;
    dspSegAnteriores: TDataSetProvider;
    sdsSegAnteriores: TSQLDataSet;
    cdsSegAnterioresidEmpresa: TIntegerField;
    cdsSegAnterioresidCadEmpresa: TSmallintField;
    cdsSegAnterioresidSeguro: TIntegerField;
    cdsSegAnterioresidMaquina: TIntegerField;
    cdsSegAnterioresdescSeguro: TStringField;
    cdsSegAnterioresdtEmissao: TSQLTimeStampField;
    cdsSegAnterioresdtVencimento: TSQLTimeStampField;
    cdsSegAnterioresidFornecedor: TIntegerField;
    cdsSegAnterioresidSeguradora: TIntegerField;
    cdsSegAnterioreshr_kmAtual: TFMTBCDField;
    cdsSegAnterioresidSafra: TIntegerField;
    cdsSegAnterioresidGerencial: TIntegerField;
    cdsSegAnterioresidResultado: TIntegerField;
    cdsSegAnterioresidRateio: TSmallintField;
    cdsSegAnterioresvlSeguro: TFMTBCDField;
    dsCusto: TDataSource;
    cdsCusto: TClientDataSet;
    cdsCustovlTotalRateio: TAggregateField;
    dspCusto: TDataSetProvider;
    sdsCusto: TSQLDataSet;
    cdsCustoidEmpresa: TIntegerField;
    cdsCustoidCadEmpresa: TSmallintField;
    cdsCustoidSeguro: TIntegerField;
    cdsCustoidGerencial: TIntegerField;
    cdsCustoidResultado: TIntegerField;
    cdsCustoprRateio: TFMTBCDField;
    cdsCustovlRateio: TFMTBCDField;
    cdsResultado: TClientDataSet;
    cdsProduto: TClientDataSet;
    cdsCustodescResultado: TStringField;
    TabFinancas: TTabSheet;
    DBEidMovCaixa: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    DBEidTituloPag: TCDBEdit;
    grpCaixa: TCGroupBox;
    CLabel75: TCLabel;
    CLabel74: TCLabel;
    CLabel79: TCLabel;
    CLabel66: TCLabel;
    DBEvlMovCaixa: TCDBEdit;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CBitBtn2: TCBitBtn;
    DBEdescMovCaixa: TCDBEdit;
    DBEdtMovCaixa: TCDBEdit;
    grpBanco: TCGroupBox;
    CLabel83: TCLabel;
    CLabel98: TCLabel;
    CLabel82: TCLabel;
    CLabel81: TCLabel;
    CLabel64: TCLabel;
    CLabel65: TCLabel;
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
    CLabel84: TCLabel;
    CLabel124: TCLabel;
    CLabel125: TCLabel;
    CLabel126: TCLabel;
    CLabel127: TCLabel;
    CLabel128: TCLabel;
    CLabel129: TCLabel;
    CLabel131: TCLabel;
    CLabel130: TCLabel;
    CLabel19: TCLabel;
    CLabel117: TCLabel;
    CLabel20: TCLabel;
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
    CBitBtn18: TCBitBtn;
    LookLancamento: TCLookUp;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLookUp4: TCLookUp;
    CLookUp5: TCLookUp;
    CLookUp6: TCLookUp;
    DBEidContaFor: TCDBEdit;
    DBEvlTituloPag: TCDBEdit;
    DBEidPortador: TCDBEdit;
    LookPortador: TCLookUp;
    DBEnrTituloPag: TCDBEdit;
    CLookUp3: TCLookUp;
    DBEidDocSerieT: TCDBEdit;
    LookHabilita: TCLookUp;
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
    CGroupBox15: TCGroupBox;
    BtnAdicionarCusto: TCBitBtn;
    BtnCancelarCusto: TCBitBtn;
    BtnRetirarCusto: TCBitBtn;
    BtnNovoCusto: TCBitBtn;
    CGroupBox3: TCGroupBox;
    CLabel44: TCLabel;
    CLabel14: TCLabel;
    CLabel157: TCLabel;
    CLabel13: TCLabel;
    CLabel18: TCLabel;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    DBEvlSeguro2: TCDBEdit;
    LookResultadoC: TCLookUp;
    DBEidResultadoR: TCDBEdit;
    DBEidGerencialR: TCDBEdit;
    LookGerencialC: TCLookUp;
    CGroupBox4: TCGroupBox;
    DBGridCusto: TCDBGrid;
    CGroupBox5: TCGroupBox;
    CLabel15: TCLabel;
    DBEvlTotalRateio: TCDBEdit;
    cdsRateio: TClientDataSet;
    cdsRateioidEmpresa: TIntegerField;
    cdsRateioidRateio: TSmallintField;
    cdsRateioidResultado: TIntegerField;
    cdsRateioprRateio: TFMTBCDField;
    sdsPadrao: TSQLDataSet;
    DBEidSeguro: TCDBEdit;
    DBEdtVencimentoSeg: TCDBEdit;
    CLabel6: TCLabel;
    CLabel8: TCLabel;
    DBEidSeguradora: TCDBEdit;
    LookSeguradora: TCLookUp;
    cdsTituloPagMovidTituloPagMov: TIntegerField;
    cdsTituloPagMovidEmpresa: TIntegerField;
    cdsTituloPagMovidFornecedor: TIntegerField;
    cdsTituloPagMovidTituloPag: TIntegerField;
    cdsTituloPagMovidParcela: TSmallintField;
    cdsTituloPagMovidMovFinanceira: TIntegerField;
    cdsTituloPagMovdtTituloPagMov: TSQLTimeStampField;
    cdsTituloPagMovvlTituloPagMov: TFMTBCDField;
    cdsTituloPagMovfator: TSmallintField;
    cdsTituloPagMovidCadEmpresa: TSmallintField;
    cdsPadraostSeguro: TStringField;
    cdsSegAnterioresstSeguro: TStringField;
    DBEstSeguro: TCDBEdit;
    CLabel9: TCLabel;
    cdsTituloPagidDocumento: TIntegerField;
    cdsPadraovlParcelaDif: TCurrencyField;
    dspFinanc: TDataSetProvider;
    cdsFinanc: TClientDataSet;
    sdsFinanc: TSQLDataSet;
    cdsFinancidEmpresa: TIntegerField;
    cdsFinancidCadEmpresa: TSmallintField;
    cdsFinancidSeguro: TIntegerField;
    cdsFinancidTituloPag: TIntegerField;
    cdsFinancidMovConta: TIntegerField;
    cdsFinancidMovCaixa: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidSeguroExit(Sender: TObject);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure cdsTituloPagAfterInsert(DataSet: TDataSet);
    procedure cdsTituloPagMovAfterInsert(DataSet: TDataSet);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure SomaParcelas;
    procedure GeraParcelas;
    procedure GeraMovimentacao;
    procedure DBEidPortadorEnter(Sender: TObject);
    procedure DBEidPortadorExit(Sender: TObject);
    procedure IniciaFinancas;
    procedure HabilitaRatRes;
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure BtnAdicionarCustoClick(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidMaquinaEnter(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure ConfigMaquina;
    procedure GeraRateio;
    procedure LimpaRateio;
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEobsTituloPagExit(Sender: TObject);
    procedure dsCustoStateChange(Sender: TObject);
    procedure dspTituloPagMovBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspMovCaixaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure BuscaAnteriores;
    procedure EncerraAnterior;
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidDocSerieTExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure cdsCustoAfterEdit(DataSet: TDataSet);
    procedure dspCustoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure PagTituloPagChange(Sender: TObject);
    procedure cdsTituloPagParcAfterInsert(DataSet: TDataSet);
    procedure cdsTituloPagAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    vlAnterior : string;
    vlProdAnterior, vlTotalParcelas : currency;
  public
    { Public declarations }
  end;

var
  FrmCadMaquinaSeguro: TFrmCadMaquinaSeguro;

implementation

uses uFuncao, uDmFind, uDmPadrao, uFrmPrincipal, uFrmPesSeguro;

{$R *.dfm}

procedure TFrmCadMaquinaSeguro.actExcluirExecute(Sender: TObject);
var
  sql, sqlMov : string;
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
        dmPadrao.dbConexao.ExecuteDirect(sqlMov);
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
  end;
  sql := 'DELETE FROM MaquinaSeguroFinanc ' +
         ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
         ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
         ' AND idSeguro = ' + QuotedStr(cdsPadrao.FieldByName('idSeguro').AsString);
  dmPadrao.dbConexao.ExecuteDirect(sql);
  if sqlMov <> '' then
    dmPadrao.dbConexao.ExecuteDirect(sqlMov);


  sql := 'DELETE FROM MaquinaSeguroCusto ' +
         ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
         ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
         ' AND idSeguro = ' + QuotedStr(cdsPadrao.FieldByName('idSeguro').AsString);
  dmPadrao.dbConexao.ExecuteDirect(sql);

  sql := 'DELETE FROM MaquinaSeguro ' +
         ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
         ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
         ' AND idSeguro = ' + QuotedStr(cdsPadrao.FieldByName('idSeguro').AsString);
  dmPadrao.dbConexao.ExecuteDirect(sql);
  BtnNovo.Click;
end;

procedure TFrmCadMaquinaSeguro.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesSeguro, FrmPesSeguro);
  FrmPesSeguro.idEmpresa := DBEidEmpresa.Text;
  FrmPesSeguro.idCadEmpresa  := DBEidCadEmpresa.Text;
//  FrmPesSeguro.cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
//  FrmPesSeguro.cdsPadrao.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  FrmPesSeguro.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesSeguro.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesSeguro.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesSeguro.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesSeguro.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesSeguro.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idSeguro').Value := FrmPesSeguro.cdsGrid.FieldByName('idSeguro').Value;
      PagAbas.ActivePageIndex := 0;
      DBEidSeguro.SetFocus;
      DBEidSeguroExit(DBEidSeguro);
    end;
  end;
end;

procedure TFrmCadMaquinaSeguro.actSalvarExecute(Sender: TObject);
var
  msg, sql, sqlIns : string;
  t : TDBXTransaction;
  vlTotalRateio : currency;
  idTituloPag : integer;
begin
  msg := '';

  if cdsCusto.State in [dsEdit, dsInsert] then
    cdsCusto.Cancel;

  vlTotalRateio := 0;
  if not (cdsCustovlTotalRateio.IsNull) then
    if cdsCustovlTotalRateio.Value > 0 then
      vlTotalRateio := cdsCustovlTotalRateio.Value;

  if cdsCusto.RecordCount > 0 then
    if cdsPadrao.FieldByName('vlSeguro').AsCurrency <> vlTotalRateio then
      msg := 'O valor total do rateio não pode ser diferente do valor total da operação!' + #13;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  dmPadrao.dbConexao.CloseDataSets;

  if not dmPadrao.dbConexao.InTransaction then
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try

    //busca a numeração em caso de nova Manutenção
    GravaChave(1, '', nil);
    inherited;

    EncerraAnterior;
    dmPadrao.dbConexao.CloseDataSets;
    sql := 'EXEC spFechaMaquinaSeguro ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                              DBEidSeguro.Text + ', ' +
                                              funcao.RetornaValorEField(DBEidTituloPag, 3) + ', ' +
                                              QuotedStr(DBEidMovConta.Text) + ', ' +
                                              QuotedStr(DBEidMovCaixa.Text);
    dmPadrao.dbConexao.ExecuteDirect(sql);
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

    //***************** DADOS FINANCEIROS ********************//
    cdsFinanc.Active := false;
    cdsFinanc.CommandText := 'SELECT * FROM MaquinaSeguroFinanc WHERE idEmpresa = '+ DBEidEmpresa.Text +
                             ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idSeguro = ' + DBEidSeguro.Text;
    cdsFinanc.Active := true;
    if cdsFinanc.RecordCount > 0  then
      cdsFinanc.Edit
    else
    begin
      cdsFinanc.Append;
      cdsFinancidEmpresa.AsInteger := cdsPadraoidEmpresa.AsInteger;
      cdsFinancidCadEmpresa.AsInteger := cdsPadraoidCadEmpresa.AsInteger;
      cdsFinancidSeguro.AsInteger := cdsPadraoidSeguro.AsInteger;
    end;
    //verifica alterações na tabela caixa  -  modificado
    if (trim(DBEidCaixa.Text) <> '') or (trim(DBEvlMovCaixa.Text) <> '') or (trim(DBEdescMovCaixa.Text) <> '') then
    begin
      cdsMovCaixa.FieldByName('fator').AsString := '-1'; //pagando
      cdsMovCaixa.Post;
      cdsMovCaixa.ApplyUpdates(0);
      cdsFinancidMovCaixa.AsInteger := cdsMovCaixa.FieldByName('idMovCaixa').AsInteger;
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela conta -- modificado
    if (trim(DBEidConta.Text) <> '') or (trim(DBEvlMovConta.Text) <> '') or (trim(DBEdescMovConta.Text) <> '') then
    begin
      cdsMovConta.FieldByName('fator').AsString := '-1'; //pagando
      cdsMovConta.Post;
      cdsMovConta.ApplyUpdates(0);
      cdsFinancidMovConta.AsInteger := cdsMovConta.FieldByName('idMovConta').AsInteger;
    end; //fim do verificação de alterações na tabela caixa

    //verifica alterações na tabela caixa
    if funcao.VerificaAlteracoes([cdsTituloPag]) then
    begin
      if cdsTituloPagParc.IsEmpty then
        GeraParcelas;
      if (trim(DBEobsTituloPag.Text) = '') or (trim(DBEnrTituloPag.Text) = '') then
      begin
        if not (cdsTituloPag.State in [dsInsert, dsEdit]) then
          cdsTituloPag.Edit;
        cdsTituloPagobsTituloPag.AsString := 'Ref.: Seguro.: ' + DBEidSeguro.Text;
        cdsTituloPagnrTituloPag.AsString := cdsPadraoidSeguro.AsString;
      end;
      cdsTituloPag.ApplyUpdates(0);
      idTituloPag := cdsTituloPag.FieldByName('idTituloPag').AsInteger;

      //verifica se o padrão está em modo de edição e deleta os rateios associados a esse titulo
      if cdsPadrao.State = dsEdit then
      begin
        sql := 'DELETE FROM TituloPagRateio WHERE idTituloPag = ' + IntToStr(idTituloPag);
        dmPadrao.dbConexao.ExecuteDirect(sql);

        sql := 'DELETE FROM TituloPagMov WHERE idTituloPag = ' + IntToStr(idTituloPag);
        dmPadrao.dbConexao.ExecuteDirect(sql);

      end;
      cdsTituloPagParc.ApplyUpdates(0);
      //
      cdsFinancidTituloPag.AsInteger := cdsTituloPag.FieldByName('idTituloPag').AsInteger;
      cdsTituloPagParc.ApplyUpdates(0);
    end; //fim do verificação de alterações na tabela de titulo
    sql := 'EXEC spFechaSeguroFinanc ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                              DBEidSeguro.Text + ', ' +
                                              funcao.RetornaValorEField(DBEidTituloPag, 3) + ', ' +
                                              QuotedStr(DBEidMovConta.Text) + ', ' +
                                              QuotedStr(DBEidMovCaixa.Text);
    with frmPrincipal.ExecutaSqlRet([], '', sql) do
    begin
      if FieldByName('msg').AsString <> 'OK' then
        raise Exception.Create(FieldByName('msg').AsString);
      close;
    end;

    cdsFinanc.Post;
    cdsFinanc.ApplyUpdates(0);
    //***************** FIM DADOS FINANCEIROS ********************//
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  DBEidSeguroExit(DBEidSeguro);
  Screen.Cursor := crDefault;
end;

procedure TFrmCadMaquinaSeguro.BtnAdicionarCustoClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, BtnNovoCusto, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarCusto' then
    BtnNovoCusto.Click;

  DBEidResultadoR.SetFocus;
end;

procedure TFrmCadMaquinaSeguro.BtnSalvarParcClick(Sender: TObject);
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
//    GeraMovimentacao;
  end;

  DBEidParcela.SetFocus;
end;

procedure TFrmCadMaquinaSeguro.BuscaAnteriores;
var
  sql : String;
begin
  if Trim(DBEidMaquina.Text) <> '' then
  begin
    sql := 'SELECT * FROM MaquinaSeguro WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
           ' AND idMaquina = ' + DBEidMaquina.Text;
    if cdsPadraoidSeguro.AsString <> '' then
      sql := sql + ' AND idSeguro <> ' + cdsPadraoidSeguro.AsString;
    cdsSegAnteriores.Active := False;
    cdsSegAnteriores.CommandText := sql;
    cdsSegAnteriores.Active := True;
  end;
end;

procedure TFrmCadMaquinaSeguro.cdsCustoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMaquinaSeguro.cdsMovCaixaAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsPadraovlSeguro.AsCurrency > 0 then
    begin
      valor := cdsPadraovlSeguro.AsCurrency;
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
  DataSet.FieldByName('dtMovCaixa').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('vlMovCaixa').Value := valor;
  DataSet.FieldByName('idMovFinanceira').Value := 11; //Valor pago pelo caixa
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idCadGeral').Value := cdsPadrao.FieldByName('idFornecedor').Value;
end;

procedure TFrmCadMaquinaSeguro.cdsMovContaAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsPadraovlSeguro.AsCurrency > 0 then
    begin
      valor := cdsPadraovlSeguro.AsCurrency;
      if trim(DBEvlTituloPag.Text) <> '' then
        valor := valor - cdsTituloPag.FieldByName('vlTituloPag').AsCurrency;

      if trim(DBEvlMovCaixa.Text) <> '' then
        valor := valor - cdsMovCaixa.FieldByName('vlMovCaixa').AsCurrency;

      if valor < 0 then
        valor := 0;
    end;

  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idMovConta').Value := 0;
  DataSet.FieldByName('dtMovConta').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  if trim(Dataset.FieldByName('idCheque').AsString) = ''  then
    DataSet.FieldByName('idMovFinanceira').Value := 12 //Valor pago pelo banco
  else
    DataSet.FieldByName('idMovFinanceira').Value := 7; //emissão de cheque
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idCadGeral').Value := cdsPadrao.FieldByName('idFornecedor').Value;
  DataSet.FieldByName('impresso').AsString := 'N';
end;

procedure TFrmCadMaquinaSeguro.cdsTituloPagAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMaquinaSeguro.cdsTituloPagAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsPadraovlSeguro.AsCurrency > 0 then
    begin
      valor := cdsPadraovlSeguro.AsCurrency;
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
  DataSet.FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
  DataSet.FieldByName('vlTituloPag').Value := valor;
  DataSet.FieldByName('nrTituloPag').Value := cdsPadrao.FieldByName('idSeguro').Value;
  DataSet.FieldByName('dtEmissao').Value := cdsPadrao.FieldByName('dtEmissao').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idIndice').Value := 1;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 2; //Inclusão de titulo a pagar
  DataSet.FieldByName('stTituloPag').Value := 'ATIVO'; //Status do titulo
  DataSet.FieldByName('incMes').Value := 'N'; //Mesmo dia

end;

procedure TFrmCadMaquinaSeguro.cdsTituloPagMovAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value ;
end;

procedure TFrmCadMaquinaSeguro.cdsTituloPagParcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsTituloPagParc.FieldByName('stTituloPagParc').AsString := 'ATIVO';
end;

procedure TFrmCadMaquinaSeguro.ConfigMaquina;
//procedure que irá buscar os dados quando a máquina for alterada
begin
  //zera os valores de km e hora
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsPadrao.FieldByName('hr_kmAtual').Value := 0;

  if trim(DBEidMaquina.Text) <> '' then
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidMaquina], 'spRetDadosMaquina', '') do
  begin
    First;
    //Ajusta os valores padrões
    cdsPadrao.FieldByName('hr_kmAtual').Value := FieldByName('hr_kmInicial').Value;
  end;
end;

procedure TFrmCadMaquinaSeguro.DBEidDocSerieTExit(Sender: TObject);
begin
  inherited;
  if not(cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMaquinaSeguro.DBEidMaquinaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadMaquinaSeguro.DBEidMaquinaExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCDBEdit).Text) then
  begin
    ConfigMaquina;
    GeraRateio;
  end;
  BuscaAnteriores;
end;

procedure TFrmCadMaquinaSeguro.DBEidPortadorEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidPortador.Text;
end;

procedure TFrmCadMaquinaSeguro.DBEidPortadorExit(Sender: TObject);
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

procedure TFrmCadMaquinaSeguro.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCDBEdit).Text) <> vlAnterior then
  begin
    HabilitaRatRes;
    if (trim(DBEidResultado.Text) <> '') or (trim(DBEidRateio.Text) <> '') then
      GeraRateio;
  end;
end;

procedure TFrmCadMaquinaSeguro.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCusto, [DBEidGerencialR,DBEidResultadoR]);
end;

procedure TFrmCadMaquinaSeguro.DBEidSeguroExit(Sender: TObject);
Var
  HideTit : boolean;
begin
  inherited;
  if (not (BuscaChave(cdsPadrao, chave))) and (trim(DBEidSeguro.Text) <> '') then
  begin
    messagedlg('Manutenção não encontrada! Deixe em branco para novo lançamento!', mtwarning, [mbok], 0);
    DBEidSeguro.SetFocus;
    exit;
  end;

  AbreTabSecundaria;
  IniciaFinancas;
  HabilitaRatRes;
  BuscaAnteriores;

  funcao.SomenteLeitura([DBEidConta], true);

  HideTit := false;

  if cdsPadrao.State = dsBrowse then
    if cdsTituloPag.RecordCount > 0 then
    begin
      //vê a questão do portador
      vlAnterior := '';
      DBEidPortadorExit(DBEidPortador);
      if cdsTituloPagstTituloPag.AsString <> 'ATIVO' then
         HideTit := true;
    end;

  funcao.SomenteLeitura([DBEidDocSerieT, DBEnrTituloPag, DBEvlTituloPag, DBEidPortador, DBEidContaFor,
                         DBEidIndice, DBEqtParcelas, DBEdtVencimentoIni, DBCKincMes, DBEdiasVencimento,
                         DBEprMulta, DBEprJuros, DBEprDescontoT, DBEobsTituloPag, DBEidParcela,
                         DBEdtVencimentoP, DBEvlParcela, BtnSalvarParc, BtnCancelarParc,
                         BtnExcluirParc, BtnNovoParc], HideTit);
end;

procedure TFrmCadMaquinaSeguro.DBEobsTituloPagExit(Sender: TObject);
begin
  inherited;
  if (cdsTituloPag.State in [dsInsert, dsEdit]) then
//    if (cdsTituloPagParc.IsEmpty) then
      GeraParcelas;
end;

procedure TFrmCadMaquinaSeguro.dsCustoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, btnNovoCusto);
end;

procedure TFrmCadMaquinaSeguro.dspCustoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
{  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspProdutos' then
    begin
      GeraAutoInc(DeltaDS, 'MaquinaManutencaoItem', 'idItem', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then }
end;

procedure TFrmCadMaquinaSeguro.dspMovCaixaBeforeUpdateRecord(Sender: TObject;
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
          DeltaDS.FieldByName('dtMovConta').NewValue := cdsPadrao.FieldByName('dtEmissao').Value
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
          DeltaDS.FieldByName('dtEmissao').NewValue := cdsPadrao.FieldByName('dtEmissao').Value;
          DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 2; //Inclusão de titulo a pagar
          DeltaDS.FieldByName('stTituloPag').NewValue := 'ATIVO'; //Status do titulo
        end;
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadMaquinaSeguro.dspTituloPagMovBeforeUpdateRecord(
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

procedure TFrmCadMaquinaSeguro.EncerraAnterior;
var
  sql : string;
begin
  with cdsSegAnteriores do
  begin
    First;
    while not eof do
    begin
      if cdsPadrao.State = dsInsert then
        if FieldByName('stSeguro').AsString = 'ATIVO' then
        begin
          sql := 'UPDATE MaquinaSeguro SET stSeguro = ' + QuotedStr('ENCERRADO') +
                 ' WHERE idEmpresa = ' + FieldByName('idEmpresa').AsString +
                 ' AND idCadEmpresa = ' + FieldByName('idCadEmpresa').AsString +
                 ' AND idSeguro = ' + FieldByName('idSeguro').AsString;
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end;
      Next;
    end;
  end;
end;

procedure TFrmCadMaquinaSeguro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadMaquinaSeguro := nil;
end;

procedure TFrmCadMaquinaSeguro.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCusto;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidSeguro;
  foco := DBEidSeguro;
  tab_chave := 'MaquinaSeguro';
  situacao := 'stSeguro';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 535;
  Width := 692;
end;

procedure TFrmCadMaquinaSeguro.FormShow(Sender: TObject);
begin
  inherited;
  //Por enquanto deixar assim para ver qual vai ser a reação dos clientes a respeito
//  TabFinancas.TabVisible := false;
end;

procedure TFrmCadMaquinaSeguro.GeraMovimentacao;
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

procedure TFrmCadMaquinaSeguro.GeraParcelas;
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
//  GeraMovimentacao;
end;

procedure TFrmCadMaquinaSeguro.GeraRateio;
//procedure responsável por realizar o cálculo do rateio
//será executada todas as vezes que for necessário
var
  vlDif, vlTotalRateio : currency;
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
     if cdsPadrao.FieldByName('idSeguro').AsInteger > 0 then
       cdsCustoidSeguro.AsInteger := cdsPadrao.FieldByName('idSeguro').AsInteger
     else
       cdsCustoidSeguro.AsInteger := 0;
     cdsCustoidResultado.AsInteger := cdsPadrao.FieldByName('idResultado').AsInteger;
     cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
     cdsCustoprRateio.AsFloat := 100;
     cdsCustovlRateio.AsCurrency := cdsPadrao.FieldByName('vlSeguro').AsCurrency;
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
         First;
         while not eof do
         begin
           if cdsCusto.State in [dsInsert, dsEdit] then
             cdsCusto.Cancel;
           cdsCusto.Append;
           cdsCustoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
           cdsCustoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
           if cdsPadrao.FieldByName('idSeguro').AsInteger > 0 then
             cdsCustoidSeguro.AsInteger := cdsPadrao.FieldByName('idSeguro').AsInteger
           else
             cdsCustoidSeguro.AsInteger := 0;
           cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
           cdsCustoidResultado.AsInteger := FieldByName('idResultado').AsInteger;
           cdsCustoprRateio.AsFloat := FieldByName('prRateio').AsFloat;
           cdsCustovlRateio.AsCurrency := RoundTo((cdsPadrao.FieldByName('vlSeguro').AsCurrency*FieldByName('prRateio').AsFloat)/100, -2);
           cdsCusto.Post;
           Next;
         end; // fim do while not eof do
         vlTotalRateio := 0;
         if not (cdsCustovlTotalRateio.IsNull) then
           if cdsCustovlTotalRateio.Value > 0 then
             vlTotalRateio := cdsCustovlTotalRateio.Value;

         vlDif := cdsPadrao.FieldByName('vlSeguro').AsCurrency-vlTotalRateio;
         if vlDif <> 0 then
         begin
           cdsCusto.IndexFieldNames := 'vlRateio';
           cdsCusto.Last;
           cdsCusto.Edit;
           cdsCustovlRateio.AsCurrency := cdsCustovlRateio.AsCurrency + vlDif;
           cdsCusto.Post;
         end;
       end; //fim do with cdsRateio do
     end; // fim do if cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
end;

procedure TFrmCadMaquinaSeguro.HabilitaRatRes;
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

procedure TFrmCadMaquinaSeguro.IniciaFinancas;
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

  if (trim(DBEidSeguro.Text) <> '') then
  begin
    cdsFinanc.Active := false;
    cdsFinanc.CommandText := 'SELECT * FROM MaquinaSeguroFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
                             ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idSeguro = ' + DBEidSeguro.Text;
    cdsFinanc.Active := true;

    if cdsPadrao.State <> dsInsert then
    begin
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidSeguro], '', 'MaquinaSeguroFinanc') do
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
        end;
      end; // fim do with
    end; // fim do if cdsPadrao.state then
  end;

  cdsMovCaixa.Active := true;
  cdsMovConta.Active := true;
  cdsTituloPag.Active := true;

  TabTituloPag.Enabled := (cdsTituloPag.RecordCount = 0) Or (cdsTituloPag.FieldByName('stTituloPag').asString = 'ATIVO');
  cdsTituloPagParc.Active := true;
end;

procedure TFrmCadMaquinaSeguro.LimpaRateio;
//procedure que limpará os dados do rateio para gerar novamente
begin
  cdsCusto.First;
  while not cdsCusto.Eof do
  begin
    cdsCusto.Delete;
    cdsCusto.First;
  end;
end;

procedure TFrmCadMaquinaSeguro.PagTituloPagChange(Sender: TObject);
begin
  inherited;
  if (Sender as TCPageControl).ActivePageIndex = 0 then
    (Sender as TCPageControl).Align := alnone
  else
    (Sender as TCPageControl).Align := alclient;
  grpCaixa.Visible := (Sender as TCPageControl).Align = alnone;
  grpBanco.Visible := (Sender as TCPageControl).Align = alnone;
end;

procedure TFrmCadMaquinaSeguro.SomaParcelas;
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
