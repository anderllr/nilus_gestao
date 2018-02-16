unit uFrmMovEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, Math, CRadioButton, CDBRadioGroup, System.Actions, System.ImageList;

type
  TFrmMovEstoque = class(TFrmCadPadraoEmpFiscal)
    CPanelGradient1: TCPanelGradient;
    CGroupBox2: TCGroupBox;
    DBMdescMovEstoque: TCDBMemo;
    TabProdutos: TTabSheet;
    CGroupBox4: TCGroupBox;
    CLabel11: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel12: TCLabel;
    DBEvlProduto: TCDBEdit;
    CGroupBox12: TCGroupBox;
    BtnSalvarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnExcluirProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    DBEvlTotal: TCDBEdit;
    CLabel16: TCLabel;
    DBEqtProduto: TCDBEdit;
    CLabel18: TCLabel;
    LookProdMedida: TCLookUp;
    CGroupBox14: TCGroupBox;
    DBProdutos: TCDBGrid;
    sdsMovEstoqueProd: TSQLDataSet;
    dspMovEstoqueProd: TDataSetProvider;
    cdsMovEstoqueProd: TClientDataSet;
    dsMovEstoqueProd: TDataSource;
    sdsMovEstoque: TSQLDataSet;
    FindProdDeposito: TCFind;
    grpDepositoOri: TCGroupBox;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    FindProduto: TCFind;
    CLabel10: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CBitBtn1: TCBitBtn;
    actGerarRateio: TAction;
    DBRGtpMovEstoque: TCDBRadioGroup;
    grpDestino: TCGroupBox;
    CLabel4: TCLabel;
    DBEidProdDepositoDes: TCDBEdit;
    LookProdDepositoDes: TCLookUp;
    CBitBtn2: TCBitBtn;
    cdsMovEstoqueProdidMovEstoque: TIntegerField;
    cdsMovEstoqueProdidProduto: TIntegerField;
    cdsMovEstoqueProddescProduto: TStringField;
    CLabel5: TCLabel;
    DBEidMovEstoque: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtMovEstoque: TCDBEdit;
    cdsMovEstoqueProdvlTotal: TCurrencyField;
    cdsMovEstoqueProdvlProduto: TFMTBCDField;
    cdsMovEstoqueProdqtProduto: TFMTBCDField;
    EDtpDocumento: TCEdit;
    EDPar: TCEdit;
    CEdit1: TCEdit;
    DBEstMovEstoque: TCDBEdit;
    CLabel14: TCLabel;
    cdsMovEstoqueProdqtSaldoProd: TFloatField;
    DBEidSafra: TCDBEdit;
    CBitBtn7: TCBitBtn;
    LookSafra: TCLookUp;
    CLabel3: TCLabel;
    DBEidSafraDes: TCDBEdit;
    CBitBtn3: TCBitBtn;
    CLookUp1: TCLookUp;
    CLabel1: TCLabel;
    procedure DBEqtProdutoExit(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsMovEstoqueProdAfterInsert(DataSet: TDataSet);
    procedure cdsMovEstoqueProdCalcFields(DataSet: TDataSet);
    procedure actExcluirExecute(Sender: TObject);
    procedure DBRGtpMovEstoqueExit(Sender: TObject);
    procedure DBEidMovEstoqueExit(Sender: TObject);
    procedure dsMovEstoqueProdStateChange(Sender: TObject);
    procedure dspMovEstoqueProdBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnSalvarProdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovEstoque: TFrmMovEstoque;

implementation

uses uFrmPrincipal, uDmPadrao, uFrmPesClienteFiscal, uFuncao, uFrmCadPadrao,
  uFrmPadrao, uFrmPesMovEstoque;

{$R *.dfm}

procedure TFrmMovEstoque.actExcluirExecute(Sender: TObject);
var
  sql : string;
begin
//  inherited;
  //verifica se o movimento não está relacionado com o inventário
  sql := 'SELECT COUNT(*) qtde FROM InventarioMov WHERE idMovEstoque = ' + DBEidMovEstoque.Text;
  if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger > 0 then
  begin
    messagedlg('Movimento relacionado com inventário não pode ser excluido por aqui!', mtwarning, [mbok], 0);
    exit;
  end;
  if messagedlg('Tem certeza que deseja excluir!', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

    sql := 'UPDATE MovEstoque SET stMovEstoque = ' + QuotedStr('CANCELADO') + ' WHERE idMovEstoque = ' + DBEidMovEstoque.Text;
    dmPadrao.dbConexao.ExecuteDirect(sql);

    sql := 'EXEC spAtualizaEstoque ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
           QuotedStr(EDtpDocumento.Text) + ', ' + QuotedStr(EDtpDocumento.Text) + ', ' +
           DBEidMovEstoque.Text + ', NULL, NULL, ' + QuotedStr(EDPar.Text);
    dmPadrao.dbConexao.ExecuteDirect(sql);
//    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
//        EDtpDocumento, EDtpDocumento, DBEidMovEstoque, nil, nil, EDPar], 'spAtualizaEstoque') then
//    begin
      //agora exclui o lançamento
      sql := 'DELETE MovEstoqueProd WHERE idMovEstoque = ' + DBEidMovEstoque.Text;
      dmPadrao.dbConexao.ExecuteDirect(sql);
      sql := 'DELETE MovEstoque WHERE idMovEstoque = ' + DBEidMovEstoque.Text;
      dmPadrao.dbConexao.ExecuteDirect(sql);
      actNovo.Execute;
//    end;
end;

procedure TFrmMovEstoque.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  PagAbas.ActivePageIndex := 0;
  Application.CreateForm(TFrmPesMovEstoque, FrmPesMovEstoque);
  FrmPesMovEstoque.ShowModal;
  if FrmPesMovEstoque.id <> 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;
    cdsEmpresaidEmpresa.AsInteger := FrmPesMovEstoque.cdsGrididEmpresa.AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := FrmPesMovEstoque.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmPesMovEstoque.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmPesMovEstoque.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idMovEstoque').AsInteger := FrmPesMovEstoque.id;
    DBEidMovEstoque.SetFocus;
    DBEidMovEstoqueExit(DBEidMovEstoque);
  end;
end;

procedure TFrmMovEstoque.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  sql : string;
begin

//*****************************************************************************
//   REGRA ESPECIFICA DESTE CADASTRO
//*****************************************************************************
  if cdsMovEstoqueProd.IsEmpty then
  begin
    messagedlg('Os produtos não foram aplicados!', mterror, [mbok], 0);
    exit;
  end;

  if trim(DBEidSafra.Text) = '' then
  begin
    messagedlg('A safra deve ser informada!', mterror, [mbok], 0);
    exit;
  end;

  if (trim(DBEidProdDepositoDes.Text) <> '') and (trim(DBEidSafraDes.Text) = '') then
  begin
    messagedlg('A safra de destino deve ser informada!', mterror, [mbok], 0);
    exit;
  end;
//*****************************************************************************
//   FINAL DA REGRA ESPECIFICA DESTE CADASTRO
//*****************************************************************************
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  dmPadrao.dbConexao.CloseDataSets;
  if not dmPadrao.dbConexao.InTransaction then
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    GravaChave(1, '', nil);
    inherited;

    sql := Format('EXEC spFechaMovEstoque %s, %s', [DBEidMovEstoque.Text, QuotedStr('SEL')]);
    with frmPrincipal.ExecutaSqlRet([], '', sql) do
      if FieldByName('msg').AsString <> 'OK' then
        raise Exception.Create(FieldByName('msg').AsString);
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
  PagAbas.ActivePageIndex := 0;
end;

procedure TFrmMovEstoque.BtnSalvarProdClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCBitBtn).Name = 'BtnSalvarProd' then
  begin
    if (cdsPadrao.FieldByName('tpMovEstoque').AsString = 'SAIDA') or
       (cdsPadrao.FieldByName('tpMovEstoque').AsString = 'TRANSFERENCIA') then
      If (cdsMovEstoqueProdqtProduto.asFloat > cdsMovEstoqueProdqtSaldoProd.asFloat) Then
      begin
        messagedlg('Quantidade informada maior que o saldo disponível! Informe corretamente!' + #13 +
                   'Saldo atual: ' + cdsMovEstoqueProdqtSaldoProd.AsString, mtwarning, [mbok], 0);
        DBEqtProduto.SetFocus;
        Exit;
      end;

    if cdsPadrao.FieldByName('tpMovEstoque').AsString = 'ENTRADA' then
      if cdsMovEstoqueProd.FieldByName('vlProduto').Value <= 0 then
      begin
        messagedlg('Para Entradas o valor do produto deve ser informado!', mtwarning, [mbok], 0);
        exit;
      end;
  end;

  funcao.GravaSec(chave, cdsMovEstoqueProd, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd, (Sender as TCBitBtn), '');
  DBEidProduto.SetFocus;
end;

procedure TFrmMovEstoque.cdsMovEstoqueProdAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('vlProduto').Value := 0;
end;

procedure TFrmMovEstoque.cdsMovEstoqueProdCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('qtProduto').Value > 0 then
    DataSet.FieldByName('vlTotal').Value := DataSet.FieldByName('qtProduto').Value * DataSet.FieldByName('vlProduto').Value;
end;

procedure TFrmMovEstoque.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('tpMovEstoque').AsString := 'ENTRADA';
    cdsPadrao.FieldByName('dtMovEstoque').AsDateTime := date;    
    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    cdsPadrao.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    cdsPadrao.FieldByName('stMovEstoque').AsString := 'ATIVO';    
  end;
end;

procedure TFrmMovEstoque.DBEidMovEstoqueExit(Sender: TObject);
var
  sql : string;
  hab : boolean;
begin
  inherited;
  if BuscaChave(cdsPadrao, chave) then
    if trim(DBEidMovEstoque.Text) <> '' then
    begin
      AbreTabSecundaria;
      grpDestino.Enabled := cdsPadrao.FieldByName('tpMovEstoque').AsString = 'TRANSFERENCIA';
      //verifica se o movimento não está relacionado com o inventário
      sql := 'SELECT COUNT(*) qtde FROM InventarioMov WHERE idMovEstoque = ' + DBEidMovEstoque.Text;
      hab := false;
      hab := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger > 0;
      funcao.SomenteLeitura([DBRGtpMovEstoque, DBEdtMovEstoque, DBEidProdDeposito, DBEidProdDepositoDes,
            DBMdescMovEstoque, DBEidProduto, DBEqtProduto, DBEvlTotal], hab);
      BtnSalvar.Enabled := not hab;
      BtnCancelar.Enabled := not hab;
      BtnExcluir.Enabled := not hab;
      BtnSalvarProd.Enabled := not hab;
      BtnCancelarProd.Enabled := not hab;
      BtnExcluirProd.Enabled := not hab;
      BtnNovoProd.Enabled := not hab;
    end
    else
      AbreTabSecundaria;
end;

procedure TFrmMovEstoque.DBEidProdutoExit(Sender: TObject);
var
  sql : string;
  vlCustoMedio : currency;
  qtSaldoProd : double;
begin
  inherited;
  if (BtnNovoProd.Focused) or (BtnCancelarProd.Focused) or (BtnExcluirProd.Focused) then
    Exit;

  vlCustoMedio := 0;
  if trim(DBEidProduto.Text) <> '' then
  begin //busca o saldo e valor de custo médio do produto

    if frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'cadConfigEstoque').FieldByName('usaEstoqueSafra').AsString = 'S'  then
      sql := Format('EXEC spRetCustoSaldo %s, %s, %s, %s, %s, 0, 0, 0, %s, %s', [DBEidEmpresa.Text, DBEidCadEmpresa.Text,DBEidProduto.Text, DBEidProdDeposito.Text,
             funcao.RetornaValorEField(DBEdtMovEstoque, 3),QuotedStr('SEL'), funcao.RetornaValorEField(DBEidSafra, 3)])
    else
      sql := Format('EXEC spRetCustoSaldo %s, %s, %s, %s, %s, 0, 0, 0, %s, 0', [DBEidEmpresa.Text, DBEidCadEmpresa.Text,DBEidProduto.Text, DBEidProdDeposito.Text,
             funcao.RetornaValorEField(DBEdtMovEstoque, 3),QuotedStr('SEL')]);

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      vlCustoMedio := FieldByName('vlCustoMedio').AsCurrency;
      qtSaldoProd := FieldByName('qtProduto').AsFloat;
    end;
  end;
  if not BuscaChaveSec(cdsMovEstoqueProd, [DBEidProduto]) then
  begin
    if(trim(DBEidProdDeposito.text) <> '') then
    begin
      cdsMovEstoqueProdvlProduto.AsCurrency := vlCustoMedio;
    end;
  end;

  if not (cdsMovEstoqueProd.State in [dsInsert, dsEdit]) then
    cdsMovEstoqueProd.Edit;
  cdsMovEstoqueProdqtSaldoProd.AsFloat := qtSaldoProd;
end;

procedure TFrmMovEstoque.DBEqtProdutoExit(Sender: TObject);
begin
  inherited;
  if cdsMovEstoqueProd.State in [dsInsert, dsEdit] then
    cdsMovEstoqueProdvlTotal.AsCurrency := cdsMovEstoqueProdvlProduto.AsCurrency * cdsMovEstoqueProdqtProduto.AsFloat;
end;

procedure TFrmMovEstoque.DBRGtpMovEstoqueExit(Sender: TObject);
begin
  inherited;
  grpDestino.Enabled := cdsPadrao.FieldByName('tpMovEstoque').AsString = 'TRANSFERENCIA';
end;

procedure TFrmMovEstoque.dsMovEstoqueProdStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd);
end;

procedure TFrmMovEstoque.dspMovEstoqueProdBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmMovEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmMovEstoque := nil;
end;

procedure TFrmMovEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsMovEstoqueProd;

  chave[0] := DBEidMovEstoque;
  foco := DBEidMovEstoque;
  tab_chave := 'MovEstoque';
end;

procedure TFrmMovEstoque.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actLanMovEstoque';
  inherited;
  Width := 565;
  Height := 470;
end;

procedure TFrmMovEstoque.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 1 then
  begin
    if cdsPadrao.FieldByName('tpMovEstoque').AsString = 'TRANSFERENCIA' then
      if (trim(DBEidProdDeposito.Text) = '') or (trim(DBEidProdDepositoDes.Text) = '') then
      begin
        messagedlg('Para realizar transferência entre depósitos, os dois depósitos devem ser informados!', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;

    //funcao.SomenteLeitura([DBEvlProduto], cdsPadrao.FieldByName('tpMovEstoque').AsString <> 'ENTRADA');
  end;
end;

end.

