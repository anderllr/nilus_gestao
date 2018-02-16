unit uFrmRelTermoAbertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpFiscal, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  EditAlign, CEdit, CCheckBox, CGroupBox, CDBRadioGroup, ACBrBase, ACBrExtenso;

type
  TFrmRelTermoAbertura = class(TFrmPadraoRelEmpFiscal)
    GPPeriodo: TCGroupBox;
    CLabel3: TCLabel;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    DBEidNrLivro: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CHKOficial: TCCheckBox;
    DBEdtEmissao: TCDBEdit;
    CLabel1: TCLabel;
    DBRGOrigem: TCDBRadioGroup;
    frxRel: TfrxReport;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraoidNrLivro: TIntegerField;
    cdsPadraodtEmissao: TDateField;
    cdsPadraoorigem: TStringField;
    ExtensoLivro: TACBrExtenso;
    ExtensoPaginas: TACBrExtenso;
    cdsPadraocdPlanoConta: TIntegerField;
    FindPlanoConta: TCFind;
    frxDBPagina: TfrxDBDataset;
    dspPagina: TDataSetProvider;
    cdsPagina: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    Function RemoverPalavras(Frase: String; count : Integer): String;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    function VerificaImpressao(ano: Integer): Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelTermoAbertura: TFrmRelTermoAbertura;

implementation

uses uFrmPrincipal, uDmPadrao, uFrmCadFuncao, uFuncao;

{$R *.dfm}

procedure TFrmRelTermoAbertura.actGerarExecute(Sender: TObject);
var
  DataI, DataF : TDateTime;
  anoi, mesi, diai : Word;
  anof, mesf, diaf : Word;
  dtTemp, msg, sql, descLivro, compLivro, caminho, local, tipo : string;
  ordem, idLivro, ultPag, ultPagLivro, priPag : integer;
begin
  if Trim(DBEdtInicial.Text) = '' then
    msg := 'Data de Emissão Inicial deve ser Preenchida' + #13;
  if Trim(DBEdtFinal.Text) = '' then
    msg := msg + 'Data de Emissão Final deve ser Preenchida' + #13;

  //Caso seje Oficial ainda tera mais 2 obrigatoriedades
  if CHKOficial.Checked then
  begin
    if Trim(DBEidNrLivro.Text) = '' then
      msg := msg + 'A Numeração do Livro deve ser informada' + #13;
  end;
  if msg <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEdtInicial.SetFocus;
    exit;
  end;
  DataI := StrToDate(DBEdtInicial.Text);
  DecodeDate(DataI,anoi,mesi,diai);
  DataF := StrToDate(DBEdtFinal.Text);
  DecodeDate(DataF,anof,mesf,diaf);

  if VerificaImpressao(anoi) then
  begin
    if CHKOficial.Checked then
    begin
      //Verificação de datas
      if Trim(DBEdtInicial.Text) <> '' then
      begin


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
          DBEdtInicial.SetFocus;
          exit;
        end;
      end;
      //levando em consideração as datas corretas Verificar se ja foi impressa

      //Verifica a ordem do Diario Geral
      if DBRGOrigem.ItemIndex in [0, 2] then
        descLivro := 'Termo de Abertura'
      else
        if DBRGOrigem.ItemIndex in [1, 3] then
          descLivro := 'Termo de encerramento';

      if DBRGOrigem.ItemIndex in [0, 1] then
        tipo := '1'
      else
        if DBRGOrigem.ItemIndex in [2, 3] then
          tipo := '2';


      sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(descLivro);
      ordem := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('ordem').AsInteger;
      idLivro := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('idLivro').AsInteger;
      //Busca Livro anterior ao Diario Geral
      sql := 'SELECT L.ordem, P.ano, P.pagInicial, P.pagFinal, L.descLivro, L.idLivro ' +
           ' FROM contPagina P INNER JOIN ContLivro L ON P.idLivro = L.idLivro ' +
           ' WHERE L.ordem = ' + IntToStr(ordem) +
           '   AND P.ano = ' + IntToStr(anoi) +
           '   AND P.idEmpresa = ' + DBEidEmpresa.Text +
           '   AND P.idLivro = ' + IntToStr(idLivro) +
           '   AND P.tipo = ' + tipo;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
          ultPag := FieldByName('pagInicial').AsInteger
        else
        begin
          ultPag := FieldByName('pagFinal').AsInteger + 1;
          if ultPag = 1 then
            ultPag := 2;
        end;
      end;
    end;
    //faz a busca dos dados
    sql := 'SELECT DISTINCT A.idCnpjCpf, A.descCadAdicional, A.bairro, A.endereco, A.idInscEstadual, cid.descCidade, cid.idEstado, ' +
           ' Cont.idNire, Cont.dtRegistro, C.cargoRepresentante, C.descRepresentante, C.idCnpjCpfRepresentante, ' +
           ' C.descContador, C.crcContador, C.rg, C.OrgaoExp, C.rgRep, C.OrgaoExpRep' +
           ' FROM CadAdicional A INNER JOIN EmpresaContabil C ' +
           ' ON C.idCadGeral = A.idCadGeral INNER JOIN Cidade cid ' +
           ' ON A.idCidade = cid.idCidade INNER JOIN ConfigContabil Cont '+
           ' ON Cont.idCadGeral = A.idCadGeral ' +
           ' WHERE A.idCadGeral = ' + DBEidEmpresa.Text +
           ' AND A.idCadAdicional = 1';
    cdsRelatorio.Active := false;
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

    if (DBRGOrigem.ItemIndex in [0, 1]) then
    begin
      sql := 'SELECT P.pagFinal, P.pagInicial FROM contPagina P ' +
             'INNER JOIN ContLivro L ON P.idLivro = L.idLivro ' +
             'WHERE P.ano = ' + IntToStr(anoi) +
             '  AND L.ordem = 6 ' +
             '  AND P.idEmpresa = ' + DBEidEmpresa.Text +
             '  AND P.tipo = 1 ' +
             'AND L.descLivro <> ' + QuotedStr('Razão Analítico');
      ultPagLivro := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('pagFinal').AsInteger+1;
//      priPag := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('pagInicial').AsInteger;
      priPag := 1;
    end
    else
      if (DBRGOrigem.ItemIndex in [2, 3]) then
      begin
        sql := 'SELECT P.pagFinal, P.pagInicial FROM contPagina P ' +
             'INNER JOIN ContLivro L ON P.idLivro = L.idLivro ' +
             'WHERE P.ano = ' + IntToStr(anoi) +
             '  AND P.idEmpresa = ' + DBEidEmpresa.Text +
             '  AND P.tipo = 2 ' +
             'AND L.descLivro = ' + QuotedStr('Razão Analítico');
        ultPagLivro := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('pagFinal').AsInteger+1;
//        priPag := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('pagInicial').AsInteger;
//        if priPag = 0 then
        priPag := 1;
      end;


    sql := 'SELECT descCidade FROM Cidade ' +
           'WHERE idCidade = ' +
           '(SELECT idCidade FROM CadAdicional ' +
           'WHERE idCadGeral = ' + DBEidEmpresa.Text +
           '  AND idCadAdicional = 1)';
    local := Trim(frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('descCidade').AsString);
    local := (local) + ', ' + funcao.CDoW(cdsPadraodtEmissao.AsDateTime, exdDMA);
    //Monta Complemento do Relatório
    if frxRel.PrepareReport then
    begin
      if (DBRGOrigem.ItemIndex in [0, 1]) then
      begin
        compLivro := 'Contém este Livro Diário Número 00' +  cdsPadraoidNrLivro.AsString + ' (' + LowerCase(funcao.Extenso(cdsPadraoidNrLivro.AsInteger, 'F', false)) + '), ' +
                     IntToStr(ultPagLivro) + ' (' + LowerCase(funcao.Extenso(ultPagLivro, 'F', false)) + ') Páginas numeradas eletronicamente do número ' +
                     '00' + IntToStr(priPag) + ' ao número ' + IntToStr(ultPagLivro) + ' e se destinou a escrituração dos ' +
                     ' lançamentos das operações próprias do estabelecimento do contribuinte abaixo ' +
                     'identificado, referentes ao período de ' + DBEdtInicial.Text + ' a ' + DBEdtFinal.Text;
      end
      else
        if (DBRGOrigem.ItemIndex in [2, 3]) then
        begin
          compLivro := 'Contém este Livro Razão Número 00' +  cdsPadraoidNrLivro.AsString + ' (' + LowerCase(funcao.Extenso(cdsPadraoidNrLivro.AsInteger, 'F', false)) + '), ' +
                     IntToStr(ultPagLivro) + ' (' + LowerCase(funcao.Extenso(ultPagLivro, 'F', false)) + ') Páginas numeradas eletronicamente do número ' +
                     '00' + IntToStr(priPag) + ' ao número ' + IntToStr(ultPagLivro) + ' e se destinou a escrituração dos ' +
                     ' lançamentos das operações próprias do estabelecimento do contribuinte abaixo ' +
                     'identificado, referentes ao período de ' + DBEdtInicial.Text + ' a ' + DBEdtFinal.Text;
        end;
    end;
    (frxRel.FindComponent('MDesc') as TFrxMemoView).Memo.Clear;
    (frxRel.FindComponent('MDesc') as TFrxMemoView).Memo.Add(compLivro);
    (frxRel.FindComponent('MLocal') as TFrxMemoView).Memo.Clear;
    (frxRel.FindComponent('MLocal') as TFrxMemoView).Memo.Add(Trim(local));
    if DBRGOrigem.ItemIndex IN [0, 2] then
    begin
      (frxRel.FindComponent('MPage') as TFrxMemoView).Memo.Clear;
      (frxRel.FindComponent('MPage') as TFrxMemoView).Memo.Add('00' + IntToStr(priPag));
      (frxRel.FindComponent('Memo1') as TFrxMemoView).Memo.Clear;
      (frxRel.FindComponent('Memo1') as TFrxMemoView).Memo.Add('TERMO DE ABERTURA');
    end
    else
      if DBRGOrigem.ItemIndex IN [1, 3] then
      begin
        (frxRel.FindComponent('MPage') as TFrxMemoView).Memo.Clear;
        (frxRel.FindComponent('MPage') as TFrxMemoView).Memo.Add('0' + IntToStr(ultPagLivro));
        (frxRel.FindComponent('Memo1') as TFrxMemoView).Memo.Clear;
        (frxRel.FindComponent('Memo1') as TFrxMemoView).Memo.Add('TERMO DE ENCERRAMENTO');
      end;
    if CHKOficial.Checked then
    begin
      if frxRel.PrepareReport then
      begin
        sql := 'SELECT * FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
               ' AND idLivro = ' + IntToStr(idLivro) +
               ' AND ano = ' + IntToStr(anoi) +
               ' AND tipo = ' + tipo;
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if RecordCount > 0 then
          begin
            if (DBRGOrigem.ItemIndex in [0, 2]) then
            begin
              sql := 'UPDATE ContPagina SET pagInicial = ' + IntToStr(priPag) +
                     ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                     ' AND idLivro = ' + IntToStr(idLivro) +
                     ' AND ano = ' + IntToStr(anoi) +
                     ' AND tipo = ' + tipo;
              dmPadrao.dbConexao.ExecuteDirect(sql);

              sql := 'UPDATE ContPagina SET pagFinal = ' + IntToStr(priPag) +
                     ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                     ' AND idLivro = ' + IntToStr(idLivro) +
                     ' AND ano = ' + IntToStr(anoi) +
                     ' AND tipo = ' + tipo;
              dmPadrao.dbConexao.ExecuteDirect(sql);
            end
            else
              if (DBRGOrigem.ItemIndex in [1, 3]) then
              begin
                sql := 'UPDATE ContPagina SET pagInicial = ' + IntToStr(ultPagLivro) +
                       ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                       ' AND idLivro = ' + IntToStr(idLivro) +
                       ' AND ano = ' + IntToStr(anoi) +
                       ' AND tipo = ' + tipo;
                dmPadrao.dbConexao.ExecuteDirect(sql);

                sql := 'UPDATE ContPagina SET pagFinal = ' + IntToStr(ultPagLivro+frxRel.PreviewPages.Count-1) +
                       ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                       ' AND idLivro = ' + IntToStr(idLivro) +
                       ' AND ano = ' + IntToStr(anoi) +
                       ' AND tipo = ' + tipo;
                dmPadrao.dbConexao.ExecuteDirect(sql);
              end;
          end
          else
          begin
            if (DBRGOrigem.ItemIndex in [0, 1]) then
            begin
               if (DBRGOrigem.ItemIndex = 1) then
                 priPag := ultPagLivro;
              sql := 'INSERT INTO ContPagina VALUES ( ' +
                     DBEidEmpresa.Text + ', ' + IntToStr(idLivro) + ', ' + IntToStr(anoi) +
                     ', ' + IntToStr(priPag) + ', ' + IntToStr(priPag) + ', ' + '1' +  ')';
              dmPadrao.dbConexao.ExecuteDirect(sql);
            end
            else
              if (DBRGOrigem.ItemIndex in [2, 3]) then
              begin
                if (DBRGOrigem.ItemIndex = 3) then
                  priPag := ultPagLivro;
                sql := 'INSERT INTO ContPagina VALUES ( ' +
                     DBEidEmpresa.Text + ', ' + IntToStr(idLivro) + ', ' + IntToStr(anoi) +
                     ', ' + IntToStr(priPag) + ', ' + IntToStr(priPag) + ', ' + '2' + ')';
                dmPadrao.dbConexao.ExecuteDirect(sql);
              end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    MessageDlg('Você deve imprimir todos os livros antes de imprimir os Termos Abertura e Encerramento!', mtWarning, [mbOK], 0);
    Exit;
  end;
  //Configura a Impressão
  sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(descLivro);
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    (frxRel.FindComponent('Page1') as TFrxReportPage).TopMargin := FieldByName('mTopo').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).RightMargin := FieldByName('mDireita').AsFloat*6;
    (frxRel.FindComponent('Page1') as TFrxReportPage).LeftMargin := FieldByName('mEsquerda').AsFloat*4;
    (frxRel.FindComponent('Page1') as TFrxReportPage).BottomMargin := FieldByName('mRodape').AsFloat*10;
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
//  inherited;
end;


procedure TFrmRelTermoAbertura.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoorigem.AsString := 'Abertura Díario';
end;

procedure TFrmRelTermoAbertura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelTermoAbertura := nil;
end;

procedure TFrmRelTermoAbertura.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelTermoAbertura.fr3'; //Arquivo de Relatorio
  Height := 276;
  Width := 493;
end;

function TFrmRelTermoAbertura.RemoverPalavras(Frase: String; count : Integer): String;
// Função Tecnicamente Gambiarra somente para remover Reais e Centavos do ACBRExtenso
Var
  Aux : String;
begin
  if count > 1 then
  begin
    Aux :=  Frase;
    Aux := StringReplace(Aux, 'Reais', '', [rfReplaceAll]);
    Result := Aux;
  end
  else
  begin
    Aux :=  Frase;
    Aux := StringReplace(Aux, 'Real', '', [rfReplaceAll]);
    Result := Aux;
  end;
end;

function TFrmRelTermoAbertura.VerificaImpressao(ano: Integer): Boolean;
var
  sql : string;
begin
  // Função para verificar se todas os outros livros foram impressos
  Result := False;
  if DBRGOrigem.ItemIndex IN [0, 1] then
  begin
    sql := 'SELECT * FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idLivro = 6' +
           ' AND ano = ' + IntToStr(ano);
    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (FieldByName('pagFinal').IsNull) then
        Result := True
      else
        Result := False;
    end;
  end;
  if DBRGOrigem.ItemIndex IN [2, 3] then
  begin
    sql := 'SELECT * FROM ContPagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idLivro = 8' +
           ' AND ano = ' + IntToStr(ano);
    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (FieldByName('pagFinal').IsNull) then
        Result := True
      else
        Result := False;
    end;
  end;
end;

end.
