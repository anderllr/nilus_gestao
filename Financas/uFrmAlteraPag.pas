unit uFrmAlteraPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, CGroupBox, DBCtrls, CDBMemo, ComCtrls,
  CPageControl, Buttons, CBitBtn, ExtCtrls, CLookUp, Mask, CDBEdit, CLabel,
  CPanelGradient, ActnList, ImgList, SqlExpr, CFind, Provider, DB, DBClient,
  System.Actions, System.ImageList;

type
  TfrmAlteraPag = class(TForm)
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    FindEmpresa: TCFind;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    FindMovFinanceira: TCFind;
    FindCaixa: TCFind;
    FindConta: TCFind;
    FindMovFinanceiraC: TCFind;
    FindBanco: TCFind;
    sdsMovCaixa: TSQLDataSet;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    dsMovCaixa: TDataSource;
    dsMovConta: TDataSource;
    cdsMovConta: TClientDataSet;
    dspMovConta: TDataSetProvider;
    sdsMovConta: TSQLDataSet;
    ImgBotoes: TImageList;
    imgIcones: TImageList;
    Acao: TActionList;
    actFechar: TAction;
    actExecutar: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    actNovo: TAction;
    actExcluir2: TAction;
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    Bevel2: TBevel;
    PanBotoes: TCPanelGradient;
    BtnSalvar: TCBitBtn;
    BtnFechar: TCBitBtn;
    PagAbas: TCPageControl;
    TabCaixa: TTabSheet;
    CLabel43: TCLabel;
    CLabel35: TCLabel;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    DBEidMovCaixa: TCDBEdit;
    DBMdescMovCaixa: TCDBMemo;
    DBEidMovFinanceira: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    CBitBtn3: TCBitBtn;
    LookSinal: TCLookUp;
    CBitBtn1: TCBitBtn;
    LookCaixa: TCLookUp;
    DBEidCaixa: TCDBEdit;
    DBEvlMovCaixa: TCDBEdit;
    TabBanco: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel47: TCLabel;
    CLabel46: TCLabel;
    CLabel48: TCLabel;
    CLabel45: TCLabel;
    CLabel44: TCLabel;
    CLabel32: TCLabel;
    DBMdescMovConta: TCDBMemo;
    DBEidMovFinanceiraC: TCDBEdit;
    LookMovFinanceiraBCO: TCLookUp;
    CLookUp2: TCLookUp;
    CBitBtn2: TCBitBtn;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    DBEidConta: TCDBEdit;
    DBEvlMovConta: TCDBEdit;
    DBEdtCompensacao: TCDBEdit;
    DBEdtMovConta: TCDBEdit;
    CGroupBox4: TCGroupBox;
    CLabel9: TCLabel;
    CLabel37: TCLabel;
    DBEidCheque: TCDBEdit;
    DBEdtVencimento: TCDBEdit;
    DBEidMovConta: TCDBEdit;
    cdsEmpresaidEmpresa: TIntegerField;
    CPanelGradient1: TCPanelGradient;
    CLabel49: TCLabel;
    DBEidMovFinanceiraM: TCDBEdit;
    LookMovFinanceiraM: TCLookUp;
    CLabel53: TCLabel;
    DBEdtTituloPagMov: TCDBEdit;
    CLabel1: TCLabel;
    DBEvlTituloPagMov: TCDBEdit;
    cdsMov: TClientDataSet;
    dsMov: TDataSource;
    cdsMovidMovFinanceira: TIntegerField;
    cdsMovdtTituloPagMov: TDateTimeField;
    cdsMovvlTituloPagMov: TCurrencyField;
    cdsMovidTituloPagMov: TIntegerField;
    DBEidTituloPagMov: TCDBEdit;
    cdsMovidTituloPag: TIntegerField;
    DBEidTituloPag: TCDBEdit;
    cdsEmpresaidCadEmpresa: TIntegerField;
    DBEidCadEmpresa: TCDBEdit;
    DBEdtCancelamento: TCDBEdit;
    CLabel3: TCLabel;
    procedure cdsMovCaixaAfterEdit(DataSet: TDataSet);
    procedure actFecharExecute(Sender: TObject);
    procedure cdsMovContaAfterOpen(DataSet: TDataSet);
    procedure cdsMovCaixaAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidChequeExit(Sender: TObject);
    procedure DBEidChequeEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vlAnterior : string;
    idEmpresa, idCadEmpresa : integer;
    filial : boolean;
    vlTituloPagMov : currency;
  end;

var
  frmAlteraPag: TfrmAlteraPag;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmPesEmpFiscal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TfrmAlteraPag.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmAlteraPag.actSalvarExecute(Sender: TObject);
var
  vlNovo : currency;
  sql : string;
begin
  vlNovo := 0;
  if cdsMovConta.Active then
    if funcao.VerificaAlteracoes([cdsMovConta]) then
    begin
      cdsMovConta.ApplyUpdates(0);
      BtnSalvar.Enabled := false;
    end;

  if cdsMovCaixa.Active then
    if funcao.VerificaAlteracoes([cdsMovCaixa]) then
    begin
      cdsMovCaixa.ApplyUpdates(0);
      BtnSalvar.Enabled := false;
    end;

  if cdsMovvlTituloPagMov.AsCurrency <> vlTituloPagMov then
    vlNovo := cdsMov.FieldByName('vlTituloPagMov').Value;

  if vlNovo > 0 then
  begin
    sql := 'UPDATE TituloPagMov SET vlTituloPagMov = ' + FloatToStr(vlNovo) +
           ' WHERE idTituloPagMov = ' + funcao.RetornaValorEField(DBEidTituloPagMov, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);
    frmPrincipal.ExecutaSQLRet([DBEidTituloPag], 'spVerStatusTPag', '');
  end;

  if TabBanco.Visible then
    if trim(DBEdtCancelamento.Text) <> '' then
      if messagedlg('Deseja realmente cancelar o Cheque?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidMovConta, DBEdtCancelamento], 'spEstornaTituloPagMov') then
        begin
          frmPrincipal.ExecutaSQLRet([DBEidTituloPag], 'spVerStatusTPag', '');
          close;
        end;
      end;
  close;
end;

procedure TfrmAlteraPag.cdsMovCaixaAfterEdit(DataSet: TDataSet);
begin
  btnSalvar.Enabled := true;  
end;

procedure TfrmAlteraPag.cdsMovCaixaAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TfrmAlteraPag.cdsMovContaAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TfrmAlteraPag.DBEidChequeEnter(Sender: TObject);
begin
  vlAnterior := DBEidCheque.Text;
end;

procedure TfrmAlteraPag.DBEidChequeExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if trim(DBEidCheque.Text) = '' then
    exit;

  if vlAnterior <> DBEidCheque.Text then
  begin
    if trim(DBEidConta.Text) = '' then
    begin
      messagedlg('Você deve informar a conta!', mtwarning, [mbok], 0);
      DBEidConta.SetFocus;
      exit;
    end;
    sql := 'SELECT COUNT(*) qtde FROM MovConta WHERE idCheque IS NOT NULL AND idConta = ' +
            DBEidConta.Text + ' AND idCheque = ' + DBEidCheque.Text;

    if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger > 0 then
    begin
      messagedlg('Cheque já existente!', mtwarning, [mbok], 0);
      cdsMovConta.FieldByName('idCheque').Clear;
      DBEidCheque.SetFocus;
      exit;
    end;
  end;
end;

procedure TfrmAlteraPag.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F4 then
  begin
    if filial then
    begin
      Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
      FrmPesEmpFiscal.ShowModal;
      with cdsEmpresa do
      begin
        if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
          FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
          DBEidCadEmpresa.SetFocus;
        end;
      end;
    end  // FIM DO IF FILIAL
    else
    begin
      Application.CreateForm(TFrmPesEmpContabil, FrmPesEmpContabil);
      FrmPesEmpContabil.ShowModal;
      with cdsEmpresa do
      begin
        if not (FrmPesEmpContabil.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpContabil.cdsGrid.FieldByName('idEmpresa').Value;
          DBEidEmpresa.SetFocus;
        end;
      end;
    end; // fim do else
  end; // fim do VK_F4
end;

procedure TfrmAlteraPag.FormClose(Sender: TObject; var Action: TCloseAction);
//var
//  salva : boolean;
begin
//  salva := false;
//  if cdsMovConta.Active then
//    if cdsMovConta.State in [dsInsert, dsEdit] then
//      salva := true;
//
//  if cdsMovCaixa.Active then
//    if cdsMovCaixa.State in [dsInsert, dsEdit] then
//      salva := true;
//
//  if salva then
//    if messagedlg('Deseja sair sem salvar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
//    begin
//      Action := caNone;
//      exit;
//    end;
  Action := caFree;
end;

procedure TfrmAlteraPag.FormCreate(Sender: TObject);
begin
  cdsMov.CreateDataSet;
  cdsMov.Append;
end;

procedure TfrmAlteraPag.FormShow(Sender: TObject);
var
  sql : string;
  idMovConta, idMovCaixa : integer;
begin
  cdsEmpresa.CreateDataSet;
  cdsEmpresa.Append;
  cdsEmpresaidEmpresa.Value := idEmpresa;
  cdsEmpresaidCadEmpresa.Value := idCadEmpresa;

  filial := true;
  if frmPrincipal.modulo = 'FIN' then //verificação se está vindo do financeiro para a possibilidade de lançar por filial
  begin
    filial := false;
    cdsLookup.Active := false;
    cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
    cdsLookup.Active := true;
    filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
    if not filial then
    begin
      DBEidCadEmpresa.Visible := false;
      LookdescCadEmpresa.Left := 111;
      LookdescAbreviada.Left := 311;
      lookidCnpjCpf.Left := 461;
    end;
  end;

  cdsMovConta.Active := false;
  cdsMovCaixa.Active := false;

  //verifica se o pagamento foi feito pelo banco
  sql := Format('SELECT * FROM MovContaTit WHERE idTituloPagMov = %s', [funcao.RetornaValorEField(DBEidTituloPagMov, 3)]);
  idMovConta := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idMovConta').AsInteger;
  if idMovConta > 0 then
  begin
    cdsMovConta.CommandText := Format('SELECT * FROM MovConta WHERE idMovConta = %s', [IntToStr(idMovConta)]);
    cdsMovConta.Active := true;
    funcao.SomenteLeitura([DBEidCheque, DBEdtVencimento, DBEdtCancelamento], trim(DBEidCheque.Text) = '');
    funcao.SomenteLeitura([DBEdtCancelamento], trim(DBEdtCompensacao.Text) <> '');
    Height := 375;
  end
  else
  begin
//    TabBanco.Hide;
    TabBanco.TabVisible := false;
  end;


  //verifica se o pagamento foi feito pelo caixa
  sql := Format('SELECT * FROM MovCaixaTit WHERE idTituloPagMov = %s', [funcao.RetornaValorEField(DBEidTituloPagMov, 3)]);
  idMovCaixa := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idMovCaixa').AsInteger;
  if idMovCaixa > 0 then
  begin
//    TabCaixa.TabVisible := true;
    cdsMovCaixa.CommandText := Format('SELECT * FROM MovCaixa WHERE idMovCaixa = %s', [IntToStr(idMovCaixa)]);
    cdsMovCaixa.Active := true;
    Height := 339;
  end
  else
  begin
//    TabCaixa.Hide;
    TabCaixa.TabVisible := false;
  end;

  vlTituloPagMov := cdsMovvlTituloPagMov.AsCurrency;
  Width := 607;
end;

end.
