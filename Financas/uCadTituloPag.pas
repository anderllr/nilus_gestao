unit uCadTituloPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, CFind, ActnList, ImgList, DB, Provider,
  DBClient, StdCtrls, EditAlign, CEdit, ExtCtrls, CLookUp, Buttons, CBitBtn,
  ComCtrls, CPageControl, CStatusBar, CLabel, Mask, DBCtrls, CDBEdit, CDBMemo,
  FMTBcd, SqlExpr, CPanelGradient, CGroupBox, Grids, DBGrids, CDBGrid,
  CRadioButton, Math, CDBCheckBox, DBXCommon, CButton, ClipBrd,
  uFrmCadPadraoEmpFiscal, CPanel, System.Actions, System.ImageList, CCheckBox;

type
  TFrmCadTituloPag = class(TFrmCadPadraoEmpFiscal)
    Bevel6: TCPanel;
    sdsTituloPag: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel5: TCLabel;
    DBEtpDocumento: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtEmissao: TCDBEdit;
    CLabel7: TCLabel;
    DBEvlTituloPag: TCDBEdit;
    CLabel8: TCLabel;
    DBEidPortador: TCDBEdit;
    LookPortador: TCLookUp;
    CLabel11: TCLabel;
    DBEidResultado: TCDBEdit;
    CLabel12: TCLabel;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    DBMobsTituloPag: TCDBMemo;
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
    FindFornecedor: TCFind;
    CLabel21: TCLabel;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    FindConta: TCFind;
    CLabel22: TCLabel;
    LookLancamento: TCLookUp;
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
    sdsTituloPagParc: TSQLDataSet;
    dspTituloPagParc: TDataSetProvider;
    cdsTituloPagParc: TClientDataSet;
    dsTituloPagParc: TDataSource;
    TabParcelas: TTabSheet;
    CGroupBox6: TCGroupBox;
    CLabel24: TCLabel;
    DBEidParcela: TCDBEdit;
    CGroupBox7: TCGroupBox;
    GridParcelas: TCDBGrid;
    GrpBtnParcelas: TCGroupBox;
    BtnSalvarParc: TCBitBtn;
    BtnCancelarParc: TCBitBtn;
    BtnExcluirParc: TCBitBtn;
    BtnNovoParc: TCBitBtn;
    CLabel25: TCLabel;
    DBEvlParcela: TCDBEdit;
    CLabel26: TCLabel;
    DBEdtVencimento: TCDBEdit;
    CLabel27: TCLabel;
    DBEstTituloPagParc: TCDBEdit;
    CLabel28: TCLabel;
    LblTotal: TCLabel;
    CLabel29: TCLabel;
    LblRestante: TCLabel;
    TabRateio: TTabSheet;
    sdsTituloPagRat: TSQLDataSet;
    dspTituloPagRat: TDataSetProvider;
    cdsTituloPagRat: TClientDataSet;
    dsTituloPagRat: TDataSource;
    cdsTituloRateio: TClientDataSet;
    dsTituloRateio: TDataSource;
    cdsTituloRateioidEmpresa: TIntegerField;
    cdsTituloRateioidResultado: TIntegerField;
    cdsTituloRateioidGerencial: TIntegerField;
    cdsTituloRateioprRateio: TFloatField;
    cdsTituloRateiovlRateio: TCurrencyField;
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
    RBRatTitulo2: TCRadioButton;
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
    GrpRateioTitulo: TCGroupBox;
    CLabel36: TCLabel;
    CLabel39: TCLabel;
    CGroupBox9: TCGroupBox;
    CLabel41: TCLabel;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    CLabel44: TCLabel;
    CLabel45: TCLabel;
    DBEvlTituloPagR: TCDBEdit;
    DBEidResultadoRT: TCDBEdit;
    DBEidGerencialRT: TCDBEdit;
    DBEprRateioRT: TCDBEdit;
    DBEvlRateioRT: TCDBEdit;
    RBRatTitulo: TCRadioButton;
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
    cdsTituloRateiodescResultado: TStringField;
    DBEvlParcelaR: TCDBEdit;
    cdsTituloRateioidTituloPag: TIntegerField;
    DBCKincMes: TCDBCheckBox;
    sdsTituloPagMov: TSQLDataSet;
    dspTituloPagMov: TDataSetProvider;
    cdsTituloPagMov: TClientDataSet;
    dsTituloPagMov: TDataSource;
    TabMovimentacao: TTabSheet;
    CGroupBox12: TCGroupBox;
    CDBGrid4: TCDBGrid;
    cdsTituloPagMovidTituloPagMov: TIntegerField;
    cdsTituloPagMovidEmpresa: TIntegerField;
    cdsTituloPagMovidFornecedor: TIntegerField;
    cdsTituloPagMovidTituloPag: TIntegerField;
    cdsTituloPagMovidParcela: TSmallintField;
    cdsTituloPagMovidMovFinanceira: TIntegerField;
    cdsTituloPagMovdtTituloPagMov: TSQLTimeStampField;
    cdsTituloPagMovvlTituloPagMov: TFMTBCDField;
    cdsTituloPagMovfator: TSmallintField;
    cdsMovFinanceira: TClientDataSet;
    cdsTituloPagMovdescMovFinanceira: TStringField;
    CGroupBox5: TCGroupBox;
    CLabel47: TCLabel;
    CLabel49: TCLabel;
    DBEvlTituloPagMov: TCDBEdit;
    DBEidMovFinanceiraM: TCDBEdit;
    CLabel53: TCLabel;
    DBEdtTituloPagMov: TCDBEdit;
    LookMovFinanceiraM: TCLookUp;
    FindResultado: TCFind;
    FindGerenciaP: TCFind;
    LookGerencialP: TCLookUp;
    CLookUp1: TCLookUp;
    LookGerencialR: TCLookUp;
    LookResultadoR: TCLookUp;
    LookGerencialRT: TCLookUp;
    LookResultadoRT: TCLookUp;
    CGroupBox8: TCGroupBox;
    BtnAlterarMov: TCBitBtn;
    BtnExcluirMov: TCBitBtn;
    DBEidTituloPagMov: TCDBEdit;
    actExcluir2: TAction;
    BtnExcluir2: TCBitBtn;
    actCancelaParc: TAction;
    BtnParcCancela: TCBitBtn;
    btnGerar: TCBitBtn;
    DBEidFornecedor: TCDBEdit;
    LookFornecedor: TCLookUp;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    DBEnrTituloPag: TCDBEdit;
    DBEidTituloPag: TCDBEdit;
    DBEstTituloPag: TCDBEdit;
    CLabel9: TCLabel;
    CLabel3: TCLabel;
    CLabel1: TCLabel;
    CLabel4: TCLabel;
    cdsTituloPagMovidCadEmpresa: TSmallintField;
    cdsTituloRateioidCadEmpresa: TIntegerField;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    DBEidConta: TCDBEdit;
    CLabel2: TCLabel;
    cdsPadraoidTituloPag: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraonrTituloPag: TStringField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraotpDocumento: TStringField;
    cdsPadraodtEmissao: TSQLTimeStampField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidBanco: TIntegerField;
    cdsPadraoidIndice: TSmallintField;
    cdsPadraoidMovFinanceira: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidRateio: TSmallintField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoobsTituloPag: TStringField;
    cdsPadraovlTituloPag: TFMTBCDField;
    cdsPadraoqtParcelas: TSmallintField;
    cdsPadraodtVencimentoIni: TSQLTimeStampField;
    cdsPadraodiasVencimento: TSmallintField;
    cdsPadraoprMulta: TFMTBCDField;
    cdsPadraoprDesconto: TFMTBCDField;
    cdsPadraoprJuros: TFMTBCDField;
    cdsPadraoincMes: TStringField;
    cdsPadraostTituloPag: TStringField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidPortador: TSmallintField;
    cdsPadraoidConta: TSmallintField;
    DBEidMovFinanceira: TCDBEdit;
    LookHabilita: TCLookUp;
    cdsTituloPagRatidTituloPag: TIntegerField;
    cdsTituloPagRatidParcela: TSmallintField;
    cdsTituloPagRatidEmpresa: TIntegerField;
    cdsTituloPagRatidResultado: TIntegerField;
    cdsTituloPagRatidGerencial: TIntegerField;
    cdsTituloPagRatprRateio: TFMTBCDField;
    cdsTituloPagRatvlRateio: TFMTBCDField;
    cdsTituloPagRatidCadEmpresa: TSmallintField;
    cdsTituloPagRatdescResultado: TStringField;
    CLookUp2: TCLookUp;
    DBEidDocumento: TCDBEdit;
    CLabel10: TCLabel;
    cdsPadraoidDocumento: TIntegerField;
    FindDocumento: TCFind;
    cdsTituloPagMovvlRealIndice: TFMTBCDField;
    CLabel50: TCLabel;
    DBEvlSaldoParc: TCDBEdit;
    cdsTituloPagMovvlSaldoParc: TAggregateField;
    BtnStatus: TCBitBtn;
    procedure DBEidParcelaExit(Sender: TObject);
    procedure cdsTituloPagParcAfterScroll(DataSet: TDataSet);
    procedure actCancelaParcExecute(Sender: TObject);
    procedure DBEtpDocumentoEnter(Sender: TObject);
    procedure DBEdtVencimentoDblClick(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actExcluir2Execute(Sender: TObject);
    procedure cdsTituloPagMovAfterScroll(DataSet: TDataSet);
    procedure BtnExcluirMovClick(Sender: TObject);
    procedure BtnAlterarMovClick(Sender: TObject);
    procedure DBEvlParcelaExit(Sender: TObject);
    procedure DBEvlParcelaEnter(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure DBEidRateioEnter(Sender: TObject);
    procedure DBEidResultadoEnter(Sender: TObject);
    procedure DBEidGerencialEnter(Sender: TObject);
    procedure DBEidResultadoRExit(Sender: TObject);
    procedure DBEidResultadoRTExit(Sender: TObject);
    procedure DBEnrTituloPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dspTituloPagParcBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsTituloPagMovAfterInsert(DataSet: TDataSet);
    procedure DBCKincMesExit(Sender: TObject);
    procedure DBEprRateioRTExit(Sender: TObject);
    procedure DBEprRateioRTEnter(Sender: TObject);
    procedure dsTituloRateioStateChange(Sender: TObject);
    procedure DBMobsTituloPagExit(Sender: TObject);
    procedure RBRatParcelaClick(Sender: TObject);
    procedure RBRatTitulo2Click(Sender: TObject);
    procedure BtnSalvarRatTitClick(Sender: TObject);
    procedure cdsTituloPagRatAfterInsert(DataSet: TDataSet);
    procedure dsTituloPagRatStateChange(Sender: TObject);
    procedure BtnSalvarRatClick(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEvlTituloPagEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEvlTituloPagExit(Sender: TObject);
    procedure dsTituloPagParcStateChange(Sender: TObject);
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure cdsTituloPagParcAfterInsert(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure LookLancamentoSetText(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEnrTituloPagExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    function GeraParcelas: boolean;
    procedure SomaParcelas;
    procedure SomaRateio;
    procedure SomaRateioTit;
    procedure HabilitaRatRes;
    procedure GeraRateioTitulo;
    procedure GeraRateioParcela(tipo: byte);
    procedure FiltraRateio;
    procedure GeraMovimentacao;
    constructor create (Formulario: TComponent; Parametro: array of String);
    procedure ExcluiParc(parc: boolean);
    procedure AbreTitulo;
    procedure btnGerarClick(Sender: TObject);
    procedure GridParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actNovoExecute(Sender: TObject);
    procedure cdsEmpresaidEmpresaValidate(Sender: TField);
    procedure AtualizaResultado;
    function VerMovEstornado : boolean;
    procedure DBEidPortadorExit(Sender: TObject);
    procedure DBEidPortadorEnter(Sender: TObject);
    procedure VerificaNfE;
    procedure DBEprRateioEnter(Sender: TObject);
    procedure DBEprRateioExit(Sender: TObject);
    procedure DBEdtEmissaoEnter(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure BtnStatusClick(Sender: TObject);
    procedure ReplicaInformacoes;
    function ValidaPermissao(Tipo : string) : Boolean;
  private
    { Private declarations }
    vlTotalParcelas : Currency;
    vlTotalRateio : Currency;
    vlTotalRateioTit, vlRatTemp : Currency;
    vlAnterior, id: string;
    parcelaDif, Rateio, Nota : boolean;
    idContratoFrete, idRomaneio : integer;
    idContratoCompra, ContratoRomaneio : string;
    idComissao : String;
  public
    { Public declarations }
    //Variavel criada para relacionar na pesquisa
    // para verificar os pagamentos realizados
    // para determinados titulos
    excluiPag : boolean;
    idTitulo : string;
    idAdiantamento, idMovFinanceira : integer;
    idFornecedor, idDocSerie : string;
  end;

var
  FrmCadTituloPag: TFrmCadTituloPag;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPesTituloPag,
  uFrmPadrao, uFrmAlteraPag, uFrmPesTitulos, uDmFind, uFrmManutencaoFrete,
  uFrmComissaoContrato, uFrmAlteraDtVenc, uFrmCadAbastecimento,
  uFrmCadAdiantamento, uFrmCadContratoCompra, uFrmCadRomaneio;

{$R *.dfm}

procedure TFrmCadTituloPag.AbreTitulo;
begin
  //
  if (trim(id) <> '') and (trim(id) <> '0') then
  begin
    If BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidFornecedor, DBEidDocSerie, DBEnrTituloPag, DBEidTituloPag]) Then
       PagAbas.ActivePageIndex := 0;
  end
  else
  begin
//    if (Trim(DBEidTituloPag.Text) = '') then
      If BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidFornecedor, DBEidDocSerie, DBEnrTituloPag]) Then
         PagAbas.ActivePageIndex := 0;
  end;

 { If BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidFornecedor, DBEidDocSerie, DBEnrTituloPag, DBEidTituloPag]) Then
     if PagAbas.ActivePageIndex = 0 then
        DBEdtEmissao.SetFocus;}
  //
  AbreTabSecundaria;
  //
  If (cdsPadrao.State = dsBrowse) Then
     Begin
       //
       If (cdsTituloPagRat.IsEmpty) Then
          GeraRateioParcela(0);
//       If (Not cdsTituloPagRat.IsEmpty) Then
//          GeraRateioTitulo;
       //
     End;
  //
  //Valores de Inicialização
  //
  If (cdsPadrao.State = dsInsert) Then
     With frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidFornecedor], 'spRetDadosTituloPag', '') Do
          begin
            //
            If (FieldByName('idSafra').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idSafra').AsString) = '') Then
               cdsPadrao.FieldByName('idSafra').AsInteger := FieldByName('idSafra').AsInteger;
            If (FieldByName('idDocumento').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idDocumento').AsString) = '') Then
               cdsPadrao.FieldByName('idDocumento').AsInteger := FieldByName('idDocumento').AsInteger;
            If (FieldByName('idPortador').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idPortador').AsString) = '') Then
            begin
               cdsPadrao.FieldByName('idPortador').AsInteger := FieldByName('idPortador').AsInteger;
               vlAnterior := '';
               DBEidPortadorExit(DBEidPortador);
            end;
            If (FieldByName('idBanco').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idBanco').AsString) = '') Then
               cdsPadrao.FieldByName('idBanco').AsInteger := FieldByName('idBanco').AsInteger;
            If (FieldByName('idIndice').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idIndice').AsString) = '') Then
               cdsPadrao.FieldByName('idIndice').AsInteger := FieldByName('idIndice').AsInteger;
            If (FieldByName('idMovFinanceira').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idMovFinanceira').AsString) = '') Then
               cdsPadrao.FieldByName('idMovFinanceira').AsInteger := FieldByName('idMovFinanceira').AsInteger;
            If (FieldByName('idResultado').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idResultado').AsString) = '') Then
               cdsPadrao.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
            If (FieldByName('idResultado').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idResultado').AsString) = '') Then
               cdsPadrao.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
            If (FieldByName('idRateio').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idRateio').AsString) = '') Then
               cdsPadrao.FieldByName('idRateio').AsInteger := FieldByName('idRateio').AsInteger;
            If (FieldByName('idGerencial').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idGerencial').AsString) = '') Then
               cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
            If (FieldByName('idGerencial').AsInteger > 0) And (trim(cdsPadrao.FieldByName('idGerencial').AsString) = '') Then
               cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
            If (FieldByName('prMulta').AsInteger > 0) And (trim(cdsPadrao.FieldByName('prMulta').AsString) = '') Then
               cdsPadrao.FieldByName('prMulta').AsInteger := FieldByName('prMulta').AsInteger;
            If (FieldByName('prJuros').AsInteger > 0) And (trim(cdsPadrao.FieldByName('prJuros').AsString) = '') Then
               cdsPadrao.FieldByName('prJuros').AsInteger := FieldByName('prJuros').AsInteger;
            If (FieldByName('prDesconto').AsInteger > 0) And (trim(cdsPadrao.FieldByName('prDesconto').AsString) = '') Then
               cdsPadrao.FieldByName('prDesconto').AsInteger := FieldByName('prDesconto').AsInteger;
            //
          End;
  //
  HabilitaRatRes;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');
  //
  SomaParcelas;
  //
  if cdsPadraoidTituloPag.AsInteger > 0 then
    VerificaNfE;
  If (cdsPadrao.State = dsEdit) Then
     cdsPadrao.Post;
  //
end;

procedure TFrmCadTituloPag.actCancelaParcExecute(Sender: TObject);
var
sql : string;
begin
  inherited;
  if (((trim(cdsTituloPagParc.FieldByName('stTituloPagParc').AsString)) = ('ATIVO'))OR
     ((trim(cdsTituloPagParc.FieldByName('stTituloPagParc').AsString)) = ('ABERTO')) ) then
  begin
    if messagedlg('Deseja cancelar a parcela selecionada !', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
{      sql := 'UPDATE TituloPagParc SET stTituloPagParc = ' + QuotedStr('CANCELADO') +
             ' WHERE idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').AsString +
             ' AND idParcela = ' + cdsTituloPagParc.FieldByName('idParcela').AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);}
      if not (cdsTituloPagParc.State in [dsEdit, dsInsert]) then
        cdsTituloPagParc.Edit;
      cdsTituloPagParc.FieldByName('stTituloPagParc').AsString := 'CANCELADO';
{      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;}
      cdsTituloPagParc.Post;
      cdsTituloPagParc.ApplyUpdates(0);
    end;
   end
  else
  begin
    messagedlg('Para Cancelar a parcela e necessário que esteja Ativa/Aberta !',mtInformation, [mbOk], 0);
    exit;
  end;
 end;

procedure TFrmCadTituloPag.actCancelarExecute(Sender: TObject);
begin
  inherited;
  id := '';
end;

procedure TFrmCadTituloPag.actExcluir2Execute(Sender: TObject);
var
  sql : string;
  bNotaFiscal : boolean;
begin
  inherited;
  if messagedlg('Deseja realmente excluir o titulo selecionado!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'MaquinaSeguroFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um seguro de Máquina!'  + #13 +
                    'Deve ser excluído ou cancelado, pela tela de seguro!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'MaquinaManutencaoFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a uma Manutenção de Máquina!'  + #13 +
                    'Deve ser excluído ou cancelado, pela tela de manutenção!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'AbastecimentoFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um Abastecimento!'  + #13 +
                    'Deve ser excluído ou cancelado, pela tela de abastecimento!', mtWarning, [mbok], 0);
      exit;
    end;

    bNotaFiscal := (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').AsString).FieldByName('qtd').AsInteger > 0);

    //como correu tudo ok grava a tabela de movimentações gerais
    sql := 'EXEC spGeraMovGeral ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
           funcao.RetornaValorEField(DBEidTituloPag, 3) + ', ';
    if bNotaFiscal then
      sql := sql + QuotedStr('TPAGF')
    else
      sql := sql + QuotedStr('TPAG');

    sql := sql + ', ' + QuotedStr('E');

    if bNotaFiscal then
      if messagedlg('O Título selecionado está relacionado a uma nota fiscal!'  + #13 +
                    'Excluindo por aqui a nota continuará ativa! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM OrdemFrete WHERE idTituloPagAdto = ' + cdsPadraoidTituloPag.AsString).RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a uma ordem de frete - Adiantamento!'  + #13 +
                    'Excluindo por aqui a ordem voltará a ficar ativa! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM OrdemFrete WHERE idTituloPagSaldo = ' + cdsPadraoidTituloPag.AsString).RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a uma ordem de frete - Saldo!'  + #13 +
                    'Excluindo por aqui a ordem voltará a ficar ativa! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'ContratoCompraFinanc').RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a um Contrato de Compra!'  + #13 +
                    'Excluindo o contrato ficará sem título! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'ContratoCompraComFinanc').RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a Comissão de Contrato de Compra!'  + #13 +
                    'Excluindo as comissões ficarão em aberto! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'ContratoVendaComFinanc').RecordCount > 0 then
      if messagedlg('O Título selecionado está relacionado a Comissão de Contrato de Compra!'  + #13 +
                    'Excluindo as comissões ficarão em aberto! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
        exit;

    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloPag], 'spExcluiTituloPag') then
    begin
      actNovo.Execute;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  end;
  id := '';
end;

procedure TFrmCadTituloPag.actExcluirExecute(Sender: TObject);
var
  sql : String;
  bNotaFiscal : boolean;
begin
    bNotaFiscal := (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').AsString).FieldByName('qtd').AsInteger > 0);

    if bNotaFiscal then
    begin
      messagedlg('O Título selecionado está relacionado a uma nota fiscal!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM OrdemFrete WHERE idTituloPagAdto = ' + cdsPadraoidTituloPag.AsString).RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a uma ordem de frete - Adiantamento!'  + #13 +
                 'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM OrdemFrete WHERE idTituloPagSaldo = ' + cdsPadraoidTituloPag.AsString).RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a uma ordem de frete - Saldo!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'ContratoCompraFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um Contrato de Compra!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'ContratoCompraComFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a uma Comissão de Contrato de Compra!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'ContratoVendaComFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a uma Comissão de Contrato de Venda!'  + #13 +
                    'Deve ser excluído, não pode ser cancelado!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'MaquinaSeguroFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um seguro de Máquina!'  + #13 +
                    'Deve ser excluído ou cancelado, pela tela de seguro!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'MaquinaManutencaoFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a uma Manutenção de Máquina!'  + #13 +
                    'Deve ser excluído ou cancelado, pela tela de manutenção!', mtWarning, [mbok], 0);
      exit;
    end;

    if frmPrincipal.ExecutaSQLRet([DBEidTituloPag], '', 'AbastecimentoFinanc').RecordCount > 0 then
    begin
      messagedlg('O Título selecionado está relacionado a um Abastecimento!'  + #13 +
                    'Deve ser excluído ou cancelado, pela tela de abastecimento!', mtWarning, [mbok], 0);
      exit;
    end;

  inherited;
 if (DBEstTituloPag.Text) = 'CANCELADO' then
 begin
   sql := 'UPDATE TituloPagParc SET stTituloPagParc = '+ quotedstr('CANCELADO')+ 'WHERE idTituloPag = '+ cdsPadrao.FieldByName('idTituloPag').AsString;
   dmPadrao.dbConexao.ExecuteDirect(sql);
   DBEnrTituloPagExit(DBEnrTituloPag);

   //como correu tudo ok grava a tabela de movimentações gerais
   sql := 'EXEC spGeraMovGeral ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
          funcao.RetornaValorEField(DBEidTituloPag, 3) + ', ';
   if bNotaFiscal then
     sql := sql + QuotedStr('TPAGF')
   else
     sql := sql + QuotedStr('TPAG');

   sql := sql + ', ' + QuotedStr('E');
   dmPadrao.dbConexao.ExecuteDirect(sql);
  end;

  id := '';
end;

procedure TFrmCadTituloPag.actNovoExecute(Sender: TObject);
begin
  id := '';
  inherited;
  funcao.SomenteLeitura([DBEidConta], true);
end;

procedure TFrmCadTituloPag.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  id := '';
  actCancelar.Execute;
  Application.CreateForm(TFrmPesTituloPag, FrmPesTituloPag);
  FrmPesTituloPag.idEmpresa := StrToInt(funcao.RetornaValorEField(DBEidEmpresa, 3));
  FrmPesTituloPag.idCadEmpresa := StrToInt(funcao.RetornaValorEField(DBEidCadEmpresa, 3));
  FrmPesTituloPag.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesTituloPag.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (funcao.RetornaValorEField(DBEidEmpresa, 3) <> FrmPesTituloPag.cdsGrid.FieldByName('idEmpresa').AsString) or
         (funcao.RetornaValorEField(DBEidCadEmpresa, 3) <> FrmPesTituloPag.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesTituloPag.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesTituloPag.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idTituloPag').Value := FrmPesTituloPag.cdsGrid.FieldByName('idTituloPag').Value;
      FieldByName('idEmpresa').Value := FrmPesTituloPag.cdsGrid.FieldByName('idEmpresa').Value;
      FieldByName('idCadEmpresa').Value := FrmPesTituloPag.cdsGrid.FieldByName('idCadEmpresa').Value;

      FieldByName('idFornecedor').Value := FrmPesTituloPag.cdsGrid.FieldByName('idFornecedor').Value;
      FieldByName('nrTituloPag').Value := FrmPesTituloPag.cdsGrid.FieldByName('nrTituloPag').Value;
      FieldByName('idDocSerie').Value := FrmPesTituloPag.cdsGrid.FieldByName('idDocSerie').Value;
    end;
  end;
  PagAbas.ActivePageIndex := 0;
  DBEdtEmissao.SetFocus;
//  BuscaChave(tabelas[0], [DBEidEmpresa, DBEidFornecedor, DBEidDocSerie, DBEnrTituloPag]);
//  AbreTitulo;
  excluiPag := true;
  DBEnrTituloPagExit(DBEnrTituloPag);
//  DBEtpDocumento.SetFocus;
end;

procedure TFrmCadTituloPag.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  nrTituloPag, sql, idRateio, idRes, sqlContrato : string;
  bNotaFiscal, bAtualizarRateio: Boolean;
  idContratoFreteFinanc, idAdiantamentoMov : integer;
begin
  PagAbas.ActivePageIndex := 0;
  ReplicaInformacoes;
  //
  //Atualiza a NFe
  if trim(DBEidRateio.Text) = '' then
   idRateio := 'NULL'
  else
   idRateio := funcao.RetornaValorEField(DBEidRateio, 3);

  if trim(DBEidResultado.Text) = '' then
   idRes := 'NULL'
  else
   idRes := funcao.RetornaValorEField(DBEidResultado, 3);
  //
  bNotaFiscal := False;
  bAtualizarRateio := False;
  //
  If (cdsTituloPagParc.IsEmpty) Then
     Begin
       //
       If (MessageDlg('Parcelas não geradas! Gerar agora?', mtconfirmation, [mbyes, mbno], 0) = mrYes) Then
          Begin
            //
            If Not GeraParcelas Then
               Exit;
            //
          End
       Else
          exit;
       //
     End;
  //
  cdsTituloPagRat.Filtered := False;
  cdsTituloPagMov.Filtered := False;
  //
  //Verifica se o valor do titulo está fechando com o valor de Parcelas
  If (cdsPadrao.FieldByName('vlTituloPag').AsCurrency <> vlTotalParcelas) And
     Not(cdsTituloPagParc.IsEmpty)  Then
     raise Exception.Create('Valor das parcelas diferente do valor do título!');
  //
  //Valores obrigatórios
  if trim(DBEdiasVencimento.Text) = '' then
    cdsPadrao.FieldByName('diasVencimento').Value := 0;
  if trim(DBEprJuros.Text) = '' then
    cdsPadrao.FieldByName('prJuros').Value := 0;
  if trim(DBEprMulta.Text) = '' then
    cdsPadrao.FieldByName('prMulta').Value := 0;
  if trim(DBEprDesconto.Text) = '' then
    cdsPadrao.FieldByName('prDesconto').Value := 0;
  nrTituloPag := DBEnrTituloPag.Text;
  //Gera o número do titulo caso não tenha sido digitado e esteja inserindo
  if (cdsPadrao.State in [dsInsert]) and (trim(DBEnrTituloPag.Text) = '') then
  begin
    if trim(DBEidDocSerie.Text) = '' then
    begin
      messagedlg('Você deve informar a série do documento!', mtwarning, [mbok], 0);
      exit;
    end; //fim do if trim(DBEidDocSerie.Text) = '' then
    with cdsLookUp do
    begin
      Active := False;
      sql := 'SELECT max(cast(round(cast(replace(nrtitulopag, '','', ''.'') as float), 0) as int)) nrTituloPag FROM TituloPag WHERE ISNUMERIC(nrTituloPag) > 0 AND idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                     ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) + ' AND idFornecedor = ' + funcao.RetornaValorEField(DBEidFornecedor, 3);
      CommandText := 'SELECT max(cast(round(cast(replace(nrtitulopag, '','', ''.'') as float), 0) as int)) nrTituloPag FROM TituloPag WHERE ISNUMERIC(nrTituloPag) > 0 AND idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                     ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) + ' AND idFornecedor = ' + funcao.RetornaValorEField(DBEidFornecedor, 3);
      Active := True;
      if (FieldByName('nrTituloPag').IsNull) or (FieldByName('nrTituloPag').value = 0) then
         cdsPadrao.FieldByName('nrTituloPag').Value := 1
      else
         cdsPadrao.FieldByName('nrTituloPag').Value := FieldByName('nrTituloPag').value + 1;
      Active := False;
    end; //fim do with cdsLookUp do
  end; //fim do if (cdsPadrao in [dsInsert]) and (trim(DBEnrTituloPag.Text) = '') then

  //********************************************************************************//
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  //
  If ((cdsTituloPagRat.IsEmpty) and (cdsPadrao.State = dsInsert)) Then
     Begin
       //
       If frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL' Then
          Begin
            //
            ShowMessage('É necessário lançar o rateio antes de salvar esse título.');
            Exit;
            //
          End
       Else
          GeraRateioParcela(0);
       //
     End;
  //
  //  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
  //  dmPadrao.dbConexao.TransactionsSupported
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  //
  Try
    //
    bNotaFiscal := (dsPadrao.State = dsEdit) And
                   (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').AsString).FieldByName('qtd').AsInteger > 0);
    //
    If (bNotaFiscal) Then
       Begin
         //
         // Verificar registros de Rateio
         //
         With frmPrincipal.ExecutaSQLRet([], '', 'select idEmpresa, idCadEmpresa, idDocSerie, idFornecedor, idCadFornecedor, idNFe from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').AsString) do
              Begin
                //
                Sql :=  'select idResultado, idGerencial, prRateio, vlRateio ' +
                        'from nferateio ' +
                        'where idEmpresa = ' + FieldByName('idEmpresa').AsString +
                        '  and idCadEmpresa = ' + FieldByName('idCadEmpresa').AsString +
                        '  and idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').AsString) +
                        '  and idFornecedor = ' + FieldByName('idFornecedor').AsString +
                        '  and idCadFornecedor = ' + FieldByName('idCadFornecedor').AsString +
                        '  and idNFe = ' + FieldByName('idNFe').AsString;
                //
                With frmPrincipal.ExecutaSQLRet([], '', Sql) Do
                     Begin
                       //
                       // Verificando primeiramente o Numero de Registro nas duas Tabelas
                       If (cdsTituloRateio.RecordCount <> RecordCount) Then
                          bAtualizarRateio := True
                       Else
                          Begin
                            //
                            First;
                            cdsTituloRateio.First;
                            //
                            While Not Eof Do
                                  Begin
                                    //
                                    If Not(cdsTituloRateio.Locate('idResultado;idGerencial',
                                                                  VarArrayOf([FieldByName('idResultado').asInteger,
                                                                              FieldByName('idGerencial').asInteger]),
                                                                  [])) Then
                                       Begin
                                         //
                                         //ShowMessage(Format('Não encontrei o registro : %d, %d, %s, %s', [FieldByName('idResultado').asInteger, FieldByName('idGerencial').asInteger, FieldByName('prRateio').Text, FieldByName('vlRateio').Text]));
                                         //
                                         bAtualizarRateio := True;
                                         //
                                       End
                                    Else
                                       Begin
                                         //
                                         If ((RoundTo(cdsTituloRateio.FieldByName('prRateio').asFloat, -3) <> RoundTo(FieldByName('prRateio').asFloat, -3)) Or
                                             (RoundTo(cdsTituloRateio.FieldByName('vlRateio').asFloat, -3) <> RoundTo(FieldByName('vlRateio').asFloat, -3))) Then
                                            Begin
                                              //
                                              //ShowMessage(Format('Valores diferentes no registro : %s <> %s, %s <> %s', [cdsTituloRateio.FieldByName('prRateio').Text, FieldByName('prRateio').Text, cdsTituloRateio.FieldByName('vlRateio').Text, FieldByName('vlRateio').Text]));
                                              //
                                              bAtualizarRateio := True;
                                              //
                                            End;
                                         //
                                       End;
                                    //
                                    Next;
                                    //
                                  End;
                            //
                          End;
                     //
                     End;
                //
                If (bAtualizarRateio) Then
                   Begin
                     //
                    { cdsLookUp.Active:=false;
                     //
                     // Excluir Rateio atual da Nota Fiscal
                     //
                     sql := ' DELETE FROM NFeRateio ' +
                            ' WHERE idEmpresa = ' + FieldByName('idEmpresa').Text +
                            '   AND idCadEmpresa = ' + FieldByName('idCadEmpresa').Text +
                            '   AND idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').Text) +
                            '   AND idFornecedor = ' + FieldByName('idFornecedor').Text +
                            '   AND idCadFornecedor = ' + FieldByName('idCadFornecedor').Text +
                            '   AND idNFe = ' + FieldByName('idNFe').Text;
                     //
                     //ShowMessage(Sql);
                     //
                     cdsLookUp.CommandText := sql;
                     cdsLookUp.Execute;
                     //
                     sql := ' UPDATE NFe SET idRateio = ' + idRateio + ', idResultado = ' + idRes +
                            ' WHERE idEmpresa = ' + FieldByName('idEmpresa').Text +
                            '   AND idCadEmpresa = ' + FieldByName('idCadEmpresa').Text +
                            '   AND idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').Text) +
                            '   AND idFornecedor = ' + FieldByName('idFornecedor').Text +
                            '   AND idCadFornecedor = ' + FieldByName('idCadFornecedor').Text +
                            '   AND idNFe = ' + FieldByName('idNFe').Text;
                     dmPadrao.dbConexao.ExecuteDirect(sql);

                     // Inserir o Rateio atualizado
                     cdsTituloRateio.First;
                     While Not cdsTituloRateio.Eof Do
                           Begin
                             //
                             Sql := Format('Insert Into NFeRateio (idEmpresa, idCadEmpresa, idDocSerie, idFornecedor, idCadFornecedor, idNfE, idResultado, idGerencial, prRateio, vlRateio)' +
                                           'Values (%d, %d, %s, %d, %d, %d, %d, %d, %s, %s)',
                                           [FieldByName('idEmpresa').AsInteger,
                                            FieldByName('idCadEmpresa').AsInteger,
                                            QuotedStr(FieldByName('idDocSerie').Text),
                                            FieldByName('idFornecedor').AsInteger,
                                            FieldByName('idCadFornecedor').AsInteger,
                                            FieldByName('idNFe').ASInteger,
                                            cdsTituloRateio.FieldByName('idResultado').AsInteger,
                                            cdsTituloRateio.FieldByName('idGerencial').AsInteger,
                                            StringReplace(cdsTituloRateio.FieldByName('prRateio').Text, ',', '.', [rfReplaceAll]),
                                            StringReplace(cdsTituloRateio.FieldByName('vlRateio').AsString, ',', '.', [rfReplaceAll])]);
                             //
                             //ShowMessage(Sql);
                             //
                             cdsLookup.CommandText := Sql;
                             cdsLookup.Execute;
                             //
                             cdsTituloRateio.Next;
                             //
                           End;
                     //      }
                   End;
                //
              End;
         //
         //
         cdsTituloPagRat.CancelUpdates;
         //
       End;
    //
    GravaChave(1, '', nil);
    inherited;
    // Propagar alterações no titulo provindo de uma nota fiscal
    If (bNotaFiscal) Then
       Begin
         //
         {With frmPrincipal.ExecutaSQLRet([], '', 'select idEmpresa, idCadEmpresa, idDocSerie, idFornecedor, idCadFornecedor, idNFe from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').Text) Do
              Begin
                //
                cdsLookUp.Active:=false;
                //
                // Alterando os dados na Nota Fiscal
                sql := ' UPDATE NFe SET idGerencial = ' + cdsPadrao.FieldByName('idGerencial').Text +
                       ' , idResultado = ' + idRes + ', idRateio = ' + idRateio +
                       ' WHERE idEmpresa = ' + FieldByName('idEmpresa').Text +
                       '   AND idCadEmpresa = ' + FieldByName('idCadEmpresa').Text +
                       '   AND idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').Text) +
                       '   AND idFornecedor = ' + FieldByName('idFornecedor').Text +
                       '   AND idCadFornecedor = ' + FieldByName('idCadFornecedor').Text +
                       '   AND idNFe = ' + FieldByName('idNFe').Text +
                       '   AND idGerencial <> ' + cdsPadrao.FieldByName('idGerencial').Text;
                //
                cdsLookUp.CommandText:=sql;
                cdsLookUp.Execute;
                //
                sql := ' UPDATE NFe SET idResultado = ' + funcao.IIf(cdsPadrao.FieldByName('idResultado').isNull, 'NULL', cdsPadrao.FieldByName('idResultado').Text) +
                       ' WHERE idEmpresa = ' + FieldByName('idEmpresa').Text +
                       '   AND idCadEmpresa = ' + FieldByName('idCadEmpresa').Text +
                       '   AND idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').Text) +
                       '   AND idFornecedor = ' + FieldByName('idFornecedor').Text +
                       '   AND idCadFornecedor = ' + FieldByName('idCadFornecedor').Text +
                       '   AND idNFe = ' + FieldByName('idNFe').Text +
                       '   AND idResultado <> ' + funcao.IIf(cdsPadrao.FieldByName('idResultado').isNull, 'NULL', cdsPadrao.FieldByName('idResultado').Text);
                //
                cdsLookUp.CommandText:=sql;
                cdsLookUp.Execute;
                //
                sql := ' UPDATE NFe SET idRateio    = ' + funcao.IIf(cdsPadrao.FieldByName('idRateio').IsNull, 'NULL', cdsPadrao.FieldByName('idRateio').Text) +
                       ' WHERE idEmpresa = ' + FieldByName('idEmpresa').Text +
                       '   AND idCadEmpresa = ' + FieldByName('idCadEmpresa').Text +
                       '   AND idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').Text) +
                       '   AND idFornecedor = ' + FieldByName('idFornecedor').Text +
                       '   AND idCadFornecedor = ' + FieldByName('idCadFornecedor').Text +
                       '   AND idNFe = ' + FieldByName('idNFe').Text +
                       '   AND idRateio <> ' + funcao.IIf(cdsPadrao.FieldByName('idRateio').IsNull, 'NULL', cdsPadrao.FieldByName('idRateio').Text);
                //
                cdsLookUp.CommandText:=sql;
                cdsLookUp.Execute;
                //
                sql := ' UPDATE NFe SET idSafra    = ' + funcao.IIf(cdsPadrao.FieldByName('idSafra').IsNull, 'NULL', cdsPadrao.FieldByName('idSafra').Text) +
                       ' WHERE idEmpresa = ' + FieldByName('idEmpresa').Text +
                       '   AND idCadEmpresa = ' + FieldByName('idCadEmpresa').Text +
                       '   AND idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').Text) +
                       '   AND idFornecedor = ' + FieldByName('idFornecedor').Text +
                       '   AND idCadFornecedor = ' + FieldByName('idCadFornecedor').Text +
                       '   AND idNFe = ' + FieldByName('idNFe').Text +
                       '   AND idSafra <> ' + funcao.IIf(cdsPadrao.FieldByName('idSafra').IsNull, 'NULL', cdsPadrao.FieldByName('idSafra').Text);
                //
                cdsLookUp.CommandText:=sql;
                cdsLookUp.Execute;
                //
              End;    }
         //
       End;
    //
  Except
    On E: Exception Do
       Begin
         //
         MessageDlg(E.Message, mterror, [mbok], E.HelpContext);
         frmPrincipal.erro := 1;
         //
       End;
  End;
  //
  Screen.Cursor := crDefault;
  //
  If frmPrincipal.erro = 0 Then
  begin
     //como correu tudo ok grava a tabela de movimentações gerais
     sql := 'EXEC spGeraMovGeral ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
            funcao.RetornaValorEField(DBEidTituloPag, 3) + ', ';
     if bNotaFiscal then
       sql := sql + QuotedStr('TPAGF')
     else
       sql := sql + QuotedStr('TPAG');

     sql := sql + ', ' + QuotedStr('I');

     dmPadrao.dbConexao.CommitFreeAndNil(t);
     DBEnrTituloPagExit(DBEnrTituloPag);
     dmPadrao.dbConexao.ExecuteDirect(sql);
     if idContratoFrete > 0 then
     begin
       sql := 'SELECT MAX(idContratoFreteFinanc) AS id FROM ContratoFreteFinanc WHERE idEmpresa = ' +
                funcao.RetornaValorEField(DBEidEmpresa, 3) + ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                ' AND idContratoFrete = ' + IntToStr(idContratoFrete);
       with frmPrincipal.ExecutaSQLRet([], '', sql) do
       begin
         if FieldByName('id').IsNull then
           idContratoFreteFinanc := 1
         else
           idContratoFreteFinanc := FieldByName('id').AsInteger + 1;
       end;
       sqlContrato := 'INSERT INTO ContratoFreteFinanc (idEmpresa, idCadEmpresa, idContratoFrete, idContratoFreteFinanc, idTituloPag) ' +
                      ' VALUES(' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' + IntToStr(idContratoFrete) +
                      ', ' + IntToStr(idContratoFreteFinanc) + ', ' + funcao.RetornaValorEField(DBEidTituloPag, 3) + ')';
       dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
       FrmManutencaoFrete.GeraFinRomaneio('TPAG', cdsPadrao.FieldByName('idTituloPag').AsString);
     end
     else
     if idContratoCompra <> '' then
     begin
       sqlContrato := 'INSERT INTO ContratoCompraFinanc (idEmpresa, idCadEmpresa, idFornecedor, idCadFornecedor, idContratoCompra, idTituloPag) ' +
                      ' VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + DBEidFornecedor.Text + ', ' +
                      FrmCadContratoCompra.cdsPadraoidCadFornecedor.AsString + ', ' + QuotedStr(idContratoCompra) +
                      ', ' + DBEidTituloPag.Text + ')';
       dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
       FrmCadContratoCompra.DBEidContratoCompraExit(FrmCadContratoCompra.DBEidContratoCompra);
     end
     else
       if idRomaneio > 0 then
       begin
         sqlContrato := 'INSERT INTO RomaneioCompraFinanc (idEmpresa, idCadEmpresa, idRomaneio, idFornecedor, idCadFornecedor, idContratoCompra, ' +
                        ' idTituloPag) VALUES(' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + IntToStr(idRomaneio) + ', ' +
                        DBEidFornecedor.Text + ', ' + FrmCadRomaneio.cdsCompraidCadFornecedor.AsString  + ', ' +
                        ContratoRomaneio +  ', ' + DBEidTituloPag.Text + ')';
         dmPadrao.dbConexao.ExecuteDirect(sqlContrato);
       end;

     if idTitulo <> '' then
     begin
       sql := 'UPDATE TituloPag SET stTituloPag = ' + QuotedStr('SUBSTITUIDO') +
              ' WHERE idTituloPag IN (' + idTitulo + ')';
       dmPadrao.dbConexao.ExecuteDirect(sql);
       sql := 'UPDATE TituloPagParc SET stTituloPagParc = ' + QuotedStr('SUBSTITUIDO') +
              ' WHERE idTituloPag IN (' + idTitulo + ')';
       dmPadrao.dbConexao.ExecuteDirect(sql);
     end;
     if idAdiantamento > 0 then
     begin
       idAdiantamentoMov := Frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idAdiantamentoMov) idAdiantamentoMov FROM AdiantamentoMov WHERE idAdiantamento = ' + IntToStr(idAdiantamento)).FieldByName('idAdiantamentoMov').AsInteger+1;
       sql := 'INSERT INTO AdiantamentoMov (idAdiantamento, idAdiantamentoMov, dtAdiantamentoMov, ' +
              ' idMovFinanceira, vlAdiantamentoMov, fator, descAdiantamentoMov, idTituloPagMov ' +
              ' ) VALUES (' + IntToStr(idAdiantamento) + ', ' + IntToStr(idAdiantamentoMov) + ', ' +
              QuotedStr(DateToStr(date)) + ', ' + IntToStr(idMovFinanceira) + ', ' + QuotedStr(cdsPadrao.fieldbyName('vlTituloPag').AsString) + ', ' +
              '-1' + ', ' + QuotedStr('SALDO RESTANTE DE ADIANTAMENTO CONVERTIDO NO TITULO ' + cdsPadrao.FieldByname('nrTituloPag').AsString) +
              ', ' + cdsTituloPagMovidTituloPagMov.AsString + ')';
       dmPadrao.dbConexao.ExecuteDirect(sql);
       sql := 'EXEC spVerStatusAdiantamento ' + IntToStr(idAdiantamento) + ', ' + QuotedStr('OUT');
       dmPadrao.dbConexao.ExecuteDirect(sql);
       FrmCadAdiantamento.DBEidAdiantamento.SetFocus;
     end;
  end
  Else
     Begin

       dmPadrao.dbConexao.RollbackFreeAndNil(t);
       //
       If Not (cdsPadrao.State in [dsEdit, dsInsert]) Then
          cdsPadrao.Edit;
       //
       cdsPadrao.FieldByName('nrTituloPag').AsString := nrTituloPag;
       //
     End;
  //
end;

procedure TFrmCadTituloPag.AtualizaResultado;
begin
  //preenche a tabela que irá fazer o lookup no grid do resultado
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
  cdsResultado.Active := false;
  cdsResultado.Active := true;
end;

procedure TFrmCadTituloPag.BtnAlterarMovClick(Sender: TObject);
begin
  inherited;
  if VerMovEstornado then
    exit;
  Application.CreateForm(TFrmAlteraPag, FrmAlteraPag);
  with FrmAlteraPag do
  begin
    vlAnterior := cdsTituloPagMov.FieldByName('vlTituloPagMov').AsString;
    idEmpresa := cdsTituloPagMov.FieldByName('idEmpresa').AsInteger;
    idCadEmpresa := cdsTituloPagMov.FieldByName('idCadEmpresa').AsInteger;    
    cdsMov.FieldByName('idTituloPagMov').Value := cdsTituloPagMov.FieldByName('idTituloPagMov').Value;
    cdsMov.FieldByName('idTituloPag').Value := cdsTituloPagMov.FieldByName('idTituloPag').Value;
    cdsMov.FieldByName('idMovFinanceira').Value := cdsTituloPagMov.FieldByName('idMovFinanceira').Value;
    cdsMov.FieldByName('dtTituloPagMov').Value := cdsTituloPagMov.FieldByName('dtTituloPagMov').Value;
    cdsMov.FieldByName('vlTituloPagMov').Value := cdsTituloPagMov.FieldByName('vlTituloPagMov').Value;
    ShowModal;
  end;
  GravaLog('Alteração de Movimentos: Titulos a Pagar');
  DBEnrTituloPagExit(DBEnrTituloPag);
end;

procedure TFrmCadTituloPag.BtnExcluirMovClick
(Sender: TObject);
begin
  inherited;
  if VerMovEstornado then
    exit;
  if messagedlg('Todos os dados relacionados serão também excluídos! ' + #13 +
                'Esse procedimento irá excluir todos os demais pagamentos ou lançamentos relacionados!' + #13 +
                'Deseja realmente excluir?', mtconfirmation, [mbyes, mbno], 0) = mryes  then
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloPagMov], 'spExcluiTituloPagMov') then
    begin
      PagAbas.ActivePageIndex := 0;
      //funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloPag], 'spVerStatusTPag');
      excluiPag := true;
      DBEnrTituloPagExit(DBEnrTituloPag);
      //Condição para que ocorra a verificação
    end;
    GravaLog('Exclusão de Movimentos: Titulos a Pagar')
 end;

procedure TFrmCadTituloPag.btnGerarClick(Sender: TObject);
begin
  GeraRateioTitulo;
end;

procedure TFrmCadTituloPag.BtnSalvarParcClick(Sender: TObject);
var
  recalc : boolean;
//  bReg: Pointer;
  idParc : integer;
begin
  inherited;
  if ((cdsTituloPagParc.State = dsEdit) or ((Sender as TBitBtn).Name = 'BtnExcluirParc')) and (cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'LIQUIDADO') then
  begin
    messagedlg('Parcela com movimentações não pode ser alterada!', mtwarning, [mbok], 0);
    exit;
  end;

  if (Sender as TBitBtn).Name = 'BtnNovoParc' then
  begin
    cdsTituloPagParc.IndexFieldNames := 'idParcela';
    cdsTituloPagParc.Last;
    idParc := cdsTituloPagParc.FieldByName('idParcela').AsInteger;
    idParc := idParc + 1;
  end;
  //
  recalc := false;
  if ((Sender as TBitBtn).Name <> 'BtnNovoParc') and ((Sender as TBitBtn).Name <> 'BtnCancelarParc') then
    if (parcelaDif) or ((Sender as TBitBtn).Name = 'BtnExcluirParc') then
    begin
//      if messagedlg('O Rateio irá ser recalculado! Deseja prosseguir?', mtinformation, [mbyes, mbno], 0) = mryes then
        recalc := true;
//      else
//        exit;
      if (Sender as TBitBtn).Name = 'BtnExcluirParc' then
      begin
        cdsTituloPagMov.Delete;
        cdsTituloPagRat.Delete;
      end;
    end;

  funcao.GravaSec(chave, cdsTituloPagParc, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc, (Sender as TCBitBtn), 'idParcela');
  if (Sender as TBitBtn).Name <> 'BtnNovoParc' then
  begin
    SomaParcelas;

    //Verifica se teve alteração em relação ao título
    if vlTotalParcelas <> cdsPadrao.FieldByName('vlTituloPag').AsCurrency then
      if messagedlg('Valor das parcelas diferente do valor do título!' + #13 +
                    'Deseja ajustar o valor do título?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        if not (cdsPadrao.State in [dsEdit, dsInsert]) then
          cdsPadrao.Edit;

        cdsPadrao.FieldByName('vlTituloPag').AsCurrency := vlTotalParcelas;

        //Ajusta novamente a diferença
        LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloPag').AsCurrency-vlTotalParcelas), 6, '');
      end;
  end
  else
    cdsTituloPagParc.FieldByName('idParcela').AsInteger := idParc;
  if recalc then
  begin
    //
    GeraRateioParcela(0);
    GeraMovimentacao;
    //
  end;

  //para não dar erro no applyupdates geral
  if (cdsPadrao.State = dsEdit) then
  begin
    if ((Sender as TBitBtn).Name = 'BtnExcluirParc') then
    begin
      cdsTituloPagMov.ApplyUpdates(0);
      cdsTituloPagRat.ApplyUpdates(0);
      cdsTituloPagParc.ApplyUpdates(0);
    end
    else
      if ((Sender as TBitBtn).Name = 'BtnSalvarParc') then
      begin
        cdsTituloPagParc.ApplyUpdates(0);
        cdsTituloPagRat.ApplyUpdates(0);
        cdsTituloPagMov.ApplyUpdates(0);
      end;
  end;

  //
  DBEvlParcela.SetFocus;
  //
end;

procedure TFrmCadTituloPag.BtnSalvarRatClick(Sender: TObject);
var
  vlTitulo, vlRateio, prRateio : Double;
begin
  inherited;
  if (Sender as TBitBtn).Name = 'BtnSalvarRat' then
    if cdsTituloRateio.FieldByName('vlRateio').Value >  cdsPadrao.FieldByName('vlTituloPag').Value then
    begin
      messagedlg('O valor do rateio não pode ser maior que o titulo!', mtwarning, [mbok], 0);
      exit;
    end;
  funcao.GravaSec(chave, cdsTituloPagRat, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat, (Sender as TCBitBtn), '');
  if ((Sender as TBitBtn).Name <> 'BtnNovoRat') and ((Sender as TBitBtn).Name <> 'BtnCancelarRat') then
  begin
//    GeraRateioTitulo;
//    GeraRateioParcela(0);
    SomaRateio; //rateio
    SomaRateioTit;
    FiltraRateio;
  end;
  DBEidGerencialRT.Clear;
  DBEidResultadoR.SetFocus;
end;

procedure TFrmCadTituloPag.BtnSalvarRatTitClick(Sender: TObject);
begin
  inherited;
  Rateio := True;
  If ((Sender as TBitBtn).Name = 'BtnSalvarRatTit') Then
    If (cdsTituloRateio.FieldByName('vlRateio').Value >  cdsPadrao.FieldByName('vlTituloPag').Value) Then
    Begin
      MessageDlg('O valor do rateio não pode ser maior que o titulo!', mtWarning, [mbOk], 0);
      Exit;
    End;
  funcao.GravaSec(chave, cdsTituloRateio, BtnSalvarRatTit, BtnCancelarRatTit, BtnExcluirRatTit, BtnNovoRatTit, (Sender as TCBitBtn), '');
  If ((Sender as TBitBtn).Name <> 'BtnNovoRatTit') And
     ((Sender as TBitBtn).Name <> 'BtnCancelarRatTit') Then
  Begin
    GeraRateioParcela(1);
    SomaRateioTit; //rateio
    FiltraRateio;
    SomaRateio;
  End;
  DBEidResultadoRT.SetFocus;
  Rateio := False;
end;

procedure TFrmCadTituloPag.BtnStatusClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  sql := 'EXEC spVerStatusTPag ' + funcao.RetornaValorEField(DBEidTituloPag, 3);
  dmPadrao.dbConexao.ExecuteDirect(sql);
//  DBEnrTituloPagExit(DBEnrTituloPag);
end;

procedure TFrmCadTituloPag.GridParcelasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) Then
     DBEidParcela.SetFocus;
  //
end;

procedure TFrmCadTituloPag.cdsEmpresaidEmpresaValidate(Sender: TField);
begin
  inherited;
  if trim(cdsEmpresaidEmpresa.AsString) <> '' then
    AtualizaResultado;
end;

procedure TFrmCadTituloPag.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
  begin
    cdsPadrao.FieldByName('idEmpresa').AsString := funcao.RetornaValorEField(DBEidEmpresa, 3);
    cdsPadrao.FieldByName('idCadEmpresa').AsString := funcao.RetornaValorEField(DBEidCadEmpresa, 3);
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 2;       
    cdsPadrao.FieldByName('incMes').AsString := 'N';
    cdsPadrao.FieldByName('idFornecedor').AsString := idFornecedor;
    cdsPadrao.FieldByName('idDocSerie').AsString := idDocSerie;
    cdsTituloPagMov.Filtered := false;
    cdsTituloPagRat.Filtered := false;
    cdsPadrao.FieldByName('dtEmissao').AsDateTime := date;

  end;
end;

procedure TFrmCadTituloPag.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if ((cdsPadrao.FieldByName('stTituloPag').AsString <> 'ATIVO') AND (cdsPadrao.FieldByName('stTituloPag').AsString <> 'ABERTO')) then
  begin
    funcao.SomenteLeitura([DBEvlTituloPag, DBEdtEmissao, DBEqtParcelas, DBEdtVencimentoIni,
                           DBCKincMes, DBEdiasVencimento, DBEidIndice,
                           DBEidParcela, DBEvlParcela, DBEdtVencimento], true);
    GrpBtnParcelas.Enabled := false;
  end
  else
  begin
    funcao.SomenteLeitura([DBEvlTituloPag, DBEdtEmissao, DBEqtParcelas, DBEdtVencimentoIni,
                           DBCKincMes, DBEdiasVencimento, DBEidIndice,
                           DBEidParcela, DBEvlParcela, DBEdtVencimento], false);
    GrpBtnParcelas.Enabled := true;
  end;
end;

procedure TFrmCadTituloPag.cdsTituloPagMovAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := funcao.RetornaValorEField(DBEidEmpresa, 3);
  DataSet.FieldByName('idCadEmpresa').AsString := funcao.RetornaValorEField(DBEidCadEmpresa, 3);
  DataSet.FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value ;
end;

procedure TFrmCadTituloPag.cdsTituloPagMovAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BtnAlterarMov.Enabled := ((DataSet.FieldByName('idMovFinanceira').AsInteger in [11,12,13])
                            and (ValidaPermissao('editar')));
  BtnExcluirMov.Enabled := ((DataSet.FieldByName('idMovFinanceira').AsInteger <> 2)
                            and (DataSet.FieldByName('idMovFinanceira').AsInteger > 0)
                            and (DataSet.FieldByName('idMovFinanceira').AsInteger <> 27)
                            and ValidaPermissao('excluir'));

end;

procedure TFrmCadTituloPag.cdsTituloPagParcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State = dsInsert then
  begin
    DataSet.FieldByName('stTituloPagParc').AsString := 'ATIVO';
    if trim(cdsPadrao.FieldByName('idTituloPag').AsString) = '' then
      cdsTituloPagParc.FieldByName('idTituloPag').Value := 0
    else
      cdsTituloPagParc.FieldByName('idTituloPag').Value := cdsPadrao.FieldByName('idTituloPag').Value;
  end;

  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadTituloPag.cdsTituloPagParcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BtnParcCancela.Enabled := ((cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ABERTO') OR
  (cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO'));
end;

procedure TFrmCadTituloPag.cdsTituloPagRatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := funcao.RetornaValorEField(DBEidEmpresa, 3);
  DataSet.FieldByName('idCadEmpresa').AsString := funcao.RetornaValorEField(DBEidCadEmpresa, 3);
  DataSet.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value ;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

end;

constructor TFrmCadTituloPag.create(Formulario: TComponent; Parametro: array of String);
begin
  inherited create(formulario);
  id := '';
  idComissao := '';
  idContratoFrete := 0;
  idTitulo := '';
  idContratoCompra := '';
  idRomaneio := 0;


  if high(Parametro) >= 0  then
  begin
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
        if Parametro[0] = 'CONTRATO' then
        begin
          if Parametro[1] <> '' then
            idContratoCompra := Parametro[1];
        end
        else
          if Parametro[0] = 'ROMANEIO' then
          begin
            if Parametro[1] <> '' then
              idRomaneio := StrToInt(Parametro[1]);
            if Parametro[2] <> '' then
              ContratoRomaneio := Parametro[2];
          end
            else
              id := Parametro[0];
  end;
end;

procedure TFrmCadTituloPag.DBCKincMesExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdiasVencimento], cdsPadrao.FieldByName('incMes').AsString = 'S');
  if (cdsPadrao.FieldByName('incMes').AsString = 'N') then
    DBEdiasVencimento.SetFocus
  else
    DBEprMulta.SetFocus;
end;

procedure TFrmCadTituloPag.DBEdtEmissaoEnter(Sender: TObject);
begin
  inherited;
 if excluiPag then
  begin
//    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloPag], 'spVerStatusTPag');
    excluiPag := false;
  end;
end;

procedure TFrmCadTituloPag.DBEdtVencimentoDblClick(Sender: TObject);
begin
  inherited;
  if not Nota then
  begin
    if ( (trim(cdsTituloPagParc.FieldByName('stTituloPagParc').AsString) <> 'CANCELADO') AND (trim(cdsTituloPagParc.FieldByName('stTituloPagParc').AsString) <> 'LIQUIDADO')) then
    begin
      if messagedlg('Deseja Alterar a data da Parcela ?', mtwarning, [mbyes, mbno], 0) = mryes then
      begin
        Application.CreateForm(TFrmAlteraDtVenc, FrmAlteraDtVenc);
        FrmAlteraDtVenc.idTituloPag := cdsTituloPagParc.FieldByName('idTituloPag').AsString;
        FrmAlteraDtVenc.idParcela := cdsTituloPagParc.FieldByName('idParcela').AsString;
        FrmAlteraDtVenc.ShowModal;
        cdsTituloPagParc.Refresh;
      end;
    end;
  end;
end;

procedure TFrmCadTituloPag.DBEidFornecedorExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidFornecedor.Text) = '' then
    exit;
end;

procedure TFrmCadTituloPag.DBEidGerencialEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidGerencial.Text;
end;

procedure TFrmCadTituloPag.DBEidParcelaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsTituloPagParc, [DBEidParcela]);
end;

procedure TFrmCadTituloPag.DBEidPortadorEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidPortador.Text;
end;

procedure TFrmCadTituloPag.DBEidPortadorExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEidPortador.Text then
  begin
    if trim(LookHabilita.Caption) = 'S' then
    begin
      funcao.SomenteLeitura([DBEidConta], false);
      if trim(DBEidFornecedor.Text) <> '' then
        with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadGeralConta WHERE idCadGeral = ' +
                                                funcao.RetornaValorEField(DBEidFornecedor, 3) + ' AND padrao = ' + QuotedStr('S')) do
        begin
          if not IsEmpty then
            cdsPadraoidConta.AsInteger := FieldByName('idConta').AsInteger;
        end;
    end
    else
    begin
      cdsPadraoidConta.Clear;
      funcao.SomenteLeitura([DBEidConta], true);
    end;
  end;
end;

procedure TFrmCadTituloPag.DBEidRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidRateio.Text;
end;

procedure TFrmCadTituloPag.DBEidResultadoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidResultado.Text;
end;

procedure TFrmCadTituloPag.DBEidResultadoExit(Sender: TObject);
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
    if not cdsTituloPagRat.IsEmpty then
      if messagedlg('O Rateio deverá ser recalculado para os novos valores! ' + #13 +
                    ' Deseja recalcular?', mtwarning, [mbyes, mbno], 0) = mryes then
        GeraRateioParcela(0);
end;

procedure TFrmCadTituloPag.DBEidResultadoRExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsTituloPagRat, [DBEidParcelaR, DBEidResultadoR]);
end;

procedure TFrmCadTituloPag.DBEidResultadoRTExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsTituloRateio, [DBEidGerencialRT ,DBEidResultadoRT]);
end;

procedure TFrmCadTituloPag.DBEnrTituloPagExit(Sender: TObject);
begin
  inherited;
  AbreTitulo;
end;

procedure TFrmCadTituloPag.DBEnrTituloPagKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadTituloPag.DBEprRateioEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEprRateio.Text;
end;

procedure TFrmCadTituloPag.DBEprRateioExit(Sender: TObject);
begin
  inherited;
  vlRatTemp :=  cdsTituloRateiovlRateio.AsFloat; //funcao.TiraPontoValor(DBEvlRateioRT.Text);
  //
  If (vlAnterior <> (Sender as TCDBEdit).Text) Then
  Begin
    //Campos do rateio no valor da parcela
    If (Sender as TCDBEdit).Name = 'DBEprRateio' Then
      cdsTituloPagRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsTituloPagParc.FieldByName('vlParcela').Value *
                                                       cdsTituloPagRat.FieldByName('prRateio').Value)/100);
    If (Sender as TCDBEdit).Name = 'DBEvlRateio' Then
      cdsTituloPagRat.FieldByName('prRateio').Value := RoundTo(((cdsTituloPagRat.FieldByName('vlRateio').Value /
                     cdsTituloPagParc.FieldByName('vlParcela').Value) * 100), -3);
  End;
end;

procedure TFrmCadTituloPag.DBEprRateioRTEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCDBEdit).Text;
end;

procedure TFrmCadTituloPag.DBEprRateioRTExit(Sender: TObject);
begin
  inherited;
//  vlRatTemp :=  cdsTituloRateiovlRateio.AsFloat; //funcao.TiraPontoValor(DBEvlRateioRT.Text);

  If (vlAnterior <> (Sender as TCDBEdit).Text) And
     (cdsTituloRateio.State in dsEditModes) Then
     Begin
       //Campos do rateio no valor do titulo
       If (Sender as TCDBEdit).Name = 'DBEprRateioRT' Then
          cdsTituloRateio.FieldByName('vlRateio').Value :=
            funcao.ArredondaMoeda((cdsPadrao.FieldByName('vlTituloPag').Value *
                               cdsTituloRateio.FieldByName('prRateio').Value)/100);
       //
       If (Sender as TCDBEdit).Name = 'DBEvlRateioRT' Then
          cdsTituloRateio.FieldByName('prRateio').Value :=
          RoundTo(((cdsTituloRateio.FieldByName('vlRateio').Value /
                   cdsPadrao.FieldByName('vlTituloPag').Value) * 100), -3);
       //Campos do rateio no valor da parcela
       If (Sender as TCDBEdit).Name = 'DBEprRateio' Then
          cdsTituloPagRat.FieldByName('vlRateio').Value :=
             funcao.ArredondaMoeda((cdsTituloPagParc.FieldByName('vlParcela').Value *
                                    cdsTituloPagRat.FieldByName('prRateio').Value)/100);
       //
       If (Sender as TCDBEdit).Name = 'DBEvlRateio' Then
          cdsTituloPagRat.FieldByName('prRateio').Value :=
             RoundTo(((cdsTituloPagRat.FieldByName('vlRateio').Value /
                     cdsTituloPagParc.FieldByName('vlParcela').Value) * 100), -3);
       //
     End;
end;

procedure TFrmCadTituloPag.DBEtpDocumentoEnter(Sender: TObject);
begin
  inherited;
  if excluiPag then
  begin
//    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidTituloPag], 'spVerStatusTPag');
    excluiPag := false;
  end;
end;

procedure TFrmCadTituloPag.DBEvlParcelaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEvlParcela.Text;
end;

procedure TFrmCadTituloPag.DBEvlParcelaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim(DBEvlParcela.Text) then
    parcelaDif := true
  else
    parcelaDif := false;
end;

procedure TFrmCadTituloPag.DBEvlTituloPagEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString; 
end;

procedure TFrmCadTituloPag.DBEvlTituloPagExit(Sender: TObject);
begin
  inherited;
  //rotina que alguns campos utilizarão onde se houver mudanças deverá ser obrigatóriamente feito o recalculo das parcelas
  //não deu certo usar o oldvalue, pois enquanto o campo não for salvo ele mantém o valor antigo... ai fica passando e voltando
//  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).OldValue <> cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).Value then
  if cdsPadrao.FieldByName((Sender as TCDBEdit).DataField).AsString <> vlAnterior then
    if not cdsTituloPagParc.IsEmpty then
      GeraParcelas;
end;

procedure TFrmCadTituloPag.DBMobsTituloPagExit(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.State in [dsInsert]) and (cdsTituloPagParc.IsEmpty) then
    if GeraParcelas then
    begin
      PagAbas.ActivePageIndex := 1;
      GridParcelas.SetFocus;
    end
    else
    begin
      PagAbas.ActivePageIndex := 0;
//      DBMobsTituloPag.SetFocus;
    end;
end;

procedure TFrmCadTituloPag.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  actExcluir2.Enabled := actExcluir.Enabled;
  BtnStatus.Enabled := actExcluir.Enabled; //Só vai excluir quando tiver em modo browse
  // Bloquear alteração do Titulo provindo de uma Nota Fiscal
  {If (dsPadrao.State = dsEdit) And
     (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').Text).FieldByName('qtd').AsInteger > 0) Then
     Begin
       //
       ShowMessage('Você não poderá alterar esse título, pois o mesmo teve origem em uma Nota Fiscal !');
       dsPadrao.DataSet.Cancel;
       //
     End;}
  //
end;

procedure TFrmCadTituloPag.dspTituloPagParcBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);  
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
    begin
      GeraAutoInc(DeltaDS, 'TituloPagMov', 'idTituloPagMov', []);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmCadTituloPag.dsTituloRateioStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRatTit, BtnCancelarRatTit, BtnExcluirRatTit, BtnNovoRatTit);
end;

procedure TFrmCadTituloPag.ExcluiParc(parc: boolean);
begin
      //limpa a tabela se houverem registros nela
  if parc then
  begin
    if not cdsTituloPagParc.IsEmpty then
      with cdsTituloPagParc do
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
      if not cdsTituloPagRat.IsEmpty then
        with cdsTituloPagRat do
        begin
          First;
          while not Eof do
          begin
            delete;
            first;
          end;
        end;

      //limpa a tabela se houverem registros nela
      if not cdsTituloPagMov.IsEmpty then
        with cdsTituloPagMov do
        begin
          First;
          while not Eof do
          begin
            delete;
            first;
          end;
        end;

      if not (cdsPadrao.State = dsInsert) then
      begin
        cdsTituloPagMov.ApplyUpdates(0);
        cdsTituloPagRat.ApplyUpdates(0);
        if parc then
          cdsTituloPagParc.ApplyUpdates(0);
      end;
    end;
end;

procedure TFrmCadTituloPag.dsTituloPagParcStateChange(Sender: TObject);
begin
  inherited;
  if GrpBtnParcelas.Enabled then
  begin
    funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarParc, BtnCancelarParc, BtnExcluirParc, BtnNovoParc);
    BtnParcCancela.Enabled := (dsTitulopagparc.State = dsBrowse); 
  end
  else
  begin
    BtnSalvarParc.Enabled := false;
    BtnCancelarParc.Enabled := false;
    BtnExcluirParc.Enabled := false;
    BtnNovoParc.Enabled := false;

  end;

end;

procedure TFrmCadTituloPag.dsTituloPagRatStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRat, BtnCancelarRat, BtnExcluirRat, BtnNovoRat);
end;

procedure TFrmCadTituloPag.FiltraRateio;
begin
  cdsTituloPagRat.Filtered := false;
  cdsTituloPagRat.Filter := 'idParcela = ' + cdsTituloPagParc.FieldByName('idParcela').AsString;
  cdsTituloPagRat.Filtered := true;
end;

procedure TFrmCadTituloPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTituloPag := nil;
  // passa o parametro para a Pesquisa de Titulo
  // verificar o status dos demais titulos relacionados
end;

procedure TFrmCadTituloPag.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 4);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsTituloPagParc;
  Tabelas[2] := cdsTituloPagRat;
  Tabelas[3] := cdsTituloPagMov;
//  Tabelas[2] := cdsCadEmpresa;
  chave[0] := DBEidTituloPag;
  foco := DBEidFornecedor;
  tab_chave := 'TituloPag';
  situacao := 'stTituloPag';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 560;
  Width := 620;
  // Atribui um valor inicial
  excluiPag := false;
  //  FindPesquisa := FindProduto;
end;

procedure TFrmCadTituloPag.FormShow(Sender: TObject);
begin
  inherited;
  idFornecedor := '';
  idDocSerie := '';
  funcao.SomenteLeitura([DBEidConta], true);
  vlTotalParcelas := 0;
  cdsTituloRateio.CreateDataSet;
  Rateio := False;
  Nota := False;
  if trim(id) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idTituloPag').AsString := id;
    if BuscaChave(cdsPadrao, [DBEidTituloPag]) then
    begin
      //verifica se não é consulta de outra empresa
      if (funcao.RetornaValorEField(DBEidEmpresa, 3) <> trim(cdsPadrao.FieldByName('idEmpresa').AsString)) or
         (funcao.RetornaValorEField(DBEidCadEmpresa, 3) <> trim(cdsPadrao.FieldByName('idCadEmpresa').AsString)) then
      begin
        if not (cdsEmpresa.state in [dsEdit, dsInsert]) then
          cdsEmpresa.Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := cdsPadrao.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := cdsPadrao.FieldByName('idCadEmpresa').Value;
      end;
     DBEnrTituloPagExit(DBEnrTituloPag);
    end;
  end;
  AtualizaResultado;
  if idContratoFrete > 0 then
  begin
    actNovo.Execute;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    DBEnrTituloPagExit(DBEnrTituloPag);
    DBEidIndice.SetFocus;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmManutencaoFrete.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('dtEmissao').AsDateTime := FrmManutencaoFrete.cdsGrid.FieldByName('dtEmissao').AsDateTime;
    cdsPadrao.FieldByName('idDocSerie').AsString := 'TPAG';
    cdsPadrao.FieldByName('tpDocumento').AsString := 'CONTRATO FRETE';
    if not FrmManutencaoFrete.cdsGrid.FieldByName('idCliente').IsNull then
      cdsPadrao.FieldByName('idCliente').AsInteger := FrmManutencaoFrete.cdsGrid.FieldByName('idCliente').AsInteger;
    cdsPadrao.FieldByName('idSafra').AsInteger := FrmManutencaoFrete.cdsGrid.FieldByName('idSafra').AsInteger;
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 2;
    cdsPadrao.FieldByName('vlTituloPag').AsCurrency := FrmManutencaoFrete.EdSaldoFinal.Value;
    cdsPadrao.FieldByName('obsTituloPag').AsString := 'Referente a Contrato de Frete nr.: ' + IntToStr(idContratoFrete);
  end
  else
  if idContratoCompra <> '' then
  begin
    actNovo.Execute;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('nrTituloPag').AsString := frmCadContratoCompra.cdsPadrao.FieldByName('idContratoCompra').AsString;
    DBEnrTituloPagExit(DBEnrTituloPag);
    cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('dtEmissao').AsDateTime := frmCadContratoCompra.cdsPadrao.FieldByName('dtEmissao').AsDateTime;
    cdsPadrao.FieldByName('idDocSerie').AsString := 'TPAG';
    cdsPadrao.FieldByName('tpDocumento').AsString := frmCadContratoCompra.cdsPadrao.FieldByName('idContratoCompra').AsString;
    cdsPadrao.FieldByName('idFornecedor').AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idFornecedor').AsInteger;
    cdsPadrao.FieldByName('idSafra').AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idSafra').AsInteger;
    cdsPadrao.FieldByName('idIndice').AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idIndice').AsInteger;
    if frmCadContratoCompra.cdsPadrao.FieldByName('idConta').AsInteger > 0 then
    begin
      cdsPadraoidConta.AsInteger := frmCadContratoCompra.cdsPadrao.FieldByName('idConta').AsInteger;
      cdsPadraoidPortador.AsInteger := 1; //DEPÓSITO / TRANSFERÊNCIA
    end
    else
      cdsPadraoidPortador.AsInteger := 2; //DUPLICATA / BOLETO

    DBEdtEmissao.SetFocus;
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ProdGerencial WHERE idProduto = ' +
                                            frmCadContratoCompra.cdsPadrao.FieldByName('idProduto').AsString +
                                            ' AND idEmpresa = ' + DBEidEmpresa.Text) do
    begin
      if FieldByName('idGerencialSaida').AsInteger > 0 then
        cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencialSaida').AsInteger;
      if FieldByName('idResultado').AsInteger > 0 then
        cdsPadrao.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
    end;
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 2;
    cdsPadrao.FieldByName('vlTituloPag').AsCurrency := frmCadContratoCompra.cdsPadrao.FieldByName('vlContratoCompra').AsCurrency;
    cdsPadrao.FieldByName('obsTituloPag').AsString := 'Referente a Contrato de Venda nr.: ' + idContratoCompra;

  end
  else
    if idRomaneio > 0 then
    begin
      actNovo.Execute;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;

      cdsEmpresaidEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      DBEnrTituloPagExit(DBEnrTituloPag);
      DBEidIndice.SetFocus;
      cdsPadrao.FieldByName('idEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadrao.FieldByName('dtEmissao').AsDateTime := frmCadRomaneio.cdsPadrao.FieldByName('dtRomaneio').AsDateTime;
      cdsPadrao.FieldByName('idDocSerie').AsString := 'TPAG';
      cdsPadrao.FieldByName('tpDocumento').AsString := ContratoRomaneio;
      cdsPadrao.FieldByName('idFornecedor').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idFornecedor').AsInteger;
      cdsPadrao.FieldByName('idSafra').AsInteger := frmCadRomaneio.cdsPadrao.FieldByName('idSafra').AsInteger;
      cdsPadrao.FieldByName('idIndice').AsInteger := 1;
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ProdGerencial WHERE idProduto = ' +
                                              frmCadRomaneio.cdsPadrao.FieldByName('idProduto').AsString +
                                              ' AND idEmpresa = ' + DBEidEmpresa.Text) do
      begin
        if FieldByName('idGerencialSaida').AsInteger > 0 then
          cdsPadrao.FieldByName('idGerencial').AsInteger := FieldByName('idGerencialSaida').AsInteger;
        if FieldByName('idResultado').AsInteger > 0 then
          cdsPadrao.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
      end;
      cdsPadrao.FieldByName('idMovFinanceira').AsInteger := 1;
      cdsPadrao.FieldByName('vlTituloPag').AsCurrency := FrmCadRomaneio.EDvlFinanc.Value;
      cdsPadrao.FieldByName('obsTituloPag').AsString := 'Referente a Romaneio nr.: ' + IntToStr(idRomaneio);
    end;

  BtnExcluir2.Visible := excluir;
end;

procedure TFrmCadTituloPag.GeraMovimentacao;
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
        if trim(cdsPadrao.FieldByName('idTituloPag').AsString) <> '' then
          FieldByName('idTituloPag').Value := cdsPadrao.FieldByName('idTituloPag').Value
        else
          FieldByName('idTituloPag').Value := 0;
        FieldByName('idEmpresa').AsString := funcao.RetornaValorEField(DBEidEmpresa, 3);
        FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
        FieldByName('idParcela').Value := cdsTituloPagParc.FieldByName('idParcela').Value;
        FieldByName('idMovFinanceira').Value := cdsPadrao.FieldByName('idMovFinanceira').Value;
        FieldByName('dtTituloPagMov').Value := cdsPadrao.FieldByName('dtEmissao').Value;
        FieldByName('vlTituloPagMov').Value := cdsTituloPagParc.FieldByName('vlParcela').Value;
        FieldByName('vlRealIndice').Value := cdsTituloPagParc.FieldByName('vlParcela').Value;
        if frmPrincipal.ExecutaSQLRet([DBEidMovFinanceira], '', 'MovFinanceira').FieldByName('sinal').AsString = '+' then
          FieldByName('fator').Value := 1
        else
          FieldByName('fator').Value := -1;
        Post;
      end; // fim do if cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
      cdsTituloPagParc.Next;
    end;
    cdsTituloPagParc.First;
  end;
end;

function TFrmCadTituloPag.GeraParcelas : boolean;
var
  i : integer;
  vlParcela, vlPrimeira : currency;
  dtParcela : TDateTime;
begin
  Result := false;
  if not cdsTituloPagParc.IsEmpty then
    if messagedlg('Deseja recalcular as parcelas?', mtconfirmation, [mbyes, mbno], 0) = mrno then
      exit;

  if not funcao.VerCampoRequerido([cdsPadrao], 'idTituloPag,nrTituloPag,diasVencimento,prMulta,prJuros,prDesconto') then
  begin
    PagAbas.ActivePageIndex := 0;
    exit;
  end;

  with cdsPadrao do
  begin
    //preenche os campos que não podem ser nulos
    if trim(FieldByName('diasVencimento').AsString) = '' then
      FieldByName('diasVencimento').Value := 0;
    if (FieldByName('diasVencimento').Value = 0) and (FieldByName('incMes').Value = 'N') then
      FieldByName('incMes').Value := 'S';
    if trim(FieldByName('prMulta').AsString) = '' then
      FieldByName('prMulta').Value := 0;
    if trim(FieldByName('prJuros').AsString) = '' then
      FieldByName('prJuros').Value := 0;
    if trim(FieldByName('prDesconto').AsString) = '' then
      FieldByName('prDesconto').Value := 0;

    if (not (FieldByName('vlTituloPag').Value > 0)) or
       (not (FieldByName('qtParcelas').Value > 0)) or
       ((not(FieldByName('diasVencimento').Value > 0)) and (FieldByName('incMes').AsString = 'N') and (FieldByName('qtParcelas').AsInteger > 1)) or
       (not (trim(FieldByName('dtVencimentoIni').AsString) <> '')) then
    begin
      messagedlg('Para gerar as parcelas são necessários os campos: ' + #13 +
                 'Valor do Titulo; Parcelas; Primeiro Vencimento; Dias entre Parcelas', mterror, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBEqtParcelas.SetFocus;
      exit;
    end;
    if ((StrtoDate(trim(DBEdtVencimentoIni.text))) < (StrtoDate(trim(DBEdtEmissao.text)))) then
    begin
      messagedlg('O primeiro vencimento da parcela não pode ser menor que a data de emissão do título!',
                 mterror, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBEdtVencimentoIni.SetFocus;
      exit;
    end;
      ExcluiParc(true);

    //GERAÇÃO DAS PARCELAS
    vlParcela := funcao.ArredondaMoeda(FieldByName('vlTituloPag').Value/FieldByName('qtParcelas').AsInteger);
    vlPrimeira := FieldByName('vlTituloPag').Value-(vlParcela*(FieldByName('qtParcelas').AsInteger-1));
    dtParcela := FieldByName('dtVencimentoIni').AsDateTime;
    for i := 1 to FieldByName('qtParcelas').AsInteger do
    begin
      cdsTituloPagParc.Append;
      cdsTituloPagParc.FieldByName('idParcela').Value := i;
      cdsTituloPagParc.FieldByName('dtVencimento').Value := dtParcela;
      if i = 1 then
        cdsTituloPagParc.FieldByName('vlParcela').Value := vlPrimeira
      else
        cdsTituloPagParc.FieldByName('vlParcela').Value := vlParcela;
      cdsTituloPagParc.Post;
      if cdsPadrao.FieldByName('incMes').AsString = 'S' then
        dtParcela := IncMonth(FieldByName('dtVencimentoIni').AsDateTime, i)
      else
        dtParcela := dtParcela + FieldByName('diasVencimento').Value;
    end; //fim do for i := 1 to FieldByName('qtParcelas').AsInteger do
  end; //fim do with cdsPadrao do
  SomaParcelas;
//******************  INICIO DO RATEIO PELAS PARCELAS  ***********************//
  try
    GeraRateioParcela(0);
    GeraMovimentacao;
  except
    on E: Exception do
    begin
      ExcluiParc(true);
      exit;
    end;
  end;
  Result := true;
  if PagAbas.ActivePageIndex = 0 then
     DBEdtVencimentoIni.SetFocus;
end;

{procedure TFrmCadTituloPag.GeraRateioParcela(Tipo: byte);
//variável tipo: 0 : baseado no titulo
//               1 : baseado na temporária cdsTituloRateio
var
  idResMaior : integer;
  vlRateioMaior, vlDiferenca : currency;
begin
//******************  INICIO DO RATEIO PELAS PARCELAS  ***********************//
  idResMaior := 0;
  with cdsTituloPagRat do
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
//      if ChangeCount > 0 then
//        ApplyUpdates(0);
    end;
    cdsTituloPagParc.First;
    while not cdsTituloPagParc.Eof do
    begin
      if tipo = 0 then //geração a partir do titulo
      begin
        //início da geração do rateio / sem plano de rateio direto pelo plano de resultado
        if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
        begin
            Append;
            if trim(DBEidTituloPag.Text) <> '' then
              FieldByName('idTituloPag').AsString := DBEidTituloPag.Text
            else
              FieldByName('idTituloPag').Value := 0;
            FieldByName('idParcela').Value := cdsTituloPagParc.FieldByName('idParcela').Value;
            FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
            FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
            FieldByName('vlRateio').Value := cdsTituloPagParc.FieldByName('vlParcela').Value;
            FieldByName('prRateio').Value := '100';
            Post;
        end
        else
        begin  //início da geração do rateio / via plano de rateio
          if trim(DBEidRateio.Text) = '' then
          begin
            messagedlg('O centro de resultado ou o rateio devem ser informados!', mtwarning, [mbok], 0);
            cdsTituloPagParc.EmptyDataSet;
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
              cdsTituloPagRat.Append;
              if trim(DBEidTituloPag.Text) <> '' then
                cdsTituloPagRat.FieldByName('idTituloPag').AsString := DBEidTituloPag.Text
              else
                cdsTituloPagRat.FieldByName('idTituloPag').Value := 0;
              cdsTituloPagRat.FieldByName('idParcela').Value := cdsTituloPagParc.FieldByName('idParcela').Value;
              cdsTituloPagRat.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
              cdsTituloPagRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
              cdsTituloPagRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
              cdsTituloPagRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsTituloPagParc.FieldByName('vlParcela').Value *
                                                               FieldByName('prRateio').Value)/100);
              //para registrar quem tem o maior valor
              if vlRateioMaior < cdsTituloPagRat.FieldByName('vlRateio').Value then
                idResMaior := cdsTituloPagRat.FieldByName('idResultado').Value;
              cdsTituloPagRat.Post;
              Next;
            end; //fim do laço do rateio
          end; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do

        end; //fim do else   begin  //início da geração do rateio / via plano de rateio
      end //fim do if tipo = 0
      else //para o tipo = 1
      begin
        with cdsTituloRateio do
        begin
          First;
          vlRateioMaior := 0;
          idResMaior := 0;
          while not Eof do
          begin
            cdsTituloPagRat.Append;
            cdsTituloPagRat.FieldByName('idTituloPag').Value := FieldByName('idTituloPag').Value;
            cdsTituloPagRat.FieldByName('idParcela').Value := cdsTituloPagParc.FieldByName('idParcela').Value;
            cdsTituloPagRat.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;
            cdsTituloPagRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
            cdsTituloPagRat.FieldByName('prRateio').Value := FieldByName('prRateio').Value;
            cdsTituloPagRat.FieldByName('vlRateio').Value := funcao.ArredondaMoeda((cdsTituloPagParc.FieldByName('vlParcela').Value *
                                                             FieldByName('prRateio').Value)/100);
            //para registrar quem tem o maior valor
            if vlRateioMaior < cdsTituloPagRat.FieldByName('vlRateio').Value then
              idResMaior := cdsTituloPagRat.FieldByName('idResultado').Value;
            cdsTituloPagRat.Post;
            Next;
          end; //fim do laço do rateio
        end; // fim do with cdsTituloRateio do

      end; //fim do else para o tipo = 1

      SomaRateio;
      //inicia processo para ajuste de valor caso haja diferença joga para o maior
      if (vlTotalRateio <>  cdsTituloPagParc.FieldByName('vlParcela').Value) then
        if not ((tipo = 1) and (vlTotalRateioTit < cdsPadrao.FieldByName('vlTituloPag').Value)) then
        begin
          vlDiferenca := cdsTituloPagParc.FieldByName('vlParcela').Value - vlTotalRateio;
          IndexFieldNames := 'idResultado';
          FindKey([idResMaior]);
          Edit;
          FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
          Post;
        end;
      Filtered := false;
      cdsTituloPagParc.Next;
    end;// fim do while not cdsTituloPagParc.Eof do
  end; // fim do with cdsTituloPagRat do
  cdsTituloPagParc.First;
  if not (frmPrincipal.ExecutaSQLRet([DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL') then
    GeraRateioTitulo;
end;  }


procedure TFrmCadTituloPag.GeraRateioParcela(Tipo: byte);
//Variável Tipo: 0 : Baseado no Titulo
//               1 : Baseado na Temporária cdsTituloRateio
var
  idResMaior : integer;
  vlRateioMaior, vlDiferenca : currency;
  bNotaFiscal: Boolean;
  Sql: String;
begin
  // INICIO DO RATEIO PELAS PARCELAS //
  //
  bNotaFiscal := Not(cdsPadrao.FieldByName('idTituloPag').isNull) And
                 (frmPrincipal.ExecutaSQLRet([], '', 'select isnull(count(*), 0) qtd from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').AsString).FieldByName('qtd').AsInteger > 0);
  //
  idResMaior := 0;
  //
  With cdsTituloPagRat Do
       Begin
         //
         //DisableControls;
         Filtered := false;
         //limpa a tabela se houverem registros nela
         If Not IsEmpty Then
            Begin
              //
              While RecordCount > 0 Do
                    Delete;
              //
              If (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) Then
                 ApplyUpdates(0);
              //
            End;
         //
         cdsTituloPagParc.First;
         //
         While Not cdsTituloPagParc.Eof Do
         Begin
                 //
                 //DisableControls;
                 //
                 If Tipo = 0 Then //geração a partir do titulo
                    Begin
                      //início da geração do rateio / sem plano de rateio direto pelo plano de resultado
                      If Trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' Then
                         Begin
                           //
                           Append;
                           //
                           If trim(cdsPadrao.FieldByName('idTituloPag').AsString) <> '' Then
                              FieldByName('idTituloPag').AsString := cdsPadrao.FieldByName('idTituloPag').AsString
                           Else
                              FieldByName('idTituloPag').Value    := 0;
                           //
                           FieldByName('idParcela').Value   := cdsTituloPagParc.FieldByName('idParcela').Value;
                           FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
                           FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
                           FieldByName('vlRateio').Value    := cdsTituloPagParc.FieldByName('vlParcela').Value;
                           FieldByName('prRateio').Value    := '100';
                           //
                           Post;
                           //
                         End
                      Else
                         Begin  //início da geração do rateio / via plano de rateio
                           //
                           If Trim(DBEidRateio.Text) = '' Then
                              Begin
                                //
                                MessageDlg('O centro de resultado ou o rateio devem ser informados!', mtwarning, [mbok], 0);
                                cdsTituloPagParc.EmptyDataSet;
                                PagAbas.ActivePageIndex := 0;
                                Exit;
                                //
                              End;
                           //
                           If frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL' Then
                              Exit;
                           //
                           If (bNotaFiscal) And
                              (cdsPadrao.FieldByName('idRateio').OldValue = cdsPadrao.FieldByName('idRateio').Value) And
                              (cdsPadrao.FieldByName('idGerencial').OldValue = cdsPadrao.FieldByName('idGerencial').Value) Then
                              With frmPrincipal.ExecutaSQLRet([], '', 'select idEmpresa, idCadEmpresa, idDocSerie, idFornecedor, idCadFornecedor, idNFe from nfefinanc where idTituloPag = ' + cdsPadrao.FieldByName('idTituloPag').AsString) do
                                   Sql :=  'select idResultado, idGerencial, prRateio, vlRateio ' +
                                           'from nferateio ' +
                                           'where idEmpresa = ' + FieldByName('idEmpresa').AsString +
                                           '  and idCadEmpresa = ' + FieldByName('idCadEmpresa').AsString +
                                           '  and idDocSerie = ' + QuotedStr(FieldByName('idDocSerie').AsString) +
                                           '  and idFornecedor = ' + FieldByName('idFornecedor').AsString +
                                           '  and idCadFornecedor = ' + FieldByName('idCadFornecedor').AsString +
                                           '  and idNFe = ' + FieldByName('idNFe').AsString
                           Else
                              Sql := 'select idResultado, ' + funcao.RetornaValorEField(DBEidGerencial, 3) + ' idGerencial, prRateio, 0 vlRateio ' +
                                     'from RateioItem ' +
                                     'where idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                     '  and idRateio = ' + funcao.RetornaValorEField(DBEidRateio, 3);
                           //
//                           ClipBoard.AsText := Sql;
                           //
                           With frmPrincipal.ExecutaSQLRet([], '', Sql) do
                                Begin
                                  //
                                  First;
                                  vlRateioMaior := 0;
                                  idResMaior := 0;
                                  //
                                  While Not Eof Do
                                        begin
                                          //
                                          cdsTituloPagRat.Append;
                                          //
                                          If trim(DBEidTituloPag.Text) <> '' Then
                                            cdsTituloPagRat.FieldByName('idTituloPag').AsString := cdsPadrao.FieldByName('idTituloPag').AsString
                                          Else
                                            cdsTituloPagRat.FieldByName('idTituloPag').Value    := 0;
                                          //
                                          cdsTituloPagRat.FieldByName('idParcela').Value        := cdsTituloPagParc.FieldByName('idParcela').Value;
                                          cdsTituloPagRat.FieldByName('idGerencial').Value      := FieldByName('idGerencial').Value;
                                          cdsTituloPagRat.FieldByName('idResultado').Value      := FieldByName('idResultado').Value;
                                          cdsTituloPagRat.FieldByName('prRateio').Value         := FieldByName('prRateio').Value;
                                          //ShowMessage(cdsTituloPagRat.FieldByName('prRateio').Text);
                                          cdsTituloPagRat.FieldByName('vlRateio').Value         := {IIf(bNotaFiscal, FieldByName('vlRateio').Value,} (cdsTituloPagParc.FieldByName('vlParcela').Value *
                                                                                                                                           FieldByName('prRateio').Value)/100{)};
                                          // Mostrar valores
                                          //ShowMessage('Valor da Parcela : ' + cdsTituloPagParc.FieldByName('vlParcela').Text);
                                          //ShowMessage('Percentual : ' + FieldByName('prRateio').Text);
                                          //ShowMessage('Valor : ' + cdsTituloPagRat.FieldByName('vlRateio').Text);
                                          //para registrar quem tem o maior valor
                                          If vlRateioMaior < cdsTituloPagRat.FieldByName('vlRateio').Value Then
                                             idResMaior := cdsTituloPagRat.FieldByName('idResultado').Value;
                                          //
                                          cdsTituloPagRat.Post;
                                          //
                                          Next;
                                          //
                                        End; //fim do laço do rateio
                                End; // fim do with ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'RateioItem') do
                                //
                         End; //fim do else   begin  //início da geração do rateio / via plano de rateio
                    End //fim do if tipo = 0
                 Else //para o tipo = 1
                    Begin
                      //
                      With cdsTituloRateio Do
                           Begin
                             //
                             //DisableControls;
                             First;
                             //
                             vlRateioMaior := 0;
                             idResMaior := 0;
                             //
                             While Not Eof Do
                                   Begin
                                     //
                                     cdsTituloPagRat.Append;
                                     //
                                     cdsTituloPagRat.FieldByName('idTituloPag').Value := FieldByName('idTituloPag').Value;
                                     cdsTituloPagRat.FieldByName('idParcela').Value   := cdsTituloPagParc.FieldByName('idParcela').Value;
                                     cdsTituloPagRat.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;
                                     cdsTituloPagRat.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
                                     cdsTituloPagRat.FieldByName('prRateio').Value    := FieldByName('prRateio').Value;
                                     cdsTituloPagRat.FieldByName('vlRateio').Value    := funcao.ArredondaMoeda((cdsTituloPagParc.FieldByName('vlParcela').Value*FieldByName('prRateio').Value)/100);
                                     //funcao.IIf(bNotaFiscal, FieldByName('vlRateio').Value, funcao.ArredondaMoeda((cdsTituloPagParc.FieldByName('vlParcela').Value *
//                                                                                                                                         FieldByName('prRateio').Value)/100));
                                     //para registrar quem tem o maior valor
                                     If vlRateioMaior < cdsTituloPagRat.FieldByName('vlRateio').Value Then
                                        idResMaior := cdsTituloPagRat.FieldByName('idResultado').Value;
                                     //
                                     cdsTituloPagRat.Post;
                                     //
                                     Next;
                                     //
                                   End; //fim do laço do rateio
                             //
                             EnableControls;
                             //
                           End; // fim do with cdsTituloRateio do
                    End; //fim do else para o tipo = 1};
           //
           SomaRateio;
           //
           //inicia processo para ajuste de valor caso haja diferença joga para o maior
           If Not(bNotaFiscal) And
             (vlTotalRateio <>  cdsTituloPagParc.FieldByName('vlParcela').Value) Then
             If Not ((tipo = 1) And (vlTotalRateioTit < cdsPadrao.FieldByName('vlTituloPag').Value)) Then
                begin
                  //
                  vlDiferenca := cdsTituloPagParc.FieldByName('vlParcela').Value - vlTotalRateio;
                  //
                  IndexFieldNames := 'idResultado';
                  //
                  FindKey([idResMaior]);
                  //
                  Edit;
                  //
                  FieldByName('vlRateio').Value := FieldByName('vlRateio').Value + vlDiferenca;
                  //
                  Post;
                  //
                End;
           //
           Filtered := False;
           cdsTituloPagParc.Next;
           //
         End;// fim do while not cdsTituloPagParc.Eof do
         //
         EnableControls;
         //
       End; // fim do with cdsTituloPagRat do
  //
  cdsTituloPagParc.First;
  //
//  If Not (frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidRateio], '', 'Rateio').FieldByName('tpRateio').AsString = 'MANUAL') Then
//     GeraRateioTitulo;
  //
end;


procedure TFrmCadTituloPag.GeraRateioTitulo;
var
  vlTitulo, vlRateio, prRateio : Double;
begin
  {Ta um tanto quanto confuso isso,
  vou comentar para poder ver se não vai dar nenhum erro futuro}
  if not cdsTituloRateio.Active then
    cdsTituloRateio.Open;
  if cdsTituloRateio.IsEmpty then
  begin
    cdsTituloRateio.IndexFieldNames := 'idResultado';
    with cdsTituloPagRat do
    begin
      Filtered := false;
      IndexFieldNames := 'idResultado';
  //    showmessage(inttostr(cdsTituloPagRat.PagordCount));
      First;
      while not Eof do
      begin
        if cdsTituloRateio.FindKey([FieldByName('idResultado').AsInteger]) then
        begin
          cdsTituloRateio.Append;
          cdsTituloRateio.FieldByName('prRateio').Value := cdsTituloRateio.FieldByName('prRateio').Value;
          cdsTituloRateio.FieldByName('vlRateio').Value := cdsTituloRateio.FieldByName('vlRateio').Value/
                                                           FieldByName('prRateio').Value;
          cdsTituloRateio.Post;
        end
        else
        begin
          cdsTituloRateio.Append;
          cdsTituloRateio.FieldByName('idTituloPag').Value := 0;
          cdsTituloRateio.FieldByName('idResultado').Value := FieldByName('idResultado').Value;
          cdsTituloRateio.FieldByName('idGerencial').Value := FieldByName('idGerencial').Value;
          cdsTituloRateio.FieldByName('vlRateio').Value := vlRatTemp;//FieldByName('vlRateio').Value;
          cdsTituloRateio.FieldByName('prRateio').Value := RoundTo(((vlRatTemp/cdsPadrao.FieldByName('vlTituloPag').AsFloat)*100), -3);
          cdsTituloRateio.Post;
        end;
        Next;
      end; // fim do while not Eof do
    end; // fim do with cdsTituloPagRat do
    //Ajusta o percentual do rateio
  {  if not Rateio then
    begin
      with cdsTituloRateio do
      begin
        if IsEmpty then
          exit;
        First;
        while not Eof do
        begin
          if cdsTituloRateio.FindKey([FieldByName('idResultado').AsInteger]) then
          begin
            vlTitulo := cdsPadrao.FieldByName('vlTituloPag').AsFloat;
            vlRateio := FieldByName('vlRateio').AsFloat;
            prRateio := RoundTo(((vlRateio / vlTitulo)*100), -3);
            Edit;
            FieldByName('prRateio').AsFloat := prRateio;
            Post;
          end;
          Next;
        end;
      end; //  fim do with cdsTituloRateio do
    end;        }
  end;
end;

procedure TFrmCadTituloPag.HabilitaRatRes;
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

procedure TFrmCadTituloPag.LookLancamentoSetText(Sender: TObject);
begin
  inherited;
  if trim(LookLancamento.Caption) <> '' then
    LookLancamento.Caption := FormatFloat('#,##0.00', StrToFloat(LookLancamento.Caption));
end;

procedure TFrmCadTituloPag.PagAbasChange(Sender: TObject);
begin
  inherited;
  Height := 560;
  if (PagAbas.ActivePageIndex = 1) then //Parcelas
  begin
    if (cdsPadrao.State in [dsInsert]) and (cdsTituloPagParc.IsEmpty) then
      GeraParcelas;
  end;
  if (PagAbas.ActivePageIndex = 2) then //Rateio
  begin
    if (not cdsTituloPagRat.IsEmpty) then
    begin
      SomaRateio;
      SomaRateioTit;
    end;
    If (Not cdsTituloPagParc.IsEmpty) Then
       FiltraRateio;
    Height := 530;
    RBRatTitulo2Click(RBRatTitulo2);
  end;
  if ((PagAbas.ActivePageIndex = 3) and (not cdsTituloPagMov.IsEmpty)) then
  begin
    cdsTituloPagMov.Filtered := false;
    cdsTituloPagMov.Filter := 'idParcela = ' + cdsTituloPagParc.FieldByName('idParcela').AsString;
    cdsTituloPagMov.Filtered := true;
  end;
end;

procedure TFrmCadTituloPag.RBRatParcelaClick(Sender: TObject);
begin
  inherited;
  GrpRateioParc.Visible := true;
  GrpRateioTitulo.Visible := false;
  RBRatParcela2.Checked := true;
  FiltraRateio;
end;

procedure TFrmCadTituloPag.RBRatTitulo2Click(Sender: TObject);
begin
  inherited;
  GrpRateioParc.Visible := false;
  GrpRateioTitulo.Visible := true;
  RBRatTitulo.Checked := true;
  If (Not cdsTituloPagRat.IsEmpty) AND (cdsTituloRateio.IsEmpty) Then
  begin
    cdsTituloRateio.Append;
    cdsTituloRateio.FieldByName('idTituloPag').Value := cdsPadrao.FieldByName('idTituloPag').Value;
    cdsTituloRateio.FieldByName('idResultado').Value := cdsPadrao.FieldByName('idResultado').Value;
    cdsTituloRateio.FieldByName('idGerencial').Value := cdsPadrao.FieldByName('idGerencial').Value;
    cdsTituloRateio.FieldByName('vlRateio').Value := cdsPadrao.FieldByName('vlTituloPag').Value;
    cdsTituloRateio.FieldByName('prRateio').Value := 100;//RoundTo(((FieldByName('vlRateio').Value/cdsPadrao.FieldByName('vlTituloPag').AsFloat)*100), -3);
    cdsTituloRateio.Post;
  end;
end;

procedure TFrmCadTituloPag.ReplicaInformacoes;
var
sql : string;
begin
  // Busca informações para repertir fornecedor e serie
  sql := 'SELECT replicafornecedor, replicaserie FROM ConfigFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if FieldByName('replicafornecedor').AsString = 'S' then
       idFornecedor := DBEidFornecedor.Text;
    if FieldByName('replicaserie').AsString = 'S' then
       idDocSerie := DBEidDocSerie.Text;
  end;
end;

procedure TFrmCadTituloPag.SomaParcelas;
begin
  vlTotalParcelas := 0;
  LblTotal.Caption := Funcao.Mascara(FloatToStr(vlTotalParcelas), 6, '');
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloPag').AsCurrency-vlTotalParcelas), 6, '');
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
  LblRestante.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloPag').AsCurrency-vlTotalParcelas), 6, '');
end;

procedure TFrmCadTituloPag.SomaRateio;
begin
  vlTotalRateio := 0;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsTituloPagParc.FieldByName('vlParcela').AsCurrency-vlTotalRateio), 6, '');
  With cdsTituloPagRat do
  begin
    if IsEmpty then
      exit;
    //DisableControls;
    FiltraRateio;
    First;
    while not Eof do
    begin
      vlTotalRateio := vlTotalRateio + FieldByName('vlRateio').AsCurrency;
      Next;
    end;
    Filtered := false;
    First;
    EnableControls;
  end;
  LblTotalRat.Caption := Funcao.Mascara(FloatToStr(vlTotalRateio), 6, '');
  LblRestanteRat.Caption := Funcao.Mascara(FloatToStr(cdsTituloPagParc.FieldByName('vlParcela').AsCurrency-vlTotalRateio), 6, '');
end;

procedure TFrmCadTituloPag.SomaRateioTit;
begin
  vlTotalRateioTit := 0;
  LblTotalRatTit.Caption := Funcao.Mascara(FloatToStr(vlTotalRateioTit), 6, '');
  LblRestanteRatTit.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloPag').AsCurrency-vlTotalRateioTit), 6, '');
  With cdsTituloRateio do
  begin
    if IsEmpty then
      exit;
    //DisableControls;
    First;
    while not Eof do
    begin
      vlTotalRateioTit := vlTotalRateioTit + FieldByName('vlRateio').AsCurrency;
      Next;
    end;
    First;
    EnableControls;
  end;
  LblTotalRatTit.Caption := Funcao.Mascara(FloatToStr(vlTotalRateioTit), 6, '');
  LblRestanteRatTit.Caption := Funcao.Mascara(FloatToStr(cdsPadrao.FieldByName('vlTituloPag').AsCurrency-vlTotalRateioTit), 6, '');
end;

function TFrmCadTituloPag.ValidaPermissao(Tipo : string): Boolean;
var
sql : string;
begin
  //Valida permissão para exclusão de movimentação de titulos
  Result := False;
  sql := 'SELECT * FROM SegGrupoPermissao WHERE idSegModulo = 5' +
         ' AND idSegGrupoMenu = 3' +
         ' AND idSegMenu = 2' +
         ' AND idUsuarioGrupo = ' + IntToStr(frmPrincipal.idUsuarioGrupo);
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
       Result := FieldByName(Tipo).AsString = 'S';
end;

procedure TFrmCadTituloPag.VerificaNfE;
var
  sql : String;
begin
  //Procedure responsavel por veririficar se o Titulo tem vinculo com uma NfE
  sql := 'SELECT * FROM NfeFinanc WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
         ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
         ' AND idTituloPag = ' + cdsPadraoidTituloPag.AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
      Nota := True
    else
      Nota := False;
      {funcao.SomenteLeitura([DBEidResultado, DBEidRateio, DBEidGerencial, DBEidIndice,
                             DBEidSafra, DBEidParcela, DBEidParcelaR, DBEidResultadoRT,
                             DBEidGerencialRT, DBEidGerencialR, DBEidResultadoR, DBEidMovFinanceiraM,
                             DBEidTituloPagMov, DBEidFornecedor, DBEidDocSerie, DBEidConta,
                             DBEidMovFinanceira, DBEnrTituloPag, DBEtpDocumento, DBEdtEmissao,
                             DBEvlTituloPag, DBEprMulta, DBEprJuros, DBEprDesconto, DBEprRateio,
                             DBEprRateioRT, DBEqtParcelas, DBEdtVencimentoIni, DBEvlParcela,
                             DBEdtVencimento, DBEvlRateio, DBEvlRateioRT, DBEidPortador, DBMobsTituloPag], True);
      Nota := True;
    end
    else
    begin
      funcao.SomenteLeitura([DBEidResultado, DBEidRateio, DBEidGerencial, DBEidIndice,
                             DBEidSafra, DBEidParcela, DBEidParcelaR, DBEidResultadoRT,
                             DBEidGerencialRT, DBEidGerencialR, DBEidResultadoR, DBEidMovFinanceiraM,
                             DBEidTituloPagMov, DBEidFornecedor, DBEidDocSerie, DBEidConta,
                             DBEidMovFinanceira, DBEnrTituloPag, DBEtpDocumento, DBEdtEmissao,
                             DBEvlTituloPag, DBEprMulta, DBEprJuros, DBEprDesconto, DBEprRateio,
                             DBEprRateioRT, DBEqtParcelas, DBEdtVencimentoIni, DBEvlParcela,
                             DBEdtVencimento, DBEvlRateio, DBEvlRateioRT, DBEidPortador, DBMobsTituloPag], False);
      Nota := False;
    end;
  end; }
  end;
end;

function TFrmCadTituloPag.VerMovEstornado: boolean;
begin
  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT COUNT(*) Qtde FROM TituloPagMovEst WHERE idTituloPagMov = ' + cdsTituloPagMovidTituloPagMov.AsString) do
    if FieldByName('Qtde').AsInteger > 0 then
    begin
      messagedlg('Movimento já estornado não pode ser alterado!', mtwarning, [mbok], 0);
      Result := true;
    end
    else
      Result := false;
end;

end.

