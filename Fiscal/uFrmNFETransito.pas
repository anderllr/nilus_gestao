unit uFrmNFETransito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, Math, CRadioButton;

type
  TFrmNFETransito = class(TFrmCadPadraoEmpFiscal)
    CPanelGradient1: TCPanelGradient;
    FindSerie: TCFind;
    FindNatureza: TCFind;
    FindProdDeposito: TCFind;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    FindProduto: TCFind;
    FindTab: TCFind;
    FindMovFinanceira: TCFind;
    FindGerencial: TCFind;
    FindRateio: TCFind;
    actGerarRateio: TAction;
    cdsGerencial: TClientDataSet;
    cdsGerencialidGerencial: TIntegerField;
    cdsGerencialvlGerencial: TCurrencyField;
    FindCaixa: TCFind;
    FindConta: TCFind;
    FindResultado: TCFind;
    cdsResultado: TClientDataSet;
    cdsNfEProduto: TClientDataSet;
    FindSafra: TCFind;
    FindSerieTit: TCFind;
    sdsNfEValor: TSQLDataSet;
    dspNfEValor: TDataSetProvider;
    cdsNfEValor: TClientDataSet;
    dsNfEValor: TDataSource;
    grpNotaSaida: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel14: TCLabel;
    LblCad: TCLabel;
    CLabel59: TCLabel;
    CLabel7: TCLabel;
    CLabel8: TCLabel;
    CLabel6: TCLabel;
    CLabel72: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    DBEstNfE: TCDBEdit;
    lookIeFornecedor: TCLookUp;
    DBEdtEmissao: TCDBEdit;
    DBEidNatureza: TCDBEdit;
    LookNatureza: TCLookUp;
    LookIdCfop: TCLookUp;
    DBEidSafra: TCDBEdit;
    CBitBtn7: TCBitBtn;
    DBEidNfE: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    DBEidCadFornecedor: TCDBEdit;
    LookFornecedorFiscal: TCLookUp;
    dsNfETransporte: TDataSource;
    cdsNfETransporte: TClientDataSet;
    dspNfETransporte: TDataSetProvider;
    sdsNfETransporte: TSQLDataSet;
    cdsNfEProdutodescProduto: TStringField;
    FindIndice: TCFind;
    FindBanco: TCFind;
    lookEstadoEmp: TCLookUp;
    EDPar: TCEdit;
    EDtpDocumento: TCEdit;
    CBitBtn3: TCBitBtn;
    actExcluir2: TAction;
    FindBem: TCFind;
    CGroupBox5: TCGroupBox;
    CLabel30: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    CLabel40: TCLabel;
    DBEvlProdutos: TCDBEdit;
    DBEvlFrete: TCDBEdit;
    DBEvlSeguro: TCDBEdit;
    DBEvlNotaFiscal: TCDBEdit;
    CGroupBox7: TCGroupBox;
    FindPlaca: TCFind;
    CLabel10: TCLabel;
    DBEPlaca: TCDBEdit;
    CLabel13: TCLabel;
    DBEdescVeiculo: TCDBEdit;
    CLabel15: TCLabel;
    DBEidMotorista: TCDBEdit;
    LookdescMotorista: TCLookUp;
    BtnCadMotorista: TCBitBtn;
    cdsMotorista: TClientDataSet;
    DataSource1: TDataSource;
    CLabel52: TCLabel;
    DBEdescEspecie: TCDBEdit;
    CLabel11: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CLabel16: TCLabel;
    DBEqtProduto: TCDBEdit;
    CLabel12: TCLabel;
    DBEvlBruto: TCDBEdit;
    DBEvlTotal: TCDBEdit;
    CLabel33: TCLabel;
    DBEvlDespesas: TCDBEdit;
    DBMcompNfE: TCDBMemo;
    CLabel9: TCLabel;
    DBMobsNfE: TCDBMemo;
    CLabel17: TCLabel;
    lookEstadoFor: TCLookUp;
    sdsNfETransito: TSQLDataSet;
    cdsNfETransito: TClientDataSet;
    dsNfETransito: TDataSource;
    dspNfETransito: TDataSetProvider;
    LookSafra: TCLookUp;
    cdsNfEProdutoidEmpresa: TIntegerField;
    cdsNfEProdutoidCadEmpresa: TSmallintField;
    cdsNfEProdutoidDocSerie: TStringField;
    cdsNfEProdutoidFornecedor: TIntegerField;
    cdsNfEProdutoidCadFornecedor: TSmallintField;
    cdsNfEProdutoidNfE: TIntegerField;
    cdsNfEProdutoidProduto: TIntegerField;
    cdsNfEProdutoqtProduto: TFMTBCDField;
    cdsNfEProdutovlBruto: TFMTBCDField;
    cdsNfEProdutoprDesconto: TFMTBCDField;
    cdsNfEProdutovlDesconto: TFMTBCDField;
    cdsNfEProdutovlLiquido: TFMTBCDField;
    cdsNfEProdutovlTotal: TFMTBCDField;
    cdsNfEProdutoprReducao: TFMTBCDField;
    cdsNfEProdutovlReducao: TFMTBCDField;
    cdsNfEProdutovlBaseIcms: TFMTBCDField;
    cdsNfEProdutoprIcms: TFMTBCDField;
    cdsNfEProdutovlIcms: TFMTBCDField;
    cdsNfEProdutovlBaseIpi: TFMTBCDField;
    cdsNfEProdutoprIpi: TFMTBCDField;
    cdsNfEProdutovlIpi: TFMTBCDField;
    cdsNfEProdutovlIsentasIcms: TFMTBCDField;
    cdsNfEProdutovlOutrasIcms: TFMTBCDField;
    cdsNfEProdutovlBaseIss: TFMTBCDField;
    cdsNfEProdutoprIss: TFMTBCDField;
    cdsNfEProdutovlIss: TFMTBCDField;
    cdsNfEProdutoprInss: TFMTBCDField;
    cdsNfEProdutoidBem: TIntegerField;
    procedure DBEvlProdutosEnter(Sender: TObject);
    procedure DBEdtEmissaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEPlacaExit(Sender: TObject);
    procedure cdsNfEProdutoAfterEdit(DataSet: TDataSet);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actExcluir2Execute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidNfEExit(Sender: TObject);
    procedure DBEvlDespesasExit(Sender: TObject);
    procedure cdsNfEValorAfterInsert(DataSet: TDataSet);
    procedure DBEqtProdutoEnter(Sender: TObject);
    procedure DBEvlOutrasIcmsExit(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure dspNfEProdutoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNfEProdutoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure calculaprodutos();
    procedure CalcTotalNota;
    procedure ConfigNatureza;
  private
    { Private declarations }
    vlAnterior, vlAtual : String; //variáveis criadas para tratar da regras dos descontos
  public
    { Public declarations }
  end;

var
  FrmNFETransito: TFrmNFETransito;

implementation

uses uFrmPrincipal, uDmPadrao, uFrmPesClienteFiscal, uFuncao, uFrmCadPadrao,
  uFrmNotaFiscal, uFrmPesNotas, uFrmPadrao;

{$R *.dfm}

{ TFrmNotaFiscal }

procedure TFrmNFETransito.actExcluir2Execute(Sender: TObject);
begin
  inherited;
  if messagedlg('Deseja realmente excluir o registro selecionado? ' + #13 +
               'Todos os lançamentos associados serão excluídos!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    EDPar.Text := 'E';
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
        DBEidDocSerie, DBEidFornecedor, DBEidCadFornecedor, DBEidNfE, EDPar], 'spExcluiCancelaNfE') then
    begin
      EDPar.Text := 'SEL';
      EDtpDocumento.Text := 'NFE';
      funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
        EDtpDocumento, DBEidDocSerie, DBEidNfE, DBEidFornecedor, DBEidCadFornecedor, EDPar], 'spAtualizaEstoque');
      actNovo.Execute;
    end;
  end;
end;

procedure TFrmNFETransito.actExcluirExecute(Sender: TObject);
begin
//  inherited;
 if messagedlg('Deseja realmente cancelar o registro selecionado? ' + #13 +
               'Todos os lançamentos associados serão excluídos!', mtconfirmation, [mbyes, mbno], 0) = mryes then
 begin
  EDPar.Text := 'C';
  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
      DBEidDocSerie, DBEidFornecedor, DBEidCadFornecedor, DBEidNfE, EDPar], 'spExcluiCancelaNfE') then
  begin
    EDPar.Text := 'SEL';
    EDtpDocumento.Text := 'NFE';
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
      EDtpDocumento, DBEidDocSerie, DBEidNfE, DBEidFornecedor, DBEidCadFornecedor, EDPar], 'spAtualizaEstoque');
    DBEidNfEExit(DBEidNfE);
  end;
 end;

end;

procedure TFrmNFETransito.actPesquisarExecute(Sender: TObject);
begin
  inherited;
    Application.CreateForm(TFrmPesNotas, FrmPesNotas);
    FrmPesNotas.tpNota := 'NFE';
    FrmPesNotas.Show;
    with cdsPadrao do
    begin
      if not (FrmPesNotas.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          cdsEmpresa.Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesNotas.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesNotas.cdsGrid.FieldByName('idCadEmpresa').Value;
        FieldByName('idFornecedor').Value := FrmPesNotas.cdsGrid.FieldByName('idCadastro').Value;
        FieldByName('idCadFornecedor').Value := FrmPesNotas.cdsGrid.FieldByName('idCadAdicional').Value;
        FieldByName('idDocSerie').Value := FrmPesNotas.cdsGrid.FieldByName('idDocSerie').Value;
        FieldByName('idNfE').Value := FrmPesNotas.cdsGrid.FieldByName('nrNota').Value;
        DBEidNfE.SetFocus;
        DBEidNfEExit(DBEidNfE);
      end;
    end;
    ConfigNatureza;
end;

procedure TFrmNFETransito.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  sql : string;
begin
  //verifica os produtos
  if trim(DBEidProduto.Text) = '' then
  begin
    messagedlg('O Produto não foi informado!', mtwarning, [mbok], 0);
    exit;
  end;
  cdsNfEProdutovlIsentasIcms.Value := cdsNfEProdutovlTotal.Value;
  funcao.UpdateChave(cdsNfEProduto, chave);
  if cdsNfEProduto.IsEmpty then
  begin
    messagedlg('Produtos não cadastrados!', mtwarning, [mbok], 0);
    exit;
  end;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    cdsPadrao.FieldByName('idTpNotaFiscal').AsInteger := 1;


    if trim(DBEidNfE.Text) = '' then
    begin
      sql := 'SELECT (MAX(ISNULL(idNfE, 0)) + 1) AS maximo FROM NfE WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
             ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text);
      cdsPadrao.FieldByName('idNfE').AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('maximo').AsInteger;
    end;
    GravaChave(0, '', nil);

    inherited;
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa,
                       DBEidDocSerie, DBEidFornecedor, DBEidCadFornecedor, DBEidNfE, nil,
                       nil, nil], 'spFechaNfEntrada');
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

procedure TFrmNFETransito.CalcTotalNota;
//totaliza a nota
var
  vlProdutos, vlServicos, vlBaseIpi, vlIpi, vlReducao, vlBaseIcms, vlIcms,
  vlIsentasIcms, vlOutrasIcms, vlBaseIss, vlIss, vlOutrosImpostos : currency;
begin
  vlServicos := 0; vlProdutos := 0; vlBaseIpi := 0; vlIpi := 0; vlReducao := 0;
  vlBaseIcms := 0; vlIcms := 0; vlIsentasIcms := 0; vlOutrasIcms := 0;
  vlBaseIss := 0; vlIss := 0; vlOutrosImpostos := 0;
  with cdsNfEProduto do
  begin
    if frmPrincipal.ExecutaSQLRet([DBEidProduto], '', 'Produto').FieldByName('idProdCategoria').Value = 3 then //serviços
      vlServicos := vlServicos + FieldByName('vlTotal').Value
    else
      vlProdutos := vlProdutos + FieldByName('vlTotal').Value;
    if FieldByName('vlIpi').Value > 0 then
    begin
       vlBaseIpi := vlBaseIpi + FieldByName('vlBaseIpi').Value;
       vlIpi := vlIpi + FieldByName('vlIpi').Value;
    end;
    vlReducao := vlReducao + FieldByName('vlReducao').Value;
    vlBaseIcms := vlBaseIcms + FieldByName('vlBaseIcms').Value;
    vlIcms := vlIcms + FieldByName('vlIcms').Value;
    vlIsentasIcms := vlIsentasIcms + FieldByName('vlIsentasIcms').Value;
    vlOutrasIcms := vlOutrasIcms + FieldByName('vlOutrasIcms').Value;
    if FieldByName('vlBaseIss').Value > 0 then
    begin
      vlBaseIss := vlBaseIss + FieldByName('vlBaseIss').Value;
      vlIss := vlIss + FieldByName('vlIss').Value;
    end;
  end; // fim do with cdsNfEProduto

  //inclui na tabela de totais
  with cdsNfEValor do
  begin
    if not (State in [dsEdit, dsInsert]) then
      Edit;
    FieldByName('vlProdutos').Value := vlProdutos;
    FieldByName('vlServicos').Value := vlServicos;
    FieldByName('vlBaseIpi').Value := vlBaseIpi;
    FieldByName('vlIpi').Value := vlIpi;
    FieldByName('vlReducao').Value := vlReducao;
    FieldByName('vlBaseIcms').Value := vlBaseIcms;
    FieldByName('vlIcms').Value := vlIcms;
    FieldByName('vlIsentasIcms').Value := vlIsentasIcms;
    FieldByName('vlOutrasIcms').Value := vlOutrasIcms;
    FieldByName('vlBaseIss').Value := vlBaseIss;
    FieldByName('vlIss').Value := vlIss;
    FieldByName('vlOutrosImpostos').Value := vlOutrosImpostos;
    FieldByName('vlNotaFiscal').Value := (vlProdutos + vlServicos + vlIpi +
    FieldByName('vlDespesas').Value + FieldByName('vlFrete').Value + FieldByName('vlSeguro').Value) -
    FieldByName('vlDesconto').Value;
  end; // fim do with cdsNfEValor do
end;

procedure TFrmNFETransito.calculaprodutos();
//Procedimento criado para calcular os valores dos produtos
var
  vlLiquido, vlTotal : currency;
begin
  With cdsNfEProduto do
  begin
    if not (State in [dsInsert, dsEdit]) then
      exit; //se não estiver em modo edição significa que não foi alterado
    if vlAnterior = vlAtual then
      exit; // tb significa que não houve alteração
    if ((trim(DBEvlBruto.Text) <> '') or (trim(DBEvlTotal.Text) <> '')) and (trim(DBEqtProduto.Text) <> '') and (trim(DBEidProduto.Text) <> '') then
    begin
      //Inicializa as variáveis
      FieldByName('vlLiquido').AsCurrency := FieldByName('vlBruto').AsCurrency;
      vlLiquido := FieldByName('vlLiquido').AsCurrency;
      vlTotal := vlLiquido*FieldByName('qtProduto').Value;
      FieldByName('vlTotal').AsCurrency := vlTotal;
     ///******  TRATAMENTO DOS IMPOSTOS  -- SERVIRÁ PARA OS DOIS TIPOS DE NOTA  ******//
      if trim(cdsNfEProduto.FieldByName('vlBaseIss').AsString) = '' then //serviços
         cdsNfEProduto.FieldByName('vlBaseIss').AsCurrency := 0;
      if trim(cdsNfEProduto.FieldByName('vlBaseIcms').AsString) = '' then //icms
        cdsNfEProduto.FieldByName('vlBaseIcms').AsCurrency := 0;

      if trim(cdsNfEProduto.FieldByName('vlOutrasIcms').AsString) = '' then //outras icms
        cdsNfEProduto.FieldByName('vlOutrasIcms').AsCurrency := 0;

      if trim(cdsNfEProduto.FieldByName('vlReducao').AsString) = '' then //reduçao
        cdsNfEProduto.FieldByName('vlReducao').AsCurrency := 0;

      cdsNfEProduto.FieldByName('vlIsentasIcms').AsCurrency := vlTotal;

      if trim(cdsNfEProduto.FieldByName('vlBaseIpi').AsString) = '' then //outras icms
         FieldByName('vlBaseIpi').AsCurrency := 0;
    end;
  end; //fim do with cdsNfEProduto
end;

procedure TFrmNFETransito.cdsNfEProdutoAfterEdit(DataSet: TDataSet);
begin
  inherited;
    if ( not (cdsPadrao.State in [dsInsert, dsEdit]) ) then
      cdsPadrao.Edit;
end;

procedure TFrmNFETransito.cdsNfEProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if ( not (cdsPadrao.State in [dsInsert, dsEdit]) ) then
    cdsPadrao.Edit;

  with Dataset do
  begin
    FieldByName('idEmpresa').AsInteger := 0;
    FieldByName('idCadEmpresa').AsInteger := 0;
    FieldByName('idDocSerie').AsString := '';
    FieldByName('idNfE').AsInteger := 0;
    FieldByName('idFornecedor').AsInteger := cdsPadrao.FieldByName('idFornecedor').AsInteger;
    FieldByName('idCadFornecedor').AsInteger := cdsPadrao.FieldByName('idCadFornecedor').AsInteger;
    FieldByName('prDesconto').AsInteger := 0;
    FieldByName('vlDesconto').AsInteger := 0;
    FieldByName('prReducao').AsInteger := 0;
    FieldByName('vlReducao').AsInteger := 0;
    FieldByName('vlBaseIcms').AsInteger := 0;
    FieldByName('vlIcms').AsInteger := 0;
    FieldByName('prIcms').AsInteger := 0;
    FieldByName('vlBaseIss').AsInteger := 0;
    FieldByName('vlIss').AsInteger := 0;
    FieldByName('prIss').AsInteger := 0;
    FieldByName('prIpi').AsInteger := 0;
    FieldByName('vlIpi').AsInteger := 0;
    FieldByName('prIpi').AsInteger := 0;
    FieldByName('prInss').AsInteger := 0;
    FieldByName('vlIsentasIcms').AsInteger := 0;
    FieldByName('vlOutrasIcms').AsInteger := 0;
  end;
end;

procedure TFrmNFETransito.cdsNfEValorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With DataSet do
  begin
    FieldByName('idEmpresa').AsInteger := 0;
    FieldByName('idCadEmpresa').AsInteger := 0;
    FieldByName('idFornecedor').AsInteger := 0;
    FieldByName('idCadFornecedor').AsInteger := 0;
    FieldByName('idDocSerie').AsString := '';
    FieldByName('idNfE').AsInteger := 0;
    FieldByName('vlDesconto').Value := 0;
    FieldByName('prDesconto').Value := 0;
    FieldByName('vlDespesas').Value := 0;
    FieldByName('vlFrete').Value := 0;
    FieldByName('vlFreteFaturar').Value := 0;
    FieldByName('vlSeguro').Value := 0;
  end;
end;

procedure TFrmNFETransito.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('movCusto').AsString := 'N';
    cdsPadrao.FieldByName('movEstoque').AsString := 'N';
    if not (cdsNfETransito.State in [dsInsert, dsEdit]) then
      cdsNfEtransito.Insert;
      
    With cdsNfETransito do
    begin
      FieldByName('idEmpresa').AsInteger := 0;
      FieldByName('idCadEmpresa').AsInteger := 0;
      FieldByName('idFornecedor').AsInteger := 0;
      FieldByName('idCadFornecedor').AsInteger := 0;
      FieldByName('idDocSerie').AsString := '';
      FieldByName('idNfE').AsInteger := 0;
    end;
  end;
end;

procedure TFrmNFETransito.ConfigNatureza;
var
  join, alt : string;
begin
  //configura o lookup e o find da natureza
  join := Format('WHERE tpNatureza = %s AND tipo = %s', [QuotedStr('ENTRADA'), QuotedStr('DENTRO')]);
  FindNatureza.JoinClause.Clear;
  LookNatureza.AlternateSQL.Clear;

  if trim(lookEstadoFor.Caption) <> '' then
  begin
    if trim(lookEstadoFor.Caption) <> trim(lookEstadoEmp.Caption) then
    begin
      join := Format('WHERE tpNatureza = %s AND tipo = %s', [QuotedStr('ENTRADA'), QuotedStr('FORA')]);
      alt := Format('SELECT descNatureza FROM vNatureza WHERE tpNatureza = %s AND tipo = %s AND idNatureza = ?', [QuotedStr('ENTRADA'), QuotedStr('FORA')]);
    end;
  end;
  FindNatureza.JoinClause.Add(join);
end;

procedure TFrmNFETransito.DBEdtEmissaoExit(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('dtLancamento').AsDateTime := Date;
end;

procedure TFrmNFETransito.DBEidFornecedorExit(Sender: TObject);
begin
  inherited;
  ConfigNatureza;
end;

procedure TFrmNFETransito.DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmNFETransito.DBEidNfEExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or
      (trim(DBEidDocSerie.Text) = '') or (trim(DBEidNfE.Text) = '') then
  begin
    exit;
  end;
  BuscaChave(Tabelas[0], chave);
  AbreTabSecundaria;
  DBEdtEmissao.SetFocus;
end;

procedure TFrmNFETransito.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsNfEProduto, [DBEidProduto]);
  if cdsNfEProduto.State in [dsInsert] then
    with frmPrincipal.ExecutaSQLRet([DBEidProduto, DBEidNatureza, DBEidEmpresa, DBEidCadEmpresa,
                                         DBEidFornecedor, DBEidCadFornecedor, nil], 'spRetProdImposto', '') do
        begin
          if FieldByName('vlProduto').AsCurrency > 0 then
            cdsNfEProduto.FieldByName('vlBruto').AsCurrency := FieldByName('vlProduto').AsCurrency
          else
            messagedlg('Produto/Natureza sem valor de pauta cadastrado!', mtwarning, [mbok], 0);
        end;
  if cdsNfEProdutoqtProduto.AsFloat > 0 then
  begin
    calculaprodutos;
    CalcTotalNota;
  end; 
end;

procedure TFrmNFETransito.DBEPlacaExit(Sender: TObject);
var
  Placa, sql :string;
begin
  inherited;
  begin //se existe verifica se já existe cadastro
    Placa := trim(cdsNfETransporte.FieldByName('Placa').AsString);
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;

    sql := 'SELECT * FROM Romaneio WHERE LTRIM(RTRIM(REPLACE((REPLACE((Placa),'+ quotedstr('-') + ',' + quotedstr('') + ' )),' + quotedstr(' ')+','+quotedstr('')+'))) = LTRIM(RTRIM(REPLACE((REPLACE(('
           + quotedstr(Placa)+'),' + quotedstr('-') + ',' + quotedstr('') + ' )),' + quotedstr(' ')+','+quotedstr('')+')))';
    with frmPrincipal.ExecutaSQLRet([DBEPlaca], '', sql) do
    if ((FieldByName('idMotorista').AsInteger > 0 ) AND ( (trim(FieldByName('descVeiculo').AsString)) <> '')) then
    begin
      cdsNfETransporte.FieldByName('Placa').AsString := trim(Placa);
      cdsNfETransporte.FieldByName('descVeiculo').AsString := FieldByName('descVeiculo').AsString;
      cdsNfETransporte.FieldByName('idMotorista').AsInteger := FieldByName('idMotorista').AsInteger;
      cdsNfETransporte.FieldByName('descEspecie').AsString := 'GRANEL';
    end;
  end;
end;

procedure TFrmNFETransito.DBEqtProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmNFETransito.DBEvlDespesasExit(Sender: TObject);
begin
  inherited;
  with cdsNfEValor do
  begin
    if trim((Sender as TCDBEdit).Text) <> vlAnterior then
    begin
      FieldByName('vlNotaFiscal').Value := (FieldByName('vlProdutos').Value + FieldByName('vlServicos').Value +
           FieldByName('vlServicos').Value + FieldByName('vlDespesas').Value + FieldByName('vlFrete').Value +
           FieldByName('vlSeguro').Value) - FieldByName('vlDesconto').Value;
    end;

  end;
end;

procedure TFrmNFETransito.DBEvlOutrasIcmsExit(Sender: TObject);
begin
  inherited;
  vlAtual := (Sender as TCDBEdit).Text;
  calculaprodutos;
//  CalcTotalNota;
end;

procedure TFrmNFETransito.DBEvlProdutosEnter(Sender: TObject);
begin
  inherited;
  if not ( cdsNfEValor.State in [dsInsert,dsEdit] ) then
    cdsNfEValor.Edit;
  with cdsNfEValor do
  begin
    FieldByName('vlDesconto').Value := 0;
    FieldByName('prDesconto').Value := 0;
    FieldByName('vlDespesas').Value := 0;
    FieldByName('vlFrete').Value := 0;
    FieldByName('vlServicos').Value := 0;
    FieldByName('vlFreteFaturar').Value := 0;
    FieldByName('vlSeguro').Value := 0;
  end;
  CalcTotalNota;
end;

procedure TFrmNFETransito.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  actExcluir2.Enabled := actExcluir.Enabled;
end;

procedure TFrmNFETransito.dspNfEProdutoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmNFETransito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmNFETransito := nil;
end;

procedure TFrmNFETransito.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 5);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsNfEProduto;
  Tabelas[2] := cdsNfEValor;
  Tabelas[3] := cdsNfETransporte;
  Tabelas[4] := cdsNfETransito;

  SetLength(chave, 6);

  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidDocSerie;
  chave[3] := DBEidNfE;
  chave[4] := DBEidFornecedor;
  chave[5] := DBEidCadFornecedor;

  foco := DBEidFornecedor;
  tab_chave := 'NfE';
  situacao := 'stNfE';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmNFETransito.FormShow(Sender: TObject);
begin
  inherited;
  Width := 700;
  Height := 471;
  foco.TabStop := true;
end;

end.

