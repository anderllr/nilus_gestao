unit uFrmCadMaquinaOperacao;

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
  TFrmCadMaquinaOperacao = class(TFrmCadPadraoEmpFiscal)
    sdsOperacao: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidMaquina: TCDBEdit;
    DBEdtOperacao: TCDBEdit;
    CLabel3: TCLabel;
    DBEidOperacao: TCDBEdit;
    CLabel4: TCLabel;
    DBEhr_kmInicial: TCDBEdit;
    CLabel62: TCLabel;
    DBEidTipoAtividade: TCDBEdit;
    LookTipoAtividade: TCLookUp;
    CLabel8: TCLabel;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    dspProdutos: TDataSetProvider;
    sdsProdutos: TSQLDataSet;
    TabProdutos: TTabSheet;
    CGroupBox8: TCGroupBox;
    cdsCusto: TClientDataSet;
    dsCusto: TDataSource;
    dspCusto: TDataSetProvider;
    sdsCusto: TSQLDataSet;
    CGroupBox9: TCGroupBox;
    CLabel40: TCLabel;
    CLabel41: TCLabel;
    CLabel45: TCLabel;
    CLabel46: TCLabel;
    DBEqtProduto: TCDBEdit;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProdMedida: TCLookUp;
    DBEvlProduto: TCDBEdit;
    DBEvlTotalProd: TCDBEdit;
    CBitBtn8: TCBitBtn;
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
    DBMobsOperacao: TCDBMemo;
    CLabel5: TCLabel;
    CGroupBox2: TCGroupBox;
    CBitBtn6: TCBitBtn;
    LookRateio: TCLookUp;
    DBEidRateio: TCDBEdit;
    CLabel12: TCLabel;
    CBitBtn5: TCBitBtn;
    CLookUp11: TCLookUp;
    DBEidResultado: TCDBEdit;
    CLabel1: TCLabel;
    CBitBtn7: TCBitBtn;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    CLabel2: TCLabel;
    CLabel6: TCLabel;
    DBEqtHoraKm: TCDBEdit;
    DBEhr_kmAtual: TCDBEdit;
    CLabel7: TCLabel;
    DBEvlHoraKm: TCDBEdit;
    CLabel9: TCLabel;
    DBEvlTotalHoraKm: TCDBEdit;
    CLabel11: TCLabel;
    CBitBtn4: TCBitBtn;
    LookProdDeposito: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    CLabel10: TCLabel;
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
    DBEvlTotalHoraKm2: TCDBEdit;
    CGroupBox4: TCGroupBox;
    DBGridCusto: TCDBGrid;
    LookResultadoC: TCLookUp;
    DBEidResultadoR: TCDBEdit;
    CLabel13: TCLabel;
    cdsCustoidEmpresa: TIntegerField;
    cdsCustoidCadEmpresa: TSmallintField;
    cdsCustoidOperacao: TIntegerField;
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
    cdsProdutosidOperacao: TIntegerField;
    cdsProdutosidProduto: TIntegerField;
    cdsProdutosvlProduto: TFMTBCDField;
    cdsProdutosqtProduto: TFMTBCDField;
    cdsProdutosmovimentaEstoque: TStringField;
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
    procedure DBEidOperacaoExit(Sender: TObject);
    procedure BtnAdicionarCustoClick(Sender: TObject);
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure DBEidMaquinaEnter(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure ConfigMaquina;
    procedure LimpaProdutos;
    procedure DBEqtHoraKmExit(Sender: TObject);
    procedure HabilitaRatRes;
    procedure DBEidResultadoExit(Sender: TObject);
    procedure GeraRateio;
    procedure LimpaRateio;
    procedure actExcluirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEhr_kmAtualExit(Sender: TObject);
    procedure DBEhr_kmAtualEnter(Sender: TObject);
    procedure RetornaSaldoEstoque;
    procedure DBEidProdutoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
    vlProdAnterior : currency;
    qtSaldoAtual, qtAnt : double;
    vlCustoMedio : currency;
  public
    { Public declarations }
  end;

var
  FrmCadMaquinaOperacao: TFrmCadMaquinaOperacao;

implementation

uses uDmPadrao, uDmFind, uFuncao, uFrmPrincipal, uFrmPesOperacao;

{$R *.dfm}

procedure TFrmCadMaquinaOperacao.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 420;
    Width := 690;
  end;
  if PagAbas.ActivePageIndex = 1 then
  begin
    Height := 526;
    Width := 690;
  end;
  if PagAbas.ActivePageIndex = 2 then //custo
  begin
    cdsResultado.Active := false;
    cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
    cdsResultado.Active := true;
    Height := 526;
    Width := 690;
  end;
end;

procedure TFrmCadMaquinaOperacao.RetornaSaldoEstoque;
var
  sql : string;
begin
  inherited;
  vlCustoMedio := 0;
  qtSaldoAtual := 0;
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
  end;
end;

//****************************************************************************************//
procedure TFrmCadMaquinaOperacao.actExcluirExecute(Sender: TObject);
var
  sql : string;
begin
  sql := 'EXEC spAtualizaEstoque ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
         QuotedStr('MAQ') + ', NULL, ' + DBEidOperacao.Text + ', NULL, NULL, ' + QuotedStr('OUT');
  try
    inherited;
  finally
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;

end;

procedure TFrmCadMaquinaOperacao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesOperacao, FrmPesOperacao);
  FrmPesOperacao.idEmpresa := DBEidEmpresa.Text;
  FrmPesOperacao.idCadEmpresa := DBEidCadEmpresa.Text;
  FrmPesOperacao.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesOperacao.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesOperacao.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesOperacao.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesOperacao.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesOperacao.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idOperacao').Value := FrmPesOperacao.cdsGrid.FieldByName('idOperacao').Value;
      DBEidOperacao.SetFocus;
      DBEidOperacaoExit(DBEidOperacao);
    end;
  end;
end;

procedure TFrmCadMaquinaOperacao.actSalvarExecute(Sender: TObject);
var
  msg, sql : string;
  t : TDBXTransaction;
//  vlTotalRateio : currency;
begin
  msg := '';
  if cdsProdutos.State in [dsEdit, dsInsert] then
    cdsProdutos.Cancel;

  if cdsCusto.State in [dsEdit, dsInsert] then
    cdsCusto.Cancel;

//  vlTotalRateio := 0;
//  if not (cdsCustovlTotalRateio.IsNull) then
//    if cdsCustovlTotalRateio.Value > 0 then
//      vlTotalRateio := cdsCustovlTotalRateio.Value;
//
//  if cdsPadrao.FieldByName('vlTotalHoraKm').AsCurrency <> vlTotalRateio then
//    msg := 'O valor total do rateio não pode ser diferente do valor total da operação!' + #13;
//
//  if (trim(DBEidResultado.Text) = '') and (trim(DBEidRateio.Text) = '') then
//    msg := msg + 'Deve se lançar Resultado(Talhão) ou um Plano de Rateio!' + #13;

  if (trim(DBEidProdDeposito.Text) = '') and (cdsProdutos.RecordCount > 0) then
    msg := msg + 'O depósito deve ser informado!' + #13
  else
    if (cdsProdutos.RecordCount > 0) then
    begin
      //faz um loop nos produtos para ver a disponibilidade em estoque
      cdsProdutos.First;
      while not cdsProdutos.Eof do
      begin
        if cdsProdutosmovimentaEstoque.AsString = 'S' then
        begin
          if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
            sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, %s', [cdsEmpresaidEmpresa.AsString,
                          cdsProdutosidProduto.AsString, DBEidProdDeposito.Text, funcao.ConverteData(date), QuotedStr('SEL'),
                          funcao.RetornaValorEField(DBEidSafra, 3)])
          else
            sql := Format('EXEC spRetCustoSaldo %s, 0, %s, %s, %s, 0, 0, 0, %s, 0', [cdsEmpresaidEmpresa.AsString,
                          cdsProdutosidProduto.AsString, DBEidProdDeposito.Text, funcao.ConverteData(date), QuotedStr('SEL')]);

          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          begin
            if cdsProdutosqtProduto.AsFloat > FieldByName('qtProduto').AsFloat then
              msg := msg + 'Produto: ' + cdsProdutosidProduto.AsString + '-' + cdsProdutosdescProduto.AsString + ' Saldo Insuficiente - Atual: ' + FieldByName('qtProduto').AsString + #13;
          end;
        end; // fim do if cdsProdutosmovimentaEstoque.AsString = 'S' then

        //verifica se o produto está com valor zerado
        if cdsProdutosvlProduto.AsFloat = 0 then
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
  //busca a numeração em caso de nova Operacao
  GravaChave(1, '', nil);
  inherited;
  if not dmPadrao.dbConexao.InTransaction then
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    dmPadrao.dbConexao.CloseDataSets;
//    sql := 'EXEC spFechaMaquinaOperacao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
//    funcao.RetornaValorEField(DBEidOperacao, 3) + ', ' + funcao.RetornaValorEField(DBEidProdDeposito, 3);
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEidOperacao, DBEidProdDeposito], 'spFechaMaquinaOperacao');
//    dmPadrao.dbConexao.ExecuteDirect(sql);
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

procedure TFrmCadMaquinaOperacao.BtnAdicionarCustoClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCusto, BtnAdicionarCusto, BtnCancelarCusto, BtnRetirarCusto, BtnNovoCusto, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarCusto' then
    BtnNovoCusto.Click;

  DBEidResultadoR.SetFocus;
end;

procedure TFrmCadMaquinaOperacao.BtnAdicionarProdClick(Sender: TObject);
var
  vlTotalGeral : currency;
begin
  vlProdAnterior := 0;
  vlTotalGeral := 0;
  if not (cdsProdutosvlTotalGeral.IsNull) then
    if cdsProdutosvlTotalGeral.Value > 0 then
      vlProdAnterior := cdsProdutosvlTotalGeral.Value;
  inherited;
  funcao.GravaSec(chave, cdsProdutos, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
    BtnNovoProd.Click;

  if PagAbas.ActivePageIndex = 1 then
    DBEidProduto.SetFocus;

  if not (cdsProdutosvlTotalGeral.IsNull) then
    if cdsProdutosvlTotalGeral.Value > 0 then
      vlTotalGeral := cdsProdutosvlTotalGeral.Value;

  //se estiver diferente recalcula os valores
  if vlProdAnterior <> vlTotalGeral then
  begin
    cdsPadrao.FieldByName('vlHoraKm').AsCurrency := (cdsPadrao.FieldByName('vlHoraKm').AsCurrency - vlProdAnterior) + vlTotalGeral;
    cdsPadrao.FieldByName('vlTotalHoraKm').AsCurrency := RoundTo(cdsPadrao.FieldByName('qtHoraKm').AsFloat*
                                                         cdsPadrao.FieldByName('vlHoraKm').AsFloat, -2);
    GeraRateio;
  end;


end;

procedure TFrmCadMaquinaOperacao.cdsProdutosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMaquinaOperacao.cdsProdutosCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsProdutosvlTotalProd.AsCurrency := RoundTo(cdsProdutosqtProduto.AsFloat*cdsProdutosvlProduto.AsCurrency, -2);
end;

procedure TFrmCadMaquinaOperacao.ConfigMaquina;
//procedure que irá buscar os dados quando a máquina for alterada
begin
  //primeiro limpa a tabela de produtos, pois como mudou, já não serão os mesmos
  LimpaProdutos;
  //zera os valores de km e hora
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsPadrao.FieldByName('hr_kmInicial').Value := 0;
//  cdsPadrao.FieldByName('hr_kmAtual').Value := 0;
  cdsPadrao.FieldByName('vlHoraKm').Value := 0;
  cdsPadrao.FieldByName('vlTotalHoraKm').Value := 0;

  if trim(DBEidMaquina.Text) <> '' then
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidMaquina], 'spRetDadosMaquina', '') do
    begin
      First;
      //Ajusta os valores padrões
      cdsPadrao.FieldByName('hr_kmInicial').Value := FieldByName('hr_kmInicial').Value;
//      cdsPadrao.FieldByName('hr_kmAtual').Value := FieldByName('hr_kmInicial').Value + cdsPadrao.FieldByName('qtHoraKm').AsFloat;
      cdsPadrao.FieldByName('vlHoraKm').Value := FieldByName('vlHoraKm').Value;
      cdsPadrao.FieldByName('vlTotalHoraKm').Value := FieldByName('vlHoraKm').AsFloat * cdsPadrao.FieldByName('qtHoraKm').AsFloat;

      //se houver produto ai faz o loop para adicionar os mesmos
      if not (FieldByName('idProduto').IsNull) then
      begin
        while not eof do
        begin
          if cdsProdutos.State in [dsInsert, dsEdit] then
            cdsProdutos.Cancel;
          BtnNovoProd.Click;
          cdsProdutosidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
          cdsProdutosidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
          if cdsPadrao.FieldByName('idOperacao').AsInteger > 0 then
            cdsProdutosidOperacao.AsInteger := cdsPadrao.FieldByName('idOperacao').AsInteger;
          cdsProdutosqtProduto.AsFloat := FieldByName('qtHoraKM').AsFloat;
          cdsProdutosidProduto.AsInteger := FieldByName('idProduto').AsInteger;
          cdsProdutosvlProduto.AsCurrency := FieldByName('vlProduto').AsCurrency;
          cdsProdutosmovimentaEstoque.AsString := FieldByName('movimentaEstoque').AsString;
          BtnAdicionarProd.Click;
          Next;
        end;
      end;
    end;
end;

procedure TFrmCadMaquinaOperacao.DBEhr_kmAtualEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadMaquinaOperacao.DBEhr_kmAtualExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCDBEdit).Text) then
  begin
    cdsPadrao.FieldByName('qtHoraKm').AsCurrency := cdsPadrao.FieldByName('hr_kmAtual').AsFloat -
                                                      cdsPadrao.FieldByName('hr_kmInicial').AsFloat;
    cdsPadrao.FieldByName('vlTotalHoraKm').AsCurrency := RoundTo(cdsPadrao.FieldByName('qtHoraKm').AsFloat*
                                                         cdsPadrao.FieldByName('vlHoraKm').AsFloat, -2);
  end;
end;

procedure TFrmCadMaquinaOperacao.DBEidMaquinaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadMaquinaOperacao.DBEidMaquinaExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCDBEdit).Text) then
  begin
    ConfigMaquina;
    GeraRateio;
  end;
end;

procedure TFrmCadMaquinaOperacao.DBEidOperacaoExit(Sender: TObject);
begin
  inherited;
  if (not (BuscaChave(cdsPadrao, chave))) and (trim(DBEidOperacao.Text) <> '') then
  begin
    messagedlg('Operação não encontrada! Deixe em branco para novo lançamento!', mtwarning, [mbok], 0);
    DBEidOperacao.SetFocus;
    exit;
  end;
  AbreTabSecundaria;
end;

procedure TFrmCadMaquinaOperacao.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  RetornaSaldoEstoque;
  if not BuscaChaveSec(cdsProdutos, [DBEidProduto]) then
  begin
    if(trim(DBEidProdDeposito.text) <> '') then
    begin
      cdsProdutosvlProduto.AsCurrency := vlCustoMedio;
    end;
  end;
end;

procedure TFrmCadMaquinaOperacao.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCDBEdit).Text) <> vlAnterior then
  begin
    HabilitaRatRes;
    if (trim(DBEidResultado.Text) <> '') or (trim(DBEidRateio.Text) <> '') then
      GeraRateio;
  end;
end;

procedure TFrmCadMaquinaOperacao.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCusto, [DBEidResultadoR]);
end;

procedure TFrmCadMaquinaOperacao.DBEqtHoraKmExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCDBEdit).Text) then
  begin
    cdsPadrao.FieldByName('vlTotalHoraKm').AsCurrency := RoundTo(cdsPadrao.FieldByName('qtHoraKm').AsFloat*
                                                         cdsPadrao.FieldByName('vlHoraKm').AsFloat, -2);
    cdsPadrao.FieldByName('hr_kmAtual').AsCurrency := cdsPadrao.FieldByName('qtHoraKm').AsFloat +
                                                      cdsPadrao.FieldByName('hr_kmInicial').AsFloat;
  end;
end;

procedure TFrmCadMaquinaOperacao.dspProdutosBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
{  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
    begin
      GeraAutoInc(DeltaDS, 'TituloPagMov', 'idTituloPagMov', []);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
}
end;

procedure TFrmCadMaquinaOperacao.dsProdutosStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsProdutos, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadMaquinaOperacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadMaquinaOperacao := nil;
end;

procedure TFrmCadMaquinaOperacao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsProdutos;
  Tabelas[2] := cdsCusto;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidOperacao;
  foco := DBEidOperacao;
  tab_chave := 'MaquinaOperacao';
  Height := 420;
  Width := 692;
end;

procedure TFrmCadMaquinaOperacao.FormShow(Sender: TObject);
var
  sql : string;
begin
  //Ajuste para questão da segurança
  action := 'actLanMaquinaOperacao';
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
  end;      }
end;

procedure TFrmCadMaquinaOperacao.GeraRateio;
//procedure responsável por realizar o cálculo do rateio
//será executada todas as vezes que for necessário
var
  vlDif, vlTotalRateio : currency;
begin
   LimpaRateio;
   if cdsPadrao.FieldByName('idResultado').AsInteger > 0 then
   begin
     if cdsCusto.State in [dsInsert, dsEdit] then
       cdsCusto.Cancel;
     cdsCusto.Append;
     cdsCustoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
     cdsCustoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
     if cdsPadrao.FieldByName('idOperacao').AsInteger > 0 then
       cdsCustoidOperacao.AsInteger := cdsPadrao.FieldByName('idOperacao').AsInteger
     else
       cdsCustoidOperacao.AsInteger := 0;
     cdsCustoidResultado.AsInteger := cdsPadrao.FieldByName('idResultado').AsInteger;
     cdsCustoprRateio.AsFloat := 100;
     cdsCustovlRateio.AsCurrency := cdsPadrao.FieldByName('vlTotalHoraKm').AsCurrency;
     cdsCusto.Post;
   end
   else
     if cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
     begin
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
           if cdsPadrao.FieldByName('idOperacao').AsInteger > 0 then
             cdsCustoidOperacao.AsInteger := cdsPadrao.FieldByName('idOperacao').AsInteger
           else
             cdsCustoidOperacao.AsInteger := 0;
           cdsCustoidResultado.AsInteger := FieldByName('idResultado').AsInteger;
           cdsCustoprRateio.AsFloat := FieldByName('prRateio').AsFloat;
           cdsCustovlRateio.AsCurrency := RoundTo((cdsPadrao.FieldByName('vlTotalHoraKm').AsCurrency*FieldByName('prRateio').AsFloat)/100, -2);
           cdsCusto.Post;
           Next;
         end; // fim do while not eof do
         vlTotalRateio := 0;
         if not (cdsCustovlTotalRateio.IsNull) then
           if cdsCustovlTotalRateio.Value > 0 then
             vlTotalRateio := cdsCustovlTotalRateio.Value;

         vlDif := cdsPadrao.FieldByName('vlTotalHoraKm').AsCurrency-vlTotalRateio;
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

procedure TFrmCadMaquinaOperacao.HabilitaRatRes;
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

procedure TFrmCadMaquinaOperacao.LimpaProdutos;
begin
  cdsProdutos.First;
  while not cdsProdutos.Eof do
  begin
    cdsProdutos.Delete;
    cdsProdutos.First;
  end;
end;

procedure TFrmCadMaquinaOperacao.LimpaRateio;
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
