unit uFrmCadContratoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, CDBRadioGroup, Math, System.Actions, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, CDBComboBox, System.ImageList;

type
  TFrmCadContratoCompra = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    sdsContratoCompra: TSQLDataSet;
    CLabel7: TCLabel;
    DBEdtEmissao: TCDBEdit;
    DBEstContratoCompra: TCDBEdit;
    CLabel14: TCLabel;
    DBEidContratoCompra: TCDBEdit;
    CLabel5: TCLabel;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEidSafra: TCDBEdit;
    CLabel23: TCLabel;
    DBRGtpCobranca: TCDBRadioGroup;
    DBEvlContratoCompra: TCDBEdit;
    CLabel2: TCLabel;
    CGroupBox2: TCGroupBox;
    DBMobsContratoCompra: TCDBMemo;
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
    CLabel13: TCLabel;
    DBEidComissionado: TCDBEdit;
    CLabel15: TCLabel;
    DBEvlComissao: TCDBEdit;
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
    DBEidTituloPag: TCDBEdit;
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
    cdsFinancidEmpresa: TIntegerField;
    cdsFinancidCadEmpresa: TSmallintField;
    cdsFinancidAdiantamento: TIntegerField;
    cdsFinancidMovCaixa: TIntegerField;
    cdsFinancidMovConta: TIntegerField;
    CLabel20: TCLabel;
    BtnExcluirCont: TCBitBtn;
    cdsFinancidContratoCompra: TStringField;
    cdsFinancidTituloPag: TIntegerField;
    DBEvlSaca: TCDBEdit;
    CLabel26: TCLabel;
    DBEvlIcmsSaca: TCDBEdit;
    CLabel28: TCLabel;
    DBEprIcmsSaca: TCDBEdit;
    CLabel29: TCLabel;
    DBEidConta: TCDBEdit;
    CLabel1: TCLabel;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    LookAgencia: TCLookUp;
    LookSaca: TCLookUp;
    lookArroba: TCLookUp;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidContratoCompra: TStringField;
    cdsPadraodtEmissao: TSQLTimeStampField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoqtProduto: TFMTBCDField;
    cdsPadraovlProduto: TFMTBCDField;
    cdsPadraovlTotalProduto: TFMTBCDField;
    cdsPadraovlImposto: TFMTBCDField;
    cdsPadraovlFrete: TFMTBCDField;
    cdsPadraovlContratoCompra: TFMTBCDField;
    cdsPadraotpCobranca: TStringField;
    cdsPadraotpFinanceiro: TStringField;
    cdsPadraoobsContratoCompra: TStringField;
    cdsPadraostContratoCompra: TStringField;
    cdsPadraonrOriginal: TStringField;
    cdsPadraoidComissionado: TIntegerField;
    cdsPadraovlComissao: TFMTBCDField;
    cdsPadraotpCalculo: TStringField;
    cdsPadraovlContribSocial: TFMTBCDField;
    cdsPadraovlOutrosImp: TFMTBCDField;
    cdsPadraovlIcmsFrete: TFMTBCDField;
    cdsPadraovlIcms: TFMTBCDField;
    cdsPadraoidIndice: TSmallintField;
    cdsPadraoqtSacas: TFMTBCDField;
    cdsPadraoqtArrobas: TFMTBCDField;
    cdsPadraovlIcmsSaca: TFMTBCDField;
    cdsPadraoprIcmsSaca: TFMTBCDField;
    cdsFinancidFornecedor: TIntegerField;
    cdsPadraoidEmbarque: TIntegerField;
    cdsPadraoidCadEmbarque: TSmallintField;
    LookDescarga: TCLookUp;
    DBEidEmbarque: TCDBEdit;
    CLabel27: TCLabel;
    DBEidCadEmbarque: TCDBEdit;
    CLookUp1: TCLookUp;
    cdsPadraoidCadFornecedor: TSmallintField;
    cdsFinancidCadFornecedor: TSmallintField;
    cdsPadraoidTrangenia: TSmallintField;
    cdsPadraodescEntrega: TStringField;
    DBEidTrangenia: TCDBEdit;
    CLookUp4: TCLookUp;
    CLabel12: TCLabel;
    DBEdescEntrega: TCDBEdit;
    CLabel30: TCLabel;
    cdsPadraoidConta: TSmallintField;
    cdsPadraovlSaca: TFMTBCDField;
    cdsPadraovlServico: TFMTBCDField;
    cdsPadraoAFixar: TStringField;
    DBCKAFixar: TCDBCheckBox;
    TabContraNota: TTabSheet;
    cdsNota: TClientDataSet;
    dsNota: TDataSource;
    dspNota: TDataSetProvider;
    sdsNota: TSQLDataSet;
    cdsNotaidEmpresa: TIntegerField;
    cdsNotaidCadEmpresa: TSmallintField;
    cdsNotaidFornecedor: TIntegerField;
    cdsNotaidCadFornecedor: TSmallintField;
    cdsNotaidContratoCompra: TStringField;
    cdsNotaidFornNf: TIntegerField;
    cdsNotaidCadFornNf: TSmallintField;
    cdsNotaidDocSerie: TStringField;
    cdsNotaidNf: TIntegerField;
    cdsNotaidNfProdutor: TIntegerField;
    cdsNotanrSerieProdutor: TFMTBCDField;
    cdsNotadtEmissaoProdutor: TSQLTimeStampField;
    grpNotaSaida: TCGroupBox;
    LblCad: TCLabel;
    CLabel59: TCLabel;
    DBEidFornNf: TCDBEdit;
    DBEidCadFornNf: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    lookIeCliente: TCLookUp;
    CLookUp6: TCLookUp;
    CLookUp7: TCLookUp;
    lookEstadoCli: TCLookUp;
    CGroupBox13: TCGroupBox;
    CLabel93: TCLabel;
    CLabel94: TCLabel;
    CLabel95: TCLabel;
    DBEidNfProdutor: TCDBEdit;
    DBEnrSerieProdutor: TCDBEdit;
    DBEdtEmissaoProdutor: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CLabel10: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    lookSerieFiscal: TCLookUp;
    CLabel31: TCLabel;
    DBEidNf: TCDBEdit;
    DBEqtProdutoN: TCDBEdit;
    CLabel32: TCLabel;
    CGroupBox12: TCGroupBox;
    BtnNovaNota: TCBitBtn;
    BtnGerarNota: TCBitBtn;
    BtnDesfazer: TCBitBtn;
    CGroupBox14: TCGroupBox;
    DBProdutos: TCDBGrid;
    cdsNotaqtProduto: TFMTBCDField;
    CGroupBox4: TCGroupBox;
    CLabel33: TCLabel;
    DBEqtProdutoC: TCDBEdit;
    DBEqtNf: TCDBEdit;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    DBEqtSaldo: TCDBEdit;
    cdsNotaqtNf: TAggregateField;
    cdsNotaqtSaldo: TFloatField;
    EDUsuario: TCEdit;
    CBDBStatus: TCDBComboBox;
    lblCliFor: TCLabel;
    DBEidFornecedor: TCDBEdit;
    DBEidCadFornecedor: TCDBEdit;
    CLookUp2: TCLookUp;
    CLookUp3: TCLookUp;
    CLabel110: TCLabel;
    CDBChaveNFPe: TCDBEdit;
    cdsNotaChaveNFPe: TStringField;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidContratoCompraExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actNovoExecute(Sender: TObject);
    procedure CalcProduto(Sender: TObject);
    procedure DBEvlProdutoEnter(Sender: TObject);
    procedure DBEvlProdutoExit(Sender: TObject);
    procedure DBRGtpCobrancaExit(Sender: TObject);
    procedure GravaFinanceiro;
    procedure BtnVerFinanceiroClick(Sender: TObject);
    procedure CalcConversao;
    procedure actCancelarExecute(Sender: TObject);
    procedure BtnExcluirContClick(Sender: TObject);
    procedure DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidEmbarqueKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure cdsNotaCalcFields(DataSet: TDataSet);
    procedure BtnDesfazerClick(Sender: TObject);
    procedure BtnNovaNotaClick(Sender: TObject);
    procedure dsNotaStateChange(Sender: TObject);
    procedure BtnGerarNotaClick(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidFornNfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornNfKeyPress(Sender: TObject; var Key: Char);
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
  FrmCadContratoCompra: TFrmCadContratoCompra;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao, uDmFind,
  uFrmCadAdiantamento, uFrmCadMovCaixa,
  uFrmCadMovConta, uFrmAlteraCodigo, uFrmPesContratoCompra,
  uFrmPesClienteFiscal, uCadTituloPag, uFrmNotaFiscal;

{$R *.dfm}

procedure TFrmCadContratoCompra.actCancelarExecute(Sender: TObject);
begin
  inherited;
  cdsRomaneio.Active := False;
end;

procedure TFrmCadContratoCompra.actNovoExecute(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdtEmissao, DBEidSafra, DBEidProduto,
                         DBEvlProduto, DBEqtProduto, DBEvlTotalProduto, DBEvlImposto,
                         DBEvlFrete, DBRGtpCobranca, DBRGtpFinanceiro, DBMobsContratoCompra], false);
  cdsRomaneio.Active := False;
end;

procedure TFrmCadContratoCompra.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesContratoCompra, FrmPesContratoCompra);
  FrmPesContratoCompra.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesContratoCompra.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesContratoCompra.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesContratoCompra.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesContratoCompra.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesContratoCompra.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idFornecedor').Value;
      FieldByName('idCadFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadFornecedor').Value;
      FieldByName('idContratoCompra').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').Value;
      DBEidContratoCompra.SetFocus;
      DBEidContratoCompraExit(DBEidContratoCompra);
    end;
  end;
end;

procedure TFrmCadContratoCompra.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  sql : string;
begin
  if (Trim(DBEidContratoCompra.Text) = '') and (Trim(DBEidFornecedor.Text) = '') then
  begin
    MessageDlg('O Codigo do Contrato deve ser Informado!', mtWarning, [mbOK], 0);
    DBEidContratoCompra.SetFocus;
    Exit;
  end;

  // Inicia o controle de transação
  frmPrincipal.erro := 0;

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
    DBEidContratoCompraExit(DBEidContratoCompra);
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);

  if ins then
    GravaFinanceiro;
end;

procedure TFrmCadContratoCompra.BtnDesfazerClick(Sender: TObject);
begin
  inherited;
  cdsNota.Cancel;
end;

procedure TFrmCadContratoCompra.BtnExcluirContClick(Sender: TObject);
var
  sql : string;
begin
  if cdsRomaneio.RecordCount > 0 then
  begin
    messagedlg('Este contrato não pode ser excluído pois está vinculado a Romaneios!', mtwarning, [mbok], 0);
    exit;
  end;

  if messagedlg('Deseja realmente excluir o contrato selecionado? Essa opção é irreversível!', mtwarning, [mbyes, mbno], 0) = mrno then
    exit;

  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEidFornecedor,
                        DBEidCadFornecedor, DBEidContratoCompra, EDUsuario], 'spExcluiContratoCompra')  then
    BtnNovo.Click;
end;

procedure TFrmCadContratoCompra.BtnGerarNotaClick(Sender: TObject);
begin
  inherited;
  if not funcao.VerCampoRequerido([cdsNota], '') then
    exit;
  //Verifica agora se tem saldo para geração da nota
  if cdsNotaqtProduto.AsFloat > cdsNotaqtSaldo.AsFloat then
  begin
    messagedlg('Saldo insuficiente para geração da nota!', mtwarning, [mbok], 0);
    exit;
  end;
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidFornecedor, DBEidCadFornecedor,
                                   DBEidContratoCompra, DBEidFornNf, DBEidCadFornNf, DBEidNfProdutor,
                                   DBEnrSerieProdutor, DBEqtProdutoN], 'spGeraNfContratoCompra', '') do
  begin
    if FieldByName('msg').AsString = 'OK' then
    begin
      cdsNotaidDocSerie.AsString := FieldByName('idDocSerie').AsString;
      cdsNotaidNf.AsInteger := FieldByName('idNf').AsInteger;
    end; //fim do if FieldByName('msg').AsString = 'OK' then
  end; //fim do with
  cdsNota.Post;
  cdsNota.ApplyUpdates(0);

  //aqui trata o pós geração da nota... se correu tudo bem.. abrirá a tela da mesma --Utiliza EMBARQUE para aproveitamento de código
  if not Assigned(frmNotaFiscal) then
    frmNotaFiscal := TfrmNotaFiscal.create(frmPrincipal, ['EMBARQUE', DBEidEmpresa.Text, DBEidCadEmpresa.Text,
                                                           DBEidDocSerie.Text, DBEidNf.Text]);
    frmNotaFiscal.Show;

end;

procedure TFrmCadContratoCompra.BtnNovaNotaClick(Sender: TObject);
begin
  inherited;
  cdsNota.Append;
  cdsNotaidEmpresa.AsInteger := cdsPadraoidEmpresa.AsInteger;
  cdsNotaidCadEmpresa.AsInteger := cdsPadraoidCadEmpresa.AsInteger;
  cdsNotaidFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
  cdsNotaidCadFornecedor.AsInteger := cdsPadraoidCadFornecedor.AsInteger;
  cdsNotaidContratoCompra.AsString := cdsPadraoidContratoCompra.AsString;
  cdsNotaidFornNf.AsInteger := cdsPadraoidFornecedor.AsInteger;
  cdsNotaidCadFornNf.AsInteger := cdsPadraoidCadFornecedor.AsInteger;
  DBEidFornNf.SetFocus;
end;

procedure TFrmCadContratoCompra.BtnVerFinanceiroClick(Sender: TObject);
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
    if cdsFinancidTituloPag.AsInteger > 0 then
    begin
      if not Assigned(FrmCadTituloPag) then
        FrmCadTituloPag := TFrmCadTituloPag.create(Self, [cdsFinancidTituloPag.AsString]);
        FrmCadTituloPag.Show;
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

procedure TFrmCadContratoCompra.CalcConversao;
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
          cdsPadrao.FieldByName('qtSacas').AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat / FieldByName('qtSacas').AsFloat, -2)
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

procedure TFrmCadContratoCompra.CalcProduto(Sender: TObject);
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
  //  cdsPadraovlSaca.AsCurrency := RoundTo(cdsPadraovlProduto.AsFloat*qtSacaArroba, -2);
    cdsPadraovlSaca.AsCurrency := cdsPadraovlProduto.AsFloat*qtSacaArroba;

    if (trim(DBEqtProduto.Text) <> '') and (cdsPadraovlSaca.AsCurrency > 0) then
      //cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo((cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba, -2)
      cdsPadrao.FieldByName('vlTotalProduto').AsFloat := (cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba
    else
      if (trim(DBEqtProduto.Text) <> '') then
        //cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat, -2);
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat;
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
        //cdsPadraovlProduto.AsCurrency := RoundTo(cdsPadraovlSaca.AsFloat/qtSacaArroba, -4);
      cdsPadraovlProduto.AsCurrency := cdsPadraovlSaca.AsFloat/qtSacaArroba;


    if trim(DBEqtProduto.Text) <> '' then
      if (qtSacaArroba > 0) and  (cdsPadraovlSaca.AsFloat > 0) then
        //cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo((cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba, -2)
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := (cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba
      else
        //cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat, -2);
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat;
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
        //cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo((cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba, -2)
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := (cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlSaca').AsFloat)/qtSacaArroba
      else
        //cdsPadrao.FieldByName('vlTotalProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat, -2);
        cdsPadrao.FieldByName('vlTotalProduto').AsFloat := cdsPadrao.FieldByName('qtProduto').AsFloat * cdsPadrao.FieldByName('vlProduto').AsFloat;
    end;
  end
  else
  if Sender = DBEvlTotalProduto then
  begin
    if trim(DBEqtProduto.Text) <> '' then
      //cdsPadrao.FieldByName('vlProduto').AsFloat := RoundTo(cdsPadrao.FieldByName('vlTotalProduto').AsFloat / cdsPadrao.FieldByName('qtProduto').AsFloat, -4);
      cdsPadrao.FieldByName('vlProduto').AsFloat := cdsPadrao.FieldByName('vlTotalProduto').AsFloat / cdsPadrao.FieldByName('qtProduto').AsFloat;
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
      //cdsPadraovlIcmsSaca.AsFloat := RoundTo((cdsPadraovlSaca.AsFloat* cdsPadraoprIcmsSaca.AsFloat)/100, -2);
      cdsPadraovlIcmsSaca.AsFloat := (cdsPadraovlSaca.AsFloat* cdsPadraoprIcmsSaca.AsFloat)/100;

    if (cdsPadraovlIcmsSaca.AsFloat > 0) and (cdsPadraoqtSacas.AsFloat > 0) then
      cdsPadraovlIcms.AsFloat := cdsPadraovlIcmsSaca.AsFloat * cdsPadraoqtSacas.AsFloat;
  end;



  if trim(DBEvlTotalProduto.Text) <> '' then
  begin
    tpCalc := DBRGtpCalculo.Items[DBRGtpCalculo.ItemIndex];
    if tpCalc = 'Somar' then
      {cdsPadrao.FieldByName('vlContratoCompra').AsFloat := RoundTo(cdsPadrao.FieldByName('vlTotalProduto').AsFloat +
                                                        cdsPadrao.FieldByName('vlImposto').AsFloat+cdsPadrao.FieldByName('vlFrete').AsFloat+
                                                        cdsPadrao.FieldByName('vlIcms').AsFloat+cdsPadrao.FieldByName('vlIcmsFrete').AsFloat+
                                                        cdsPadrao.FieldByName('vlContribSocial').AsFloat+cdsPadrao.FieldByName('vlOutrosImp').AsFloat+
                                                        cdsPadrao.FieldByName('vlComissao').AsFloat, -2)}
      cdsPadrao.FieldByName('vlContratoCompra').AsFloat := cdsPadrao.FieldByName('vlTotalProduto').AsFloat +
                                                          cdsPadrao.FieldByName('vlImposto').AsFloat+cdsPadrao.FieldByName('vlFrete').AsFloat+
                                                          cdsPadrao.FieldByName('vlIcms').AsFloat+cdsPadrao.FieldByName('vlIcmsFrete').AsFloat+
                                                          cdsPadrao.FieldByName('vlContribSocial').AsFloat+cdsPadrao.FieldByName('vlOutrosImp').AsFloat+
                                                          cdsPadrao.FieldByName('vlComissao').AsFloat
    else
      if tpCalc = 'Subtrair' then
        {cdsPadrao.FieldByName('vlContratoCompra').AsFloat := RoundTo(cdsPadrao.FieldByName('vlTotalProduto').AsFloat -
                                                        cdsPadrao.FieldByName('vlImposto').AsFloat-cdsPadrao.FieldByName('vlFrete').AsFloat-
                                                        cdsPadrao.FieldByName('vlIcms').AsFloat-cdsPadrao.FieldByName('vlIcmsFrete').AsFloat-
                                                        cdsPadrao.FieldByName('vlContribSocial').AsFloat-cdsPadrao.FieldByName('vlOutrosImp').AsFloat-
                                                        cdsPadrao.FieldByName('vlComissao').AsFloat, -2)}
        cdsPadrao.FieldByName('vlContratoCompra').AsFloat := cdsPadrao.FieldByName('vlTotalProduto').AsFloat -
                                                             cdsPadrao.FieldByName('vlImposto').AsFloat-cdsPadrao.FieldByName('vlFrete').AsFloat-
                                                             cdsPadrao.FieldByName('vlIcms').AsFloat-cdsPadrao.FieldByName('vlIcmsFrete').AsFloat-
                                                             cdsPadrao.FieldByName('vlContribSocial').AsFloat-cdsPadrao.FieldByName('vlOutrosImp').AsFloat-
                                                             cdsPadrao.FieldByName('vlComissao').AsFloat
      else
        cdsPadrao.FieldByName('vlContratoCompra').AsFloat := cdsPadrao.FieldByName('vlTotalProduto').AsFloat;

  end;
end;

procedure TFrmCadContratoCompra.CBDBStatusChange(Sender: TObject);
begin
  inherited;
  if CBDBStatus.Text = 'PREVISÃO' then
  begin
    BtnVerFinanceiro.Visible := False;
    TabMovimento.TabVisible := False;
    TabContraNota.TabVisible := False;
  end
  else
  begin
    BtnVerFinanceiro.Visible := True;
    TabMovimento.TabVisible := True;
    TabContraNota.TabVisible := True;
  end;
end;

procedure TFrmCadContratoCompra.cdsNotaCalcFields(DataSet: TDataSet);
var
  qtNf : double;
begin
  inherited;
  if cdsNotaqtNf.Value > 0 then
  begin
    qtNf := cdsNotaqtNf.Value;
    cdsNotaqtSaldo.AsFloat := cdsPadraoqtProduto.AsFloat - qtNf;
  end
  else
    cdsNotaqtSaldo.AsFloat := cdsPadraoqtProduto.AsFloat;
end;

procedure TFrmCadContratoCompra.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('tpCobranca').AsString := 'R';
    DataSet.FieldByName('tpFinanceiro').AsString := 'A';
    DataSet.FieldByName('AFixar').AsString := 'N';
    DataSet.FieldByName('tpCalculo').AsString := '*';
  end;
end;

procedure TFrmCadContratoCompra.DBEidContratoCompraExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;

  //Busca os dados Do Romaneio Referente a esse Contrato
  if trim(DBEidContratoCompra.Text) <> '' then
  begin
    cdsRomaneio.Active := False;
    cdsRomaneio.CommandText := 'SELECT * FROM RomaneioContratoCompra WHERE idEmpresa = ' +
                               DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Field.AsString +
                               ' AND idFornecedor = ' + DBEidFornecedor.Field.AsString + ' AND idCadFornecedor = ' +
                               DBEidCadFornecedor.Field.AsString + ' AND idContratoCompra = ' +
                               QuotedStr(DBEidContratoCompra.Text);
    cdsRomaneio.Active := True;
  end;

  funcao.SomenteLeitura([DBEdtEmissao, DBEvlContratoCompra, DBEidSafra,
                         DBEidProduto, DBEvlProduto, DBEqtProduto, DBEvlTotalProduto,
                         DBEvlImposto, DBEvlFrete, DBRGtpCobranca, DBRGtpFinanceiro,
                         DBMobsContratoCompra],
                         (cdsPadrao.FieldByName('stContratoCompra').AsString = 'CANCELADO'));

  if ((cdsPadrao.FieldByName('stContratoCompra').AsString = 'ATIVO') OR
     (cdsPadrao.FieldByName('stContratoCompra').AsString = 'PREVISÃO')) then
    BtnExcluir.Visible := True
  else
    BtnExcluir.Visible := False;

  BtnVerFinanceiro.Visible := cdsPadraotpCobranca.AsString = 'C';

  CalcConversao;

  if cdsPadrao.State = dsInsert then
    if trim(DBEidFornecedor.Text) <> '' then
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadGeralConta WHERE idCadGeral = ' +
                                              funcao.RetornaValorEField(DBEidFornecedor, 3) + ' AND padrao = ' + QuotedStr('S')) do
      begin
        if not IsEmpty then
          cdsPadraoidConta.AsInteger := FieldByName('idConta').AsInteger;
      end;

end;


procedure TFrmCadContratoCompra.DBEidContratoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadContratoCompra.DBEidEmbarqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadEmbarque') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmCadContratoCompra.DBEidEmbarqueKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmCadContratoCompra.DBEidFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmCadContratoCompra.DBEidFornecedorKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmCadContratoCompra.DBEidFornNfKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with cdsNota do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idFornNf').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornNf').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidFornNf') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmCadContratoCompra.DBEidFornNfKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsNota.State in [dsEdit, dsInsert]) then
        cdsNota.Edit;
      cdsNota.FieldByName('idFornNf').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsNota.FieldByName('idCadFornNf').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmCadContratoCompra.DBEvlProdutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim((Sender as TCDBEdit).Text);
end;

procedure TFrmCadContratoCompra.DBEvlProdutoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then
    CalcProduto(Sender);
end;

procedure TFrmCadContratoCompra.DBRGtpCobrancaExit(Sender: TObject);
begin
  inherited;
  if (DBRGtpCobranca.ItemIndex = 2) and (cdsPadrao.State in [dsInsert, dsEdit]) then
  begin
    cdsPadrao.FieldByName('tpFinanceiro').AsString := 'V'; //avulso
    funcao.SomenteLeitura([DBRGtpFinanceiro], true);
  end
  else
    funcao.SomenteLeitura([DBRGtpFinanceiro], false);
end;

procedure TFrmCadContratoCompra.dsNotaStateChange(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEidFornNf, DBEidCadFornNf, DBEidNfProdutor, DBEnrSerieProdutor, DBEdtEmissaoProdutor, DBEqtProdutoN], not (cdsNota.State = dsInsert) );
  BtnDesfazer.Enabled := cdsNota.State in [dsEdit, dsInsert];
  BtnNovaNota.Enabled := not (cdsNota.State in [dsEdit, dsInsert]);
  BtnGerarNota.Enabled := cdsNota.State in [dsInsert];

end;

procedure TFrmCadContratoCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadContratoCompra := nil;
end;

procedure TFrmCadContratoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsFinanc;
  Tabelas[2] := cdsNota;

  SetLength(chave, 5);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidFornecedor;
  chave[3] := DBEidCadFornecedor;
  chave[4] := DBEidContratoCompra;
  foco := DBEidFornecedor;
  tab_chave := 'ContratoCompra';
  situacao := 'stContratoCompra';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadContratoCompra.FormShow(Sender: TObject);
begin
  inherited;
  Height := 585;
  Width := 745;
  BtnVerFinanceiro.Visible := false;
  EDUsuario.Text := frmPrincipal.idUsuario;
end;

procedure TFrmCadContratoCompra.GravaFinanceiro;
var
  sql : string;
begin
  //Teste para verificar erro ao gerar Financeiro de contrato de Compra
  if ins then
  begin
    sql := 'DELETE FROM ContratoCompraFinanc WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idFornecedor = ' + DBEidFornecedor.Field.AsString +
           ' AND idCadFornecedor = ' + DBEidCadFornecedor.Field.AsString +
           ' AND idContratoCompra = ' + QuotedStr(DBEidContratoCompra.Text);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;

  if cdsPadrao.FieldByName('tpCobranca').AsString = 'C' then //Para ser gerado o financeiro a partir do contrato
  begin
    if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'A' then
    begin
      if not Assigned(frmCadAdiantamento) then
        frmCadAdiantamento := TfrmCadAdiantamento.create(Self, ['COMPRA', cdsPadrao.FieldByName('idContratoCompra').AsString]);
        FrmCadAdiantamento.Show;
    end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
    else
      if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'T' then
      begin
        if not Assigned(FrmCadTituloPag) then
          FrmCadTituloPag := TFrmCadTituloPag.create(Self, ['CONTRATO', cdsPadrao.FieldByName('idContratoCompra').AsString]);
          FrmCadTituloPag.Show;
      end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
      else
        if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'C' then
        begin
          if not Assigned(FrmCadMovCaixa) then
            FrmCadMovCaixa := TFrmCadMovCaixa.create(Self, ['COMPRA', cdsPadrao.FieldByName('idContratoCompra').AsString]);
            FrmCadMovCaixa.Show;
        end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
        else
          if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'B' then
          begin
            if not Assigned(FrmCadMovConta) then
              FrmCadMovConta := TFrmCadMovConta.create(Self, ['COMPRA', cdsPadrao.FieldByName('idContratoCompra').AsString]);
              FrmCadMovConta.Show;
          end; //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
  end; //if cdsPadrao.FieldByName('tpCobranca').AsString = 'C' then //Para ser gerado o financeiro a partir do contrato
end;

procedure TFrmCadContratoCompra.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 2 then
  begin
    if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or
       (trim(DBEidContratoCompra.Text) = '') or (cdsPadrao.State = dsInsert) then
    begin
      messagedlg('Para gerar notas é preciso selecionar um contrato de compra gravado!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;
    BtnNovaNota.Click;
  end;

end;

end.


