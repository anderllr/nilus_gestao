unit uFrmAlteraRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, CGroupBox, DBCtrls, CDBMemo, ComCtrls,
  CPageControl, Buttons, CBitBtn, ExtCtrls, CLookUp, Mask, CDBEdit, CLabel,
  CPanelGradient, ActnList, ImgList, SqlExpr, CFind, Provider, DB, DBClient,
  System.Actions;

type
  TfrmAlteraRec = class(TForm)
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
    DBEidMovConta: TCDBEdit;
    cdsEmpresaidEmpresa: TIntegerField;
    CPanelGradient1: TCPanelGradient;
    CLabel49: TCLabel;
    DBEidMovFinanceiraM: TCDBEdit;
    LookMovFinanceiraM: TCLookUp;
    CLabel53: TCLabel;
    DBEdtTituloRecMov: TCDBEdit;
    CLabel1: TCLabel;
    DBEvlTituloRecMov: TCDBEdit;
    cdsMov: TClientDataSet;
    dsMov: TDataSource;
    cdsMovidMovFinanceira: TIntegerField;
    cdsMovdtTituloRecMov: TDateTimeField;
    cdsMovvlTituloRecMov: TCurrencyField;
    cdsMovidTituloRecMov: TIntegerField;
    DBEidTituloRecMov: TCDBEdit;
    cdsMovidTituloRec: TIntegerField;
    DBEidTituloRec: TCDBEdit;
    cdsEmpresaidCadEmpresa: TIntegerField;
    DBEidCadEmpresa: TCDBEdit;
    procedure actFecharExecute(Sender: TObject);
    procedure cdsMovContaAfterOpen(DataSet: TDataSet);
    procedure cdsMovCaixaAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEidCadEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vlAnterior : string;
    idEmpresa, idCadEmpresa : integer;
    filial : boolean;  
    vlTituloRecMov : Currency;
  end;

var
  frmAlteraRec: TfrmAlteraRec;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmPesEmpFiscal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TfrmAlteraRec.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmAlteraRec.actSalvarExecute(Sender: TObject);
var
  vlNovo : currency;
  sql : string;
begin
  vlNovo := 0;
  if cdsMovConta.Active then
    if funcao.VerificaAlteracoes([cdsMovConta]) then
    begin
      cdsMovConta.ApplyUpdates(0);
    end;

  if cdsMovCaixa.Active then
    if funcao.VerificaAlteracoes([cdsMovCaixa]) then
    begin
      cdsMovCaixa.ApplyUpdates(0);
    end;

  if cdsMovvlTituloRecMov.AsCurrency <> vlTituloRecMov then
    vlNovo := cdsMov.FieldByName('vlTituloRecMov').Value;

  if vlNovo > 0 then
  begin
    sql := 'UPDATE TituloRecMov SET vlTituloRecMov = ' + FloatToStr(vlNovo) +
           ' WHERE idTituloRecMov = ' + DBEidTituloRecMov.Text;
    dmPadrao.dbConexao.ExecuteDirect(sql);
    frmPrincipal.ExecutaSQLRet([DBEidTituloRec], 'spVerStatusTRec', '');
  end;
end;

procedure TfrmAlteraRec.cdsMovCaixaAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TfrmAlteraRec.cdsMovContaAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TfrmAlteraRec.DBEidCadEmpresaKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmAlteraRec.FormClose(Sender: TObject; var Action: TCloseAction);
var
  salva : boolean;
begin
  salva := false;
  if cdsMovConta.Active then
    if cdsMovConta.State in [dsInsert, dsEdit] then
      salva := true;

  if cdsMovCaixa.Active then
    if cdsMovCaixa.State in [dsInsert, dsEdit] then
      salva := true;

  if salva then
    if messagedlg('Deseja sair sem salvar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    begin
      Action := caNone;
      exit;
    end;    
  Action := caFree;
end;

procedure TfrmAlteraRec.FormCreate(Sender: TObject);
begin
  cdsMov.CreateDataSet;
  cdsMov.Append;
end;

procedure TfrmAlteraRec.FormShow(Sender: TObject);
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

  //verifica se o Recebimento foi feito pelo banco
  sql := Format('SELECT * FROM MovContaTit WHERE idTituloRecMov = %s', [funcao.RetornaValorEField(DBEidTituloRecMov, 3)]);
  idMovConta := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idMovConta').AsInteger;
  if idMovConta > 0 then
  begin
    cdsMovConta.CommandText := Format('SELECT * FROM MovConta WHERE idMovConta = %s', [IntToStr(idMovConta)]);
    cdsMovConta.Active := true;
    Height := 375;
  end
  else
  begin
//    TabBanco.Hide;
    TabBanco.TabVisible := false;
  end;


  //verifica se o Recebimento foi feito pelo caixa
  sql := Format('SELECT * FROM MovCaixaTit WHERE idTituloRecMov = %s', [funcao.RetornaValorEField(DBEidTituloRecMov, 3)]);
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

  Width := 607;

  vlTituloRecMov := cdsMovvlTituloRecMov.AsCurrency;
end;

end.
