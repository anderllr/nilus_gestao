{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR OFF}
{$WARN CVT_WIDENING_STRING_LOST OFF}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit uFrmGeraSPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, CBitBtn, CPanelGradient, ExtCtrls,
  CLookUp, Mask, DBCtrls, CDBEdit, CLabel, ImgList, ActnList, CFind, DB,
  DBClient, Provider, SqlExpr, EditAlign, CEdit, cxShellBrowserDialog, CGroupBox,
  CDBRadioGroup, ACBrSpedFiscal, ACBrEFDBlocos, ACBrUtil, ACBrTXTClass, CCheckBox,
  CRadioGroup, CMemo, Grids, DBGrids, CDBGrid, DateUtils;

type
  TFrmSPED = class(TForm)
    Acao: TActionList;
    actFechar: TAction;
    actGerar: TAction;
    imgIcones: TImageList;
    PanBotoes: TCPanelGradient;
    BtnPesquisar: TCBitBtn;
    BtnGerar: TCBitBtn;
    Bevel1: TBevel;
    AbrePasta: TcxShellBrowserDialog;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    EDCaminho: TCEdit;
    BtnCaminho: TCBitBtn;
    CLabel1: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEData: TCDBEdit;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    Bevel3: TBevel;
    Bevel5: TBevel;
    BtnFechar: TCBitBtn;
    LookidInscEstadual: TCLookUp;
    CLabel11: TCLabel;
    cdsPadraomesAno: TStringField;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    DBEpar: TCDBEdit;
    cdsPadraopar: TStringField;
    cdsPadraoidFinalidade: TSmallintField;
    CBConcomitante: TCCheckBox;
    CRCodFinalidade: TCRadioGroup;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    CMTxt: TCMemo;
    cdsPadraodescCadEmpresa: TStringField;
    cdsPadraocnpj: TStringField;
    cdsPadraocpf: TStringField;
    cdsPadraouf: TStringField;
    cdsPadraoie: TStringField;
    cdsPadraoim: TStringField;
    cdsPadraosuframa: TStringField;
    cdsPadraocodmun: TStringField;
    CRIndMov: TCRadioGroup;
    cdsPadraodescFanstasia: TStringField;
    cdsPadraoEndereco: TStringField;
    cdsPadraoComplemento: TStringField;
    cdsPadraoBairro: TStringField;
    cdsPadraoFone: TStringField;
    cdsPadraoFax: TStringField;
    cdsPadraoemail: TStringField;
    cdsPadraonum: TStringField;
    cdsPadraocep: TStringField;
    cdsPadraosubsTributario: TStringField;
    cdsPadraotpAtividade: TStringField;
    cdsPadraoperfilApresentacao: TStringField;
    sdsEmpresaContabil: TSQLDataSet;
    cdsEmpresaContabil: TClientDataSet;
    dspEmpresaContabil: TDataSetProvider;
    cdsEmpresaContabilidCadGeral: TIntegerField;
    cdsEmpresaContabildescRepresentante: TStringField;
    cdsEmpresaContabilidCnpjCpfRepresentante: TStringField;
    cdsEmpresaContabilcargoRepresentante: TStringField;
    cdsEmpresaContabildescContador: TStringField;
    cdsEmpresaContabilidCnpjCpfContador: TStringField;
    cdsEmpresaContabilcrcContador: TStringField;
    cdsEmpresaContabilimgLogo: TBlobField;
    CRcodModelo: TCRadioGroup;
    cdsPadraoidProdDeposito: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidCultura: TIntegerField;
    procedure DBEidCadEmpresaExit(Sender: TObject);
    procedure DBEDataEnter(Sender: TObject);
    procedure DBEDataExit(Sender: TObject);
    procedure cdsLookUpAfterInsert(DataSet: TDataSet);
    procedure BtnCaminhoClick(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdtFinalExit(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fiscal : boolean;
    procedure LoadToMemo;
  public
    { Public declarations }
  end;

var
  FrmSPED: TFrmSPED;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoRelEmpresa, uFrmPesEmpFiscal;

{$R *.dfm}

procedure TFrmSPED.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmSPED.actGerarExecute(Sender: TObject);
const
strUNID: array[0..4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

var
  arq : TStrings;
  linha, valor, arquivo, compara, sql : string;
  mes, ano : string;
  di, mi, ai : Word;
  diai,mesi,anoi : string;
  diaf : string;
  i50,i54,i75,i88,i90, ordemNf, idNf,tam : integer;
  semSaidas, semEntradas : boolean;
  int0150, intc370, intc170 : Integer;
begin
  semSaidas := true;
  semEntradas := true;

 {$REGION 'Tratamento da data passada como parametro'}
  // Capturando o mes/ano informado ======================================
  if Pos('/', cdsPadrao.FieldByName('mesAno').AsString) = 0 then
  begin
    messagedlg('Mês/Ano Inválido!', mtwarning, [mbok] , 0);
    DBEData.SetFocus;
    exit;
  end;
  mes := copy(cdsPadrao.FieldByName('mesAno').AsString, 1, Pos('/', cdsPadrao.FieldByName('mesAno').AsString)-1);
  if (StrToInt(mes) > 12) or (StrToInt(mes) < 1) then
  begin
    messagedlg('Mês/Ano Inválido!', mtwarning, [mbok] , 0);
    exit;
  end;
  ano := copy(cdsPadrao.FieldByName('mesAno').AsString, Pos('/', cdsPadrao.FieldByName('mesAno').AsString)+1, 4);
  cdsPadrao.FieldByName('dtInicial').AsString := '01/' + mes + '/' + ano;
  // Retendo o ultimo dia do mes
  diaf := IntToStr(funcao.UltDiaDoMes(cdsPadrao.FieldByName('dtInicial').AsDateTime));

// --------------------------------------------------------------------------------------------------------
// Para verificar se o dia tem dois digitos =============================================
  DecodeDate(StrToDate(cdsPadrao.FieldByName('dtInicial').AsString),ai, mi,di);
  diai := IntToStr(di);
  mesi := IntToStr(mi);
  anoi := IntToStr(ai);
  if ((Length(IntToStr(di))) < 2 ) then
  begin
    diai := '0' + diai;
  end;
  if ((Length(IntToStr(mi))) < 2) then
  begin
    mesi := '0' + mesi;
  end;
// ======================================================================================
// Atribuindo os valores aos fields no dataset ========================================
  cdsPadrao.FieldByName('dtInicial').AsString := Format('%s/%s/%s',[diai, mesi, anoi]);
  cdsPadrao.FieldByName('dtFinal').AsString := Format('%s/%s/%s',[diaf, mesi, anoi]);
// ====================================================================================
 {$ENDREGION 'Tratamento da data passada como parametro'}

  ACBrSPEDFiscal1.Path := EDCaminho.Text;
//  cbConcomitante.Checked := false;
//  if cbConcomitante.Checked then
  with ACBrSPEDFiscal1 do
  begin
    IniciaGeracao;
  end;// Fim do with ACBrSPEDFiscal1 do
  LoadToMemo;
 {$REGION 'Bloco 0000'}
  with ACBrSpedFiscal1.Bloco_0 do
  begin
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscalSPED') do
    begin
{$REGION 'Registro0000'}
      with Registro0000New do
      begin
        DT_INI      := StrToDate(cdsPadrao.FieldByName('dtInicial').AsString);
        DT_FIN      := StrToDate(cdsPadrao.FieldByName('dtFinal').AsString);
        if IntToStr(YearOf(cdsPadraodtFinal.AsDateTime)) = '2010'  then
          COD_VER := vlVersao102;
        if IntToStr(YearOf(cdsPadraodtFinal.AsDateTime)) = '2011' then
          COD_VER := vlVersao103;
        if CRCodFinalidade.Items[CRCodFinalidade.ItemIndex] = 'Remessa do arquivo original' then
          COD_FIN     := raOriginal
        else
          COD_FIN     := raSubstituto;
        NOME        := FieldByName('descCadEmpresa').AsString;
        if Length(trim(FieldByName('idCnpjCpf').AsString)) = 18 then
          CNPJ        := funcao.TiraMascara(FieldByName('idCnpjCpf').AsString)
        else
          CPF         := funcao.TiraMascara(FieldByName('idCnpjCpf').AsString);
        UF          := FieldByName('idEstado').AsString;
        IE          := FieldByName('idInscEstadual').AsString;
        if ((trim(valor) = 'NULL') OR (trim(valor) = '')) then
          IE          := 'ISENTO';
        COD_MUN     := FieldByName('codIbgeCid').AsInteger;
        IM          := FieldByName('idInscMunicipal').AsString;
        if (FieldByName('suframa').IsNull = true) then
          SUFRAMA     := ''
        else
          SUFRAMA     := FieldByName('suframa').AsString;
        if FieldByName('perfilApresentacao').AsString = 'A' then
          IND_PERFIL  := pfPerfilA;
        if FieldByName('perfilApresentacao').AsString = 'B' then
          IND_PERFIL  := pfPerfilB;
        if FieldByName('perfilApresentacao').AsString = 'C' then
          IND_PERFIL  := pfPerfilC;
        if FieldByName('tpAtividade').AsString = '0 - Industrial ou equiparado' then
          IND_ATIV    := atIndustrial
        else
          IND_ATIV    := atOutros;
      end;// FIm do with Registro0000New do
{$ENDREGION}
{$REGION 'Registro0001'}
      with Registro0001New do
      if CRIndMov.Items[CRIndMov.ItemIndex] = '0- Bloco com dados' then
        IND_MOV := imComDados
      else
        IND_MOV := imSemDados;
{$ENDREGION}
{$REGION 'Registro0005'}
      with Registro0005New do
      begin
        Fantasia   := FieldByName('descAbreviada').AsString;
        CEP        := funcao.TiraMascara(FieldByName('cep').AsString);
        ENDERECO   := FieldByName('endereco').AsString;
        NUM        := FieldByName('numero').AsString;
        COMPL      := FieldByName('complemento').AsString;
        BAIRRO     := FieldByName('bairro').AsString;
        FONE       := FieldByName('fone').AsString;
        FAX        := FieldByName('fax').AsString;
        EMAIL      := FieldByName('email').AsString;
      end;//Fim do with Registro0005New do
{$ENDREGION}
    end;
{$REGION 'Registro0015'}
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscalSPED') do
    begin
      with Registro0015New do
      begin
        UF_ST        := FieldByName('idEstado').AsString;
        IE_ST        := FieldByName('idInscEstadual').AsString;
      end;// Fim with Registro0015New do
    end;// Fim do Registro
{$ENDREGION}
{$REGION 'Registro0100'}
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaContabilSPED') do
    Begin
      with Registro0100New do
      begin
        NOME      := FieldByName('descContador').AsString;
        CPF       := funcao.TiraMascara(FieldByName('idCnpjCpfContador').AsString);
        CRC       := FieldByName('crcContador').AsString;
        if Length(trim(FieldByName('idCnpjCpf').AsString)) = 18 then
          CNPJ    := funcao.TiraMascara(FieldByName('idCnpjCpf').AsString)
        else
          CNPJ    := '';
      end;// Fim with Registro0100New do
    end;
{$ENDREGION}
    //Data Inicial e FInal
    DBEdtInicial.text := cdsPadrao.FieldByName('dtInicial').AsString;
    DBEdtFinal.text := cdsPadrao.FieldByName('dtFinal').AsString;
{$REGION 'Registro0150'}
    // Par para Notas
    cdsPadraopar.AsString := 'N';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    if (not IsEmpty) then
    begin
      First;
      while not Eof do
      begin
        with Registro0150New do
        begin
          COD_PART    := IntToStr(FieldByName('idCadastro').AsInteger);
          NOME        := FieldByName('descCadastro').AsString;
          COD_PAIS    := FieldByName('codIbgePais').AsString;
          if Length(trim(FieldByName('idCnpjCpfCad').AsString)) = 18 then
            CNPJ      := funcao.TiraMascara(FieldByName('idCnpjCpfCad').AsString)
          else
            CPF       := funcao.TiraMascara(FieldByName('idCnpjCpfCad').AsString);
          IE          := FieldByName('idInscEstadualCad').AsString;
          COD_MUN     := FieldByName('codIbgeCid').AsInteger;
//          if (FieldByName('suframa').IsNull = true) then
//            SUFRAMA   := ''
//          else
//            SUFRAMA   := FieldByName('suframa').AsString;
          ENDERECO    := FieldByName('endereco').AsString;
          NUM         := FieldByName('numero').AsString;
          COMPL       := FieldByName('complemento').AsString;
          BAIRRO      := FieldByName('bairro').AsString;
          int0150 := int0150 + 1;
          Next;
        end; // FIm with Registro0150New do
      end;// Fim do while not Eof do
    end; // Fim do Registro0150
{$ENDREGION}
{$REGION 'Registro0190'}
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ProdMedida') do
    Begin
      First;
      while not EOF do
      begin
        with Registro0190New do
        begin
          UNID :=  FieldByName('descAbreviada').AsString;
          DESCR := FieldByName('descProdMedida').AsString + UNID;
          Next;
        end;// Fim do with Registro0190New do
      end;// Fim do while not EOF do
    End;//Fim do Registro 0190
{$ENDREGION}
{$REGION 'Registro0200'}
    cdsPadraopar.AsString := 'P';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    begin
      First;
      while not EOF do
      begin
        with Registro0200New do
        begin
          COD_ITEM      := FieldByName('idProduto').AsString;
          DESCR_ITEM    := FieldByName('descProduto').AsString;
          //COD_BARRA     := 'Representação alfanumérico do código de barra do produto, se houver';
          //COD_ANT_ITEM  := 'Código anterior do item com relação à última informação apresentada.';
          UNID_INV      := FieldByName('descAbreviada').AsString;
          if FieldByName('descProdCategoria').AsString = 'PRODUTOS / PRODUCAO' then
            TIPO_ITEM :=  tiProdutoProcesso;
          if FieldByName('descProdCategoria').AsString = 'MATERIA PRIMA / CONSUMO' then
            TIPO_ITEM := tiMateriaPrima;
          if FieldByName('descProdCategoria').AsString = 'SERVICOS' then
            TIPO_ITEM := tiServicos;
          COD_NCM       := FieldByName('Ncm').AsString;
          //EX_IPI        := 'Código EX, conforme a TIPI';
          //COD_GEN       := 'Código do gênero do item, conforme a Tabela 4.2.1';
          //COD_LST       := 'Código do serviço conforme lista do Anexo I da Lei Complementar Federal nº 116/03.';
          ALIQ_ICMS     := FieldByName('prImposto').AsCurrency;
          Next;
        end;// Fim do with Registro0200New do
      end;// Fim do while not EOF do
    end;// Fim do Registro 0200
{$ENDREGION}
{$REGION 'Registro0400'}
    cdsPadraopar.AsString := 'O';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    begin
      First;
      while not EOF do
      Begin
        with Registro0400New do
        begin
          COD_NAT := FieldByName('idNatureza').AsString;
          DESCR_NAT := FieldByName('descNatureza').AsString;
          Next;
        end;// Fim do with Registro0400New do
      end;//Fim do while not EOF do
    end;// FIm do Registro 0400
{$ENDREGION}
{$REGION 'Registro0990'}
    with Registro0990 do
    begin
      QTD_LIN_0 := Registro0005Count + Registro0150Count + Registro0015Count + Registro0175Count + Registro0190Count + Registro0200Count + Registro0200Count + Registro0400Count;
    end;// Fim do Registro 0990
{$ENDREGION}
    if CBConcomitante.Checked then
    begin
      ACBrSPEDFiscal1.WriteBloco_0;
      LoadToMemo;
    end;
  end;
{$ENDREGION 'Bloco 0000'}
{$REGION 'Bloco C'}
  with ACBrSPEDFiscal1.Bloco_C do
  begin
{$REGION 'RegistroC001'}
    with RegistroC001New do
    if CRIndMov.Items[CRIndMov.ItemIndex] = '0- Bloco com dados' then
      IND_MOV := imComDados
    else
      IND_MOV := imSemDados;
{$ENDREGION}
{$REGION 'RegistroC100'}
    cdsPadraopar.AsString := 'P';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    Begin
      First;
      while not EOF do
      Begin
        with RegistroC100New do
        begin
          if FieldByName('Tipo').AsString = 'E' then
            IND_OPER := tpEntradaAquisicao
          else
            IND_OPER := tpSaidaPrestacao;
          IND_EMIT := edTerceiros;
          COD_PART := IntToStr(FieldByName('idCadastro').AsInteger);
          COD_MOD  :=  '55';
    //    COD_SIT  := '';
          SER      := FieldByName('idDocSerie').AsString;
          NUM_DOC  := FieldByName('idNf').AsString;
    //    CHV_NFE  := '';
          DT_DOC   :=  StrToDate(FieldByName('dtEmissao').AsString);
          DT_E_S   := FieldByName('dtEmissao').AsDateTime;
          VL_DOC   := FieldByName('vlNotaFiscal').AsCurrency;
    //    IND_PGTO := '';
          VL_DESC  := FieldByName('vlDesconto').AsCurrency;
    //    VL_ABAT_NT := '';
          VL_MERC  := FieldByName('vlBruto').AsCurrency;
    //    IND_FRT  :='';
    //    VL_SEG   := '';
          VL_OUT_DA  := FieldByName('vlOutras').AsCurrency;
          VL_BC_ICMS := FieldByName('vlBaseCalculo').AsCurrency;
    //    VL_ICMS    :='';
          VL_BC_ICMS_ST  := FieldByName('vlBaseTributaria').AsCurrency;
          VL_ICMS_ST := FieldByName('idStTributaria').AsCurrency;
    //    VL_IPI   :='';
          VL_PIS   := FieldByName('vlPis').AsCurrency;
          VL_COFINS  := FieldByName('vlCofins').AsCurrency;
    //    VL_PIS_ST  :='';
    //    VL_COFINS_ST :='';
          Next;
        end;// Fim do with RegistroC100New do
      end;// Fim do while not EOF do
    end;// Fim do Registro C100
{$ENDREGION}
{$REGION 'RegistroC170'}
    cdsPadraopar.AsString := 'P';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    begin
      First;
      while not EOF do
      begin
        with RegistroC170New do
        begin
          NUM_ITEM      := IntToStr(intc170);
          COD_ITEM      := FieldByName('idProduto').AsString;
          DESCR_COMPL   := FieldByName('descProduto').AsString;
          QTD           := FieldByName('qtProduto').AsCurrency;
          UNID          := FieldByName('descAbreviada').AsString;
          VL_ITEM       := FieldByName('vlBruto').AsCurrency;
          VL_DESC       := FieldByName('vlDesconto').AsCurrency;
    //    IND_MOV       := FieldByName('')
          CST_ICMS      := FieldByName('idStTributaria').AsString;
          CFOP          := FieldByName('idCfop').AsString;
    //    COD_NAT       := FieldByName('idNatureza').AsString;
          VL_BC_ICMS    := FieldByName('vlBaseCalculo').AsCurrency;
          ALIQ_ICMS     := FieldByName('prImposto').AsCurrency;
          VL_ICMS       := FieldByName('vlImposto').AsCurrency;
          VL_BC_ICMS_ST := FieldByName('vlBaseTributaria').AsCurrency;
    {//   ALIQ_ST       :='';
    //    VL_ICMS_ST    := '';
    //    IND_APUR      := '';
          CST_IPI       := '';
          COD_ENQ       := '';
          VL_BC_IPI     := '';
          ALIQ_IPI      := '';
          VL_IPI        := '';
          CST_IPI       := '';
          VL_BC_PIS     := '';
          ALIQ_PIS_R    := '';
          QUANT_BC_PIS  := '';
          ALIQ_PIS_PERC := '';
          VL_PIS        := '';
          VL_BC_COFINS  := '';
          ALIQ_COFINS_R := '';
          QUANT_BC_COFINS := '';
          ALIQ_COFINS_PERC := '';
          VL_COFINS     := '';
          COD_CTA       := '';   }
          intc170 := intc170 + 1;
          next;
        end;// Fim do with RegistroC170New do
      end;// Fim do while not EOF do
    end;// Fim do Registro C170
{$ENDREGION}
{$REGION 'RegistroC300'}
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscalSPED') do
    if FieldByName('perfilApresentacao').AsString = 'B' then
    begin
      cdsPadraopar.AsString := 'P';
      with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
      begin
        with RegistroC300New do
        begin
  //      COD_MOD  :=
          SER           := FieldByName('idDocSerie').AsString;
  //        SUB
          NUM_DOC_INI   := FieldByName('idNf').AsString;
          NUM_DOC_FIN   := FieldByName('idNf').AsString;
          DT_DOC        := FieldByName('dtEmissao').AsDateTime;
          VL_DOC        := FieldByName('vlNotaFiscal').AsCurrency;
          VL_PIS        := FieldByName('vlPis').AsCurrency;
          VL_COFINS     := FieldByName('vlCofins').AsCurrency;
        end;
      end;// Fim do with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    end;// Fim do Registro C300
{$ENDREGION}
{$REGION 'REgistroC310'}
    cdsPadraopar.AsString := 'N';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    begin
      First;
      while not EOF do
      begin
        if FieldByName('stNf').AsString = 'CANCELADA' then
        begin
          with RegistroC310New do
          NUM_DOC_CANC  := FieldByName('idNf').AsString;
        end;
        Next;
      end;// Fim do Registro C310
    end;
{$ENDREGION}
{$REGION 'RegistroC350'}
    cdsPadraopar.AsString := 'P';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    begin
      First;
      while not EOF do
      begin
        with RegistroC350New do
        begin
          ser         := FieldByName('idDocSerie').AsString;
    //    SUB_SER   := '';
          NUM_DOC     := FieldByName('idNf').AsString;
          DT_DOC      := FieldByName('dtEmissao').AsDateTime;
          CNPJ_CPF    := FieldByName('idCnpjCpf').AsString;
          VL_MERC     := FieldByName('vlBruto').AsCurrency;
          VL_DOC      := FieldByName('vlNotaFiscal').AsCurrency;
          VL_DESC     := FieldByName('vlDesconto').AsCurrency;
          VL_PIS      := FieldByName('vlPis').AsCurrency;
          VL_COFINS   := FieldByName('vlCofins').AsCurrency;
    //    COD_CTA   := '';
          next;
        end;// Fim do with RegistroC350New do
      end; //Fim do while not EOF do
    end;// Fim do Registro C350
{$ENDREGION}
{$REGION 'RegistroC370'}
    cdsPadraopar.AsString := 'P';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    begin
      First;
      while not EOF do
      Begin
        with RegistroC370New do
        begin
          NUM_ITEM    := IntToStr(intc370);
          COD_ITEM    := FieldByName('idProduto').AsString;
          QTD         := FieldByName('qtProduto').AsFloat;
          UNID        := FieldByName('descAbreviada').AsString;
          VL_ITEM     := FieldByName('vlBruto').AsCurrency;
          VL_DESC     := FieldByName('vlDesconto').AsCurrency;
          intc370     := intc370 + 1;
          Next;
        end;// Fim do with RegistroC370New do
      end;// Fim do while not EOF do
    end;// Fim do Registro C370
{$ENDREGION}
{$REGION 'RegistroC390'}
    cdsPadraopar.AsString := 'P';
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscaisSPED','') do
    begin
      First;
      while Not EOF do
      begin
        with RegistroC390New do
        begin
          CST_ICMS     := FieldByName('idStTributaria').AsString;
          CFOP         := FieldByName('idCfop').AsString;
          ALIQ_ICMS    := FieldByName('prImposto').AsCurrency;
      //  VL_OPR     := '';
          VL_ICMS       := FieldByName('vlImposto').AsCurrency;
          VL_RED_BC     := FieldByName('vlBaseTributaria').AsCurrency;
      //    COD_OBS     := '';
          next;
        end;// Fim do with RegistroC390New do
      end;// Fim do while no eof do
    end;// Fim do Registro C390
{$ENDREGION}
{$REGION 'RegistroC990'}
    with RegistroC990 do
    begin
      QTD_LIN_C := RegistroC100Count + RegistroC170Count + RegistroC190Count + RegistroC350Count +
      RegistroC370Count + RegistroC390Count;
    end;// Fim do with RegistroC990 do
{$ENDREGION}
    if CBConcomitante.Checked then
    begin
      ACBrSPEDFiscal1.WriteBloco_C(True);
      LoadToMemo;
    end;
  end;

{$ENDREGION 'Bloco C'}
{$REGION 'Bloco E'}
  //Inicia Bloco E
  with ACBrSPEDFiscal1.Bloco_E do
  begin
{$REGION 'RegistroE001'}
    with RegistroE001New do
    begin
      if CRIndMov.Items[CRIndMov.ItemIndex] = '0- Bloco com dados' then
        IND_MOV   := imComDados
      else
        IND_MOV   := imSemDados;
    end;
{$ENDREGION}
{$REGION 'RegistroE100'}
    with RegistroE100New do
    begin
      DT_INI      := StrToDate(cdsPadrao.FieldByName('dtInicial').AsString);
      DT_FIN      := StrToDate(cdsPadrao.FieldByName('dtFinal').AsString);
    end;
{$ENDREGION}
{$REGION 'RegistroE110'}
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal], 'spRelApuracaoIcms','') do
    Begin
      while not EOF do
      begin
        with RegistroE110New do
        begin
          VL_TOT_DEBITOS            := FieldByName('vlImposto').AsCurrency;
          VL_AJ_DEBITOS             := 0;
          VL_TOT_AJ_DEBITOS         := 0;
          VL_ESTORNOS_CRED          := 0;
          VL_TOT_CREDITOS           := FieldByName('vlImposto').AsCurrency;
          VL_AJ_CREDITOS            := 0;
          VL_TOT_AJ_CREDITOS        := 0;
          VL_ESTORNOS_DEB           := 0;
          VL_SLD_CREDOR_ANT         := 0;
          VL_SLD_APURADO            := 0;
          VL_TOT_DED                := 0;
          VL_ICMS_RECOLHER          := FieldByName('vlCreDeb').AsCurrency;
          VL_SLD_CREDOR_TRANSPORTAR := 0;
    //      DEB_ESP                 := '';
         Next;
        end;// Fim do with RegistroE110New do
      end;// Fim do while not EOF do
    End;// FIm do Registro E110
{$ENDREGION}
{$REGION 'RegistroE990'}
    with RegistroE990 do
    begin
      QTD_LIN_E   := RegistroE100Count + RegistroE110Count;
    end;
{$ENDREGION}
  end;
  if CBConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_E;
    LoadToMemo;
  end;
{$ENDREGION 'Bloco E'}

{$REGION 'Bloco H'}
//Inicia Bloco
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    if MonthOf(cdsPadraodtFinal.AsDateTime) = 12 then //tem q fazer registro de inventário
    begin
{$REGION 'RegistroH001'}
      with RegistroH001New do
      begin
        if CRIndMov.Items[CRIndMov.ItemIndex] = '0- Bloco com dados' then
          IND_MOV := imComDados
        else
          IND_MOV := imSemDados;
      end;// Fim do with RegistroH001New do
{$ENDREGION}
{$REGION 'RegistroH005'}
      funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEdtFinal], 'spSPEDGeraTmpInventario');
      if frmPrincipal.ExecutaSQLRet([], '', 'SELECT COUNT(*) qtde FROM tmpSPEDInventario').FieldByName('qtde').AsFloat > 0 then
      begin
        with frmPrincipal.ExecutaSQLRet([], '', 'SELECT SUM(vlCustoMedio) CustoMedio FROM tmpSPEDInventario') do
        begin
          with RegistroH005New do
          begin
            DT_INV   := cdsPadraodtFinal.AsDateTime;
            VL_INV   := FieldByName('CustoMedio').AsCurrency;
          end;// Fim do with RegistroH005New do
        end; // Fim do with frmPrincipal.ExecutaSQLRet([], '', 'SELECT SUM(vlCustoMedio) CustoMedio FROM tmpSPEDInventario') do
      end;// Fim do if frmPrincipal.ExecutaSQLRet([], '', 'SELECT COUNT(*) qtde FROM tmpSPEDInventario').FieldByName('qtde').AsFloat > 0 then
{$ENDREGION}
{$REGION 'RegistroH010'}
      funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEdtFinal], 'spSPEDGeraTmpInventario');
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM tmpSPEDInventario') do
      begin
        First;
        while not EOF do
        begin
          with RegistroH010New do
          begin
            COD_ITEM  := FieldByName('idProduto').AsString;
            UNID      := FieldByName('unidade').AsString;
            QTD       := FieldByName('qtEstoque').AsFloat;
            VL_UNIT   := FieldByName('vlEstoque').AsCurrency;
            IND_PROP  := piInformante;
            COD_PART  := FieldByName('descCadEmpresa').AsString;
            TXT_COMPL := '';
            if (FieldByName('CredSPED').IsNull = true) then
              COD_CTA   := FieldByName('DebSPED').AsString
            else
              COD_CTA   := FieldByName('CredSPED').AsString;
            Next;
          end;// Fim do with RegistroH010New do
        end;// Fim do while not EOF do
      end;
{$ENDREGION}
{$REGION 'RegistroH990'}
    with RegistroH990 do
    begin
      QTD_LIN_H   := RegistroH005Count + RegistroH010Count;
    end;
{$ENDREGION}
   end
   else
   begin
     with RegistroH001New do
     IND_MOV := imSemDados;
   end;
   ACBrSPEDFiscal1.WriteBloco_H;
  end;
{$ENDREGION 'Bloco H'}


  ACBrSPEDFiscal1.SaveFileTXT;
  CMTxt.Lines.Clear;
end;// Fim do with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscalSPED') do

procedure TFrmSPED.BtnCaminhoClick(Sender: TObject);
begin
  AbrePasta.Execute;
  if AbrePasta.Path <> '' then
  begin
    EDCaminho.Text := AbrePasta.Path;
    BtnGerar.Enabled := true;
  end
  else
  begin
    EDCaminho.Text := '';
    BtnGerar.Enabled := false;
  end;
end;

procedure TFrmSPED.cdsLookUpAfterInsert(DataSet: TDataSet);
  begin
    cdsPadrao.FieldByName('par').AsString := 'S';
  end;

procedure TFrmSPED.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookidInscEstadual.AlternateSQL.Clear;
  LookidInscEstadual.AlternateSQL.Add('SELECT idInscEstadual FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TFrmSPED.DBEDataEnter(Sender: TObject);
  begin
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('mesAno').AsString) <> '' then
      cdsPadrao.FieldByName('mesAno').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('mesAno').AsString);
  end;

procedure TFrmSPED.DBEDataExit(Sender: TObject);
  begin
    if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('mesAno').AsString := funcao.Mascara(cdsPadrao.FieldByName('mesAno').AsString, 99, '**/****');
  end;

procedure TFrmSPED.DBEdtFinalExit(Sender: TObject);
  begin
  //Tratamento dos parametros de data, para que o usuário informe somente a data
  //correta
  if ((TRIM(DBEData.Text) = ''))  then
    begin
      MessageDlg('É necessario informar o periodo !',mtwarning,[mbok],0);
      DBEData.SetFocus;
    exit;
    end;
  end;
procedure TFrmSPED.DBEidCadEmpresaExit(Sender: TObject);
  begin
    DBEData.SetFocus;
  end;
procedure TFrmSPED.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
    FrmPesEmpFiscal.ShowModal;
    with cdsPadrao do
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
  end; // fim do VK_F4
end;

procedure TFrmSPED.LoadToMemo;
  begin
   CMTxt.Lines.Clear;
   if FileExists( ACBrSpedFiscal1.Path + ACBrSpedFiscal1.Arquivo ) then
      CMTxt.Lines.LoadFromFile(ACBrSpedFiscal1.Path + ACBrSpedFiscal1.Arquivo);
  end;

procedure TFrmSPED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmSPED := nil;
  action := caFree;
end;

procedure TFrmSPED.FormCreate(Sender: TObject);
begin
  EdCaminho.Text := ExtractFilePath(Application.ExeName);
  AbrePasta.Path := ExtractFilePath(Application.ExeName);
  cdsPadrao.CreateDataSet;
  fiscal := true;
  ConfigLookEmpresa;
end;

procedure TFrmSPED.FormShow(Sender: TObject);
begin
  Height := 285;
  Width := 703;
  DBEData.SetFocus;
  if fiscal then
  begin
    with cdsPadrao do
       begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := 1;
          FieldByName('idCadEmpresa').Value := 1;
        end;
   end;
end;

end.
