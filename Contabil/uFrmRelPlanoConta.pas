unit uFrmRelPlanoConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, CCheckBox,
  CGroupBox, System.Actions, System.ImageList;

type
  TFrmRelPlanoConta = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    DBRGnaturezaPlanoConta: TCDBRadioGroup;
    DBRGtpPlanoConta: TCDBRadioGroup;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraonaturezaPlanoConta: TStringField;
    cdsRelatorioidEmpresa: TIntegerField;
    cdsRelatoriodescCadEmpresa: TStringField;
    cdsRelatoriocdPlanoConta: TStringField;
    cdsRelatorioclassificacao: TStringField;
    cdsRelatoriostPlanoConta: TStringField;
    cdsRelatoriotpPlanoConta: TStringField;
    cdsRelatorionaturezaPlanoConta: TStringField;
    cdsRelatorionrGrau: TSmallintField;
    cdsRelatorioidPlanoContaGrupo: TStringField;
    GPPeriodo: TCGroupBox;
    lblAno: TCLabel;
    CHKOficial: TCCheckBox;
    EdtAno: TCEdit;
    frxDBPagina: TfrxDBDataset;
    dspPagina: TDataSetProvider;
    cdsPagina: TClientDataSet;
    EDdtEmissao: TCEdit;
    CLabel5: TCLabel;
    cdsRelatoriodescPlanoConta: TStringField;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure CHKOficialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelPlanoConta: TFrmRelPlanoConta;

implementation

uses uFrmPadraoRel, uDmPadrao, uFrmPrincipal, uFuncao;

{$R *.dfm}

procedure TFrmRelPlanoConta.actGerarExecute(Sender: TObject);
var
  DataI, DataF : TDateTime;
  anoi, mesi, diai : Word;
  anof, mesf, diaf : Word;
  dtTemp, msg, sql, descLivro, compLivro, caminho, local : string;
  ordem, idLivro, ultPag, ultPagLivro, idLivroAnt : integer;
begin
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;
  if CHKOficial.Checked then
  begin
    if Trim(EdtAno.Text) = '' then
    Begin
      MessageDlg('Você deve informar um ano para prosseguir!', mtWarning, [mbOK], 0);
      EdtAno.SetFocus;
      Exit;
    End;

    //levando em consideração as datas corretas Verificar se ja foi impressa
    //Verifica a ordem do Diario Geral
    sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr('Plano de contas');
    ordem := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('ordem').AsInteger;
    idLivro := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('idLivro').AsInteger;
    //Busca Livro anterior ao Diario Geral
    sql := 'SELECT L.ordem, P.ano, P.pagInicial, P.pagFinal, L.descLivro, L.idLivro ' +
           '  FROM contPagina P INNER JOIN ContLivro L ON P.idLivro = L.idLivro ' +
           ' WHERE L.ordem = ' + IntToStr(ordem-1) +
           '   AND P.ano = ' + EdtAno.Text +
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
          EdtAno.SetFocus;
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
                             ' AND ano = ' + EdtAno.Text;
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
//  inherited;

  sql := 'EXEC spRelPlanoConta ' + DBEidEmpresa.Text + ', ' + funcao.RetornaValorEField(DBRGtpPlanoConta, 3) +
         ', ' + funcao.RetornaValorEField(DBRGnaturezaPlanoConta, 3);
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;

  if not CHKOficial.Checked then
  begin
    cdsPagina.Active := False;
    cdsPagina.CommandText := 'SELECT (ISNULL(pagFinal, 0)) pagFinal FROM ContPagina WHERE 1=2 ';
    cdsPagina.Active := True;
    cdsPagina.Edit;
    cdsPagina.FieldByName('pagFinal').AsInteger := 1;
  end;
 //Inicia Relatório
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  //Configura a Impressão
  sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr('Plano de contas');
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    (frxRel.FindComponent('Page1') as TFrxReportPage).TopMargin := FieldByName('mTopo').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).RightMargin := FieldByName('mDireita').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).LeftMargin := FieldByName('mEsquerda').AsFloat*4;
    (frxRel.FindComponent('Page1') as TFrxReportPage).BottomMargin := FieldByName('mRodape').AsFloat*10;
    (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Clear;
    (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Add(EDdtEmissao.Text);
  end;
  //Caso seja Impressão oficial atualiza no banco de dados as paginas impressas
  if CHKOficial.Checked then
  begin
    if frxRel.PrepareReport then
    begin
      sql := 'SELECT * FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
             ' AND idLivro = ' + IntToStr(idLivro) +
             ' AND ano = ' + EdtAno.Text;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          sql := 'UPDATE ContPagina SET pagInicial = ' + IntToStr(ultPag) +
                 ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                 ' AND idLivro = ' + IntToStr(idLivro) +
                 ' AND ano = ' + EdtAno.Text;
          dmPadrao.dbConexao.ExecuteDirect(sql);

          sql := 'UPDATE ContPagina SET pagFinal = ' + IntToStr(ultPag+frxRel.PreviewPages.Count-1) +
                 ', tipo = ' + '1' +
                 ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                 ' AND idLivro = ' + IntToStr(idLivro) +
                 ' AND ano = ' + EdtAno.Text;
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end
        else
        begin
          sql := 'INSERT INTO ContPagina VALUES ( ' +
              DBEidEmpresa.Text + ', ' + IntToStr(idLivro) + ', ' + EdtAno.Text +
              ', ' + IntToStr(ultPag) + ', ' + IntToStr(ultPag+frxRel.PreviewPages.Count-1) + ', '  + '1' + ')';
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end;
      end;
    end;
  end;
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
end;

procedure TFrmRelPlanoConta.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('tpPlanoConta').AsString := 'F';
  cdsPadrao.FieldByName('naturezaPlanoConta').AsString := '%';
end;

procedure TFrmRelPlanoConta.CHKOficialClick(Sender: TObject);
begin
  inherited;
  if CHKOficial.Checked then
  begin
    lblAno.Visible := True;
    EdtAno.Visible := True;
  end
  else
  begin
    lblAno.Visible := False;
    EdtAno.Visible := False;
  end;
end;

procedure TFrmRelPlanoConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelPlanoConta := nil;
end;

procedure TFrmRelPlanoConta.FormCreate(Sender: TObject);
begin
  inherited;
  //se fosse procedimento seria Proc:=('NomeProcedimento')
  tabela := 'vRelPlanoConta'; //Recebe tanto View quanto Tabela
  relatorio := 'RelPlanoConta.fr3'; //Arquivo de Relatorio
  SetLength(parametro, 3);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpPlanoConta;
  parametro[2] := DBRGnaturezaPlanoConta;
  ordem := ' ORDER BY classificacao';
  Width := 500;
  Height := 270;
end;

procedure TFrmRelPlanoConta.FormShow(Sender: TObject);
begin
  inherited;
  DBRGtpPlanoConta.SetFocus;
end;

procedure TFrmRelPlanoConta.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.

