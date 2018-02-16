unit uFrmRelBalPatrimonial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, CRadioGroup,
  CCheckBox, CGroupBox, CDBCheckBox, ClipBrd, Grids, DBGrids, ComCtrls,
  CDBButtonEdit, ACBrBase, ACBrExtenso, System.Actions, System.ImageList;

type
  TFrmRelBalPatrimonial = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    DBRGtpPlanoConta: TCDBRadioGroup;
    GPPeriodo: TCGroupBox;
    CLabel1: TCLabel;
    CLabel5: TCLabel;
    DBEnrGrau: TCDBEdit;
    frxRel: TfrxReport;
    CRadioGroup1: TCRadioGroup;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraonrGrau: TSmallintField;
    cdsPadraoListarSaldoZero: TStringField;
    DBEListarSaldoZero: TCDBEdit;
    CLabel6: TCLabel;
    cdsPadraomesAnoIni: TStringField;
    DBEmesAnoIni: TCDBEdit;
    ACBRExtenso: TACBrExtenso;
    cdsContador: TClientDataSet;
    dspContador: TDataSetProvider;
    FrxDatasetCont: TfrxDBDataset;
    CLabel3: TCLabel;
    CHKOficial: TCCheckBox;
    CHKTermoResp: TCCheckBox;
    CBListarSaldoZero: TCCheckBox;
    DBEDtIni: TCDBEdit;
    DBEdtFim: TCDBEdit;
    cdsPadraodtEmissao: TDateField;
    cdsPadraodtEncerramento: TDateField;
    DBEdtEmissao: TCDBEdit;
    DBEdtEncerramento: TCDBEdit;
    cdsPadraodtIni: TStringField;
    cdsPadraodtFim: TStringField;
    cdsRelatorioclassificacao: TStringField;
    cdsRelatoriodescCadEmpresa: TStringField;
    cdsRelatoriocdPlanoConta: TStringField;
    cdsRelatoriodescPlanoConta: TStringField;
    cdsRelatoriovlSaldoAnt: TFMTBCDField;
    cdsRelatoriovlDebito: TFMTBCDField;
    cdsRelatoriovlCredito: TFMTBCDField;
    cdsRelatoriovlSaldoAtual: TFMTBCDField;
    cdsRelatorionrGrau: TSmallintField;
    cdsRelatorionaturezaPlanoConta: TStringField;
    cdsRelatorioidAgrupa: TStringField;
    cdsPagina: TClientDataSet;
    dspPagina: TDataSetProvider;
    frxDBPagina: TfrxDBDataset;
    procedure actGerarExecute(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEClassificacaoIniExit(Sender: TObject);
    procedure DBEClassificacaoIniEnter(Sender: TObject);
    procedure DBRGtpPlanoContaExit(Sender: TObject);
    procedure CHKOficialExit(Sender: TObject);
  private
    mascara : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelBalPatrimonial: TFrmRelBalPatrimonial;
implementation

uses uFrmPadraoRel, uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelBalPatrimonial.actGerarExecute(Sender: TObject);
var
  dtFinal : TDateTime;
  msg : string;
  dtIni, dtFim : string;
  DataI, DataF : TDateTime;
  anoi, mesi, diai : Word;
  anof, mesf, diaf : Word;
  dtTemp, sql : string;
  ordem, idLivro, ultPag, idLivroAnt : integer;
begin
//  inherited;
  if DBRGtpPlanoConta.value ='' then
  begin
    messagedlg('Informe a Origem!', mtWarning, [mbOK], 0);
    DBRGtpPlanoConta.SetFocus;
    exit;
  end;

  dtFim := cdsPadraodtEncerramento.AsString;
  dtIni := DateToStr(cdsPadraodtEncerramento.AsDateTime - 364);

  screen.Cursor := crSQLWait;
  if CHKOficial.Checked then
  begin
    //Verificação de datas
    if Trim(dtIni) <> '' then
    begin
      DataI := StrToDate(dtIni);
      DecodeDate(DataI,anoi,mesi,diai);
      DataF := StrToDate(dtFim);
      DecodeDate(DataF,anof,mesf,diaf);
    end;

    //Verifica a ordem do Diario Geral
    sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr('Balanço Patrimonial');
    ordem := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('ordem').AsInteger;
    idLivro := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('idLivro').AsInteger;
    //Busca Livro anterior ao Diario Geral
    sql := 'SELECT L.ordem, P.ano, P.pagInicial, P.pagFinal, L.descLivro, L.idLivro ' +
           '  FROM contPagina P INNER JOIN ContLivro L ON P.idLivro = L.idLivro ' +
           ' WHERE L.ordem = ' + IntToStr(ordem-1) +
           '   AND P.ano = ' + IntToStr(anoi) +
           '   AND P.idEmpresa = ' + DBEidEmpresa.Text +
           '   AND L.descLivro <> ' + QuotedStr('Razão Analítico');
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if ordem > 2 then
      begin
        if FieldByName('pagFinal').IsNull then
        begin
          MessageDlg('Relatório Anterior não Gerado! ' + FieldByName('descLivro').AsString +
                     ' Não será possível pegar a pagina anterior para relatório oficial.', mtWarning, [mbOK], 0);
          DBEdtEmissao.SetFocus;
          Exit;
        end;
      end;
      if ordem = 2 then
        ultPag := 2
      else
        ultPag := FieldByName('pagFinal').AsInteger + 1;
    end;
    //Busca ultima pagina emitida para dar sequencia nas demais
    sql := 'SELECT L.idLivro FROM ContLivro L' +
           ' WHERE L.ordem = ' + IntToStr(ordem-1) +
           ' AND L.descLivro <> ' + QuotedStr('Razão Analítico');
    idLivroAnt := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idLivro').AsInteger;

    cdsPagina.Active := false;
    cdsPagina.CommandText := 'SELECT (ISNULL(pagFinal, 0)+1) pagFinal FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
                             ' AND idLivro = ' + IntToStr(idLivroAnt) +
                             ' AND ano = ' + IntToStr(anoi);
    cdsPagina.Active := true;

    //Verifica Se é a primeira pagina
    if (cdsPagina.FieldByName('pagFinal').AsInteger = 0) OR (idLivroAnt = 3) then
    begin
      cdsPagina.Edit;
      cdsPagina.FieldByName('pagFinal').AsInteger := 2;
    end
    else
    begin
      cdsPagina.Edit;
      cdsPagina.FieldByName('pagFinal').AsInteger := ultPag;
    end;
  end;

//  dtFinal := StrToDate(IntToStr(funcao.UltDiaDoMes(cdsPadraodtFinal.AsDateTime)) + '/' + FormatDateTime('MM/yyyy', cdsPadraodtFinal.AsDateTime));
  if CBListarSaldoZero.checked = true then
    cdsPadrao.FieldByname('ListarSaldoZero').AsString:='S'
  else
    cdsPadrao.FieldByname('ListarSaldoZero').AsString:='N';

  cdsContador.Active := False;
  cdsContador.CommandText := 'SELECT descContador, crcContador, descRepresentante, idCnpjCpfContador, ' +
                             'cargoRepresentante, idCnpjCpfRepresentante FROM EmpresaContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  cdsContador.Active := True;
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spContRelBalPatrimonial '+ DBEidEmpresa.Text + ',' +
  funcao.RetornaValorEField(DBRGtpPlanoConta,3) +  ',' +
  funcao.RetornaValorEField(DBEmesAnoIni,3) + ',' +
  funcao.RetornaValorEField(DBEdtEncerramento,3) + ',' +
  funcao.RetornaValorEField(DBEnrGrau,3) + ',' +
  funcao.RetornaValorEField(DBEListarSaldoZero,3);

//  ClipBoard.AsText := cdsRelatorio.CommandText;
  cdsRelatorio.Active := True;


  if not CHKOficial.Checked then
  begin
    cdsPagina.Active := False;
    cdsPagina.CommandText := 'SELECT (ISNULL(pagFinal, 0)) pagFinal FROM ContPagina WHERE 1=2 ';
    cdsPagina.Active := True;
    cdsPagina.Edit;
    cdsPagina.FieldByName('pagFinal').AsInteger := 1;
  end;

  //cdsRelatorio.Open;
  //ShowMessage('RecordCount : ' + IntToStr(cdsRelatorio.RecordCount));

  ACBRExtenso.Valor := cdsRelatorio.FieldByName('vlSaldoAtual').asFloat;

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelBalPatrimonial.fr3');
  if CHKTermoResp.Checked then
  begin
    msg := 'Reconhecemos a exatidão do presente Balanço Patrimonial ' +
           'com base nas informações e na documentação ' +
           'apresentada, encerrado em ' + cdsPadraodtEncerramento.AsString +
           ' , somando tanto no Ativo como no Passivo, a importância de R$ ' +
            FormatFloat('#,##0.00', cdsRelatorio.FieldByName('vlSaldoAtual').AsCurrency) + ' (' + ACBRExtenso.Texto + ').';
    (frxRel.FindComponent('MDescObs') as TFrxMemoView).Memo.Clear;
    (frxRel.FindComponent('MDescObs') as TFrxMemoView).Memo.Add(msg);

  end
  else
  begin
    (frxRel.FindComponent('ReportSummary1') as TfrxReportSummary).Visible := false;
  end;

  //Configura a Impressão
  sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr('Balanço Patrimonial');
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    (frxRel.FindComponent('Page1') as TFrxReportPage).TopMargin := FieldByName('mTopo').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).RightMargin := FieldByName('mDireita').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).LeftMargin := FieldByName('mEsquerda').AsFloat*4;
    (frxRel.FindComponent('Page1') as TFrxReportPage).BottomMargin := FieldByName('mRodape').AsFloat*10;
  end;
  (frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Add(DBEnrGrau.Text);
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Add(DBEdtEmissao.Text);
  (frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Add(DBEdtEncerramento.Text);
  (frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Add(LookdescCadEmpresa.caption);
  (frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Add(LookdescCadEmpresa.caption);
  sql := 'SELECT * FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if FieldByName('rodapeContabil').AsString <> '' then
    begin
      (frxRel.FindComponent('PageFooter1') as TfrxPageFooter).Visible := True;
      (frxRel.FindComponent('MRodape') as TFrxMemoView).Memo.Clear;
      (frxRel.FindComponent('MRodape') as TFrxMemoView).Memo.Add(FieldByName('rodapeContabil').AsString);
    end;
  end;

  //Faz a contagem de paginas e insere ou atualiza os registros direto no banco
  if CHKOficial.Checked then
  begin
    if frxRel.PrepareReport then
    begin
      sql := 'SELECT * FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
             ' AND idLivro = ' + IntToStr(idLivro) +
             ' AND ano = ' + IntToStr(anoi);
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          sql := 'UPDATE ContPagina SET pagInicial = ' + IntToStr(ultPag) +
                 ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                 ' AND idLivro = ' + IntToStr(idLivro) +
                 ' AND ano = ' + IntToStr(anoi);
          dmPadrao.dbConexao.ExecuteDirect(sql);

          sql := 'UPDATE ContPagina SET pagFinal = ' + IntToStr(ultPag+frxRel.PreviewPages.Count-1) +
                 ', tipo = ' + '1' +
                 ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                 ' AND idLivro = ' + IntToStr(idLivro) +
                 ' AND ano = ' + IntToStr(anoi);
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end
        else
        begin
          sql := 'INSERT INTO ContPagina VALUES ( ' +
              DBEidEmpresa.Text + ', ' + IntToStr(idLivro) + ', ' + IntToStr(anoi) +
              ', ' + IntToStr(ultPag) + ', ' + IntToStr(ultPag+frxRel.PreviewPages.Count-1) + ', ' + '1' + ')';
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end;
      end;
    end;
  end;
  if CHKOficial.Checked then
    FrxRel.ShowPreparedReport
  else
    if not(CHKOficial.Checked) then
      FrxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
  screen.Cursor := crDefault;
end;

procedure TFrmRelBalPatrimonial.CHKOficialExit(Sender: TObject);
begin
  inherited;
  if CHKOficial.Checked then
    CHKTermoResp.Checked := True;
end;

procedure TFrmRelBalPatrimonial.DBEClassificacaoIniEnter(Sender: TObject);
var
  campo : string;
begin
  inherited;
  if (Sender as TCDBEdit).Name = 'DBEClassificacaoIni' then
    campo := 'classificacaoIni'
  else
    campo := 'classificacaoFim';

  if cdsPadrao.State in [dsInsert, dsEdit] then
  begin
    cdsPadrao.FieldByName('tpPlanoConta').AsString := DBRGtpPlanoConta.Value;
    if trim(cdsPadrao.FieldByName(campo).AsString) <> '' then
      cdsPadrao.FieldByName(campo).AsString := funcao.TiraMascara(cdsPadrao.FieldByName(campo).AsString);
  end;
end;

procedure TFrmRelBalPatrimonial.DBEClassificacaoIniExit(Sender: TObject);
var
  tpPlano, campo : string;
begin
  inherited;
  if (Sender as TCDBEdit).Name = 'DBEClassificacaoIni' then
    campo := 'classificacaoIni'
  else
    campo := 'classificacaoFim';

  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName(campo).AsString := funcao.Mascara(cdsPadrao.FieldByName(campo).AsString, 99, mascara);

  tpPlano := cdsPadrao.FieldByName('tpPlanoConta').AsString;

  try
    //se não existir a classificação cadastrada o sistema irá efetuar a validação
      if trim((Sender as TCDBEdit).Text) <> '' then
      begin
        cdsPadrao.FieldByName('tpPlanoConta').Value := tpPlano;
        with frmPrincipal.ExecutaSqlRet([DBEidEmpresa, Sender as TCDBEdit, DBRGtpPlanoConta], 'spValidaNivelPC', '') do
        begin
          if FieldByName('msg').AsString <> 'OK' then
          begin
            messagedlg(FieldByName('msg').AsString, mtwarning, [mbok], 0);
            (Sender as TCDBEdit).SetFocus;
            exit;
          end;
        end; //fim do with ExecutaSqlRet([DBEidEmpresa, DBEidGerencial, DBEclassificacao], 'spValidaNivelPC', '') do
    end; // fim do if trim(DBEclassificacao.Text) <> '' then
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      (Sender as TCDBEdit).SetFocus;
      exit;
    end;
  end;
end;

procedure TFrmRelBalPatrimonial.DBRGtpPlanoContaExit(Sender: TObject);
var
  tpPC, sql : string;
begin
  inherited;
  if DBRGtpPlanoConta.ItemIndex = 0 then
    tpPC := 'G'
  else
    tpPC := 'F';

  if (trim(tpPC) <> '') then
  begin
    //Definição da variável mascara
    if tpPC = 'G' then
    begin
      sql  := 'SELECT mascaraContabil FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
      mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraContabil').AsString;
    end
    else
    begin
      sql  := 'SELECT mascaraFiscal FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
      mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraFiscal').AsString;
    end;

    if trim(mascara) = '' then
    begin
      messagedlg('Empresa sem máscara cadastrada! Entre no cadastro e informe a máscara!', mtwarning, [mbok], 0);
      close;
      exit;
    end;
  end;

end;

procedure TFrmRelBalPatrimonial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelBalPatrimonial:= nil;
end;

procedure TFrmRelBalPatrimonial.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spContRelBalPatrimonial';
  relatorio := 'RelBalPatrimonial.fr3'; //Arquivo de Relatorio
  SetLength(parametro, 8);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpPlanoConta;
  parametro[2] := DBEmesAnoIni;
//  parametro[3] := DBEmesAnoFim;
  parametro[4] := DBEnrGrau;
//  parametro[5] := DBEclassificacaoIni;
//  parametro[6] := DBEclassificacaoFim;
  parametro[7] := DBEListarSaldoZero;

  cdsPadrao.FieldByName('tpPlanoConta').asString := 'F';
//  ordem := ' ORDER BY classificacao'; --Verificar com o mario o funcionamento


  Height := 342;
  Width := 555;
end;

procedure TFrmRelBalPatrimonial.FormShow(Sender: TObject);
var
  sql : string;
begin
  inherited;
  sql  := 'SELECT mascaraFiscal FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraFiscal').AsString;
  filial := false;
  DBEmesAnoIni.SetFocus;
end;

procedure TFrmRelBalPatrimonial.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.

