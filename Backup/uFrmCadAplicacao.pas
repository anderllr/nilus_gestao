unit uFrmCadAplicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, Grids, DBGrids, CDBGrid, StdCtrls, DBCtrls,
  CDBMemo, CGroupBox, CFind, DB, Provider, DBClient, ActnList, ImgList, CLookUp,
  Mask, CDBEdit, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls,
  CPageControl, DBXCommon, EditAlign, CEdit, FMTBcd, SqlExpr, CRadioButton;

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
    CLookUp2: TCLookUp;
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
    CLabel6: TCLabel;
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
    DBEidCadEmpresa: TCEdit;
    BtnExcluirAplic: TCBitBtn;
    procedure actExcluirExecute(Sender: TObject);
    procedure TSProdutoContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TabAbasShow(Sender: TObject);
    procedure cdsPadraoAfterOpen(DataSet: TDataSet);
    {procedure RBRatTitulo2Click(Sender: TObject);
    procedure RBRatProdutoClick(Sender: TObject);}
    procedure DBEidEmpresaExit(Sender: TObject);
 { procedure DBEidResultadoRTExit(Sender: TObject);
    procedure cdsAplicacaoRatCalcFields(DataSet: TDataSet); }
    procedure BtnGerarRateioClick(Sender: TObject);
    procedure cdsAplicacaoProdCalcFields(DataSet: TDataSet);
  {  procedure BtnSalvarRatClick(Sender: TObject);
    procedure dsAplicacaoRatStateChange(Sender: TObject);}
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
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEidRateioExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure HabilitaRatRes;
    procedure AtualizaLookUpRes;
    procedure BtnExcluirAplicClick(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure DBMobsAplicacaoExit(Sender: TObject);
    procedure CBitBtn1Click(Sender: TObject);
    procedure cdsAplicacaoProdAfterEdit(DataSet: TDataSet);
    procedure RetornaSaldoEstoque;
    procedure DBEqtAplicacaoEnter(Sender: TObject);
    procedure DBEqtAplicacaoExit(Sender: TObject);
{    procedure GeraRateioAplicacao(tipo: byte);
    procedure GeraRateio; }
  private
    { Private declarations }
    qtSaldoAtual, qtAnt : double;
    vlCustoMedio : currency;
  public
    { Public declarations }
  end;

var
  FrmCadAplicacao: TFrmCadAplicacao;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao;

{$R *.dfm}

{$REGION 'Procedure GeraRateioAplicacao'}
{
procedure TFrmCadAplicacao.GeraRateio;
var
  vlRateio, prRateio : Double;
begin
  cdsAplicacaoRat.Active := true;
  cdsAplicacaoRat.EmptyDataSet;
  cdsAplicacaoRat.IndexFieldNames := 'idResultado';
  with cdsAplicacaoRat do
  begin
    Filtered := false;
    IndexFieldNames := 'idResultado';
//    showmessage(inttostr(cdsTituloPagRat.RecordCount));
    First;
    while not Eof do
    begin
      if cdsAplicacaoRat.FindKey([FieldByName('idResultado').AsInteger]) then
      begin
        cdsAplicacaoRat.Edit;
        cdsAplicacaoRat.FieldByName('vlRateio').Value := cdsAplicacaoRat.FieldByName('vlRateio').Value +
                                                         FieldByName('vlRateio').Value;
        cdsAplicacaoRat.Post;
      end
      else
      begin
        cdsAplicacaoRat.Append;
        cdsAplicacaoRat.FieldByName('idEmpresa').Value := FieldByName('idEmpresa').Value;        
        cdsAplicacaoRat.FieldByName('idAplicacao').Value := FieldByName('idAplicacaoRat').Value;
        cdsAplicacaoRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
        cdsAplicacaoRat.FieldByName('vlRateio').Value := FieldByName('vlRateio').Value;
        cdsAplicacaoRat.FieldByName('prRateio').Value := 0;
        cdsAplicacaoRat.Post;
      end;
      Next;
    end; // fim do while not Eof do
  end; // fim do with cdsTituloPagRat do
  //Ajusta o percentual do rateio
  with cdsAplicacaoRat do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlRateio := FieldByName('vlRateio').AsFloat;
      prRateio := ((vlRateio / cdsAplicacaoProdvlTotalProd.Value)*100);
      Edit;
      FieldByName('prRateio').AsFloat := prRateio;
      Post;
      Next;
    end;
  end; //  fim do with cdsTituloRateio do
end;

procedure TFrmCadAplicacao.GeraRateioAplicacao(tipo: byte);
//variável tipo: 0 : baseado no titulo
//               1 : baseado na temporária cdsTituloRateio
var
  idResMaior : integer;
  vlRateioMaior, vlDiferenca : currency;
begin
//******************  INICIO DO RATEIO PELAS PARCELAS  ***********************//
  idResMaior := 0;
  with cdsAplicacaoRat do
  begin
    Filtered := false;
    //limpa a tabela se houverem registros nela
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        delete;
        first;
      end;
      if ChangeCount > 0 then
        ApplyUpdates(0);
    end;
    cdsAplicacaoProd.First;
    while not cdsAplicacaoProd.Eof do
    begin
      if tipo = 0 then //geração a partir do titulo
      begin
        //início da geração do rateio / sem plano de rateio direto pelo plano de resultado
        if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
        begin
            Append;
            if trim(DBEidProduto.Text) <> '' then
              FieldByName('idProduto').AsString := DBEidProduto.Text
            else
            FieldByName('idProduto').Value := 0;
            FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
            FieldByName('vlRateio').Value := cdsAplicacaoRat.FieldByName('vlTotalRateio').Value;
            FieldByName('prRateio').Value := '100';
            Post;
        end
        else
        begin  //início da geração do rateio / via plano de rateio
          if trim(DBEidRateio.Text) = '' then
          begin
            messagedlg('O centro de resultado ou o rateio devem ser informados!', mtwarning, [mbok], 0);
            cdsAplicacaoRat.EmptyDataSet;
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
              cdsAplicacaoRat.Append;
              if trim(DBEidAplicacao.Text) <> '' then
                cdsAplicacaoRat.FieldByName('idAplicacao').AsString := DBEidAplicacao.Text
              else
              cdsAplicacaoRat.FieldByName('idProduto').Value := 0;
              cdsAplicacaoRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
              cdsAplicacaoRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
              cdsAplicacaoRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsAplicacaoRat.FieldByName('vlTotalRateio').Value *
                                                               FieldByName('prRateio').Value)/100);
              //para registrar quem tem o maior valor
              if vlRateioMaior < cdsAplicacaoRat.FieldByName('vlRateio').Value then
                idResMaior := cdsAplicacaoRat.FieldByName('idResultado').Value;
              cdsAplicacaoRat.Post;
              Next;
            end; //fim do laço do rateio
          end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do

        end; //fim do else   begin  //início da geração do rateio / via plano de rateio
      end //fim do if tipo = 0
      else //para o tipo = 1
      begin
        with cdsAplicacaoRat do
        begin
          First;
          vlRateioMaior := 0;
          idResMaior := 0;
          while not Eof do
          begin
            cdsAplicacaoRat.Append;
            cdsAplicacaoRat.FieldByName('idEmpresa').Value := FieldByName('idEmpresa').Value;
            cdsAplicacaoRat.FieldByName('idProduto').Value := FieldByName('idProduto').Value;
            cdsAplicacaoRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
            cdsAplicacaoRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
            cdsAplicacaoRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsAplicacaoRat.FieldByName('vlParcela').Value *
                                                             FieldByName('prRateio').Value)/100);
            //para registrar quem tem o maior valor
            if vlRateioMaior < cdsAplicacaoRat.FieldByName('vlRateio').Value then
              idResMaior := cdsAplicacaoRat.FieldByName('idResultado').Value;
            cdsAplicacaoRat.Post;
            Next;
          end; //fim do laço do rateio
        end; // fim do with cdsTituloRateio do

      end; //fim do else para o tipo = 1

      //inicia processo para ajuste de valor caso haja diferença joga para o maior
      if (cdsAplicacaoRatvlTotalRateio.Value <> cdsAplicacaoProdvlTotalProd.Value) then
        if not ((tipo = 1) and (cdsAplicacaoRatvlTotalRateio.Value < cdsAplicacaoProdvlTotalProd.Value)) then
        begin
          vlDiferenca := cdsAplicacaoProdvlTotalProd.Value - cdsAplicacaoRatvlTotalRateio.Value;
          IndexFieldNames := 'idResultado';
          FindKey([idResMaior]);
          Edit;
          FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
          Post;
        end;
      Filtered := false;
      cdsAplicacaoRat.Next;
    end;// fim do while not cdsTituloPagParc.Eof do
  end; // fim do with cdsTituloPagRat do
  cdsAplicacaoRat.First;
  if not (frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL') then
    GeraRateio;
end;
 }
{$ENDREGION}

procedure TFrmCadAplicacao.HabilitaRatRes;
//procedure criada para controlar a habilitação para ver se o título está recebendo rateio
// ou centro de resultado direto
begin
{//  funcao.SomenteLeitura([DBEidResultado, DBEidRateio], false);
  if trim(DBEidResultado.Text) <> '' then
  begin
//    funcao.SomenteLeitura([DBEidRateio], true);
//    funcao.SomenteLeitura([DBEidResultado], false);
//  end
  else
//    if trim(DBEidRateio.Text) <> '' then
    begin
      funcao.SomenteLeitura([DBEidRateio], false);
      funcao.SomenteLeitura([DBEidResultado], true);
    end;}
end;


procedure TFrmCadAplicacao.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 343;
  end
  else
    if PagAbas.ActivePageIndex = 1 then
    begin
      Height := 466;
      if trim(DBEidProdDeposito.text) = '' then
      begin
        messagedlg('Inicie uma Aplicação !', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
    end;
{$REGION ' Parte do Rateio'}
  {
    else
      if PagAbas.ActivePageIndex = 2 then
      begin
        Height := 466;
        if cdsAplicacaoProd.IsEmpty then
        begin
          messagedlg('Os produtos devem ser lançados antes do rateio', mtwarning, [mbok], 0);
          PagAbas.ActivePageIndex := 1;
          exit;
        end;
        cdsAplicacaoRatidResultado.Value := cdsPadrao.FieldByName('idResultado').Value;
        }
{$ENDREGION ' Parte do Rateio'}        
end;
procedure TFrmCadAplicacao.RetornaSaldoEstoque;
var
  sql : string;
begin
  vlCustoMedio := 0;
  qtSaldoAtual := 0;
  if trim(DBEidProduto.Text) <> '' then
  begin //busca o saldo e valor de custo médio do produto
    sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s', [DBEidEmpresa.Text, DBEidProduto.Text, DBEidProdDeposito.Text, funcao.ConverteData(date), QuotedStr('SEL')]);
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      qtSaldoAtual := FieldByName('qtProduto').Value;
      vlCustoMedio := FieldByName('vlCustoMedio').AsCurrency;
    end;
  end;
end;

procedure TFrmCadAplicacao.TabAbasShow(Sender: TObject);
begin
  inherited;
  Height := 343;
end;

procedure TFrmCadAplicacao.TSProdutoContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;

end;
{$REGION ' Parte do Rateio'}
{
procedure TFrmCadAplicacao.RBRatProdutoClick(Sender: TObject);
begin
  inherited;
  GrpRateioProduto.Visible := true;
  GrpRateioAplicacao.Visible := false;
  RBRatProduto.Checked := true;
  cdsAplicacaoRatidProduto.Value := (cdsAplicacaoProdidProduto.Value);
  cdsAplicacaoRatqtRateio.Value := (cdsAplicacaoRatprRateio.value * cdsAplicacaoProdqtAplicacao.Value);
end;

procedure TFrmCadAplicacao.RBRatTitulo2Click(Sender: TObject);
begin
  inherited;
  GrpRateioAplicacao.Visible := true;
  GrpRateioProduto.Visible := false;
  RBRatAplicacao.Checked := true;
end;}
{$ENDREGION - 'Parte do Rateio'}



procedure TFrmCadAplicacao.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if (trim(DBEstAplicacao.Text) = 'CANCELADO') then
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, EDDoc, nil, DBEidAplicacao, nil, nil, EdPar], 'spAtualizaEstoque');
end;

procedure TFrmCadAplicacao.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  sql : string;
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
//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported
  dmPadrao.dbConexao.CloseDataSets;
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    //busca a numeração em caso de nova aplicaçao

    GravaChave(1, '', nil);
    inherited;

    dmPadrao.dbConexao.CloseDataSets;
    sql := 'EXEC spFechaAplicacao ' + DBEidEmpresa.Text + ', ' + DBEidAplicacao.Text + ', ' + DBEidProdDeposito.Text;
    dmPadrao.dbConexao.ExecuteDirect(sql);
    //   if not funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp,
//          [DBEidEmpresa, DBEidAplicacao, DBEidProdDeposito], 'spFechaAplicacao') then
//          frmPrincipal.erro := 1;
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

  Screen.Cursor := crDefault;
end;

procedure TFrmCadAplicacao.AtualizaLookUpRes;
begin
  //
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
                                         funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(EDDoc, 3) + ', ' +
                                         'null' + ', ' +
                                         funcao.RetornaValorEField(DBEidAplicacao, 3) + ', ' +
                                         'null' + ', ' +
                                         'null' + ', ' +
                                         funcao.RetornaValorEField(EdPar, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);
//    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, EDDoc, nil, DBEidAplicacao, nil, nil, EdPar], 'spAtualizaEstoque');
  end;

  sql := 'DELETE FROM AplicacaoRateio WHERE idEmpresa = ' +DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  //Deleta Aplicação da Tabela AplicacaoProd
  sql := 'DELETE FROM AplicacaoProd WHERE idEmpresa = ' +DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  //Delete Aplicacao da Tabela Aplicacao
  sql := 'DELETE FROM Aplicacao WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);
  cdsPadrao.Refresh;
  DBEidAplicacao.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TFrmCadAplicacao.BtnGerarRateioClick(Sender: TObject);
var
//  vlMaior, vlTotal, vlDiferenca : currency;
//  idMaior : integer;
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
    {$REGION 'Geração por Rateio'}
 { if trim(DBEidRateio.text) <> '' then
  begin
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
    begin
      First;
      vlMaior := 0;
      idMaior := 0;
      while not Eof do
      begin
        cdsAplicacaoRat.Append;
        cdsAplicacaoRat.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
        cdsAplicacaoRat.FieldByName('idAplicacao').AsString := '0';
        cdsAplicacaoRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
        cdsAplicacaoRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
        cdsAplicacaoRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((vlTotal *
                                                        FieldByName('prRateio').Value)/100);
        //para registrar quem tem o maior valor
        if vlMaior < cdsAplicacaoRat.FieldByName('vlRateio').Value then
        begin
           idMaior := cdsAplicacaoRat.FieldByName('idResultado').Value;
           vlMaior := cdsAplicacaoRat.FieldByName('vlRateio').Value;
        end;
        cdsAplicacaoRat.Post;
        Next;
      end; //fim do laço do rateio
    end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
    //inicia processo para ajuste de valor caso haja diferença joga para o maior
    with cdsAplicacaoRat do
    begin
      if (cdsAplicacaoRatvlTotalRateio.AsCurrency <>  vlTotal) then
      begin
        vlDiferenca := vlTotal - cdsAplicacaoRatvlTotalRateio.AsCurrency;
        IndexFieldNames := 'idResultado';
        FindKey([idMaior]);
        Edit;
        FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
        Post;
      end;
    end; //fim do With cdsNfRateio
  end; //fim do DBEidRateio.text <> ''   }
  {$ENDREGION}

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
  sql : string;
begin
  //
  inherited;
  //
  If (cdsAplicacaoProd.FieldByName('qtAplicacao').asFloat <= 0) Then
     Begin
       //
       ShowMessage('Informe corretamente a quantidade.');
       Exit;
       //
     End;
  //
  If (cdsAplicacaoProd.FieldByName('qtAplicacao').asFloat > cdsAplicacaoProd.FieldByName('qtSaldoAtual').asFloat) Then
  begin
    ShowMessage('Quantidade informada maior que o saldo disponível! Informe corretamente!');
    DBEqtAplicacao.SetFocus;
    Exit;
  end;
  if (Sender as TBitBtn).Name = 'BtnExcluirProd' then
  begin
    sql := 'DELETE FROM AplicacaoRateio WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idAplicacao = ' + DBEidAplicacao.Text +
           ' AND idProduto = ' + DBEidProduto.Text;
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;

  funcao.GravaSec(chave, cdsAplicacaoProd, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd, (Sender as TCBitBtn), 'idProduto');

  if ((Sender as TBitBtn).Name = 'BtnExcluirProd') and (cdsPadrao.State in [dsEdit, dsBrowse]) then
  begin
    dmPadrao.dbConexao.CloseDataSets;
    cdsAplicacaoProd.ApplyUpdates(0);
  end;

  DBEidProduto.SetFocus;

  //
end;

procedure TFrmCadAplicacao.CBitBtn1Click(Sender: TObject);
begin
  inherited;

end;

{$REGION ' Parte do Rateio'}
{
procedure TFrmCadAplicacao.BtnSalvarRatClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsAplicacaoRat, BtnSalvarRat, BtnCancelarRat,   BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), 'idResultado');
  DBEidResultado.SetFocus;
end;
}
{$ENDREGION ' Parte do Rateio'}

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
procedure TFrmCadAplicacao.cdsPadraoAfterOpen(DataSet: TDataSet);
begin
  inherited;

end;

{$REGION ' Parte do Rateio'}
{
procedure TFrmCadAplicacao.cdsAplicacaoRatCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInternalCalc then
    cdsAplicacaoRatvlRestante.AsFloat := cdsAplicacaoProdvlTotalProd.Value - cdsAplicacaoRatvlTotalRateio.Value;
end;
}
{$ENDREGION ' Parte do Rateio'}

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
  HabilitaRatRes;

end;

procedure TFrmCadAplicacao.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

procedure TFrmCadAplicacao.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  RetornaSaldoEstoque;
  if not BuscaChaveSec(cdsAplicacaoProd, [DBEidProduto]) then
  begin
    if(trim(DBEidProdDeposito.text) <> '') then
    begin
      cdsAplicacaoProdvlAplicacao.AsCurrency := vlCustoMedio;
      cdsAplicacaoProdqtSaldoAtual.AsFloat := qtSaldoAtual;
    end;
  end;
end;

procedure TFrmCadAplicacao.DBEidRateioExit(Sender: TObject);
begin
  inherited;
  HabilitaRatRes;
end;

procedure TFrmCadAplicacao.DBEidResultadoEnter(Sender: TObject);
begin
  inherited;
  DBEidResultado.Enabled := true;
end;

procedure TFrmCadAplicacao.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  HabilitaRatRes;
end;
procedure TFrmCadAplicacao.DBEqtAplicacaoEnter(Sender: TObject);
begin
  inherited;
  qtAnt := cdsAplicacaoProdqtAplicacao.AsFloat;
end;

procedure TFrmCadAplicacao.DBEqtAplicacaoExit(Sender: TObject);
begin
  inherited;
  if qtAnt <> cdsAplicacaoProdqtAplicacao.AsFloat then
  begin
    RetornaSaldoEstoque;
    cdsAplicacaoProdvlAplicacao.AsCurrency := vlCustoMedio;
    cdsAplicacaoProdqtSaldoAtual.AsFloat := qtSaldoAtual;
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

{$REGION ' Parte do Rateio'}
{
procedure TFrmCadAplicacao.DBEidResultadoRTExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsAplicacaoRat, [DBEidResultado])
end;
}
{$ENDREGION ' Parte do Rateio'}
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

{$REGION ' Parte do Rateio'}
{
procedure TFrmCadAplicacao.dsAplicacaoRatStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;
}
{$ENDREGION ' Parte do Rateio'}

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
  SetLength(Tabelas,2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsAplicacaoProd;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidAplicacao;
  foco := DBEidAplicacao;
  FindPesquisa := FindAplicacao;
  tab_chave := 'Aplicacao';
  situacao := 'stAplicacao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadAplicacao.FormShow(Sender: TObject);
begin
  inherited;
  Width := 616;
  Height := 343;
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

end.
