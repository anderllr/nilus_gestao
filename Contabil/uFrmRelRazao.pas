unit uFrmRelRazao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, CRadioGroup,
  CCheckBox, CGroupBox, CDBCheckBox, ClipBrd, Grids, DBGrids, System.Actions,
  System.ImageList;

type
  TFrmRelRazao = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    DBRGtpPlanoConta: TCDBRadioGroup;
    GPPeriodo: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEClassificacaoIni: TCDBEdit;
    DBEClassificacaoFim: TCDBEdit;
    FrxRel: TfrxReport;
    CRadioGroup1: TCRadioGroup;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraoclassificacaoIni: TStringField;
    cdsPadraoclassificacaoFim: TStringField;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtEmissaoFim: TCDBEdit;
    cdsPadraodtEmissaoIni: TDateField;
    cdsPadraodtEmissaoFim: TDateField;
    FindPlanoConta: TCFind;
    CLabel12: TCLabel;
    DBEcdPlanoConta: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    cdsPadraocdPlanoConta: TIntegerField;
    FindClassificacao: TCFind;
    CHKOficial: TCCheckBox;
    frxDBPagina: TfrxDBDataset;
    dspPagina: TDataSetProvider;
    cdsPagina: TClientDataSet;
    EDdtEmissao: TCEdit;
    CLabel5: TCLabel;
    FrxDataSetRodape: TfrxDBDataset;
    cdsRodape: TClientDataSet;
    dspRodape: TDataSetProvider;
    procedure actGerarExecute(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraomesAnoIniSetText(Sender: TField; const Text: string);
    procedure DBEClassificacaoIniEnter(Sender: TObject);
    procedure DBEClassificacaoIniExit(Sender: TObject);
    procedure DBRGtpPlanoContaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mascara : string;
  public
    { Public declarations }
  end;

var
  FrmRelRazao: TFrmRelRazao;
implementation

uses uFrmPadraoRel, uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelRazao.actGerarExecute(Sender: TObject);
var
  DataI, DataF : TDateTime;
  anoi, mesi, diai : Word;
  anof, mesf, diaf : Word;
  dtTemp, msg, sql, descLivro, compLivro, caminho : string;
  ordem, idLivro, ultPag, teste : integer;
begin
//  inherited;
  if DBRGtpPlanoConta.value ='' then
  begin
    messagedlg('Informe a Origem!', mtWarning, [mbOK], 0);
    DBRGtpPlanoConta.SetFocus;
    exit;
  end;
  if CHKOficial.Checked then
  begin
    //Verificação de datas
    if Trim(DBEdtEmissaoIni.Text) <> '' then
    begin
      DataI := StrToDate(DBEdtEmissaoIni.Text);
      DecodeDate(DataI,anoi,mesi,diai);
      DataF := StrToDate(DBEdtEmissaoFim.Text);
      DecodeDate(DataF,anof,mesf,diaf);

      dtTemp := IntToStr(diai) + '/' + IntToStr(mesi);
      if dtTemp <> '1/1' then
        msg := 'Data de emissão incorreta,';

      dtTemp := IntToStr(diaf) + '/' + IntToStr(mesf);
      if dtTemp <> '31/12' then
        msg := msg + 'Data de encerramento incorreta,';

      if msg <> '' then
      begin
        msg := msg + ' Favor Corrigir';
        messagedlg(msg, mtwarning, [mbok], 0);
        DBEdtEmissaoIni.SetFocus;
        exit;
      end;
    end;
    //levando em consideração as datas corretas Verificar se ja foi impressa
    descLivro := 'Razão Analítico';
    sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(descLivro);
    ordem := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('ordem').AsInteger;
    idLivro := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('idLivro').AsInteger;
    //Busca Livro anterior ao Diario Geral
    sql := 'SELECT L.ordem, P.ano, P.pagInicial, P.pagFinal, L.descLivro, L.idLivro ' +
           ' FROM contPagina P INNER JOIN ContLivro L ON P.idLivro = L.idLivro ' +
           ' WHERE L.ordem = ' + IntToStr(ordem) +
           '   AND P.ano = ' + IntToStr(anoi) +
           '   AND P.idEmpresa = ' + DBEidEmpresa.Text +
           '   AND P.idLivro = ' + IntToStr(idLivro);
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        ultPag := 2;

        //Somente para abrir o ClientDataset
        if not(cdsPagina.Active) then
          cdsPagina.Open;
        //Aqui atribui o valor
        cdsPagina.Edit;
        cdsPagina.FieldByName('pagFinal').AsInteger := ultPag;
      end
      else
      begin
        ultPag := FieldByName('pagFinal').AsInteger + 1;
        if ultPag = 1 then
          ultPag := 2;
        cdsPagina.Active := false;
        cdsPagina.CommandText := 'SELECT (ISNULL(pagFinal, 0)+1) pagFinal FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                 ' AND idLivro = ' + IntToStr(idLivro) +
                                 ' AND ano = ' + IntToStr(anoi);
        cdsPagina.Active := true;
        if cdsPagina.FieldByName('pagFinal').AsInteger = 0 then
        begin
          cdsPagina.Edit;
          cdsPagina.FieldByName('pagFinal').AsInteger := 2;
        end;
      end;
    end;
  end;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spContRelRazaoAnalitico '+ DBEidEmpresa.Text + ',' +
  funcao.RetornaValorEField(DBRGtpPlanoConta,3) +  ',' +
  funcao.RetornaValorEField(DBEdtEmissaoIni,3) + ',' +
  funcao.RetornaValorEField(DBEdtEmissaoFim,3) + ',' +
  funcao.RetornaValorEField(DBEcdPlanoConta,3) + ',' +
  funcao.RetornaValorEField(DBEclassificacaoIni,3) + ',' +
  funcao.RetornaValorEField(DBEclassificacaoFim,3);

  //ClipBoard.AsText := cdsRelatorio.CommandText;

  cdsRelatorio.Open;


  if not CHKOficial.Checked then
  begin
    cdsPagina.Active := False;
    cdsPagina.CommandText := 'SELECT (ISNULL(pagFinal, 0)) pagFinal FROM ContPagina WHERE 1=2 ';
    cdsPagina.Active := True;
    cdsPagina.Edit;
    cdsPagina.FieldByName('pagFinal').AsInteger := 1;
  end;

  //ShowMessage('RecordCount : ' + IntToStr(cdsRelatorio.RecordCount));

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'contRelRazao.fr3');

  //Configura a Impressão buscando as margens
  //Não sei ao Certo mais somente a direita não funciona
  sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr('Razão Analítico');
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    (frxRel.FindComponent('Page1') as TFrxReportPage).TopMargin := FieldByName('mTopo').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).RightMargin := FieldByName('mDireita').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).LeftMargin := FieldByName('mEsquerda').AsFloat*4;
    (frxRel.FindComponent('Page1') as TFrxReportPage).BottomMargin := FieldByName('mRodape').AsFloat*10;
  end;

  //Atribui parametros
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Add(EDdtEmissao.Text);
  (frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Add(DBEdtEmissaoIni.Text + ' à '  + DBEdtEmissaoFim.text);
  (frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Add(LookdescCadEmpresa.caption);

  //Retira campo de codigo e modifica layout
  if CHKOficial.Checked then
  begin
    (frxRel.FindComponent('Memo5') as TFrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo28') as TFrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo30') as TfrxMemoView).Left := 75;
    (frxRel.FindComponent('Memo9') as TfrxMemoView).Left := 65;
    (frxRel.FindComponent('Memo29') as TfrxMemoView).Left := 60;
    (frxRel.FindComponent('Memo8') as TfrxMemoView).Left := 132;
    (frxRel.FindComponent('Memo12') as TfrxMemoView).Left := 132;
    (frxRel.FindComponent('Memo31') as TfrxMemoView).Left := 132;
    (frxRel.FindComponent('Memo31') as TfrxMemoView).Width := 375;
    (frxRel.FindComponent('Memo11') as TfrxMemoView).Left := 530;
    (frxRel.FindComponent('Memo18') as TfrxMemoView).Left := 490;
    (frxRel.FindComponent('Memo19') as TfrxMemoView).Left := 585;
    (frxRel.FindComponent('Memo20') as TfrxMemoView).Left := 560;
    (frxRel.FindComponent('Memo21') as TfrxMemoView).Left := 620;
    (frxRel.FindComponent('Memo16') as TfrxMemoView).Left := 620;
    (frxRel.FindComponent('Memo22') as TfrxMemoView).Left := 620;
    (frxRel.FindComponent('Line2') as TfrxLineView).Width := 675;
    (frxRel.FindComponent('Line3') as TfrxLineView).Width := 675;
    (frxRel.FindComponent('Line1') as TfrxLineView).Width := 675;
    (frxRel.FindComponent('Line5') as TfrxLineView).Left := 697;
    (frxRel.FindComponent('Memo1') as TfrxMemoView).Width := 675;
    (frxRel.FindComponent('MemdescEmpresa') as TfrxMemoView).Width := 450;
    (frxRel.FindComponent('MemdtEmissao') as TfrxMemoView).Left := 620;
    (frxRel.FindComponent('Memo14') as TfrxMemoView).Left := 565;
    (frxRel.FindComponent('Memo17') as TfrxMemoView).Left := 565;
    (frxRel.FindComponent('MemPagina') as TfrxMemoView).Left := 620;
    (frxRel.FindComponent('Shape2') as TfrxShapeView).Width := 672;
    (frxRel.FindComponent('Memo35') as TfrxMemoView).Left := 420;
    (frxRel.FindComponent('Memo6') as TfrxMemoView).Left := 490;
    (frxRel.FindComponent('Memo33') as TfrxMemoView).Left := 560;
    (frxRel.FindComponent('Memo34') as TfrxMemoView).Left := 620;

    //Prepara e conta as paginas impressas
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
                 ', pagFinal = ' + IntToStr(ultPag+frxRel.PreviewPages.Count-1) +
                 ', tipo = ' + '2' +
                 ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                 ' AND idLivro = ' + IntToStr(idLivro) +
                 ' AND ano = ' + IntToStr(anoi);
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end
        else
        begin
          sql := 'INSERT INTO ContPagina VALUES ( ' +
              DBEidEmpresa.Text + ', ' + IntToStr(idLivro) + ', ' + IntToStr(anoi) +
              ', ' + IntToStr(ultPag) + ', ' + IntToStr(ultPag+frxRel.PreviewPages.Count-1) + ', ' +
              '2' + ')';
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end;
      end;
    end;
  end;

  //Aqui ja estava, não sei ao certo para que serve mas deve ser para coloc
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
  if CHKOficial.Checked then
    FrxRel.ShowPreparedReport
  else
    if not(CHKOficial.Checked) then
      FrxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelRazao.cdsPadraomesAnoIniSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.Value := Copy(FormatDateTime('dd/mm/yyyy', StrToDate('01/' + Text)), 4, 7);
end;

procedure TFrmRelRazao.DBEClassificacaoIniEnter(Sender: TObject);
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

procedure TFrmRelRazao.DBEClassificacaoIniExit(Sender: TObject);
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

procedure TFrmRelRazao.DBRGtpPlanoContaExit(Sender: TObject);
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

procedure TFrmRelRazao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelRazao := nil;
end;

procedure TFrmRelRazao.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spContRelRazao';
  relatorio := 'contRelRazao.fr3'; //Arquivo de Relatorio
  SetLength(parametro, 8);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpPlanoConta;
  parametro[2] := DBEdtEmissaoIni;
  parametro[3] := DBEdtEmissaoFim;
  parametro[4] := DBEclassificacaoIni;
  parametro[5] := DBEclassificacaoFim;

  //  ordem := ' ORDER BY classificacao'; --Verificar com o mario o funcionamento
  //
  Height := 280;
  Width := 488;
  //
  cdsPadrao.FieldByName('tpPlanoConta').asString := 'F';
  //
end;

procedure TFrmRelRazao.FormShow(Sender: TObject);
var
  sql : string;
begin
  inherited;
  sql  := 'SELECT mascaraFiscal FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraFiscal').AsString;
end;

procedure TFrmRelRazao.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.

