unit uFrmCadContratoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, CDBRadioGroup, Math, System.Actions, CDBComboBox, System.ImageList;

type
  TFrmCadContratoVenda = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    sdsContratoVenda: TSQLDataSet;
    CLabel7: TCLabel;
    DBEdtEmissao: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtEncerramento: TCDBEdit;
    DBEstContratoVenda: TCDBEdit;
    CLabel14: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    CLabel5: TCLabel;
    LookCliente: TCLookUp;
    CBitBtn3: TCBitBtn;
    DBEidCliente: TCDBEdit;
    lblCliFor: TCLabel;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEidSafra: TCDBEdit;
    CLabel23: TCLabel;
    DBRGtpCobranca: TCDBRadioGroup;
    DBEvlContratoVenda: TCDBEdit;
    CLabel2: TCLabel;
    CGroupBox2: TCGroupBox;
    DBMobsContratoVenda: TCDBMemo;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel11: TCLabel;
    CBitBtn1: TCBitBtn;
    DBEvlProduto: TCDBEdit;
    CLabel3: TCLabel;
    DBEqtProduto: TCDBEdit;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEvlTotalProduto: TCDBEdit;
    CLabel8: TCLabel;
    DBEvlImposto: TCDBEdit;
    DBEvlFrete: TCDBEdit;
    CLabel9: TCLabel;
    DBRGtpFinanceiro: TCDBRadioGroup;
    TabMovimento: TTabSheet;
    BtnVerFinanceiro: TCBitBtn;
    cdsFinanc: TClientDataSet;
    dsFinanc: TDataSource;
    dspFinanc: TDataSetProvider;
    sdsFinanc: TSQLDataSet;
    DBEnrOriginal: TCDBEdit;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    DBEidProdutor: TCDBEdit;
    CLabel13: TCLabel;
    DBEidRepresentante: TCDBEdit;
    CLabel15: TCLabel;
    DBEvlComissao: TCDBEdit;
    LookProdutor: TCLookUp;
    LookRepresen: TCLookUp;
    DBRGtpCalculo: TCDBRadioGroup;
    CLabel21: TCLabel;
    DBEvlIcms: TCDBEdit;
    CLabel22: TCLabel;
    DBEvlIcmsFrete: TCDBEdit;
    CLabel24: TCLabel;
    DBEvlContribSocial: TCDBEdit;
    CLabel25: TCLabel;
    DBEvlOutrosImp: TCDBEdit;
    CBitBtn2: TCBitBtn;
    LookLancamento: TCLookUp;
    CLabel16: TCLabel;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLabel17: TCLabel;
    DBEidTituloRec: TCDBEdit;
    DBEidMovCaixa: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    DBEidAdiantamento: TCDBEdit;
    DBGRIDRom: TCDBGrid;
    sdsRomaneio: TSQLDataSet;
    dspRomaneio: TDataSetProvider;
    cdsRomaneio: TClientDataSet;
    dsRomaneio: TDataSource;
    CLabel18: TCLabel;
    DBEqtArrobas: TCDBEdit;
    CLabel19: TCLabel;
    DBEqtSacas: TCDBEdit;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraodtEmissao: TSQLTimeStampField;
    cdsPadraodtEncerramento: TSQLTimeStampField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoqtProduto: TFMTBCDField;
    cdsPadraovlTotalProduto: TFMTBCDField;
    cdsPadraovlImposto: TFMTBCDField;
    cdsPadraovlFrete: TFMTBCDField;
    cdsPadraovlContratoVenda: TFMTBCDField;
    cdsPadraotpCobranca: TStringField;
    cdsPadraotpFinanceiro: TStringField;
    cdsPadraoobsContratoVenda: TStringField;
    cdsPadraostContratoVenda: TStringField;
    cdsPadraonrOriginal: TStringField;
    cdsPadraoidProdutor: TIntegerField;
    cdsPadraoidRepresentante: TIntegerField;
    cdsPadraovlComissao: TFMTBCDField;
    cdsPadraotpCalculo: TStringField;
    cdsPadraovlContribSocial: TFMTBCDField;
    cdsPadraovlOutrosImp: TFMTBCDField;
    cdsPadraovlIcmsFrete: TFMTBCDField;
    cdsPadraovlIcms: TFMTBCDField;
    cdsPadraoidIndice: TSmallintField;
    cdsPadraoidContratoVenda: TStringField;
    cdsFinancidEmpresa: TIntegerField;
    cdsFinancidCadEmpresa: TSmallintField;
    cdsFinancidContratoVenda: TStringField;
    cdsFinancidAdiantamento: TIntegerField;
    cdsFinancidTituloRec: TIntegerField;
    cdsFinancidMovCaixa: TIntegerField;
    cdsFinancidMovConta: TIntegerField;
    CLabel20: TCLabel;
    BtnAlteraCod: TCBitBtn;
    BtnExcluirCont: TCBitBtn;
    cdsPadraoqtArrobas: TFMTBCDField;
    cdsPadraoqtSacas: TFMTBCDField;
    cdsPadraovlProduto: TFMTBCDField;
    cdsPadraovlSaca: TFMTBCDField;
    CLabel26: TCLabel;
    DBEvlSaca: TCDBEdit;
    LookSaca: TCLookUp;
    lookArroba: TCLookUp;
    cdsPadraoidDescarga: TIntegerField;
    DBEidDescarga: TCDBEdit;
    LookDescarga: TCLookUp;
    CLabel27: TCLabel;
    CLabel28: TCLabel;
    DBEvlIcmsSaca: TCDBEdit;
    cdsPadraovlIcmsSaca: TFMTBCDField;
    DBEprIcmsSaca: TCDBEdit;
    CLabel29: TCLabel;
    cdsPadraoprIcmsSaca: TFMTBCDField;
    cdsFinancidCliente: TIntegerField;
    cdsPadraodescEntrega: TStringField;
    DBEdescEntrega: TCDBEdit;
    CLabel30: TCLabel;
    cdsPadraoAFixar: TStringField;
    DBCKAFixar: TCDBCheckBox;
    CBDBStatus: TCDBComboBox;
    CLabel31: TCLabel;
    CLabel32: TCLabel;
    CLabel33: TCLabel;
    CLabel34: TCLabel;
    DBEFundersulSC: TCDBEdit;
    DBETotalFundems: TCDBEdit;
    DBEFundemsSC: TCDBEdit;
    DBETotalFundersul: TCDBEdit;
    CDBComboBox1: TCDBComboBox;
    CLabel35: TCLabel;
    cdsPadraovlFundersulSC: TFMTBCDField;
    cdsPadraovlTotalFundersul: TFMTBCDField;
    cdsPadraovlFundemsSC: TFMTBCDField;
    cdsPadraovlTotalFundems: TFMTBCDField;
    cdsPadraotpMercado: TStringField;
    CLabel36: TCLabel;
    DBEnrPedido: TCDBEdit;
    DBEnrItemPed: TCDBEdit;
    CLabel37: TCLabel;
    cdsPadraonrItemPed: TIntegerField;
    cdsPadraonrPedido: TFMTBCDField;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidContratoVendaExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actNovoExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure CalcProduto(Sender: TObject);
    procedure DBEvlProdutoEnter(Sender: TObject);
    procedure DBEvlProdutoExit(Sender: TObject);
    procedure DBRGtpCobrancaExit(Sender: TObject);
    procedure GravaFinanceiro;
    procedure BtnVerFinanceiroClick(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure CalcConversao;
    procedure actCancelarExecute(Sender: TObject);
    procedure BtnAlteraCodClick(Sender: TObject);
    procedure BtnExcluirContClick(Sender: TObject);
    procedure CBDBStatusChange(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
    vlFinancAnt : Double;
  public
    { Public declarations }
    id : string;
    ins, upd : boolean;
  end;

var
  FrmCadContratoVenda: TFrmCadContratoVenda;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao, uDmFind,
  uFrmCadAdiantamento, uCadTituloRec, uFrmCadMovCaixa,
  uFrmCadMovConta, uFrmAlteraCodigo, uFrmPesContratoVenda;

{$R *.dfm}

procedure TFrmCadContratoVenda.actCancelarExecute(Sender: TObject);
begin
  inherited;
  cdsRomaneio.Active := False;
end;

procedure TFrmCadContratoVenda.actExcluirExecute(Sender: TObject);
begin
  if cdsFinanc.RecordCount > 0 then
  begin
    messagedlg('Exclua primeiramente o movimento financeiro!', mtwarning, [mbok], 0);
    exit;
  end;
  inherited;
  DBEidContratoVendaExit(DBEidContratoVenda);
end;

procedure TFrmCadContratoVenda.actNovoExecute(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdtEmissao, DBEidCliente, DBEidSafra, DBEidProduto,
                         DBEvlProduto, DBEqtProduto, DBEvlTotalProduto, DBEvlImposto,
                         DBEvlFrete, DBRGtpCobranca, DBRGtpFinanceiro, DBMobsContratoVenda], false);
  cdsRomaneio.Active := False;
end;

procedure TFrmCadContratoVenda.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
  FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesContratoVenda.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesContratoVenda.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesContratoVenda.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idCliente').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').Value;
      FieldByName('idContratoVenda').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
      DBEidContratoVenda.SetFocus;
      DBEidContratoVendaExit(DBEidContratoVenda);
    end;
  end;
end;

procedure TFrmCadContratoVenda.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  sql : string;
begin
  if Trim(DBEidContratoVenda.Text) = '' then
  begin
    MessageDlg('O Codigo do Contrato deve ser Informado!', mtWarning, [mbOK], 0);
    DBEidContratoVenda.SetFocus;
    Exit;
  end;

  upd := False;
  if cdsPadrao.State = dsEdit then
    upd := true;
  if upd then
  begin
    if cdsPadrao.FieldByName('vlContratoVenda').OldValue <> cdsPadrao.FieldByName('vlContratoVenda').NewValue then
    begin
      if not (cdsFinanc.State in [dsEdit, dsInsert]) then
        cdsFinanc.Edit;
      if cdsFinanc.RecordCount > 0 then
      begin
        if not cdsFinancidTituloRec.IsNull then
        begin
          sql := 'EXEC spAlteraValorContrato ' + funcao.RetornaValorEField(DBEidTituloRec, 3) +
                 ', ' + QuotedStr('TIT') + ', ' + funcao.RetornaValorEField(DBEvlContratoVenda, 3);
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end
        else
          if not cdsFinancidAdiantamento.IsNull then
          begin
            sql := 'EXEC spAlteraValorContrato ' + funcao.RetornaValorEField(DBEidAdiantamento, 3) +
                 ', ' + QuotedStr('ADT') + ', ' + funcao.RetornaValorEField(DBEvlContratoVenda, 3);
            dmPadrao.dbConexao.ExecuteDirect(sql);
          end
          else
            if not cdsFinancidMovCaixa.IsNull then
            begin
              sql := 'EXEC spAlteraValorContrato ' + funcao.RetornaValorEField(DBEidMovCaixa, 3) +
                 ', ' + QuotedStr('MCX') + ', ' + funcao.RetornaValorEField(DBEvlContratoVenda, 3);
              dmPadrao.dbConexao.ExecuteDirect(sql);
            end
            else
              if not cdsFinancidMovConta.IsNull then
              begin
                sql := 'EXEC spAlteraValorContrato ' + funcao.RetornaValorEField(DBEidMovConta, 3) +
                 ', ' + QuotedStr('MCT') + ', ' + funcao.RetornaValorEField(DBEvlContratoVenda, 3);
                dmPadrao.dbConexao.ExecuteDirect(sql);
              end;
      end;
    end;
  end;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
//  if trim(DBEdtEncerramento.Text) <> '' then
//    if messagedlg('Deseja realmente encerrar este contrato de venda?', mtconfirmation, [mbyes,mbno], 0) = mryes then
//      cdsPadrao.FieldByName('stContratoVenda').AsString := 'ENCERRADO'
//    else
//      cdsPadrao.FieldByName('dtEncerramento').Clear;

  if trim(DBEvlImposto.Text) = '' then
    cdsPadrao.FieldByName('vlImposto').AsFloat := 0;

  if trim(DBEvlFrete.Text) = '' then
    cdsPadrao.FieldByName('vlFrete').AsFloat := 0;

  ins := false;
  if cdsPadrao.State = dsInsert then
    ins := true;

  //marca a transação
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    GravaChave(1, '', nil);
    inherited;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    DBEidContratoVendaExit(DBEidContratoVenda);
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);

  if ins then
    GravaFinanceiro;

  //grava novos registros para tabela de pendencias
  GravaIntegracao('ContratoVenda', 'idEmpresa;idCadEmpresa;idCliente;idContratoVenda', cdsPadraoidEmpresa.AsString+ ';' +cdsPadraoidCadEmpresa.AsString+ ';' +cdsPadraoidCliente.AsString+ ';' +cdsPadraoidContratoVenda.AsString, 'I', 'AGUARDANDO');

end;

procedure TFrmCadContratoVenda.BtnAlteraCodClick(Sender: TObject);
begin
  inherited;
  if Trim(DBEidContratoVenda.Text) = '' then
  begin
    MessageDlg('Favor informar codigo a ser alterado!', mtInformation, [mbOK], 0);
    Exit;
  end;
  Application.CreateForm(TFrmAlteraCodigo, FrmAlteraCodigo);
  FrmAlteraCodigo.id := QuotedStr(cdsPadrao.FieldByName('idContratoVenda').AsString);
  FrmAlteraCodigo.tpForm := 'VEN';
  FrmAlteraCodigo.tab := tab_chave;
  FrmAlteraCodigo.key :=  DBEidContratoVenda.DataField;
  FrmAlteraCodigo.ShowModal;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('idContratoVenda').AsString := id;
  DBEidContratoVendaExit(DBEidContratoVenda);
  GravaLog('Alteração do código do Contrato de Venda');
end;

procedure TFrmCadContratoVenda.BtnExcluirContClick(Sender: TObject);
var
  sql, sqlMov : String;
begin
  inherited;
  if messagedlg('Tem certeza que deseja excluir!', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

  if cdsRomaneio.RecordCount > 0 then
  begin
    messagedlg('Este contrato não pode ser excluído pois está vinculado a Romaneios!', mtwarning, [mbok], 0);
    exit;
  end;

  if cdsFinanc.RecordCount > 0 then
  begin
    if not cdsFinancidTituloRec.IsNull then
    begin
      sql := 'SELECT * FROM TituloRec WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
             ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
             ' AND idTituloRec = ' + cdsFinancidTituloRec.AsString;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      if FieldByName('stTituloRec').AsString = 'ATIVO' then
      begin
        sqlMov := 'EXEC spExcluiTituloRec ' + cdsFinancidTituloRec.AsString;
      end
      else
      begin
        MessageDlg('Contrato com movimentação financeira iniciada!', mtError, [mbOK], 0);
        Exit;
      end;
    end
    else
      if not cdsFinancidAdiantamento.IsNull then
      begin
        sql := 'SELECT * FROM Adiantamento WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
               ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
               ' AND idAdiantamento = ' + cdsFinancidAdiantamento.AsString;
        with FrmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if not FieldByName('idCaixa').IsNull then
            sqlMov := 'DELETE FROM MovConta WHERE idMovConta = ' + frmPrincipal.ExecutaSQLRet([], '', 'SELECT idMovConta FROM AdiantamentoMov WHERE idAdiantamento = ' +cdsFinancidAdiantamento.AsString).FieldByName('idMovConta').AsString
          else
            sqlMov := 'DELETE FROM MovCaixa WHERE idMovCaixa = ' + frmPrincipal.ExecutaSQLRet([], '', 'SELECT idMovCaixa FROM AdiantamentoMov WHERE idAdiantamento = ' +cdsFinancidAdiantamento.AsString).FieldByName('idMovCaixa').AsString;

          if sqlMov <> '' then
            dmPadrao.dbConexao.ExecuteDirect(sqlMov);

          sqlMov := 'DELETE FROM Adiantamento WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
               ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
               ' AND idAdiantamento = ' + cdsFinancidAdiantamento.AsString;
        end;
      end
      else
        if not cdsFinancidMovCaixa.IsNull then
        begin
          sql := 'SELECT * FROM MovCaixaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                 ' AND idMovCaixa = ' + cdsFinancidMovCaixa.AsString;
          with frmPrincipal.ExecutaSQLRet([], '', sql) do
          if RecordCount > 0 then
          begin
            sqlMov := 'DELETE FROM MovCaixaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                      ' AND idMovCaixa = ' + cdsFinancidMovCaixa.AsString;
            if sqlMov <> '' then
              dmPadrao.dbConexao.ExecuteDirect(sqlMov);
          end;

          sqlMov := 'DELETE FROM MovCaixa WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
               ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
               ' AND idMovCaixa = ' + cdsFinancidMovCaixa.AsString;
        end
        else
          if not cdsFinancidMovConta.IsNull then
          begin
            sql := 'SELECT * FROM MovContaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                   ' AND idMovConta = ' + cdsFinancidMovConta.AsString;
            with frmPrincipal.ExecutaSQLRet([], '', sql) do
            if RecordCount > 0 then
            begin
              sqlMov := 'DELETE FROM MovContaRateio WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                        ' AND idMovConta = ' + cdsFinancidMovConta.AsString;
              if sqlMov <> '' then
                dmPadrao.dbConexao.ExecuteDirect(sqlMov);
            end;
            sqlMov := 'DELETE FROM MovConta WHERE idEmpresa = ' + cdsFinancidEmpresa.AsString +
                      ' AND idCadEmpresa = ' + cdsFinancidCadEmpresa.AsString +
                      ' AND idMovConta = ' + cdsFinancidMovConta.AsString;
          end;

    sql := 'DELETE FROM ContratoVendaFinanc ' +
           ' WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
           ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
           ' AND idCliente = ' + cdsPadraoidCliente.AsString +
           ' AND idContratoVenda = ' + QuotedStr(cdsPadraoidContratoVenda.AsString);
    dmPadrao.dbConexao.ExecuteDirect(sql);
    if sqlMov <> '' then
      dmPadrao.dbConexao.ExecuteDirect(sqlMov);

    sql := 'DELETE FROM ContratoVenda ' +
           ' WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
           ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
           ' AND idCliente = ' + cdsPadraoidCliente.AsString +
           ' AND idContratoVenda = ' + QuotedStr(cdsPadraoidContratoVenda.AsString);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end
  else
  begin
    sql := 'DELETE FROM ContratoVendaFinanc ' +
           ' WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
           ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
           ' AND idCliente = ' + cdsPadraoidCliente.AsString +
           ' AND idContratoVenda = ' + QuotedStr(cdsPadraoidContratoVenda.AsString);
    dmPadrao.dbConexao.ExecuteDirect(sql);
    sql := 'DELETE FROM ContratoVenda ' +
           ' WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
           ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
           ' AND idCliente = ' + cdsPadraoidCliente.AsString +
           ' AND idContratoVenda = ' + QuotedStr(cdsPadraoidContratoVenda.AsString);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
    BtnNovo.Click;
end;

procedure TFrmCadContratoVenda.BtnVerFinanceiroClick(Sender: TObject);
begin
  inherited;
  if (cdsFinanc.RecordCount = 0) then
    if messagedlg('Financeiro ainda não gerado! Deseja gerar agora?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      ins := true;
      GravaFinanceiro;
      exit;
    end;

  if cdsFinancidAdiantamento.AsInteger > 0 then
  begin
    if not Assigned(frmCadAdiantamento) then
      frmCadAdiantamento := TfrmCadAdiantamento.create(Self, [cdsFinancidAdiantamento.AsString]);
      FrmCadAdiantamento.Show;
  end
  else
    if cdsFinancidTituloRec.AsInteger > 0 then
    begin
      if not Assigned(FrmCadTituloRec) then
        FrmCadTituloRec := TFrmCadTituloRec.create(Self, [cdsFinancidTituloRec.AsString]);
        FrmCadTituloRec.Show;
    end
    else
      if cdsFinancidMovCaixa.AsInteger > 0 then
      begin
        if not Assigned(FrmCadMovCaixa) then
          FrmCadMovCaixa := TFrmCadMovCaixa.create(Self, [cdsFinancidMovCaixa.AsString]);
          FrmCadMovCaixa.Show;
      end
      else
        if cdsFinancidMovConta.AsInteger > 0 then
        begin
          if not Assigned(FrmCadMovConta) then
            FrmCadMovConta := TFrmCadMovConta.create(Self, [cdsFinancidMovConta.AsString]);
            FrmCadMovConta.Show;
        end;
end;

procedure TFrmCadContratoVenda.CalcConversao;
var
  sql : string;
begin
  if (cdsPadrao.FieldByName('qtProduto').OldValue <> cdsPadrao.FieldByName('qtProduto').NewValue) then
  begin
    if Trim(DBEqtProduto.Text) <> '' then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      sql := 'SELECT qtSacas, qtArrobas FROM Produto WHERE idProduto = ' + DBEidProduto.Text;
      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if ((FieldByName('qtSacas').AsFloat > 0) and (cdsPadrao.FieldByName('qtProduto').AsFloat > 0)) then
        begin
          cdsPadraoqtSacas.AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat / FieldByName('qtSacas').AsFloat, -2)
        end
        else
          cdsPadraoqtSacas.AsFloat := 0;
        if (FieldByName('qtArrobas').AsFloat <> 0) and (cdsPadrao.FieldByName('qtProduto').AsFloat > 0) then
        begin
          cdsPadraoqtArrobas.AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat / FieldByName('qtArrobas').AsFloat, -2);
        end
        else
         cdsPadraoqtArrobas.AsFloat := 0;
      end;
    end;
  end;
end;

procedure TFrmCadContratoVenda.CalcProduto(Sender: TObject);
//Procedure que irá efetuar o cálculo dos Totais do Produto e contrato
var
  tpCalc, sql : string;
  qtSacaArroba : double;
begin
  CalcConversao;
  if Sender = DBEvlProduto then
  begin
    //faz o cálculo da saca
    if trim(LookSaca.Caption) <> '' then
      qtSacaArroba := StrToFloat(trim(LookSaca.Caption))
    else
      if trim(LookArroba.Caption) <> '' then
        qtSacaArroba := StrToFloat(trim(LookArroba.Caption));
    cdsPadraovlSaca.AsCurrency := RoundTo(cdsPadraovlProduto.AsFloat*qtSacaArroba, -2);

    if (trim(DBEqtProduto.Text) <> '') and (cdsPadraovlSaca.AsCurrency > 0) then
      cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo((cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba, -2)
    else
      if (trim(DBEqtProduto.Text) <> '') then
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat, -2);
  end
  else
  if Sender = DBEvlSaca then
  begin
    //faz o cálculo da saca
    if trim(LookSaca.Caption) <> '' then
      qtSacaArroba := StrToFloat(trim(LookSaca.Caption))
    else
      if trim(LookArroba.Caption) <> '' then
        qtSacaArroba := StrToFloat(trim(LookArroba.Caption));
    if (cdsPadraovlSaca.AsFloat > 0) then
       cdsPadraovlProduto.AsCurrency := RoundTo(cdsPadraovlSaca.AsFloat/qtSacaArroba, -4);



    if trim(DBEqtProduto.Text) <> '' then
      if (qtSacaArroba > 0) and  (cdsPadraovlSaca.AsFloat > 0) then
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo((cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba, -2)
      else
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat, -2);
  end
  else
  if Sender = DBEqtProduto then
  begin
    //faz o cálculo da saca
    if trim(LookSaca.Caption) <> '' then
      qtSacaArroba := StrToFloat(trim(LookSaca.Caption))
    else
      if trim(LookArroba.Caption) <> '' then
        qtSacaArroba := StrToFloat(trim(LookArroba.Caption));

    if trim(DBEvlProduto.Text) <> '' then
    begin
      if qtSacaArroba > 0  then
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo((cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba, -2)
      else
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat, -2);
    end;
  end
  else
  if Sender = DBEvlTotalProduto then
  begin
    if trim(DBEqtProduto.Text) <> '' then
      cdsPadrao.FieldByName('vlProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('vlTotalProduto').AsFloat / cdsPadrao.FieldByName('qtProduto').AsFloat, -4);
  end
  else
  if Sender = DBEvlIcmsSaca then
  begin
    if (cdsPadraovlIcmsSaca.AsFloat > 0) and (cdsPadraoqtSacas.AsFloat > 0) then
      cdsPadraovlIcms.AsFloat := cdsPadraovlIcmsSaca.AsFloat * cdsPadraoqtSacas.AsFloat;
  end
  else
  if Sender = DBEvlIcms then
  begin
    if (cdsPadraovlIcms.AsFloat > 0) and (cdsPadraoqtSacas.AsFloat > 0) then
      cdsPadraovlIcmsSaca.AsFloat := cdsPadraovlIcms.AsFloat / cdsPadraoqtSacas.AsFloat;
  end
  else
  if Sender = DBEprIcmsSaca then
  begin
    if (cdsPadraoprIcmsSaca.AsFloat > 0) and (cdsPadraoqtSacas.AsFloat > 0) and (cdsPadraovlSaca.AsFloat > 0) then
      cdsPadraovlIcmsSaca.AsFloat := RoundTo((cdsPadraovlSaca.AsFloat* cdsPadraoprIcmsSaca.AsFloat)/100, -2);

    if (cdsPadraovlIcmsSaca.AsFloat > 0) and (cdsPadraoqtSacas.AsFloat > 0) then
      cdsPadraovlIcms.AsFloat := cdsPadraovlIcmsSaca.AsFloat * cdsPadraoqtSacas.AsFloat;
  end
  else
  if Sender = DBEFundersulSC then
  begin
    cdsPadraovlTotalFundersul.AsFloat := cdsPadraovlFundersulSC.AsFloat * cdsPadraoqtSacas.AsFloat;
  end
  else
  if Sender = DBEFundemsSC then
  begin
    cdsPadraovlTotalFundems.AsFloat := cdsPadraovlFundemsSC.AsFloat * cdsPadraoqtSacas.AsFloat;
  end;



  if trim(DBEvlTotalProduto.Text) <> '' then
  begin
    tpCalc := DBRGtpCalculo.Items[DBRGtpCalculo.ItemIndex];
    if tpCalc = 'Somar' then
      cdsPadrao.FieldByName('vlContratoVenda').AsFloat := RoundTo(cdsPadrao.FieldByName('vlTotalProduto').AsFloat +
                                                        cdsPadrao.FieldByName('vlImposto').AsFloat+cdsPadrao.FieldByName('vlFrete').AsFloat+
                                                        cdsPadrao.FieldByName('vlIcms').AsFloat+cdsPadrao.FieldByName('vlIcmsFrete').AsFloat+
                                                        cdsPadrao.FieldByName('vlContribSocial').AsFloat+cdsPadrao.FieldByName('vlOutrosImp').AsFloat+
                                                        cdsPadrao.FieldByName('vlComissao').AsFloat+cdsPadrao.FieldByName('vlTotalFundersul').AsFloat+
                                                        cdsPadrao.FieldByName('vlTotalFundems').AsFloat, -2)
    else
      if tpCalc = 'Subtrair' then
        cdsPadrao.FieldByName('vlContratoVenda').AsFloat := RoundTo(cdsPadrao.FieldByName('vlTotalProduto').AsFloat -
                                                        cdsPadrao.FieldByName('vlImposto').AsFloat-cdsPadrao.FieldByName('vlFrete').AsFloat-
                                                        cdsPadrao.FieldByName('vlIcms').AsFloat-cdsPadrao.FieldByName('vlIcmsFrete').AsFloat-
                                                        cdsPadrao.FieldByName('vlContribSocial').AsFloat-cdsPadrao.FieldByName('vlOutrosImp').AsFloat-
                                                        cdsPadrao.FieldByName('vlComissao').AsFloat-cdsPadrao.FieldByName('vlTotalFundersul').AsFloat-
                                                        cdsPadrao.FieldByName('vlTotalFundems').AsFloat, -2)
      else
        cdsPadrao.FieldByName('vlContratoVenda').AsFloat := cdsPadrao.FieldByName('vlTotalProduto').AsFloat;

  end;
end;

procedure TFrmCadContratoVenda.CBDBStatusChange(Sender: TObject);
begin
  inherited;
  if CBDBStatus.Text = 'PREVISÃO' then
  begin
    BtnVerFinanceiro.Visible := False;
    TabMovimento.TabVisible := False;
  end
  else
  begin
    BtnVerFinanceiro.Visible := True;
    TabMovimento.TabVisible := True;
  end;
end;

procedure TFrmCadContratoVenda.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('tpCobranca').AsString := 'R';
    DataSet.FieldByName('tpFinanceiro').AsString := 'A';
    DataSet.FieldByName('tpCalculo').AsString := '*';
    DataSet.FieldByName('AFixar').AsString := 'N';
  end;
end;

procedure TFrmCadContratoVenda.DBEidContratoVendaExit(Sender: TObject);
begin
  inherited;
{  if not (BuscaChave(tabelas[0], chave)) then
    if trim(DBEidContratoVenda.Text) <> '' then
    begin
      messagedlg('Contrato não encontrado! Deixe em branco para novo!', mtwarning, [mbok], 0);
      DBEidContratoVenda.Clear;
      DBEidContratoVenda.SetFocus;
      exit;
    end;}
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;

  //Busca os dados Do Romaneio Referente a esse Contrato
  if trim(DBEidContratoVenda.Text) <> '' then
  begin
    cdsRomaneio.Active := False;
    cdsRomaneio.CommandText := 'SELECT * FROM Romaneio WHERE idEmpresa = ' +
                               DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Field.AsString +
                               ' AND idCliente = ' + cdsPadraoidCliente.AsString + ' AND idContratoVenda = ' +
                               QuotedStr(DBEidContratoVenda.Text);
    cdsRomaneio.Active := True;
  end;


//  funcao.SomenteLeitura([DBEdtEncerramento], (cdsPadrao.State in [dsInsert]) or
//                        (cdsPadrao.FieldByName('stContratoVenda').AsString <> 'ATIVO'));
  funcao.SomenteLeitura([DBEdtEmissao, DBEvlContratoVenda, DBEidSafra,
                         DBEidProduto, DBEvlProduto, DBEqtProduto, DBEvlTotalProduto,
                         DBEvlImposto, DBEvlFrete, DBRGtpCobranca, DBRGtpFinanceiro,
                         DBEvlSaca, DBEprIcmsSaca, DBEvlIcmsSaca, DBEvlIcms, DBEvlContribSocial,
                         DBEvlOutrosImp, DBEvlIcmsFrete, DBEidIndice, DBEdtEncerramento, DBRGtpCalculo],
                         (cdsPadrao.FieldByName('stContratoVenda').AsString = 'CANCELADO'));

  BtnExcluir.Visible := cdsPadrao.FieldByName('stContratoVenda').AsString = 'ATIVO';

  BtnVerFinanceiro.Visible := cdsPadraotpCobranca.AsString = 'C';


  CalcConversao;
end;


procedure TFrmCadContratoVenda.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadContratoVenda.DBEvlProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim((Sender as TCDBEdit).Text);
end;

procedure TFrmCadContratoVenda.DBEvlProdutoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then
    CalcProduto(Sender);
end;

procedure TFrmCadContratoVenda.DBRGtpCobrancaExit(Sender: TObject);
begin
  inherited;
  if (DBRGtpCobranca.ItemIndex = 2) and (cdsPadrao.State in [dsInsert, dsEdit]) then
  begin
    cdspadrao.FieldByName('tpFinanceiro').AsString := 'V'; //avulso
    funcao.SomenteLeitura([DBRGtpFinanceiro], true);
  end
  else
    funcao.SomenteLeitura([DBRGtpFinanceiro], false);
end;

procedure TFrmCadContratoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadContratoVenda := nil;
end;

procedure TFrmCadContratoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsFinanc;

  SetLength(chave, 4);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidCliente;
  chave[3] := DBEidContratoVenda;
  foco := DBEidCliente;
  tab_chave := 'ContratoVenda';
  situacao := 'stContratoVenda';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadContratoVenda.FormShow(Sender: TObject);
begin
  inherited;
  Height := 580;
  Width := 810;
//  funcao.SomenteLeitura([DBEdtEncerramento], true);
  BtnVerFinanceiro.Visible := false;
end;

procedure TFrmCadContratoVenda.GravaFinanceiro;
var
  sql : string;
begin
  //Teste para verificar erro ao gerar Financeiro de contrato de Venda
  if ins then
  begin
    sql := 'DELETE FROM ContratoVendaFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idCliente = ' + cdsPadraoidCliente.AsString + ' AND idContratoVenda = ' + QuotedStr(DBEidContratoVenda.Text);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;

  if cdsPadrao.FieldByName('tpCobranca').AsString = 'C' then //Para ser gerado o financeiro a partir do contrato
  begin
    if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'A' then
    begin
      if not Assigned(frmCadAdiantamento) then
        frmCadAdiantamento := TfrmCadAdiantamento.create(Self, ['CONTRATO', cdsPadraoidCliente.AsString, cdsPadrao.FieldByName('idContratoVenda').AsString]);
        FrmCadAdiantamento.Show;
    end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
    else
      if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'T' then
      begin
        if not Assigned(FrmCadTituloRec) then
          FrmCadTituloRec := TFrmCadTituloRec.create(Self, ['CONTRATO', cdsPadrao.FieldByName('idContratoVenda').AsString]);
          FrmCadTituloRec.Show;
      end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
      else
        if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'C' then
        begin
          if not Assigned(FrmCadMovCaixa) then
            FrmCadMovCaixa := TFrmCadMovCaixa.create(Self, ['CONTRATO', cdsPadrao.FieldByName('idContratoVenda').AsString]);
            FrmCadMovCaixa.Show;
        end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
        else
          if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'B' then
          begin
            if not Assigned(FrmCadMovConta) then
              FrmCadMovConta := TFrmCadMovConta.create(Self, ['CONTRATO', cdsPadrao.FieldByName('idContratoVenda').AsString]);
              FrmCadMovConta.Show;
          end; //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
  end; //if cdsPadrao.FieldByName('tpCobranca').AsString = 'C' then //Para ser gerado o financeiro a partir do contrato
end;

procedure TFrmCadContratoVenda.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
    begin
      Height := 580;
      Width := 810;
    end
    else
    if PagAbas.ActivePageIndex = 1 then
      begin
        Height := 580;
        Width := 750;
      end;
end;

end.
