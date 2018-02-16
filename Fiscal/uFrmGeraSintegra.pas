unit uFrmGeraSintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, CBitBtn, CPanelGradient, ExtCtrls,
  CLookUp, Mask, DBCtrls, CDBEdit, CLabel, ImgList, ActnList, CFind, DB,
  DBClient, Provider, SqlExpr, EditAlign, CEdit, cxShellBrowserDialog, CGroupBox,
  CDBRadioGroup;

type
  TFrmSintegra = class(TForm)
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
    DBRGFinalidade: TCDBRadioGroup;
    cdsPadraoidFinalidade: TSmallintField;
    dsTmp: TDataSource;
    cdsTmp: TClientDataSet;
    dspTmp: TDataSetProvider;
    cdsTmpidNf: TIntegerField;
    cdsTmptpNF: TStringField;
    cdsTmpidDocSerie: TStringField;
    cdsTmpidCadGeral: TIntegerField;
    cdsTmpmesAno: TStringField;
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
  public
    { Public declarations }
  end;

var
  FrmSintegra: TFrmSintegra;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoRelEmpresa, uFrmPesEmpFiscal;

{$R *.dfm}

procedure TFrmSintegra.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmSintegra.actGerarExecute(Sender: TObject);
var
  arq : TStrings;
  linha, valor, arquivo, compara : string;
  mes, ano : string;
  di, mi, ai : Word;
  diai,mesi,anoi : string;
  diaf : string;
  i50,i54,i75,i88,i90, ordemNf, idNf,tam : integer;
  semSaidas, semEntradas : boolean;
begin

  if (trim(DBRGFinalidade.Value) = '') then
  begin
    messagedlg('É necessário informar a Finalidade', mtInformation, [mbOk],0);
    exit;
  end;

  semSaidas := true;
  semEntradas := true;

  i50 := 0;
  i54 := 0;
  i75 := 0;
  i88 := 0;
  i90 := 0;
  ordemNf := 1;
  idNf := 0;
  arq := TStringList.Create;
  Screen.Cursor := crSQLWait;

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
  //=======================================================================
  
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

  {$REGION 'Registro 10 - Mestre do Estabelecimento'}
// ============================================================ Registro 10 =============================================================
  linha := '';
 with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscal') do
  begin
    //Tipo 10
    linha := '10';

    //Campo CNPJ/CPF do Estabelecimento
    valor := FieldByName('idCnpjCpf').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'N', 14);

    //Campo Inscrição Estadual do Estabelecimento
    valor := FieldByName('idInscEstadual').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

    //Campo Nome do Contribuinte
    valor := FieldByName('descCadEmpresa').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 35);

    //Campo Municipio
    valor := FieldByName('descCidade').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 30);

    //Campo Unidade da Federação
    valor := FieldByName('idEstado').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 2);

    //Campo FAX
    valor := FieldByName('fax').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'N', 10);

    //Campo de Data Inicial
    valor := DateTimeToStr(cdsPadrao.FieldByName('dtInicial').AsDateTime);
    linha := linha + funcao.RetDataSintegra(StrToDate(valor));

    //Campo de Data Final
    valor := DateTimeToStr(cdsPadrao.FieldByName('dtFinal').AsDateTime);
    linha := linha + funcao.RetDataSintegra(StrToDate(valor));

    //Campo da estrutura do arquivo magnético
    valor := '3';
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 1);

    //Campo da Natureza da operações informadas
    valor := '3';
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 1);

    //Campo do id do arquivo magnético
    valor := DBRGFinalidade.value;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 1);

    arq.Add(linha);
    linha := '';
 end;

  // ========================================================== Fim do Registro 10 ===========================================================
  {$ENDREGION 'Registro 10 - Mestre do Estabelecimento'}

  {$REGION 'Registro 11 - Dados Complementares do Informante '}
  linha := '';
// ============================================================ Registro 11 =============================================================

  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscal') do
  begin

    //Tipo 11
    linha := '11';

    //Campo Logradouro
    valor := FieldByName('endereco').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 34);

    //Campo Numero
    valor := FieldByName('numero').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'N', 5);

    //Campo Complemento
    valor := FieldByName('complemento').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 22);

    //Campo Bairro
    valor := FieldByName('bairro').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 15);

    //Campo CEP
    valor := FieldByName('cep').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'N', 8);

    //Campo Nome do Contato
    valor := FieldByName('descCadEmpresa').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 28);

    //Campo Telefone
    valor := FieldByName('fone').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'N', 12);

    arq.Add(linha);
    linha :='';

  end;
// ========================================================= Fim do Registro 11 ==========================================================
  {$ENDREGION 'Registro 11 - Dados Complementares do Informante '}

  {$REGION 'Registro 50 - Nota Fiscal de Entrada/Saida do Estabelecimento do Informante '}
  linha := '';
// ============================================================ Registro 50 NFS =============================================================
  //Data Inicial e FInal
  DBEdtInicial.text := cdsPadrao.FieldByName('dtInicial').AsString;
  DBEdtFinal.text := cdsPadrao.FieldByName('dtFinal').AsString;

  //Tipo 50 de Nota Fiscal de Saida
  //Campo de CNPJ\CPF
  cdsPadraopar.AsString := 'N';   //Notas
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscais','') do
  if (not IsEmpty) then
  begin
    First;
    while not Eof do
    begin
      linha := '50';

      if (FieldByName('tipo').AsString = 'E') AND (Trim(FieldByName('stNf').AsString) <>'CANCELADO') then
        semEntradas := false;

      if (FieldByName('tipo').AsString = 'S') AND (Trim(FieldByName('stNf').AsString) <>'CANCELADO') then
        semSaidas := false;

      valor := FieldByName('idCnpjCpfCad').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 14);

      //Campo de Inscrição Estadual
      valor := FieldByName('idInscEstadualCad').AsString;
      if ((trim(valor) = 'NULL') OR (trim(valor) = '')) then
        valor := 'ISENTO';

      linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

      //Campo de Data Emissao
      valor := DateTimeToStr(FieldByName('dtEmissao').AsDateTime);
      linha := linha + funcao.RetDataSintegra(StrToDate(valor));

      //Campo de Unidade Federação
      valor := FieldByName('idEstadoCad').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 2);

      //Campo de Modelo
      valor := '01';
      linha := linha + funcao.RetCampoSintegra(valor,'N',2);

      //Campo DocSerie
      valor := '1';
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 3);

      //Campo idNF
      valor := FieldByName('idNf').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 6);

      //Campo Cfop
      valor := FieldByName('idCfop').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 4);

      //Campo Emitente
      valor := FieldByName('idEmpresa').AsString ;
      if (trim(valor) = DBEidEmpresa.Text) then
        valor := 'P' //para Proprio
      else
        valor := 'T'; //para Terceiros

      linha := linha + funcao.RetCampoSintegra(valor,'X',1);

      //Campo Valor da Nota Fiscal
      valor := FormatFloat( '#,##0.00',FieldByName('vlNotaFiscal').AsFloat);
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 13);

      //Campo Base de Calculo
      valor := FormatFloat( '#,##0.00',FieldByName('vlBaseCalculo').AsFloat);
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 13);

      //Campo Valor do Imposto
      valor := FormatFloat( '#,##0.00',FieldByName('vlImposto').AsFloat);
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 13);

      //Campo Valor das Isentas ou Não - Tributadas
      valor := FormatFloat( '#,##0.00',FieldByName('vlIsentas').AsFloat);
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 13);

      //Campo Valor das Outras
      valor := FormatFloat( '#,##0.00',FieldByName('vlOutras').AsFloat);
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 13);

      //Campo Aliquota
      valor := FormatFloat( '#,##0.00',FieldByName('prImposto').AsFloat);
      linha := linha + funcao.RetCampoSintegra(valor, 'N', 4);

      //Campo Staus da Nota Fiscal
      if ( (trim(FieldByName('stNf').AsString) = 'ATIVO')) then
        valor := 'N'
      else
        valor := 'S';

      linha := linha + funcao.RetCampoSintegra(valor,'X',1);


      // Contador de Registros
      i50 := i50 + 1;

      arq.Add(linha);

      if not(cdsTmp.Active) then
        cdsTmp.Open;
      if not(cdsTmp.State in [dsEdit, dsInsert]) then
        cdsTmp.Append;
      cdsTmpmesAno.AsString := FieldByName('mesAno').AsString;;
      cdsTmpidNf.AsInteger := FieldByName('idNf').AsInteger;
      cdsTmpidDocSerie.AsString := FieldByName('idDocSerie').AsString;
      cdsTmpidCadGeral.AsInteger := FieldByName('idCadastro').AsInteger;
      cdsTmptpNF.AsString := FieldByName('tipo').AsString;
      cdsTmp.Post;
      Next;
      linha :='';
    end;
  end;



// ========================================================= Fim do Registro 50 NFS =============================================================
  {$ENDREGION 'Registro 50 - Nota Fiscal de Saida do Estabelecimento do Informante '}

  {$REGION 'Registro 54 - Produto'}
  linha := '';
  // ============================================================ Registro 54 =============================================================
  //Data Inicial e FInal
  DBEdtInicial.text := cdsPadrao.FieldByName('dtInicial').AsString;
  DBEdtFinal.text := cdsPadrao.FieldByName('dtFinal').AsString;

  cdsPadraopar.AsString := 'P';
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa,DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscais','') do
  Begin
    if (not IsEmpty) then
    begin
      First;
      while not Eof do
      begin

        if ( (idNf = FieldByName('idNf').AsInteger) AND (i54 <> 0)) then
          ordemNf := ordemNf + 1
        else
          ordemNf := 1;

        //Tipo 54
        linha := '54';
        
        //Campo de CNPJ\CPF
        valor := FieldByName('idCnpjCpfCad').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 14);

        //Campo do Modelo de Nota Fiscal
        valor := '01';
        linha := linha + funcao.RetCampoSintegra(valor,'N',2);

        //Campo da Serie
        valor := '1';
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 3);

        //Campo do idNf/idNfE
        valor := FieldByName('idNf').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 6);

        //Campo do Numero da Cfop
        valor := FieldByName('idCfop').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 4);

        //Campo da Codigo da Situação Tributaria
        valor := FieldByName('idStTributaria').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 3);

        //Campo Numero de Ordem Fiscal
         valor := IntToStr(ordemNf);
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 3);

        //Campo Código do Produto
        valor := FieldByName('idProduto').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

        //Campo Quantidade do Produto
        valor := FormatFloat( '#,###0.000',FieldByName('qtProduto').AsFloat);
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 11);

        //Campo Valor do Produto
        valor := FormatFloat( '#,##0.00',FieldByName('vlBruto').AsFloat);
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 12);

        //Valor do Desconto Concedido no Item
        valor := FormatFloat( '#,##0.00',FieldByName('vlDesconto').AsFloat);
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 12);

        //Campo da Base de Calculo do ICMS
        valor := FormatFloat( '#,##0.00',FieldByName('vlBaseCalculo').AsFloat);
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 12);

        //Campo da Base de Calculo do ICMS para Substituição Tributária
        valor := FormatFloat( '#,##0.00',FieldByName('vlBaseTributaria').AsFloat);
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 12);

        //Campo do Valor do IPI
        valor := FormatFloat( '#,##0.00',StrToFloat('0'));
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 12);

        //Campo da Aliquota
        valor := FormatFloat( '#,##0.00',FieldByName('prImposto').AsFloat);
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 4);

        // Contador de Registros
        i54 := i54 + 1;

        arq.Add(linha);

        idNf := FieldByName('idNf').AsInteger;

        Next;
        linha :='';

    end;
  end;
end;


// ========================================================== Fim do Registro 54 ===========================================================
  {$ENDREGION 'Registro 54 - Produto'}

  {$REGION 'Registro 75 - Código do Produto e/ou Serviço'}

// ============================================================ Registro 75 =============================================================
  //Data Inicial e Final
  DBEdtInicial.text := cdsPadrao.FieldByName('dtInicial').AsString;
  DBEdtFinal.text := cdsPadrao.FieldByName('dtFinal').AsString;
  cdsPadraopar.AsString := 'R';
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial,DBEdtFinal, DBEpar], 'spLivrosFiscais','') do
  begin
    if (not IsEmpty) then
    begin
      First;
      while not Eof do
      begin

         //Tipo 75
         linha := '75';

         //Campo da Data Inicial do Periodo das Informações
         valor := DateTimeToStr(cdsPadrao.FieldByName('dtInicial').AsDateTime);
         linha := linha + funcao.RetDataSintegra(StrToDate(valor));

         //Campo da Data Final do Periodo das Informações
         valor := DateTimeToStr(cdsPadrao.FieldByName('dtFinal').AsDateTime);
         linha := linha + funcao.RetDataSintegra(StrToDate(valor));

          //Campo do Código do Produto ou Serviço utilizado pelo Contribuinte
          valor := FieldByName('idProduto').AsString;
          linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

          //Campo da Nomeclatura Comum do Mercosul
          valor := '';
          linha := linha + funcao.RetCampoSintegra(valor, 'X', 8);

          //Campo da Descrição do Produto
          valor := FieldByName('descProduto').AsString;
          linha := linha + funcao.RetCampoSintegra(valor, 'X', 53);

          //Campo da Unidade de Medida de Comercialização
          valor := FieldByName('descAbreviada').AsString;
          linha := linha + funcao.RetCampoSintegra(valor, 'X', 6);

          //Campo da Aliquota do IPI do Produto
          valor :=  FormatFloat( '#,##0.00',FieldByName('prIpi').AsFloat);
          linha := linha + funcao.RetCampoSintegra(valor, 'N', 5);

          //Campo da Aliquota do ICMS do Produto
          valor :=  FormatFloat( '#,##0.00',FieldByName('prImposto').AsFloat);
          linha := linha + funcao.RetCampoSintegra(valor, 'N', 4);

          //Campo da Redução na Base de Calculo do ICMS
          valor :=  FormatFloat( '#,##0.00',FieldByName('prReducao').AsFloat);
          linha := linha + funcao.RetCampoSintegra(valor,'N', 5);

          //Campo da Base de Calculo do ICMS de Substituição Tributaria
           valor := FormatFloat( '#,##0.00',FieldByName('vlBaseTributaria').AsFloat);
          linha := linha + funcao.RetCampoSintegra(valor, 'N', 13);


          // Contador de Registros
          i75 := i75 + 1;

          if Length(linha) > 126 then
              for tam := 1 to 125 do
                linha[tam] := linha[tam];

          if i75 > 1 then
            arq.Add(linha)
            else
              if ((trim(linha)) <> (trim(compara))) then
                arq.Add(linha);

          compara := linha;
          linha :='';
          Next;

      end;
    end;
  end;


// ========================================================== Fim do Registro 75 ===========================================================

  {$ENDREGION 'Registro 75 - Código do Produto e/ou Serviço'}

  {$REGION 'Registro 88 - Relação de Intervenções Técnica de ECF – Equipamento Emissor de Cupom Fiscal '}
// ============================================================ Registro 88 =============================================================
  //Tipo 88
  i88 := 0;
  //Verifica se o estado emissor é MS para inserir registro 88SMS ou 88SME
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscal') do
  begin
    if FieldByName('idEstado').AsString = 'MS' then
    begin
      if semEntradas then
      begin
        linha := '88SME';
        //Campo CNPJ/CPF do Estabelecimento
        valor := FieldByName('idCnpjCpf').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 14);

        //Campo Inscrição Estadual do Estabelecimento
        valor := FieldByName('idInscEstadual').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

        //Mensagem
        valor := 'Sem movimento de entradas';
        linha := linha + valor;

        //Preenche com espaços em branco até o final
        linha := linha + funcao.RetCampoSintegra('', 'XD', 126-length(linha));
        arq.Add(linha);
        i88 := i88 + 1;
      end;

      if semSaidas then
      begin
        linha := '88SMS';
        //Campo CNPJ/CPF do Estabelecimento
        valor := FieldByName('idCnpjCpf').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 14);

        //Campo Inscrição Estadual do Estabelecimento
        valor := FieldByName('idInscEstadual').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

        //Mensagem
        valor := 'Sem movimento de saídas';
        linha := linha + valor;

        //Preenche com espaços em branco até o final
        linha := linha + funcao.RetCampoSintegra('', 'XD', 126-length(linha));
        arq.Add(linha);
        i88 := i88 + 1;
      end;
    end;
  end;
  linha := '';
  //Campo de Informação sobre o Contador
  valor := '88ECGILBERTO LUIZ ZART                     69295395972MS0085005 00000000000                                                  1';
  linha := linha + valor;
  i88 := i88 + 1;

  arq.Add(linha);
  linha :='';

  //Campo de Informação sobre o Desenvolvedor
  valor := '88SFACOM SISTEMAS CORPORATIVOS LTDA    058525010001105031464593404130293003                                                  1';
  linha := linha + valor;
  i88 := i88 + 1;

  arq.Add(linha);
  linha :='';

// ========================================================= Fim do Registro 88 ==========================================================

  {$ENDREGION 'Registro 88 - Relação de Intervenções Técnica de ECF – Equipamento Emissor de Cupom Fiscal '}

  {$REGION 'Registro 90 - Totalização do Arquivo '}

// ============================================================ Registro 90 =============================================================

  //Tipo 90
  valor := '90';
  linha := valor;

  // Contador de Registros
  i90 := i90 + 1;

  with  frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'vCadEmpresaFiscal') do
  begin
    //Campo CNPJ/CPF do Estabelecimento
    valor := FieldByName('idCnpjCpf').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'N', 14);

    //Campo Inscrição Estadual do Estabelecimento
    valor := FieldByName('idInscEstadual').AsString;
    linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);
  end;

// ================   Soma da Quantidade de arquivos ==================
  //Campo que mostra o Registro 50 e o total de registro
  // presente no arquivo
  valor := '50';
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 2);
  valor := InttoStr(i50);
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 8);

  //Campo que mostra o Registro 54 e o total de registro
  // presente no arquivo
  valor := '54';
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 2);
  valor := InttoStr(i54);
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 8);

  //Campo que mostra o Registro 75 e o total de registro
  // presente no arquivo
  valor := '75';
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 2);
  valor := InttoStr(i75);
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 8);

  //Campo que mostra o Registro 88 e o total de registro
  // presente no arquivo
  valor := '88';
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 2);
  valor := InttoStr(i88);
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 8);

  //Campo que mostra o Registro 90 e o total de registro
  // presente no arquivo
  valor := '99';
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 2);
  valor := InttoStr(arq.Count + 1);
  linha := linha + funcao.RetCampoSintegra(valor, 'N', 8);

  // Total de Registros 90
  valor := InttoStr(i90);
  linha := linha + funcao.RetCampoSintegra(valor, 'XD', 126-length(linha));

  arq.Add(linha);


// ==================================================================

// ========================================================= Fim do Registro 90 ==========================================================

  {$ENDREGION 'Registro 90 - Totalização do Arquivo '}

  Screen.Cursor := crDefault;
  arquivo := EDCaminho.Text + '\' + 'Sintegra-' + lookdescAbreviada.Caption + '-' + diai + '-' + mesi + '-' +  anoi +'.txt' ;
  arq.SaveToFile(arquivo);
  arq.Free;
  cdsTmp.ApplyUpdates(0);
  Messagedlg('Sintegra gerado no caminho '+ arquivo + ' !' , mtInformation, [mbOK],0);  
end;

procedure TFrmSintegra.BtnCaminhoClick(Sender: TObject);
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

procedure TFrmSintegra.cdsLookUpAfterInsert(DataSet: TDataSet);
begin
  cdsPadrao.FieldByName('par').AsString := 'S';
end;

procedure TFrmSintegra.ConfigLookEmpresa;
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

procedure TFrmSintegra.DBEDataEnter(Sender: TObject);
begin
 if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('mesAno').AsString) <> '' then
      cdsPadrao.FieldByName('mesAno').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('mesAno').AsString);
end;

procedure TFrmSintegra.DBEDataExit(Sender: TObject);
begin
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('mesAno').AsString := funcao.Mascara(cdsPadrao.FieldByName('mesAno').AsString, 99, '**/****');
end;

procedure TFrmSintegra.DBEdtFinalExit(Sender: TObject);
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

procedure TFrmSintegra.DBEidCadEmpresaExit(Sender: TObject);
begin
  DBEData.SetFocus;
end;

procedure TFrmSintegra.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSintegra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmSintegra := nil;
  action := caFree;
end;

procedure TFrmSintegra.FormCreate(Sender: TObject);
begin
  EdCaminho.Text := ExtractFilePath(Application.ExeName);
  AbrePasta.Path := ExtractFilePath(Application.ExeName);
  cdsPadrao.CreateDataSet;
  fiscal := true;
  ConfigLookEmpresa;
end;

procedure TFrmSintegra.FormShow(Sender: TObject);
begin
  Height := 258;
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
