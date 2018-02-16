unit uFrmCadMaquinaManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  uFrmCadPadrao, CDBCheckBox, Math, uFrmCadPadraoEmpFiscal, DBXcommon,
  System.Actions;

type
  TFrmCadMaquinaManutencao = class(TFrmCadPadraoEmpFiscal)
    sdsManutencao: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidMaquina: TCDBEdit;
    DBEdtManutencao: TCDBEdit;
    CLabel3: TCLabel;
    DBEidManutencao: TCDBEdit;
    CLabel4: TCLabel;
    DBEidTipoAtividade: TCDBEdit;
    LookTipoAtividade: TCLookUp;
    CLabel8: TCLabel;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    dspProdutos: TDataSetProvider;
    sdsProdutos: TSQLDataSet;
    TabProdutos: TTabSheet;
    cdsCusto: TClientDataSet;
    dsCusto: TDataSource;
    dspCusto: TDataSetProvider;
    sdsCusto: TSQLDataSet;
    CGroupBox9: TCGroupBox;
    CLabel40: TCLabel;
    CLabel45: TCLabel;
    CLabel46: TCLabel;
    DBEqtItem: TCDBEdit;
    DBEvlItem: TCDBEdit;
    DBEvlTotalProd: TCDBEdit;
    CGroupBox10: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox11: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox12: TCGroupBox;
    CLabel43: TCLabel;
    DBEvlTotalGeral: TCDBEdit;
    DBCKmovimentaEstoque: TCDBCheckBox;
    TabCusto: TTabSheet;
    CGroupBox15: TCGroupBox;
    BtnAdicionarCusto: TCBitBtn;
    BtnCancelarCusto: TCBitBtn;
    BtnRetirarCusto: TCBitBtn;
    BtnNovoCusto: TCBitBtn;
    CLookUp10: TCLookUp;
    DBMobsManutencao: TCDBMemo;
    CLabel5: TCLabel;
    CGroupBox2: TCGroupBox;
    CBitBtn6: TCBitBtn;
    LookRateio: TCLookUp;
    DBEidRateio: TCDBEdit;
    CLabel12: TCLabel;
    CBitBtn5: TCBitBtn;
    LookTalhao: TCLookUp;
    DBEidResultado: TCDBEdit;
    CLabel1: TCLabel;
    CBitBtn7: TCBitBtn;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    CLabel2: TCLabel;
    DBEhr_kmAtual: TCDBEdit;
    CLabel7: TCLabel;
    DBEvlManutencao: TCDBEdit;
    CLabel11: TCLabel;
    cdsProduto: TClientDataSet;
    cdsProdutosdescProduto: TStringField;
    cdsProdutosvlTotalProd: TCurrencyField;
    cdsProdutosvlTotalGeral: TAggregateField;
    CGroupBox3: TCGroupBox;
    CLabel44: TCLabel;
    CLabel14: TCLabel;
    CLabel157: TCLabel;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    DBEvlManutencao2: TCDBEdit;
    CGroupBox4: TCGroupBox;
    DBGridCusto: TCDBGrid;
    LookResultadoC: TCLookUp;
    DBEidResultadoR: TCDBEdit;
    CLabel13: TCLabel;
    cdsCustoidEmpresa: TIntegerField;
    cdsCustoidCadEmpresa: TSmallintField;
    cdsCustoidResultado: TIntegerField;
    cdsCustoprRateio: TFMTBCDField;
    cdsCustovlRateio: TFMTBCDField;
    cdsResultado: TClientDataSet;
    cdsCustodescResultado: TStringField;
    cdsRateio: TClientDataSet;
    cdsRateioidEmpresa: TIntegerField;
    cdsRateioidRateio: TSmallintField;
    cdsRateioidResultado: TIntegerField;
    cdsRateioprRateio: TFMTBCDField;
    CGroupBox5: TCGroupBox;
    CLabel15: TCLabel;
    DBEvlTotalRateio: TCDBEdit;
    cdsCustovlTotalRateio: TAggregateField;
    cdsProdutosidEmpresa: TIntegerField;
    cdsProdutosidCadEmpresa: TSmallintField;
    cdsProdutosidManutencao: TIntegerField;
    cdsProdutosidItem: TSmallintField;
    cdsProdutostpItem: TStringField;
    cdsProdutosdescItem: TStringField;
    cdsProdutosidProduto: TIntegerField;
    cdsProdutosvlItem: TFMTBCDField;
    cdsProdutosqtItem: TFMTBCDField;
    cdsProdutosmovimentaEstoque: TStringField;
    cdsProdutosdtGarantia: TSQLTimeStampField;
    CGroupBox8: TCGroupBox;
    CLabel10: TCLabel;
    CBitBtn4: TCBitBtn;
    LookProdDeposito: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    DBEidItem: TCDBEdit;
    CLabel6: TCLabel;
    DBRGtpItem: TCDBRadioGroup;
    DBMdescItem: TCDBMemo;
    CLabel9: TCLabel;
    DBEdtGarantia: TCDBEdit;
    CLabel16: TCLabel;
    DBEinfoGarantia: TCDBEdit;
    CLabel17: TCLabel;
    cdsProdutosinfoGarantia: TStringField;
    cdsCustoidManutencao: TIntegerField;
    DBEidGerencial: TCDBEdit;
    CLookUp2: TCLookUp;
    CLabel86: TCLabel;
    DBEidGerencialR: TCDBEdit;
    LookGerencialC: TCLookUp;
    CLabel18: TCLabel;
    cdsCustoidGerencial: TIntegerField;
    CBitBtn1: TCBitBtn;
    TabFinancas: TTabSheet;
    dspMovCaixa: TDataSetProvider;
    sdsMovCaixa: TSQLDataSet;
    cdsMovCaixa: TClientDataSet;
    dsMovCaixa: TDataSource;
    dspMovConta: TDataSetProvider;
    sdsMovConta: TSQLDataSet;
    cdsMovConta: TClientDataSet;
    dsMovConta: TDataSource;
    dsTituloPagParc: TDataSource;
    cdsTituloPagParc: TClientDataSet;
    dspTituloPagParc: TDataSetProvider;
    sdsTituloPagParc: TSQLDataSet;
    sdsTituloPag: TSQLDataSet;
    dspTituloPag: TDataSetProvider;
    dsTituloPag: TDataSource;
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
    cdsProdutosfin: TIntegerField;
    CLabel21: TCLabel;
    DBEvlTotalFin: TCDBEdit;
    cdsProdutosvlTotalFin: TAggregateField;
    lookEstadoFor: TCLookUp;
    lookCidadeFor: TCLookUp;
    lookEnderecoFor: TCLookUp;
    lookIeFornecedor: TCLookUp;
    CLabel59: TCLabel;
    LookFornecedorFiscal: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    LblCad: TCLabel;
    FindConta: TCFind;
    DBRGtpManutencao: TCDBRadioGroup;
    LookHabilita: TCLookUp;
    CLabel22: TCLabel;
    DBEvlDescontoTotal: TCDBEdit;
    BtnRecalcular: TCBitBtn;
    DBEcodFabricante: TCDBEdit;
    CLabel23: TCLabel;
    cdsProdutoscodFabricante: TStringField;
    DBEidNf: TCDBEdit;
    CLabel24: TCLabel;
    DBEidMovCaixa: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    DBEidTituloPag: TCDBEdit;
    cdsFinanc: TClientDataSet;
    dspFinanc: TDataSetProvider;
    sdsFinanc: TSQLDataSet;
    cdsFinancidEmpresa: TIntegerField;
    cdsFinancidCadEmpresa: TSmallintField;
    cdsFinancidManutencao: TIntegerField;
    cdsFinancidTituloPag: TIntegerField;
    cdsFinancidMovConta: TIntegerField;
    cdsFinancidMovCaixa: TIntegerField;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel41: TCLabel;
    cdsTituloPagidDocumento: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidManutencao: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidTipoAtividade: TSmallintField;
    cdsPadraotpManutencao: TStringField;
    cdsPadraodtManutencao: TSQLTimeStampField;
    cdsPadraohr_kmAtual: TFMTBCDField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidRateio: TSmallintField;
    cdsPadraoidProdDeposito: TSmallintField;
    cdsPadraovlManutencao: TFMTBCDField;
    cdsPadraoobsManutencao: TStringField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraovlDescontoTotal: TFMTBCDField;
    cdsPadraoidNf: TStringField;
    DBEstTituloPag: TCDBEdit;
    procedure PagAbasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure cdsProdutosAfterEdit(DataSet: TDataSet);
    procedure dspProdutosBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure cdsProdutosCalcFields(DataSet: TDataSet);
    procedure dsProdutosStateChange(Sender: TObject);
    procedure DBEidManutencaoExit(Sender: TObject);
    procedure BtnAdicionarCustoClick(Sender: TObject);
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure DBEidMaquinaEnter(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure ConfigMaquina;
    procedure HabilitaRatRes;
    procedure DBEidResultadoExit(Sender: TObject);
    procedure GeraRateio;
    procedure LimpaRateio;
    procedure actExcluirExecute(Sender: TObject);
    procedure PagTituloPagChange(Sender: TObject);
    procedure DBEidItemExit(Sender: TObject);
    procedure RetornaCustoMedio;
    procedure DBEidProdutoEnter(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure DBRGtpItemExit(Sender: TObject);
    procedure IniciaFinancas;
    procedure cdsTituloPagAfterInsert(DataSet: TDataSet);
    procedure cdsMovCaixaAfterInsert(DataSet: TDataSet);
    procedure cdsMovContaAfterInsert(DataSet: TDataSet);
    procedure dspMovCaixaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure GeraParcelas;
    procedure SomaParcelas;
    procedure DBCKincMesExit(Sender: TObject);
    procedure DBEidProdDepositoExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure DBEidPortadorEnter(Sender: TObject);
    procedure DBEidPortadorExit(Sender: TObject);
    procedure dsCustoStateChange(Sender: TObject);
    procedure DBEobsTituloPagExit(Sender: TObject);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure BtnRecalcularClick(Sender: TObject);
    procedure DBCKmovimentaEstoqueExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEcodFabricanteExit(Sender: TObject);
    procedure DBEidNfExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsMovCaixaAfterEdit(DataSet: TDataSet);
    procedure DBEvlTituloPagEnter(Sender: TObject);
    procedure DBEvlTituloPagExit(Sender: TObject);
    procedure dsTituloPagParcStateChange(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
    vlProdAnterior, vlTotalParcelas : currency;
  public
    { Public declarations }
  end;

var
  FrmCadMaquinaManutencao: TFrmCadMaquinaManutencao;

implementation

uses uDmPadrao, uDmFind, uFuncao, uFrmPrincipal, uFrmPesManutencao, uFrmPesProd;

{$R *.dfm}

procedure TFrmCadMaquinaManutencao.PagAbasChange(Sender: TObject);
var
  msg : string;
begin
  inherited;
  if PagAbas.ActivePageIndex = 2 then //custo
  begin
    cdsResultado.Active := false;
    cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
    cdsResultado.Active := true;
  end
  else
    if PagAbas.ActivePageIndex = 3 then //finanças
    begin
      msg := '';
      if cdsCusto.RecordCount = 0 then
        msg := 'Rateio não informado!' + #13;
      if (trim(DBEidSafra.Text) = '') then
        msg := msg + 'A safra deve ser informada!' + #13;
      if (trim(DBEidGerencial.Text) = '') then
        msg := msg + 'O gerencial deve ser informado!' + #13;

      if (trim(DBEidFornecedor.Text) = '') then
        msg := msg + 'O Fornecedor deve ser informado!' + #13;

      if trim(msg) <> '' then
      begin
        messagedlg(msg, mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
    end;
end;

procedure TFrmCadMaquinaManutencao.PagTituloPagChange(Sender: TObject);
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

procedure TFrmCadMaquinaManutencao.RetornaCustoMedio;
var
  sql : string;
begin
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
      cdsProdutosvlItem.AsCurrency := FieldByName('vlCustoMedio').Value;
    end;
  end;
end;

procedure TFrmCadMaquinaManutencao.SomaParcelas;
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

//****************************************************************************************//
procedure TFrmCadMaquinaManutencao.actExcluirExecute(Sender: TObject);
var
  sql, sqlMov, sqlProc : string;
begin
  sqlProc := 'EXEC spAtualizaEstoque ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
         QuotedStr('MAN') + ', NULL, ' + DBEidManutencao.Text + ', NULL, NULL, ' + QuotedStr('OUT');
  try
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

        sql := 'DELETE FROM MaquinaManutencaoFinanc ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idManutencao = ' + QuotedStr(cdsPadrao.FieldByName('idManutencao').AsString);
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
        sql := 'DELETE FROM MaquinaManutencaoFinanc ' +
               ' WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + cdsPadrao.FieldByName('idCadEmpresa').AsString +
               ' AND idManutencao = ' + QuotedStr(cdsPadrao.FieldByName('idManutencao').AsString);
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
      end;
    end;
  finally
    dmPadrao.dbConexao.ExecuteDirect(sqlProc);
  end;
  BtnNovo.Click;
end;

procedure TFrmCadMaquinaManutencao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesManutencao, FrmPesManutencao);
  FrmPesManutencao.idEmpresa := DBEidEmpresa.Text;
  FrmPesManutencao.idCadEmpresa := DBEidCadEmpresa.Text;
  FrmPesManutencao.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesManutencao.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesManutencao.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesManutencao.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesManutencao.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesManutencao.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idManutencao').Value := FrmPesManutencao.cdsGrid.FieldByName('idManutencao').Value;
      PagAbas.ActivePageIndex := 0;
      DBEidManutencao.SetFocus;
      DBEidManutencaoExit(DBEidManutencao);
    end;
  end;
end;

procedure TFrmCadMaquinaManutencao.actSalvarExecute(Sender: TObject);
var
  msg, sql : string;
  t : TDBXTransaction;
  vlTotalRateio : currency;
  idTituloPag : integer;
begin
  msg := '';
  if cdsProdutos.State in [dsEdit, dsInsert] then
    cdsProdutos.Cancel;

  if cdsCusto.State in [dsEdit, dsInsert] then
    cdsCusto.Cancel;

  vlTotalRateio := 0;
  if not (cdsCustovlTotalRateio.IsNull) then
    if cdsCustovlTotalRateio.Value > 0 then
      vlTotalRateio := cdsCustovlTotalRateio.Value;

  if cdsCusto.RecordCount > 0 then
    if cdsPadrao.FieldByName('vlManutencao').AsCurrency <> vlTotalRateio then
      msg := 'O valor total do rateio não pode ser diferente do valor total da operação!' + #13;

  if (cdsProdutos.RecordCount > 0) then
  begin
    //faz um loop nos produtos para ver a disponibilidade em estoque
    cdsProdutos.First;
    while not cdsProdutos.Eof do
    begin
      if cdsProdutosidProduto.AsInteger > 0 then
        if cdsProdutosmovimentaEstoque.AsString = 'S' then
        begin
          if (trim(DBEidProdDeposito.Text) = '') then
          begin
            msg := msg + 'O depósito deve ser informado!' + #13;
            messagedlg(msg, mtwarning, [mbok], 0);
            exit;
          end;
          if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
            sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, %s', [cdsEmpresaidEmpresa.AsString,
                          cdsProdutosidProduto.AsString, DBEidProdDeposito.Text, funcao.ConverteData(date), QuotedStr('SEL'),
                          funcao.RetornaValorEField(DBEidSafra, 3)])
          else
            sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, 0', [cdsEmpresaidEmpresa.AsString,
                          cdsProdutosidProduto.AsString, DBEidProdDeposito.Text, funcao.ConverteData(date), QuotedStr('SEL')]);
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          begin
            if cdsProdutosqtItem.AsFloat > FieldByName('qtProduto').AsFloat then
              msg := msg + 'Produto: ' + cdsProdutosidProduto.AsString + '-' + cdsProdutosdescProduto.AsString + ' Saldo Insuficiente - Atual: ' + FieldByName('qtProduto').AsString + #13;
            Close;
          end;
        end; // fim do if cdsProdutosmovimentaEstoque.AsString = 'S' then

      //verifica se o produto está com valor zerado
      if cdsProdutosvlItem.AsFloat = 0 then
        msg := msg + 'Produto: ' + cdsProdutosidProduto.AsString + '-' + cdsProdutosdescProduto.AsString + ' Sem Valor Informado!' + #13;

      cdsProdutos.Next;
    end;
  end;

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
//    dmPadrao.dbConexao.CloseDataSets;
    sql := 'EXEC spFechaMaquinaManutencao ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                              DBEidManutencao.Text + ', ' +
                                              funcao.RetornaValorEField(DBEidProdDeposito, 3);
    with frmPrincipal.ExecutaSqlRet([], '', sql) do
    begin
      if FieldByName('msg').AsString <> 'OK' then
        raise Exception.Create(FieldByName('msg').AsString);
      close;
    end;

  except
      on E: Exception do
      begin
        messagedlg(E.Message, mterror, [mbok], E.HelpContext);
        frmPrincipal.erro := 1;
      end;

  end;
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);

    //***************** DADOS FINANCEIROS ********************//
    cdsFinanc.Active := false;
    cdsFinanc.CommandText := 'SELECT * FROM MaquinaManutencaoFinanc WHERE idEmpresa = '+ DBEidEmpresa.Text +
                             ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idManutencao = ' + DBEidManutencao.Text;
    cdsFinanc.Active := true;
    if cdsFinanc.RecordCount > 0  then
      cdsFinanc.Edit
    else
    begin
      cdsFinanc.Append;
      cdsFinancidEmpresa.AsInteger := cdsPadraoidEmpresa.AsInteger;
      cdsFinancidCadEmpresa.AsInteger := cdsPadraoidCadEmpresa.AsInteger;
      cdsFinancidManutencao.AsInteger := cdsPadraoidManutencao.AsInteger;
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
      if trim(DBEobsTituloPag.Text) = '' then
      begin
        if not (cdsTituloPag.State in [dsInsert, dsEdit]) then
          cdsTituloPag.Edit;
        cdsTituloPagobsTituloPag.AsString := 'Ref.: NF.: ' + DBEidNf.Text;
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
    end; //fim do verificação de alterações na tabela de titulo
    sql := 'EXEC spFechaMaquinaFinanc ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                              DBEidManutencao.Text + ', ' +
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

  screen.Cursor := crDefault;
end;

procedure TFrmCadMaquinaManutencao.BtnAdicionarCustoClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, BtnNovoCusto, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarCusto' then
    BtnNovoCusto.Click;

  DBEidResultadoR.SetFocus;
end;

procedure TFrmCadMaquinaManutencao.BtnAdicionarProdClick(Sender: TObject);
var
  vlTotalGeral : currency;
  sql : string;
begin
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
  begin
    //verifica se é Lub, Pneus, Filtros - pois tem q existir no cadastro de máquina para controle
    sql := '';
    if cdsProdutostpItem.AsString = 'F' then //Filtros
      sql := 'SELECT COUNT(*) qtde FROM MaquinaFiltro WHERE idMaquina = ' + DBEidMaquina.Text +
             ' AND idProduto = ' + DBEidProduto.Text
    else
      if cdsProdutostpItem.AsString = 'L' then //Lubrificantes
        sql := 'SELECT COUNT(*) qtde FROM MaquinaOleo WHERE idMaquina = ' + DBEidMaquina.Text +
               ' AND idProduto = ' + DBEidProduto.Text
      else
        if cdsProdutostpItem.AsString = 'N' then //Pneus
          sql := 'SELECT COUNT(*) qtde FROM MaquinaPneu WHERE idMaquina = ' + DBEidMaquina.Text +
                 ' AND idProduto = ' + DBEidProduto.Text;
      if trim(sql) <> '' then
        if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger <= 0 then
        begin
          messagedlg('Produto não relacionado a máquina! Este tipo de item exige acompanhamento!', mtwarning, [mbok], 0);
          exit;
        end;

    //verifica a questão de baixa de estoque
    if (cdsProdutosmovimentaEstoque.AsString = 'S') and (trim(DBEidProdDeposito.Text) = '') then
    begin
      messagedlg('Para um item que movimenta estoque deve ser informado o depósito!', mtwarning, [mbok], 0);
      exit;
    end;

    if (trim(cdsProdutos.FieldByName('idProduto').AsString) = '') AND
       (Trim(cdsProdutos.FieldByName('descItem').AsString) = '') then
    begin
      MessageDlg('O Produto ou Descrição deve ser informado', mtWarning, [mbOK], 0);
      DBEidProduto.SetFocus;
      Exit;
    end;
  end; //fim do if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then

  vlProdAnterior := 0;
  vlTotalGeral := 0;
  if not (cdsProdutosvlTotalGeral.IsNull) then
    if cdsProdutosvlTotalGeral.Value > 0 then
      vlProdAnterior := cdsProdutosvlTotalGeral.Value;
  inherited;
  funcao.GravaSec(chave, cdsProdutos, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), 'idItem');
  if ((sender as tcbitbtn).Name = 'BtnAdicionarProd') or ((sender as tcbitbtn).Name = 'BtnRetirarProd') then
  begin
//    if not (cdsProdutosvlTotalGeral.IsNull) then
    if cdsProdutosvlTotalGeral.Value > 0 then
      vlTotalGeral := cdsProdutosvlTotalGeral.Value;
    //se estiver diferente recalcula os valores
//    if vlProdAnterior <> vlTotalGeral then
//    begin
      cdsPadrao.FieldByName('vlManutencao').AsCurrency := vlTotalGeral;
      GeraRateio;
//    end;
    BtnNovoProd.Click;
  end;
  if PagAbas.ActivePageIndex = 1 then
    DBEidProduto.SetFocus;
end;

procedure TFrmCadMaquinaManutencao.BtnRecalcularClick(Sender: TObject);
var
  sql : string;
  indice, indReal, vlPeca, vlFinalPeca, dif, vlMaior, vlRestante, vlTotal : Double;
begin
  inherited;
  vlTotal := cdsProdutosvlTotalGeral.Value;
  if cdsProdutos.State in [dsEdit, dsInsert] then
    cdsProdutos.Cancel;

  with cdsProdutos do
  begin
    First;
    while not Eof do
    begin
      indice := cdsPadrao.FieldByName('vlDescontoTotal').AsCurrency / cdsProdutosvlTotalGeral.Value;
      indReal := 1 - indice;
      vlPeca := RoundTo(cdsProdutosvlItem.AsFloat * indReal, -2);
      if not (cdsProdutos.State in [dsInsert, dsEdit]) then
        cdsProdutos.Edit;
      cdsProdutosvlItem.AsFloat := vlPeca;
      Post;
      Next;
    end;
    vlFinalPeca := RoundTo(vlTotal - cdsPadrao.FieldByName('vlDescontoTotal').AsFloat, -2);
    dif := RoundTo(vlFinalPeca - cdsProdutosvlTotalGeral.Value, -2);
    if dif <> 0 then
    begin
      cdsProdutos.IndexFieldNames := 'vlItem';
      cdsProdutos.Last;
      vlMaior := dif + cdsProdutosvlTotalProd.AsFloat;
      vlPeca := vlMaior/cdsProdutosqtItem.AsFloat;
      if not (cdsProdutos.State in [dsInsert, dsEdit]) then
        cdsProdutos.Edit;
      cdsProdutosvlItem.AsFloat := vlPeca;
      cdsProdutos.Post;
      cdsProdutos.IndexFieldNames := '';
    end;
//    cdsProdutos.ApplyUpdates(0);
  end;
  //Faz Recalculo de custo de produção
        cdsPadrao.FieldByName('vlManutencao').AsCurrency := cdsProdutosvlTotalGeral.Value;
  GeraRateio;
end;

procedure TFrmCadMaquinaManutencao.BtnSalvarParcClick(Sender: TObject);
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

procedure TFrmCadMaquinaManutencao.cdsMovCaixaAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMaquinaManutencao.cdsMovCaixaAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsProdutosvlTotalFin.Value > 0 then
    begin
      valor := cdsProdutosvlTotalFin.Value;
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
  DataSet.FieldByName('dtMovCaixa').Value := cdsPadrao.FieldByName('dtManutencao').Value;
  DataSet.FieldByName('vlMovCaixa').Value := valor;
  DataSet.FieldByName('idMovFinanceira').Value := 11; //Valor pago pelo caixa
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idCadGeral').Value := cdsPadrao.FieldByName('idFornecedor').Value;
end;

procedure TFrmCadMaquinaManutencao.cdsMovContaAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsProdutosvlTotalFin.Value > 0 then
    begin
      valor := cdsProdutosvlTotalFin.Value;
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
  DataSet.FieldByName('dtMovConta').Value := cdsPadrao.FieldByName('dtManutencao').Value;
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

procedure TFrmCadMaquinaManutencao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
    cdsPadrao.FieldByName('tpManutencao').AsString := 'P';
end;

procedure TFrmCadMaquinaManutencao.cdsProdutosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  if DataSet = cdsProdutos then
    if DataSet.State = dsInsert then
    begin
      cdsProdutostpItem.AsString := 'P';
      cdsProdutosmovimentaEstoque.AsString := 'N';
    end;
end;

procedure TFrmCadMaquinaManutencao.cdsProdutosCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsProdutosvlTotalProd.AsCurrency := RoundTo(cdsProdutosqtItem.AsFloat*cdsProdutosvlItem.AsCurrency, -2);
  if cdsProdutosmovimentaEstoque.AsString = 'S' then
    cdsProdutosfin.AsInteger := 0
  else
    cdsProdutosfin.AsInteger := 1;
end;

procedure TFrmCadMaquinaManutencao.cdsTituloPagAfterInsert(DataSet: TDataSet);
var
  valor : currency;
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  valor := 0;
//  if not cdsProdutosvlTotalFin.IsNull then
    if cdsProdutosvlTotalFin.Value > 0 then
    begin
      valor := cdsProdutosvlTotalFin.Value;
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
  DataSet.FieldByName('nrTituloPag').Value := cdsPadrao.FieldByName('idNf').Value;
  DataSet.FieldByName('dtEmissao').Value := cdsPadrao.FieldByName('dtManutencao').Value;
  DataSet.FieldByName('idSafra').Value := cdsPadrao.FieldByName('idSafra').Value;
  DataSet.FieldByName('idIndice').Value := 1;
  DataSet.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
  DataSet.FieldByName('idRateio').Value := cdsPadrao.FieldByName('idRateio').Value;
  DataSet.FieldByName('idMovFinanceira').Value := 2; //Inclusão de titulo a pagar
  DataSet.FieldByName('stTituloPag').Value := 'ATIVO'; //Status do titulo
  DataSet.FieldByName('incMes').Value := 'N'; //Mesmo dia
  DataSet.FieldByName('obsTituloPag').Value := 'Ref.: NF.: ' + cdsPadrao.FieldByName('idNf').Value;
end;

procedure TFrmCadMaquinaManutencao.ConfigMaquina;
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

procedure TFrmCadMaquinaManutencao.DBEidMaquinaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadMaquinaManutencao.DBEidMaquinaExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCDBEdit).Text) then
  begin
    ConfigMaquina;
    GeraRateio;
  end;
end;

procedure TFrmCadMaquinaManutencao.DBEidNfExit(Sender: TObject);
var
  sql : String;
begin
  inherited;
  if (Trim(DBEidFornecedor.Text) <> '') AND (Trim(DBEidNf.Text) <> '')  then
  begin
    sql := 'SELECT * FROM MaquinaManutencao WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idFornecedor = ' +
           DBEidFornecedor.Text + ' AND idNf = ' + QuotedStr(DBEidNf.Text);
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        MessageDlg('Numero de Nota fiscal ja utilizada, favor informar outra numeração', mtInformation, [mbOK], 0);
        DBEidNf.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmCadMaquinaManutencao.DBEidPortadorEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidPortador.Text;
end;

procedure TFrmCadMaquinaManutencao.DBEidPortadorExit(Sender: TObject);
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

procedure TFrmCadMaquinaManutencao.DBEidProdDepositoExit(Sender: TObject);
begin
  inherited;
  if (not BtnFechar.Focused) and (not BtnCancelar.Focused) and (not BtnNovo.Focused) then
  begin
    PagAbas.ActivePageIndex := 1;
    DBEidProduto.SetFocus;
  end;

end;

procedure TFrmCadMaquinaManutencao.DBEidProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidProduto.Text;
end;

procedure TFrmCadMaquinaManutencao.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEidProduto.Text then
    if (trim(DBEidProdDeposito.Text) <> '') and (trim(DBEidProduto.Text) <> '') then
      RetornaCustoMedio;
end;

procedure TFrmCadMaquinaManutencao.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsTituloPag.FieldByName('incMes').AsString = 'S');
  if (cdsTituloPag.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
    DBEprMulta.SetFocus;
end;

procedure TFrmCadMaquinaManutencao.DBCKmovimentaEstoqueExit(Sender: TObject);
begin
  inherited;
  if cdsProdutos.State in [dsEdit, dsInsert] then
    BtnAdicionarProd.SetFocus;
end;

procedure TFrmCadMaquinaManutencao.DBEcodFabricanteExit(Sender: TObject);
var
  sql : String;
begin
  inherited;
  if ((Trim(DBEcodFabricante.Text) <> '') AND (cdsProdutos.State in [dsEdit, dsInsert])) then
  begin
    sql := 'SELECT * FROM Produto WHERE codFabricante = ' + QuotedStr(DBEcodFabricante.Text);
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 1 then
      begin
        Application.CreateForm(TFrmPesProd, FrmPesProd);
        //passa os parâmetros
        FrmPesProd.codFabricante := DBEcodFabricante.Text;
        //abre o form
        FrmPesProd.ShowModal;
        //busca o parâmetro de retorno
        cdsProdutos.FieldByName('idProduto').AsString := FrmPesProd.idProduto;
        cdsProdutos.FieldByName('codFabricante').AsString := FrmPesProd.codFabricante;
//          DBEidCadGeralExit(DBEidCadGeral);
      end
      else
      begin
       if RecordCount <= 0 then
       begin
         MessageDlg('Codigo de fabricante não encontrado, favor inserir um codigo valido!', mtInformation, [mbOK], 0);
         Exit;
       end;
       if (cdsProdutos.State in [dsEdit, dsInsert]) then
         cdsProdutos.FieldByName('idProduto').AsString := FieldByName('idProduto').AsString
      end;
    end;
  end;

end;

procedure TFrmCadMaquinaManutencao.DBEidItemExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsProdutos, [DBEidItem]);
end;

procedure TFrmCadMaquinaManutencao.DBEidManutencaoExit(Sender: TObject);
Var
  HideTit : boolean;
begin
  inherited;
  if (not (BuscaChave(cdsPadrao, chave))) and (trim(DBEidManutencao.Text) <> '') then
  begin
    messagedlg('Manutenção não encontrada! Deixe em branco para novo lançamento!', mtwarning, [mbok], 0);
    DBEidManutencao.SetFocus;
    exit;
  end;

  AbreTabSecundaria;
  IniciaFinancas;
  HabilitaRatRes;

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

procedure TFrmCadMaquinaManutencao.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCDBEdit).Text) <> vlAnterior then
  begin
    HabilitaRatRes;
    if (trim(DBEidResultado.Text) <> '') or (trim(DBEidRateio.Text) <> '') then
      GeraRateio;
  end;
end;

procedure TFrmCadMaquinaManutencao.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCusto, [DBEidGerencialR,DBEidResultadoR]);
end;

procedure TFrmCadMaquinaManutencao.DBEobsTituloPagExit(Sender: TObject);
begin
  inherited;
  if (cdsTituloPag.State in [dsInsert]) and (cdsTituloPagParc.IsEmpty) then
    GeraParcelas;
end;

procedure TFrmCadMaquinaManutencao.DBEvlTituloPagEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEvlTituloPag.Text;
end;

procedure TFrmCadMaquinaManutencao.DBEvlTituloPagExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> DBEvlTituloPag.Text) and (vlAnterior <> '') and (cdsTituloPagParc.RecordCount > 0) then
  begin
    GeraParcelas;
  end;
end;

procedure TFrmCadMaquinaManutencao.DBRGtpItemExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBCKmovimentaEstoque], false);
  if cdsProdutostpItem.AsString = 'S' then
  begin
    if cdsProdutos.State in [dsEdit, dsInsert] then
      cdsProdutosmovimentaEstoque.AsString := 'N';

    funcao.SomenteLeitura([DBCKmovimentaEstoque], true);
  end;
end;

procedure TFrmCadMaquinaManutencao.dsCustoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, btnNovoCusto);
end;

procedure TFrmCadMaquinaManutencao.dspMovCaixaBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
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
          DeltaDS.FieldByName('dtMovConta').NewValue := cdsPadrao.FieldByName('dtManutencao').Value
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
          DeltaDS.FieldByName('dtEmissao').NewValue := cdsPadrao.FieldByName('dtManutencao').Value;
          DeltaDS.FieldByName('idSafra').NewValue := cdsPadrao.FieldByName('idSafra').Value;
          DeltaDS.FieldByName('idMovFinanceira').NewValue := 2; //Inclusão de titulo a pagar
          DeltaDS.FieldByName('stTituloPag').NewValue := 'ATIVO'; //Status do titulo
        end;
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmCadMaquinaManutencao.dspProdutosBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspProdutos' then
    begin
      GeraAutoInc(DeltaDS, 'MaquinaManutencaoItem', 'idItem', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadMaquinaManutencao.dsProdutosStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsProdutos, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadMaquinaManutencao.dsTituloPagParcStateChange(Sender: TObject);
begin
  inherited;
  if cdsTituloPagstTituloPag.AsString = 'ATIVO' then
    funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc)
end;

procedure TFrmCadMaquinaManutencao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadMaquinaManutencao := nil;
end;

procedure TFrmCadMaquinaManutencao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsProdutos;
  Tabelas[2] := cdsCusto;

  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidManutencao;
  foco := DBEidManutencao;
  tab_chave := 'MaquinaManutencao';
  Height := 535;
  Width := 692;
end;

procedure TFrmCadMaquinaManutencao.FormShow(Sender: TObject);
var
  sql : string;
begin
  //Ajuste para questão da segurança
  action := 'actLanMaquinaManutencao';
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
  end;  }
end;

procedure TFrmCadMaquinaManutencao.GeraParcelas;
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

procedure TFrmCadMaquinaManutencao.GeraRateio;
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
     if cdsPadrao.FieldByName('idManutencao').AsInteger > 0 then
       cdsCustoidManutencao.AsInteger := cdsPadrao.FieldByName('idManutencao').AsInteger
     else
       cdsCustoidManutencao.AsInteger := 0;
     cdsCustoidResultado.AsInteger := cdsPadrao.FieldByName('idResultado').AsInteger;
     cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
     cdsCustoprRateio.AsFloat := 100;
     cdsCustovlRateio.AsCurrency := cdsPadrao.FieldByName('vlManutencao').AsCurrency;
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
           if cdsPadrao.FieldByName('idManutencao').AsInteger > 0 then
             cdsCustoidManutencao.AsInteger := cdsPadrao.FieldByName('idManutencao').AsInteger
           else
             cdsCustoidManutencao.AsInteger := 0;
           cdsCustoidGerencial.AsInteger := cdsPadrao.FieldByName('idGerencial').AsInteger;
           cdsCustoidResultado.AsInteger := FieldByName('idResultado').AsInteger;
           cdsCustoprRateio.AsFloat := FieldByName('prRateio').AsFloat;
           cdsCustovlRateio.AsCurrency := RoundTo((cdsPadrao.FieldByName('vlManutencao').AsCurrency*FieldByName('prRateio').AsFloat)/100, -2);
           cdsCusto.Post;
           Next;
         end; // fim do while not eof do
         vlTotalRateio := 0;
         if not (cdsCustovlTotalRateio.IsNull) then
           if cdsCustovlTotalRateio.Value > 0 then
             vlTotalRateio := cdsCustovlTotalRateio.Value;

         vlDif := cdsPadrao.FieldByName('vlManutencao').AsCurrency-vlTotalRateio;
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

procedure TFrmCadMaquinaManutencao.HabilitaRatRes;
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

procedure TFrmCadMaquinaManutencao.IniciaFinancas;
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

  if (trim(DBEidManutencao.Text) <> '') then
  begin
    cdsFinanc.Active := false;
    cdsFinanc.CommandText := 'SELECT * FROM MaquinaManutencaoFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
                             ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idManutencao = ' + DBEidManutencao.Text;
    cdsFinanc.Active := true;

    if cdsPadrao.State <> dsInsert then
    begin
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidManutencao], '', 'MaquinaManutencaoFinanc') do
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

procedure TFrmCadMaquinaManutencao.LimpaRateio;
//procedure que limpará os dados do rateio para gerar novamente
begin
  cdsCusto.First;
  while not cdsCusto.Eof do
  begin
    cdsCusto.Delete;
    cdsCusto.First;
  end;
end;

end.
