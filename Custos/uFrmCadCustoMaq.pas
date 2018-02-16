unit uFrmCadCustoMaq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, FMTBcd, DB, SqlExpr, Grids, DBGrids, CDBGrid,
  StdCtrls, DBCtrls, CDBMemo, CGroupBox, CFind, Provider, DBClient, ActnList,
  ImgList, CLookUp, Mask, CDBEdit, CLabel, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, ComCtrls, CPageControl,DBXCommon, EditAlign, CEdit;

type
  TFrmCadCustoMaq = class(TFrmCadPadraoEmpCont)
    GrpAplicacao: TCGroupBox;
    CLabel4: TCLabel;
    CLabel9: TCLabel;
    CLabel13: TCLabel;
    CLabel23: TCLabel;
    CLabel3: TCLabel;
    CLabel8: TCLabel;
    CLabel10: TCLabel;
    DBEstCustoMaq: TCDBEdit;
    DBEidCustoMaq: TCDBEdit;
    DBEdtCustoMaq: TCDBEdit;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEidBem: TCDBEdit;
    CLookUp2: TCLookUp;
    DBMobsCustoMaq: TCDBMemo;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CBitBtn2: TCBitBtn;
    TSProduto: TTabSheet;
    CGroupBox2: TCGroupBox;
    CLabel7: TCLabel;
    CLabel16: TCLabel;
    CLabel11: TCLabel;
    CLabel1: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProdMedida: TCLookUp;
    DBEqtCustoMaq: TCDBEdit;
    DBEvlTotal: TCDBEdit;
    CGroupBox14: TCGroupBox;
    CGroupBox12: TCGroupBox;
    CLabel14: TCLabel;
    BtnSalvarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnExcluirProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    DBEvlTotalProd: TCDBEdit;
    FindSafra: TCFind;
    FindProduto: TCFind;
    FindProdDeposito: TCFind;
    cdsCustoMaqProd: TClientDataSet;
    cdsCustoMaqProdvlTotalProd: TAggregateField;
    dsCustoMaqProd: TDataSource;
    dspCustoMaqProd: TDataSetProvider;
    sdsCustoMaqProd: TSQLDataSet;
    FindBem: TCFind;
    CBitBtn1: TCBitBtn;
    cdsCustoMaqProdvlTotal: TCurrencyField;
    cdsProduto: TClientDataSet;
    sdspadrao: TSQLDataSet;
    DBProdutos: TCDBGrid;
    LookProduto: TCLookUp;
    cdsCustoMaqProddescProduto: TStringField;
    DBEvlCustoMaq: TCDBEdit;
    FindCustoMaq: TCFind;
    cdsCustoMaqProdidEmpresa: TIntegerField;
    cdsCustoMaqProdidCustoMaq: TIntegerField;
    cdsCustoMaqProdidProduto: TIntegerField;
    cdsCustoMaqProdqtCustoMaq: TFMTBCDField;
    cdsCustoMaqProdvlCustoMaq: TFMTBCDField;
    procedure TabAbasShow(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsCustoMaqProdCalcFields(DataSet: TDataSet);
    procedure DBEidCustoMaqExit(Sender: TObject);
    procedure dsCustoMaqProdStateChange(Sender: TObject);
    procedure dspCustoMaqProdAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure BtnSalvarProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCustoMaq: TFrmCadCustoMaq;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao, uFrmPadrao;

{$R *.dfm}
procedure TFrmCadCustoMaq.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
begin

//*****************************************************************************
//   REGRA ESPECIFICA DESTE CADASTRO
//*****************************************************************************
  if cdsCustoMaqProd.IsEmpty then
  begin
    messagedlg('Os produtos não foram Registrados!', mterror, [mbok], 0);
    exit;
  end;

//*****************************************************************************
//   FINAL DA REGRA ESPECIFICA DESTE CADASTRO
//*****************************************************************************

  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    GravaChave(1, '', nil);
    inherited;
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp,
          [DBEidEmpresa, DBEidCustoMaq, DBEidProdDeposito], 'spFechaCustoMaq');
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
    dmPadrao.dbConexao.CommitFreeAndNil(t)
  else
  begin
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  end;
end;

procedure TFrmCadCustoMaq.BtnSalvarProdClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCustoMaqProd, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd, (Sender as TCBitBtn), 'idProduto');
  DBEidProduto.SetFocus; 
end;

procedure TFrmCadCustoMaq.cdsCustoMaqProdCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInternalCalc then
    cdsCustoMaqProdvlTotal.AsCurrency := cdsCustoMaqProdqtCustoMaq.AsFloat * cdsCustoMaqProdvlCustoMaq.AsFloat;
end;

procedure TFrmCadCustoMaq.DBEidCustoMaqExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
  AbreTabSecundaria;
end;

procedure TFrmCadCustoMaq.dsCustoMaqProdStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarProd, BtnCancelarProd, BtnExcluirProd, BtnNovoProd);
end;

procedure TFrmCadCustoMaq.dspCustoMaqProdAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadCustoMaq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadCustoMaq := nil;
end;

procedure TFrmCadCustoMaq.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCustoMaqProd;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCustoMaq;
  foco := DBEidCustoMaq;
  tab_chave := 'CustoMaq';
  situacao := 'stCustoMaq';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindCustoMaq;
end;

procedure TFrmCadCustoMaq.FormShow(Sender: TObject);
begin
  inherited;
  Height := 347;
  Width := 615;
end;

procedure TFrmCadCustoMaq.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 335;
    Width := 615;
    DBEidCustoMaq.SetFocus;
  end
  else
  if PagAbas.ActivePageIndex = 1 then
  begin
    Height := 469;
    Width := 620;
    DBEidProduto.SetFocus;
    if trim(DBEidProdDeposito.text) = '' then
    begin
      messagedlg('Informe uma Manutenção !', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      DBEidCustoMaq.SetFocus;
      exit;
    end;
  end;

end;

procedure TFrmCadCustoMaq.TabAbasShow(Sender: TObject);
begin
  inherited;
  Height := 335;
  Width := 615;
  DBEidCustoMaq.SetFocus;
end;

end.
