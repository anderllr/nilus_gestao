unit uFrmLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, FMTBcd, StdCtrls, CGroupBox, ExtCtrls, DBCtrls,
  CDBRadioGroup, SqlExpr, CFind, DB, Provider, DBClient, ActnList, ImgList,
  CLookUp, Mask, CDBEdit, CLabel, Buttons, CBitBtn, CPanelGradient, ComCtrls,
  CPageControl, CDBMemo, CDBCheckBox, ShellAPI, Grids, DBGrids, CDBGrid,
  EditAlign, CEdit,CDBComboBox, CPanel, CComboBox,
  cxShellBrowserDialog, ExtDlgs, ClipBrd, CCheckBox, System.Actions, cxClasses,
  System.ImageList;

type
  TFrmCadLote = class(TFrmCadPadraoEmpCont)
    sdsPadrao: TSQLDataSet;
    DBRGtpLote: TCDBRadioGroup;
    CGroupBox2: TCGroupBox;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdescLote: TCDBEdit;
    GPPeriodo: TCGroupBox;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    TabLancamento: TTabSheet;
    FindContHistorico: TCFind;
    CGBDados: TCGroupBox;
    CBitBtn1: TCBitBtn;
    LookHistorico: TCLookUp;
    DBEidHistorico: TCDBEdit;
    CLabel9: TCLabel;
    DBEstLancamento: TCDBEdit;
    CLabel10: TCLabel;
    FindPlanoContaCre: TCFind;
    FindPlanoContaDeb: TCFind;
    CGBRepetir: TCGroupBox;
    dsLancamento: TDataSource;
    cdsLancamento: TClientDataSet;
    dspLancamento: TDataSetProvider;
    sdsLancamento: TSQLDataSet;
    CLabel12: TCLabel;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    CLabel13: TCLabel;
    DBEcdPlanoContaCre: TCDBEdit;
    LookdescPlanoContaCre: TCLookUp;
    CGBBotoes: TCGroupBox;
    CBitBtn2: TCBitBtn;
    TabConsulta: TTabSheet;
    CGroupBox14: TCGroupBox;
    DBGLancamento: TCDBGrid;
    DBRGtpPlanoConta: TCDBRadioGroup;
    EDtpPlanoConta: TCEdit;
    CBData: TCheckBox;
    CBDebito: TCheckBox;
    CBCredito: TCheckBox;
    CBHistorico: TCheckBox;
    CBComplemento: TCheckBox;
    EDdtFim: TCEdit;
    EDdtIni: TCEdit;
    CGroupBox6: TCGroupBox;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    DBEobsLancametoCons: TCDBEdit;
    CLabel19: TCLabel;
    dsCons: TDataSource;
    cdsCons: TClientDataSet;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    StringField2: TStringField;
    CBitBtn3: TCBitBtn;
    CLabel15: TCLabel;
    sdsLoteCons: TSQLDataSet;
    dspLoteCons: TDataSetProvider;
    cdsLoteCons: TClientDataSet;
    dsLoteCons: TDataSource;
    actPesLancamento: TAction;
    CLabel18: TCLabel;
    EDdiaFinal: TCEdit;
    CLabel14: TCLabel;
    EDdiaInicial: TCEdit;
    CLabel21: TCLabel;
    EDdtLancamento: TCEdit;
    CLabel8: TCLabel;
    DBEvlLancamento: TCDBEdit;
    lblValor: TCLabel;
    BtnSalvarLanc: TCBitBtn;
    BtnCancelarLanc: TCBitBtn;
    BtnExcluirLanc: TCBitBtn;
    BtnNovoLanc: TCBitBtn;
    CGBComplemento: TCGroupBox;
    DBMobsContLancamento: TCDBMemo;
    DBCBstLote: TCDBComboBox;
    DBEidLote: TCDBEdit;
    DBEdtLoteIni: TCDBEdit;
    DBEdtLoteFim: TCDBEdit;
    CLabel23: TCLabel;
    DBEidContLancamento: TCDBEdit;
    DBEidLoteCons: TCEdit;
    DBCBF: TCheckBox;
    DBCBG: TCheckBox;
    DBEdtLote: TCDBEdit;
    EDtpPlanoContaCons: TCEdit;
    cdsLoteConsidEmpresa: TIntegerField;
    cdsLoteConsidLote: TIntegerField;
    cdsLoteConsidContLancamento: TIntegerField;
    cdsLoteConsdtContLancamento: TSQLTimeStampField;
    cdsLoteConscdPlanoContaDeb: TIntegerField;
    cdsLoteConscdPlanoContaCre: TIntegerField;
    cdsLoteConsvlContLancamento: TFMTBCDField;
    cdsLoteConsobsContLancamento: TStringField;
    cdsLoteConstpPlanoConta: TStringField;
    cdsLoteConsstContLancamento: TStringField;
    DBEcdPlanoConta: TCDBEdit;
    CLookUp1: TCLookUp;
    TabExport: TTabSheet;
    CGroupBox3: TCGroupBox;
    CLabel25: TCLabel;
    EDCaminho: TCEdit;
    AbrePasta: TcxShellBrowserDialog;
    btImportar: TCBitBtn;
    btExportar: TCBitBtn;
    AbreArq: TOpenTextFileDialog;
    CGroupBox1: TCGroupBox;
    lblProg: TCLabel;
    prog: TProgressBar;
    actImportar: TAction;
    actExportar: TAction;
    cdsConsvlContLancamentoFim: TFMTBCDField;
    DBEvlLancamentoIniCons: TCEdit;
    DBEvlLancamentoFinCons: TCEdit;
    DBEdtContLancamento: TCDBEdit;
    CGroupBox4: TCGroupBox;
    rbDia: TRadioButton;
    rbLote: TRadioButton;
    CLabel20: TCLabel;
    EDTotalDeb: TCEdit;
    CLabel11: TCLabel;
    EDTotalCred: TCEdit;
    CLabel22: TCLabel;
    EDSaldo: TCEdit;
    BtnExcluir2: TCBitBtn;
    CGroupBox5: TCGroupBox;
    LblEmpDest: TCLabel;
    EdtidEmpresaDest: TCEdit;
    DBCKintegraLote: TCDBCheckBox;
    procedure btImportarClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure DBEcdPlanoContaCreChange(Sender: TObject);
    procedure DBEcdPlanoContaDebChange(Sender: TObject);
    procedure DBEidLoteEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEidLoteConsbEnter(Sender: TObject);
    procedure DBEidContLancamentoExit(Sender: TObject);
    procedure DBCBGClick(Sender: TObject);
    procedure DBCBFClick(Sender: TObject);
    procedure EDdtLancamentoExit(Sender: TObject);
    procedure DBEdtLoteExit(Sender: TObject);
    procedure DBGLancamentoDblClick(Sender: TObject);
    procedure actPesLancamentoExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure EDdtFimExit(Sender: TObject);
    procedure EDdtIniExit(Sender: TObject);
    procedure cdsLancamentoAfterInsert(DataSet: TDataSet);
    procedure BtnExcluirLancClick(Sender: TObject);
    procedure BtnNovoLancClick(Sender: TObject);
    procedure BtnCancelarLancClick(Sender: TObject);
    procedure DBRGtpPlanoContaChange(Sender: TObject);
    procedure DBEidLoteExit(Sender: TObject);
    procedure DBRGOrigemChange(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dspLancamentoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dsLancamentoStateChange(Sender: TObject);
    procedure BtnSalvarLancClick(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBRGtpLoteChange(Sender: TObject);
     function RetData(data: TDateTime): string;
    procedure cdsLancamentoAfterScroll(DataSet: TDataSet);
    procedure rbDiaClick(Sender: TObject);
    procedure BtnExcluir2Click(Sender: TObject);
    procedure DBCKintegraLoteExit(Sender: TObject);
  private
    { Private declarations }
    data: Tdate;
    idEmpExp, idFilialExp, Integra : string;
    Procedure Calcular_Valores;
  public
    { Public declarations }
  end;

var
  Saldo:String;
  FrmCadLote: TFrmCadLote;

implementation

uses uFrmPrincipal,uFuncao, uDmPadrao, uFrmPadrao, uFrmCadPadrao, uFrmPesLote;

{$R *.dfm}

procedure TFrmCadLote.Calcular_Valores;
begin
  //
  If Not(cdsLancamento.Active) Then
     Exit;
  //
  If (rbLote.Checked) Then
     With (FrmPrincipal.ExecutaSQLRet([ DBEidEmpresa, DBEidLote, nil, EDtpPlanoConta],'spRetContSaldoLote','')) do
          Begin
            EDTotalDeb.Text  := FormatFloat('#,##0.00', FieldByName('vlDebito').AsFloat);
            EDTotalCred.Text := FormatFloat('#,##0.00', FieldByName('vlCredito').AsFloat);
            EDSaldo.Text     := FormatFloat('#,##0.00', FieldByName('vlSaldo').AsFloat);
          End
  //
  Else If (rbDia.Checked) Then
     With (FrmPrincipal.ExecutaSQLRet([ DBEidEmpresa, DBEidLote, DBEdtContLancamento, EDtpPlanoConta],'spRetContSaldoLote','')) do
          Begin
            EDTotalDeb.Text  := FormatFloat('#,##0.00', FieldByName('vlDebito').AsFloat);
            EDTotalCred.Text := FormatFloat('#,##0.00', FieldByName('vlCredito').AsFloat);
            EDSaldo.Text     := FormatFloat('#,##0.00', FieldByName('vlSaldo').AsFloat);
          End;
  //
end;

procedure TFrmCadLote.actCancelarExecute(Sender: TObject);
begin
 if PagAbas.tabindex <> 0 then
  begin
     PagAbas.tabindex:=0;
  end;

  inherited;
end;

procedure TFrmCadLote.actExcluirExecute(Sender: TObject);
var
  sql : String;
begin
 if PagAbas.tabindex <> 0 then
  begin
     PagAbas.tabindex:=0;
  end;
//  inherited;
  if messagedlg('Deseja realmente excluir o lote selecionado?', mtwarning, [mbyes, mbno], 0) = mryes then
  begin
    sql := 'DELETE FROM ContRemoveLanc WHERE idEmpresa = ' + cdsPadrao.FieldByName('idEmpresa').AsString +
           ' AND idLote  = ' + cdsPadrao.FieldByName('idLote').AsString;
    dmPadrao.dbConexao.ExecuteDirect(sql);
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidLote, DBRGtpPlanoConta], 'spContExcluiLote');
    cdsPadrao.Active:=true;
    actCancelarExecute(actCancelar);
  end;
end;

procedure TFrmCadLote.actNovoExecute(Sender: TObject);
var
sql:string;
begin
  if PagAbas.tabindex <> 0 then
  begin
    PagAbas.tabindex:=0;
  end;
  inherited;
  sql:='SELECT tpPlanoConta, idEmpresa, MAX(idLote)+1 AS idLote FROM ContLote GROUP BY idEmpresa, tpPlanoConta';

  with FrmPrincipal.ExecutaSQLRet([],'',sql) do
  if RecordCount > 0 then
  begin
    cdsPadrao.FieldByName('tpPlanoConta').AsString:='F';
    cdsPadrao.FieldByName('idLote').AsString:=FieldByName('idLote').AsString;
  end
  else
    cdsPadrao.FieldByName('idLote').AsString:='1';

  cdsPadrao.FieldByName('stLote').AsString:='ABERTO';
  cdsPadrao.FieldByName('tpPlanoConta').AsString:='F';

  funcao.SomenteLeitura([DBEdtLote, EDdtIni, EDdtFim] , false);
  funcao.SomenteLeitura([DBCBstLote], false);

  DBEdtLote.setfocus;

end;

procedure TFrmCadLote.actPesLancamentoExecute(Sender: TObject);
  Var
  sqllote,sql : string;
  dia, ano, mes: word;
  dtInicial, dtFinal,tpPlano :string;
begin
  if not ((DBCBF.checked) or (DBCBG.checked)) then
  begin
    messagedlg('Informe a Origem!', mtInformation, [mbOk], 0);
    DBCBF.setfocus;
    exit;
  end;

  if DBCBF.checked =true then
    tpPlano:='F';
  if DBCBG.checked = true then
    tpPlano:='G';

  if DBEidLoteCons.text = '' then  //Verficação do lote
    if Application.MessageBox('Deseja realizar uma pesquisa independente de Lote?','Pesquisa',mb_yesno+MB_ICONQUESTION)=idno then
      if DBEidLoteCons.text = '' then
      begin
        messagedlg('Informe o Código do Lote!', mtInformation, [mbOk], 0);
        DBEidLoteCons.SetFocus;
        exit;
      end;

  if Trim(DBEidLoteCons.text) <> '' then
  begin
    sqllote:='SELECT * FROM ContLote WHERE idLote ='+Trim(DBEidLoteCons.text);
    with FrmPrincipal.ExecutaSQLRet([],'',sqllote) do
    if RecordCount = 0 then
      begin
        messagedlg('Não existe lote cadastrado com o código informado!', mtInformation, [mbOk], 0);
        DBEidLoteCons.setfocus;
        exit;
      end;
  end;

  //Montar data de acordo com o Periodo do Lote=================================
  if (Trim(EDdiaInicial.Text) <> '') then
  begin
    DecodeDate(cdsPadrao.FieldByName('dtLote').AsDateTime,ano,mes,dia);
    dia := StrToInt(EDdiaInicial.Text);
    dtInicial := funcao.ConverteData((EncodeDate(ano,mes,dia)));
  end;

  if (Trim(EDdiaFinal.Text) <> '') then
  begin
    DecodeDate(cdsPadrao.FieldByName('dtLote').AsDateTime,ano,mes,dia);
    dia := StrToInt(EDdiaFinal.Text);
    dtFinal := funcao.ConverteData((EncodeDate(ano,mes,dia)));
//    dtFinal := DateToStr(EncodeDate(ano,mes,dia));
  end;
  //===========================================================================

  screen.Cursor := crSqlWait;

  sql := ' WHERE 1=1';

  sql := sql + ' AND tpPlanoConta = ' + QuotedStr(tpPlano);

  if Trim(DBEidLoteCons.Text) <> '' then
  sql := sql + ' AND idLote = ' + Trim(DBEidLoteCons.text);

  if trim(DBEidEmpresa.Text) <> '' then
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;

  //Data--------------
  if Trim(EDdiaInicial.Text) <> '' then
    sql := sql + ' AND dtContLancamento >= ' + dtInicial;

  if Trim(EDdiaFinal.Text) <> '' then
    sql := sql + ' AND dtContLancamento <= ' + dtFinal;
  //---------------

  //Valor-----------
  if Trim(DBEvlLancamentoIniCons.Text) <> '' then
    sql := sql + ' AND vlContLancamento >= ' + StringReplace(DBEvlLancamentoIniCons.Text, ',', '.', [rfReplaceAll]);
  //
  if Trim(DBEvlLancamentoFinCons.Text) <> '' then
    sql := sql + ' AND vlContLancamento <= '  + StringReplace(DBEvlLancamentoFinCons.Text, ',', '.', [rfReplaceAll]);
  //-------

  if Trim(DBEobsLancametoCons.Text) <> '' then
    sql := sql + ' AND obsContLancamento LIKE ' + quotedstr('%' + Trim((DBEobsLancametoCons.Text))+'%');

  if Trim(DBEcdPlanoConta.Text) <> '' then
    sql := sql + ' AND ( cdPlanoContaDeb  = ' + Trim(DBEcdPlanoConta.Text) +
                 '  OR cdPlanoContaCre =  ' + Trim(DBEcdPlanoConta.Text) + ')';

  cdsLoteCons.Active := false;
  cdsLoteCons.CommandText := ' SELECT idEmpresa, idContLancamento, idLote, dtContLancamento, cdPlanoContaDeb, '+
                             ' cdPlanoContaCre, vlContLancamento, obsContLancamento, tpPlanoConta, stContLancamento '+
                             ' FROM ContLancamento ' + sql +

                             ' ORDER BY idLote, idContLancamento';
  cdsLoteCons.Active := true;

  screen.Cursor := crDefault;

 inherited;
end;

procedure TFrmCadLote.actPesquisarExecute(Sender: TObject);
begin
  if PagAbas.tabindex <> 0 then
      PagAbas.tabindex:=0;

  Application.CreateForm(TFrmPesLote, FrmPesLote);
  FrmPesLote.ShowModal;
//  inherited;
  with cdsPadrao do
  begin
    if not (FrmPesLote.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
        cdsEmpresa.Edit;
      cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesLote.cdsPadraoidEmpresa.Value;
      FieldByName('idLote').Value := FrmPesLote.cdsGrid.FieldByName('idLote').Value;
      FieldByName('tpPlanoConta').Value := FrmPesLote.cdsPadrao.FieldByName('tpPlanoConta').Value;
      DBEidLote.SetFocus;
      DBEidLoteExit(DBEidLote);
      DBEdescLote.SetFocus;
    end;
  end;
end;

procedure TFrmCadLote.actSalvarExecute(Sender: TObject);
var
   sql:String;
begin
  if PagAbas.tabindex <> 0 then
  begin
    PagAbas.tabindex := 0;
  end;

  if Trim(DBEidLote.text) = '' then
  begin
    messagedlg('Informe o código do lote!', mtWarning, [mbOK], 0);
    DBEidLote.setfocus;
    exit;
  end;

  if ((trim(EDdtIni.Text) = '') OR (trim(EDdtFim.Text) = '') ) then
  begin
    messagedlg('Informe corretamente o PERIODO.', mtInformation, [mbOk], 0);
    EDdtIni.SetFocus;
    exit;
  end;

  if Trim(DBEdescLote.text) = '' then
  begin
    messagedlg('Descrição é um campo obrigatório!', mtWarning, [mbOK], 0);
    DBEdescLote.setfocus;
    exit;
  end;

  if DBRGtpPlanoConta.value = '' then
  begin
    messagedlg('Informe a ORIGEM!', mtWarning, [mbOK], 0);
    DBRGtpPlanoConta.SetFocus;
    exit;
  end;

  if (cdsPadrao.FieldByName('stLote').AsString = 'FECHADO') and (EDSaldo.Value <> 0) then
  begin
    messagedlg('O lote não pode ser fechado enquanto houver diferença!', mtwarning, [mbok], 0);
    exit;
  end;

  cdsPadrao.FieldByName('tpPlanoConta').AsString:=DBRGtpPlanoConta.value;
  GravaChave(1, '', nil);
  inherited;
  if ((DBRGtpLote.Value = 'O' ) OR (DBRGtpLote.Value = 'A' )) then
  begin
    if cdsPadrao.FieldByName('stLote').AsString = 'ABERTO' then
    begin
      sql := 'EXEC spContImportaLote ' + funcao.RetornaValorEField(DBEidEmpresa,3) + ', ' +
                                         funcao.RetornaValorEField(DBRGtpPlanoConta,3) + ', ' +
                                         funcao.RetornaValorEField(DBEidLote,3) + ', ' +
                                         funcao.RetornaValorEField(DBEdtLoteIni,3) + ', ' +
                                         funcao.RetornaValorEField(DBEdtLoteFim,3) + ', ' +
                                         QuotedStr(Integra);
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  end;
  //Update no status do lancamento de acordo com o status do lote
  cdsLancamento.Open;
 if cdsLancamento.recordcount > 0 then
  begin
    sql:= ' UPDATE ContLancamento SET stContLancamento = ' + QuotedStr(cdsPadrao.FieldByName('stLote').AsString)+
          ' where idEmpresa = ' + DBEidEmpresa.Text +
          ' AND tpPlanoConta = ' + QuotedStr(cdsPadrao.FieldByName('tpPlanoConta').AsString) +
          ' AND idLote = '+ cdsPadrao.FieldByName('idLote').AsString +
          ' AND stContLancamento <> ' + QuotedStr('CANCELADO');
    //
    cdsLookup.Active:=false;
    cdsLookup.CommandText:=sql;
    cdsLookup.Execute;
    //
    cdsLancamento.Close;
//    cdsLancamento.Open;
    //
  end;
  if cdsPadrao.FieldByName('stLote').AsString = ('ABERTO') then
    funcao.SomenteLeitura([DBEdtLote, EDdtIni, EDdtFim] , false)
  else
    funcao.SomenteLeitura([DBEdtLote, EDdtIni, EDdtFim] , true);
end;

procedure TFrmCadLote.btExportarClick(Sender: TObject);
var
  arq, lin2 : TStrings;
  linha, valor, arquivo, sql, tpExp, tpPlanoConta, hist : string;
  i, j, cdPlanoConta, seq : integer;
  ano, mes, dia : word;
begin
  sql := 'SELECT ExpContabil FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  tpExp := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('ExpContabil').AsString;
  i:= 0;

  lin2 := TStringList.Create;
  AbrePasta.Execute;
  if AbrePasta.Path <> '' then
  begin
    EDCaminho.Text := AbrePasta.Path;
    btImportar.Enabled := true;
    btExportar.Enabled := true;
  end
  else
  begin
    EDCaminho.Text := '';
    btImportar.Enabled := false;
    btExportar.Enabled := false;
  end;

  if ((cdsPadrao.IsEmpty) OR (Trim(DBEidLote.Text) = '')) then
  begin
    messagedlg('É necessário o Lote seja selecionado ou cadastrado ! ', mtInformation, [mbOk],0);
    exit;
  end;

  arq := TStringList.Create;
  Screen.Cursor := crSQLWait;

  tpPlanoConta := DBRGtpPlanoConta.Items[DBRGtpPlanoConta.ItemIndex];
  if tpPlanoConta = '&Fiscal' then
    tpPlanoConta := 'F'
  else
    tpPlanoConta := 'G';

  DecodeDate(StrToDate(DBEdtLote.Text), ano, mes, dia);

  arquivo := EDCaminho.Text + '\' + DBEdescLote.Text + ' ' + IntToStr(mes) + '-' + IntToStr(ano);
  if DBRGtpPlanoConta.Value = 'F' then
     arquivo := arquivo + ' FISCAL' + '.txt'
  else
     arquivo := arquivo + ' GERENCIAL' + '.txt' ;

  if tpExp = 'PADRÂO NILUS' then
  begin
    {$REGION ' INFORMAÇÕES SOBRE O LOTE '}
  // ============================================================ Lote =============================================================
    linha := '';
    sql := 'SELECT * FROM ContLote WHERE idEmpresa = ' + DBEidEmpresa.Text  +
           ' AND tpPlanoConta = ' + quotedstr(EDtpPlanoConta.Text) + ' AND idLote = '+ DBEidLote.Text;

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin

      linha := '[LOTE]';
      arq.Add(linha);
      linha := '';

      // CÓDIGO DO LOTE - IDLOTE
      valor := FieldByName('idLote').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 4);

      // TIPO DO PLANO DE CONTA - TPPLANOCONTA
      valor := FieldByName('tpPlanoConta').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 1);

      // DATA DO LOTE - DTLOTE
      valor := RetData(FieldByName('dtLote').AsDateTime);
      linha := linha + valor;

      // SITUAÇÃO DO LOTE - STLOTE
      valor := FieldByName('stLote').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 20);

      // DESCRIÇÃO DO LOTE - DESCLOTE
      valor := FieldByName('descLote').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 50);

      //TIPO DO LOTE - TPLOTE
      valor := FieldByName('tpLote').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 1);

      //DATA DE INICIO DO LOTE - DTLOTEINI
      valor := RetData(cdsPadrao.FieldByName('dtLoteIni').AsDateTime);
      linha := linha + valor;

      //DATA DE INICIO DO LOTE - DTLOTEFIN
      valor := RetData(cdsPadrao.FieldByName('dtLoteFin').AsDateTime);
      linha := linha + valor;

      arq.Add(linha);
      linha := '';

    end;

    // ========================================================== Fim do Lote  ===========================================================
    {$ENDREGION 'INFORMAÇÕES SOBRE O LOTE'}

    {$REGION ' INFORMAÇÕES SOBRE O LANÇAMENTO '}
  // ============================================================ Lançamento =============================================================
    linha := '';

    cdsLookUp.Active := false;
    cdsLookUp.CommandText :=  'SELECT * FROM ContLancamento ' +
                              ' WHERE idEmpresa = ' + DBEidEmpresa.Text  +
                              '   AND tpPlanoConta = ' + quotedstr(EDtpPlanoConta.Text) + ' AND idLote = '+ DBEidLote.Text;
    cdsLookUp.Active := true;

    sql := 'SELECT MAX(idContLancamento) id FROM ContLancamento ' +
           ' WHERE idEmpresa = ' + DBEidEmpresa.Text  +
           '   AND tpPlanoConta = ' + quotedstr(EDtpPlanoConta.Text) + ' AND idLote = '+ DBEidLote.Text;


    prog.Position := 0;
    prog.Max := FrmPrincipal.ExecutaSQLRet([],'', sql).FieldByName('id').AsInteger;


    with cdsLookUp do
    begin
      First;

      linha := '[LANCAMENTO]';
      arq.Add(linha);
      linha := '';

      while not Eof do
      begin

        prog.Position := i;
        prog.Refresh;

        lblProg.Caption := 'Exportanto para o destino ' + arquivo + ' - Lançamento - ' +
        FieldByName('idContLancamento').AsString;
        lblProg.Refresh;

        // CÓDIGO DO LOTE - IDLOTE
        valor := FieldByName('idLote').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 4);

        // TIPO DO PLANO DE CONTA - TPPLANOCONTA
        valor := FieldByName('tpPlanoConta').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 1);

        // CÓDIGO DO LANÇAMENTO - IDCONTLANCAMENTO
        valor := FieldByName('idContLancamento').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 6);

        // CÓDIGO DO HISTÓRICO - IDCONTHISTORICO
        valor := FieldByName('idContHistorico').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'N', 4);

        // DATA DO LANÇAMENTO - DTCONTLANCAMENTO
        valor := RetData(FieldByName('dtContLancamento').AsDateTime);
        linha := linha + valor;

        // CÓDIGO DA CONTA DE DEBITO - CDPLANOCONTADEB
        valor := FieldByName('cdPlanoContaDeb').AsString;
        if trim(valor) = '' then
          valor := 'NULL';
        linha := linha + Format('%4s', [valor]);

        // CÓDIGO DA CONTA DE CREDITO - CDPLANOCONTACRE
        valor := FieldByName('cdPlanoContaCre').AsString;
        if trim(valor) = '' then
          valor := 'NULL';
        linha := linha + Format('%4s', [valor]);

        // VALOR DO LANÇAMENTO - VLCONTLANCAMENTO
        valor := FieldByName('vlContLancamento').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

        // OBSERVAÇÃO DO LANÇAMENTO - OBSCONTLANCAMENTO
        valor := funcao.Remove(FieldByName('obsContLancamento').AsString, Chr(13)+Chr(10));
        linha := linha + Format('%-250s', [valor]);

        // SITUAÇÃO DO LANÇAMENTO - STCONTLANCAMENTO
        valor := FieldByName('stContLancamento').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 20);

        // SE O LANÇAMENTO É ONLINE - ONLINE
        valor := FieldByName('online').AsString;
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 1);

        arq.Add(linha);
        linha := '';

        Next;
      end;
    end;
  {$ENDREGION 'INFORMAÇÕES SOBRE O LANCAMENTO'}
  end
  else
  if tpExp = 'PADRÂO 2' then
  begin
    {$REGION ' INFORMAÇÕES SOBRE O LOTE '}
  // ============================================================ Lote =============================================================
    linha := '';
    if (Trim(idEmpExp) <> '') AND (Trim(idFilialExp) <> '') then
      sql := 'EXEC spExpContabil ' + DBEidEmpresa.Text + ', ' + idFilialExp +
             ', ' + DBEidLote.Text + ', ' + QuotedStr(tpPlanoConta) + ', ' + idEmpExp
    else
      sql := 'EXEC spExpContabil ' + DBEidEmpresa.Text + ', ' + frmPrincipal.idCadEmpresa +
             ', ' + DBEidLote.Text + ', ' + QuotedStr(tpPlanoConta) + ', ' + idEmpExp;
    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      First;
      while not Eof do
      begin
        DecodeDate(FieldByName('dtLancamento').AsDateTime, ano, mes, dia);
        // Código da Empresa
        valor := frmPrincipal.ExecutaSQLRet([], '', 'SELECT idEmpresaExt FROM ConfigContabil WHERE idCadGeral = ' + FieldByName('idEmpresa').AsString).FieldByName('idEmpresaExt').AsString;
        linha := linha + funcao.PreencheString(valor, '0', 'E', 3);

        // Código da Filial
        valor := frmPrincipal.ExecutaSQLRet([], '', 'SELECT idCadEmpresaExt FROM ConfigContabil WHERE idCadGeral = ' + FieldByName('idEmpresa').AsString).FieldByName('idCadEmpresaExt').AsString;
        linha := linha + funcao.PreencheString(valor, '0', 'E', 3);

        // Ano
        valor := IntToStr(ano);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 4);

        // Mes
        valor := IntToStr(mes);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 2);

        // Dia
        valor := IntToStr(dia);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 2);

        // Debito Ou Credito
        valor := FieldByName('tpOperacao').AsString;
        linha := linha + funcao.PreencheString(valor, '0', 'E', 1);

        // Codigo Anterior
        valor := FieldByName('idCodAnterior').AsString;
        linha := linha + funcao.PreencheString(valor, '0', 'E', 6);

        // Historico Contabil
        valor := FieldByName('idContHistorico').AsString;
        linha := linha + funcao.PreencheString(valor, '0', 'E', 5);

        //Valor da Movimentação
        valor := FormatFloat( '#,##0.00',FieldByName('vlContLancamento').AsFloat);
        linha := linha + funcao.PreencheString(funcao.RetCampoSintegra(valor, 'N', 13), '0', 'E', 13);

        // Observação
        valor := Trim(FieldByName('descComplemento').AsString);
        linha := linha + funcao.PreencheString(valor, ' ', 'D', 120);
       { lin2.Clear;
        //quebra de linha
        if Length(valor) > 40 then
        begin
          valor := Trim(Copy(valor, 41, Length(valor)));
          while valor <> '' do
          begin
            lin2.Add(Copy(valor, 1, 40));
            valor := Trim(Copy(valor, 41, Length(valor)));
          end; //fim do while valor <> '' do
        end; //fim do if Length(valor) > 40 then}

        // Fornecedor
        valor := funcao.PreencheString(FieldByName('idFornecedor').AsString, '0', 'E', 6);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 6);

        // Historico de Contas
        valor := '0000';
        linha := linha + funcao.PreencheString(valor, '0', 'E', 4);

        // Titulos a Pagar
        valor := '000000000';
        linha := linha + funcao.PreencheString(valor, '0', 'E', 9);

        // Serie Sistema AdmRh
        valor := '0000';
        linha := linha + funcao.PreencheString(valor, '0', 'E', 4);

        // Atividade Contabil
        valor := '0000';
        linha := linha + funcao.PreencheString(valor, '0', 'E', 4);

        // Centro de Custo
        valor := '000000';
        linha := linha + funcao.PreencheString(valor, '0', 'E', 6);

        arq.Add(linha);
      {  //adiciona a quebra de linha
        if trim(lin2.Text) <> '' then
          for j := 0 to lin2.Count -1 do
          begin
            linha := '';
            linha := linha + '                                       ';
            linha := linha + lin2.Strings[j];
            arq.Add(linha);
          end;}
        linha := '';
        Next;
      end;
    end;


  // ========================================================== Fim do Lote  ===========================================================
    {$ENDREGION 'INFORMAÇÕES SOBRE O LOTE'}
  end
  else
  if tpExp = 'CORDILHEIRA' then
  begin
    {$REGION ' INFORMAÇÕES SOBRE O LOTE '}
  // ============================================================ Lote =============================================================
  //Layout obtido em: http://ajudaonline.ebs.com.br/crd/index.html?cscoutimpnor.htm
    linha := '';
    sql := 'SELECT * FROM ContLote WHERE idEmpresa = ' + DBEidEmpresa.Text  +
           ' AND tpPlanoConta = ' + quotedstr(EDtpPlanoConta.Text) + ' AND idLote = '+ DBEidLote.Text;

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin

      linha := 'C'; //Tipo de Registro: C - Capa de lote.
      linha := linha + 'M'; //TIPO DE LOTE: Período: (D)iário ou (M)ensal.

      //agora preenche a data //DATA DO LOTE - Data dos lctos formato DDMMAAAA
      valor := '';

      // Dia
      valor := IntToStr(dia);
      linha := linha + funcao.PreencheString(valor, '0', 'E', 2);
      // Mes
      valor := IntToStr(mes);
      linha := linha + funcao.PreencheString(valor, '0', 'E', 2);
      // Ano
      valor := IntToStr(ano);
      linha := linha + funcao.PreencheString(valor, '0', 'E', 4);


      //Valor total do lote - TOTAL DO LOTE
      sql := 'SELECT SUM(vlContLancamento) vlTotal FROM ContLancamento WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idLote = ' + funcao.RetornaValorEField(DBEidLote, 3) +
             ' AND tpPlanoConta = ' + funcao.RetornaValorEField(DBRGtpLote, 3) +
             ' AND cdPlanoContaDeb > 0';

      valor := FormatFloat( '#,##0.00',frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('vlTotal').AsCurrency);
      linha := linha + funcao.PreencheString(funcao.RetCampoSintegra(valor, 'N', 15), '0', 'E', 15);

      //DESCRIÇÃO - Descrição do lote.
      valor := FieldByName('descLote').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 20);

      linha := linha + 'OUT'; //ORIGEM: Origem do lançamento

      // CÓDIGO DO LOTE - IDLOTE ---IDENTIFICADOR: Identificador do lote.
      valor := FieldByName('idLote').AsString;
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 10);

      // BRANCOS RESERVADO.
      valor := '';
      linha := linha + funcao.RetCampoSintegra(valor, 'X', 37);

      linha := linha + '00001'; //SEQUÊNCIA: Sequência de Registro: 00001.

      arq.Add(linha);
      linha := '';
    end;

    // ========================================================== Fim do Lote  ===========================================================
    {$ENDREGION 'INFORMAÇÕES SOBRE O LOTE'}

    {$REGION ' INFORMAÇÕES SOBRE O LANÇAMENTO '}
  // ============================================================ Lançamento =============================================================
    linha := '';

    cdsLookUp.Active := false;
    cdsLookUp.CommandText :=  'SELECT * FROM vContLancamento ' +
                              ' WHERE idEmpresa = ' + DBEidEmpresa.Text  +
                              '   AND tpPlanoConta = ' + quotedstr(EDtpPlanoConta.Text) + ' AND idLote = '+ DBEidLote.Text;
    cdsLookUp.Active := true;

    sql := 'SELECT MAX(idContLancamento) id FROM vContLancamento ' +
           ' WHERE idEmpresa = ' + DBEidEmpresa.Text  +
           '   AND tpPlanoConta = ' + quotedstr(EDtpPlanoConta.Text) + ' AND idLote = '+ DBEidLote.Text;


    prog.Position := 0;
    prog.Max := FrmPrincipal.ExecutaSQLRet([],'', sql).FieldByName('id').AsInteger;


    with cdsLookUp do
    begin
      First;

      linha := '';

      seq := 0;
      while not Eof do
      begin

        seq := seq + 1;

        prog.Position := i;
        prog.Refresh;

        lblProg.Caption := 'Exportanto para o destino ' + arquivo + ' - Lançamento - ' +
        FieldByName('idContLancamento').AsString;
        lblProg.Refresh;

        linha := 'L'; //Tipo de Registro: L - Lançamento.

        DecodeDate(FieldByName('dtContLancamento').AsDateTime, ano, mes, dia);

        //agora preenche a data //DATA DO LCTO - Data dos lctos formato DDMMAAAA
        valor := '';

        // Dia
        valor := IntToStr(dia);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 2);
        // Mes
        valor := IntToStr(mes);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 2);
        // Ano
        valor := IntToStr(ano);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 4);

        //CONTA A DÉBITO Conta reduzida a débito (com DV).
        cdPlanoConta := 0;
        //Busca a conta adaptada se houver
        cdPlanoConta := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM PlanoConta WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                                           ' AND tpPlanoConta = ' + QuotedStr(EDtpPlanoConta.Text) +
                                                           ' AND cdPlanoConta = ' + IntToStr(FieldByName('cdPlanoContaDeb').AsInteger)).FieldByName('idCodAnterior').AsInteger;
        if cdPlanoConta > 0 then
          valor := IntToStr(cdPlanoConta)
        else
          valor := IntToStr(FieldByName('cdPlanoContaDeb').AsInteger);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 6);

        //CONTA A CRÉDITO Conta reduzida a crédito (com DV).
        cdPlanoConta := 0;
        //Busca a conta adaptada se houver
        cdPlanoConta := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM PlanoConta WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                                           ' AND tpPlanoConta = ' + QuotedStr(EDtpPlanoConta.Text) +
                                                           ' AND cdPlanoConta = ' + IntToStr(FieldByName('cdPlanoContaCre').AsInteger)).FieldByName('idCodAnterior').AsInteger;
        if cdPlanoConta > 0 then
          valor := IntToStr(cdPlanoConta)
        else
          valor := IntToStr(FieldByName('cdPlanoContaCre').AsInteger);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 6);

        //HISTÓRICO Código do histórico padrão.
        valor := IntToStr(FieldByName('idContHistorico').AsInteger);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 3);

        //COMPLEMENTO - Complemento do histórico.
        hist := FieldByName('obsContLancamento').AsString;
        valor := copy(hist, 1, 26);
        linha := linha + funcao.PreencheString(valor, ' ', 'D', 25);

        //atualiza o histórico
        hist := copy(hist, 26, length(hist) - 25);

        //VALOR LCTO - Valor do lançamento.
        valor := FormatFloat( '#,##0.00',FieldByName('vlContLancamento').AsFloat);
        linha := linha + funcao.PreencheString(funcao.RetCampoSintegra(valor, 'N', 15), '0', 'E', 15);

        //CENTRO DE CUSTOS Código do centro de custos.
        valor := '';
        linha := linha + funcao.PreencheString(valor, '0', 'E', 3);

        //CLASSIF. A DÉBITO - Classificação contábil a débito.
        valor := funcao.TiraMascara(FieldByName('classifDeb').AsString);
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

        //CLASSIF. A CRÉDITO - Classificação contábil a crédito.
        valor := funcao.TiraMascara(FieldByName('classifCre').AsString);
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 14);

        //SEQUÊNCIA Sequência de Registro.
        valor := IntToStr(seq);
        linha := linha + funcao.PreencheString(valor, '0', 'E', 5);

        //DELIMITADOR-Caracter pipeline ( | ) . Campo opcional  - X(001)
        valor := '|';
        linha := linha + valor;

        //OBSERVACOES-Obs. sobre o lançamento . Campo opcional - X(090)
        valor := '';
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 90);

        //CENTRO DE CUSTOS 2- Centro de custos com mais de 03 dígitos - 9(006)
        valor := '';
        linha := linha + funcao.PreencheString(valor, '0', 'E', 6);

        //BRANCOS-Reservado   + DELIMITADOR-Caracter pipeline ( | ) . Campo opcional .
        valor := '';
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 2) + '|';

        //IDENTIFICADOR-Identificador das contrapartidas
        if FieldByName('idAgrupador').AsInteger > 0 then
          valor := IntToStr(FieldByName('idAgrupador').AsInteger)
        else
          valor := '';
        linha := linha + funcao.RetCampoSintegra(valor, 'X', 32);

        arq.Add(linha);
        linha := '';

        //Agora adiciona o histórico na sequência quando ultrapassar o limite de 25
        while trim(hist) <> '' do
        begin
          seq := seq + 1;
          //TIPO DE REGISTRO - Tipo de Registro: H - Histórico.
          linha := 'H';

          //HISTÓRICO - Descrição do histórico.
          valor := copy(hist, 1, 51);
          linha := linha + funcao.PreencheString(valor, ' ', 'D', 50);

          //BRANCOS - Reservado..
          valor := '';
          linha := linha + funcao.RetCampoSintegra(valor, 'X', 44);

          //SEQUÊNCIA Sequência de Registro.
          valor := IntToStr(seq);
          linha := linha + funcao.PreencheString(valor, '0', 'D', 5);

          //atualiza o histórico
//          if length(trim(hist)) > 50  then
          hist := copy(hist, 51, length(hist) - 49);

          arq.Add(linha);
          linha := '';
        end;

        Next;
      end;
    end;
  {$ENDREGION 'INFORMAÇÕES SOBRE O LANCAMENTO'}
  end;
  Screen.Cursor := crDefault;

  arq.SaveToFile(arquivo);
  arq.Free;
  Messagedlg('Exportação realizada com sucesso  '+ arquivo + ' !' , mtInformation, [mbOK],0);
  GravaLog('Exportação dos dados do Lote Contábil');

end;

procedure TFrmCadLote.btImportarClick(Sender: TObject);
var
 arq : TStringList;
 i, idLote : integer;
 sql, linha, dtLote, dtLoteIni, dtLoteFim, dtLancamento : string;
begin
  inherited;
  AbreArq.Execute;
  arq := TStringList.Create;
  if AbreArq.FileName <> '' then
  begin
    EDCaminho.Text := AbreArq.FileName;
  end
  else
  begin
    EDCaminho.Text := '';
    messagedlg(' É necessário que se informe o arquivo a ser importado !', mtWarning, [mbOk], 0);
    exit;
  end;

  arq.LoadFromFile(AbreArq.FileName);
  sql := '';
  prog.Position := 0;
  prog.Max := arq.Count -1;
  for i := 1 to arq.Count - 1 do
  begin
    prog.Position := i;
    prog.Refresh;
    lblProg.Caption := 'Importando Dados do Lote : ' + IntToStr(i+1) + '/' + IntToStr(arq.Count);
    lblProg.Refresh;
    linha := arq.Strings[i];

    if i = 1 then
    begin
      idLote := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'SELECT MAX(idLote) idLote FROM ContLote').FieldByName('idLote').AsInteger;
      if idLote > 0 then
        idLote := idLote + 1
      else
        idLote := 1;

      dtLote := Trim(Copy(linha,6,10));
//      dtLote := Trim(Copy(linha,5,7));
      dtLoteIni := Trim(Copy(linha, 87, 10));
      dtLoteFim := Trim(Copy(linha, 97, 10));

      //Variáveis para tratar o erro de data --se não for padrão brasileiro coloca como yyyy-mm-dd
      if UpperCase(funcao.ConfigIni('SQL', 'FormatoData', '', 1)) <> 'DD/MM/YYYY' then
      begin
        dtLote := copy(dtLote, 7, 4) + '-' + copy(dtLote, 4, 2) + '-' + copy(dtLote, 1, 2);
        dtLoteIni := copy(dtLoteIni, 7, 4) + '-' + copy(dtLoteIni, 4, 2) + '-' + copy(dtLoteIni, 1, 2);
        dtLoteFim := copy(dtLoteFim, 7, 4) + '-' + copy(dtLoteFim, 4, 2) + '-' + copy(dtLoteFim, 1, 2);

      end;

      sql := 'INSERT INTO ContLote (idEmpresa, idLote, tpPlanoConta, dtLote , stLote, ' +
             'descLote, tpLote, dtLoteIni, dtLoteFin) '+
             ' VALUES(' + DBEidEmpresa.Text + ',' + IntToStr(idLote) + ', ' +
                                          QuotedStr(Trim(Copy(linha, 5, 1))) + ', ' +
                                          QuotedStr(dtLote) + ', ' +
                                          QuotedStr(Trim(Copy(linha,16,20))) + ', ' +
                                          QuotedStr(Trim(Copy(linha,36,50))) + ', ' +
                                          QuotedStr(Trim(Copy(linha,86,1))) + ', ' +
                                          QuotedStr(dtLoteIni) + ', ' +
                                          QuotedStr(dtLoteFim) + ')' ;
    end
    else
    begin
      if i >= 3 then
      begin

        dtLancamento := Trim(Copy(linha,16,10));

        //Variáveis para tratar o erro de data --se não for padrão brasileiro coloca como yyyy-mm-dd
        if UpperCase(funcao.ConfigIni('SQL', 'FormatoData', '', 1)) <> 'DD/MM/YYYY' then
        begin
          dtLancamento := copy(dtLancamento, 7, 4) + '-' + copy(dtLancamento, 4, 2) + '-' + copy(dtLancamento, 1, 2);
        end;

        sql := 'INSERT INTO ContLancamento ' +
               ' (idEmpresa, idLote, tpPlanoConta, idContLancamento, idContHistorico, dtContLancamento, cdPlanoContaDeb, cdPlanoContaCre, ' +
               ' vlContLancamento, obsContLancamento, stContLancamento, Online, idAgrupador) ' +
               ' VALUES(' + DBEidEmpresa.Text + ', ' +
                                         IntToStr(idLote) + ', ' + //lote
                                         QuotedStr(Trim(Copy(linha, 5, 1))) + ', ' + //tipo do plano de contas
                                         Trim(Copy(linha,6,6)) + ', ' +  //idcontlancamento
                                         Trim(Copy(linha,12,4)) + ', ' + //Historico
                                         QuotedStr(dtLancamento) + ', ' + //Data de Lançamento
                                         Trim(Copy(linha,26,4)) + ', ' + //Débito
                                         Trim(Copy(linha, 30, 4)) + ', ' + //Crédito
                                         funcao.TiraVirgula(Trim(Copy(linha, 34, 14))) + ', ' + //Crédito
                                         QuotedStr(Trim(Copy(linha, 48, 250))) + ', ' +
                                         QuotedStr(Trim(Copy(linha, 298, 20)))+ ', ' +
                                         QuotedStr(Trim(Copy(linha, 318, 1))) + ', ' +
                                         QuotedStr(Trim(Copy(linha, 319, 1))) + ')';
        //showmessage(sql);
      end;
    end;
    if ((trim(linha) <> '') AND ((i >= 3) or (i =1))) then
    begin
      cdsLookUp.Active := false;
      cdsLookUp.CommandText := sql;
      //ClipBoard.AsText := sql;
      cdsLookUp.Execute;
    end; //fim do if trim(linha) <> '' then
  end;  // fim do for i := 0 to arq.Count - 1 do
  arq.Free;

  if prog.Position = prog.Max then
     messagedlg('Os dados foram importados com sucesso !' + #13 +
                'Número do Lote: ' + IntToStr(idLote), mtInformation, [mbOk], 0);
                GravaLog('Importação de dados do Lote Contábil');
end;

procedure TFrmCadLote.BtnCancelarLancClick(Sender: TObject);
var
dia, mes , ano : word;
begin
// inherited;
  tabelas[1].Cancel;
  if cdsLancamento.FieldByName('dtContLancamento').AsString <> '' then
  begin
    DecodeDate(cdsLancamento.FieldByName('dtContLancamento').AsDateTime,ano,mes,dia);
    EDdtLancamento.text:= IntToStr(dia);
  end;
  BtnNovoLanc.SetFocus;
end;

procedure TFrmCadLote.BtnExcluir2Click(Sender: TObject);
var
  sql, id : string;
begin
  inherited;
  if messagedlg('Essa Operação é irreversivel, Tem certeza que deseja excluir!', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;
  if ((trim(cdsPadrao.FieldByName('stLote').AsString)) = ('ABERTO')) then
  begin
    sql := 'SELECT * FROM ContImporta WHERE idEmpresa = ' + cdsLancamento.FieldByName('idEmpresa').AsString +
           ' AND tpPlanoConta = ' + QuotedStr(cdsLancamento.FieldByName('tpPlanoConta').AsString) +
           ' AND idLote = ' + cdsLancamento.FieldByName('idLote').AsString +
           ' AND idContLancamento = ' + cdsLancamento.FieldByName('idContLancamento').AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if FieldByName('id').AsString <> '' then
      begin
        sql := 'INSERT INTO ContRemoveLanc VALUES( ' + cdsLancamento.FieldByName('idEmpresa').AsString + ', ' +
               cdsLancamento.FieldByName('idLote').AsString + ', ' + cdsLancamento.FieldByName('idContLancamento').AsString + ', ' +
               QuotedStr(cdsLancamento.FieldByName('tpPlanoConta').AsString) + ', ' +
               FieldByName('id').AsString + ', ' + QuotedStr(FieldByName('origem').AsString) + ')';
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
    end;
    sql := 'DELETE FROM ContImporta WHERE idEmpresa = ' + cdsLancamento.FieldByName('idEmpresa').AsString +
           ' AND tpPlanoConta = ' + QuotedStr(cdsLancamento.FieldByName('tpPlanoConta').AsString) +
           ' AND idLote = ' + cdsLancamento.FieldByName('idLote').AsString +
           ' AND idContLancamento = ' + cdsLancamento.FieldByName('idContLancamento').AsString;
    dmPadrao.dbConexao.ExecuteDirect(sql);
    sql := 'DELETE FROM ContLancamento WHERE idEmpresa = ' + cdsLancamento.FieldByName('idEmpresa').AsString +
           ' AND tpPlanoConta = ' + QuotedStr(cdsLancamento.FieldByName('tpPlanoConta').AsString) +
           ' AND idLote = ' + cdsLancamento.FieldByName('idLote').AsString +
           ' AND idContLancamento = ' + cdsLancamento.FieldByName('idContLancamento').AsString;
    dmPadrao.dbConexao.ExecuteDirect(sql);
    cdsLancamento.Refresh;
  end
  else
    messagedlg('O Lote precisa estar ABERTO para proceder a exclusão do lançamento!', mtwarning, [mbok], 0);
end;

procedure TFrmCadLote.BtnExcluirLancClick(Sender: TObject);
Var sql: String;
begin
//  inherited;
  if ((trim(cdsLancamento.FieldByName('stContLancamento').AsString)) = ('ABERTO')) then
    begin
      if messagedlg('Deseja cancelar o Lancamento selecionado?', mtconfirmation, [mbyes, mbno], 0) = mryes then
        begin
          //
          sql:= ' UPDATE ContLancamento SET stContLancamento = ' + QuotedStr('CANCELADO') +
                ' WHERE idEmpresa = ' + cdsLancamento.FieldByName('idEmpresa').AsString +
                ' AND tpPlanoConta = ' + QuotedStr(cdsLancamento.FieldByName('tpPlanoConta').AsString) +
                ' AND idLote = ' + cdsLancamento.FieldByName('idLote').AsString +
                ' AND idContLancamento = ' + cdsLancamento.FieldByName('idContLancamento').AsString;
          //
          cdsLookUp.Active:=false;
          cdsLookUp.CommandText:=sql;
          cdsLookUp.Execute;
          //
          {if not (cdsLancamento.State in [dsEdit, dsInsert]) then
            cdsLancamento.Edit;
            cdsLancamento.FieldByName('stContLancamento').AsString := 'CANCELADO';
            //cdsLancamento.Post;
            //cdsLancamento.ApplyUpdates(0);}
          //
          cdsLancamento.Refresh;
          //
        end;
    end
  else
    begin
      messagedlg('Para Cancelar o Lancamento é necessário que esteja Ativo!',mtInformation, [mbOk], 0);
      exit;
    end;
end;

procedure TFrmCadLote.BtnNovoLancClick(Sender: TObject);
begin
  inherited;
  EDdtLancamento.setfocus;
end;

procedure TFrmCadLote.BtnSalvarLancClick(Sender: TObject);
Var
vData: TDate;
vHistorico, vDeb, vCre: Integer;
vComplemento: String;
begin
   vDeb:=0;
   vCre:=0;
   vHistorico:=0;
   vComplemento:='';

   if cdsLancamento.FieldByName('dtContLancamento').AsString <> '' then
     vData:=cdsLancamento.FieldByName('dtContLancamento').AsDateTime;
   if cdsLancamento.FieldByName('cdPlanoContaDeb').AsString <> '' then
     vDeb:=cdsLancamento.FieldByName('cdPlanoContaDeb').AsInteger;
   if cdsLancamento.FieldByName('cdPlanoContaCre').AsString <> '' then
     vCre:=cdsLancamento.FieldByName('cdPlanoContaCre').AsInteger;
   if cdsLancamento.FieldByName('idContHistorico').AsString <> '' then
     vHistorico:=cdsLancamento.FieldByName('idContHistorico').AsInteger;
   if cdsLancamento.FieldByName('obsContLancamento').AsString <> '' then
     vComplemento:=cdsLancamento.FieldByName('obsContLancamento').AsString;

  inherited;
  //Tratamento de erros
  if cdsLancamento.state in [dsinsert,dsedit] then
    if (Trim(DBEcdPlanoContaDeb.text) = '') and (Trim(DBEcdPlanoContaCre.text) = '') then
    begin
      Application.MessageBox('Informações sobre o Plano Contábil são Necessárias!','Plano Contábil',MB_OK);
      DBEcdPlanoContaDeb.SetFocus;
    end
  else if Trim(DBMobsContLancamento.text) = '' then
    begin
      Application.MessageBox('Complemento é um campo obrigatório!','Complemento',MB_OK);
      DBMobsContLancamento.SetFocus;
      exit;
    end
  else if Trim(DBEvlLancamento.text) = '' then
    begin
      Application.MessageBox('Informe o Valor do Lançamento!','Valor',MB_OK);
      DBEvlLancamento.SetFocus;
      exit;
    end
  else if Trim(DBEidHistorico.text) = '' then
    begin
      Application.MessageBox('Informe o Histórico!','Histórico',MB_OK);
      DBEidHistorico.SetFocus;
      exit;
    end
  else if Trim(EDdtLancamento.text) = '' then
    begin
      Application.MessageBox('Informe o Dia!','Dia',MB_OK);
      EDdtLancamento.SetFocus;
      exit;
    end
  else if Trim(DBEcdPlanoContaDeb.text) = Trim(DBEcdPlanoContaCre.text)  then
    begin
      Application.MessageBox('As contas nao podem ser igual!','Contas',MB_OK);
      DBEcdPlanoContaDeb.SetFocus;
      exit;
    end//Fim do Tratamento de Erros
  else
    begin
      //
      if (cdsLancamento.FieldByName('stContLancamento').asString = 'CANCELADO') And
         (messagedlg('O lançamento está cancelado. Desejá torná-lo Aberto novamente ?', mtconfirmation, [mbyes, mbno], 0) = mryes) then
         cdsLancamento.FieldByName('stContLancamento').asString := 'ABERTO';
      //
      funcao.GravaSec(chave, cdsLancamento,  BtnSalvarLanc, BtnCancelarLanc, BtnExcluirLanc, BtnNovoLanc, (Sender as TCBitBtn), 'idContLancamento');
      dmPadrao.dbConexao.CloseDataSets;
      cdsLancamento.ApplyUpdates(0);
    end;
  //
  if not (cdsLancamento.State in [dsInsert,dsEdit]) then
    begin
      cdsLancamento.Append;
      EDdtLancamento.setfocus;
      if not CBdata.Checked then
        begin
          EDdtLancamento.text:='';
        end;
    end;

  cdsLancamento.FieldByName('tpPlanoConta').AsString:=cdsPadrao.FieldByName('tpPlanoConta').Value ;
  // Repete os dados ===========================================================
  if (CBData.checked) then
    cdsLancamento.FieldByName('dtContLancamento').AsDateTime := vData;
  if (CBDebito.checked) and (vDeb <> 0) then
    cdsLancamento.FieldByName('cdPlanoContaDeb').AsInteger:=vDeb;
  if (CBCredito.checked) and (vCre <> 0) then
    cdsLancamento.FieldByName('cdPlanoContaCre').AsInteger:=vCre;
  if (CBHistorico.checked) and (vHistorico <> 0) then
    cdsLancamento.FieldByName('idContHistorico').AsInteger:=vHistorico;
  if (CBComplemento.checked) and (vComplemento <> '') then
    cdsLancamento.FieldByName('obsContLancamento').AsString:=vComplemento;
  // ===========================================================================

  Calcular_Valores;
  //
end;

procedure TFrmCadLote.cdsLancamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idLote').Value := cdsPadrao.FieldByName('idLote').Value ;
  DataSet.FieldByName('tpPlanoConta').AsString:=cdsPadrao.FieldByName('tpPlanoConta').Value ;
  DataSet.FieldByName('stContLancamento').AsString := cdsPadrao.FieldByName('stLote').AsString;
  //
end;

procedure TFrmCadLote.cdsLancamentoAfterScroll(DataSet: TDataSet);
var
  dia,ano, mes: word;
begin
  inherited;
  //Mostrar a Data  do Lancamento
  if cdsLancamento.FieldByName('dtContLancamento').AsString <> '' then
  begin
    DecodeDate(cdsLancamento.FieldByName('dtContLancamento').AsDateTime,ano,mes,dia);
    EDdtLancamento.text:= IntToStr(dia);
  end
  else
    EDdtLancamento.text:= '';
end;

procedure TFrmCadLote.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  //
  inherited;
  //
  If Dataset.State in [dsInsert] then
    begin
      //
      cdsPadrao.FieldByName('tpLote').AsString := 'M';
      cdsPadrao.FieldByName('dtLote').Value:=date;
      cdsPadrao.FieldByName('integraLoteCaixa').AsString := 'N';
      Integra := 'S';
      //
      data:=date;
      //
    end;
end;

procedure TFrmCadLote.DBCKintegraLoteExit(Sender: TObject);
begin
  inherited;
  if DBCKintegraLote.Checked then
    Integra := 'N'
  else
    Integra := 'S';
end;

procedure TFrmCadLote.DBCBFClick(Sender: TObject);
begin
  inherited;
  if DBCBF.Checked then
    DBCBG.Checked:=false;
  EDtpPlanoContaCons.text:='F';
end;

procedure TFrmCadLote.DBCBGClick(Sender: TObject);
begin
  inherited;
  if DBCBG.Checked then
    DBCBF.Checked:=false;
  EDtpPlanoContaCons.text:='G';
end;

procedure TFrmCadLote.DBEcdPlanoContaCreChange(Sender: TObject);
begin
  inherited;
  if DBEcdPlanoContaCre.text = '0' then
  begin
    DBEcdPlanoContaCre.text:= '';
    LookdescPlanoContaCre.caption:='';
  end;
end;

procedure TFrmCadLote.DBEcdPlanoContaDebChange(Sender: TObject);
begin
  inherited;
  if DBEcdPlanoContaDeb.text = '0' then
  begin
    DBEcdPlanoContaDeb.text:= '';
    LookdescPlanoContaDeb.caption:='';
  end;
end;

procedure TFrmCadLote.DBEdtLoteExit(Sender: TObject);
begin
   if (BtnExcluir.Focused) then
    exit;
  if (BtnFechar.Focused) then
    exit;

  inherited;    
  if DBEdtLote.text <> '' then
  begin
    data:=StrToDate(DBEdtLote.text);
     if cdsPadrao.State in [dsEdit, dsInsert] then
     begin
       EDdtIniExit(EDdtIni);
       EDdtFimExit(EDdtFim);
     end;
  end;
end;

procedure TFrmCadLote.DBEidContLancamentoExit(Sender: TObject);
var
dia,ano, mes: word;
idLanc:String;
begin
  inherited;
  if DBEidContLancamento.Text <> '' then
  begin
    if BuscaChaveSec(cdsLancamento, [DBEidContLancamento]) then
    begin
      //Mostrar a Data  do Lancamento
      DecodeDate(cdsLancamento.FieldByName('dtContLancamento').AsDateTime,ano,mes,dia);
      EDdtLancamento.text:= IntToStr(dia);
    end
    else
    begin
        messagedlg('Código não encontrado!', mtInformation, [mbOk], 0);
        BtnCancelarLanc.Click;
    end;
  end;
end;


procedure TFrmCadLote.DBEidLoteConsbEnter(Sender: TObject);
begin
  inherited;
  if PagAbas.tabindex = 0 then
  begin
    if not ((DBCBF.checked) or (DBCBG.checked)) then
    begin
      messagedlg('Informe a Origem!', mtInformation, [mbOk], 0);
      DBCBF.setfocus;
      exit;
    end;
  end;
end;

procedure TFrmCadLote.DBEidLoteEnter(Sender: TObject);
begin
 inherited;
  if (DBRGtpPlanoConta.Value = '') then
  begin
    messagedlg('Informe a Origem!', mtInformation, [mbOk], 0);
    DBRGtpPlanoConta.SetFocus;
    exit;
  end
end;

procedure TFrmCadLote.DBEidLoteExit(Sender: TObject);
var
  dia, mes , ano : word;
begin
  inherited;
  if (BtnFechar.Focused) or (BtnExcluir.Focused) or (BtnCancelar.Focused) then
    exit;
  if DBRGtpPlanoConta.value = '' then
    exit;
  if Trim(DBEidLote.Text) <> '' then
  begin
    BuscaChave(cdsPadrao, chave);
    AbreTabSecundaria;
  end;

  if cdsPadrao.state in [dsInsert, dsEdit]  then
  begin
    cdsPadrao.FieldByName('stLote').AsString:='ABERTO';
    funcao.SomenteLeitura([DBEdtLote, EDdtIni, EDdtFim] , false);
    funcao.SomenteLeitura([DBCBstLote], true);
  end
  else
  begin
    funcao.SomenteLeitura([DBEdtLote, EDdtIni, EDdtFim] , true);
    funcao.SomenteLeitura([DBCBstLote], false);
  end;

  if cdsPadrao.FieldByName('stLote').AsString = ('ABERTO') then
    funcao.SomenteLeitura([DBEdtLote, EDdtIni, EDdtFim] , false);

  //Mostrar o Periodo-------------------------------------------------------------
  if cdsPadrao.FieldByName('dtLoteIni').AsString <> '' then
  begin
    DecodeDate(cdsPadrao.FieldByName('dtLoteIni').AsDateTime,ano,mes,dia);
    EDdtIni.text:= IntToStr(dia);
  end;

  if cdsPadrao.FieldByName('dtLoteFin').AsString <> '' then
  begin
    DecodeDate(cdsPadrao.FieldByName('dtLoteFin').AsDateTime,ano,mes,dia);
    EDdtFim.text:= IntToStr(dia);
  end;
//------------------------------------------------------------------------------
end;


procedure TFrmCadLote.DBEidLoteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if Key = VK_F4 then
      begin
        if DBRGtpPlanoConta.Value = '' then
            Application.MessageBox('Informe a Origem.','Origem',MB_OK)
         else
//          DBEidlote.find:=FindLote;
      end;
end;

procedure TFrmCadLote.DBGLancamentoDblClick(Sender: TObject);
var
 dia,ano, mes: word;
begin
  inherited;
  if not cdsLoteCons.IsEmpty then
  begin
    //Buscar o Lote Selecionado
    if (cdsPadrao.fieldByName('idLote' ).AsString) <> (cdsLoteCons.FieldByName('idLote').AsString)  then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      if DBCBF.Checked then
        cdsPadrao.FieldByName('tpPlanoConta').AsString := 'F';
      if DBCBG.Checked then
        cdsPadrao.FieldByName('tpPlanoConta').AsString := 'G';
      cdsPadrao.FieldByName('idLote').AsInteger := cdsLoteCons.FieldByName('idLote').AsInteger;
      DBEidLoteExit(DBEidLote);
    end;
    if not (cdsLancamento.Active) then
      cdsLancamento.Open;
    if not (cdsLancamento.State in [dsInsert, dsEdit]) then
      cdsLancamento.Edit;
    cdsLancamento.FieldByName('idContLancamento').AsInteger := cdsLoteCons.FieldByName('idContLancamento').AsInteger;
    DBEidContLancamentoExit(DBEidContLancamento);
    PagAbas.ActivePageIndex := 1;
    PagAbasChange(PagAbas);
  end;
end;

procedure TFrmCadLote.DBRGOrigemChange(Sender: TObject);
begin
  inherited;
  EDtpPlanoConta.text:=DBRGtpPlanoConta.value;
end;

procedure TFrmCadLote.DBRGtpLoteChange(Sender: TObject);
begin
  inherited;
  if (DBRGtpLote.value = 'M') And
     (cdsPadrao.State in dsEditModes) then
  begin
    EDdtIni.text:='';
    EDdtFim.text:='';
  end;
end;

procedure TFrmCadLote.DBRGtpPlanoContaChange(Sender: TObject);
begin
 inherited;
 EDtpPlanoConta.text:=DBRGtpPlanoConta.Value;
end;

procedure TFrmCadLote.dsLancamentoStateChange(Sender: TObject);
begin
  inherited;
  Calcular_Valores;
  {with (FrmPrincipal.ExecutaSQLRet([DBEidEmpresa,DBEidLote,EDtpPlanoConta],'spRetContSaldoLote',''))do
    begin
      EDTotalDeb.text := FieldByName('vlDebito').AsString;
      EDTotalCred.text := FieldByName('vlCredito').AsString;
      EDSaldo.Text := FieldByName('vlSaldo').AsString;
    end;}
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarLanc, BtnCancelarLanc, BtnExcluirLanc, BtnNovoLanc);
end;

procedure TFrmCadLote.dspLancamentoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  If (UpdateKind = ukInsert) Then
     GeraAutoInc(DeltaDS, 'ContLancamento', 'idContLancamento', chave);
end;

procedure TFrmCadLote.EDdtFimExit(Sender: TObject);
var
 dia,diaf ,ano, mes: word;
begin
  inherited;
  if (trim(EDdtFim.Text) <> '') then
    begin
      if not(cdsPadrao.State in [dsInsert, dsEdit]) then
        cdsPadrao.Edit;

      diaf := funcao.UltDiaDoMes(cdsPadrao.FieldByName('dtLote').asDateTime);
      DecodeDate(cdsPadrao.FieldByName('dtLote').asDateTime,ano,mes,dia);
      dia := StrToInt(EDdtFim.Text);
      if dia <= diaf then
      begin
        cdsPadrao.FieldByName('dtLoteFin').AsString := DateToStr(EncodeDate(ano,mes,dia));
      end
      else
      begin
        EDdtFim.Text := inttostr(diaf);
        cdsPadrao.FieldByName('dtLoteFin').AsString := DateToStr(EncodeDate(ano,mes,diaf));
      end;
    end;
end;

procedure TFrmCadLote.EDdtIniExit(Sender: TObject);
var
 dia, ano, mes: word;
begin
  inherited;
  if (Trim(EDdtIni.Text) <> '') then
    begin
      if not(cdsPadrao.State in [dsInsert, dsEdit]) then
        cdsPadrao.Edit;
      begin
        DecodeDate(cdsPadrao.FieldByName('dtLote').asDateTime,ano,mes,dia);
        dia := StrToInt(EDdtIni.Text);
        cdsPadrao.FieldByName('dtLoteIni').AsString := DateToStr(EncodeDate(ano,mes,dia));
      end;
    end;
end;

procedure TFrmCadLote.EDdtLancamentoExit(Sender: TObject);
var
 dia,diai, diaf,ano, mes: word;
begin
//  inherited;
  if (trim(EDdtLancamento.Text) <> '') then
    begin
      if not (cdsLancamento.Active) then
        cdsLancamento.Open;
      if not(cdsLancamento.State in [dsInsert, dsEdit]) then
        cdsLancamento.Edit;

      DecodeDate(cdsPadrao.FieldByName('dtLoteIni').AsDateTime,ano,mes,dia);
      diai:=dia;

      DecodeDate(cdsPadrao.FieldByName('dtLoteFin').AsDateTime,ano,mes,dia);
      diaf := dia;

      dia := StrToInt(EDdtLancamento.Text);

      if (dia >= diai) and (dia <= diaf)  then
        cdsLancamento.FieldByName('dtContLancamento').asDateTime := EncodeDate(ano,mes,dia)
      else
        begin
         messagedlg('Dia informado fora do periodo do lote.', mtInformation, [mbOk], 0);
         EDdtLancamento.text:='';
         EDdtLancamento.setfocus;
        end;
    end;
end;

procedure TFrmCadLote.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i : integer;
begin
//  inherited;
  Tabelas[0].Cancel;
  for i := 0 to Formulario.ComponentCount - 1 do
    if (Formulario.Components[i] is TClientDataSet) then
      begin
        (Formulario.Components[i] as TClientDataSet).Close;
        dmPadrao.dbConexao.CloseDataSets;
      end;
  Action := caFree;
  sqlpadrao.Free;
  frmCadLote:= nil;
end;

procedure TFrmCadLote.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsLancamento;

  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidLote;
  chave[2] := DBRGtpPlanoConta;

  tab_chave := 'ContLote';

  //Height := 311;
  //Width := 500;
  FrmCadLote.Height := 501;
  FrmCadLote.Width := 621;

  lookidCnpjCpf.Visible := false;

  EdCaminho.Text := ExtractFilePath(Application.ExeName);
  AbrePasta.Path := ExtractFilePath(Application.ExeName);
  //
  DBCBstLote.Items.Clear;
  DBCBstLote.Items.Add('ABERTO');
  DBCBstLote.Items.Add('FECHADO');
  //
  cdsCons.CreateDataSet;
  //
end;

procedure TFrmCadLote.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actLanLote';
  inherited;
  BtnNovo.setfocus;

  BtnExcluir2.Visible := excluir;
end;

procedure TFrmCadLote.PagAbasChange(Sender: TObject);
var
  dia, mes , ano : word;
  sql : string;
begin
  //  inherited;
  if PagAbas.tabindex = 0 then
  begin
    //FrmCadLote.Height := 311;
    //FrmCadLote.Width := 500;
    lookidCnpjCpf.Visible := false;
  end
  else
    if PagAbas.tabindex = 1 then
    begin
      if cdspadrao.state in [dsinsert] then
      Begin
        messagedlg('Finalize o cadastro do Lote!', mtwarning, [mbok], 0);
        //FrmCadLote.Height := 311;
        //FrmCadLote.Width := 500;
        PagAbas.tabindex:= 0;
        DBEidLote.setFocus;
        exit;
      end
      else
        if (Trim(DBEidLote.text) = '') then
        begin
          messagedlg('Selecione ou Cadastre um Lote!', mtwarning, [mbok], 0);
          //FrmCadLote.Height := 311;
          //FrmCadLote.Width := 500;
          PagAbas.tabindex:= 0;
          if BtnNovo.Enabled then
            BtnNovo.setFocus;
          exit;
        end;
        //Se passou faço o redimensionamento da tela
        //FrmCadLote.Height := 402;
        //FrmCadLote.Width := 609;
        lookidCnpjCpf.Visible := true;
        Calcular_Valores;
        {with (FrmPrincipal.ExecutaSQLRet([DBEidEmpresa,DBEidLote,EDtpPlanoConta],'spRetContSaldoLote',''))do
        begin
          EDTotalDeb.Text := formatcurr('0.00',FieldByName('vlDebito').AsFloat);
          EDTotalCred.Text := formatcurr('0.00',FieldByName('vlCredito').AsFloat);
          EDSaldo.Text := formatcurr('0.00',FieldByName('vlSaldo').AsFloat);
        end;}

        //Deixar a Aba somente para visualização==================================
        if (cdspadrao.FieldByName('stLote').AsString = 'FECHADO') or (cdspadrao.FieldByName('tpLote').AsString = 'O') then
        begin
          CGBDados.Enabled:=false;
          CGBRepetir.Enabled:=false;
          CGBComplemento.Enabled:=false;
          CGBBotoes.Enabled:=false;
        end
        else
          begin
            CGBDados.Enabled:=True;
            CGBRepetir.Enabled:=True;
            CGBComplemento.Enabled:=True;
            CGBBotoes.Enabled:=True;
          end;
        //=====================================================================
        if cdsLancamento.State in [dsInsert,dsEdit] then
          cdsLancamento.Cancel;
        if (btnNovoLanc.Enabled) and (CGBBotoes.Enabled = True) then
          BtnNovoLanc.setfocus;
    end //fim do if PagAbas.tabindex = 1 then
    else
      if PagAbas.tabindex = 2 then
      begin
        //
        //FrmCadLote.Height := 501;
        //FrmCadLote.Width := 596;
        lookidCnpjCpf.Visible := true;
        //
        If (cdsLoteCons.Active) Then
           Begin
             //
             cdsLoteCons.Refresh;
             DBGLancamento.SetFocus;
             //
           End
        Else
           EDdiaInicial.setfocus;
        //
        if DBRGtpPlanoConta.value <> '' then
        begin
          if DBRGtpPlanoConta.Value = 'G' then
          begin
            EDtpPlanoContaCons.text:='G';
            DBCBG.Checked:=true;
          end;
          if DBRGtpPlanoConta.Value = 'F' then
          begin
            EDtpPlanoContaCons.text:='F';
            DBCBF.Checked:=true;
          end;
        end
        else
          DBCBF.Checked:=true;

        if DBEidLote.text <> '' then
           DBEidLoteCons.text:=DBEidLote.text;
      end //fim página 2
      else
        if PagAbas.tabindex = 3 then
        begin
          sql := 'SELECT * FROM ConfigContabil WHERE idCadGeral = ' + cdsPadrao.FieldByName('idEmpresa').AsString;
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          begin
            idEmpExp := FieldByName('idEmpresaExt').AsString;
            if ((cdsPadrao.FieldByName('integraLoteCaixa').AsString = 'S') AND (FieldByName('ExpContabil').AsString = 'PADRÂO 2')) then
            begin
              LblEmpDest.Visible := True;
              EdtidEmpresaDest.Visible := True;
              EdtidEmpresaDest.Text := FieldByName('idEmpresaExt').AsString;

              idFilialExp := FieldByName('idCadEmpresaExt').AsString;
            end;
          end;
        end;
  //
  BtnSalvar.Visible    := PagAbas.ActivePageIndex = 0;
  BtnCancelar.Visible  := PagAbas.ActivePageIndex = 0;
  BtnExcluir.Visible   := PagAbas.ActivePageIndex = 0;
  BtnNovo.Visible      := PagAbas.ActivePageIndex = 0;
  BtnPesquisar.Visible := PagAbas.ActivePageIndex = 0;
  //
end;

procedure TFrmCadLote.rbDiaClick(Sender: TObject);
begin
  //
  Calcular_Valores;
  //
end;

function TFrmCadLote.RetData(data: TDateTime): string;
var
  datafinal : string;
  di, mi, ai : Word;
  diai,mesi,anoi : string;
begin
  DecodeDate(data,ai, mi,di);
  diai := IntToStr(di);
  mesi := IntToStr(mi);

  if ((Length(diai)) < 2 ) then
    diai := '0' + diai;

  if ((Length(mesi)) < 2) then
    mesi := '0' + mesi;

  anoi := IntToStr(ai);
  datafinal := Format('%s/%s/%s',[diai, mesi, anoi]);

  Result := datafinal;
end;

end.
