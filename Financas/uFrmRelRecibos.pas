unit uFrmRelRecibos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, ExtDlgs,
  cxShellBrowserDialog, Menus, cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr,
  Provider, DBClient, ActnList, ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  frxClass, frxDBSet, ACBrBase, ACBrExtenso, CLookUp, Mask, DBCtrls, CDBEdit,
  CDBCheckBox, CDBRadioGroup, CGroupBox, cxCheckBox, CFind, cxCurrencyEdit,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions, System.ImageList;

type
  TFrmRelRecibos = class(TFrmPadraoPesquisaDevExpress)
    BtnImprimir: TCBitBtn;
    Extenso: TACBrExtenso;
    rptCheque: TfrxDBDataset;
    Report: TfrxReport;
    dsMovCaixa: TDataSource;
    cdsMovCaixa: TClientDataSet;
    dspMovCaixa: TDataSetProvider;
    sdsMovCaixa: TSQLDataSet;
    sdsMovConta: TSQLDataSet;
    dspMovConta: TDataSetProvider;
    cdsMovConta: TClientDataSet;
    dsMovConta: TDataSource;
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    cdsAdiantamento: TClientDataSet;
    cdsAdiantamentovlAdiantamento: TCurrencyField;
    cdsAdiantamentodtAdiantamento: TDateField;
    cdsAdiantamentodescAdiantamento: TStringField;
    dsAdiantamento: TDataSource;
    dspAdiantamento: TDataSetProvider;
    sdsAdiantamento: TSQLDataSet;
    lblCliFor: TCLabel;
    DBEidCadGeral: TCDBEdit;
    LookCliente: TCLookUp;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    CPanelGradient1: TCPanelGradient;
    DBRGtpRecibo: TCDBRadioGroup;
    CLabel8: TCLabel;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    CLabel1: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEnrTituloFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEnrTituloIni: TCDBEdit;
    CLabel3: TCLabel;
    DBEidReciboFim: TCDBEdit;
    CLabel7: TCLabel;
    DBEidReciboIni: TCDBEdit;
    CLabel9: TCLabel;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraotpRecibo: TStringField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraonrTituloIni: TStringField;
    cdsPadraonrTituloFim: TStringField;
    cdsPadraoidReciboIni: TIntegerField;
    cdsPadraoidReciboFim: TIntegerField;
    DBEvlReciboFim: TCDBEdit;
    CLabel10: TCLabel;
    DBEvlReciboIni: TCDBEdit;
    CLabel11: TCLabel;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    cdsPadraovlReciboIni: TCurrencyField;
    cdsPadraovlReciboFim: TCurrencyField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TIntegerField;
    cdsGrididMovCaixa: TIntegerField;
    cdsGrididMovConta: TIntegerField;
    cdsGridtipo: TSmallintField;
    cdsGrididRecibo: TIntegerField;
    cdsGridvlRecibo: TFMTBCDField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidMovCaixa: TcxGridDBColumn;
    DBViewidMovConta: TcxGridDBColumn;
    DBViewtipo: TcxGridDBColumn;
    DBViewidRecibo: TcxGridDBColumn;
    DBViewvlRecibo: TcxGridDBColumn;
    cdsGriddescCadCliente: TStringField;
    cdsGrididCnpjCpf: TStringField;
    DBViewdescCadCliente: TcxGridDBColumn;
    DBViewidCnpjCpf: TcxGridDBColumn;
    cdsGridsel: TStringField;
    DBViewsel: TcxGridDBColumn;
    cdsPadraoidConta: TIntegerField;
    FindEmpresa: TCFind;
    cdsTmp: TClientDataSet;
    cdsTmpidEmpresa: TIntegerField;
    cdsTmpidCadEmpresa: TIntegerField;
    cdsTmpidCaixa: TIntegerField;
    cdsTmpidConta: TIntegerField;
    dsTmp: TDataSource;
    cdsGriddtRecibo: TSQLTimeStampField;
    DBViewdtRecibo: TcxGridDBColumn;
    cdsTmpdescCliente: TStringField;
    cdsTmpidRecibo: TIntegerField;
    cdsTmpdtRecibo: TDateField;
    cdsTmpvlRecibo: TCurrencyField;
    cdsTmpidCnpjCpf: TStringField;
    cdsTmpreferencia: TStringField;
    cdsGridreferencia: TStringField;
    cdsGrididCliente: TIntegerField;
    procedure BtnImprimirClick(Sender: TObject);
    procedure actExportaExcelExecute(Sender: TObject);
    procedure DBRGtpReciboExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Fornecedor : boolean;
  public
    { Public declarations }
  end;

var
  FrmRelRecibos: TFrmRelRecibos;

implementation

uses uFrmPrincipal, uFuncao, uDmPadrao;

{$R *.dfm}

procedure TFrmRelRecibos.actExportaExcelExecute(Sender: TObject);
begin
//  inherited;
  funcao.ExportaExcell('Recibos', cxGrid);
end;

procedure TFrmRelRecibos.actPesquisarExecute(Sender: TObject);
var
  sql, where : String;
begin
  if Fornecedor then
  begin
    sql := 'SELECT ' + QuotedStr('N') +' sel, r.idEmpresa, r.idCadEmpresa, CASE WHEN r.idMovCaixa = 0 THEN NULL ELSE r.idMovCaixa END idMovCaixa, ' +
           'CASE WHEN r.idMovConta = 0 THEN NULL ELSE r.idMovConta END idMovConta, r.tipo, r.idRecibo, ' +
           ' r.vlRecibo, cad.descCadFornecedor descCadCliente, cad.idCnpjCpf, r.dtRecibo, r.referencia, t.idFornecedor AS idCliente ' +
           ' FROM Recibo r LEFT JOIN MovCaixa mcx ON r.idEmpresa = mcx.idEmpresa AND r.idCadEmpresa = mcx.idCadEmpresa ' +
           ' AND r.idMovCaixa = mcx.idMovCaixa LEFT JOIN MovCaixaTit mcxt ON mcxt.idMovCaixa = mcx.idMovCaixa LEFT JOIN TituloPagMov tm ' +
           ' ON mcxt.idTituloPagMov = tm.idTituloPagMov LEFT JOIN TituloPag t ON tm.idEmpresa = t.idEmpresa ' +
           ' AND tm.idCadEmpresa = t.idCadEmpresa AND tm.idFornecedor = t.idFornecedor AND tm.idTituloPag = t.idTituloPag LEFT JOIN MovConta mc ' +
           ' ON r.idEmpresa = mcx.idEmpresa AND r.idCadEmpresa = mcx.idCadEmpresa AND r.idMovConta = mc.idMovConta LEFT JOIN MovContaTit mct ' +
           ' ON mct.idMovConta = mc.idMovConta AND mct.idTituloPagMov = tm.idTituloPagMov AND tm.idEmpresa = t.idEmpresa ' +
           ' AND tm.idCadEmpresa = t.idCadEmpresa AND tm.idFornecedor = t.idFornecedor AND tm.idTituloPag = t.idTituloPag ' +
           ' LEFT JOIN vCadFornecedorContabil cad ON r.idCadGeral = cad.idFornecedor WHERE 1=1 AND tipo = 2';
    where := ' AND t.idFornecedor = ';
  end
  else
  begin
    sql := 'SELECT ' + QuotedStr('N') +' sel, r.idEmpresa, r.idCadEmpresa,  CASE WHEN r.idMovCaixa = 0 THEN NULL ELSE r.idMovCaixa END idMovCaixa, ' +
           'CASE WHEN r.idMovConta = 0 THEN NULL ELSE r.idMovConta END idMovConta, r.tipo, r.idRecibo, ' +
           ' r.vlRecibo, cad.descCadCliente, cad.idCnpjCpf, r.dtRecibo, r.referencia, t.idCliente ' +
           ' FROM Recibo r LEFT JOIN MovCaixa mcx ON r.idEmpresa = mcx.idEmpresa  AND r.idCadEmpresa = mcx.idCadEmpresa ' +
           ' AND r.idMovCaixa = mcx.idMovCaixa LEFT JOIN MovCaixaTit mcxt ON mcxt.idMovCaixa = mcx.idMovCaixa LEFT JOIN TituloRecMov tm '+
           ' ON mcxt.idTituloRecMov = tm.idTituloRecMov LEFT JOIN TituloRec t ON tm.idEmpresa = t.idEmpresa ' +
           ' AND tm.idCadEmpresa = t.idCadEmpresa AND tm.idCliente = t.idCliente AND tm.idTituloRec = t.idTituloRec LEFT JOIN MovConta mc ' +
           ' ON r.idEmpresa = mcx.idEmpresa AND r.idCadEmpresa = mcx.idCadEmpresa AND r.idMovConta = mc.idMovConta LEFT JOIN MovContaTit mct ' +
           ' ON mct.idMovConta = mc.idMovConta AND mct.idTituloRecMov = tm.idTituloRecMov AND tm.idEmpresa = t.idEmpresa ' +
           ' AND tm.idCadEmpresa = t.idCadEmpresa AND tm.idCliente = t.idCliente AND tm.idTituloRec = t.idTituloRec ' +
           ' LEFT JOIN vCadClienteContabil cad ON r.idCadGeral = cad.idCliente WHERE 1=1 AND tipo = 1';
    where := ' AND t.idCliente = ';
  end;
  if Trim(cdsPadraoconsolidaemp.AsString) = 'N' then
    sql := sql + ' AND r.idEmpresa = ' + cdsPadraoidEmpresa.AsString;
  if Trim(cdsPadraoconsolidaFilial.AsString) = 'N' then
    sql := sql + ' AND r.idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString;
  if Trim(cdsPadraoidCliente.AsString) <> '' then
    sql := sql + where + cdsPadraoidCliente.AsString;
  if Trim(cdsPadraoidCaixa.AsString) <> '' then
    sql := sql + ' AND idCaixa = ' + cdsPadraoidCaixa.AsString;
  if Trim(cdsPadraoidConta.AsString) <> '' then
    sql := sql + ' AND idConta = ' + cdsPadraoidConta.AsString;
  if Trim(cdsPadraodtInicial.AsString) <> '' then
    sql := sql + ' AND r.dtRecibo >= ' + QuotedStr(cdsPadraodtInicial.AsString);
  if Trim(cdsPadraodtFinal.AsString) <> '' then
    sql := sql + ' AND r.dtRecibo <= ' + QuotedStr(cdsPadraodtFinal.AsString);
  if Trim(cdsPadraonrTituloIni.AsString) <> '' then
    sql := sql + ' AND t.nrTituloPag >= ' + QuotedStr(cdsPadraonrTituloIni.AsString);
  if Trim(cdsPadraonrTituloFim.AsString) <> '' then
    sql := sql + ' AND t.nrTituloPag <= ' + QuotedStr(cdsPadraonrTituloFim.AsString);
  if Trim(cdsPadraoidReciboIni.AsString) <> '' then
    sql := sql + ' AND idReciboIni >= ' + cdsPadraoidReciboIni.AsString;
  if Trim(cdsPadraoidReciboFim.AsString) <> '' then
    sql := sql + ' AND idReciboFim <= ' + cdsPadraoidReciboFim.AsString;
  if Trim(cdsPadraovlReciboIni.AsString) <> '' then
    sql := sql + ' AND vlRecibo >= ' + QuotedStr(cdsPadraovlReciboIni.AsString);
  if Trim(cdsPadraovlReciboFim.AsString) <> '' then
    sql := sql + ' AND vlRecibo <= ' + QuotedStr(cdsPadraovlReciboFim.AsString);
  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;

end;

procedure TFrmRelRecibos.BtnImprimirClick(Sender: TObject);
Var
  slSQL: TStringList;
  referencia, sql : string;
begin
  inherited;
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'Recibo.fr3');

  slSQL := TStringList.Create;
  Extenso.Valor := cdsGrid.FieldByName('vlRecibo').Value;

  slSQL.Add('select g.idCadGeral, a.descCadAdicional, a.idInscEstadual, a.idCnpjCpf, a.idCidade,');
  slSQL.Add('a.endereco, a.numero, a.complemento, a.bairro, a.cep, a.fone,');
  slSQL.Add('rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade, rtrim(c.codDDD) codDDD');
  slSQL.Add('from cadgeral g');
  slSQL.Add('inner join cadadicional a');
  slSQL.Add('on (a.idcadgeral = g.idcadgeral)');
  slSQL.Add('inner join cidade c');
  slSQL.Add('on (c.idCidade = a.idCidade)');
  if Fornecedor then
    begin
      slSQL.Add('where g.idcadgeral = ' + DBEidEmpresa.Text + ' and');
      slSQL.Add('a.idcadadicional = ' + DBEidCadEmpresa.Text + ' and');
      slSQL.Add('g.empresa = ''S''');
    end
    else
      begin
        slSQL.Add('where g.idcadgeral = ' + cdsGrididCliente.AsString + ' and');
        slSQL.Add('a.idcadadicional = 1');
      end;

  Report.Variables['idRecibo']            := QuotedStr(cdsGrididRecibo.AsString);
  //
  if Fornecedor then
    begin
      Report.Variables['Nome-Assinatura'] := QuotedStr(cdsGriddescCadCliente.AsString);
      Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(cdsGrididCnpjCpf.AsString);
    end
    else
      begin
        Report.Variables['Nome-Assinatura'] := QuotedStr(LookdescAbreviada.Caption);
        Report.Variables['Cnpj-Cpf-Assinatura'] :=  QuotedStr(FrmPrincipal.ExecutaSQLRet([], '', 'SELECT idCnpjCpf FROM vCadEmpresaFiscal' +
                                                                                               ' WHERE idEmpresa =  ' + DBEidEmpresa.Text +
                                                                                               ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text).FieldByName('idCnpjCpf').Text);
      end;


  Report.Variables['valor']               := QuotedStr(Funcao.Mascara(FloatToStr(Extenso.Valor), 6, ''));
  Report.Variables['extenso-monetario']   := QuotedStr(UpperCase(Extenso.Texto));

  // Apenas para não dar erros
  Report.Variables['vlDescAcres'] := cdsAdiantamentovlAdiantamento.AsFloat;
  (Report.FindComponent('Memo40') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo26') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo41') as TfrxMemoView).Visible := False;
  (Report.FindComponent('Memo39') as TfrxMemoView).Visible := False;

  Report.Variables['Referencia']          := QuotedStr(cdsGridreferencia.AsString);
  //
  With FrmPrincipal.ExecutaSQLRet([], '', slSQL.Text) Do
  Begin
   Report.Variables['Nome-Empresa']     := QuotedStr(FieldByName('descCadAdicional').asString);
   Report.Variables['Cnpj-Cpf-Empresa'] := QuotedStr(FieldByName('idCnpjCpf').asString);
   Report.Variables['IE-RG-Empresa']    := QuotedStr(FieldByName('idInscEstadual').asString);
   Report.Variables['Endereco']         := QuotedStr(Format('%s, %s - %s', [FieldByName('endereco').asString, FieldByName('numero').asString, FieldByName('complemento').asString]));
   Report.Variables['Cidade']           := QuotedStr(FieldByName('nome_cidade').asString);
   Report.Variables['Fone']             := QuotedStr(Format('(%s)%s', [FieldByName('codDDD').asString, FieldByName('fone').asString]));
   Report.Variables['Nome']             := QuotedStr(FieldByName('descCadAdicional').asString);
   Report.Variables['local-data']       := QuotedStr(FieldByName('NOME_CIDADE').asString + ', ' + funcao.CDoW(cdsGrid.FieldByName('dtRecibo').AsDateTime, exdDMA));
  End;
  slSQL.Free;
  slSQL := Nil;
  Report.ShowReport;
end;

procedure TFrmRelRecibos.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'S';
  cdsPadraotpRecibo.AsString := 'C';
end;

procedure TFrmRelRecibos.ConfigLookEmpresa;
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
end;

procedure TFrmRelRecibos.DBRGtpReciboExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.FieldByName('tpRecibo').AsString = 'C' then
  begin
    Fornecedor := False;
    lblCliFor.Caption := 'Cliente';
    DBViewdescCadCliente.Caption := 'Cliente';
  end
  else
    begin
      lblCliFor.Caption := 'Fornecedor';
      Fornecedor := True;
      DBViewdescCadCliente.Caption := 'Fornecedor';
    end;
end;

procedure TFrmRelRecibos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelRecibos := nil;
end;

procedure TFrmRelRecibos.FormCreate(Sender: TObject);
begin
  inherited;
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
end;

procedure TFrmRelRecibos.FormShow(Sender: TObject);
begin
  inherited;
  DBEidCadGeral.SetFocus;
  WindowState := wsMaximized;
  if not filial then
  begin
    DBEidCadEmpresa.Visible := false;
    LookdescCadEmpresa.Left := 109;
    LookdescAbreviada.Left := 341;
    cdsPadrao.FieldByName('idCadEmpresa').Value := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
    if not cdsPadraoidCadEmpresa.AsInteger > 0 then
      cdsPadraoidCadEmpresa.AsInteger := 1;

    FindEmpresa.JoinClause.Clear;
    FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                               ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                               ' AND acessa = ' + QuotedStr('S') + ')');

    DBEidEmpresa.Find := FindEmpresa;

  end
  else
    cdsPadraoidCadEmpresa.AsString := FrmPrincipal.idCadEmpresa;

  DBCKconsolidafilial.Visible := filial;
end;

end.

