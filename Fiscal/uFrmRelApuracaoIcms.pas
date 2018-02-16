unit uFrmRelApuracaoIcms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox;

type
  TFrmRelApuracaoIcms = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsTributoDetalhe: TClientDataSet;
    dspTributoDetalhe: TDataSetProvider;
    frxDBTributo: TfrxDBDataset;
    cdsProc: TClientDataSet;
    dspProc: TDataSetProvider;
    frxDBProc: TfrxDBDataset;
    DBEmesAno: TCDBEdit;
    DBEvlSaldoMesSeg: TCDBEdit;
    cdsPadraovlSaldoMesSeg: TCurrencyField;
    cdsPadraomesAno: TStringField;
    frxDBPagina: TfrxDBDataset;
    dspPagina: TDataSetProvider;
    cdsPagina: TClientDataSet;
    cdsPadraoidLivro: TIntegerField;
    DBEidLivro: TCDBEdit;
    cdsPadraonrPagina: TIntegerField;
    DBEnrPagina: TCDBEdit;
    frxDBPagamento: TfrxDBDataset;
    dspPagamento: TDataSetProvider;
    cdsPagamento: TClientDataSet;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure frxRelPrintPage(Page: TfrxReportPage; CopyNo: Integer);
    procedure DBEdtFinalExit(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEdtInicialExit(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelApuracaoIcms: TFrmRelApuracaoIcms;

implementation

uses uFuncao, uDmPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelApuracaoIcms.actGerarExecute(Sender: TObject);
var
  vlDeb, vlCre, vlOutroCre, vlOutroDeb, vlEstCre, vlEstDeb, vlSaldoCredor, vlTotalCred, vlTotalDeb : Currency;
  vlSaldoDev, vlSaldoMesSeg, vlImpRecolher, vlPagAntecipado : Currency;
  mesAno, sql : string;
  visivel : boolean;
begin
  // Inicializando os Valores com Zero
  vlDeb := 0.00;
  vlCre := 0.00;
  vlEstCre := 0.00;
  vlEstDeb := 0.00;
  vlOutroCre := 0.00;
  vlOutroDeb := 0.00;
  vlSaldoCredor := 0.00;
  vlSaldoMesSeg := 0.00;
  vlSaldoDev := 0.00;
  vlTotalCred := 0.00;
  vlTotalDeb := 0.00;
  vlImpRecolher := 0.00;
  vlPagAntecipado := 0.00;
  visivel := false;
  //====================================

  if (trim(DBEdtInicial.Text) = '') or (trim(DBEdtFinal.Text) = '') then
  begin
    messagedlg('O Periodo deve ser informadas!', mtwarning, [mbok], 0);
    exit;
  end;

  cdsRelatorio.active:= false;
  cdsRelatorio.CommandText := ' EXEC spRelApuracaoIcms ' + funcao.RetornaValorEField(DBEidEmpresa,3) + ' , '
                                                         + funcao.RetornaValorEField(DBEidCadEmpresa,3) + ' , '
                                                         + funcao.RetornaValorEField(DBEdtInicial,3) + ' , '
                                                         + funcao.RetornaValorEField(DBEdtFinal,3);
  cdsRelatorio.Active := true;


  cdsTributoDetalhe.Active := false;
  cdsTributoDetalhe.CommandText := 'SELECT idTributoDetalhe, MesAno, descTributo, descTpDetalhe, descTributoDetalhe, SUM(vlTributo*fator) AS vlTributo ' +
                                   '  FROM vTributo WHERE idEmpresa = '+ trim(DBEidEmpresa.Text) + ' AND idCadEmpresa = ' + trim(DBEidCadEmpresa.Text) +
                                   '   AND idTpDetalhe <> 5 AND CONVERT(DATETIME,CONVERT(VARCHAR(11),' +
                                    quotedstr('01/')  + '+ MesAno' + '),103) BETWEEN ' + funcao.RetornaValorEField(DBEdtInicial,3) + ' AND ' +
                                    funcao.RetornaValorEField(DBEdtFinal,3) + ' AND descTributo = ' + quotedstr('ICMS') +
                                   ' GROUP BY descTributoDetalhe, idTributoDetalhe, MesAno, descTributo, descTpDetalhe  ';

  cdsTributoDetalhe.Active := true;

  cdsPagamento.Active := false;
  cdsPagamento.CommandText := 'SELECT idTributoDetalhe, MesAno, descTributo, descTpDetalhe, descTributoDetalhe, SUM(vlTributo) AS vlTributo ' +
                                   '  FROM vTributo WHERE idEmpresa = '+ trim(DBEidEmpresa.Text) + ' AND idCadEmpresa = ' + trim(DBEidCadEmpresa.Text) +
                                   '   AND idTpDetalhe = 5 AND CONVERT(DATETIME,CONVERT(VARCHAR(11),' +
                                    quotedstr('01/')  + '+ MesAno' + '),103) BETWEEN ' + funcao.RetornaValorEField(DBEdtInicial,3) + ' AND ' +
                                    funcao.RetornaValorEField(DBEdtFinal,3) + ' AND descTributo = ' + quotedstr('ICMS') +
                                   ' GROUP BY descTributoDetalhe, idTributoDetalhe, MesAno, descTributo, descTpDetalhe  ';

  cdsPagamento.Active := true;

  // Obtendo os Valores de Outros e Estornos ==============================================================
  cdsTributoDetalhe.First;
  if cdsTributoDetalhe.RecordCount = 1 then
  begin
    //Valor de Outros
    if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'OUTROS CREDITOS' ) then
      vlOutroCre := vlOutroCre + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;
    if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'OUTROS DEBITOS' ) then
      vlOutroDeb := vlOutroDeb + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;
    //Valor de Estorno
    if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'ESTORNO DE CREDITOS' ) then
      vlEstCre := vlEstCre + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;
    if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'ESTORNO DE DEBITOS' ) then
      vlEstDeb := vlEstDeb + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;
  end
  else
  begin
    while not cdsTributoDetalhe.Eof do
    begin
      //Valor de Outros
      if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'OUTROS CREDITOS' ) then
        vlOutroCre := vlOutroCre + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;
      if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'OUTROS DEBITOS' ) then
        vlOutroDeb := vlOutroDeb + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;
      //Valor de Estorno
      if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'ESTORNO DE CREDITOS' ) then
        vlEstCre := vlEstCre + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;
      if ( (trim(cdsTributoDetalhe.FieldByName('descTpDetalhe').AsString)) = 'ESTORNO DE DEBITOS' ) then
        vlEstDeb := vlEstDeb + cdsTributoDetalhe.FieldByName('vlTributo').AsCurrency;

      cdsTributoDetalhe.Next;
    end;
  end;

  if cdsTributoDetalhe.RecordCount = 0 then
     visivel := true;

  cdsTributoDetalhe.Active := false;

  //==========================================================================================================

  // Somando o valor do Pagamento Antecipado ================================================

  cdsPagamento.First;
  while not cdsPagamento.Eof do
  begin
    vlPagAntecipado := vlPagAntecipado + cdsPagamento.FieldByName('vlTributo').AsCurrency;
    cdsPagamento.Next;
  end;

  //=========================================================================================

  // Obtendo os valores de entradas e saidas ==========================================================================
  with cdsRelatorio do
  begin
    First;
    while not (EoF) do
    begin
      if (trim(FieldByName('descGrupo').AsString) = 'SAIDAS') then
        vlDeb := FieldByName('vlCreDeb').AsCurrency
      else
        vlCre := FieldByName('vlCreDeb').AsCurrency;  
      Next;
    end;
  end;  
  // ======================================================================================================================

  cdsProc.Active := false;
  cdsProc.CommandText := 'EXEC spRetDataMesAno ' + quotedstr(DBEdtInicial.Text);
  cdsProc.Active := true;

  mesAno := cdsProc.FieldByName('Data').AsString;

  // Retendo o Saldo Credor deste Mes ===========================================================================================
  cdsProc.Active := false;
  cdsProc.CommandText := 'EXEC spRetSaldoCredor ' + DBEidEmpresa.Text + ' , ' + DBEidCadEmpresa.Text + ' , ' + quotedstr(mesAno);
  cdsProc.Active := true;

  vlSaldoCredor := cdsProc.FieldByName('SaldoCredor').AsCurrency;

  cdsProc.Active := false;
  //==============================================================================================================================

  vlTotalCred := vlSaldoCredor + vlCre + vlOutroCre + vlEstDeb;

  vlTotalDeb := - vlDeb - vlOutroDeb - vlEstCre;

  vlSaldoDev := vlTotalDeb + vlTotalCred;

  if vlSaldoDev > 0 then
  begin
    vlSaldoDev := 0;
    vlSaldoMesSeg := vlTotalDeb + vlTotalCred;
  end
  else
  begin
    vlSaldoMesSeg := 0;
  end;

  vlImpRecolher := vlSaldoDev + vlPagAntecipado;

  if vlImpRecolher > 0 then
    vlImpRecolher := 0;

  // Grava o Saldo do Mes Seguinte  =======================
  cdsPadrao.FieldByName('mesAno').AsString := mesAno;
  cdsPadrao.FieldByName('vlSaldoMesSeg').AsCurrency := vlSaldoMesSeg;

  sql := ' EXEC spGravaSaldoMesCredor ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ',' +
                                          funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                                          funcao.RetornaValorEField(DBEmesAno, 3) + ',' +
                                          funcao.RetornaValorEField(DBEvlSaldoMesSeg,3);
  dmPadrao.dbConexao.ExecuteDirect(sql);
  //========================================================

  vlCre := FloatToCurr(vlCre);
  vlDeb := FloatToCurr(vlDeb);
  vlOutroCre := FloatToCurr(vlOutroCre);
  vlOutroDeb := FloatToCurr(vlOutroDeb);
  vlEstCre := FloatToCurr(vlEstCre);
  vlEstDeb := FloatToCurr(vlEstDeb);
  vlSaldoCredor := FloatToCurr(vlSaldoCredor);
  vlTotalCred := FloatToCurr(vlTotalCred);
  vlTotalDeb := FloatToCurr(vlTotalDeb);
  vlSaldoMesSeg := FloatToCurr(vlSaldoMesSeg);
  vlSaldoDev := FloatToCurr(vlSaldoDev);
  vlImpRecolher := FloatToCurr(vlImpRecolher);

  if vlCre < 0 then
    vlCre := vlCre * -1;
  if vlDeb < 0 then
    vlDeb := vlDeb * -1;
  if vlOutroCre < 0 then
    vlOutroCre := vlOutroCre * -1;
  if vlOutroDeb < 0 then
    vlOutroDeb := vlOutroDeb * -1;
  if vlEstCre < 0 then
    vlEstCre := vlEstCre * -1;
  if vlEstDeb < 0 then
    vlEstDeb := vlEstDeb * -1;
  if vlSaldoCredor < 0 then
    vlSaldoCredor := vlSaldoCredor * -1;
  if vlTotalCred < 0 then
    vlTotalCred := vlTotalCred * -1;
  if vlTotalDeb < 0 then
    vlTotalDeb := vlTotalDeb * -1;
  if vlSaldoMesSeg < 0 then
    vlSaldoMesSeg := vlSaldoMesSeg * -1;
  if vlSaldoDev < 0 then
    vlSaldoDev := vlSaldoDev * -1;
  if vlImpRecolher < 0 then
    vlImpRecolher := vlImpRecolher * -1;

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  // Valores de Credito e Debito  =================================================
  (frxRel.FindComponent('MvlCredito') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlCredito') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlCre));
  (frxRel.FindComponent('MvlDebito') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlDebito') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlDeb));
  //===============================================================================
  // Valores de Outros ==================================================================
  (frxRel.FindComponent('MvlOutroCred') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlOutroCred') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlOutroCre));
  (frxRel.FindComponent('MvlOutroDeb') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlOutroDeb') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlOutroDeb));
  //======================================================================================
  // Valores de Estornos ==================================================================
  (frxRel.FindComponent('MvlEstCred') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlEstCred') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlEstCre));
  (frxRel.FindComponent('MvlEstDeb') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlEstDeb') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlEstDeb));
   //======================================================================================
  (frxRel.FindComponent('MvlSaldoCredor') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlSaldoCredor') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlSaldoCredor));
  (frxRel.FindComponent('MvlTotalCred') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlTotalCred') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlTotalCred));
  (frxRel.FindComponent('MvlTotalDeb') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlTotalDeb') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlTotalDeb));
  (frxRel.FindComponent('MvlSaldoMesSeg') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlSaldoMesSeg') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlSaldoMesSeg));
  (frxRel.FindComponent('MvlSaldoDev') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlSaldoDev') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlSaldoDev));
  (frxRel.FindComponent('MvlImpRecolher') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MvlImpRecolher') as TFrxMemoView).Memo.Add(FormatFloat('#,##0.00', vlImpRecolher));
  if visivel then
    (frxRel.FindComponent('FTabelaDetalhe') as TFrxFooter).Visible := false;
  cdsPagina.Active := false;
  cdsPagina.CommandText := 'SELECT ISNULL(nrPaginaIni, 0) nrPaginaIni FROM Pagina WHERE idEmpresa = ' + DBEidEmpresa.Text +
                      ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idLivro = 3 AND mesAno = ' + QuotedStr(DBEmesAno.Text);
  cdsPagina.Active := true;
  if frxRel.PrepareReport then
  begin
    cdsPadraonrPagina.AsInteger := frxRel.PreviewPages.Count + cdsPagina.FieldByName('nrPaginaIni').AsInteger;
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEidLivro, DBEmesAno, DBEnrPagina], 'spGravaPaginaLivro');
  end;

  frxRel.ShowReport;
end;

procedure TFrmRelApuracaoIcms.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoidLivro.AsInteger := 3;
  cdsPadraonrPagina.AsInteger := 1;
end;

procedure TFrmRelApuracaoIcms.DBEdtFinalExit(Sender: TObject);
var
  dia, mes, ano : Word;
begin
  inherited;
  if (trim(DBEdtInicial.Text)<>'') then
  begin
    DecodeDate(StrToDate(DBEdtInicial.Text),ano, mes, dia);
    dia := funcao.UltDiaDoMes(StrToDate(DBEdtInicial.Text));
    cdsPadraodtFinal.AsString := Format('%s/%s/%s',[IntToStr(dia),InttoStr(mes),InttoStr(ano)]);
  end;
end;

procedure TFrmRelApuracaoIcms.DBEdtInicialExit(Sender: TObject);
var
  dia, mes, ano : Word;
begin
  inherited;
  if (trim(DBEdtInicial.Text)<>'') then
  begin
    DecodeDate(StrToDate(DBEdtInicial.Text),ano, mes, dia);
    dia := funcao.UltDiaDoMes(StrToDate(DBEdtInicial.Text));
    cdsPadraodtFinal.AsString := Format('%s/%s/%s',[IntToStr(dia),InttoStr(mes),InttoStr(ano)]);
  end;
end;

procedure TFrmRelApuracaoIcms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelApuracaoIcms := nil;
end;

procedure TFrmRelApuracaoIcms.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelApuracaoIcms.fr3';
  Width := 534;
  Height := 181 ;
  fiscal := true;
end;

procedure TFrmRelApuracaoIcms.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtInicial.SetFocus;
end;

procedure TFrmRelApuracaoIcms.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelApuracaoIcms.frxRelPrintPage(Page: TfrxReportPage;
  CopyNo: Integer);
begin
  inherited;
  showmessage('Copias: ' + IntToStr(CopyNo));
end;

end.
