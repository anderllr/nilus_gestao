unit uFrmRelDRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, CRadioGroup,
  CCheckBox, CGroupBox, CDBCheckBox, ClipBrd, Grids, DBGrids, ParseClass,
  CDBComboBox, System.Actions, System.ImageList;

type
  TFrmRelDRE = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    DBRGtpPlanoConta: TCDBRadioGroup;
    GPPeriodo: TCGroupBox;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    CLabel1: TCLabel;
    CLabel5: TCLabel;
    EDdtEmissao: TCEdit;
    frxRel: TfrxReport;
    CRadioGroup1: TCRadioGroup;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraoclassificacaoIni: TStringField;
    cdsPadraoclassificacaoFim: TStringField;
    cdsPadraoListarSaldoZero: TStringField;
    DBEListarSaldoZero: TCDBEdit;
    DBEmesAnoIni: TCDBEdit;
    DBEmesAnoFim: TCDBEdit;
    cdsPadraomesAnoIni: TStringField;
    cdsPadraomesAnoFim: TStringField;
    DBCBnrGrauMax: TCDBComboBox;
    CHKOficial: TCCheckBox;
    frxDBPagina: TfrxDBDataset;
    dspPagina: TDataSetProvider;
    cdsPagina: TClientDataSet;
    CLabel3: TCLabel;
    DBCBnrGrauMin: TCDBComboBox;
    cdsPadraonrGrauMin: TIntegerField;
    cdsPadraonrGrauMax: TIntegerField;
    CHKTermoResp: TCCheckBox;
    cdsContador: TClientDataSet;
    dspContador: TDataSetProvider;
    FrxDatasetCont: TfrxDBDataset;
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraomesAnoIniSetText(Sender: TField; const Text: string);
    procedure cdsPadraoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure Calcular_Formulas;
  public
    { Public declarations }
  end;

var
  FrmRelDRE: TFrmRelDRE;
implementation

uses uFrmPadraoRel, uDmPadrao, uFuncao, uFrmPrincipal, ParseExpr;

{$R *.dfm}

procedure TFrmRelDRE.Calcular_Formulas;
  Var Parser: TExpressionParser;
      i: Integer;
  Procedure AtualizarValor(idPlanoContaGrupo: String; Saldo: Extended);
  Var bReg: Pointer;
  Begin
    //
    bReg := cdsRelatorio.GetBookmark;
    //
    cdsRelatorio.First;
    While Not(cdsRelatorio.Eof) Do
          Begin
            //
            If Not(cdsRelatorio.FieldByName('formulaPlanoContaGrupo').IsNull) And
               (Pos('(' + idPlanoContaGrupo + ')', cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString) > 0) Then
               Begin
                 //
                 cdsRelatorio.Edit;
                 //
                 If ((cdsRelatorio.FieldByName('cdPlanoConta').isNull) Or (cdsRelatorio.FieldByName('cdPlanoConta').asString = '')) Then
                    cdsRelatorio.FieldByName('cdPlanoConta').asString := '0';
                 //
                 cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString := StringReplace(cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString, '(' + idPlanoContaGrupo + ')', FloatToStr(Saldo), [rfReplaceAll, rfIgnoreCase]);
                 //
                 cdsRelatorio.Post;
                 //
               End;
            //
            cdsRelatorio.Next;
            //
          End;
    //
    cdsRelatorio.GotoBookMark(bReg);
    cdsRelatorio.FreeBookMark(bReg);
    //
    //
  End;
begin
  //
  cdsRelatorio.First;
  While Not(cdsRelatorio.Eof) Do
        Begin
          //
            If Not(Trim(cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString) = '') Then
             Begin
               //
               //ShowMessage(cdsRelatorio.FieldByName('descPlanoConta').asString + ' : ' + cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString);
               //
               Parser := TCstyleParser.Create;
               TCStyleParser(Parser).CStyle := False;
               //
               Parser.Optimize := True;
               i := Parser.AddExpression(UpperCase(cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString));
               //
               cdsRelatorio.Edit;
               //
               cdsRelatorio.FieldByName('vlSaldoAtual').asFloat := Parser.AsFloat[i];
               //
               cdsRelatorio.Post;
               //
               Parser.ClearExpressions;
               Parser.Free;
               Parser := Nil;
               //
             End;
          //
          If (cdsRelatorio.FieldByName('nrGrau').asInteger = 3) Then
              AtualizarValor(cdsRelatorio.FieldByName('idPlanoContaGrupo').asString, cdsRelatorio.FieldByName('vlSaldoAtual').asFloat);
          //
          cdsRelatorio.Next;
          //
        End;
  //
  {cdsRelatorio.First;
  While Not(cdsRelatorio.Eof) Do
        Begin
          //
          If Not(Trim(cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString) = '') Then
             Begin
               //
               Parser := TCstyleParser.Create;
               TCStyleParser(Parser).CStyle := False;
               //
               Parser.Optimize := True;
               i := Parser.AddExpression(UpperCase(cdsRelatorio.FieldByName('formulaPlanoContaGrupo').asString));
               //
               cdsRelatorio.Edit;
               //
               cdsRelatorio.FieldByName('vlSaldoAtual').asFloat := Parser.AsFloat[i];
               //
               cdsRelatorio.Post;
               //
               Parser.Free;
               Parser := Nil;
               //
             End;
          //
          cdsRelatorio.Next;
          //
        End;}
  //
end;

procedure TFrmRelDRE.actGerarExecute(Sender: TObject);
var
  dtFinal : TDateTime;
  msg : string;
  dtIni, dtFim : string;
  DataI, DataF : TDateTime;
  anoi, mesi, diai : Word;
  anof, mesf, diaf : Word;
  dtTemp, sql : string;
  ordem, idLivro, ultPag, idLivroAnt : integer;
  teste : Double;
begin
//  inherited;
  if DBRGtpPlanoConta.value ='' then
  begin
    messagedlg('Informe a Origem!', mtWarning, [mbOK], 0);
    DBRGtpPlanoConta.SetFocus;
    exit;
  end;
  screen.Cursor := crSQLWait;
  if CHKOficial.Checked then
  begin
    //Verificação de datas
   { if Trim(DBEmesAnoIni.Text) <> '01/01' then
      msg := 'Data de emissão incorreta,';

    if Trim(DBEmesAnoIni.Text) <> '31/12' then
      msg := msg + 'Data de encerramento incorreta,';

    if msg <> '' then
    begin
      msg := msg + ' Favor Corrigir';
      messagedlg(msg, mtwarning, [mbok], 0);
      DBEmesAnoIni.SetFocus;
      exit;
    end;}
    anoi := StrToInt(Copy(DBEmesAnoIni.Text, 4,4));
    //levando em consideração as datas corretas Verificar se ja foi impressa
    //Verifica a ordem do Diario Geral
    sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr('Demonstração do resultado do exercício');
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
          DBEmesAnoIni.SetFocus;
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
    cdsPagina.CommandText := 'SELECT (ISNULL(pagFinal, 0)+1)+1 pagFinal FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
                             ' AND idLivro = ' + IntToStr(idLivroAnt) +
                             ' AND ano = ' + IntToStr(anoi) +
                             ' AND tipo = 1';
    cdsPagina.Active := true;
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

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spContRelDRE '+ DBEidEmpresa.Text + ',' +
  funcao.RetornaValorEField(DBRGtpPlanoConta,3) +  ',' +
  funcao.RetornaValorEField(DBEmesAnoIni,3) + ',' +
  funcao.RetornaValorEField(DBEmesAnoFim,3) + ',' +
  funcao.RetornaValorEField(DBCBnrGrauMin,3) + ',' +
  funcao.RetornaValorEField(DBCBnrGrauMax,3) {+ ',' +
  funcao.RetornaValorEField(DBEclassificacaoIni,3) + ',' +
  funcao.RetornaValorEField(DBEclassificacaoFim,3) + ',' +
  funcao.RetornaValorEField(DBEListarSaldoZero,3)};

//  ClipBoard.AsText := cdsRelatorio.CommandText;

  cdsRelatorio.Open;
  cdsContador.Active := False;
  cdsContador.CommandText := 'SELECT descContador, crcContador, descRepresentante, idCnpjCpfContador, ' +
                             'cargoRepresentante, idCnpjCpfRepresentante FROM EmpresaContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  cdsContador.Active := True;

  if not CHKOficial.Checked then
  begin
    cdsPagina.Active := False;
    cdsPagina.CommandText := 'SELECT (ISNULL(pagFinal, 0)) pagFinal FROM ContPagina WHERE 1=2 ';
    cdsPagina.Active := True;
    cdsPagina.Edit;
    cdsPagina.FieldByName('pagFinal').AsInteger := 1;
  end;
  //
//  Calcular_Formulas;
  //
  //ShowMessage('RecordCount : ' + IntToStr(cdsRelatorio.RecordCount));

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'contRelDRE.fr3');
  //Configura a Impressão
  sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr('Demonstração do resultado do exercício');
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    (frxRel.FindComponent('Page1') as TFrxReportPage).TopMargin := FieldByName('mTopo').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).RightMargin := FieldByName('mDireita').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).LeftMargin := FieldByName('mEsquerda').AsFloat*4;
    (frxRel.FindComponent('Page1') as TFrxReportPage).BottomMargin := FieldByName('mRodape').AsFloat*10;
  end;
  if CHKTermoResp.Checked then
  begin
    (frxRel.FindComponent('ReportSummary1') as TfrxReportSummary).Visible := True;
  end
  else
  begin
    (frxRel.FindComponent('ReportSummary1') as TfrxReportSummary).Visible := false;
  end;
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
              ', ' + IntToStr(ultPag) + ', ' + IntToStr(ultPag+frxRel.PreviewPages.Count-1) + ', '  + '1' + ')';
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end;
      end;
    end;
  end;
  (frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Add(DBCBnrGrauMax.Text);
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Add(EDdtEmissao.Text);
  (frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Add(DBEmesAnoIni.Text + ' à '  + DBEmesAnoFim.text);
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
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
  screen.Cursor := crDefault;
end;

procedure TFrmRelDRE.cdsPadraomesAnoIniSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.Value := Copy(FormatDateTime('dd/mm/yyyy', StrToDate('01/' + Text)), 4, 7);
end;

procedure TFrmRelDRE.cdsPadraoNewRecord(DataSet: TDataSet);
begin
  inherited;
  //
  cdsPadrao.FieldByName('tpPlanoConta').asString := 'F';
  cdsPadrao.FieldByName('nrGrauMax').asInteger := 5;
  cdsPadrao.FieldByName('nrGrauMin').asInteger := 3;
  //
end;

procedure TFrmRelDRE.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  EDdtEmissao.Text:=DateToStr(date);
end;

procedure TFrmRelDRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelDRE := nil;
end;

procedure TFrmRelDRE.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spContRelDRE';
  relatorio := 'contRelDRE.fr3'; //Arquivo de Relatorio
  SetLength(parametro, 8);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpPlanoConta;
  parametro[2] := DBEmesAnoIni;
  parametro[3] := DBEmesAnoFim;
  parametro[4] := DBCBnrGrauMax;
  {parametro[5] := DBEclassificacaoIni;
  parametro[6] := DBEclassificacaoFim;}
  parametro[7] := DBEListarSaldoZero;
  //ordem := ' ORDER BY classificacao'; --Verificar com o mario o funcionamento
  Height := 284;
  Width := 496;
  //
end;

procedure TFrmRelDRE.FormShow(Sender: TObject);
begin
  inherited;
  DBEmesAnoIni.setfocus;
end;

procedure TFrmRelDRE.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.

