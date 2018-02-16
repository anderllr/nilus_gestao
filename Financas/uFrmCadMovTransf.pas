unit uFrmCadMovTransf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, DB, SqlExpr, CFind, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, Grids, DBGrids,
  CDBGrid, CDBMemo, CGroupBox, CDBCheckBox, DBXCommon, CCheckBox, ACBrBase,
  ACBrExtenso, frxClass, frxDBSet, DateUtils, System.Actions, frxDMPClass,
  System.ImageList;

type
  TFrmCadMovTransf = class(TFrmCadPadraoEmpFiscal)
    sdsResultado: TSQLDataSet;
    CGroupBox7: TCGroupBox;
    FindCaixa: TCFind;
    CLabel8: TCLabel;
    DBEidCaixaOri: TCDBEdit;
    LookCaixa: TCLookUp;
    CBitBtn1: TCBitBtn;
    FindConta: TCFind;
    CLabel1: TCLabel;
    DBEidContaOri: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CBitBtn2: TCBitBtn;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEidCaixaDes: TCDBEdit;
    CLookUp1: TCLookUp;
    CBitBtn3: TCBitBtn;
    DBEidContaDes: TCDBEdit;
    CLookUp2: TCLookUp;
    CLookUp3: TCLookUp;
    CLookUp4: TCLookUp;
    CBitBtn4: TCBitBtn;
    CGroupBox2: TCGroupBox;
    DBEdtMovTransf: TCDBEdit;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEvlMovTransf: TCDBEdit;
    CLabel7: TCLabel;
    DBEdescMovTransf: TCDBEdit;
    CLabel9: TCLabel;
    DBEidMovTransf: TCDBEdit;
    CGroupBox3: TCGroupBox;
    BtnImpChq: TCBitBtn;
    CKCruzado: TCCheckBox;
    CKPreDatado: TCCheckBox;
    CLabel2: TCLabel;
    DBEdtCompensacao: TCDBEdit;
    CLabel10: TCLabel;
    DBEidCheque: TCDBEdit;
    CLabel11: TCLabel;
    DBEdtVencimento: TCDBEdit;
    Report: TfrxReport;
    rptCheque: TfrxDBDataset;
    Extenso: TACBrExtenso;
    cdsPadraovlMovConta: TCurrencyField;
    cdsPadraoidMovTransf: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCaixaOri: TIntegerField;
    cdsPadraoidCaixaDes: TIntegerField;
    cdsPadraoidContaOri: TIntegerField;
    cdsPadraoidContaDes: TIntegerField;
    cdsPadraovlMovTransf: TFMTBCDField;
    cdsPadraodtMovTransf: TSQLTimeStampField;
    cdsPadraodescMovTransf: TStringField;
    cdsPadraonrMovTransf: TStringField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidCheque: TStringField;
    cdsPadraodtVencimento: TSQLTimeStampField;
    cdsPadraodtCompensacao: TSQLTimeStampField;
    CGBRepetir: TCGroupBox;
    CBData: TCheckBox;
    CBDebidCaixa: TCheckBox;
    CBCreidConta: TCheckBox;
    CBHistorico: TCheckBox;
    CBDebidConta: TCheckBox;
    CBCreidCaixa: TCheckBox;
    BtnCopiaCheque: TCBitBtn;
    BtnSlipTransf: TCBitBtn;
    chkCheque: TCCheckBox;
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidMovTransfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEidMovTransfExit(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure dspPadraoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DBEidCaixaOriExit(Sender: TObject);
{    procedure DBEidResultadoExit(Sender: TObject); }
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure HabilitaEdits;
    procedure DBEdtMovTransfExit(Sender: TObject);
    procedure BtnImpChqClick(Sender: TObject);
    procedure HabilitaImpCheque(op: boolean);
    procedure cdsPadraoCalcFields(DataSet: TDataSet);
    procedure BtnCopiaChequeClick(Sender: TObject);
    procedure BtnSlipTransfClick(Sender: TObject);
    procedure ExcluiLancamento;
    procedure DBEidCaixaOriEnter(Sender: TObject);
    procedure chkChequeExit(Sender: TObject);
    procedure HabilitaGeraCheque;
    procedure chkChequeClick(Sender: TObject);
  private
    { Private declarations }
    leitura : boolean;
  public
    { Public declarations }
    vlAnterior : string;
    vHistorico : string;
    vData: TDate;
    vDebidConta, vDebidCaixa, vCreidConta, vCreidCaixa : Integer;
  end;

var
  FrmCadMovTransf: TFrmCadMovTransf;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao, uFrmPadrao,
  uFrmPesMovTransf;

{$R *.dfm}

procedure TFrmCadMovTransf.actExcluirExecute(Sender: TObject);
begin
  if messagedlg('Deseja realmente excluir a Transferência selecionada!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    dmPadrao.dbConexao.CloseDataSets;
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidMovTransf], 'spExcluiMovTransf') then
      btnNovo.Click;
  end;
end;

procedure TFrmCadMovTransf.actFecharExecute(Sender: TObject);
begin
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if (trim(DBEdtMovTransf.Text) = '') and (trim(DBEvlMovTransf.Text) = '') and (trim(DBEdescMovTransf.Text) = '') then
      cdsPadrao.Cancel;

  inherited;
end;

procedure TFrmCadMovTransf.actNovoExecute(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEidCaixaOri],false);
  funcao.SomenteLeitura([DBEidCaixaDes],false);
  funcao.SomenteLeitura([DBEidContaOri],false);
  funcao.SomenteLeitura([DBEidContaDes],false);
  funcao.SomenteLeitura([DBEdtMovTransf], false);
  funcao.SomenteLeitura([DBEvlMovTransf],false);
  funcao.SomenteLeitura([DBEdescMovTransf],false);
  HabilitaImpCheque(false);
   // Repete os dados ===========================================================
  if (CBData.checked) then
    cdsPadrao.FieldByName('dtMovTransf').AsDateTime := vData;
  if (CBDebidCaixa.checked) and (vDebidCaixa <> 0) then
    cdsPadrao.FieldByName('idCaixaOri').AsInteger := vDebidCaixa;
  if (CBDebidConta.checked) and (vDebidConta <> 0) then
    cdsPadrao.FieldByName('idContaOri').AsInteger := vDebidConta;
  if (CBCreidCaixa.checked) and (vCreidCaixa <> 0) then
    cdsPadrao.FieldByName('idCaixaDes').AsInteger := vCreidCaixa;
  if (CBCreidConta.checked) and (vCreidConta <> 0) then
    cdsPadrao.FieldByName('idContaDes').AsInteger := vCreidConta;
  if (CBHistorico.checked) and (vHistorico <> '') then
    cdsPadrao.FieldByName('descMovTransf').AsString := vHistorico;
  // ===========================================================================
end;

procedure TFrmCadMovTransf.actPesquisarExecute(Sender: TObject);
begin
  inherited;
//  cdsPadrao.edit;
  funcao.AbreFrm(TFrmPesqMovTransf,TForm(FrmPesqMovTransf));
end;

procedure TFrmCadMovTransf.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  erro : byte;
  sql : string;
begin
  vDebidConta := 0;
  vDebidCaixa := 0;
  vCreidConta := 0;
  vCreidCaixa := 0;
  vHistorico := '';

  if cdsPadrao.FieldByName('dtMovTransf').AsString <> '' then
    vData := cdsPadrao.FieldByName('dtMovTransf').AsDateTime;
  if cdsPadrao.FieldByName('idContaOri').AsString <> '' then
    vDebidConta := cdsPadrao.FieldByName('idContaOri').AsInteger;
  if cdsPadrao.FieldByName('idCaixaOri').AsString <> '' then
    vDebidCaixa := cdsPadrao.FieldByName('idCaixaOri').AsInteger;
  if cdsPadrao.FieldByName('idContaDes').AsString <> '' then
    vCreidConta := cdsPadrao.FieldByName('idContaDes').AsInteger;
  if cdsPadrao.FieldByName('idCaixaDes').AsString <> '' then
    vCreidCaixa := cdsPadrao.FieldByName('idCaixaDes').AsInteger;
  if cdsPadrao.FieldByName('descMovTransf').AsString <> '' then
    vHistorico := cdsPadrao.FieldByName('descMovTransf').AsString;


  if ((trim(DBEidCaixaOri.Text) = '') and (trim(DBEidContaOri.Text) =  '')) then
  begin
    MessageDlg('Você deve informar um Caixa/Conta de Origem!', mtWarning, [mbOk], 0);
    exit;
  end;

  if ((trim(DBEidCaixaDes.Text) = '') and (trim(DBEidContaDes.Text) =  '')) then
  begin
    MessageDlg('Você deve informar um Caixa/Conta de Destino!', mtWarning, [mbOk], 0);
    exit;
  end;

  if ((trim(DBEidContaOri.Text)) = (trim(DBEidContaDes.Text))) and  ((trim(DBEidCaixaOri.Text)) = (trim(DBEidCaixaDes.Text))) then
  begin
    MessageDlg('A Conta/Caixa de Origem não pode ser a mesma Conta/Caixa de destino !', mtWarning, [mbOk], 0);
    exit;
  end;

  //Gera o número do titulo caso não tenha sido digitado e esteja inserindo
{  nrMovTransf := DBEnrMovTransf.Text;
  if (cdsPadrao.State in [dsInsert]) and (trim(DBEnrMovTransf.Text) = '') then
  begin
    with cdsLookUp do
    begin
      Active := False;
      CommandText := 'SELECT MAX(nrMovTransf + 1) nrMovTransf FROM MovTransf WHERE ISNUMERIC(nrMovTransf) > 0 AND idEmpresa = ' + quotedstr(DBEidEmpresa.Text);
      Active := True;
      if (FieldByName('nrMovTransf').IsNull) or (FieldByName('nrMovTransf').value = 0) then
         cdsPadrao.FieldByName('nrMovTransf').Value := 1
      else
         cdsPadrao.FieldByName('nrMovTransf').Value := FieldByName('nrMovTransf').value;
      Active := False;
    end; //fim do with cdsLookUp do
  end; //fim do   if (cdsPadrao.State in [dsInsert]) and (trim(DBEnrMovTransf.Text) = '') then }
  //********************************************************************************//
  // Inicia o controle de transação
  erro := 0;
  //marca a transação

  if cdsPadrao.State = dsEdit then
  begin
    ExcluiLancamento;
  end;
  screen.Cursor := crSQLWait;
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    GravaChave(1, '', nil);
    inherited;
    if not (funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidMovTransf], 'spMovTransf')) then
      erro := 1;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t)
    //actNovo.Execute;
  end
  else
  begin
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  end;
  if cdsPadrao.FieldByName('idCheque').AsString <> '' then
  begin
    sql := 'UPDATE Conta SET ultidCheque = ' + cdsPadrao.FieldByName('idCheque').AsString +
           ' WHERE idConta = ' + cdsPadrao.FieldByName('idContaOri').AsString +
           ' AND geradoSeq = ' + QuotedStr('S');
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
  HabilitaImpCheque(trim(DBEidCheque.Text) <> '');
end;

procedure TFrmCadMovTransf.BtnCopiaChequeClick(Sender: TObject);
var
  arqRel : string;
begin
  inherited;
  Report.DataSet := rptCheque;
  arqRel := dmPadrao.RetornaConfig('caminho_rel') + Format('RelCopia_%d.fr3', [cdsPadrao.FieldByName('idContaOri').AsInteger]);
  If Not(FileExists(arqRel)) Then
  Begin
    messagedlg('O arquivo de cópia do cheque ainda não foi configurado. Verifique!', mtwarning, [mbok], 0);
    exit;
  End;
  //
//  sql := 'select g.idCadGeral, a.idCidade, rtrim(c.descCidade) + ''-'' + c.idEstado nome_cidade from cadgeral g inner join cadadicional a on (a.idcadgeral = g.idcadgeral) inner join cidade c on (c.idCidade = a.idCidade) where g.idcadgeral = ' + DBEidEmpresa.Text;
  //
  Extenso.Valor := cdsPadraovlMovConta.AsCurrency;
  //
  Report.LoadFromFile(arqRel);
  //
  TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text   := StringReplace(TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text, '[extenso-monetario]', UpperCase(Extenso.Texto), [rfReplaceAll, rfIgnoreCase]);
  TfrxMemoView(Report.FindComponent('Line1')).Visible          := CKCruzado.Checked;
  TfrxMemoView(Report.FindComponent('Line2')).Visible          := CKCruzado.Checked;
//  TfrxMemoView(Report.FindComponent('lblNominal')).Memo.Text   := Trim(LookCliente.Caption);
//  TfrxMemoView(Report.FindComponent('lblNominal')).Visible     := CKNominal.Checked;
  TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text := StringReplace(TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text, '[data]', FormatDateTime('dd/MM/yyyy', cdsPadraodtVencimento.AsDateTime), [rfReplaceAll, rfIgnoreCase]);
  TfrxMemoView(Report.FindComponent('lblPredatado')).Visible   := CKPredatado.Checked;
  //
  TfrxMemoView(Report.FindComponent('lblLocal')).Memo.Text     := FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1').FieldByName('descCidade').asString;
  TfrxMemoView(Report.FindComponent('lblDia')).Memo.Text       := funcao.StrZero(DayOf(Date()), 2);
  TfrxMemoView(Report.FindComponent('lblMes')).Memo.Text       := funcao.CDoW(Date(), exdMes);
  TfrxMemoView(Report.FindComponent('lblAno')).Memo.Text       := IntToStr(YearOf(Date()));
  //

  //dados da cópia de cheque
  TfrxMemoView(Report.FindComponent('lblnrCheque')).Memo.Text  := DBEidCheque.Text;

  if CKCruzado.Checked then
    TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Text  := 'X'
  else
    TfrxMemoView(Report.FindComponent('lblCruzadoC')).Memo.Clear;

  TfrxMemoView(Report.FindComponent('lblBancoConta')).Memo.Text  := 'Ag.:' + trim(LookAgencia.Caption) + ' - ' +
        'C/C.: ' + trim(LookContaCorrente.Caption) + ' - ' + trim(LookdescConta.Caption);
  TfrxMemoView(Report.FindComponent('lblHistorico')).Memo.Text  := trim(DBEdescMovTransf.Text);

  Report.ShowReport;
end;

procedure TFrmCadMovTransf.BtnImpChqClick(Sender: TObject);
var
  arqRel, sql : string;
begin
  inherited;
  arqRel := dmPadrao.RetornaConfig('caminho_rel') + Format('RelCheque_%d.fr3', [cdsPadrao.FieldByName('idContaOri').AsInteger]);
  If Not(FileExists(arqRel)) Then
  Begin
    messagedlg('O arquivo de emissão do cheque ainda não foi configurado. Verifique!', mtwarning, [mbok], 0);
    exit;
  End;
  //

  Extenso.Valor := cdsPadrao.FieldByName('vlMovTransf').AsCurrency;
  //
  Report.LoadFromFile(arqRel);
  //
  TfrxDMPMemoView(Report.FindComponent('lblExtenso')).Memo.Text   := StringReplace(TfrxMemoView(Report.FindComponent('lblExtenso')).Memo.Text, '[extenso-monetario]', UpperCase(Extenso.Texto), [rfReplaceAll, rfIgnoreCase]);
//  TfrxDMPMemoView(Report.FindComponent('Line1')).Visible          := CKCruzado.Checked;
//  TfrxDMPMemoView(Report.FindComponent('Line2')).Visible          := CKCruzado.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Memo.Text   := Trim(LookdescCadEmpresa.Caption);
  TfrxDMPMemoView(Report.FindComponent('lblNominal')).Visible     := False;
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Memo.Text := StringReplace(TfrxMemoView(Report.FindComponent('lblPredatado')).Memo.Text, '[data]', FormatDateTime('dd/MM/yyyy', cdsPadrao.FieldByName('dtVencimento').AsDateTime), [rfReplaceAll, rfIgnoreCase]);
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Visible   := CKPredatado.Checked;
  //
  TfrxDMPMemoView(Report.FindComponent('lblLocal')).Memo.Text     := FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1').FieldByName('descCidade').asString;
  TfrxDMPMemoView(Report.FindComponent('lblDia')).Memo.Text       := funcao.StrZero(DayOf(Date()), 2);
  TfrxDMPMemoView(Report.FindComponent('lblMes')).Memo.Text       := funcao.CDoW(Date(), exdMes);
  TfrxDMPMemoView(Report.FindComponent('lblAno')).Memo.Text       := IntToStr(YearOf(Date()));
  //
  Report.ShowReport;

  //Marca a impressão do cheque -- feito via script para não causar problemas no dataset
  sql := 'SELECT * FROM MovTransfRelac WHERE idMovTransf = ' + cdsPadraoidMovTransf.AsString;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    sql := 'UPDATE MovConta SET impresso = ' + QuotedStr('S') + ' WHERE idMovConta = ' + FieldByName('idMovContaOri').AsString;
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
end;

procedure TFrmCadMovTransf.BtnSlipTransfClick(Sender: TObject);
var
  arqRel : string;
begin
  inherited;
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  arqRel :=  frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString + 'RelSlipTranfs.fr3';
  If Not(FileExists(arqRel)) Then
  Begin
    messagedlg('O arquivo de emissão do slip ainda não foi configurado. Verifique!', mtwarning, [mbok], 0);
    exit;
  End;
  Extenso.Valor := cdsPadrao.FieldByName('vlMovTransf').AsCurrency;
  Report.LoadFromFile(arqRel);
  TfrxMemoView(Report.FindComponent('MCaixaOri')).Memo.Text   := Trim(LookCaixa.Caption);
  TfrxMemoView(Report.FindComponent('MBancoOri')).Memo.Text   := Trim(LookAgencia.Caption);
  TfrxMemoView(Report.FindComponent('MBancoOri2')).Memo.Text   := Trim(LookContaCorrente.Caption);
  TfrxMemoView(Report.FindComponent('MBancoOri3')).Memo.Text   := Trim(LookdescConta.Caption);
  //
  TfrxMemoView(Report.FindComponent('MCaixaDest')).Memo.Text   := Trim(CLookUp1.Caption);
  TfrxMemoView(Report.FindComponent('MBancoDest')).Memo.Text   := Trim(CLookUp2.Caption);
  TfrxMemoView(Report.FindComponent('MBancoDest2')).Memo.Text   := Trim(CLookUp3.Caption);
  TfrxMemoView(Report.FindComponent('MBancoDest3')).Memo.Text   := Trim(CLookUp4.Caption);
  TfrxMemoView(Report.FindComponent('Memo14')).Memo.Text   := dmPadrao.cdsEmpresaContabil.FieldByName('descCidade').AsString + ' ' + Trim(DBEdtMovTransf.Text);
  //
  Report.ShowReport;
end;

procedure TFrmCadMovTransf.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;    
  end;
end;

procedure TFrmCadMovTransf.cdsPadraoCalcFields(DataSet: TDataSet);
begin
  inherited;
  //rotina criada em razão da impressão do cheque
  cdsPadraovlMovConta.AsCurrency := cdsPadraovlMovTransf.AsCurrency;
end;

procedure TFrmCadMovTransf.chkChequeClick(Sender: TObject);
begin
  inherited;
  if chkCheque.Checked then
    HabilitaImpCheque(trim(DBEidCheque.Text) <> '');
end;

procedure TFrmCadMovTransf.chkChequeExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (chkCheque.Checked) and (cdsPadrao.State in [dsInsert]) then
  begin
    if cdsPadrao.FieldByName('idContaOri').AsInteger > 0 then
    begin
      sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsPadrao.FieldByName('idContaOri').AsString;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if Trim(FieldByName('geradoSeq').AsString) = 'S' then
        begin
          funcao.SomenteLeitura([DBEdtVencimento], False);
          funcao.SomenteLeitura([DBEidCheque], True);
          sql := 'SELECT * FROM Conta WHERE idConta = ' + cdsPadrao.FieldByName('idContaOri').AsString;
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          begin
            cdsPadrao.FieldByName('idCheque').AsInteger := FieldByName('ultidCheque').AsInteger+1;
          end;
        end
        else
        begin
          funcao.SomenteLeitura([DBEidCheque], False);
        end;
      end;
    end;
  end;
end;

procedure TFrmCadMovTransf.DBEdtMovTransfExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State = dsEdit then
    cdsPadrao.Post;
end;

procedure TFrmCadMovTransf.DBEidCaixaOriEnter(Sender: TObject);
begin
  inherited;
    vlAnterior := DBEidCaixaOri.Text;
end;

procedure TFrmCadMovTransf.DBEidCaixaOriExit(Sender: TObject);
begin
  inherited;
//  if leitura = false then
  if vlAnterior <> DBEidCaixaOri.Text then
    HabilitaEdits;
end;

{procedure TFrmCadMovTransf.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
end;                           }

procedure TFrmCadMovTransf.DBEidMovTransfExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], [DBEidEmpresa, DBEidCadEmpresa, DBEidMovTransf]);

  if cdsPadrao.State = dsInsert then
    leitura := false
  else
  begin
    leitura := true;
    if cdsPadrao.State = dsEdit then
      cdsPadrao.Post;
  end;

//  funcao.SomenteLeitura([DBEidCaixaOri, DBEidCaixaDes, DBEidContaOri, DBEidContaDes,
//                         DBEdtMovTransf, DBEvlMovTransf, DBEdescMovTransf, DBEdtCompensacao,
//                         DBEidCheque, DBEdtVencimento],leitura);
//  HabilitaImpCheque(trim(DBEidCheque.Text) <> '');
  // Repete os dados ===========================================================
  if (CBData.checked) then
    cdsPadrao.FieldByName('dtMovTransf').AsDateTime := vData;
  if (CBDebidCaixa.checked) and (vDebidCaixa <> 0) then
    cdsPadrao.FieldByName('idCaixaOri').AsInteger := vDebidCaixa;
  if (CBDebidConta.checked) and (vDebidConta <> 0) then
    cdsPadrao.FieldByName('idContaOri').AsInteger := vDebidConta;
  if (CBCreidCaixa.checked) and (vCreidCaixa <> 0) then
    cdsPadrao.FieldByName('idCaixaDes').AsInteger := vCreidCaixa;
  if (CBCreidConta.checked) and (vCreidConta <> 0) then
    cdsPadrao.FieldByName('idContaDes').AsInteger := vCreidConta;
  if (CBHistorico.checked) and (vHistorico <> '') then
    cdsPadrao.FieldByName('descMovTransf').AsString := vHistorico;
  // ===========================================================================
end;

procedure TFrmCadMovTransf.DBEidMovTransfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadMovTransf.dspPadraoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  DeltaDS.FieldByName('idEmpresa').NewValue := cdsEmpresa.FieldByName('idEmpresa').Value;
  DeltaDS.FieldByName('idCadEmpresa').NewValue := cdsEmpresa.FieldByName('idCadEmpresa').Value;  
end;

procedure TFrmCadMovTransf.ExcluiLancamento;
var
  sql, sqlCaixaOri, sqlContaOri, sqlCaixaDes, sqlContaDes : String;
begin
  sql := 'SELECT * FROM MovTransfRelac WHERE idMovTransf = ' + cdsPadraoidMovTransf.AsString;
  with FrmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if not FieldByName('idMovCaixaOri').IsNull then
    begin
      sqlCaixaOri := 'DELETE FROM MovCaixa WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
             ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
             ' AND idMovCaixa = ' + FieldByName('idMovCaixaOri').AsString;
    end;
    if not FieldByName('idMovContaOri').IsNull then
    begin
      sqlContaOri := 'DELETE FROM MovConta WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
             ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
             ' AND idMovConta = ' + FieldByName('idMovContaOri').AsString;
    end;
    if not FieldByName('idMovContaDes').IsNull then
    begin
      sqlContaDes := 'DELETE FROM MovConta WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
             ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
             ' AND idMovConta = ' + FieldByName('idMovContaDes').AsString;
    end;
    if not FieldByName('idMovCaixaDes').IsNull then
    begin
      sqlCaixaDes := 'DELETE FROM MovCaixa WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
             ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
             ' AND idMovCaixa = ' + FieldByName('idMovCaixaDes').AsString;
    end;
  end;
  sql := 'DELETE FROM MovTransfRelac WHERE idMovTransf = ' + cdsPadraoidMovTransf.AsString;
  dmPadrao.dbConexao.ExecuteDirect(sql);
{  sql := 'DELETE FROM MovTransf WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
         ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
         ' AND idMovTransf = ' + cdsPadraoidMovTransf.AsString;
  dmPadrao.dbConexao.ExecuteDirect(sql);}
  if sqlContaDes <> '' then
    dmPadrao.dbConexao.ExecuteDirect(sqlContaDes);
  if sqlCaixaDes <> '' then
    dmPadrao.dbConexao.ExecuteDirect(sqlCaixaDes);
  if sqlContaOri <> '' then
    dmPadrao.dbConexao.ExecuteDirect(sqlContaOri);
  if sqlCaixaOri <> '' then
    dmPadrao.dbConexao.ExecuteDirect(sqlCaixaOri);
end;

procedure TFrmCadMovTransf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadMovTransf := nil;
end;

procedure TFrmCadMovTransf.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidMovTransf;
  foco := DBEidMovTransf;
  tab_chave := 'MovTransf';
  Height := 494;
  Width := 655;
  leitura := false;
end;

procedure TFrmCadMovTransf.FormShow(Sender: TObject);
begin
  inherited;
  DBEidMovTransf.SetFocus;
  chkCheque.Checked := False;
  HabilitaGeraCheque;
end;

procedure TFrmCadMovTransf.HabilitaEdits;
//Procedure que irá tratar da habilitação dos edits por ex:
//Na origem: ou terá um caixa de origem ou uma conta, assim como no destino
var
  sql : string;
begin
  funcao.SomenteLeitura([DBEidContaOri], trim(DBEidCaixaOri.Text)<>'');
  funcao.SomenteLeitura([DBEidCaixaOri], trim(DBEidContaOri.Text)<>'');
  funcao.SomenteLeitura([DBEidContaDes], trim(DBEidCaixaDes.Text)<>'');
  funcao.SomenteLeitura([DBEidCaixaDes], trim(DBEidContaDes.Text)<>'');
end;

procedure TFrmCadMovTransf.HabilitaGeraCheque;
begin
  if chkCheque.Checked then
    funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento], False)
  else
    funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento], True);
end;

procedure TFrmCadMovTransf.HabilitaImpCheque(op: boolean);
begin
  BtnImpChq.Enabled := op;
  BtnCopiaCheque.Enabled := op;
//  CKNominal.Checked := op;
  CKCruzado.Checked := op;
  CKPreDatado.Checked := op;
//  CKNominal.Enabled := op;
  CKCruzado.Enabled := op;
  CKPreDatado.Enabled := op;
end;

end.
