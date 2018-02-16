unit uCadPrevisaoRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, CFind, ActnList, ImgList, DB, Provider,
  DBClient, StdCtrls, EditAlign, CEdit, ExtCtrls, CLookUp, Buttons, CBitBtn,
  ComCtrls, CPageControl, CStatusBar, CLabel, Mask, DBCtrls, CDBEdit, CDBMemo,
  FMTBcd, SqlExpr, CPanelGradient, CGroupBox, Grids, DBGrids, CDBGrid,
  CRadioButton, Math, CDBCheckBox, DBXCommon, System.Actions, System.ImageList;

type
  TFrmCadPrevisaoRec = class(TFrmCadPadraoEmpFiscal)
    Bevel6: TBevel;
    CLabel60: TCLabel;
    DBEidPrevisaoRec: TCDBEdit;
    DBEnrPrevisaoRec: TCDBEdit;
    CLabel3: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    CLabel4: TCLabel;
    DBEstPrevisaoRec: TCDBEdit;
    CLabel9: TCLabel;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    sdsPrevisaoRec: TSQLDataSet;
    CLabel1: TCLabel;
    CGroupBox1: TCGroupBox;
    CLabel5: TCLabel;
    DBEtpDocumento: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtEmissao: TCDBEdit;
    CLabel7: TCLabel;
    DBEvlPrevisaoRec: TCDBEdit;
    CLabel8: TCLabel;
    DBEidBanco: TCDBEdit;
    LookBanco: TCLookUp;
    CLabel10: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    CLabel11: TCLabel;
    DBEidResultado: TCDBEdit;
    CLabel12: TCLabel;
    DBEidRateio: TCDBEdit;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    DBMobsPrevisaoRec: TCDBMemo;
    CLabel20: TCLabel;
    CLabel17: TCLabel;
    DBEprMulta: TCDBEdit;
    CLabel18: TCLabel;
    DBEprJuros: TCDBEdit;
    CLabel19: TCLabel;
    DBEprDesconto: TCDBEdit;
    DBEdiasVencimento: TCDBEdit;
    CLabel16: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel15: TCLabel;
    DBEqtParcelas: TCDBEdit;
    CLabel14: TCLabel;
    FindSerie: TCFind;
    FindCliente: TCFind;
    CLabel21: TCLabel;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    FindBanco: TCFind;
    CLabel22: TCLabel;
    LookLancamento: TCLookUp;
    CBitBtn1: TCBitBtn;
    CBitBtn2: TCBitBtn;
    FindIndice: TCFind;
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
    sdsPrevisaoRecParc: TSQLDataSet;
    dspPrevisaoRecParc: TDataSetProvider;
    cdsPrevisaoRecParc: TClientDataSet;
    dsPrevisaoRecParc: TDataSource;
    TabParcelas: TTabSheet;
    CGroupBox6: TCGroupBox;
    CLabel24: TCLabel;
    DBEidParcela: TCDBEdit;
    CGroupBox7: TCGroupBox;
    CDBGrid2: TCDBGrid;
    CGroupBox8: TCGroupBox;
    BtnSalvarParc: TCBitBtn;
    BtnCancelarParc: TCBitBtn;
    BtnExcluirParc: TCBitBtn;
    BtnNovoParc: TCBitBtn;
    CLabel25: TCLabel;
    DBEvlParcela: TCDBEdit;
    CLabel26: TCLabel;
    DBEdtVencimento: TCDBEdit;
    CLabel27: TCLabel;
    DBEstPrevisaoRecParc: TCDBEdit;
    CLabel28: TCLabel;
    LblTotal: TCLabel;
    CLabel29: TCLabel;
    LblRestante: TCLabel;
    TabRateio: TTabSheet;
    sdsPrevisaoRecRat: TSQLDataSet;
    dspPrevisaoRecRat: TDataSetProvider;
    cdsPrevisaoRecRat: TClientDataSet;
    dsPrevisaoRecRat: TDataSource;
    cdsPrevisaoRateio: TClientDataSet;
    dsPrevisaoRateio: TDataSource;
    cdsPrevisaoRateioidEmpresa: TIntegerField;
    cdsPrevisaoRateioidResultado: TIntegerField;
    cdsPrevisaoRateioidGerencial: TIntegerField;
    cdsPrevisaoRateioprRateio: TFloatField;
    cdsPrevisaoRateiovlRateio: TCurrencyField;
    GrpRateioParc: TCGroupBox;
    CLabel38: TCLabel;
    CLabel40: TCLabel;
    CGroupBox2: TCGroupBox;
    CLabel30: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    DBEidParcelaR: TCDBEdit;
    DBEprRateio: TCDBEdit;
    DBEvlRateio: TCDBEdit;
    RBRatPrevisao2: TCRadioButton;
    RBRatParcela2: TCRadioButton;
    CGroupBox4: TCGroupBox;
    CGroupBox3: TCGroupBox;
    CLabel31: TCLabel;
    LblTotalRat: TCLabel;
    CLabel37: TCLabel;
    LblRestanteRat: TCLabel;
    BtnSalvarRat: TCBitBtn;
    BtnCancelarRat: TCBitBtn;
    BtnExcluirRat: TCBitBtn;
    BtnNovoRat: TCBitBtn;
    GrpRateioPrevisao: TCGroupBox;
    CLabel36: TCLabel;
    CLabel39: TCLabel;
    CGroupBox9: TCGroupBox;
    CLabel41: TCLabel;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    CLabel44: TCLabel;
    CLabel45: TCLabel;
    DBEvlPrevisaoRecR: TCDBEdit;
    DBEidResultadoRT: TCDBEdit;
    DBEidGerencialRT: TCDBEdit;
    DBEprRateioRT: TCDBEdit;
    DBEvlRateioRT: TCDBEdit;
    RBRatPrevisao: TCRadioButton;
    RBRatParcela: TCRadioButton;
    CGroupBox10: TCGroupBox;
    CDBGrid3: TCDBGrid;
    CGroupBox11: TCGroupBox;
    CLabel46: TCLabel;
    LblTotalRatTit: TCLabel;
    CLabel48: TCLabel;
    LblRestanteRatTit: TCLabel;
    BtnSalvarRatTit: TCBitBtn;
    BtnCancelarRatTit: TCBitBtn;
    BtnExcluirRatTit: TCBitBtn;
    BtnNovoRatTit: TCBitBtn;
    DBEidGerencialR: TCDBEdit;
    CLabel32: TCLabel;
    CLabel33: TCLabel;
    DBEidResultadoR: TCDBEdit;
    cdsResultado: TClientDataSet;
    CDBGrid1: TCDBGrid;
    cdsPrevisaoRecRatidPrevisaoRec: TIntegerField;
    cdsPrevisaoRecRatidParcela: TSmallintField;
    cdsPrevisaoRecRatidEmpresa: TIntegerField;
    cdsPrevisaoRecRatidResultado: TIntegerField;
    cdsPrevisaoRecRatidGerencial: TIntegerField;
    cdsPrevisaoRateiodescResultado: TStringField;
    DBEvlParcelaR: TCDBEdit;
    cdsPrevisaoRateioidPrevisaoRec: TIntegerField;
    cdsPrevisaoRecRatdescResultado: TStringField;
    DBCKincMes: TCDBCheckBox;
    LookRateio: TCLookUp;
    FindGerencialR: TCFind;
    FindResultado: TCFind;
    LookGerenciaR: TCLookUp;
    LookResultado: TCLookUp;
    CLookUp4: TCLookUp;
    CLookUp3: TCLookUp;
    CLookUp2: TCLookUp;
    CLookUp1: TCLookUp;
    CBitBtn8: TCBitBtn;
    actBaixar: TAction;
    BtnBaixaPrevisao: TCBitBtn;
    cdsPrevisaoRecRatprRateio: TFMTBCDField;
    cdsPrevisaoRecRatvlRateio: TFMTBCDField;
    cdsPrevisaoRecRatidCadEmpresa: TSmallintField;
    cdsPrevisaoRateioidCadEmpresa: TIntegerField;
    BtnGeraTitulo: TCBitBtn;
    BtnExcluirPrevisao: TCBitBtn;
    procedure DBEidParcelaExit(Sender: TObject);
    procedure BtnBaixaPrevisaoClick(Sender: TObject);
    procedure actBaixarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure DBEidRateioEnter(Sender: TObject);
    procedure DBEidResultadoEnter(Sender: TObject);
    procedure DBEidGerencialEnter(Sender: TObject);
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure DBEidResultadoRTExit(Sender: TObject);
    procedure DBEnrPrevisaoRecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dspPrevisaoRecParcBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsPrevisaoRecMovAfterInsert(DataSet: TDataSet);
    procedure DBCKincMesExit(Sender: TObject);
    procedure DBEprRateioRTExit(Sender: TObject);
    procedure DBEprRateioRTEnter(Sender: TObject);
    procedure dsPrevisaoRateioStateChange(Sender: TObject);
    procedure DBMobsPrevisaoRecExit(Sender: TObject);
    procedure RBRatParcelaClick(Sender: TObject);
    procedure RBRatPrevisao2Click(Sender: TObject);
    procedure BtnSalvarRatTitClick(Sender: TObject);
    procedure cdsPrevisaoRecRatAfterInsert(DataSet: TDataSet);
    procedure dsPrevisaoRecRatStateChange(Sender: TObject);
    procedure BtnSalvarRatClick(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEvlPrevisaoRecEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEvlPrevisaoRecExit(Sender: TObject);
    procedure dsPrevisaoRecParcStateChange(Sender: TObject);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure cdsPrevisaoRecParcAfterInsert(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidClienteExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure LookLancamentoSetText(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEnrPrevisaoRecExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure GeraParcelas;
    procedure SomaParcelas;
    procedure SomaRateio;
    procedure SomaRateioTit;
    procedure HabilitaRatRes;
    procedure GeraRateioPrevisao;
    procedure GeraRateioParcela(tipo: byte);
    procedure FiltraRateio;
    constructor create (Formulario: TComponent; Parametro: String);
    procedure ExcluiParc(parc: boolean);
    procedure BtnGeraTituloClick(Sender: TObject);
    procedure BtnExcluirPrevisaoClick(Sender: TObject);
  private
    { Private declarations }
    vlTotalParcelas : Currency;
    vlTotalRateio : Currency;
    vlTotalRateioTit : Currency;
    vlAnterior, id : string;
  public
    { Public declarations }
    Baixa : Boolean;
    idTitulo, idFornecedor : Integer;
    idDocSerie, nrTitulo : String;
  end;

var
  FrmCadPrevisaoRec: TFrmCadPrevisaoRec;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPesPrevisaoRec,
  uFrmGeraTitulo, uCadTituloRec;

{$R *.dfm}

procedure TFrmCadPrevisaoRec.actBaixarExecute(Sender: TObject);
var
sql : string;
begin
inherited;
if messagedlg(' Deseja Realmente dar Baixa na Parcela ? ', mtwarning, [mbyes, mbno], 0) = mryes  then
begin
  // Dando Baixa nas Parcelas =================================================================
  if cdsPrevisaoRecParc.FieldByName('stPrevisaoRecParc').AsString <> 'BAIXADA' then
  begin
    sql := 'UPDATE PrevisaoRecParc SET stPrevisaoRecParc = '+ quotedstr('BAIXADA') +
           'WHERE idPrevisaoRec = ' + DBEidPrevisaoRec.Text +
           '  AND idParcela = ' + quotedstr(cdsPrevisaoRecParc.FieldByName('idParcela').Value);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end
  else
  begin
    messagedlg('A Parcela ja foi Baixada !', mtinformation, [mbOk], 0);
    exit;
  end;
  // ===========================================================================================

{  // Alterando os Dados da Previsão após ter dado Baixa nas parcelas =============================================================
  sql := 'UPDATE PrevisaoRec SET vlPrevisaoRec = (SELECT p.vlPrevisaoRec - (SELECT vlParcela FROM PrevisaoRecParc Where stPrevisaoRecParc =' + quotedstr('BAIXADA');
  sql := sql + ' AND idPrevisaoRec = ' + DBEidPrevisaoRec.Text + ' AND idParcela = ' + DBEidParcela.Text + ')';
  sql := sql + ' FROM PrevisaoRec p, PrevisaoRecParc pp ' +
               ' WHERE p.idPrevisaoRec = pp.idPrevisaoRec ' +
               '   AND pp.idParcela = ' + DBEidParcela.Text +
               '   AND  p.idPrevisaoRec = ' +  DBEidPrevisaoRec.Text + ' )' ;
  sql := sql + ' WHERE idPrevisaoRec = ' + DBEidPrevisaoRec.Text;

  dmPadrao.dbConexao.ExecuteDirect(sql); }
  // ==============================================================================================================================

  sql := 'SELECT COUNT(p.idParcela) AS idParcela FROM PrevisaoRecParc p WHERE p.idPrevisaoRec = ' + DBEidPrevisaoRec.Text +
         ' AND stPrevisaoRecParc = ' + quotedstr('BAIXADA');
         
  // Caso ocorra de o usuario dar baixa em todas as parcelas =====================================================================
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    sql := 'UPDATE PrevisaoRec SET stPrevisaoRec = ' + quotedstr('BAIXADA') + ' WHERE idPrevisaoRec = ' + DBEidPrevisaoRec.Text +
           '   AND qtParcelas = ' + quotedstr(FieldByName('idParcela').AsString);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
 // ==============================================================================================================================
  DBEnrPrevisaoRecExit(DBEnrPrevisaoRec);
end;

end;

procedure TFrmCadPrevisaoRec.actExcluirExecute(Sender: TObject);
var
sql : String;
begin
  inherited;
 if (DBEstPrevisaoRec.Text) = 'CANCELADO' then
 begin
   sql := 'UPDATE PrevisaoRecParc SET stPrevisaoRecParc = '+ quotedstr('CANCELADO')+ 'WHERE idPrevisaoRec = '+ DBEidPrevisaoRec.Text;
   dmPadrao.dbConexao.ExecuteDirect(sql);
   DBEnrPrevisaoRecExit(DBEnrPrevisaoRec);
 end;

end;

procedure TFrmCadPrevisaoRec.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesPrevisaoRec, FrmPesPrevisaoRec);
  FrmPesPrevisaoRec.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesPrevisaoRec.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesPrevisaoRec.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesPrevisaoRec.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      FieldByName('nrPrevisaoRec').Value := FrmPesPrevisaoRec.cdsGrid.FieldByName('nrPrevisaoRec').Value;
      FieldByName('idDocSerie').Value := FrmPesPrevisaoRec.cdsGrid.FieldByName('idDocSerie').Value;
      FieldByName('idCliente').Value := FrmPesPrevisaoRec.cdsGrid.FieldByName('idCliente').Value;
      FieldByName('idPrevisaoRec').Value := FrmPesPrevisaoRec.cdsGrid.FieldByName('idPrevisaoRec').Value;
      DBEnrPrevisaoRec.SetFocus;
    end;
  end;
  DBEnrPrevisaoRecExit(DBEnrPrevisaoRec);
 
end;

procedure TFrmCadPrevisaoRec.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  erro, tr : byte;
  nrPrevisaoRec : string;
begin

  //Verifica se o valor do Previsao está fechando com o valor de Parcelas
  if (cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency <> vlTotalParcelas) and (not (cdsPrevisaoRecParc.IsEmpty)) then
    raise Exception.Create('Valor das parcelas diferente do valor do título!');
  //Valores obrigatórios
  if trim(DBEdiasVencimento.Text) = '' then
    cdsPadrao.FieldByName('diasVencimento').Value := 0;
  if trim(DBEprJuros.Text) = '' then
    cdsPadrao.FieldByName('prJuros').Value := 0;
  if trim(DBEprMulta.Text) = '' then
    cdsPadrao.FieldByName('prMulta').Value := 0;
  if trim(DBEprDesconto.Text) = '' then
    cdsPadrao.FieldByName('prDesconto').Value := 0;
  nrPrevisaoRec := DBEnrPrevisaoRec.Text;
  //Gera o número do Previsao caso não tenha sido digitado e esteja inserindo
  if (cdsPadrao.State in [dsInsert]) and (trim(DBEnrPrevisaoRec.Text) = '') then
  begin
    if trim(DBEidDocSerie.Text) = '' then
    begin
      messagedlg('Você deve informar a série do documento!', mtwarning, [mbok], 0);
      exit;
    end; //fim do if trim(DBEidDocSerie.Text) = '' then
    //busca o último número do titulo na procedure
    cdsPadrao.FieldByName('nrPrevisaoRec').Value := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidDocSerie], 'spRetNrPrevisaoRec', '').FieldByName('nrPrevisaoRec').AsString;
  end; //fim do if (cdsPadrao in [dsInsert]) and (trim(DBEnrPrevisaoRec.Text) = '') then

  //********************************************************************************//
  // Inicia o controle de transação
  erro := 0;
  //marca a transação

//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported

  if dmPadrao.dbConexao.InTransaction then
    tr := 1
  else
    tr := 0;

  dmPadrao.dbConexao.CloseDataSets;

  if tr = 0 then
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if (cdsPadrao.State in [dsInsert]) and (cdsPrevisaoRecParc.IsEmpty) then
      GeraParcelas;
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
    if tr = 0 then
      dmPadrao.dbConexao.CommitFreeAndNil(t);
  end
  else
  begin
    if tr = 0 then
      dmPadrao.dbConexao.RollbackFreeAndNil(t);
    //retorna o número anterior
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('nrPrevisaoRec').AsString := nrPrevisaoRec;
  end;
  if ((trim(cdsPadrao.FieldByName('stPrevisaoRec').AsString) <> 'BAIXADA') AND ((trim(cdsPadrao.FieldByName('stPrevisaoRec').AsString) <> 'CANCELADO'))) then
    BtnBaixaPrevisao.Enabled := true;
end;

procedure TFrmCadPrevisaoRec.BtnSalvarParcClick(Sender: TObject);
var
  recalc : boolean;
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  recalc := false;
  if ((Sender as TBitBtn).Name <> 'BtnNovoParc') and ((Sender as TBitBtn).Name <> 'BtnCancelarParc') then
  begin
    if (cdsPrevisaoRecParc.FieldByName('vlParcela').OldValue <> cdsPrevisaoRecParc.FieldByName('vlParcela').NewValue) or
       ((Sender as TBitBtn).Name = 'BtnExcluirParc') then
      if messagedlg('O Rateio será ser recalculado! Deseja prosseguir?', mtinformation, [mbyes, mbno], 0) = mryes then
        recalc := true
      else
        exit;
    if ((Sender as TBitBtn).Name = 'BtnSalvarParc') then
      if (DBEstPrevisaoRecParc.Text = 'BAIXADA') then
        if messagedlg('Deseja reativar a parcela?', mtconfirmation, [mbyes, mbno], 0) = mryes then
          cdsPrevisaoRecParc.FieldByName('stPrevisaoRecParc').Value := 'ATIVO';
  end;

  funcao.GravaSec(chave, cdsPrevisaoRecParc, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc, (Sender as TCBitBtn), 'idParcela');
  if (Sender as TBitBtn).Name <> 'BtnNovoParc' then
  begin
    SomaParcelas;

    //Verifica se teve alteração em relação ao título
    if vlTotalParcelas <> cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency then
      if messagedlg('Valor das parcelas diferente do valor do título!' + #13 +
                    'Deseja ajustar o valor do título?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        if not (cdsPadrao.State in [dsEdit, dsInsert]) then
          cdsPadrao.Edit;

        cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency := vlTotalParcelas;

        //Ajusta novamente a diferença
        LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency-vlTotalParcelas), 6, '');
      end;
  end;

  if recalc then
    GeraRateioParcela(0);
  //para não dar erro no applyupdates geral
  if (cdsPadrao.State = dsEdit) then
  begin
    if ((Sender as TBitBtn).Name = 'BtnExcluirParc') then
    begin
      cdsPrevisaoRecRat.ApplyUpdates(0);
      cdsPrevisaoRecParc.ApplyUpdates(0);
    end
    else
      if ((Sender as TBitBtn).Name = 'BtnSalvarParc') then
      begin
        cdsPrevisaoRecParc.ApplyUpdates(0);
        cdsPrevisaoRecRat.ApplyUpdates(0);
      end;
  end;

  DBEidParcela.SetFocus;
end;

procedure TFrmCadPrevisaoRec.BtnSalvarRatClick(Sender: TObject);
begin
  inherited;
  if (Sender as TBitBtn).Name = 'BtnSalvarRat' then
    if cdsPrevisaoRateio.FieldByName('vlRateio').Value >  cdsPadrao.FieldByName('vlPrevisaoRec').Value then
    begin
      messagedlg('O valor do rateio não pode ser maior que o Previsao!', mtwarning, [mbok], 0);
      exit;
    end;
  funcao.GravaSec(chave, cdsPrevisaoRecRat, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRat') and ((Sender as TBitBtn).Name <> 'BtnCancelarRat') then
  begin
    GeraRateioPrevisao;
    SomaRateio; //rateio
    SomaRateioTit;
    FiltraRateio;
  end;
  DBEidResultadoR.SetFocus;
end;

procedure TFrmCadPrevisaoRec.BtnSalvarRatTitClick(Sender: TObject);
begin
  inherited;
  if (Sender as TBitBtn).Name = 'BtnSalvarRatTit' then
    if cdsPrevisaoRateio.FieldByName('vlRateio').Value >  cdsPadrao.FieldByName('vlPrevisaoRec').Value then
    begin
      messagedlg('O valor do rateio não pode ser maior que o Previsao!', mtwarning, [mbok], 0);
      exit;
    end;

  funcao.GravaSec(chave, cdsPrevisaoRateio, BtnSalvarRatTit, BtnCancelarRatTit, BtnExcluirRatTit, BtnNovoRatTit, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRatTit') and ((Sender as TBitBtn).Name <> 'BtnCancelarRatTit') then
  begin
    GeraRateioParcela(1);
    SomaRateioTit; //rateio
    FiltraRateio;
    SomaRateio;   
  end;
  DBEidResultadoRT.SetFocus;
end;

procedure TFrmCadPrevisaoRec.BtnGeraTituloClick(Sender: TObject);
var
  sql : String;
begin
  inherited;
  Baixa := False;
  if cdsPadrao.FieldByName('stPrevisaoRec').AsString = 'ATIVO' then
  begin
    Application.CreateForm(TFrmGeraTitulo, FrmGeraTitulo);
    FrmGeraTitulo.tipo := 1;
    if not(FrmGeraTitulo.cdsTemp.State in [dsEdit, dsInsert]) then
      FrmGeraTitulo.cdsTemp.Append;
    FrmGeraTitulo.cdsTempidDocSerie.AsString := 'TRE';
    FrmGeraTitulo.cdsTempbaixa.AsString := 'S';
    FrmGeraTitulo.ShowModal;
    if Baixa then
    Begin
      sql := 'UPDATE PrevisaoRecParc SET stPrevisaoRecParc = '+ quotedstr('BAIXADA')+ 'WHERE idPrevisaoRec = '+ DBEidPrevisaoRec.Text;
      dmPadrao.dbConexao.ExecuteDirect(sql);
      sql := 'SELECT COUNT(p.idParcela) AS idParcela FROM PrevisaoRecParc p WHERE p.idPrevisaoRec = ' + DBEidPrevisaoRec.Text +
            ' AND stPrevisaoRecParc = ' + quotedstr('BAIXADA');

      // Caso ocorra de o usuario dar baixa em todas as parcelas =====================================================================
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        sql := 'UPDATE PrevisaoRec SET stPrevisaoRec = ' + quotedstr('BAIXADA') + ' WHERE idPrevisaoRec = ' + DBEidPrevisaoRec.Text +
               '   AND qtParcelas = ' + quotedstr(FieldByName('idParcela').AsString);
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      // ==============================================================================================================================

      DBEnrPrevisaoRecExit(DBEnrPrevisaoRec);
      BtnBaixaPrevisao.Enabled := false;
    End;
    Application.CreateForm(TFrmCadTituloRec, FrmCadTituloRec);
    if not(FrmCadTituloRec.cdsPadrao.State in [dsEdit, dsInsert])  then
       FrmCadTituloRec.cdsPadrao.Edit;
    FrmCadTituloRec.cdsPadrao.FieldByName('idDocSerie').AsString := idDocSerie;
    FrmCadTituloRec.cdsPadrao.FieldByName('idTituloRec').AsInteger := idTitulo;
    FrmCadTituloRec.cdsPadrao.FieldByName('idCliente').AsInteger := idFornecedor;
    FrmCadTituloRec.cdsPadrao.FieldByName('nrTituloRec').AsString := nrTitulo;
    FrmCadTituloRec.DBEnrTituloRecExit(FrmCadTituloRec.DBEnrTituloRec);
    FrmCadTituloRec.Show;
  end;
  BtnNovo.Click;
  BtnGeraTitulo.Enabled := False;
end;

procedure TFrmCadPrevisaoRec.BtnBaixaPrevisaoClick(Sender: TObject);
var
sql : string;
begin
  inherited;
  if (messagedlg('Deseja dar Baixa na Previsão ?', mtConfirmation, [mbYes, mbNo],0) = mrYes) then
  begin
   sql := 'UPDATE PrevisaoRecParc SET stPrevisaoRecParc = '+ quotedstr('BAIXADA')+ 'WHERE idPrevisaoRec = '+ DBEidPrevisaoRec.Text;
   dmPadrao.dbConexao.ExecuteDirect(sql);
   sql := 'SELECT COUNT(p.idParcela) AS idParcela FROM PrevisaoRecParc p WHERE p.idPrevisaoRec = ' + DBEidPrevisaoRec.Text +
          ' AND stPrevisaoRecParc = ' + quotedstr('BAIXADA');

    // Caso ocorra de o usuario dar baixa em todas as parcelas =====================================================================
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      sql := 'UPDATE PrevisaoRec SET stPrevisaoRec = ' + quotedstr('BAIXADA') + ' WHERE idPrevisaoRec = ' + DBEidPrevisaoRec.Text +
             '   AND qtParcelas = ' + quotedstr(FieldByName('idParcela').AsString);
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
   // ==============================================================================================================================
  end;
  DBEnrPrevisaoRecExit(DBEnrPrevisaoRec);
  BtnBaixaPrevisao.Enabled := false;
end;

procedure TFrmCadPrevisaoRec.BtnExcluirPrevisaoClick(Sender: TObject);
begin
  inherited;
  if messagedlg('Deseja realmente excluir a previsão selecionada?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    if frmPrincipal.ExecutaSQLRet([], '', 'EXEC spExcluiPrevisao ' + funcao.RetornaValorEField(DBEidPrevisaoRec, 3) + ', ' + QuotedStr('REC')).FieldByName('msg').AsString = 'OK' then
    begin
      BtnNovo.Click;
      messagedlg('Previsão excluída corretamente!', mtinformation, [mbok], 0);
    end;
end;

procedure TFrmCadPrevisaoRec.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    cdsPadrao.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;    
    cdsPadrao.FieldByName('incMes').AsString := 'N';
    cdsPrevisaoRecRat.Filtered := false;
  end;
end;

procedure TFrmCadPrevisaoRec.cdsPrevisaoRecMovAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;  
  DataSet.FieldByName('idCliente').Value := cdsPadrao.FieldByName('idCliente').Value ;
end;

procedure TFrmCadPrevisaoRec.cdsPrevisaoRecParcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('stPrevisaoRecParc').AsString := 'ATIVO';
end;

procedure TFrmCadPrevisaoRec.cdsPrevisaoRecRatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;  
end;

constructor TFrmCadPrevisaoRec.create(Formulario: TComponent;
  Parametro: String);
begin
  inherited create(formulario);
  id := '';
  if trim(Parametro) <> ''  then
    id := Parametro;
end;

procedure TFrmCadPrevisaoRec.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');
  if (cdsPadrao.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
    DBEprMulta.SetFocus;
end;

procedure TFrmCadPrevisaoRec.DBEidClienteExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidCliente.Text) = '' then
    exit;
  //Valores de Inicialização
  if cdsPadrao.State in [dsInsert] then
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCliente], 'spRetDadosTitulo', '') do
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

end;

procedure TFrmCadPrevisaoRec.DBEidGerencialEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidGerencial.Text;
end;

procedure TFrmCadPrevisaoRec.DBEidParcelaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsPrevisaoRecParc, [DBEidParcela]);
end;

procedure TFrmCadPrevisaoRec.DBEidRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidRateio.Text;
end;

procedure TFrmCadPrevisaoRec.DBEidResultadoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidResultado.Text;
end;

procedure TFrmCadPrevisaoRec.DBEidResultadoExit(Sender: TObject);
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
    if not cdsPrevisaoRecRat.IsEmpty then
      if messagedlg('O Rateio deverá ser recalculado para os novos valores! ' + #13 +
                    ' Deseja recalcular?', mtwarning, [mbyes, mbno], 0) = mryes then
        GeraRateioParcela(0);
end;

procedure TFrmCadPrevisaoRec.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsPrevisaoRecRat, [DBEidParcelaR, DBEidResultadoR]);
end;

procedure TFrmCadPrevisaoRec.DBEidResultadoRTExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsPrevisaoRateio, [DBEidResultadoRT]);
end;

procedure TFrmCadPrevisaoRec.DBEnrPrevisaoRecExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidDocSerie, DBEidPrevisaoRec, DBEnrPrevisaoRec]);
  HabilitaRatRes;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');  
  AbreTabSecundaria;
  if (cdsPadrao.State = dsBrowse) and (not cdsPrevisaoRecRat.IsEmpty) then
    GeraRateioPrevisao;
  SomaParcelas;
  if (cdsPadrao.State in [dsInsert,dsEdit] )then
    BtnBaixaPrevisao.Enabled := false
  else
  if ((trim(cdsPadrao.FieldByName('stPrevisaoRec').AsString) <> 'BAIXADA') AND ((trim(cdsPadrao.FieldByName('stPrevisaoRec').AsString) <> 'CANCELADO'))) then
    BtnBaixaPrevisao.Enabled := true
  else
    BtnBaixaPrevisao.Enabled := false;
  if cdsPadrao.FieldByName('stPrevisaoRec').AsString = 'ATIVO' then
    BtnGeraTitulo.Enabled := True;

end;

procedure TFrmCadPrevisaoRec.DBEnrPrevisaoRecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadPrevisaoRec.DBEprRateioRTEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadPrevisaoRec.DBEprRateioRTExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCDBEdit).Text then
  begin
    //Campos do rateio no valor do Previsao
    if (Sender as TCDBEdit).Name = 'DBEprRateioRT' then
      cdsPrevisaoRateio.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsPadrao.FieldByName('vlPrevisaoRec').Value *
                               cdsPrevisaoRateio.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateioRT' then
      cdsPrevisaoRateio.FieldByName('prRateio').Value :=
         RoundTo(((cdsPrevisaoRateio.FieldByName('vlRateio').Value /
                   cdsPadrao.FieldByName('vlPrevisaoRec').Value) * 100), -3);

    //Campos do rateio no valor da parcela
    if (Sender as TCDBEdit).Name = 'DBEprRateio' then
      cdsPrevisaoRecRat.FieldByName('vlRateio').Value :=
         funcao.ArredondaMoeda((cdsPrevisaoRecParc.FieldByName('vlParcela').Value *
                               cdsPrevisaoRecRat.FieldByName('prRateio').Value)/100);
    if (Sender as TCDBEdit).Name = 'DBEvlRateio' then
      cdsPrevisaoRecRat.FieldByName('prRateio').Value :=
         RoundTo(((cdsPrevisaoRecRat.FieldByName('vlRateio').Value /
                   cdsPrevisaoRecParc.FieldByName('vlParcela').Value) * 100), -3);
  end;
end;

procedure TFrmCadPrevisaoRec.DBEvlPrevisaoRecEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString; 
end;

procedure TFrmCadPrevisaoRec.DBEvlPrevisaoRecExit(Sender: TObject);
begin
  inherited;
  //rotina que alguns campos utilizarão onde se houver mudanças deverá ser obrigatóriamente feito o recalculo das parcelas
  //não deu certo usar o oldvalue, pois enquanto o campo não for salvo ele mantém o valor antigo... ai fica passando e voltando
//  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).OldValue <> cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).Value then
  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString <> vlAnterior then
    if not cdsPrevisaoRecParc.IsEmpty then
      GeraParcelas;
end;

procedure TFrmCadPrevisaoRec.DBMobsPrevisaoRecExit(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.State in [dsInsert]) and (cdsPrevisaoRecParc.IsEmpty) then
    GeraParcelas;
  PagAbas.ActivePageIndex := 1;    
end;

procedure TFrmCadPrevisaoRec.dspPrevisaoRecParcBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);  
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspPrevisaoRecMov' then
    begin
      GeraAutoInc(DeltaDS, 'PrevisaoRecMov', 'idPrevisaoRecMov', []);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspPrevisaoRecMov' then
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmCadPrevisaoRec.dsPrevisaoRateioStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRatTit, BtnCancelarRatTit, BtnExcluirRatTit, BtnNovoRatTit);
end;

procedure TFrmCadPrevisaoRec.dsPrevisaoRecParcStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc);
end;

procedure TFrmCadPrevisaoRec.dsPrevisaoRecRatStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;

procedure TFrmCadPrevisaoRec.ExcluiParc(parc: boolean);
begin
       //limpa a tabela se houverem registros nela
  if parc then
  begin
    if not cdsPrevisaoRecParc.IsEmpty then
      with cdsPrevisaoRecParc do
      begin
        First;
        while not Eof do
        begin
          delete;
          first;
        end;
      end;
  end;
    //Verifica se o padrao está em modo de edição e já executa o applyupdates, para evitar erro de chaveestrangeira
    if cdsPadrao.State = dsEdit then
    begin
      //limpa a tabela se houverem registros nela
      if not cdsPrevisaoRecRat.IsEmpty then
        with cdsPrevisaoRecRat do
        begin
          First;
          while not Eof do
          begin
            delete;
            first;
          end;
        end;

{      //limpa a tabela se houverem registros nela
      if not cdsPrevisaoRecMov.IsEmpty then
        with cdsPrevisaoRecMov do
        begin
          First;
          while not Eof do
          begin
            delete;
            first;
          end;
        end;}

      if not (cdsPadrao.State = dsInsert) then
      begin
//        cdsPrevisaoRecMov.ApplyUpdates(0);
        cdsPrevisaoRecRat.ApplyUpdates(0);
        if parc then
          cdsPrevisaoRecParc.ApplyUpdates(0);
      end;
    end;

end;

procedure TFrmCadPrevisaoRec.FiltraRateio;
begin
  cdsPrevisaoRecRat.Filtered := false;
  cdsPrevisaoRecRat.Filter := 'idParcela = ' + DBEidParcela.Text;
  cdsPrevisaoRecRat.Filtered := true;
end;

procedure TFrmCadPrevisaoRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadPrevisaoRec := nil;
end;

procedure TFrmCadPrevisaoRec.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsPrevisaoRecParc;
  Tabelas[2] := cdsPrevisaoRecRat;

//  Tabelas[2] := cdsCadEmpresa;
  chave[0] := DBEidPrevisaoRec;
  foco := DBEidDocSerie;
  tab_chave := 'PrevisaoRec';
  situacao := 'stPrevisaoRec';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
//  FindPesquisa := FindProduto;
end;

procedure TFrmCadPrevisaoRec.FormShow(Sender: TObject);
begin
  inherited;
  vlTotalParcelas := 0;
  cdsPrevisaoRateio.CreateDataSet;
  if trim(id) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idPrevisaoRec').AsString := id;
    BuscaChave(cdsPadrao, [DBEidPrevisaoRec]);
    //verifica se não é consulta de outra empresa
    if (trim(DBEidEmpresa.Text) <> trim(cdsPadrao.FieldByName('idEmpresa').AsString)) or
       (trim(DBEidCadEmpresa.Text) <> trim(cdsPadrao.FieldByName('idCadEmpresa').AsString)) then
    begin
      if not (cdsEmpresa.state in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;
      cdsEmpresa.FieldByName('idEmpresa').Value := cdsPadrao.FieldByName('idEmpresa').Value;
      cdsEmpresa.FieldByName('idCadEmpresa').Value := cdsPadrao.FieldByName('idCadEmpresa').Value;      
    end;
    
    DBEnrPrevisaoRecExit(DBEnrPrevisaoRec);
  end;
  BtnBaixaPrevisao.Enabled := false;
  Height := 545;
  Width := 613;
end;

procedure TFrmCadPrevisaoRec.GeraParcelas;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  if not cdsPrevisaoRecParc.IsEmpty then
    if messagedlg('Deseja recalcular as parcelas?', mtconfirmation, [mbyes, mbno], 0) = mrno then
      exit;

  if not funcao.VerCampoRequerido([cdsPadrao], 'idPrevisaoRec,nrPrevisaoRec,diasVencimento,prMulta,prJuros,prDesconto') then
  begin
    PagAbas.ActivePageIndex := 0;
    exit;
  end;

  with cdsPadrao do
  begin
    if trim(FieldByName('diasVencimento').AsString) = '' then
      FieldByName('diasVencimento').Value := 0;
    if trim(FieldByName('prMulta').AsString) = '' then
      FieldByName('prMulta').Value := 0;
    if trim(FieldByName('prJuros').AsString) = '' then
      FieldByName('prJuros').Value := 0;
    if trim(FieldByName('prDesconto').AsString) = '' then
      FieldByName('prDesconto').Value := 0;

    if (not (FieldByName('vlPrevisaoRec').Value > 0)) or
       (not (FieldByName('qtParcelas').Value > 0)) or
       ((not(FieldByName('diasVencimento').Value > 0)) and (FieldByName('incMes').AsString = 'N') and
       (FieldByName('qtParcelas').Value > 1)) or
       (not (trim(FieldByName('dtVencimentoIni').AsString) <> '')) then
    begin
      messagedlg('Para gerar as parcelas são necessários os campos: ' + #13 +
                 'Valor do Previsao; Parcelas; Primeiro Vencimento; Dias entre Parcelas', mterror, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;
    if (FieldByName('dtVencimentoIni').Value < FieldByName('dtEmissao').Value) then
    begin
      messagedlg('O primeiro vencimento da parcela não pode ser menor que a data de emissão do título!',
                 mterror, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBEdtVencimentoIni.SetFocus;
      exit;
    end;

    ExcluiParc(true);

    //GERAÇÃO DAS PARCELAS
    vlParcela := funcao.ArredondaMoeda(FieldByName('vlPrevisaoRec').Value/FieldByName('qtParcelas').AsInteger);
    vlPrimeira := FieldByName('vlPrevisaoRec').Value-(vlParcela*(FieldByName('qtParcelas').AsInteger-1));
    dtParcela := FieldByName('dtVencimentoIni').AsDateTime;
    for i := 1 to FieldByName('qtParcelas').AsInteger do
    begin
      cdsPrevisaoRecParc.Append;
      if trim(FieldByName('idPrevisaoRec').AsString) = '' then
        cdsPrevisaoRecParc.FieldByName('idPrevisaoRec').Value := 0
      else
        cdsPrevisaoRecParc.FieldByName('idPrevisaoRec').Value := FieldByName('idPrevisaoRec').Value;
      cdsPrevisaoRecParc.FieldByName('idParcela').Value := i;
      cdsPrevisaoRecParc.FieldByName('dtVencimento').Value := dtParcela;
      if i = 1 then
        cdsPrevisaoRecParc.FieldByName('vlParcela').Value := vlPrimeira
      else
        cdsPrevisaoRecParc.FieldByName('vlParcela').Value := vlParcela;
      cdsPrevisaoRecParc.Post;
      if cdsPadrao.FieldByName('incMes').AsString = 'S' then
        dtParcela := IncMonth(FieldByName('dtVencimentoIni').AsDateTime, i)
      else
        dtParcela := dtParcela + FieldByName('diasVencimento').Value;
    end; //fim do for i := 1 to FieldByName('qtParcelas').AsInteger do
  end; //fim do with cdsPadrao do
  SomaParcelas;
//******************  INICIO DO RATEIO PELAS PARCELAS  ***********************//
  GeraRateioParcela(0);
end;

procedure TFrmCadPrevisaoRec.GeraRateioParcela(tipo: byte);
//variável tipo: 0 : baseado no Previsao
//               1 : baseado na temporária cdsPrevisaoRateio
var
  idResMaior : integer;
  vlRateioMaior, vlDiferenca : currency;
begin
//******************  INICIO DO RATEIO PELAS PARCELAS  ***********************//
  idResMaior := 0;
  with cdsPrevisaoRecRat do
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
    end;
    cdsPrevisaoRecParc.First;
    while not cdsPrevisaoRecParc.Eof do
    begin
      if tipo = 0 then //geração a partir do Previsao
      begin
        //início da geração do rateio / sem plano de rateio direto pelo plano de resultado
        if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
        begin
            Append;
            if trim(DBEidPrevisaoRec.Text) <> '' then
              FieldByName('idPrevisaoRec').AsString := DBEidPrevisaoRec.Text
            else
              FieldByName('idPrevisaoRec').Value := 0;
            FieldByName('idParcela').Value := cdsPrevisaoRecParc.FieldByName('idParcela').Value;
            FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
            FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
            FieldByName('vlRateio').Value := cdsPrevisaoRecParc.FieldByName('vlParcela').Value;
            FieldByName('prRateio').Value := '100';
            Post;
        end
        else
        begin  //início da geração do rateio / via plano de rateio
          if trim(DBEidRateio.Text) = '' then
          begin
            messagedlg('O centro de resultado ou o rateio devem ser informados!', mtwarning, [mbok], 0);
            cdsPrevisaoRecParc.EmptyDataSet;
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
              cdsPrevisaoRecRat.Append;
              if trim(DBEidPrevisaoRec.Text) <> '' then
                cdsPrevisaoRecRat.FieldByName('idPrevisaoRec').AsString := DBEidPrevisaoRec.Text
              else
                cdsPrevisaoRecRat.FieldByName('idPrevisaoRec').Value := 0;
              cdsPrevisaoRecRat.FieldByName('idParcela').Value := cdsPrevisaoRecParc.FieldByName('idParcela').Value;
              cdsPrevisaoRecRat.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
              cdsPrevisaoRecRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
              cdsPrevisaoRecRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
              cdsPrevisaoRecRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsPrevisaoRecParc.FieldByName('vlParcela').Value *
                                                               FieldByName('prRateio').Value)/100);
              //para registrar quem tem o maior valor
              if vlRateioMaior < cdsPrevisaoRecRat.FieldByName('vlRateio').Value then
                idResMaior := cdsPrevisaoRecRat.FieldByName('idResultado').Value;
              cdsPrevisaoRecRat.Post;
              Next;
            end; //fim do laço do rateio
          end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do

        end; //fim do else   begin  //início da geração do rateio / via plano de rateio
      end //fim do if tipo = 0
      else //para o tipo = 1
      begin
        with cdsPrevisaoRateio do
        begin
          First;
          vlRateioMaior := 0;
          idResMaior := 0;
          while not Eof do
          begin
            cdsPrevisaoRecRat.Append;
            cdsPrevisaoRecRat.FieldByName('idPrevisaoRec').Value := FieldByName('idPrevisaoRec').Value;
            cdsPrevisaoRecRat.FieldByName('idParcela').Value := cdsPrevisaoRecParc.FieldByName('idParcela').Value;
            cdsPrevisaoRecRat.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;
            cdsPrevisaoRecRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
            cdsPrevisaoRecRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
            cdsPrevisaoRecRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsPrevisaoRecParc.FieldByName('vlParcela').Value *
                                                             FieldByName('prRateio').Value)/100);
            //para registrar quem tem o maior valor
            if vlRateioMaior < cdsPrevisaoRecRat.FieldByName('vlRateio').Value then
              idResMaior := cdsPrevisaoRecRat.FieldByName('idResultado').Value;
            cdsPrevisaoRecRat.Post;
            Next;
          end; //fim do laço do rateio
        end; // fim do with cdsPrevisaoRateio do

      end; //fim do else para o tipo = 1

      SomaRateio;
      //inicia processo para ajuste de valor caso haja diferença joga para o maior
      if (vlTotalRateio <>  cdsPrevisaoRecParc.FieldByName('vlParcela').Value) then
        if not ((tipo = 1) and (vlTotalRateioTit < cdsPadrao.FieldByName('vlPrevisaoRec').Value)) then
        begin
          vlDiferenca := cdsPrevisaoRecParc.FieldByName('vlParcela').Value - vlTotalRateio;
          IndexFieldNames := 'idResultado';
          FindKey([idResMaior]);
          Edit;
          FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
          Post;
        end;
      Filtered := false;
      cdsPrevisaoRecParc.Next;
    end;// fim do while not cdsPrevisaoRecParc.Eof do
  end; // fim do with cdsPrevisaoRecRat do
  cdsPrevisaoRecParc.First;
  if not (frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL') then
    GeraRateioPrevisao;
end;

procedure TFrmCadPrevisaoRec.GeraRateioPrevisao;
var
  vlPrevisao, vlRateio, prRateio : Double;
begin
  cdsPrevisaoRateio.Active := true;
  cdsPrevisaoRateio.EmptyDataSet;
  cdsPrevisaoRateio.IndexFieldNames := 'idResultado';
  with cdsPrevisaoRecRat do
  begin
    Filtered := false;
    IndexFieldNames := 'idResultado';
//    showmessage(inttostr(cdsPrevisaoRecRat.RecordCount));
    First;
    while not Eof do
    begin
      if cdsPrevisaoRateio.FindKey([FieldByName('idResultado').AsInteger]) then
      begin
        cdsPrevisaoRateio.Edit;
        cdsPrevisaoRateio.FieldByName('vlRateio').Value := cdsPrevisaoRateio.FieldByName('vlRateio').Value +
                                                         FieldByName('vlRateio').Value;
        cdsPrevisaoRateio.Post;
      end
      else
      begin
        cdsPrevisaoRateio.Append;
        cdsPrevisaoRateio.FieldByName('idPrevisaoRec').Value := FieldByName('idPrevisaoRec').Value; 
        cdsPrevisaoRateio.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
        cdsPrevisaoRateio.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;
        cdsPrevisaoRateio.FieldByName('vlRateio').Value := FieldByName('vlRateio').Value;
        cdsPrevisaoRateio.FieldByName('prRateio').Value := 0;
        cdsPrevisaoRateio.Post;
      end;
      Next;
    end; // fim do while not Eof do
  end; // fim do with cdsPrevisaoRecRat do
  //Ajusta o percentual do rateio
  with cdsPrevisaoRateio do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlPrevisao := cdsPadrao.FieldByName('vlPrevisaoRec').AsFloat;
      vlRateio := FieldByName('vlRateio').AsFloat;
      prRateio := RoundTo(((vlRateio / vlPrevisao)*100), -3);
      Edit;
      FieldByName('prRateio').AsFloat := prRateio;
      Post;
      Next;
    end;
  end; //  fim do with cdsPrevisaoRateio do
end;

procedure TFrmCadPrevisaoRec.HabilitaRatRes;
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

procedure TFrmCadPrevisaoRec.LookLancamentoSetText(Sender: TObject);
begin
  inherited;
  if trim(LookLancamento.Caption) <> '' then
    LookLancamento.Caption := FormatFloat('#,##0.00', StrToFloat(LookLancamento.Caption));
end;

procedure TFrmCadPrevisaoRec.PagAbasChange(Sender: TObject);
begin
  inherited;
  if (PagAbas.ActivePageIndex = 1) then //Parcelas
  begin
    if (cdsPadrao.State in [dsInsert]) and (cdsPrevisaoRecParc.IsEmpty) then
      GeraParcelas;
  end;
  if (PagAbas.ActivePageIndex = 2) and (not cdsPrevisaoRecRat.IsEmpty) then //Rateio
  begin
    //preenche a tabela que irá fazer o lookup no grid do resultado
    cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
    SomaRateio;
    SomaRateioTit;    
    FiltraRateio;
  end;
end;

procedure TFrmCadPrevisaoRec.RBRatParcelaClick(Sender: TObject);
begin
  inherited;
  GrpRateioParc.Visible := true;
  GrpRateioPrevisao.Visible := false;
  RBRatParcela2.Checked := true;
  FiltraRateio;
end;

procedure TFrmCadPrevisaoRec.RBRatPrevisao2Click(Sender: TObject);
begin
  inherited;
  GrpRateioParc.Visible := false;
  GrpRateioPrevisao.Visible := true;
  RBRatPrevisao.Checked := true;
end;

procedure TFrmCadPrevisaoRec.SomaParcelas;
begin
  vlTotalParcelas := 0;
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency-vlTotalParcelas), 6, '');
  With cdsPrevisaoRecParc do
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
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency-vlTotalParcelas), 6, '');
end;

procedure TFrmCadPrevisaoRec.SomaRateio;
begin
  vlTotalRateio := 0;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsPrevisaoRecParc.FieldByName('vlParcela').AsCurrency-vlTotalRateio), 6, '');
  With cdsPrevisaoRecRat do
  begin
    if IsEmpty then
      exit;
    FiltraRateio;   
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
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsPrevisaoRecParc.FieldByName('vlParcela').AsCurrency-vlTotalRateio), 6, '');
end;

procedure TFrmCadPrevisaoRec.SomaRateioTit;
begin
  vlTotalRateioTit := 0;
  LblTotalRatTit.Caption := Funcao.Mascara(FloatToStr(vlTotalRateioTit), 6, '');
  LblRestanteRatTit.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency-vlTotalRateioTit), 6, '');
  With cdsPrevisaoRateio do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      vlTotalRateioTit := vlTotalRateioTit + FieldByName('vlRateio').AsCurrency;
      Next;
    end;
    First;
  end;
  LblTotalRatTit.Caption := Funcao.Mascara(FloatToStr(vlTotalRateioTit), 6, '');
  LblRestanteRatTit.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlPrevisaoRec').AsCurrency-vlTotalRateioTit), 6, '');
end;

end.
