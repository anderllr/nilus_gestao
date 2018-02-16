unit uFrmCadConfigFinanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CDBMemo, CGroupBox, FMTBcd,
  SqlExpr, EditAlign, CEdit, DBXCommon, CDBCheckBox, cxShellBrowserDialog,
  CCheckBox, System.Actions, cxClasses, System.ImageList;

type
  TFrmCadConfigFinanc = class(TFrmCadPadraoEmpCont)
    FindBanco: TCFind;
    FindIndice: TCFind;
    FindMovFinanceira: TCFind;
    FindRateio: TCFind;
    FindSafra: TCFind;
    CGroupBox1: TCGroupBox;
    CLabel8: TCLabel;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel21: TCLabel;
    CLabel22: TCLabel;
    CLabel23: TCLabel;
    DBEidBanco: TCDBEdit;
    LookBanco: TCLookUp;
    DBEidMovFinanceira: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    DBEidGerencial: TCDBEdit;
    DBEprMulta: TCDBEdit;
    DBEprJuros: TCDBEdit;
    DBEprDesconto: TCDBEdit;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    LookLancamento: TCLookUp;
    CBitBtn1: TCBitBtn;
    CBitBtn2: TCBitBtn;
    CBitBtn4: TCBitBtn;
    CBitBtn5: TCBitBtn;
    CBitBtn6: TCBitBtn;
    LookGerenciaR: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    CLabel1: TCLabel;
    DBEidResultado: TCDBEdit;
    sdsConfigFinancRec: TSQLDataSet;
    FindGerencial: TCFind;
    TabPagar: TTabSheet;
    sdsConfigFinancPag: TSQLDataSet;
    dspConfigFinancPag: TDataSetProvider;
    cdsConfigFinancPag: TClientDataSet;
    dsConfigFinancPag: TDataSource;
    CGroupBox2: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel20: TCLabel;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLabel26: TCLabel;
    DBEidBancoP: TCDBEdit;
    LookBancoP: TCLookUp;
    DBEidMovFinanceiraP: TCDBEdit;
    LookMovFinanceiraP: TCLookUp;
    DBEidRateioP: TCDBEdit;
    LookRateioP: TCLookUp;
    DBEidGerencialP: TCDBEdit;
    DBEprMultaP: TCDBEdit;
    DBEprJurosP: TCDBEdit;
    DBEprDescontoP: TCDBEdit;
    DBEidIndiceP: TCDBEdit;
    LookIndiceP: TCLookUp;
    LookLancamentoP: TCLookUp;
    CBitBtn8: TCBitBtn;
    CBitBtn9: TCBitBtn;
    CBitBtn11: TCBitBtn;
    CBitBtn12: TCBitBtn;
    CBitBtn13: TCBitBtn;
    LookGerencialP: TCLookUp;
    DBEidSafraP: TCDBEdit;
    LookSafraP: TCLookUp;
    CBitBtn14: TCBitBtn;
    DBEidResultadoP: TCDBEdit;
    TabConsulta: TTabSheet;
    CGroupBox3: TCGroupBox;
    Cores: TColorDialog;
    sdsConfigFinancCons: TSQLDataSet;
    dspConfigFinancCons: TDataSetProvider;
    cdsConfigFinancCons: TClientDataSet;
    dsConfigFinancCons: TDataSource;
    CLabel28: TCLabel;
    BtnSelCorTREC: TCBitBtn;
    CLabel30: TCLabel;
    BtnSelCorTPAG: TCBitBtn;
    CLabel29: TCLabel;
    BtnSelCorPREC: TCBitBtn;
    CLabel32: TCLabel;
    BtnSelCorPPAG: TCBitBtn;
    EdCorTPAG: TCEdit;
    EdCorTREC: TCEdit;
    EdCorPREC: TCEdit;
    EdCorPPAG: TCEdit;
    CLabel31: TCLabel;
    BtnSelCorREC: TCBitBtn;
    CLabel33: TCLabel;
    BtnSelCorPAG: TCBitBtn;
    EdCorREC: TCEdit;
    EdCorPag: TCEdit;
    FindMovFinanceiraRec: TCFind;
    TabGeral: TTabSheet;
    CGroupBox4: TCGroupBox;
    CLabel34: TCLabel;
    DBEmascaraGer: TCDBEdit;
    sdsConfigFinanc: TSQLDataSet;
    dspConfigFinanc: TDataSetProvider;
    cdsConfigFinanc: TClientDataSet;
    dsConfigFinanc: TDataSource;
    LookResultado: TCLookUp;
    FindResultado: TCFind;
    FindGerenciaP: TCFind;
    FindGerencialR: TCFind;
    CLookUp1: TCLookUp;
    TabRecebimento: TTabSheet;
    CGroupBox5: TCGroupBox;
    CLabel6: TCLabel;
    DBEidMovRecCaixaTit: TCDBEdit;
    CLookUp3: TCLookUp;
    CLabel3: TCLabel;
    DBEidMovRecCaixa: TCDBEdit;
    CLookUp2: TCLookUp;
    CLabel11: TCLabel;
    DBEidMovRecContaTit: TCDBEdit;
    CLookUp4: TCLookUp;
    CLabel27: TCLabel;
    DBEidMovRecConta: TCDBEdit;
    CLookUp5: TCLookUp;
    CLabel35: TCLabel;
    DBEidMovRecChequeTit: TCDBEdit;
    CLookUp6: TCLookUp;
    TabPagamento: TTabSheet;
    CGroupBox6: TCGroupBox;
    CLabel37: TCLabel;
    CLabel38: TCLabel;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    CLabel41: TCLabel;
    CLabel42: TCLabel;
    DBEidMovPagCaixaTit: TCDBEdit;
    CLookUp8: TCLookUp;
    DBEidMovPagCaixa: TCDBEdit;
    CLookUp9: TCLookUp;
    DBEidMovPagContaTit: TCDBEdit;
    CLookUp10: TCLookUp;
    DBEidMovPagConta: TCDBEdit;
    CLookUp11: TCLookUp;
    DBEidMovPagChequeTit: TCDBEdit;
    CLookUp12: TCLookUp;
    DBEidMovPagCheque: TCDBEdit;
    CLookUp13: TCLookUp;
    sdsConfigMovRec: TSQLDataSet;
    dspConfigMovRec: TDataSetProvider;
    cdsConfigMovRec: TClientDataSet;
    dsConfigMovRec: TDataSource;
    sdsConfigMovPag: TSQLDataSet;
    dspConfigMovPag: TDataSetProvider;
    cdsConfigMovPag: TClientDataSet;
    dsConfigMovPag: TDataSource;
    FindMov: TCFind;
    CLabel36: TCLabel;
    DBEidMovRecDescontoTit: TCDBEdit;
    CLookUp7: TCLookUp;
    CLabel43: TCLabel;
    DBEidMovRecJurosTit: TCDBEdit;
    CLookUp14: TCLookUp;
    CLabel44: TCLabel;
    DBEidMovPagDescontoTit: TCDBEdit;
    CLookUp15: TCLookUp;
    CLabel45: TCLabel;
    DBEidMovPagJurosTit: TCDBEdit;
    CLookUp16: TCLookUp;
    DBCKlancafilial: TCDBCheckBox;
    AbrePasta: TcxShellBrowserDialog;
    CLabel2: TCLabel;
    EDCaminho: TCEdit;
    BtnRelatorios: TCBitBtn;
    DBCKimpRecibo: TCDBCheckBox;
    CKfixa_caminho: TCCheckBox;
    DBCKreplicaArmazem: TCDBCheckBox;
    DBCKcadastroFaixa: TCDBCheckBox;
    DBEidCadIni: TCDBEdit;
    CLabel46: TCLabel;
    CLabel47: TCLabel;
    DBEidCadFim: TCDBEdit;
    DBCKfornecedor: TCDBCheckBox;
    DBCKserie: TCDBCheckBox;
    DBCKcotacaoautomatica: TCDBCheckBox;
    DBCKcotacaovencimento: TCDBCheckBox;
    procedure BtnSelCorPAGClick(Sender: TObject);
    procedure DBEidMovRecCaixaTitEnter(Sender: TObject);
    procedure DBEmascaraGerExit(Sender: TObject);
    procedure DBEmascaraGerKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSelCorRECClick(Sender: TObject);
    procedure BtnSelCorPPAGClick(Sender: TObject);
    procedure BtnSelCorPRECClick(Sender: TObject);
    procedure BtnSelCorTPAGClick(Sender: TObject);
    procedure BtnSelCorTRECClick(Sender: TObject);
    procedure cdsConfigFinancPagAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure LookLancamentoSetText(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure AtribuiCor;
    procedure GravaNivel;
    procedure BtnRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
    caminho_rel : string;
  public
    { Public declarations }
  end;

var
  FrmCadConfigFinanc: TFrmCadConfigFinanc;

implementation

uses uFrmCadPadrao, uFuncao, uDmPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmCadConfigFinanc.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  fixa_caminho : string;
begin
// Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  if cdsConfigFinanc.FieldByName('cadastroFaixa').AsString = 'S' then
  begin
    if ((cdsConfigFinanc.FieldByName('idCadIni').IsNull) or (cdsConfigFinanc.FieldByName('idCadIni').AsInteger = 0)) or
        (cdsConfigFinanc.FieldByName('idCadFim').IsNull) or (cdsConfigFinanc.FieldByName('idCadFim').AsInteger = 0) then
    begin
       messagedlg('Se marque que vai usar faixa, você deve informar as faixas de cadastro!', mtwarning, [mbok], 0);
       exit;
    end;

  end;
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if not (cdsConfigFinancCons.State in [dsInsert, dsEdit]) then
      cdsConfigFinancCons.Edit;
    with cdsConfigFinancCons do
    begin
      FieldByName('CorTREC').AsString := ColorToString(EdCorTREC.Color);
      FieldByName('CorTPAG').AsString := ColorToString(EdCorTPAG.Color);
      FieldByName('CorPREC').AsString := ColorToString(EdCorPREC.Color);
      FieldByName('CorPPAG').AsString := ColorToString(EdCorPPAG.Color);
      FieldByName('CorREC').AsString := ColorToString(EdCorREC.Color);
      FieldByName('CorPAG').AsString := ColorToString(EdCorPAG.Color);
      Post;
    end;

    if cdsConfigFinanc.State in [dsInsert, dsEdit] then
    begin
      if not DBEmascaraGer.ReadOnly then
        GravaNivel;
      cdsConfigFinanc.Post;
    end;
    if cdsConfigFinancPag.State in [dsInsert, dsEdit] then
      cdsConfigFinancPag.Post;

    if cdsConfigMovRec.State in [dsInsert, dsEdit] then
    begin
      cdsConfigMovRec.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
      cdsConfigMovRec.Post;
    end;

    if cdsConfigMovPag.State in [dsInsert, dsEdit] then
    begin
      cdsConfigMovPag.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
      cdsConfigMovPag.Post;
    end;
    if CKfixa_caminho.Checked then
      fixa_caminho := 'S'
    else
      fixa_caminho := 'N';
    dmPadrao.dbConexao.ExecuteDirect('UPDATE CadConfig SET caminho_rel = ' + QuotedStr(EDCaminho.Text) +
                                     ', fixa_caminho = ' + QuotedStr(fixa_caminho));

    GravaChave(0, '', nil);
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
    caminho_rel := EDCaminho.Text;
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
end;

procedure TFrmCadConfigFinanc.AtribuiCor;
begin
  with cdsConfigFinancCons do
  begin
    if trim(FieldByName('CorTREC').AsString) <> '' then
      EdCorTREC.Color := StringToColor(FieldByName('CorTREC').AsString)
    else
      EdCorTREC.Color := clWhite;
    if trim(FieldByName('CorTPAG').AsString) <> '' then
      EdCorTPAG.Color := StringToColor(FieldByName('CorTPAG').AsString)
    else
      EdCorTPAG.Color := clWhite;
    if trim(FieldByName('CorPREC').AsString) <> '' then
      EdCorPREC.Color := StringToColor(FieldByName('CorPREC').AsString)
    else
      EdCorPREC.Color := clWhite;
    if trim(FieldByName('CorPPAG').AsString) <> '' then
      EdCorPPAG.Color := StringToColor(FieldByName('CorPPAG').AsString)
    else
      EdCorPPAG.Color := clWhite;
    if trim(FieldByName('CorREC').AsString) <> '' then
      EdCorREC.Color := StringToColor(FieldByName('CorREC').AsString)
    else
      EdCorREC.Color := clWhite;
    if trim(FieldByName('CorPAG').AsString) <> '' then
      EdCorPAG.Color := StringToColor(FieldByName('CorPAG').AsString)
    else
      EdCorPAG.Color := clWhite;
  end;
end;

procedure TFrmCadConfigFinanc.BtnRelatoriosClick(Sender: TObject);
begin
  inherited;
  AbrePasta.Execute;
  if AbrePasta.Path <> '' then
  begin
    EDCaminho.Text := AbrePasta.Path + '\';
    if EDCaminho.Text <> caminho_rel then
      cdsPadrao.Edit;
  end;
end;

procedure TFrmCadConfigFinanc.BtnSelCorPAGClick(Sender: TObject);
begin
  inherited;
  Cores.Color := EdCorPAG.Color;
  Cores.Execute;
  if EdCorPAG.Color <> Cores.Color then
    if not (cdsConfigFinancCons.State in [dsInsert, dsEdit]) then
      cdsConfigFinancCons.Edit;
  EdCorPAG.Color := Cores.Color;
end;

procedure TFrmCadConfigFinanc.BtnSelCorPPAGClick(Sender: TObject);
begin
  inherited;
  Cores.Color := EdCorPPAG.Color;
  Cores.Execute;
  if EdCorPPAG.Color <> Cores.Color then
    if not (cdsConfigFinancCons.State in [dsInsert, dsEdit]) then
      cdsConfigFinancCons.Edit;

  EdCorPPAG.Color := Cores.Color;
end;

procedure TFrmCadConfigFinanc.BtnSelCorPRECClick(Sender: TObject);
begin
  inherited;
  Cores.Color := EdCorPREC.Color;
  Cores.Execute;
  if EdCorPREC.Color <> Cores.Color then
    if not (cdsConfigFinancCons.State in [dsInsert, dsEdit]) then
      cdsConfigFinancCons.Edit;
  EdCorPREC.Color := Cores.Color;
end;

procedure TFrmCadConfigFinanc.BtnSelCorRECClick(Sender: TObject);
begin
  inherited;
  Cores.Color := EdCorREC.Color;
  Cores.Execute;
  if EdCorREC.Color <> Cores.Color then
    if not (cdsConfigFinancCons.State in [dsInsert, dsEdit]) then
      cdsConfigFinancCons.Edit;
  EdCorREC.Color := Cores.Color;
end;

procedure TFrmCadConfigFinanc.BtnSelCorTPAGClick(Sender: TObject);
begin
  inherited;
  Cores.Color := EdCorTPAG.Color;
  Cores.Execute;
  if EdCorTPAG.Color <> Cores.Color then
    if not (cdsConfigFinancCons.State in [dsInsert, dsEdit]) then
      cdsConfigFinancCons.Edit;
  EdCorTPAG.Color := Cores.Color;
end;

procedure TFrmCadConfigFinanc.BtnSelCorTRECClick(Sender: TObject);
begin
  inherited;
  Cores.Color := EdCorTREC.Color;
  Cores.Execute;
  if EdCorTREC.Color <> Cores.Color then
    if not (cdsConfigFinancCons.State in [dsInsert, dsEdit]) then
      cdsConfigFinancCons.Edit;
  EdCorTRec.Color := Cores.Color;
end;

procedure TFrmCadConfigFinanc.cdsConfigFinancPagAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cdsConfigFinancPag.State in [dsInsert] then
    cdsConfigFinancPag.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  if cdsConfigFinancCons.State in [dsInsert] then
    cdsConfigFinancCons.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  if cdsConfigFinanc.State in [dsInsert] then
  begin
    cdsConfigFinanc.FieldByName('replicafornecedor').AsString := 'N';
    cdsConfigFinanc.FieldByName('replicaserie').AsString := 'N';
    cdsConfigFinanc.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    cdsConfigFinanc.FieldByName('replicaArmazem').AsString := 'N';
    cdsConfigFinanc.FieldByName('cadastroFaixa').AsString := 'N';
    cdsConfigFinanc.FieldByName('cotacaoautomatica').AsString := 'N';
    cdsConfigFinanc.FieldByName('cotacaovencimento').AsString := 'N';
  end;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadConfigFinanc.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
end;

procedure TFrmCadConfigFinanc.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
  AbreTabSecundaria;
  if cdsConfigFinancCons.IsEmpty then
    cdsConfigFinancCons.Append;
  AtribuiCor;
//  funcao.SomenteLeitura([DBEmascaraGer], not frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'Gerencial').IsEmpty);  
end;

procedure TFrmCadConfigFinanc.DBEidMovRecCaixaTitEnter(Sender: TObject);
var
  idMovOrigem, idTpMovFinanceira, sinal : string;
begin
  inherited;
  //RECEBIMENTOS
  if (Sender as TCDBEdit).Name = 'DBEidMovRecCaixaTit' then
  begin
    idMovOrigem := '1';
    idTpMovFinanceira := '2';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovRecCaixa' then
  begin
    idMovOrigem := '3';
    idTpMovFinanceira := '6';
    sinal := '+';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovRecContaTit' then
  begin
    idMovOrigem := '1';
    idTpMovFinanceira := '9';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovRecConta' then
  begin
    idMovOrigem := '4';
    idTpMovFinanceira := '7';
    sinal := '+';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovRecChequeTit' then
  begin
    idMovOrigem := '1';
    idTpMovFinanceira := '10';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovRecDescontoTit' then
  begin
    idMovOrigem := '1';
    idTpMovFinanceira := '11';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovRecJurosTit' then
  begin
    idMovOrigem := '1';
    idTpMovFinanceira := '3';
    sinal := '+';
  end;

  //PAGAMENTOS
  if (Sender as TCDBEdit).Name = 'DBEidMovPagCaixaTit' then
  begin
    idMovOrigem := '2';
    idTpMovFinanceira := '2';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovPagCaixa' then
  begin
    idMovOrigem := '3';
    idTpMovFinanceira := '6';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovPagContaTit' then
  begin
    idMovOrigem := '2';
    idTpMovFinanceira := '9';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovPagConta' then
  begin
    idMovOrigem := '4';
    idTpMovFinanceira := '7';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovPagChequeTit' then
  begin
    idMovOrigem := '2';
    idTpMovFinanceira := '10';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovPagCheque' then
  begin
    idMovOrigem := '4';
    idTpMovFinanceira := '8';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovPagDescontoTit' then
  begin
    idMovOrigem := '2';
    idTpMovFinanceira := '11';
    sinal := '-';
  end;
  if (Sender as TCDBEdit).Name = 'DBEidMovPagJurosTit' then
  begin
    idMovOrigem := '2';
    idTpMovFinanceira := '3';
    sinal := '+';
  end;
  FindMov.JoinClause.Clear;
  FindMov.JoinClause.Add(' WHERE StMovFinanceira = ' + QuotedStr('ATIVO') + ' AND idMovOrigem = ' +
                           idMovOrigem + ' AND idTpMovFinanceira = ' + idTpMovFinanceira + ' AND sinal = ' +
                           QuotedStr(sinal));
end;

procedure TFrmCadConfigFinanc.DBEmascaraGerExit(Sender: TObject);
var
  i : integer;
  mascara, mascara1 : string;
  ant : boolean; //variável que irá determinar se o anterior é ponto
begin
  inherited;
  if (trim(DBEMascaraGer.Text) <> '') and (cdsConfigFinanc.State in [dsEdit, dsInsert]) then
  begin
    mascara := trim(DBEMascaraGer.Text);
    if copy(mascara, Length(mascara), 1) = '.' then
      mascara := copy(mascara, 1, Length(mascara)-1);
    if copy(mascara, 1, 1) = '.' then
      mascara := copy(mascara, 2, Length(mascara));
    ant := false;
    mascara1 := '';
    for i := 1 to length(mascara) do
      if mascara[i] = '.' then
      begin
        if not ant then
          mascara1 := mascara1 + mascara[i];
        ant := true;
      end
      else
      begin
        mascara1 := mascara1 + mascara[i];
        ant := false;
      end;
    cdsConfigFinanc.FieldByName('mascaraGer').AsString := mascara1;
  end;
end;

procedure TFrmCadConfigFinanc.DBEmascaraGerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #27 then
    (Sender as TCustomEdit).Clear
  else
    if not (Key in ['*', '.', #8]) then
      Key := #0;
end;

procedure TFrmCadConfigFinanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadConfigFinanc := nil;
end;

procedure TFrmCadConfigFinanc.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 6);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsConfigFinancPag;
  Tabelas[2] := cdsConfigFinancCons;
  Tabelas[3] := cdsConfigFinanc;
  Tabelas[4] := cdsConfigMovRec;
  Tabelas[5] := cdsConfigMovPag;
  chave[0] := DBEidEmpresa;
  foco := DBEidSafra;
  tab_chave := 'ConfigFinancRec';
  Width := 620;
  Height := 380;
end;

procedure TFrmCadConfigFinanc.FormShow(Sender: TObject);
begin
  inherited;
  DBEidEmpresaexit(DBEidEmpresa);
  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig') do
  begin
    caminho_rel := FieldByName('caminho_rel').AsString;
    CKfixa_caminho.Checked := FieldByName('fixa_caminho').AsString = 'S';
  end;
  EDCaminho.Text := caminho_rel;
end;

procedure TFrmCadConfigFinanc.GravaNivel;
//Grava os níveis gerados pela máscara
var
  mascara, Nivel : string;
  nr_grau, i : integer;
begin
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'GerencialNivel ') do
    if not IsEmpty then
    begin
      cdsLookup.Active := false;
      cdsLookup.CommandText := 'DELETE FROM GerencialNivel WHERE idEmpresa = ' + DBEidEmpresa.Text;
      cdsLookup.Execute;
    end;
  mascara := Trim(cdsConfigFinanc.FieldByName('mascarager').AsString);
  nr_grau := 0;
  for i := 0 to length(mascara) do
    if (mascara[i] = '.') or (i = length(mascara)) then
    begin
      nr_grau := nr_grau + 1;
      if i <> length(mascara) then
        Nivel := copy(mascara, 1, i-1)
      else
        Nivel := mascara;
      cdsLookup.Active := false;
      cdsLookup.CommandText := 'INSERT INTO GerencialNivel VALUES(' + DBEidEmpresa.Text + ', ' +
                               inttostr(nr_grau) + ', ' + quotedstr(Nivel) + ')';
      cdsLookup.Execute;
    end;
end;

procedure TFrmCadConfigFinanc.LookLancamentoSetText(Sender: TObject);
begin
  inherited;
  if trim(LookLancamento.Caption) <> '' then
    LookLancamento.Caption := FormatFloat('#,##0.00', StrToFloat(LookLancamento.Caption));
end;

end.

