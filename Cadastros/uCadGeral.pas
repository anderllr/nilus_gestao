unit uCadGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, XPMan, Menus, CPanelGradient, DBXCommon,
  CDBCheckBox, EditAlign, CEdit, ExtDlgs, Jpeg, Clipbrd, CCheckBox, CRadioGroup,
  CDBRadioGroup, CComboBox, System.Actions, System.ImageList;

type
  TfrmCadGeral = class(TFrmCadPadrao)
    CLabel1: TCLabel;
    DBEidCadGeral: TCDBEdit;
    CLabel14: TCLabel;
    f: TBevel;
    Bevel3: TBevel;
    DBEstCadGeral: TCDBEdit;
    sdsCadGeral: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    DBEdescAbreviada: TCDBEdit;
    CLabel6: TCLabel;
    DBEdescCadAdicional: TCDBEdit;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    DBEidCnpjCpf: TCDBEdit;
    sdsCadAdicional: TSQLDataSet;
    dspCadAdicional: TDataSetProvider;
    cdsCadAdicional: TClientDataSet;
    dsCadAdicional: TDataSource;
    cdsCidade: TClientDataSet;
    FindCidade: TCFind;
    FindEndereco: TCFind;
    CGroupBox8: TCGroupBox;
    CLabel28: TCLabel;
    CLabel29: TCLabel;
    CLabel32: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    CLabel38: TCLabel;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    DBEcomplemento: TCDBEdit;
    DBEbairro: TCDBEdit;
    DBEendereco: TCDBEdit;
    DBEcep: TCDBEdit;
    DBEnumero: TCDBEdit;
    DBEidCidade: TCDBEdit;
    LookCidade: TCLookUp;
    DBEfone: TCDBEdit;
    LookDDD: TCLookUp;
    DBEfax: TCDBEdit;
    DBEcelular: TCDBEdit;
    DBEemail: TCDBEdit;
    CLabel7: TCLabel;
    DBEweb: TCDBEdit;
    DBEidInscEstadual: TCDBEdit;
    CLabel31: TCLabel;
    CLabel8: TCLabel;
    DBEdtAtualizacao: TCDBEdit;
    BtnCadCidade: TCBitBtn;
    CGroupBox9: TCGroupBox;
    DBMobsCadGeral: TCDBMemo;
    sdsCadAdicional2: TSQLDataSet;
    dspCadAdicional2: TDataSetProvider;
    cdsCadAdicional2: TClientDataSet;
    dsCadAdicional2: TDataSource;
    LookEstado2: TCLookUp;
    TabAdicional: TTabSheet;
    CGroupBox14: TCGroupBox;
    CDBGrid4: TCDBGrid;
    CGroupBox2: TCGroupBox;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    CLabel21: TCLabel;
    DBEcomplemento2: TCDBEdit;
    DBEbairro2: TCDBEdit;
    DBEendereco2: TCDBEdit;
    DBEcep2: TCDBEdit;
    DBEnumero2: TCDBEdit;
    DBEidCidade2: TCDBEdit;
    LookCidade2: TCLookUp;
    DBEfone2: TCDBEdit;
    LookDDD2: TCLookUp;
    DBEfax2: TCDBEdit;
    DBEcelular2: TCDBEdit;
    DBEemail2: TCDBEdit;
    LookEstado: TCLookUp;
    CGroupBox10: TCGroupBox;
    CLabel41: TCLabel;
    CLabel46: TCLabel;
    CLabel47: TCLabel;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    DBEidInscEstadual2: TCDBEdit;
    DBEidCnpjCpf2: TCDBEdit;
    DBEidCadAdicional: TCDBEdit;
    DBEdescCadAdicional2: TCDBEdit;
    DBEdescAbreviadaAd: TCDBEdit;
    CLabel11: TCLabel;
    DBEstCadAdicional: TCDBEdit;
    CLabel23: TCLabel;
    DBEidInscMunicipal: TCDBEdit;
    CGroupBox12: TCGroupBox;
    BtnSalvarCli: TCBitBtn;
    BtnCancelarCli: TCBitBtn;
    BtnExcluirCli: TCBitBtn;
    BtnNovoCli: TCBitBtn;
    FindCadGeral: TCFind;
    CLabel13: TCLabel;
    DBEidInscMunicipal2: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtCadastro: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtAlteracao: TCDBEdit;
    btnValidaInscricao: TCBitBtn;
    TabContabil: TTabSheet;
    sdsEmpresaContabil: TSQLDataSet;
    dspEmpresaContabil: TDataSetProvider;
    cdsEmpresaContabil: TClientDataSet;
    dsEmpresaContabil: TDataSource;
    sdsConfigContabil: TSQLDataSet;
    dspConfigContabil: TDataSetProvider;
    cdsConfigContabil: TClientDataSet;
    dsConfigContabil: TDataSource;
    CGroupBox6: TCGroupBox;
    CGroupBox4: TCGroupBox;
    CLabel33: TCLabel;
    CLabel44: TCLabel;
    CLabel49: TCLabel;
    DBEidCnpjCpfContador: TCDBEdit;
    DBEdescContador: TCDBEdit;
    DBEcrcContador: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLabel26: TCLabel;
    DBEidCnpjCpfRepresentante: TCDBEdit;
    DBEdescRepresentante: TCDBEdit;
    DBEcargo: TCDBEdit;
    CGroupBox5: TCGroupBox;
    CLabel52: TCLabel;
    CLabel53: TCLabel;
    CLabel55: TCLabel;
    DBEperiodoInicial: TCDBEdit;
    DBEmascaraContabil: TCDBEdit;
    DBEperiodoFinal: TCDBEdit;
    CLabel22: TCLabel;
    DBErodapeContabil: TCDBEdit;
    DBCBalteraFechado: TCDBCheckBox;
    idEmpresa: TCEdit;
    BtnValidaInscricao2: TCBitBtn;
    CLabel27: TCLabel;
    DBEmascaraFiscal: TCDBEdit;
    TabContGerencial: TTabSheet;
    CGroupBox7: TCGroupBox;
    CLabel30: TCLabel;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    CLabel45: TCLabel;
    DBEcdPlanoContaCre: TCDBEdit;
    LookdescPlanoContaCre: TCLookUp;
    FindPlanoContaCre: TCFind;
    FindPlanoContaDeb: TCFind;
    sdsContaCliente: TSQLDataSet;
    dspContaCliente: TDataSetProvider;
    cdsContaCliente: TClientDataSet;
    dsContaCliente: TDataSource;
    cdsContaClienteidCadGeral: TIntegerField;
    cdsContaClientecdPlanoContaCre: TIntegerField;
    cdsContaClientecdPlanoContaDeb: TIntegerField;
    FindEmpresaOri: TCFind;
    TabImportar: TTabSheet;
    CGroupBox11: TCGroupBox;
    CGroupBox13: TCGroupBox;
    CBitBtn1: TCBitBtn;
    BtnExcluir2: TCBitBtn;
    CBitBtn2: TCBitBtn;
    CGroupBox15: TCGroupBox;
    CBitBtn3: TCBitBtn;
    CBitBtn4: TCBitBtn;
    EDpar: TCEdit;
    CGroupBox16: TCGroupBox;
    DBGridEmpresa: TCDBGrid;
    CGroupBox17: TCGroupBox;
    BtnSalvarCCli: TCBitBtn;
    BtnCancelarCCli: TCBitBtn;
    BtnExcluirCCli: TCBitBtn;
    BtnNovoCCli: TCBitBtn;
    CLabel50: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    FindEmpresa: TCFind;
    cdsContaClienteidEmpresa: TIntegerField;
    cdsPlanoConta: TClientDataSet;
    cdsContaClientedescContaCredito: TStringField;
    cdsContaClientedescContaDebito: TStringField;
    BtnPesquisaCCli: TCBitBtn;
    TabContaBanco: TTabSheet;
    dsContaBanco: TDataSource;
    cdsContaBanco: TClientDataSet;
    dspContaBanco: TDataSetProvider;
    sdsContaBanco: TSQLDataSet;
    CGroupBox18: TCGroupBox;
    BtnSalvarCta: TCBitBtn;
    BtnCancelarCta: TCBitBtn;
    BtnExcluirCta: TCBitBtn;
    BtnNovoCta: TCBitBtn;
    CGroupBox19: TCGroupBox;
    DBGridCta: TCDBGrid;
    CGroupBox20: TCGroupBox;
    CLabel60: TCLabel;
    CLabel58: TCLabel;
    CLabel51: TCLabel;
    CLabel54: TCLabel;
    CLabel56: TCLabel;
    CLabel57: TCLabel;
    CLabel59: TCLabel;
    DBEidConta: TCDBEdit;
    DBEdescConta: TCDBEdit;
    DBEstConta: TCDBEdit;
    DBEidBanco: TCDBEdit;
    LookBanco: TCLookUp;
    CBitBtn10: TCBitBtn;
    DBEidAgencia: TCDBEdit;
    DBEidContaCorrente: TCDBEdit;
    DBCKpadrao: TCDBCheckBox;
    TabSegmento: TTabSheet;
    LookGrupoCad: TCLookUp;
    DBEidGrupoCad: TCDBEdit;
    CLabel61: TCLabel;
    dsCadGeralSegmento: TDataSource;
    cdsCadGeralSegmento: TClientDataSet;
    dspCadGeralSegmento: TDataSetProvider;
    sdsCadGeralSegmento: TSQLDataSet;
    CGroupBox21: TCGroupBox;
    CGroupBox22: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox23: TCGroupBox;
    BtnSalvarSeg: TCBitBtn;
    BtnCancelarSeg: TCBitBtn;
    BtnExcluirSeg: TCBitBtn;
    BtnNovoSeg: TCBitBtn;
    LookSegmento: TCLookUp;
    DBEidSegmento: TCDBEdit;
    CLabel62: TCLabel;
    cdsSegmento: TClientDataSet;
    cdsCadGeralSegmentoidCadGeral: TIntegerField;
    cdsCadGeralSegmentoidSegmento: TSmallintField;
    cdsCadGeralSegmentodescSegmento: TStringField;
    CGroupBox24: TCGroupBox;
    DBImgLogo: TDBImage;
    BtnCarrega: TCBitBtn;
    AbreLogo: TOpenPictureDialog;
    CLabel63: TCLabel;
    CGroupBox25: TCGroupBox;
    DBLogoFilial: TDBImage;
    BtnCarregaLogo: TCBitBtn;
    CLabel64: TCLabel;
    dsLogo: TDataSource;
    cdsLogo: TClientDataSet;
    dspLogo: TDataSetProvider;
    sdsLogo: TSQLDataSet;
    CGroupBox26: TCGroupBox;
    DBCRPerfilApresentacao: TCDBRadioGroup;
    DBCRIndTpAtividade: TCDBRadioGroup;
    CLabel65: TCLabel;
    DBESuframa: TCDBEdit;
    CGroupBox27: TCGroupBox;
    CLookUp1: TCLookUp;
    DBEcdPlanoContaDebSPED: TCDBEdit;
    CLabel66: TCLabel;
    CLabel67: TCLabel;
    DBEcdPlanoContaCreSPED: TCDBEdit;
    CLookUp2: TCLookUp;
    cdsEmp: TClientDataSet;
    cdsEmpidEmpresa: TIntegerField;
    CLookUp3: TCLookUp;
    DBEidEmpresaOri: TCDBEdit;
    CLabel48: TCLabel;
    dsEmp: TDataSource;
    dsFuncionario: TDataSource;
    cdsFuncionario: TClientDataSet;
    dspFuncionario: TDataSetProvider;
    sdsFuncionario: TSQLDataSet;
    TabFuncionario: TTabSheet;
    CGroupBox28: TCGroupBox;
    DBEcor: TCDBEdit;
    CLabel70: TCLabel;
    CLabel71: TCLabel;
    DBCBestado_civil: TCDBComboBox;
    DBCBgrau_instrucao: TCDBComboBox;
    CLabel72: TCLabel;
    DBCKfumante: TCDBCheckBox;
    DBCKbebe: TCDBCheckBox;
    DBCKsegurovida: TCDBCheckBox;
    DBCKconducaopropria: TCDBCheckBox;
    CGroupBox29: TCGroupBox;
    CLabel75: TCLabel;
    DBEdtNascimento: TCDBEdit;
    CLabel68: TCLabel;
    DBCBsexo: TCDBComboBox;
    CLabel69: TCLabel;
    DBCBtipo_sanguineo: TCDBComboBox;
    CBitBtn5: TCBitBtn;
    CLookUp4: TCLookUp;
    CLookUp5: TCLookUp;
    DBEidCidadeNasc: TCDBEdit;
    CLabel73: TCLabel;
    DBEdescMae: TCDBEdit;
    CLabel74: TCLabel;
    DBEdescPai: TCDBEdit;
    CLabel76: TCLabel;
    DBEnacionalidade: TCDBEdit;
    CLabel77: TCLabel;
    CLabel78: TCLabel;
    DBEnrTituloEleitor: TCDBEdit;
    DBEzonaTituloEleitor: TCDBEdit;
    CLabel79: TCLabel;
    DBEsecaoTituloEleitor: TCDBEdit;
    CLabel80: TCLabel;
    DBEnrReservista: TCDBEdit;
    CLabel81: TCLabel;
    DBEnrCTPS: TCDBEdit;
    CLabel82: TCLabel;
    DBEnrPIS: TCDBEdit;
    CLabel83: TCLabel;
    CLabel84: TCLabel;
    DBEnrCNH: TCDBEdit;
    CLabel85: TCLabel;
    DBEcatCNH: TCDBEdit;
    DBEdtEmissaoCNH: TCDBEdit;
    CLabel86: TCLabel;
    DBEdtValidadeCNH: TCDBEdit;
    CLabel87: TCLabel;
    DBCBSubsTritutario: TCDBCheckBox;
    CLabel100: TCLabel;
    DBCBExpContabil: TCDBComboBox;
    CLabel101: TCLabel;
    DBEidEmpresaExt: TCDBEdit;
    CLabel102: TCLabel;
    DBEidCadEmpresaExt: TCDBEdit;
    DBEidNire: TCDBEdit;
    CLabel103: TCLabel;
    DBEdtRegistro: TCDBEdit;
    CLabel104: TCLabel;
    DBEOrgaoExp: TCDBEdit;
    CLabel105: TCLabel;
    DBErg: TCDBEdit;
    CLabel106: TCLabel;
    DBEOrgaoExpRep: TCDBEdit;
    CLabel107: TCLabel;
    DBERgRep: TCDBEdit;
    CLabel108: TCLabel;
    DBEdescNaturalidade: TCDBEdit;
    CLabel109: TCLabel;
    CLabel110: TCLabel;
    lbl1: TCLabel;
    DBEorgaoFunc: TCDBEdit;
    DBErgFunc: TCDBEdit;
    DBEdescConjuge: TCDBEdit;
    CLabel111: TCLabel;
    TabAdmissao: TTabSheet;
    CGroupBox30: TCGroupBox;
    CLabel88: TCLabel;
    CLabel89: TCLabel;
    CLabel90: TCLabel;
    CLabel91: TCLabel;
    CLabel92: TCLabel;
    CLabel93: TCLabel;
    CLabel94: TCLabel;
    CLabel95: TCLabel;
    CLabel96: TCLabel;
    CLabel97: TCLabel;
    CLabel98: TCLabel;
    CLabel99: TCLabel;
    DBEdtAdmissao: TCDBEdit;
    CLookUp7: TCLookUp;
    DBEidTipoAdmissao: TCDBEdit;
    CLookUp6: TCLookUp;
    DBEidDepartamento: TCDBEdit;
    DBCKoperador: TCDBCheckBox;
    DBEvlSalarioMes: TCDBEdit;
    DBEvlSalarioHora: TCDBEdit;
    DBCKvalerefeicao: TCDBCheckBox;
    DBCKvaletransporte: TCDBCheckBox;
    DBEdescEmpregoAnterior: TCDBEdit;
    DBEfoneEmpregoAnterior: TCDBEdit;
    DBEdtSaida: TCDBEdit;
    DBMdescMotivoSaida: TCDBMemo;
    DBEdtDemissao: TCDBEdit;
    DBCBstFuncionario: TCDBComboBox;
    DBEidFuncao: TCDBEdit;
    LookFuncao: TCLookUp;
    CLabel112: TCLabel;
    DBEserieCTPS: TCDBEdit;
    LookdescCadEmpresaF: TCLookUp;
    LookdescAbreviada: TCLookUp;
    DBEidCadEmpresa: TCDBEdit;
    DBEidEmpresaF: TCDBEdit;
    CLabel113: TCLabel;
    CLabel114: TCLabel;
    DBEdescFuncaoAnterior: TCDBEdit;
    CLabel115: TCLabel;
    DBEdescReligiao: TCDBEdit;
    DBRGtpConta: TCDBRadioGroup;
    CLabel116: TCLabel;
    DBEdescTitular: TCDBEdit;
    CLabel117: TCLabel;
    DBEidCnpjCpfTitular: TCDBEdit;
    procedure BtnPesquisaCCliClick(Sender: TObject);
    procedure dsContaClienteStateChange(Sender: TObject);
    procedure BtnSalvarCCliClick(Sender: TObject);
    procedure CBitBtn4Click(Sender: TObject);
    procedure CBitBtn2Click(Sender: TObject);
    procedure BtnExcluir2Click(Sender: TObject);
    procedure DBEmascaraContabilKeyPress(Sender: TObject; var Key: Char);
    procedure DBEmascaraContabilExit(Sender: TObject);
    procedure dspEmpresaContabilBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspConfigContabilBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnValidaInscricaoClick(Sender: TObject);
    procedure GravaNivel;
    procedure DBEcep2Exit(Sender: TObject);
    procedure DBEcepExit(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure cdsCadAdicional2AfterEdit(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidCnpjCpf2Exit(Sender: TObject);
    procedure DBEidCadAdicionalExit(Sender: TObject);
    procedure BtnSalvarCliClick(Sender: TObject);
    procedure cdsCadAdicionalAfterScroll(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure dsCadAdicionalStateChange(Sender: TObject);
    procedure DBEidCnpjCpfExit(Sender: TObject);
    procedure cdsCadAdicionalAfterInsert(DataSet: TDataSet);
    procedure dspCadAdicionalBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBEidCadGeralExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    constructor create (Formulario: TComponent; Parametro: Array of String);
    procedure BtnSalvarCtaClick(Sender: TObject);
    procedure dsContaBancoStateChange(Sender: TObject);
    procedure DBEidContaExit(Sender: TObject);
    procedure cdsContaBancoAfterInsert(DataSet: TDataSet);
    procedure dsCadGeralSegmentoStateChange(Sender: TObject);
    procedure DBEidSegmentoExit(Sender: TObject);
    procedure BtnSalvarSegClick(Sender: TObject);
    procedure BtnCarregaClick(Sender: TObject);
    procedure BtnCarregaLogoClick(Sender: TObject);
    procedure cdsFuncionarioAfterInsert(DataSet: TDataSet);
    procedure DBEdtDemissaoExit(Sender: TObject);
    procedure DBEdtDemissaoEnter(Sender: TObject);
    procedure DBEidEmpresaFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfigLookEmpresa;
    procedure DBEidCnpjCpfTitularEnter(Sender: TObject);
    procedure DBEidCnpjCpfTitularExit(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
  public
    { Public declarations }
    cliente, empresa, contabil, funcionario : boolean;

  end;
var
  frmCadGeral: TfrmCadGeral;

implementation

uses uFuncao, uCadCidade, uFrmPrincipal, uFrmPesCnpj, uDmPadrao,
  uFrmPesContaCliente, uDmFind, uFrmPesEmpFiscal;

{$R *.dfm}

procedure TfrmCadGeral.actCancelarExecute(Sender: TObject);
begin
  inherited;
  if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    cdsCadAdicional2.Cancel;
end;

procedure TfrmCadGeral.actExcluirExecute(Sender: TObject);
begin
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('dtAlteracao').AsDateTime := date;
  inherited;
end;

procedure TfrmCadGeral.actNovoExecute(Sender: TObject);
begin
  cdsCadAdicional2.Append;
  inherited;
end;

procedure TfrmCadGeral.actSalvarExecute(Sender: TObject);
var
  sql : string;
  usa_faixa : boolean;
  cdIni, cdFim, cdGerado : integer;
begin
  // Inicia o controle de transação
//  frmPrincipal.erro := 0;
  //marca a transação
//  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    sql := 'SELECT * FROM ConfigFinanc WHERE idEmpresa = ' + frmPrincipal.idEmpresa; //SEMPRE VERIFICARÁ A FAIXA NA EMPRESA 1
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      usa_faixa := FieldByName('cadastroFaixa').AsString = 'S';
      cdIni := FieldByName('idCadIni').AsInteger;
      cdFim := FieldByName('idCadFim').AsInteger;

      if cdIni = 0 then
        cdIni := 1;

      if cdFim = 0 then
        cdFim := 99999999;
      if (usa_faixa) and (trim(DBEidCadGeral.Text) = '') then //se está configurado para usar faixa vai atribuir o código conforme a faixa
      begin
        sql := 'SELECT MAX(idCadGeral) idCadGeral FROM CadGeral WHERE idCadGeral BETWEEN ' + IntToStr(cdIni) + ' AND ' + IntToStr(cdFim);
        cdGerado := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idCadGeral').AsInteger;
        if cdGerado = 0 then
          cdGerado := cdIni
        else
          cdGerado := cdGerado + 1;
        cdsPadrao.FieldByName('idCadGeral').AsInteger := cdGerado;
      end;
    end;

    if cdsCadAdicional.State in [dsInsert, dsEdit] then
      cdsCadAdicional.Cancel;

    if cdsLogo.ChangeCount > 0 then
      cdsLogo.ApplyUpdates(0);
    if cdsContaBanco.State in [dsInsert, dsEdit] then
      cdsContaBanco.Cancel;

    if cdsCadGeralSegmento.State in [dsInsert, dsEdit] then
      cdsCadGeralSegmento.Cancel;

    //Trata para ver se deixou uma conta pelo menos como padrão
    if cdsContaBanco.Active then
    begin
      cdsContaBanco.First;
      if cdsContaBanco.RecordCount = 1 then
        if cdsContaBanco.FieldByName('padrao').AsString <> 'S' then
        begin
          cdsContaBanco.Edit;
          cdsContaBanco.FieldByName('padrao').AsString := 'S';
          cdsContaBanco.Post;
        end;
    end;

    //se estiver inserindo promove as mudanças no cadastro geral
    if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    begin
      if trim(cdsCadAdicional2.FieldByName('idCadAdicional').AsString) = '' then
        cdsCadAdicional2.FieldByName('idCadAdicional').AsString := '1';
      if trim(cdsCadAdicional2.FieldByName('stCadAdicional').AsString) = '' then
        cdsCadAdicional2.FieldByName('stCadAdicional').AsString := cdsPadrao.FieldByName('stCadGeral').AsString;

      cdsPadrao.FieldByName('idCnpjCpf').AsString := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
    end;
    if Trim(cdsPadrao.FieldByName('dtCadastro').AsString) = '' then
      cdsPadrao.FieldByName('dtCadastro').AsDateTime := date;
    cdsPadrao.FieldByName('dtAlteracao').AsDateTime := date;

    if cdsConfigContabil.State in [dsInsert, dsEdit] then
    begin
      if not DBEmascaraContabil.ReadOnly then
        GravaNivel;
      if ((cdsConfigContabil.FieldByName('idCadGeral').IsNull)
      or (cdsConfigContabil.FieldByName('idCadGeral').AsInteger = 0)) then
        cdsConfigContabil.FieldByName('idCadGeral').AsInteger := cdsPadrao.FieldByName('idCadGeral').AsInteger;
      cdsConfigContabil.Post;
    end;

    if empresa then
      cdsPadrao.FieldByName('Empresa').AsString := 'S'
    else
      if trim(cdsPadrao.FieldByName('Empresa').AsString) = '' then
        cdsPadrao.FieldByName('Empresa').AsString := 'N';

     GravaChave(1, '', nil);

    if cdsCadAdicional2.FieldByName('idCadGeral').AsInteger = 0 then
      cdsCadAdicional2.FieldByName('idCadGeral').AsInteger := StrToInt(DBEidCadGeral.Field.AsString);
    if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    begin
      cdsCadAdicional2.FieldByName('stCadAdicional').AsString := cdsPadrao.FieldByName('stCadGeral').AsString;
      cdsCadAdicional2.Post;
    end;

    if cdsContaCliente.State in [dsInsert, dsEdit] then
    begin
      if cdsContaCliente.FieldByName('idCadGeral').AsInteger = 0 then
        cdsContaCliente.FieldByName('idCadGeral').AsInteger := StrToInt(DBEidCadGeral.Field.AsString);
      cdsContaCliente.Post;
    end;

    inherited;
    DBEidCadGeralExit(DBEidCadGeral);
    DBEidCnpjCpfExit(DBEidCnpjCpf);

    //grava novos registros para tabela de pendencias
    GravaIntegracao('CadAdicional', 'idCadGeral;idCadAdicional', cdsCadAdicional.FieldByName('idCadGeral').AsString+ ';' + cdsCadAdicional.FieldByName('idCadAdicional').AsString, 'I', 'AGUARDANDO');

    if not (cdsContaBanco.FieldByName('idConta').AsString = '') then
      GravaIntegracao('CadGeralConta', 'idCadGeral;idConta', cdsPadrao.FieldByName('idCadGeral').AsString + ';' + cdsContaBanco.FieldByName('idConta').AsString, 'I', 'AGUARDANDO');

  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
//      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
//  if frmPrincipal.erro = 0 then
//    dmPadrao.dbConexao.CommitFreeAndNil(t)
//  else
//    dmPadrao.dbConexao.RollbackFreeAndNil(t);

  if cdsCadAdicional.State in [dsInsert, dsEdit] then
    cdsCadAdicional.Cancel;
  if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    cdsCadAdicional2.Cancel;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.Post;

end;

procedure TfrmCadGeral.BtnCarregaClick(Sender: TObject);
var
  ImgJpg : TJPEGImage;
begin
  inherited;
  AbreLogo.Execute;
  ImgJpg := TJPEGImage.Create;
  if trim(AbreLogo.FileName) <> '' then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    ImgJpg.LoadFromFile(AbreLogo.FileName);
    Clipboard.Assign(ImgJpg);
//    DBimgFoto.Picture.Assign(ImgJpg);
    DBimgLogo.PasteFromClipboard;
  end;
  ImgJpg.Free;
end;

procedure TfrmCadGeral.BtnCarregaLogoClick(Sender: TObject);
var
  ImgJpg : TJPEGImage;
begin
  inherited;
  AbreLogo.Execute;
  ImgJpg := TJPEGImage.Create;
  if trim(AbreLogo.FileName) <> '' then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    ImgJpg.LoadFromFile(AbreLogo.FileName);
    Clipboard.Assign(ImgJpg);
//    DBimgFoto.Picture.Assign(ImgJpg);
    if not (cdsLogo.State in [dsEdit, dsInsert]) then
      if cdsLogo.IsEmpty then
      begin
        cdsLogo.Append;
        cdsLogo.FieldByName('idCadGeral').AsString := DBEidCadGeral.Field.AsString;
        cdsLogo.FieldByName('idCadAdicional').AsString := DBEidCadAdicional.Field.AsString;
      end
      else
        cdsLogo.Edit;

    DBLogoFilial.PasteFromClipboard;
    cdsLogo.Post;
  end;
  ImgJpg.Free;
end;

procedure TfrmCadGeral.BtnExcluir2Click(Sender: TObject);
var
  msg : string;
begin
  EDpar.text:='PG';

  if trim(DBEidEmpresaOri.Field.AsString) <> '' then
  begin
    msg := FrmPrincipal.ExecutaSQLRet([DBEidEmpresaOri,DBEidCadGeral,EDpar],'spImportaDados','').FieldByName('msg').AsString;
    if msg = 'OK' then
      messagedlg('Dados Importados com sucesso !',mtConfirmation, [mbOk], 0)
    else
      messagedlg(msg, mtWarning, [mbOk], 0);
  end
  else
  begin
    messagedlg('É necessario que se informe a Empresa de Origem !',mtConfirmation, [mbOk], 0);
    DBEidEmpresaOri.SetFocus;
    exit;
  end;

end;

procedure TfrmCadGeral.BtnPesquisaCCliClick(Sender: TObject);
begin
  inherited;
  funcao.AbreFrm(TfrmPesContaCliente, TForm(frmPesContaCliente));
end;

procedure TfrmCadGeral.BtnSalvarCCliClick(Sender: TObject);
begin
  inherited;
  cdsContaCliente.ReadOnly := false;
  //se for o botão excluir é para cancelar
  if (Sender as TCBitBtn).Name = 'BtnExcluirCli' then
  begin
    if not (cdsContaCliente.State in [dsInsert, dsEdit]) then
      cdsContaCliente.Edit;
    funcao.UpdateChave(cdsContaCliente, chave);
    exit;
  end;
  funcao.GravaSec(chave, cdsContaCliente, BtnSalvarCCli, BtnCancelarCCli, BtnExcluirCCli, BtnNovoCCli, (Sender as TCBitBtn), '');
  DBEidEmpresa.SetFocus;
end;

procedure TfrmCadGeral.BtnSalvarCliClick(Sender: TObject);
begin
  inherited;
  cdsCadAdicional.ReadOnly := false;
  //se for o botão excluir é para cancelar
  if (Sender as TCBitBtn).Name = 'BtnExcluirCli' then
  begin
    if not (cdsCadAdicional.State in [dsInsert, dsEdit]) then
      cdsCadAdicional.Edit;
    cdsCadAdicional.FieldByName('stCadAdicional').AsString := situacaoX;
    funcao.UpdateChave(cdsCadAdicional, chave);
    exit;
  end
  else
    if ((Sender as TCBitBtn).Name = 'BtnSalvarCli') then
    begin
      if cdsCadAdicional.FieldByName('stCadAdicional').AsString = situacaoX then
        if messagedlg('Deseja reativar o cadastro!', mtconfirmation, [mbyes, mbno], 0) = mryes then
          cdsCadAdicional.FieldByName('stCadAdicional').AsString := situacaoA;
      if trim(cdsCadAdicional.FieldByName('stCadAdicional').AsString) = '' then
        cdsCadAdicional.FieldByName('stCadAdicional').AsString := situacaoA;
//      cdsCadAdicional.FieldByName('idCnpjCpf').AsString := funcao.TiraMascara(cdsCadAdicional.FieldByName('idCnpjCpf').AsString);        
    end; //fim do if ((Sender as TCBitBtn).Name = 'BtnSalvarCli') then

  funcao.GravaSec(chave, cdsCadAdicional, BtnSalvarCli, BtnCancelarCli, BtnExcluirCli, BtnNovoCli, (Sender as TCBitBtn), 'idCadAdicional');
  DBEidCadAdicional.SetFocus;
end;

procedure TfrmCadGeral.BtnSalvarCtaClick(Sender: TObject);
var
  idConta : integer;
begin
  inherited;
  funcao.GravaSec(chave, cdsContaBanco, BtnSalvarCta, BtnCancelarCta, BtnExcluirCta, BtnNovoCta, (Sender as TCBitBtn), 'idConta');
  if (Sender as TCBitBtn).Name = 'BtnSalvarCta' then
  begin
    //verifica se as demais contas não estão com o padrão marcado
    if cdsContaBanco.FieldByName('padrao').AsString = 'S' then
    begin
      with cdsContaBanco do
      begin
        idConta := cdsContaBanco.FieldByName('idConta').AsInteger;
        First;
        while not eof do
        begin
          if (FieldByName('padrao').AsString = 'S') and (FieldByName('idConta').AsInteger <> idConta)  then
          begin
            Edit;
            FieldByName('padrao').AsString := 'N';
            Post;
          end;
          Next;
        end;
      end;  // fim do    with cdsContaBanco do
      cdsContaBanco.ApplyUpdates(0);
    end; //fim do if cdsContaBanco.FieldByName('padrao').AsString = 'S' then
    BtnNovoCta.Click;
  end; //if (Sender as TCBitBtn).Name = 'BtnSalvarCta' then

  DBEidConta.SetFocus;
end;

procedure TfrmCadGeral.BtnSalvarSegClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCadGeralSegmento, BtnSalvarSeg, BtnCancelarSeg, BtnExcluirSeg, BtnNovoSeg, (Sender as TCBitBtn), 'idSegmento');
  if (Sender as TCBitBtn).Name = 'BtnSalvarSeg' then
    BtnNovoSeg.Click;
  DBEidSegmento.SetFocus;
end;

procedure TfrmCadGeral.btnValidaInscricaoClick(Sender: TObject);
var
  insc, estado : string;
begin
  inherited;
  if (sender as TBitBtn).Name = 'btnValidaInscricao' then
  begin
    insc := DBEidInscEstadual.Text;
    estado := trim(LookEstado2.Caption);
  end
  else
  begin
    insc := DBEidInscEstadual2.Field.AsString;
    estado := trim(LookEstado.Caption);
  end;
  if (trim(insc) = '') or (trim(estado) = '') then
  begin
    messagedlg('Você deve informar a inscrição e o estado!', mtwarning, [mbok], 0);
    exit;
  end;
  if not funcao.ChkInscEstadual(funcao.TiraMascara(trim(insc)), estado) then
    ShowMessage('Inscrição Estadual Inválida!!')
  else
    ShowMessage('Inscrição Estadual OK !!');
end;


procedure TfrmCadGeral.CBitBtn2Click(Sender: TObject);
var
msg : string;
begin
  EDpar.text:='PF';

   if trim(DBEidEmpresaOri.Field.AsString) <> '' then
  begin
    msg := FrmPrincipal.ExecutaSQLRet([DBEidEmpresaOri,DBEidCadGeral,EDpar],'spImportaDados','').FieldByName('msg').AsString;
    if msg = 'OK' then
       messagedlg('Dados Importados com sucesso !',mtConfirmation, [mbOk], 0)
    else
      messagedlg(msg, mtWarning, [mbOk], 0);
  end
  else
  begin
    messagedlg('É necessario que se informe a Empresa de Origem !',mtConfirmation, [mbOk], 0);
    DBEidEmpresaOri.SetFocus;
    exit;
  end;

end;

procedure TfrmCadGeral.CBitBtn4Click(Sender: TObject);
var
  msg, sql : string;
  ok : boolean;
begin
  EDpar.text:= 'CG';

  if trim(DBEidEmpresaOri.Field.AsString) <> '' then
  begin
    sql := 'SELECT COUNT(*) Qtde FROM Gerencial WHERE idEmpresa = ' + DBEidCadGeral.Field.AsString;

    ok := true;
    if FrmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('Qtde').AsInteger > 0 then
      if messagedlg('Já existe plano na empresa de destino! Deseja sobrepor?', mtconfirmation, [mbyes,mbno], 0, mbno) = mrno then
        ok := false;
    if ok then
    begin
      msg := FrmPrincipal.ExecutaSQLRet([DBEidEmpresaOri,DBEidCadGeral,EDpar],'spImportaDados','').FieldByName('msg').AsString;
      if (msg = 'OK') then
         messagedlg('Dados Importados com sucesso !',mtConfirmation, [mbOk], 0)
      else
        messagedlg(msg, mtWarning, [mbOk], 0);
    end;
  end
  else
  begin
    messagedlg('É necessario que se informe a Empresa de Origem !',mtConfirmation, [mbOk], 0);
    DBEidEmpresaOri.SetFocus;
    exit;
  end;

end;

procedure TfrmCadGeral.cdsCadAdicional2AfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TfrmCadGeral.cdsCadAdicionalAfterInsert(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  //solução para sugerir os dados do cadastro principal
  if DataSet.Name = 'cdsCadAdicional' then
  begin
    for i := 0 to cdsCadAdicional.FieldDefs.Count - 1 do
      cdsCadAdicional.FieldByName(cdsCadAdicional.FieldDefs[i].DisplayName).ReadOnly := false;

    cdsCadAdicional.FieldByName('descCadAdicional').AsString := cdsCadAdicional2.FieldByName('descCadAdicional').AsString;
    cdsCadAdicional.FieldByName('descAbreviada').AsString := cdsCadAdicional2.FieldByName('descAbreviada').AsString;
    cdsCadAdicional.FieldByName('idCnpjCpf').AsString := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
    cdsCadAdicional.FieldByName('idCidade').AsString := cdsCadAdicional2.FieldByName('idCidade').AsString;
    cdsCadAdicional.FieldByName('fone').AsString := cdsCadAdicional2.FieldByName('fone').AsString;
    cdsCadAdicional.FieldByName('fax').AsString := cdsCadAdicional2.FieldByName('fax').AsString;
    cdsCadAdicional.FieldByName('celular').AsString := cdsCadAdicional2.FieldByName('celular').AsString;
    cdsCadAdicional.FieldByName('email').AsString := cdsCadAdicional2.FieldByName('email').AsString;

  end;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  if not (cdsCadAdicional2.State in [dsInsert, dsEdit]) then
    cdsCadAdicional2.Edit;

end;

procedure TfrmCadGeral.cdsCadAdicionalAfterScroll(DataSet: TDataSet);
var
  i : integer;
  read : boolean;
begin
  inherited;
  with cdsCadAdicional do
  begin
    if FieldByName('idCadAdicional').AsInteger = 1 then
      read := true
    else
      read := false;
    //para atribuir somente aos campos
    for i := 0 to FieldDefs.Count - 1 do
    if FieldDefs[i].DisplayName <> 'idCadAdicional' then
       FieldByName(FieldDefs[i].DisplayName).ReadOnly := read;
    if FieldByName('idCadAdicional').AsInteger > 0 then
    begin
      cdsLogo.Active := false;
      cdsLogo.CommandText := 'SELECT * FROM CadAdicionalLogo WHERE idCadGeral = ' + DBEidCadGeral.Field.AsString +
         ' AND idCadAdicional = ' + FieldByName('idCadAdicional').AsString;
      cdsLogo.Active := true;
    end;
  end;
end;

procedure TfrmCadGeral.cdsContaBancoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsContaBanco.FieldByName('stConta').AsString := 'ATIVO';
  cdsContaBanco.FieldByName('padrao').AsString := 'N';
  cdsContaBanco.FieldByName('tpConta').AsString := 'C';
  cdsContaBanco.FieldByName('descTitular').AsString := cdsCadAdicional2.FieldByName('descCadAdicional').AsString;
  cdsContaBanco.FieldByName('idCnpjCpfTitular').AsString := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
end;

procedure TfrmCadGeral.cdsFuncionarioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  cdsFuncionario.FieldByName('stFuncionario').AsString := 'ATIVO';
  cdsFuncionario.FieldByName('fumante').AsString := 'N';
  cdsFuncionario.FieldByName('bebe').AsString := 'N';
  cdsFuncionario.FieldByName('segurovida').AsString := 'N';
  cdsFuncionario.FieldByName('conducaopropria').AsString := 'N';
  cdsFuncionario.FieldByName('valerefeicao').AsString := 'N';
  cdsFuncionario.FieldByName('valetransporte').AsString := 'N';
  cdsFuncionario.FieldByName('operador').AsString := 'N';
end;

procedure TfrmCadGeral.ConfigLookEmpresa;
begin
  //configura os lookups de empresa do funcionário
  LookdescCadEmpresaF.AlternateSQL.Clear;
  LookdescCadEmpresaF.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');

end;

constructor TfrmCadGeral.create(Formulario: TComponent;
  Parametro: array of String);
var
  i : integer;
begin
  inherited create(formulario);
  empresa := false;
  cliente := false;
  contabil := false;
  funcionario := false;

  for i := 0 to high(Parametro) do
  begin
    if Parametro[i] = 'EMPRESA' then
      empresa := true;
    if Parametro[i] = 'CLIENTE' then
      cliente := true;
    if Parametro[i] = 'CONTABIL' then
      contabil := true;
    if Parametro[i] = 'FUNCIONARIO' then
      funcionario := true;

  end;

  if empresa then
  begin
    TabAdicional.Caption := 'Dados da Empresa';
    Caption := 'Cadastro de Empresas';
  end
  else
  if cliente then
  begin
    TabAdicional.Caption := 'Dados do Cliente/Fornecedor';
    Caption := 'Cadastro de Clientes/Fornecedores';
//    TabAdicional.TabVisible := false;
  end
  else
    if funcionario then
      Caption := 'Cadastro de Funcionários';

  TabAdicional.TabVisible := not funcionario;
  TabContabil.TabVisible := contabil or empresa;
  TabImportar.TabVisible := empresa;
  TabContGerencial.TabVisible := cliente;
  TabContaBanco.TabVisible :=cliente or funcionario;
  TabSegmento.TabVisible :=cliente;
  TabFuncionario.TabVisible := funcionario;
  TabAdmissao.TabVisible := funcionario;
end;

procedure TfrmCadGeral.DBEcep2Exit(Sender: TObject);
begin
  inherited;
  if cdsCadAdicional.state in [dsInsert, dsEdit] then
    cdsCadAdicional.FieldByName('cep').AsString := funcao.Mascara(cdsCadAdicional.FieldByName('cep').AsString, 0, '');
end;

procedure TfrmCadGeral.DBEcepExit(Sender: TObject);
begin
  inherited;
  if cdsCadAdicional2.state in [dsInsert, dsEdit] then
    cdsCadAdicional2.FieldByName('cep').AsString := funcao.Mascara(cdsCadAdicional2.FieldByName('cep').AsString, 0, '');
end;

procedure TfrmCadGeral.DBEdtDemissaoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim(DBEdtDemissao.Field.AsString);
end;

procedure TfrmCadGeral.DBEdtDemissaoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim(DBEdtDemissao.Field.AsString) then
    if trim(DBEdtDemissao.Text) <> '' then
    begin
      if cdsFuncionario.FieldByName('stFuncionario').AsString <> 'DESLIGADO' then
        cdsFuncionario.FieldByName('stFuncionario').AsString := 'DESLIGADO';
    end;
end;

procedure TfrmCadGeral.DBEidCadAdicionalExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCadAdicional, [DBEidCadAdicional]);
end;

procedure TfrmCadGeral.DBEidCadGeralExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  //regra criada para o funcionamento dos cadastros centralizados
  if trim(DBEidCadGeral.Field.AsString) = '' then
  begin
    with cdsCadAdicional2 do
    begin
      Active := false;
      CommandText := 'SELECT * FROM CadAdicional WHERE 1 = 2';
      Active := True;
      Append;
      FieldByName('idCadGeral').AsInteger := 0;
      FieldByName('idCadAdicional').AsInteger := 1;
    end;
  end
  else
  with cdsCadAdicional2 do
  begin
    Active := false;
    CommandText := 'SELECT * FROM CadAdicional WHERE idCadGeral = ' + trim(funcao.TiraVirgula(DBEidCadGeral.Field.AsString)) +
                   ' AND idCadAdicional = 1';
    Active := True;
    if IsEmpty then
    begin
      Append;
      FieldByName('idCadGeral').AsInteger := StrToInt(funcao.TiraVirgula(DBEidCadGeral.Field.AsString));
      FieldByName('idCadAdicional').AsInteger := 1;
    end;
  end;

  AbreTabSecundaria;
end;

procedure TfrmCadGeral.DBEidCnpjCpf2Exit(Sender: TObject);
begin
  inherited;
  if (BtnCancelar.Focused) or (BtnFechar.Focused) or (BtnPesquisar.Focused) then
    exit;

  if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
    exit
  else
    if cdsEmpresaContabil.State in [dsEdit, dsInsert] then
    begin
      cdsEmpresaContabil.FieldByName('idCnpjCpfContador').AsString := funcao.Mascara(cdsEmpresaContabil.FieldByName('idCnpjCpfContador').AsString, 1, '');
      cdsEmpresaContabil.FieldByName('idCnpjCpfRepresentante').AsString := funcao.Mascara(cdsEmpresaContabil.FieldByName('idCnpjCpfRepresentante').AsString, 1, '');      
    end;
end;

procedure TfrmCadGeral.DBEidCnpjCpfExit(Sender: TObject);
var
  sql, prefixo, idCnpjCpf : string;
begin
  inherited;
  if (BtnCancelar.Focused) or (BtnFechar.Focused) or (BtnPesquisar.Focused) then
    exit;

  if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
    exit
  else
  begin //se existe verifica se já existe cadastro
    idCnpjCpf := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
    if not (cdsCadAdicional2.State in [dsInsert, dsEdit]) then
      cdsCadAdicional2.Edit;
    cdsCadAdicional2.FieldByName('idCnpjCpf').AsString := funcao.Mascara(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString, 1, '');
//    cdsLookUp.Active := false;
//    cdsLookUp.CommandText :=
    with frmPrincipal.ExecutaSQLRet([DBEidCnpjCpf], '', 'CadGeral') do
      if not IsEmpty then
      begin
        if (cdsPadrao.State = dsInsert) then
        begin
          Application.CreateForm(TFrmPesCnpj, FrmPesCnpj);
          //passa os parâmetros
          FrmPesCnpj.prefixo := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
          FrmPesCnpj.idCadGeral := funcao.TiraVirgula(DBEidCadGeral.Field.AsString);
          FrmPesCnpj.tem := true;
          //abre o form
          FrmPesCnpj.ShowModal;
          //busca o parâmetro de retorno
          if trim(FrmPesCnpj.idCadGeral) <> trim(funcao.TiraVirgula(DBEidCadGeral.Field.AsString)) then
          begin
            cdsPadrao.FieldByName('idCadGeral').AsString := FrmPesCnpj.idCadGeral;
            DBEidCadGeralExit(DBEidCadGeral);
          end;
        end;
      end
      else //já que não encontrou faz nova busca com o cnpj
      if empresa then
      begin
        //busca se não existe outro cnpj cadastrado com o mesmo prefixo
        if length(trim(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString)) = 18 then
        begin
          prefixo := copy(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString, 1, 10);
          sql := 'SELECT COUNT(*) conta FROM vCadClienteContabil WHERE idCliente <> ' + QuotedStr(funcao.TiraVirgula(DBEidCadGeral.Field.AsString)) +
                 ' AND idCnpjCpf LIKE ' + QuotedStr('%' + prefixo + '%');
          if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('conta').AsInteger > 0 then
          begin
            Application.CreateForm(TFrmPesCnpj, FrmPesCnpj);
            //passa os parâmetros
            FrmPesCnpj.prefixo := prefixo;
            FrmPesCnpj.idCadGeral := funcao.TiraVirgula(DBEidCadGeral.Field.AsString);
            FrmPesCnpj.tem := false;            
            //abre o form
            FrmPesCnpj.ShowModal;
            //busca o parâmetro de retorno
            if trim(FrmPesCnpj.idCadGeral) <> trim(funcao.TiraVirgula(DBEidCadGeral.Field.AsString)) then
            begin
              cdsPadrao.FieldByName('idCadGeral').AsString := FrmPesCnpj.idCadGeral;
              DBEidCadGeralExit(DBEidCadGeral);
              PagAbas.ActivePageIndex := 1;
              BtnNovoCli.Click;
              cdsCadAdicional.FieldByName('idCnpjCpf').AsString := idCnpjCpf;
              DBEidCnpjCpf2.SetFocus;
            end;
          end; // if ExecutaSQLRet([], '', sql).FieldByName('conta').AsInteger > 0 then
        end; //fim do if length(trim(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString)) = 18 then CNPJ
      end; //else do is empty


    end; // else da validação de cnpj if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
end;

procedure TfrmCadGeral.DBEidCnpjCpfTitularEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TfrmCadGeral.DBEidCnpjCpfTitularExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCustomEdit).Text then
    Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit);
end;

procedure TfrmCadGeral.DBEidContaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsContaBanco, [DBEidConta]);
end;

procedure TfrmCadGeral.DBEidEmpresaFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
    FrmPesEmpFiscal.ShowModal;
    with cdsFuncionario do
    begin
      if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
        FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
        DBEidCadEmpresa.SetFocus;
      end;
    end;
  end; // fim do filial
end;

procedure TfrmCadGeral.DBEidSegmentoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCadGeralSegmento, [DBEidSegmento]);
end;

procedure TfrmCadGeral.DBEmascaraContabilExit(Sender: TObject);
var
  i : integer;
  mascara, mascara1 : string;
  ant : boolean; //variável que irá determinar se o anterior é ponto
begin
  inherited;
  if (trim(DBEmascaraContabil.Text) <> '') and (cdsConfigContabil.State in [dsEdit, dsInsert]) then
  begin
    mascara := trim(DBEmascaraContabil.Text);
    if copy(mascara, Length(mascara), 1) = '.' then
      mascara := copy(mascara, 1, Length(mascara)-1);
    if copy(mascara, 1, 1) = '.' then
      mascara := copy(mascara, 2, Length(mascara));
    ant := false;
    mascara1 := '';
    for i := 1 to length(mascara) do
      if mascara[i] = '.' then
      begin
        if not ant then
          mascara1 := mascara1 + mascara[i];
        ant := true;
      end
      else
      begin
        mascara1 := mascara1 + mascara[i];
        ant := false;
      end;
    cdsConfigContabil.FieldByName('mascaraContabil').AsString := mascara1;
  end;
   
end;

procedure TfrmCadGeral.DBEmascaraContabilKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #27 then
    (Sender as TCustomEdit).Clear
  else
    if not (Key in ['*', '.', #8]) then
      Key := #0;
end;

procedure TFrmCadGeral.GravaNivel;
//Grava os níveis gerados pela máscara
var
  mascara, Nivel : string;
  nr_grau, i : integer;
begin
  idEmpresa.Text := funcao.TiraVirgula(DBEidCadGeral.Field.AsString);
  if (trim(DBEmascaraContabil.Text) <> '') then
  begin
    with frmPrincipal.ExecutaSQLRet([idEmpresa], '', 'PlanoContaNivel ') do
      if not IsEmpty then
      begin
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'DELETE FROM PlanoContaNivel WHERE tpPlanoConta = '+ quotedstr('G') + ' AND idEmpresa = ' + funcao.TiraVirgula(DBEidCadGeral.Field.AsString);
        cdsLookup.Execute;
        cdsLookup.Active := false;
      end;
    mascara := Trim(cdsConfigContabil.FieldByName('mascaraContabil').AsString);
    nr_grau := 0;
    for i := 0 to length(mascara) do
      if (mascara[i] = '.') or (i = length(mascara)) then
      begin
        nr_grau := nr_grau + 1;
        if i <> length(mascara) then
          Nivel := copy(mascara, 1, i-1)
        else
          Nivel := mascara;
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'INSERT INTO PlanoContaNivel VALUES(' + funcao.TiraVirgula(DBEidCadGeral.Field.AsString) + ', ' +
                                  inttostr(nr_grau) + ', ' + quotedstr('G') + ', ' + quotedstr(Nivel) + ')';
        cdsLookup.Execute;
        cdsLookup.Active := false;
      end;
  end;

  if (trim(DBEmascaraFiscal.Text) <> '') then
  begin
    with frmPrincipal.ExecutaSQLRet([idEmpresa], '', 'PlanoContaNivel ') do
      if not IsEmpty then
      begin
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'DELETE FROM PlanoContaNivel WHERE tpPlanoConta = '+ quotedstr('F') + ' AND idEmpresa = ' + funcao.TiraVirgula(DBEidCadGeral.Field.AsString);
        cdsLookup.Execute;
        cdsLookup.Active := false;
      end;
    mascara := Trim(cdsConfigContabil.FieldByName('mascaraFiscal').AsString);
    nr_grau := 0;
    for i := 0 to length(mascara) do
      if (mascara[i] = '.') or (i = length(mascara)) then
      begin
        nr_grau := nr_grau + 1;
        if i <> length(mascara) then
          Nivel := copy(mascara, 1, i-1)
        else
          Nivel := mascara;
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'INSERT INTO PlanoContaNivel VALUES(' + funcao.TiraVirgula(DBEidCadGeral.Field.AsString) + ', ' +
                                  inttostr(nr_grau) + ', ' + quotedstr('F') + ', ' + quotedstr(Nivel) + ')';
        cdsLookup.Execute;
        cdsLookup.Active := false;
      end;
  end;

end;

procedure TfrmCadGeral.dsCadAdicionalStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarCli, BtnCancelarCli, BtnExcluirCli, BtnNovoCli);
end;

procedure TfrmCadGeral.dsCadGeralSegmentoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCadGeralSegmento,BtnSalvarSeg, BtnCancelarSeg, BtnExcluirSeg, BtnNovoSeg);
end;

procedure TfrmCadGeral.dsContaBancoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsContaBanco,BtnSalvarCta, BtnCancelarCta, BtnExcluirCta, BtnNovoCta);
end;

procedure TfrmCadGeral.dsContaClienteStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsContaCliente,BtnSalvarCCli, BtnCancelarCCli, BtnExcluirCCli, BtnNovoCCli);
end;

procedure TfrmCadGeral.dspCadAdicionalBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
//  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspCadAdicional' then
      GeraAutoInc(DeltaDS, 'CadAdicional', 'idCadAdicional', chave);
  end;
end;

procedure TfrmCadGeral.dspConfigContabilBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspContaBanco' then
    begin
      GeraAutoInc(DeltaDS, 'CadGeralConta', 'idConta', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TfrmCadGeral.dspEmpresaContabilBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TfrmCadGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadGeral := nil;
end;

procedure TfrmCadGeral.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 9);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCadAdicional;
  Tabelas[2] := cdsCadAdicional2;
  Tabelas[3] := cdsEmpresaContabil;
  Tabelas[4] := cdsConfigContabil;
  Tabelas[5] := cdsContaCliente;
  Tabelas[6] := cdsContaBanco;
  Tabelas[7] := cdsCadGeralSegmento;
  Tabelas[8] := cdsFuncionario;
  chave[0] := DBEidCadGeral;
  foco := DBEidCadGeral;
  tab_chave := 'CadGeral';
  situacao := 'stCadGeral';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindCadGeral;
  Height := 484;
  Width := 634;
  cdsEmp.CreateDataSet;
  cdsEmp.Append;

end;

procedure TfrmCadGeral.FormShow(Sender: TObject);
begin
  if empresa then
    action := 'actCadEmpresa'
  else
    if funcionario then
      action := 'actCadFuncionario'
    else
      action := 'actCadCliente';

  inherited;
  PagAbas.ActivePageIndex := 0;
  Width := 641;
  ConfigLookEmpresa;

  BtnExcluir2.Visible := excluir;
end;

procedure TfrmCadGeral.PagAbasChange(Sender: TObject);
begin
  inherited;
  if ((cdsPadrao.State in [dsInsert]) or (trim(funcao.TiraVirgula(DBEidCadGeral.Field.AsString)) = '')) and (PagAbas.ActivePageIndex <> 0) then
  begin
    PagAbas.ActivePageIndex := 0;
    messagedlg('Voce deve primeiro gravar o cadastro principal!', mtinformation, [mbok], 0);
    exit;
  end;
  //definição do foco por aba
  if PagAbas.ActivePage = TabAbas then DBEidCnpjCpf.SetFocus;
  if PagAbas.ActivePage = TabAdicional then DBEidCadAdicional.SetFocus;

  if PagAbas.ActivePageIndex = 2 then
  begin
    FrmCadGeral.Height := 585;
    FrmCadGeral.Width := 740;
  end
  else
    if PagAbas.ActivePageIndex = 1 then
    begin
      Height := 569;
      Width := 695;
    end
    else
      if PagAbas.ActivePage = TabContGerencial then
        FrmCadGeral.Height :=  495
      else
        if PagAbas.ActivePage = TabContabil then
          FrmCadGeral.Height :=  449
        else
          if PagAbas.ActivePage = TabImportar then
            FrmCadGeral.Height :=  302
          else
            if PagAbas.ActivePage = TabFuncionario then
            begin
              FrmCadGeral.Height := 515;
            end
            else
              if PagAbas.ActivePage = TabAdmissao then
              begin
                FrmCadGeral.Height := 500;
              end;

end;

end.

