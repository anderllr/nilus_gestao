unit uFrmImportaNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, ComCtrls, CPageControl, DB, DBClient, Mask, DBCtrls, CDBEdit,
  CLookUp, CLabel, Provider, Grids, DBGrids, CDBGrid, FMTBcd, SqlExpr,
  CDBRadioGroup, CDBCheckBox, System.Actions, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCurrencyEdit,
  cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, ACBrNFe, CGroupBox, Vcl.DBCGrids,
  cxDropDownEdit, cxCalc, CFind, ACBrBase, ACBrDFe, System.ImageList,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, pcnConversao, DateUtils, ClipBrd, CPanel,
  ACBrNFeDANFEFRDM, frxClass;

type
  TFrmImportaNFe = class(TFrmPadrao)
    CPanelGradient1: TCPanelGradient;
    Bevel3: TBevel;
    CPanelGradient2: TCPanelGradient;
    CLabel1: TCLabel;
    PanEmpresa: TCPanelGradient;
    CLabel9: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    DBEidCadEmpresa: TCDBEdit;
    Bevel2: TBevel;
    CPanelGradient3: TCPanelGradient;
    CLabel2: TCLabel;
    DBEchaveNFe: TCDBEdit;
    CLabel3: TCLabel;
    BtnCarregar: TCBitBtn;
    CLabel4: TCLabel;
    DBEarquivoXML: TCDBEdit;
    CLabel5: TCLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    cdsPadraochaveNFe: TStringField;
    cdsPadraoarquivoXML: TStringField;
    BtnAlteraCod: TCBitBtn;
    cdsPadraodescFornecedor: TStringField;
    cdsPadraocnpjFornecedor: TStringField;
    cdsPadraoinscEstadual: TStringField;
    cdsPadraodescCidade: TStringField;
    ACBrNFe1: TACBrNFe;
    cdsPadraonrNF: TIntegerField;
    cdsPadraoserieNF: TIntegerField;
    cdsPadraovlNF: TCurrencyField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TIntegerField;
    grpNotaSaida: TCGroupBox;
    CLabel6: TCLabel;
    LblCad: TCLabel;
    CLabel59: TCLabel;
    CLabel10: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    lookIeFornecedor: TCLookUp;
    DBEdtLancamento: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    LookFornecedorFiscal: TCLookUp;
    lookEnderecoFor: TCLookUp;
    lookCidadeFor: TCLookUp;
    lookEstadoFor: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    CGroupBox1: TCGroupBox;
    Label1: TLabel;
    DBEdescFornecedor: TcxDBTextEdit;
    Label2: TLabel;
    DBEcnpjFornecedor: TcxDBTextEdit;
    Label3: TLabel;
    DBEinscEstadual: TcxDBTextEdit;
    Label4: TLabel;
    DBEdescCidade: TcxDBTextEdit;
    Label5: TLabel;
    DBEnrNF: TcxDBTextEdit;
    Label6: TLabel;
    DBEserieNF: TcxDBTextEdit;
    Label7: TLabel;
    DBEvlNF: TcxDBCurrencyEdit;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodtLancamento: TDateTimeField;
    DBCtrlGrid1: TDBCtrlGrid;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    CLabel11: TCLabel;
    CLabel7: TCLabel;
    CLabel8: TCLabel;
    DBEidProdFornecedor: TcxDBTextEdit;
    DBEdescProdFornecedor: TcxDBTextEdit;
    DBEunidade: TcxDBTextEdit;
    cdsProdutosidProduto: TIntegerField;
    cdsProdutosidProdFornecedor: TStringField;
    cdsProdutosdescProdFornecedor: TStringField;
    cdsProdutosunidade: TStringField;
    cdsProdutosvlUnitario: TCurrencyField;
    cdsProdutosqtProduto: TFloatField;
    cdsProdutosvlTotal: TCurrencyField;
    DBEvlUnitario: TcxDBCurrencyEdit;
    DBEqtProduto: TcxDBCalcEdit;
    DBEvlTotal: TcxDBCurrencyEdit;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    lookidCnpjCpf: TCLookUp;
    LookidInscEstadual: TCLookUp;
    lookEstadoEmp: TCLookUp;
    BtnAtualizarProd: TCBitBtn;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    DBEidProduto: TcxDBTextEdit;
    cdsProduto: TClientDataSet;
    dspProduto: TDataSetProvider;
    cdsProdutodescProduto: TStringField;
    cdsProdutodescAbreviada: TStringField;
    cdsProdutoidProduto: TIntegerField;
    cdsProdutosdescProduto: TStringField;
    cdsProdutosUnidadeN: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    DBEdescProduto: TcxDBTextEdit;
    DBEUnidadeN: TcxDBTextEdit;
    BtnAtualizaFor: TCBitBtn;
    sdsCadGeral: TSQLDataSet;
    dspCadGeral: TDataSetProvider;
    cdsCadGeral: TClientDataSet;
    dspCadAdicional: TDataSetProvider;
    cdsCadAdicional: TClientDataSet;
    sdsCadAdicional: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    sdsCidade: TSQLDataSet;
    FindSerie: TCFind;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnCarregarClick(Sender: TObject);
    function VerDownloadNfe (id : integer) : boolean;
    procedure RelacionaProdutos;
    procedure BtnAtualizarProdClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure LimpaProdutos;
    procedure BtnAlteraCodClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAtualizaForClick(Sender: TObject);
    function BuscaCidade(cMun: integer; descCidade, UF: string): integer;
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    function ConfigACBR (forma: string) : boolean;
    procedure DBEchaveNFeEnter(Sender: TObject);
    procedure DBEchaveNFeExit(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
    cnpj : string;
    semcert : boolean;
  public
    { Public declarations }
    captcha : string;
  end;

var
  FrmImportaNFe: TFrmImportaNFe;

implementation

uses uDmPadrao, uDmFind, uFrmPrincipal, uFuncao,
  uFrmPesEmpFiscal, uFrmNotaFiscal, uFrmPesProduto, uFrmPesClienteFiscal,
  uFrmNFE, UTDownloadXMLNFeDLL, utils, uFrmCaptcha, uFrmCadProduto;


var
  BaixarXMLNFe: TDownloadXMLNFeDLL;

{$R *.dfm}

procedure TFrmImportaNFe.actFecharExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmImportaNFe.BtnAlteraCodClick(Sender: TObject);
var
  idEmpresa, idCadEmpresa : integer;
begin
  inherited;
  LimpaProdutos;

  //pega a empresa para manter a mesma após o insert
  idEmpresa := cdsPadraoidEmpresa.AsInteger;
  idCadEmpresa := cdsPadraoidCadEmpresa.AsInteger;

  cdsPadrao.Append;

  cdsPadraoidEmpresa.AsInteger := idEmpresa;
  cdsPadraoidCadEmpresa.AsInteger := idCadEmpresa;

  BtnSalvar.Enabled := false;
  BtnAtualizarProd.Enabled := false;
  BtnAtualizaFor.Enabled := false;

  DBEchaveNFe.SetFocus;
end;

procedure TFrmImportaNFe.BtnAtualizaForClick(Sender: TObject);
var
  idCadGeral : integer;
begin
  inherited;
  if (trim(DBEidFornecedor.Text) <> '') and (trim(DBEidCadFornecedor.Text) <> '') then
  begin
    if messagedlg('Deseja realmente atualizar os dados do fornecedor?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      cdsCadGeral.Active := false;
      cdsCadGeral.CommandText := 'SELECT * FROM CadGeral WHERE idCadGeral = ' + DBEidFornecedor.Text;
      cdsCadGeral.Active := true;

      cdsCadAdicional.Active := false;
      cdsCadAdicional.CommandText := 'SELECT * FROM CadAdicional WHERE idCadGeral = ' + DBEidFornecedor.Text +
                                     ' AND idCadAdicional = ' + DBEidCadFornecedor.Text ;
      cdsCadAdicional.Active := true;

      with ACBrNFe1.NotasFiscais[0].NFe do
      begin
        cdsCadGeral.Edit;
        cdsCadGeral.FieldByName('idCnpjCpf').AsString := funcao.Mascara(Emit.CNPJCPF, 1, '');
        cdsCadGeral.FieldByName('dtAlteracao').AsDateTime := date;
        cdsCadGeral.Post;
        cdsCadGeral.ApplyUpdates(0);

        cdsCadAdicional.Edit;
        cdsCadAdicional.FieldByName('descCadAdicional').AsString := Emit.xNome;
        cdsCadAdicional.FieldByName('descAbreviada').AsString := Emit.xFant;
        cdsCadAdicional.FieldByName('idInscEstadual').AsString := Emit.IE;
        cdsCadAdicional.FieldByName('idCnpjCpf').AsString := funcao.Mascara(Emit.CNPJCPF, 1, '');
        if trim(Emit.IM) <> '' then
          cdsCadAdicional.FieldByName('idInscMunicipal').AsString := Emit.IM;
        cdsCadAdicional.FieldByName('endereco').AsString := Emit.EnderEmit.xLgr;
        if funcao.IsNumeric(Emit.EnderEmit.nro) then
          cdsCadAdicional.FieldByName('numero').AsString := Emit.EnderEmit.nro;
        if trim(Emit.EnderEmit.xCpl) <> '' then
          cdsCadAdicional.FieldByName('complemento').AsString := Emit.EnderEmit.xCpl;
        if trim(Emit.EnderEmit.xBairro) <> '' then
          cdsCadAdicional.FieldByName('bairro').AsString := Emit.EnderEmit.xBairro;
        if Emit.EnderEmit.CEP > 0 then
          cdsCadAdicional.FieldByName('cep').AsString := funcao.Mascara(IntToStr(Emit.EnderEmit.CEP), 0, '');
        if trim(Emit.EnderEmit.fone) <> '' then
          cdsCadAdicional.FieldByName('fone').AsString := Emit.EnderEmit.fone;

        cdsCadAdicional.FieldByName('idCidade').AsInteger := BuscaCidade(Emit.EnderEmit.cMun, Emit.EnderEmit.xMun, Emit.EnderEmit.UF);
        cdsCadAdicional.Post;
        cdsCadAdicional.ApplyUpdates(0);


      end; //fim do with ACBrNFe1.NotasFiscais[0].NFe do
    end;
  end // fim do if (trim(DBEidFornecedor.Text) <> '') and (trim(DBEidCadFornecedor.Text) <> '') then
  else
  begin
    if messagedlg('Deseja realmente cadastrar como novo fornecedor?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      cdsCadGeral.Active := false;
      cdsCadGeral.CommandText := 'SELECT * FROM CadGeral WHERE 1=2';
      cdsCadGeral.Active := true;

      cdsCadAdicional.Active := false;
      cdsCadAdicional.CommandText := 'SELECT * FROM CadAdicional WHERE 1=2';
      cdsCadAdicional.Active := true;

      with ACBrNFe1.NotasFiscais[0].NFe do
      begin
        cdsCadGeral.Append;
        idCadGeral := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idCadGeral) idCadGeral FROM CadGeral').FieldByName('idCadGeral').AsInteger + 1;
        cdsCadGeral.FieldByName('idCadGeral').AsInteger := idCadGeral;
        cdsCadGeral.FieldByName('idCnpjCpf').AsString := funcao.Mascara(Emit.CNPJCPF, 1, '');
        cdsCadGeral.FieldByName('dtCadastro').AsDateTime := date;
        cdsCadGeral.FieldByName('dtAlteracao').AsDateTime := date;
        cdsCadGeral.FieldByName('dtAtualizacao').AsDateTime := date;
        cdsCadGeral.FieldByName('stCadGeral').AsString := 'ATIVO';
        cdsCadGeral.Post;
        cdsCadGeral.ApplyUpdates(0);

        cdsCadAdicional.Append;
        cdsCadAdicional.FieldByName('idCadGeral').AsInteger := idCadGeral;
        cdsCadAdicional.FieldByName('idCadAdicional').AsInteger := 1;
        cdsCadAdicional.FieldByName('descCadAdicional').AsString := Emit.xNome;
        cdsCadAdicional.FieldByName('descAbreviada').AsString := Emit.xFant;
        cdsCadAdicional.FieldByName('idInscEstadual').AsString := Emit.IE;
        cdsCadAdicional.FieldByName('idCnpjCpf').AsString := funcao.Mascara(Emit.CNPJCPF, 1, '');
        if trim(Emit.IM) <> '' then
          cdsCadAdicional.FieldByName('idInscMunicipal').AsString := Emit.IM;
        cdsCadAdicional.FieldByName('endereco').AsString := Emit.EnderEmit.xLgr;
        if funcao.IsNumeric(Emit.EnderEmit.nro) then
          cdsCadAdicional.FieldByName('numero').AsString := Emit.EnderEmit.nro;
        if trim(Emit.EnderEmit.xCpl) <> '' then
          cdsCadAdicional.FieldByName('complemento').AsString := Emit.EnderEmit.xCpl;
        if trim(Emit.EnderEmit.xBairro) <> '' then
          cdsCadAdicional.FieldByName('bairro').AsString := Emit.EnderEmit.xBairro;
        if Emit.EnderEmit.CEP > 0 then
          cdsCadAdicional.FieldByName('cep').AsString := funcao.Mascara(IntToStr(Emit.EnderEmit.CEP), 0, '');
        if trim(Emit.EnderEmit.fone) <> '' then
          cdsCadAdicional.FieldByName('fone').AsString := Emit.EnderEmit.fone;

        cdsCadAdicional.FieldByName('idCidade').AsInteger := BuscaCidade(Emit.EnderEmit.cMun, Emit.EnderEmit.xMun, Emit.EnderEmit.UF);
        cdsCadAdicional.FieldByName('stCadAdicional').AsString := 'ATIVO';
        cdsCadAdicional.Post;
        cdsCadAdicional.ApplyUpdates(0);
      end; //fim do with ACBrNFe1.NotasFiscais[0].NFe do

      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;

      cdsPadraoidFornecedor.AsInteger := idCadGeral;
      cdsPadraoidCadFornecedor.AsInteger := 1;

    end;
  end; //fim do begin do else

end;

procedure TFrmImportaNFe.BtnAtualizarProdClick(Sender: TObject);
begin
  inherited;
  if messagedlg('Esse procedimento irá alterar o código Nilus dos produtos! Deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    RelacionaProdutos;
end;

procedure TFrmImportaNFe.BtnCarregarClick(Sender: TObject);
var
  msg, chaveNFe, arqXML, sql : string;
  i : integer;
  SL     : TStringList;
begin
  inherited;
  msg := '';

  DBEchaveNFe.Text := StringReplace(DBEchaveNFe.Text, ' ', EmptyStr, [rfReplaceAll]);

  if (trim(DBEchaveNFe.Text) = '') and (trim(DBEarquivoXML.Text) = '')  then
    msg := 'Você deve informar a chave da nota ou buscar o arquivo XML!';

  if (msg = '') and (trim(DBEchaveNFe.Text) <> '') and (trim(DBEarquivoXML.Text) = '')  then
    if (Length(DBEchaveNfe.Text) <> 44) then
      msg := 'Chave inválida!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  if not ConfigACBR('NORMAL') then
    exit;

  if trim(DBEarquivoXML.Text) <> '' then
  begin
    arqXML := trim(DBEarquivoXML.Text);
    ACBrNFe1.NotasFiscais.LoadFromFile(arqXML);
    with ACBrNFe1.NotasFiscais[0].NFe do
      chaveNFe := copy(infNFe.ID, 4, 44);
  end
  else
    chaveNFe := trim(DBEchaveNFe.Text);

  //Agora verifica se é download da chave para acionar o download
  if trim(DBEchaveNFe.Text) <> '' then
  begin
    //********** BAIXANDO NO MODO SEM CERTIFICADO DIGITAL **********************
    Application.CreateForm(TFrmCaptcha, FrmCaptcha);
    FrmCaptcha.BringToFront;
    FrmCaptcha.ShowModal;
    if not DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathSalvar) then
      ForceDirectories(ACBrNFe1.Configuracoes.Arquivos.PathSalvar);
    arqXML := (ACBrNFe1.Configuracoes.Arquivos.PathSalvar)+
               chaveNFe+'-down-nfe.xml' ;
      if BaixarXMLNFe.BaixarXMLNFeSemCert(chaveNFe, captcha, arqXML) then begin
//        MsgInf('Baixado sem certificado digital sem validade jurídica.');
      end
      else
      begin
        MsgInf(BaixarXMLNFe.Msg);
        Exit;
      end;
  end;

  //Se correu tudo bem vai chegar até aqui e a partir daqui virão os tratamentos para importação da nota
  LimpaProdutos;
  //Valida para verificar se o cnpj e a inscrição estão corretos
  ACBrNFe1.NotasFiscais.LoadFromFile(arqXML);
  with ACBrNFe1.NotasFiscais[0].NFe do
  begin
    msg := '';
    if trim(funcao.TiraMascara(Dest.CNPJCPF)) <> trim(funcao.TiraMascara(lookidCnpjCpf.Caption)) then
      msg := 'CNPJ/CPF do XML diferente que está selecionado!';

    if trim(funcao.TiraMascara(Dest.IE)) <> trim(funcao.TiraMascara(LookidInscEstadual.Caption)) then
      msg := msg + #13 + 'Inscrição Estadual do XML diferente que está selecionado!';

    if trim(msg) <> '' then
    begin
      messagedlg(msg + funcao.TiraMascara(Dest.IE), mterror, [mbok], 0);
      exit;
    end;

    //se passou agora puxa os dados
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;

    cdsPadraodtLancamento.AsDateTime := date;

    cdsPadraodescFornecedor.AsString := Emit.xNome;
    cdsPadraocnpjFornecedor.AsString := funcao.Mascara(Emit.CNPJCPF, 1, '');
    cdsPadraoinscEstadual.AsString := Emit.IE;
    cdsPadraodescCidade.AsString := Emit.EnderEmit.xMun + '-' + Emit.EnderEmit.UF;
    cdsPadraonrNF.AsInteger := Ide.nNF;
    cdsPadraoserieNF.AsInteger := Ide.serie;
    cdsPadraovlNF.AsCurrency := Total.ICMSTot.vNF;

    //agora tenta encontrar pelo cnpj e pela inscrição o fornecedor
    sql := 'SELECT * FROM vCadFornecedorSemMascara WHERE idCnpjCpf = ' + QuotedStr(trim(funcao.TiraMascara(Emit.CNPJCPF))) +
           ' AND idInscEstadual = ' + QuotedStr(trim(funcao.TiraMascara(Emit.IE)));
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        cdsPadraoidFornecedor.AsInteger := FieldByName('idFornecedor').AsInteger;
        cdsPadraoidCadFornecedor.AsInteger := FieldByName('idCadFornecedor').AsInteger;
      end;
    end;

    with Det do
    begin
      //Agora adiciona os produtos
      for i := 0 to Det.Count - 1 do
      begin
        cdsProdutos.Append;
        cdsProdutosidProdFornecedor.AsString := Items[i].Prod.cProd;
        cdsProdutosdescProdFornecedor.AsString := Items[i].Prod.xProd;
        cdsProdutosunidade.AsString := Items[i].Prod.uCom;
        cdsProdutosvlUnitario.AsCurrency := Items[i].Prod.vUnCom;
        cdsProdutosqtProduto.AsFloat := Items[i].Prod.qCom;
        cdsProdutosvlTotal.AsCurrency := Items[i].Prod.vProd;
        cdsProdutos.Post;
      end; // fim do for i := 0 to Det.Count - 1 do
    end; //fim do With Det
  end; //fim do with ACBrNFe1.NotasFiscais[0].NFe do

  //Executa a rotina de relacionar os produtos
  RelacionaProdutos;

  BtnSalvar.Enabled := true;
  BtnAtualizarProd.Enabled := true;
  BtnAtualizaFor.Enabled := true;
end;

procedure TFrmImportaNFe.BtnSalvarClick(Sender: TObject);
var
  msg : string;
  semcod : boolean;
begin
  inherited;

  msg := '';
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') then
    msg := 'Você deve selecionar um fornecedor do Nilus!';

  if cdsProdutos.RecordCount = 0 then
    msg := msg + #13 + 'Nenhum produto selecionado!';

  if trim(DBEidDocSerie.Text) = '' then
    msg := msg + #13 + 'Informe a série da nota de entrada!';

  semcod := false;
  //laço para verificar se tem algum código de produto não relacionado
  cdsProdutos.First;
  while not cdsProdutos.Eof do
  begin
    if not cdsProdutosidProduto.AsInteger > 0 then
      semcod := true;

    cdsProdutos.Next;
  end;

  if semcod then
    msg := msg + #13 + 'Existe(m) produto(s) sem lançar o código Nilus!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidFornecedor.SetFocus;
    exit;
  end;

  //se veio até aqui já é possível a geração da nota
  Application.CreateForm(TFrmNfE, FrmNfE);
  FrmNfe.origem := 'Importação';
  FrmNfE.FormStyle := fsMDIChild;
  FrmNfE.Show;

end;

function TFrmImportaNFe.BuscaCidade(cMun: integer; descCidade,
  UF: string): integer;
var
  idCidade : integer;
begin
  idCidade := 0;
  //Irá buscar a cidade ou cadastrar conforme os parâmetros passados e devolver o ID da mesma
  //primeiro busca pelo cMun
  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM Cidade WHERE codIBGECidade = ' + IntToStr(cMun)) do
  begin
    if RecordCount > 0 then
      idCidade := FieldByName('idCidade').AsInteger;
  end;

  if idCidade = 0 then //não achou ainda então busca pelo nome
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM Cidade WHERE descCidade = ' + QuotedStr(descCidade) + ' AND idEstado = ' + QuotedStr(UF)) do
    begin
      if RecordCount > 0 then
        idCidade := FieldByName('idCidade').AsInteger;
    end;

  //se ainda assim é zero então teremos que cadastrar como nova cidade
  if idCidade = 0 then
  begin
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idCidade) idCidade FROM Cidade') do
    begin
      idCidade := FieldByName('idCidade').AsInteger + 1;
      cdsCidade.Active := false;
      cdsCidade.CommandText := 'SELECT * FROM Cidade WHERE 1=2';
      cdsCidade.Active := true;
      cdsCidade.Append;
      cdsCidade.FieldByName('idCidade').AsInteger := idCidade;
      cdsCidade.FieldByName('descCidade').AsString := descCidade;
      cdsCidade.FieldByName('idEstado').AsString := UF;
      cdsCidade.FieldByName('codIBGECidade').AsInteger := cMun;
      cdsCidade.Post;
      cdsCidade.ApplyUpdates(0);
    end;
  end;

  Result := idCidade;
end;

function TFrmImportaNFe.ConfigACBR(forma: string): boolean;
var
  msg, caminho, caminhocce, {cnpj, }caminhorel, arqrel : string;
  ok : boolean;
begin
  msg := '';
  Application.ProcessMessages;
  semcert := False;
  try
    cnpj := trim(funcao.TiraMascara(lookidCnpjCpf.Caption));
    with dmPadrao do
    begin
      cdsTmp.Active := false;
      cdsTmp.CommandText := 'SELECT * FROM ConfigFiscal WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
      cdsTmp.Active := true;
        if not (cdsTmp.FieldByName('serie_certificado').IsNull) then
          ACBrNFe1.Configuracoes.Certificados.NumeroSerie := cdsTmp.FieldByName('serie_certificado').AsString;//cdsConfigNFeNR_SERIE_CERTIFICADO.AsString;
      if cdsTmp.FieldByName('serie_certificado').IsNull then
        semcert := False;
      if not (trim(forma) = '') then
      begin
        if forma = 'Normal' then
          ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal
        else
          if forma = 'Contingência' then
            ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia
          else
            if forma = 'SVCRS' then
              ACBrNFe1.Configuracoes.Geral.FormaEmissao := teSVCRS
            else
              if forma = 'DPEC' then
                ACBrNFe1.Configuracoes.Geral.FormaEmissao := teDPEC
              else
                if forma = 'FSDA' then
                  ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA
                else
                  if forma = 'ESVCSP' then
                    ACBrNFe1.Configuracoes.Geral.FormaEmissao := tESVCSP;

      end //if not (cdsConfigNFeDANFE_FORMAEMISSAO.IsNull) then
      else
        msg :=  msg + 'Forma de emissão não configurada!' + #13;

      ACBrNFe1.Configuracoes.Geral.Salvar := true;
      if not (cdsTmp.FieldByName('caminho_arquivos').IsNull) then
      begin
        caminho := cdsTmp.FieldByName('caminho_arquivos').AsString + cnpj + '\';
        caminhocce := caminho + 'CCE\';
        caminho := caminho + 'Download\' + IntToStr(MonthOf(Now)) + '-' + IntToStr(YearOf(Now)) + '\';

        if not (DirectoryExists(caminho)) then
          CreateDir(caminho);
        ACBrNFe1.Configuracoes.Arquivos.PathSalvar := caminho;
        ACBrNFe1.Configuracoes.Arquivos.PathEvento := caminho;
        ACBrNFe1.Configuracoes.Arquivos.PathInu := caminho;
        ACBrNFe1.Configuracoes.Arquivos.PathNfe := caminho;

        //Caminho CCE -- será único sem as datas
        ACBrNFe1.Configuracoes.Arquivos.PathEvento := caminhocce;
        ACBrNFe1.Configuracoes.Arquivos.Salvar := True;
        ACBrNFe1.Configuracoes.Arquivos.EmissaoPathNFe := True;
      end
      else
        msg :=  msg + 'Caminho dos arquivos não configurado!' + #13;

      if not (cdsTmp.FieldByName('UF_WebService').IsNull) then
        ACBrNFe1.Configuracoes.WebServices.UF := cdsTmp.FieldByName('UF_WebService').AsString
      else
        msg :=  msg + 'UF do Webservice não informado!' + #13;

      ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
      ACBrNFe1.Configuracoes.WebServices.Visualizar := true;
      ACBrNFe1.Configuracoes.WebServices.Salvar := True;

      if not(cdsTmp.FieldByName('proxy_host').IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyHost := cdsTmp.FieldByName('proxy_host').AsString;
      if not(cdsTmp.FieldByName('proxy_porta').IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyPort := cdsTmp.FieldByName('proxy_porta').AsString;
      if not(cdsTmp.FieldByName('proxy_usuario').IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyUser := cdsTmp.FieldByName('proxy_usuario').AsString;
      if not(cdsTmp.FieldByName('proxy_senha').IsNull) then
        ACBrNFe1.Configuracoes.WebServices.ProxyPass := cdsTmp.FieldByName('proxy_usuario').AsString;

      if ACBrNFe1.DANFE <> nil then
      begin
        if not (cdsTmp.FieldByName('danfe_preview').IsNull) then
        begin
          if cdsTmp.FieldByName('danfe_preview').AsString = 'R' then
            ACBrNFe1.DANFE.TipoDANFE  := tiRetrato
          else
            ACBrNFe1.DANFE.TipoDANFE  := tiPaisagem;
        end
        else
          ACBrNFe1.DANFE.TipoDANFE  := tiRetrato;

        if not (cdsTmp.FieldByName('caminho_logomarca').IsNull) then
          ACBrNFe1.DANFE.Logo := cdsTmp.FieldByName('caminho_logomarca').AsString;

        ACBrNFe1.DANFE.PathPDF := caminho;

        //configura o caminho do Danfe do FastReport
        caminhorel := dmPadrao.RetornaConfig('caminho_rel');
        arqrel := caminhorel + 'DANFeRetrato.fr3';
      end;

    end;
  except
    on E: Exception do
    begin
      msg := E.Message;
    end;
  end;

  if trim(msg) = '' then
    Result := true
  else
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    Result := false;
  end;
end;

procedure TFrmImportaNFe.DBEchaveNFeEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEchaveNFe.Text;
end;

procedure TFrmImportaNFe.DBEchaveNFeExit(Sender: TObject);
var
  chNFe : string;
  idEmpresa, idCadEmpresa : integer;
begin
  inherited;
  if vlAnterior <> DBEchaveNFe.Text then
  begin
    chNFe := DBEchaveNFe.Text;

    //pega a empresa para manter a mesma após o insert
    idEmpresa := cdsPadraoidEmpresa.AsInteger;
    idCadEmpresa := cdsPadraoidCadEmpresa.AsInteger;

    cdsPadrao.Cancel;

    ACBrNFe1.NotasFiscais.Clear;

    LimpaProdutos;

    cdsPadrao.Append;

    cdsPadraoidEmpresa.AsInteger := idEmpresa;
    cdsPadraoidCadEmpresa.AsInteger := idCadEmpresa;
    cdsPadraochaveNFe.AsString := chNFe;
  end;
end;

procedure TFrmImportaNFe.DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmImportaNFe.DBEidFornecedorKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmImportaNFe.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsProdutos.State in [dsEdit, dsInsert]) then
        cdsProdutos.Edit;
      cdsProdutosidProduto.AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;
  end;
  if Key = VK_F5 then
  begin
    Application.CreateForm(TFrmCadProduto, FrmCadProduto);
    FrmCadProduto.FormStyle := fsNormal;
    FrmCadProduto.Visible := False;
    FrmCadProduto.ShowModal;
    DBEidProduto.SetFocus;
  end;
end;

procedure TFrmImportaNFe.DBEidProdutoKeyPress(Sender: TObject; var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TcxDBTextEdit).Properties.ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesProduto, FrmPesProduto);
      FrmPesProduto.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesProduto.Left := pRect.Left;
      FrmPesProduto.Top := pRect.Top + Self.Height;
      FrmPesProduto.ShowModal;
      if FrmPesProduto.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsProdutos.State in [dsEdit, dsInsert]) then
        cdsProdutos.Edit;
      cdsProdutosidProduto.AsInteger := FrmPesProduto.cdsGrid.FieldByName('idProduto').Value;
    end;
end;

procedure TFrmImportaNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmImportaNfe := nil;
end;

procedure TFrmImportaNFe.FormCreate(Sender: TObject);
begin
  inherited;
  cdsPadrao.CreateDataSet;
  cdsProdutos.CreateDataSet;
  Height := 655;
  Width := 1000;
  BaixarXMLNFe:= TDownloadXMLNFeDLL.Create;
  BaixarXMLNFe.CaptchaBossURL('http://fasttypers.org/imagepost.ashx');
end;

procedure TFrmImportaNFe.FormShow(Sender: TObject);
begin
  inherited;
  BtnAtualizarProd.Enabled := false;
  BtnAtualizaFor.Enabled := false;
  BtnSalvar.Enabled := false;

  cdsPadrao.Append;
  cdsPadraoidEmpresa.AsString := frmPrincipal.idEmpresa;
  cdsPadraoidCadEmpresa.AsString := frmPrincipal.idCadEmpresa;

  DBEchaveNFe.SetFocus;
end;

procedure TFrmImportaNFe.LimpaProdutos;
begin
  cdsProdutos.First;

  while not cdsProdutos.Eof do
  begin
    cdsProdutos.Delete;
    cdsProdutos.First;
  end;
end;

procedure TFrmImportaNFe.RelacionaProdutos;
var
  sql : string;
begin
  //Procedure responsável por buscar e relacionar o código do Nilus nos produtos

  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or (cdsProdutos.RecordCount = 0) then
    exit;


  cdsProdutos.First;

  while not cdsProdutos.Eof do
  begin
    sql := 'SELECT TOP 1 idProduto FROM ProdutoFornecedor ' +
           ' WHERE idFornecedor = ' + cdsPadraoidFornecedor.AsString +
           '   AND codFornecedor = ' + QuotedStr(trim(cdsProdutosidProdFornecedor.AsString));
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        if not (cdsProdutos.State in [dsEdit, dsInsert]) then
          cdsProdutos.Edit;

        cdsProdutosidProduto.AsInteger := FieldByName('idProduto').AsInteger;
        cdsProdutos.Post;
      end;
    end;
    cdsProdutos.Next;
  end;

  cdsProdutos.First;
end;

procedure TFrmImportaNFe.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Title := 'Selecione o arquivo XML';
  OpenDialog1.DefaultExt := '*.xml';
  OpenDialog1.Filter := 'Arquivos XML (*.xml)|*.xml';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
    if (trim(OpenDialog1.FileName) <> '') then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadraoarquivoXML.AsString := OpenDialog1.FileName;
  end;
end;

function TFrmImportaNFe.VerDownloadNfe(id : integer): boolean;
var
  sql : string;
  parar, erro : boolean;
  tentativa, timeout : integer;
begin
  Application.ProcessMessages;
  frmPrincipal.AbreStatus('Solicitando Download da NF-e para SEFAZ! Aguarde...');

  if trim(funcao.ConfigIni('LOCAL', 'TempoResposta', '', 1)) <> '' then
    timeout := StrToInt(funcao.ConfigIni('LOCAL', 'TempoResposta', '', 1))
  else
    timeout := 2000;

  Application.ProcessMessages;

  sql := 'SELECT * FROM NOTA_TEMP WHERE CNPJ_EMISSOR = ' + funcao.TiraMascara(QuotedStr(trim(lookidCnpjCpf.Caption))) +
         ' AND SERIE = 1 AND NUM_SEQ_NFE = ' + IntToStr(id);

  parar := false;
  erro := false;
  tentativa := 0;

  while not parar do
  begin
    sleep(timeout);
    Application.ProcessMessages;
    dmPadrao.cdsTmpNFe.Active := false;
    if dmPadrao.cdsTmpNFe.CommandText = sql then
      dmPadrao.cdsTmpNFe.CommandText := sql + ' AND 1=1'
    else
      dmPadrao.cdsTmpNFe.CommandText := sql;
    dmPadrao.cdsTmpNFe.Active := true;

    parar := dmPadrao.cdsTmpNFe.RecordCount = 0;
    tentativa := tentativa + 1;
    if tentativa > 10 then
    begin
      parar := true;
      erro := true;
    end;
  end;
  frmPrincipal.FechaStatus;
  Result := not erro;
  Application.ProcessMessages;

end;

end.
