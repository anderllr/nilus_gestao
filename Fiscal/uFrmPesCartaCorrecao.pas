unit uFrmPesCartaCorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, CDBMemo, ACBrNFeDANFEClass,
  ACBrNFe, pcnRetConsReciNFe, ACBrUtil, pcnNFeW, pcnAuxiliar, System.Actions, VMXCCePrint,
  frxClass, frxExportPDF, frxDBSet, ClipBrd, uFrmPadraoPesqEmpFiscal, ACBrBase,
  ACBrDFe, System.ImageList;

type
  TFrmPesCartaCorrecao = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanCliente: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    FindCliente: TCFind;
    FindPropriedade: TCFind;
    CPanelGradient1: TCPanelGradient;
    BtnExcluir: TCBitBtn;
    DBEstCartaCorrecao: TCDBEdit;
    CLabel25: TCLabel;
    DBEidNf: TCDBEdit;
    CLabel3: TCLabel;
    DBEidDocSerie: TCDBEdit;
    CLabel4: TCLabel;
    CGroupBox3: TCGroupBox;
    DBMdescCorrecao: TCDBMemo;
    BtnSalvar: TCBitBtn;
    BtnEnviar: TCBitBtn;
    CBitBtn2: TCBitBtn;
    BtnEmail: TCBitBtn;
    CLabel5: TCLabel;
    cdsCarta: TClientDataSet;
    dsCarta: TDataSource;
    dspCarta: TDataSetProvider;
    sdsCarta: TSQLDataSet;
    ACBrNFe1: TACBrNFe;
    BtnCancelar: TCBitBtn;
    CBitBtn1: TCBitBtn;
    BtnNovo: TCBitBtn;
    frxDataset: TfrxDBDataset;
    frxRel: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    BtnImprimir: TCBitBtn;
    cdsCartaidEmpresa: TIntegerField;
    cdsCartaidCadEmpresa: TSmallintField;
    cdsCartaidDocSerie: TStringField;
    cdsCartaidNf: TIntegerField;
    cdsCartaidCartaCorrecao: TSmallintField;
    cdsCartachaveNFe: TStringField;
    cdsCartaversaoEvento: TStringField;
    cdsCartacodOrgao: TSmallintField;
    cdsCartaCNPJ: TStringField;
    cdsCartaCPF: TStringField;
    cdsCartadtCorrecao: TDateField;
    cdsCartatpEvento: TStringField;
    cdsCartadescEvento: TStringField;
    cdsCartadescCorrecao: TStringField;
    cdsCartadescCondUso: TStringField;
    cdsCartanrProtocolo: TStringField;
    cdsCartastCartaCorrecao: TStringField;
    cdsCartadescErro: TStringField;
    cdsCartaemail: TStringField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidInscEstadual: TStringField;
    cdsPadraoidProduto: TIntegerField;
    cdsConfig: TClientDataSet;
    dsConfig: TDataSource;
    dspConfig: TDataSetProvider;
    sdsConfig: TSQLDataSet;
    LookDocSerie: TCLookUp;
    lookSerieFiscal: TCLookUp;
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    function EnviaEmail(Subject, FileName, Email: String): Boolean;
    procedure AbreConfig(cnpj: string);
    procedure BtnEnviarClick(Sender: TObject);
    procedure BtnEmailClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure cdsCartaAfterScroll(DataSet: TDataSet);
    procedure DBGridCellClick(Column: TColumn);
    procedure VerStatusCarta;
    procedure cdsCartaAfterInsert(DataSet: TDataSet);
    procedure dspCartaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, cdOperacao : integer;
  end;

var
  FrmPesCartaCorrecao: TFrmPesCartaCorrecao;

implementation

uses uFuncao, uFrmPrincipal, uDmFind, uDmPadrao, uFrmNotaFiscal;

{$R *.dfm}

procedure TFrmPesCartaCorrecao.AbreConfig(cnpj: string);
begin
  with dmPadrao do
  begin
    cdsConfig.Active := false;
    cdsConfig.CommandText := 'SELECT * FROM ConfigFiscal WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);
    cdsConfig.Active := true;
  end;
end;

procedure TFrmPesCartaCorrecao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  cdsCarta.Cancel;
end;

procedure TFrmPesCartaCorrecao.BtnEmailClick(Sender: TObject);
var
  email, assunto, arquivo : String;
begin
  if trim(cdsCartaEMAIL.AsString) <> '' then
    email := trim(cdsCartaEMAIL.AsString)
  else
   if not(InputQuery('Não há email registrado na Nota!', 'Informe o Email de destino', email)) then
      exit;
  assunto := 'Xml de Carta de Correção - NF-e.: ' + cdsCartaidNf.AsString;
  arquivo := cdsCartachaveNFe.AsString + '1101101-ProcEventoNFe.xml';
  EnviaEmail(assunto, arquivo, email);
end;

procedure TFrmPesCartaCorrecao.BtnEnviarClick(Sender: TObject);
var
  sql, cnpj_emissor : string;
  parar, erro : boolean;
  tentativa, id : integer;
begin
  {if not (FrmCadNF.conectado) then
  begin
    messagedlg('O TransfNfe não está conectado!', mtwarning, [mbok], 0);
    exit;
  end;}

  try
    cdsCarta.Edit;
    cdsCartadtCorrecao.AsDateTime := date;
    cdsCartadescErro.AsString := '';
    cdsCarta.Post;
    cdsCarta.ApplyUpdates(0);
  except on E: Exception do
    ShowMessage('Falha no cdsCarta' + E.Message);
  end;

  cnpj_emissor := funcao.TiraMascara(trim(lookidCnpjCpf.Caption));
  //Integra a Carta de correção com o BDNFE
  with dmPadrao do
  begin
    cdsCartaNfe.Active := false;   //////VER AQUI QUESTÃO DO CNPJ QUE PODE SER CPF
    cdsCartaNfe.CommandText := 'SELECT * FROM NOTA_CARTACORRECAO WHERE CNPJ_EMISSOR = ' + cnpj_emissor +
         ' AND NUM_SERIE_DOCTO_FISCAL = ' + trim(lookSerieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' +
         cdsCartaidNf.AsString + ' AND ID_CARTACORRECAO = '+ cdsCartaidCartaCorrecao.AsString;
    cdsCartaNfe.Active := true;
    if cdsCartaNfe.RecordCount > 0 then
      cdsCartaNfe.Edit
    else
    begin
      cdsCartaNfe.Append;
      cdsCartaNfe.FieldByName('CNPJ_EMISSOR').AsString := cnpj_emissor;
      cdsCartaNfe.FieldByName('NUM_SERIE_DOCTO_FISCAL').AsInteger := StrToInt(trim(lookSerieFiscal.Caption));
      cdsCartaNfe.FieldByName('NUM_SEQ_NFE').AsInteger := cdsCartaidNf.AsInteger;
    end;
    cdsCartaNfe.FieldByName('ID_CARTACORRECAO').AsInteger := cdsCartaidCartaCorrecao.AsInteger;
    cdsCartaNfe.FieldByName('CHAVE_NFE').AsString := cdsCartachaveNFe.AsString;
    cdsCartaNfe.FieldByName('COD_ORGAO').AsInteger := cdsCartacodOrgao.AsInteger;
    if trim(cdsCartaCNPJ.AsString) <> '' then
      cdsCartaNfe.FieldByName('CNPJ').AsString := trim(cdsCartaCNPJ.AsString)
    else
      cdsCartaNfe.FieldByName('CPF').AsString := trim(cdsCartaCPF.AsString);
    cdsCartaNfe.FieldByName('DESC_CORRECAO').AsString := cdsCartadescCorrecao.AsString;
    cdsCartaNfe.FieldByName('ST_CARTACORRECAO').AsString := cdsCartastCartaCorrecao.AsString;
    cdsCartaNfe.FieldByName('DESC_ERRO').AsString := '';
    cdsCartaNfe.Post;
    cdsCartaNfe.ApplyUpdates(0);

  end; //fim with dmPadraoArm do

  try
    //Adiciona na tabela NOTA_TEMP para que seja enviada
    dmPadrao.cdsTmpNfe.Active := False;
    sql := 'SELECT * FROM NOTA_TEMP WHERE CNPJ_EMISSOR = ' + QuotedStr(cnpj_emissor) +
         ' AND SERIE = ' + trim(lookSerieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' + cdsCartaidNf.AsString;
    dmPadrao.cdsTmpNfe.CommandText := sql;
    dmPadrao.cdsTmpNfe.Active := True;
    if dmPadrao.cdsTmpNfe.RecordCount = 0 then
    begin
      dmPadrao.cdsTmpNfe.Append;
      dmPadrao.cdsTmpNfe.FieldByName('CNPJ_EMISSOR').AsString := cnpj_emissor;
      dmPadrao.cdsTmpNfe.FieldByName('SERIE').AsString := trim(lookSerieFiscal.Caption);
      dmPadrao.cdsTmpNfe.FieldByName('NUM_SEQ_NFE').AsInteger := cdsCartaidNf.AsInteger;
      dmPadrao.cdsTmpNfe.FieldByName('ORDEM').AsInteger := cdsCartaidCartaCorrecao.AsInteger;
      dmPadrao.cdsTmpNfe.FieldByName('ACAO').AsString := 'C'; // C - Carta de Correção
      dmPadrao.cdsTmpNfe.FieldByName('STATUS').AsString := 'A ENVIAR';
      dmPadrao.cdsTmpNfe.FieldByName('TP_EMISSAO').AsString := 'Normal';
      dmPadrao.cdsTmpNfe.FieldByName('USUARIO').AsString := frmPrincipal.idUsuario;
      dmPadrao.cdsTmpNfe.Post;
      dmPadrao.cdsTmpNfe.ApplyUpdates(0);
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;

  //Consulta se já foi
  Application.ProcessMessages;
  frmPrincipal.AbreStatus('Enviando Carta de Correção... Aguarde...');

  Application.ProcessMessages;

  id := cdsCartaidCartaCorrecao.AsInteger;
  parar := false;
  erro := false;
  tentativa := 0;
  while not parar do
  begin
    sleep(2000);
    dmPadrao.dbConexaoNFe.Connected := false;
    dmPadrao.dbConexaoNFe.Connected := true;
    Application.ProcessMessages;
    dmPadrao.cdsTmpNfe.Active := false;
    if dmPadrao.cdsTmpNfe.CommandText = sql then
      dmPadrao.cdsTmpNfe.CommandText := sql + ' AND 1=1'
    else
      dmPadrao.cdsTmpNfe.CommandText := sql;
    dmPadrao.cdsTmpNfe.Active := true;

    parar := dmPadrao.cdsTmpNfe.RecordCount = 0;
    tentativa := tentativa + 1;
    if tentativa >= 10 then
    begin
      parar := true;
      erro := true;
    end;
  end;

    FrmPrincipal.FechaStatus;

  Application.ProcessMessages;


  dmPadrao.cdsCartaNfe.Active := false;
  dmPadrao.cdsCartaNfe.CommandText := dmPadrao.cdsCartaNfe.CommandText + ' AND 1=1';
  dmPadrao.cdsCartaNfe.Active := true;

  if (erro) and (dmPadrao.cdsCartaNfe.FieldByName('ST_CARTACORRECAO').AsString <> 'PROCESSADA') then
    messagedlg('Não foi possível realizar a solicitação! Verifique o TransfNfe!', mterror, [mbok], 0)
  else
  begin
    dmPadrao.cdsCartaNfe.Active := false;
    dmPadrao.cdsCartaNfe.CommandText := dmPadrao.cdsCartaNfe.CommandText + ' AND 1=1';
    dmPadrao.cdsCartaNfe.Active := true;
    cdsCarta.Edit;
    cdsCartastCartaCorrecao.AsString := dmPadrao.cdsCartaNfe.FieldByName('ST_CARTACORRECAO').AsString;
    if trim(dmPadrao.cdsCartaNfe.FieldByName('ST_CARTACORRECAO').AsString) <> '' then
      cdsCartastCartaCorrecao.AsString := dmPadrao.cdsCartaNfe.FieldByName('ST_CARTACORRECAO').AsString;
    if trim(dmPadrao.cdsCartaNfe.FieldByName('DESC_ERRO').AsString) <> '' then
      cdsCartadescErro.AsString := dmPadrao.cdsCartaNfe.FieldByName('DESC_ERRO').AsString;

    cdsCarta.Post;
    cdsCarta.ApplyUpdates(0);
    if trim(cdsCartadescErro.AsString) <> '' then
      messagedlg('Ocorreu erro: ' + #13 + cdsCartadescErro.AsString, mterror, [mbok], 0);
  end;
end;

procedure TFrmPesCartaCorrecao.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  cdsCarta.Delete;
  cdsCarta.ApplyUpdates(0);
end;

procedure TFrmPesCartaCorrecao.BtnImprimirClick(Sender: TObject);
var
  CCeImp1: TCCeImp;
  arqNfe, arqCCe, msg : string;
begin
  dmPadrao.cdsNotaNfe.Active := false;
  dmPadrao.cdsNotaNfe.CommandText := 'SELECT * FROM NOTA_NFE WHERE CNPJ_EMISSOR = ' + QuotedStr(funcao.TiraMascara(lookidCnpjCpf.Caption)) +
      ' AND NUM_SERIE_DOCTO_FISCAL = ' + frmNotaFiscal.lookSerieFiscal.Caption + ' AND NUM_SEQ_NFE = ' + cdsCartaidNf.AsString;
  dmPadrao.cdsNotaNfe.Active := true;

  if not (frmNotaFiscal.ConfigACBR('Normal')) then
    exit;

  CCeImp1 := TCCeImp.Create(nil);
  CCeImp1.defineSaida(tps_preview,'ProcEventoNFe.pdf'); // tps_PDF ou tps_Print
  CCeImp1.defineLayOut(fp_Portrait); // implementado impressão retrato
  arqNfe := frmNotaFiscal.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\Nfe\' + dmPadrao.cdsNotaNfe.FieldByName('DSC_ARQUIVO_XML').AsString;
//  arqNfe := 'D:\Sistemas\NFe\TransNFe\Xml' + '\' + dmPadrao.cdsNota.FieldByName('DSC_ARQUIVO_XML').AsString;

  arqCCe := cdsCartachaveNFe.AsString + '1101100' + cdsCartaidCartaCorrecao.AsString + '-ProcEventoNFe.xml';
//  arqCCe := frmNotaFiscal.ACBrNFe1.Configuracoes.Arquivos.PathCCe + 'CCe\' + arqCce;
  arqCCe := frmNotaFiscal.ACBrNFe1.Configuracoes.Arquivos.PathEvento + '\Evento\CCe\' + arqCce;
  Clipboard.AsText := arqCCe;
//  arqCCe := 'D:\Sistemas\NFe\TransNFe\Xml' + '\' + arqCce;
  CCeImp1.defineXMLNFe(arqNfe); // XML da NFe corrigida
  CCeImp1.defineXMLCCe(arqCCe); // XML da CCe

  CCeImp1.defineSoftHouse('Nilus Soluções para o Agronegócio');
  try
    CCeImp1.Execute;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
    end;
  end;
  CCeImp1.Free;
end;

procedure TFrmPesCartaCorrecao.BtnNovoClick(Sender: TObject);
begin
  inherited;
  cdsCarta.Append;
  DBMdescCorrecao.SetFocus;
end;

procedure TFrmPesCartaCorrecao.BtnSalvarClick(Sender: TObject);
var
  sql : string;
begin
  if not(cdsCarta.Active) then
    cdsCarta.Open;
  if not(cdsCarta.State IN [dsEdit, dsInsert]) then
    cdsCarta.Append;
  sql := 'SELECT MAX(idCartaCorrecao) ID FROM NfCartaCorrecao ' +
         ' WHERE idEmpresa = ' + DBEidEmpresa.Field.AsString +
         '   AND idCadEmpresa = ' + DBEidCadEmpresa.Field.AsString +
         '   AND idDocSerie = ' + DBEidDocSerie.Field.AsString +
         '   AND idNf = ' + cdsCartaidNf.AsString;
  cdsCartaidCartaCorrecao.AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('ID').AsInteger + 1;

  //Busca os dados da NFE
  sql := 'SELECT * FROM NOTA_NFE ' +
         ' WHERE CNPJ_EMISSOR = ' + QuotedStr(funcao.TiraMascara(trim(lookidCnpjCpf.Caption))) +
         '   AND NUM_SERIE_DOCTO_FISCAL = ' + trim(lookSerieFiscal.Caption) +
         ' AND NUM_SEQ_NFE = ' + cdsCartaidNf.AsString;
  dmPadrao.cdsNotaNFe.Active := false;
  dmPadrao.cdsNotaNFe.CommandText := sql;
  dmPadrao.cdsNotaNFe.Active := true;
  with dmPadrao.cdsNotaNFe do
  begin
    cdsCartachaveNFe.AsString := FieldByName('A_ID').AsString;
    cdsCartaversaoEvento.AsString := '1.00';
    cdsCartacodOrgao.AsString := copy(FieldByName('A_ID').AsString,1,2);
    if trim(FieldByName('E_CNPJ').AsString) <> '' then
      cdsCartaCNPJ.AsString := trim(FieldByName('E_CNPJ').AsString)
    else
      cdsCartaCPF.AsString := trim(FieldByName('E_CPF').AsString);
    //A data também deverá ser ajustada ao transmitir
    cdsCartadtCorrecao.AsDateTime := date;
    cdsCartatpEvento.AsString := '110110';
    cdsCartadescEvento.AsString := 'Carta de Correção';
    cdsCartadescCondUso.AsString := 'A Carta de Correção é disciplinada pelo § 1º-A do art. 7º do ' +
               'Convênio S/N, de 15 de dezembro de 1970 e pode ser utilizada para regularização de ' +
               'erro ocorrido na emissão de documento fiscal, desde que o erro não esteja relacionado ' +
               'com: I - as variáveis que determinam o valor do imposto tais como: base de cálculo, ' +
               'alíquota, diferença de preço, quantidade, valor da operação ou da prestação; II - a ' +
               'correção de dados cadastrais que implique mudança do remetente ou do destinatário; ' +
               'III - a data de emissão ou de saída.';
    cdsCartastCartaCorrecao.AsString := 'ATIVO';
    cdsCarta.Post;
    cdsCarta.ApplyUpdates(0);
  end;
end;

procedure TFrmPesCartaCorrecao.cdsCartaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCartaidEmpresa.AsString := FrmNotaFiscal.DBEidEmpresa.Field.AsString;
  cdsCartaidCadEmpresa.AsString := FrmNotaFiscal.DBEidCadEmpresa.Field.AsString;
  cdsCartaidNf.AsString := FrmNotaFiscal.DBEidNf.Field.AsString;
  cdsCartaidDocSerie.AsString := FrmNotaFiscal.DBEidDocSerie.Field.AsString;
end;

procedure TFrmPesCartaCorrecao.cdsCartaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BtnSalvar.Enabled := (cdsCarta.State in [dsEdit, dsInsert]);
  BtnCancelar.Enabled := (cdsCarta.State in [dsEdit, dsInsert]);
  BtnExcluir.Enabled := (cdsCarta.State = dsBrowse) and (cdsCartastCartaCorrecao.AsString <> 'PROCESSADA') and
                        (cdsCarta.RecordCount > 0);
  BtnNovo.Enabled := (cdsCarta.State = dsBrowse);

  BtnEnviar.Enabled := BtnExcluir.Enabled;

  BtnEmail.Enabled := (cdsCarta.State = dsBrowse) and (cdsCartastCartaCorrecao.AsString = 'PROCESSADA');

  funcao.SomenteLeitura([DBMdescCorrecao], not (cdsCarta.State in [dsEdit, dsInsert]));
  BtnImprimir.Enabled := (cdsCartastCartaCorrecao.AsString = 'PROCESSADA');
end;

procedure TFrmPesCartaCorrecao.DBGridCellClick(Column: TColumn);
begin
  inherited;
  BtnSalvar.Enabled := (cdsCarta.State in [dsEdit, dsInsert]);
  BtnCancelar.Enabled := (cdsCarta.State in [dsEdit, dsInsert]);
  BtnExcluir.Enabled := (cdsCarta.State = dsBrowse) and (cdsCartastCartaCorrecao.AsString <> 'PROCESSADA') and
                        (cdsCarta.RecordCount > 0);
  BtnNovo.Enabled := (cdsCarta.State = dsBrowse);

  BtnEnviar.Enabled := BtnExcluir.Enabled;

  BtnEmail.Enabled := (cdsCarta.State = dsBrowse) and (cdsCartastCartaCorrecao.AsString = 'PROCESSADA');

  funcao.SomenteLeitura([DBMdescCorrecao], not (cdsCarta.State in [dsEdit, dsInsert]));
  BtnImprimir.Enabled := (cdsCartastCartaCorrecao.AsString = 'PROCESSADA');

end;

procedure TFrmPesCartaCorrecao.dspCartaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  DeltaDS.FieldByName('idEmpresa').NewValue := FrmNotaFiscal.cdsPadraoidEmpresa.Value;
  DeltaDS.FieldByName('idCadEmpresa').NewValue := FrmNotaFiscal.cdsPadraoidCadEmpresa.Value;
  DeltaDS.FieldByName('idNf').NewValue := FrmNotaFiscal.cdsPadraoidNf.Value;
  DeltaDS.FieldByName('idDocSerie').NewValue := FrmNotaFiscal.cdsPadraoidDocSerie.Value;
end;

function TFrmPesCartaCorrecao.EnviaEmail(Subject, FileName,
  Email: String): Boolean;
var
  msg, anexo : TStringList;
  sql, caminho : string;
begin
  msg := TStringList.Create;
  anexo := TStringList.Create;
  try
    //Procedimento de envio de email
    if trim(Email) <> '' then
    begin
      AbreConfig(funcao.TiraMascara(trim(lookidCnpjCpf.Caption)));
      caminho := dmPadrao.cdsConfigNFECAMINHO_ARQUIVOS.AsString + '\' + funcao.TiraMascara(trim(lookidCnpjCpf.Caption)) + '\';
      caminho := caminho + 'CCE\';

      anexo.Add(caminho+FileName);
      sql := 'SELECT * FROM EMISSOR WHERE CNPJ_EMISSOR = ' + QuotedStr(funcao.TiraMascara(trim(lookidCnpjCpf.Caption)));
      msg.Add('Segue em anexo arquivo referente a carta de Correção da NF-e.: ' + cdsCartaidNf.AsString + ' da ' +
              frmPrincipal.ExecutaSQLRet([],'', sql).FieldByName('XNOME').AsString);
      funcao.EnviarEmail(dmPadrao.cdsConfigNFESERVIDOR_SMTP .AsString, dmPadrao.cdsConfigNFEPORTA.AsString,
                         dmPadrao.cdsConfigNFEUSUARIO.AsString, dmPadrao.cdsConfigNFESENHA.AsString,
                         dmPadrao.cdsConfigNFEEMAIL_ORIGEM.AsString, trim(Email), Subject,
                         msg, dmPadrao.cdsConfigNFECONEXAO_SEGURA.AsString = 'S', nil, anexo, false, true,'');
    end;
  except
    On E: Exception Do
    Begin
      messagedlg(E.Message, mterror, [mbok], 0);
    End;
  end;
  msg.Free;
  anexo.Free;
end;


procedure TFrmPesCartaCorrecao.FormCreate(Sender: TObject);
var
  teste : string;
begin
  inherited;
  with cdsCarta do
  begin
    Active := False;
    CommandText := 'SELECT * FROM NfCartaCorrecao WHERE idEmpresa = ' + FrmNotaFiscal.DBEidEmpresa.Field.AsString +
                   ' AND idCadEmpresa = ' + FrmNotaFiscal.DBEidCadEmpresa.Field.AsString +
                   ' AND idDocSerie = ' + QuotedStr(FrmNotaFiscal.DBEidDocSerie.Field.AsString) + '  AND idNf = ' +
                   FrmNotaFiscal.DBEidNf.Field.AsString;
    Active := true;
    Append;
    FieldByName('idCartaCorrecao').AsInteger := 0;
    FieldByName('idEmpresa').AsString := FrmNotaFiscal.DBEidEmpresa.Field.AsString;
    FieldByName('idCadEmpresa').AsString := FrmNotaFiscal.DBEidEmpresa.Field.AsString;
    FieldByName('idDocSerie').AsString := FrmNotaFiscal.DBEidDocSerie.Field.AsString;
    FieldByName('idNf').AsString := FrmNotaFiscal.DBEidNf.Field.AsString;
  end;
end;

procedure TFrmPesCartaCorrecao.FormShow(Sender: TObject);
begin
  inherited;
  if (FrmNotaFiscal.cdsEmpresaidEmpresa.AsInteger <> cdsEmpresaidEmpresa.AsInteger) or
     (FrmNotaFiscal.cdsEmpresaidCadEmpresa.AsInteger <> cdsEmpresaidCadEmpresa.AsInteger) then
  begin
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsInteger := FrmNotaFiscal.cdsEmpresaidEmpresa.AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := FrmNotaFiscal.cdsEmpresaidCadEmpresa.AsInteger;
  end;

  VerStatusCarta;
  Height := 577;
  Width := 752;
end;

procedure TFrmPesCartaCorrecao.VerStatusCarta;
begin
  //Verifica se o status da carta local não está diferente da BDNFe
  if cdsCarta.RecordCount = 0 then
    exit;

  cdsCarta.First;
  while not cdsCarta.Eof do
  begin
    dmPadrao.cdsCartaNfe.Active := false;   //////VER AQUI QUESTÃO DO CNPJ QUE PODE SER CPF
    dmPadrao.cdsCartaNfe.CommandText := 'SELECT * FROM NOTA_CARTACORRECAO WHERE CNPJ_EMISSOR = ' + trim(funcao.TiraMascara(lookidCnpjCpf.Caption)) +
         ' AND NUM_SERIE_DOCTO_FISCAL = ' + trim(lookSerieFiscal.Caption) + ' AND NUM_SEQ_NFE = ' +
         cdsCartaidNf.AsString + ' AND ID_CARTACORRECAO = '+ cdsCartaidCartaCorrecao.AsString;
    dmPadrao.cdsCartaNfe.Active := true;

    if dmPadrao.cdsCartaNFe.RecordCount > 0 then
    begin
      if dmPadrao.cdsCartaNFe.FieldByName('ST_CARTACORRECAO').AsString <> cdsCartastCartaCorrecao.AsString then
      begin
        cdsCarta.Edit;
        cdsCartastCartaCorrecao.AsString := dmPadrao.cdsCartaNFe.FieldByName('ST_CARTACORRECAO').AsString;
        cdsCarta.Post;
        cdsCarta.ApplyUpdates(0);
      end;
    end;

    cdsCarta.Next;
  end;
end;

end.
