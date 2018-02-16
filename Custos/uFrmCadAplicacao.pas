unit uFrmCadAplicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, Grids, DBGrids, CDBGrid, StdCtrls, DBCtrls,
  CDBMemo, CGroupBox, CFind, DB, Provider, DBClient, ActnList, ImgList, CLookUp,
  Mask, CDBEdit, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls,
  CPageControl, DBXCommon, EditAlign, CEdit, FMTBcd, SqlExpr, CRadioButton,
  uFrmCadPadraoEmpCont, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, System.Actions, System.ImageList;

type
  TFrmCadAplicacao = class(TFrmCadPadraoEmpCont)
    GrpAplicacao: TCGroupBox;
    DBEstAplicacao: TCDBEdit;
    TSProduto: TTabSheet;
    TSRateio: TTabSheet;
    dsAplicacaoProd: TDataSource;
    dspAplicacaoProd: TDataSetProvider;
    cdsAplicacaoProd: TClientDataSet;
    cdsAplicacaoRat: TClientDataSet;
    dspAplicacaoRat: TDataSetProvider;
    dsAplicacaoRat: TDataSource;
    FindRateio: TCFind;
    FindResultado: TCFind;
    FindProdDeposito: TCFind;
    FindProduto: TCFind;
    FindSafra: TCFind;
    CLabel4: TCLabel;
    DBEidAplicacao: TCDBEdit;
    CLabel9: TCLabel;
    DBEdtAplicacao: TCDBEdit;
    CLabel13: TCLabel;
    CLabel23: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    CLabel3: TCLabel;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    CBitBtn4: TCBitBtn;
    DBMobsAplicacao: TCDBMemo;
    CLabel8: TCLabel;
    CLabel10: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CBitBtn2: TCBitBtn;
    CGroupBox2: TCGroupBox;
    CLabel7: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CLabel16: TCLabel;
    DBEqtAplicacao: TCDBEdit;
    CGroupBox14: TCGroupBox;
    DBProdutos: TCDBGrid;
    lblSaldo: TCLabel;
    CLabel11: TCLabel;
    CGroupBox12: TCGroupBox;
    BtnSalvarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnExcluirProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    sdsAplicacao: TSQLDataSet;
    sdsAplicacaoProd: TSQLDataSet;
    sdsAplicacaoRat: TSQLDataSet;
    cdsProduto: TClientDataSet;
    cdsAplicacaoProddescProduto: TStringField;
    CLabel1: TCLabel;
    DBEvlTotal: TCDBEdit;
    cdsAplicacaoProdvlTotalProd: TAggregateField;
    DBEvlTotalProd: TCDBEdit;
    CLabel14: TCLabel;
    cdsAplicacaoRatvlTotalRateio: TAggregateField;
    DBEqtSaldoAtual: TCDBEdit;
    DBEvlAplicacao: TCDBEdit;
    cdsResultado: TClientDataSet;
    GrpRateioProduto: TCGroupBox;
    CLabel38: TCLabel;
    CLabel40: TCLabel;
    CGroupBox1: TCGroupBox;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel33: TCLabel;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    RBRatTitulo2: TCRadioButton;
    RBRatParcela2: TCRadioButton;
    DBEidResultadoR: TCDBEdit;
    LookResultadoR: TCLookUp;
    CGroupBox4: TCGroupBox;
    CDBGrid1: TCDBGrid;
    GrpRateioAplicacao: TCGroupBox;
    CLabel36: TCLabel;
    CLabel39: TCLabel;
    CGroupBox9: TCGroupBox;
    CLabel41: TCLabel;
    CLabel42: TCLabel;
    CLabel44: TCLabel;
    DBEidResultadoRT: TCDBEdit;
    DBEprRateioRT: TCDBEdit;
    RBRatAplicacao: TCRadioButton;
    RBRatProduto: TCRadioButton;
    LookResultadoRT: TCLookUp;
    CGroupBox10: TCGroupBox;
    CDBGrid3: TCDBGrid;
    CGroupBox28: TCGroupBox;
    CLabel158: TCLabel;
    BtnSalvarRat: TCBitBtn;
    BtnCancelarRat: TCBitBtn;
    BtnExcluirRat: TCBitBtn;
    BtnNovoRat: TCBitBtn;
    DBEvlRestante: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CLabel17: TCLabel;
    CBitBtn1: TCBitBtn;
    CBitBtn3: TCBitBtn;
    CBitBtn6: TCBitBtn;
    CBitBtn8: TCBitBtn;
    DBEvlRestante2: TCDBEdit;
    CLabel45: TCLabel;
    DBEvlRateioRT: TCDBEdit;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    DBEqtRateio: TCDBEdit;
    DBEvlTotalRateio: TCDBEdit;
    CLabel157: TCLabel;
    DBEvlTotalRateio2: TCDBEdit;
    CLabel15: TCLabel;
    DBEidProdutoRat: TCDBEdit;
    CLabel18: TCLabel;
    LookProdutoRat: TCLookUp;
    CLookUp3: TCLookUp;
    BtnGerarRateio: TCBitBtn;
    CBitBtn9: TCBitBtn;
    cdsAplicacaoRatidEmpresa: TIntegerField;
    cdsAplicacaoRatidAplicacao: TIntegerField;
    cdsAplicacaoRatidResultado: TIntegerField;
    cdsAplicacaoRatidProduto: TIntegerField;
    cdsAplicacaoRatqtRateio: TBCDField;
    cdsAplicacaoRatprRateio: TBCDField;
    cdsAplicacaoRatvlRateio: TBCDField;
    cdsAplicacaoRatvlRestante: TCurrencyField;
    cdsAplicacaoRatvlRateioProd: TAggregateField;
    cdsAplicacaoProdvlTotal: TCurrencyField;
    FindAplicacao: TCFind;
    EDDoc: TCEdit;
    EDPar: TCEdit;
    cdsAplicacaoProdidEmpresa: TIntegerField;
    cdsAplicacaoProdidAplicacao: TIntegerField;
    cdsAplicacaoProdidProduto: TIntegerField;
    cdsAplicacaoProdqtAplicacao: TFMTBCDField;
    cdsAplicacaoProdvlAplicacao: TFMTBCDField;
    cdsAplicacaoProdqtSaldoAtual: TFMTBCDField;
    BtnExcluirAplic: TCBitBtn;
    Group: TCGroupBox;
    cdsAplicacaoProdDep: TClientDataSet;
    dsAplicacaoProdDep: TDataSource;
    dspAplicacaoProdDep: TDataSetProvider;
    sdsAplicacaoProdDep: TSQLDataSet;
    cdsDeposito: TClientDataSet;
    dsDeposito: TDataSource;
    cdsDepositoidEmpresa: TIntegerField;
    cdsDepositoidCadEmpresa: TSmallintField;
    cdsDepositodescEmpresa: TStringField;
    cdsDepositodescCadEmpresa: TStringField;
    cdsDepositoidCnpjCpf: TStringField;
    cdsDepositoidInscEstadual: TStringField;
    cdsDepositoidProdDeposito: TSmallintField;
    cdsDepositodescProdDeposito: TStringField;
    cdsDepositoidProduto: TIntegerField;
    cdsDepositodescProduto: TStringField;
    cdsDepositocodFabricante: TStringField;
    cdsDepositovlCustoMedio: TFMTBCDField;
    cdsDepositoqtProduto: TFMTBCDField;
    cdsDepositovlTotal: TFMTBCDField;
    cdsDepositoidGrupo: TStringField;
    cdsDepositosel: TStringField;
    cdsDepositoqtAplicado: TFloatField;
    DBGridAplicados: TCDBGrid;
    cdsDepositoSomaqtAplicado: TAggregateField;
    cdsDepositofator: TIntegerField;
    cdsDepositoqtAplic: TFloatField;
    DBGridSaldos: TCDBGrid;
    cdsAplicProdDep: TClientDataSet;
    dsAplicProdDep: TDataSource;
    dspAplicProdDep: TDataSetProvider;
    sdsAplicProdDep: TSQLDataSet;
    CLabel2: TCLabel;
    DBEidSubGrupo: TCDBEdit;
    CLookUp1: TCLookUp;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidAplicacao: TIntegerField;
    cdsPadraodtAplicacao: TSQLTimeStampField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidRateio: TSmallintField;
    cdsPadraoidProdDeposito: TSmallintField;
    cdsPadraostAplicacao: TStringField;
    cdsPadraoidSubGrupo: TIntegerField;
    EDCadEmpresa: TCEdit;
    cdsPadraoobsAplicacao: TStringField;
    FindProdutoSafra: TCFind;
    cdsAplicacaoProdqtSaldoData: TFMTBCDField;
    CLabel5: TCLabel;
    DBEqtSaldoData: TCDBEdit;
    procedure actExcluirExecute(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure BtnGerarRateioClick(Sender: TObject);
    procedure cdsAplicacaoProdCalcFields(DataSet: TDataSet);
    procedure DBEidResultadoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure dsAplicacaoProdStateChange(Sender: TObject);
    procedure dspAplicacaoProdBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnSalvarProdClick(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidAplicacaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExcluirAplicClick(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure DBMobsAplicacaoExit(Sender: TObject);
    procedure cdsAplicacaoProdAfterEdit(DataSet: TDataSet);
    procedure RetornaSaldoEstoque;
    procedure DBEqtAplicacaoEnter(Sender: TObject);
    procedure DBEqtAplicacaoExit(Sender: TObject);
    procedure CarregaEstoque;
    procedure LimpaDeposito;
    procedure DivideQtdeProd;
    procedure LancaBaixas;
    procedure DBEidProdutoEnter(Sender: TObject);
    procedure DeletaRegistroTmp(idProd: Integer);
    procedure actNovoExecute(Sender: TObject);
    procedure VerificaLancamento;
    procedure DBProdutosCellClick(Column: TColumn);
    procedure HabilitaGrp(Grp1, Grp2 : Boolean);
    procedure DBGridSaldosCellClick(Column: TColumn);
    procedure DBGridSaldosColEnter(Sender: TObject);
    procedure DBGridSaldosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridSaldosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridSaldosKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidAplicacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure ConfigF4Produto;
    procedure ConfigFilialAplicacao;
  private
    { Private declarations }
    qtSaldoAtual, qtSaldoData, qtAnt : double;
    vlCustoMedio, vlSaldoSelecionado : currency;
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;
    vlAnterior : string;
    usaFilialAplicacao : Boolean;
  public
    { Public declarations }
  end;

var
  FrmCadAplicacao: TFrmCadAplicacao;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao, uDmFind,
  uFrmPesAplicacao;

{$R *.dfm}

procedure TFrmCadAplicacao.HabilitaGrp(Grp1, Grp2: Boolean);
begin
  DBGridAplicados.Visible := Grp1;
  DBGridSaldos.Visible := Grp2;
end;

procedure TFrmCadAplicacao.LancaBaixas;
var
  count, i : Integer;
  vlDivido, vlMenor, vlRestante : Double;
begin
  //Aqui faz o Lancamento Inicial para as Baixas
  count := 0;
  vlDivido := 0;
  vlMenor := 0;
  vlRestante := 0;

  with cdsDeposito do
  begin
    //Aqui Faz a Contagem para poder dividir corretamente a Quantidade
    First;
    while not eof do
    begin
      count := count + 1;
      Next;
    end;

    First;
    while not eof do
    begin
      for i := 1 to count do
      begin
        if i = 1 then
          vlRestante := cdsAplicacaoProdqtAplicacao.AsFloat;
        if vlRestante <= cdsDepositoqtProduto.AsFloat then
          vlDivido := vlRestante
        else
          if cdsDepositoqtProduto.AsFloat < 0 then
            vlDivido := 0
          else
            vlDivido := cdsDepositoqtProduto.AsFloat;

        vlRestante := vlRestante-vlDivido;

        if not(cdsDeposito.State = dsEdit) then
          cdsDeposito.Edit;
        cdsDepositoqtAplicado.AsFloat := vlDivido;
        cdsDeposito.Post;
        Next;
      end;
    end;
  end;
end;

procedure TFrmCadAplicacao.LimpaDeposito;
begin
  with cdsDeposito do
  begin
    First;
    while not eof do
    begin
      First;
      Delete;
    end;
  end;
end;

procedure TFrmCadAplicacao.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 375;
    Width := 616;
  end
  else
    if PagAbas.ActivePageIndex = 1 then
    begin
      Height := 582;
      Width := 760;
      ConfigFilialAplicacao;
      if (trim(DBEidProdDeposito.text) = '') or (trim(DBEdtAplicacao.text) = '') then
      begin
        messagedlg('Inicie uma Aplicação !', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
      lblSaldo.Caption := 'Saldo em ' + DBEdtAplicacao.Text;
    end;
end;
procedure TFrmCadAplicacao.RetornaSaldoEstoque;
var
  sql : string;
begin
  vlCustoMedio := 0;
  qtSaldoAtual := 0;
  qtSaldoData := 0;
  if trim(DBEidProduto.Text) <> '' then
  begin
    //busca o saldo e valor de custo médio do produto na data da aplicação
    if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
      sql := 'EXEC spRetCustoSaldo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', 1,' +
                                       funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEdtAplicacao, 3) + ', 0, 0, 0,' +
                                       QuotedStr('SEL') + ', ' +
                                       funcao.RetornaValorEField(DBEidSafra, 3)
    else
      sql := 'EXEC spRetCustoSaldo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', 1,' +
                                       funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEdtAplicacao, 3) + ', 0, 0, 0,' +
                                       QuotedStr('SEL') + ', 0';

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      qtSaldoData := FieldByName('qtProduto').Value;
      vlCustoMedio := FieldByName('vlCustoMedio').AsCurrency;
    end;

    //busca o saldo de estoque do dia
    if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
      sql := 'EXEC spRetCustoSaldo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', 1,' +
                                       funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                       funcao.ConverteData(date) + ', 0, 0, 0,' +
                                       QuotedStr('SEL') + ', ' +
                                       funcao.RetornaValorEField(DBEidSafra, 3)
    else
      sql := 'EXEC spRetCustoSaldo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', 1,' +
                                       funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                       funcao.ConverteData(date) + ', 0, 0, 0,' +
                                       QuotedStr('SEL') + ', 0';

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
      qtSaldoAtual := FieldByName('qtProduto').Value;
  end;
end;

procedure TFrmCadAplicacao.VerificaLancamento;
var
  sql : String;
begin
  if (Trim(DBEidEmpresa.Text) <> '') AND (Trim(DBEidAplicacao.Text) <> '') AND (Trim(DBEidProduto.Text) <> '') then
  begin
    sql := 'SELECT A.idEmpresa, A.idCadEmpresa, A.idAplicacao, A.idProduto, ' +
           ' A.idAplicacaoProdDeposito, A.qtProduto, Cad.descCadEmpresa, Cad.descAbreviada ' +
           ' FROM AplicacaoProdDeposito A INNER JOIN vCadEmpresaFiscal Cad '+
           ' ON A.idEmpresa = Cad.idEmpresa AND A.idCadEmpresa = Cad.idCadEmpresa ' +
           ' WHERE A.idEmpresa = ' + DBEidEmpresa.Text + ' AND A.idAplicacao = ' + DBEidAplicacao.Text +
           ' AND A.idProduto = ' + DBEidProduto.Text;
    cdsAplicacaoProdDep.Active := False;
    cdsAplicacaoProdDep.CommandText := sql;
    cdsAplicacaoProdDep.Active := True;
    if cdsAplicacaoProdDep.RecordCount > 0 then
      HabilitaGrp(True, False);
  end;
end;

procedure TFrmCadAplicacao.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if (trim(DBEstAplicacao.Text) = 'CANCELADO') then
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, EDCadEmpresa, EDDoc, nil, DBEidAplicacao, nil, nil, EdPar], 'spAtualizaEstoque');
end;

procedure TFrmCadAplicacao.actNovoExecute(Sender: TObject);
begin
  cdsDeposito.Close;
  cdsAplicacaoProdDep.Close;
  cdsAplicProdDep.Close;
  inherited;
end;

procedure TFrmCadAplicacao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesAplicacao, FrmPesAplicacao);
  FrmPesAplicacao.idEmpresa := cdsEmpresaidEmpresa.AsInteger;
  FrmPesAplicacao.ShowModal;
  if FrmPesAplicacao.idAplicacao > 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;
    cdsEmpresaidEmpresa.AsInteger := FrmPesAplicacao.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmPesAplicacao.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idAplicacao').AsInteger := FrmPesAplicacao.idAplicacao;
    DBEidAplicacao.SetFocus;
    DBEidAplicacaoExit(DBEidAplicacao);
  end;
end;

procedure TFrmCadAplicacao.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  sql : string;
  id : integer;
begin
  Screen.Cursor := crSqlWait;
  //*****************************************************************************
  //   REGRA ESPECIFICA DESTE CADASTRO
  //*****************************************************************************
  if cdsAplicacaoProd.IsEmpty then
  begin
    messagedlg('Os produtos não foram aplicados!', mterror, [mbok], 0);
    exit;
  end;
  if trim(DBEidAplicacao.Text) = '' then
    with frmPrincipal.ExecutaSQLRet([], '', 'EXEC spRetIdProximo ' + DBEidEmpresa.Text + ', 0, ' + QuotedStr('Aplicacao') + ', ' + QuotedStr('idAplicacao') ) do
     cdsPadrao.FieldByName('idAplicacao').AsInteger := FieldByName('idRet').AsInteger;
  //*****************************************************************************
  //   FINAL DA REGRA ESPECIFICA DESTE CADASTRO
  //*****************************************************************************
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  dmPadrao.dbConexao.CloseDataSets;
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    //busca a numeração em caso de nova aplicaçao
    if (cdsAplicacaoProd.State in [dsEdit, dsInsert]) then
      cdsAplicacaoProd.Cancel;

    GravaChave(1, '', nil);
    inherited;

    if not usaFilialAplicacao then
      begin
        id := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idAplicacaoProdDeposito) idAplicacaoProdDeposito FROM AplicacaoProdDeposito').FieldByName('idAplicacaoProdDeposito').AsInteger+1;
        cdsAplicProdDep.First;
        while not cdsAplicProdDep.Eof do
          begin
            cdsAplicProdDep.Edit;
            cdsAplicProdDep.FieldByName('idAplicacao').Value := cdsPadrao.FieldByName('idAplicacao').Value;
            if (cdsAplicProdDep.FieldByName('idAplicacaoProdDeposito').IsNull) OR (cdsAplicProdDep.FieldByName('idAplicacaoProdDeposito').Value = 0) then
            cdsAplicProdDep.FieldByName('idAplicacaoProdDeposito').Value := id;
            cdsAplicProdDep.Post;
            id := id + 1;
            cdsAplicProdDep.Next;
          end;
        cdsAplicProdDep.ApplyUpdates(0);
      end;
    dmPadrao.dbConexao.CloseDataSets;

  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
    dmPadrao.dbConexao.CommitFreeAndNil(t)
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
 { with cdsAplicacaoProd do
  begin
    First;
    while not eof do
    begin
      sql := 'EXEC spRecalcEstoqueGeral ' + frmPri  ncipal.idEmpresa + ', ' +
             QuotedStr(DBEdtAplicacao.Text) + ', ' + QuotedStr(FieldByName('idProduto').AsString) + ', ' + QuotedStr('0') + ', ' +
             QuotedStr('S');
      dmPadrao.dbConexao.ExecuteDirect(sql);
      Next;
    end;
  end;}

  sql := 'EXEC spFechaAplicacao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidAplicacao, 3) + ', ' +
                                    funcao.RetornaValorEField(DBEidProdDeposito, 3);
  dmPadrao.dbConexao.ExecuteDirect(sql);


  sql := 'EXEC spAjustaAplicacaoEst ' + DBEidEmpresa.Text + ', ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  Screen.Cursor := crDefault;
end;

procedure TFrmCadAplicacao.BtnExcluirAplicClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if messagedlg('Tem certeza que deseja excluir essa aplicação?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;
  Screen.Cursor := crSqlWait;
  if (trim(DBEstAplicacao.Text) <> 'CANCELADO') then //Altera Status de Aplicação
  begin
    if not (cdsPadrao.State in [dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('stAplicacao').AsString := 'CANCELADO';
    cdsPadrao.Post;
    cdsPadrao.ApplyUpdates(0);
    sql := 'EXEC spAtualizaEstoque ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(EDCadEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(EDDoc, 3) + ', ' +
                                         'null' + ', ' +
                                         funcao.RetornaValorEField(DBEidAplicacao, 3) + ', ' +
                                         'null' + ', ' +
                                         'null' + ', ' +
                                         funcao.RetornaValorEField(EdPar, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
  //Deleta Aplicação da Tabela AplicacaoProdDeposito
  sql := 'DELETE FROM AplicacaoProdDeposito WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  //Deleta Aplicação da Tabela AplicacaoRateio
  sql := 'DELETE FROM AplicacaoRateio WHERE idEmpresa = ' +DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  //Deleta Aplicação da Tabela AplicacaoProd
  sql := 'DELETE FROM AplicacaoProd WHERE idEmpresa = ' +DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  //Delete Aplicacao da Tabela Aplicacao
  sql := 'DELETE FROM Aplicacao WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  with cdsAplicacaoProd do
  begin
    First;
    while not eof do
    begin
      sql := 'EXEC spRecalcEstoqueGeral ' + frmPrincipal.idEmpresa + ', ' +
             QuotedStr(DBEdtAplicacao.Text) + ', ' + QuotedStr(FieldByName('idProduto').AsString) + ', ' + QuotedStr('0') + ', ' +
             QuotedStr('S');
      dmPadrao.dbConexao.ExecuteDirect(sql);
      Next;
    end;
  end;
  cdsPadrao.Refresh;
  PagAbas.ActivePageIndex := 0;
  DBEidAplicacao.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TFrmCadAplicacao.BtnGerarRateioClick(Sender: TObject);
var
  vlTotal : currency;
begin
  inherited;
  if trim(DBEidResultado.text) = '' then
    exit;
  //rotina para exclusão
  cdsAplicacaoRat.First;
  while not cdsAplicacaoRat.Eof do
  begin
    cdsAplicacaoRat.Delete;
    cdsAplicacaoRat.First;
  end;
  //Fim da rotina de exclusão
  cdsAplicacaoProd.First;

  while not cdsAplicacaoProd.Eof do
  begin
    vlTotal := cdsAplicacaoProdvlTotalProd.Value;
    {$REGION 'Geração por Resultado'}
    cdsAplicacaoRat.Append;
    cdsAplicacaoRat.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    cdsAplicacaoRat.FieldByName('idAplicacao').AsString := '0';
    cdsAplicacaoRat.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
    cdsAplicacaoRat.FieldByName('prRateio').Value := 100;
    cdsAplicacaoRat.FieldByName('vlRateio').Value := vlTotal;
    cdsAplicacaoRatqtRateio.AsFloat := cdsAplicacaoProdqtAplicacao.AsFloat;
    cdsAplicacaoRat.Post;
    cdsAplicacaoProd.Next;
  end; //while not cdsAplicacaoProd.Eof do
  {$ENDREGION}
end;

procedure TFrmCadAplicacao.BtnSalvarProdClick(Sender: TObject);
var
  sql, idProduto : string;
begin
  inherited;

  idProduto := DBEidProduto.Text;
  If (cdsAplicacaoProd.FieldByName('qtAplicacao').asFloat <= 0) Then
  Begin
    ShowMessage('Informe corretamente a quantidade.');
    Exit;
  End;
  if ((Sender as TBitBtn).Name = 'BtnNovoProd')then
  begin
    cdsDeposito.Close;
    HabilitaGrp(False, True);
    if not(cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
  end;
  if ((Sender as TBitBtn).Name = 'BtnSalvarProd') then
  Begin
//    if ((qtSel <= 0) or (cdsEmpresaidCadEmpresa.AsString = '') or (cdsDepositoqtAplicado.AsFloat <= 0)) then
    if (cdsDepositosel.AsString = 'N') and (not usaFilialAplicacao) then
    begin
      messagedlg('Você precisa selecionar a filial!', mtwarning, [mbok], 0);
      exit;
    end;
    If (cdsDepositoqtAplicado.AsFloat > cdsDepositoqtProduto.AsFloat) Then
    begin
      ShowMessage('Quantidade informada maior que o saldo disponível! Informe corretamente!');
      DBGridSaldos.SelectedIndex := 16;
      Exit;
    end;
{    if (cdsAplicacaoProd.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;}
  End;
  if (Sender as TBitBtn).Name = 'BtnExcluirProd' then
  begin
    sql := 'DELETE FROM AplicacaoRateio WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text +
           ' AND idProduto = ' + DBEidProduto.Text;
    dmPadrao.dbConexao.ExecuteDirect(sql);
    sql := 'EXEC spRecalcEstoqueGeral ' + frmPrincipal.idEmpresa + ', ' +
             QuotedStr(DBEdtAplicacao.Text) + ', ' + idProduto + ', ' + QuotedStr('0') + ', ' +
             QuotedStr('S');
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;

  funcao.GravaSec(chave, cdsAplicacaoProd, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd, (Sender as TCBitBtn), 'idProduto');

  if ((Sender as TBitBtn).Name = 'BtnExcluirProd') and (cdsPadrao.State in [dsEdit, dsBrowse]) then
  begin
    dmPadrao.dbConexao.CloseDataSets;
    cdsAplicacaoProd.ApplyUpdates(0);
  end;
  if ((Sender as TBitBtn).Name <> 'BtnNovoProd')then
  begin
    if cdsPadrao.State = dsInsert then
      DivideQtdeProd
    else
      begin
        sql := 'DELETE FROM AplicacaoProdDeposito WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
               ' AND idAplicacao = ' + cdsPadrao.FieldByName('idAplicacao').AsString +
               ' AND idProduto = ' + idProduto;
        dmPadrao.dbConexao.ExecuteDirect(sql);
        if ((Sender as TBitBtn).Name <> 'BtnExcluirProd')then
          DivideQtdeProd;
        HabilitaGrp(False, True);
      end;
    BtnNovoProd.Click;
  end;
  DBEidProduto.SetFocus;
end;

procedure TFrmCadAplicacao.CarregaEstoque;
var
  sql : string;
begin
  sql := 'EXEC spRetEstoqueAplicacao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', 1, ' +
                                         funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                         QuotedStr('') + ', ' +
                                         QuotedStr('') + ', ' +
                                         QuotedStr('0') + ', ' +
                                         QuotedStr('N') + ', ' +
                                         QuotedStr('S') + ', ' +
                                         QuotedStr('N') + ', ' +
                                         QuotedStr('N') + ', ' +
                                         QuotedStr('N') + ', ' +
                                         funcao.RetornaValorEField(DBEdtAplicacao, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidSafra, 3);
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if not(cdsDeposito.Active) then
      cdsDeposito.CreateDataSet;
    LimpaDeposito;
    First;
    while not Eof do
    begin
      if FieldByName('qtProduto').AsFloat > 0 then
      begin
        cdsDeposito.Append;
        cdsDepositoidEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
        cdsDepositoidCadEmpresa.AsInteger := FieldByName('idCadEmpresa').AsInteger;
        cdsDepositodescEmpresa.AsString := FieldByName('descEmpresa').AsString;
        cdsDepositodescCadEmpresa.AsString := FieldByName('descCadEmpresa').AsString;
        cdsDepositoidProdDeposito.AsInteger := FieldByName('idProdDeposito').AsInteger;
        cdsDepositoidProduto.AsInteger := FieldByName('idProduto').AsInteger;
        cdsDepositoqtProduto.AsFloat := FieldByName('qtProduto').AsFloat;
        cdsDepositovlTotal.AsFloat := FieldByName('vlTotal').AsFloat;
        cdsDepositosel.AsString := 'N';
        cdsDeposito.Post;
      end;
      Next;
    end;
  end;
end;

procedure TFrmCadAplicacao.cdsAplicacaoProdAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadAplicacao.cdsAplicacaoProdCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInternalCalc then
    cdsAplicacaoProdvlTotal.AsFloat := cdsAplicacaoProdqtAplicacao.AsFloat * cdsAplicacaoProdvlAplicacao.AsFloat;
end;


procedure TFrmCadAplicacao.ConfigF4Produto;
begin
  if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
    DBEidProduto.Find := FindProdutoSafra
  else
    DBEidProduto.Find := FindProduto;
end;

procedure TFrmCadAplicacao.ConfigFilialAplicacao;
begin
  usaFilialAplicacao := False;
  // Procedure criada para ocultar grid de aplicação e filial quando parametrizado para isso
  usaFilialAplicacao := frmPrincipal.ExecutaSQLRet([], '', 'SELECT usaFilialAplicacao FROM cadConfigEstoque WHERE idEmpresa = ' + DBEidEmpresa.Text).FieldByName('usaFilialAplicacao').AsString = 'S';

  if usaFilialAplicacao then
    begin
      Group.Visible := False;
      CGroupBox14.Top := 71;
      CGroupBox12.Top := 71;
      Height := 430;
    end;
end;

procedure TFrmCadAplicacao.DBEidAplicacaoExit(Sender: TObject);
begin
  inherited;
  if not BuscaChave(cdsPadrao, chave) then
    if trim(DBEidAplicacao.Text) <> '' then
    begin
      messagedlg('Aplicação inexistente! Escolha uma aplicação válida ou deixe em branco para nova!', mtwarning, [mbok],0);
      DBEidAplicacao.SetFocus;
      exit;
    end;
  AbreTabSecundaria;
  if DBEidAplicacao.Text <> '' then
  begin
    VerificaLancamento;
    HabilitaGrp(True, False);
  end
  else
    HabilitaGrp(False, True);
end;

procedure TFrmCadAplicacao.DBEidAplicacaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadAplicacao.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
  if DBEidEmpresa.Text <> idEmpresa then
    ConfigF4Produto;
end;

procedure TFrmCadAplicacao.DBEidProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidProduto.Text;
end;

procedure TFrmCadAplicacao.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEidProduto.Text) <> '' then
  begin
    RetornaSaldoEstoque;
    if not BuscaChaveSec(cdsAplicacaoProd, [DBEidProduto]) then
    begin
      if(trim(DBEidProdDeposito.text) <> '') then
      begin
        cdsAplicacaoProdvlAplicacao.AsCurrency := vlCustoMedio;
        cdsAplicacaoProdqtSaldoAtual.AsFloat := qtSaldoAtual;
        cdsAplicacaoProdqtSaldoData.AsFloat := qtSaldoData;
      end;
    end;
  end;
  if (cdsAplicacaoProd.State IN [dsEdit, dsBrowse]) then
  begin
    VerificaLancamento;
  end
  else
    if (cdsAplicacaoProd.State = dsInsert) then
      if (Trim(DBEidProduto.Text) <> '') then
        CarregaEstoque;
end;

procedure TFrmCadAplicacao.DBEidResultadoEnter(Sender: TObject);
begin
  inherited;
  DBEidResultado.Enabled := true;
end;

procedure TFrmCadAplicacao.DBEqtAplicacaoEnter(Sender: TObject);
begin
  inherited;
  qtAnt := cdsAplicacaoProdqtAplicacao.AsFloat;
  vlAnterior := DBEqtAplicacao.Text;
end;

procedure TFrmCadAplicacao.DBEqtAplicacaoExit(Sender: TObject);
begin
  inherited;
  if qtAnt <> cdsAplicacaoProdqtAplicacao.AsFloat then
  begin
    RetornaSaldoEstoque;
    cdsAplicacaoProdvlAplicacao.AsCurrency := vlCustoMedio;
    cdsAplicacaoProdqtSaldoAtual.AsFloat := qtSaldoAtual;
    cdsAplicacaoProdqtSaldoData.AsFloat := qtSaldoData;
  end;
  if ((Trim(DBEidProduto.Text) <> '') AND (vlAnterior <> DBEqtAplicacao.Text)) then
    LancaBaixas;
end;

procedure TFrmCadAplicacao.DBGridSaldosCellClick(Column: TColumn);
var
  vlSomar : Currency;
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsDeposito do
    begin
      if IsEmpty then
        exit;
      Self.DBGridSaldos.Options := Self.DBGridSaldos.Options - [dgEditing];
      Edit;
      if cdsDepositosel.AsString = 'S' then
      begin
        cdsDepositosel.AsString := 'N';
        qtSel := qtSel - 1;
        cdsDepositofator.AsInteger := -1;
      end
      else
      begin
        cdsDepositosel.AsString := 'S';
        qtSel := qtSel + 1;
        cdsDepositofator.AsInteger := 1;
      end;
       Post;
      DBGridSaldos.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    if not (Column.Index in [16]) then
      Self.DBGridSaldos.Options := Self.FOriginalOptions;
end;

procedure TFrmCadAplicacao.DBGridSaldosColEnter(Sender: TObject);
begin
  inherited;
  if (DBGridSaldos.SelectedIndex in [16]) then
    Self.DBGridSaldos.Options := Self.DBGridSaldos.Options + [dgEditing]
  else
    Self.DBGridSaldos.Options := Self.FOriginalOptions;
end;

procedure TFrmCadAplicacao.DBGridSaldosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  if cdsDepositosel.AsString = 'S' then
    marca := true;
  if (marca) and (Column.Index > 0) then
  begin
    if (trim(Cor) <> '') and (trim(Cor) <> 'clWhite') then
    begin
      DBGridSaldos.Canvas.Brush.Color := StringToColor(Cor); // coloque aqui a cor desejada
      DBGridSaldos.DefaultDrawDataCell(Rect, DBGridSaldos.columns[datacol].field, State);
    end;
  end;
  if (Column.Index = 0) then
  begin
    Self.DBGridSaldos.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGridSaldos.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
    DBGridSaldos.Canvas.Brush.Color := StringToColor(Cor);
  end;
end;

procedure TFrmCadAplicacao.DBGridSaldosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //  inherited;
end;

procedure TFrmCadAplicacao.DBGridSaldosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if cdsDeposito.State in [dsInsert, dsEdit] then
      cdsDeposito.Post;
  end;
end;

procedure TFrmCadAplicacao.DBMobsAplicacaoExit(Sender: TObject);
begin
  inherited;
  if not (BtnFechar.Focused) then
  begin
    PagAbas.ActivePageIndex := 1;
    PagAbasChange(PagAbas);
    if PagAbas.ActivePageIndex = 1 then
      DBEidProduto.SetFocus
  end;
end;


procedure TFrmCadAplicacao.DBProdutosCellClick(Column: TColumn);
begin
  inherited;
  VerificaLancamento;
end;

procedure TFrmCadAplicacao.DeletaRegistroTmp(idProd: Integer);
begin
  with cdsAplicacaoProdDep do
  begin
    if FindKey([idProd]) then
    begin
      First;
      while not eof do
      begin
        First;
        Delete;
      end;
    end;
  end;
end;

procedure TFrmCadAplicacao.DivideQtdeProd;
begin
  //Função Responsavel por dividir
  with cdsDeposito do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('sel').AsString = 'S' then
      begin
        if not(cdsAplicProdDep.Active) then
        begin
          cdsAplicProdDep.Active := False;
          cdsAplicProdDep.CommandText := 'SELECT * FROM AplicacaoProdDeposito WHERE 1=2';
          cdsAplicProdDep.Active := True;
        end;
        cdsAplicProdDep.Append;
        cdsAplicProdDep.FieldByName('idEmpresa').AsInteger := FieldByName('idEmpresa').AsInteger;
        cdsAplicProdDep.FieldByName('idCadEmpresa').AsInteger := FieldByName('idCadEmpresa').AsInteger;
        cdsAplicProdDep.FieldByName('idAplicacao').AsInteger := 0;
        cdsAplicProdDep.FieldByName('idProduto').AsInteger := FieldByName('idProduto').AsInteger;
        cdsAplicProdDep.FieldByName('idAplicacaoProdDeposito').AsInteger := 0;
        cdsAplicProdDep.FieldByName('qtProduto').AsFloat := FieldByName('qtAplicado').AsFloat;
        cdsAplicProdDep.Post;
      end;
      Next;
    end;
  end;
end;

procedure TFrmCadAplicacao.dsAplicacaoProdStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd);
end;

procedure TFrmCadAplicacao.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsEdit, dsInsert] then
    BtnExcluirAplic.Enabled := false
  else
    BtnExcluirAplic.Enabled := true;
end;

procedure TFrmCadAplicacao.dspAplicacaoProdBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadAplicacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadAplicacao := nil;
end;

procedure TFrmCadAplicacao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas,3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsAplicacaoProd;
  Tabelas[2] := cdsAplicProdDep;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidAplicacao;
  foco := DBEidAplicacao;

  tab_chave := 'Aplicacao';
  situacao := 'stAplicacao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadAplicacao.FormShow(Sender: TObject);
var
  sql : string;
begin
  //Ajuste para questão da segurança
  action := 'actLanAplicaProd';
  inherited;
  Width := 616;
  Height := 375;
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
 { sql := 'SELECT * FROM cadConfigEstoque WHERE idEmpresa = ' + frmPrincipal.idEmpresa;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if FieldByName('usaEstoqueFilial').AsString = 'S' then
      filial := False
    else
      filial := True;
    if not filial then
    begin
//      cdsPadrao.FieldByName('idCadEmpresa').Value := FieldByName('filialPadrao').AsString;
      DBEidCadEmpresa.Visible := false;
      LookdescCadEmpresa.Left := 111;
      LookdescCadEmpresa.Width := 274;

      FindEmpresa.JoinClause.Clear;
      FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                 ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                                 ' AND acessa = ' + QuotedStr('S') + ')');

      DBEidEmpresa.Find := FindEmpresa;
    end;
  end; }
  BtnNovo.Click;
  ConfigF4Produto;

  BtnFechar.Left := 508;
end;

end.





