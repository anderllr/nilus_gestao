unit uFrmConfigArmazem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CDBComboBox,
  CGroupBox, CDBRadioGroup, CDBCheckBox, CDBMemo, CFind, Grids, DBGrids, CDBGrid,
  DBXCommon;

type
  TFrmConfigArmazem = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel24: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    DBEidProdMedida: TCDBEdit;
    LookMedida: TCLookUp;
    LookAbreviacao: TCLookUp;
    DBCBImpPadrao: TCDBComboBox;
    CGroupBox2: TCGroupBox;
    DBRtpRomaneio: TCDBRadioGroup;
    GrpTipo: TCGroupBox;
    DBCKUsaTalhao: TCDBCheckBox;
    DBCKUsaContrato: TCDBCheckBox;
    DBCKUsaNota: TCDBCheckBox;
    GrpNotaFiscal: TCGroupBox;
    CLabel6: TCLabel;
    DBEidTpNotaFiscal: TCDBEdit;
    LookTpNotaFiscal: TCLookUp;
    CLabel7: TCLabel;
    LookDocSerie: TCLookUp;
    DBEidDocSerie: TCDBEdit;
    DBMobsNf: TCDBMemo;
    CLabel10: TCLabel;
    CLabel11: TCLabel;
    DBMCompNf: TCDBMemo;
    sdsConfigArmazem: TSQLDataSet;
    TabConfigDesconto: TTabSheet;
    DBCKPesagemManual: TCDBCheckBox;
    sdsConfigRomaneio: TSQLDataSet;
    dspConfigRomaneio: TDataSetProvider;
    cdsConfigRomaneio: TClientDataSet;
    dsConfigRomaneio: TDataSource;
    DBCKUsaDesconto: TCDBCheckBox;
    FindProdDeposito: TCFind;
    FindMedida: TCFind;
    FindTpNotaFiscal: TCFind;
    FindDocSerie: TCFind;
    FindCfop: TCFind;
    sdsConfigRomDesc: TSQLDataSet;
    dspConfigRomDesc: TDataSetProvider;
    cdsConfigRomDesc: TClientDataSet;
    dsConfigRomDesc: TDataSource;
    CGroupBox4: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox5: TCGroupBox;
    BtnNovoTab: TCBitBtn;
    BtnExcluirTab: TCBitBtn;
    BtnCancelarTab: TCBitBtn;
    BtnSalvarTab: TCBitBtn;
    CGroupBox3: TCGroupBox;
    CLabel13: TCLabel;
    DBEidCadDesconto: TCDBEdit;
    DBEordem: TCDBEdit;
    CLabel16: TCLabel;
    cdsConfigRomDesctpRomaneio: TStringField;
    cdsConfigRomDescidCadDesconto: TSmallintField;
    cdsConfigRomDescordem: TSmallintField;
    cdsDesconto: TClientDataSet;
    cdsConfigRomDescdescCadDesconto: TStringField;
    LookCadDesconto: TCLookUp;
    FindCadDesconto: TCFind;
    cdsConfigRomDescidEmpresa: TIntegerField;
    cdsConfigRomDescidCadEmpresa: TIntegerField;
    DBRtpRomaneio2: TCDBRadioGroup;
    CLabel12: TCLabel;
    DBEidTab: TCDBEdit;
    LookTap: TCLookUp;
    BtnCadProduto: TCBitBtn;
    FindTab: TCFind;
    DBCBMovEstoque: TCDBComboBox;
    CLabel14: TCLabel;
    FindNatureza: TCFind;
    CLabel8: TCLabel;
    DBEidNatureza: TCDBEdit;
    LookNatureza: TCLookUp;
    CLabel9: TCLabel;
    LookIdCfop: TCLookUp;
    LookDescCfop: TCLookUp;
    procedure BtnFecharMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure CGroupBox1Exit(Sender: TObject);
    procedure DBRtpRomaneio2Click(Sender: TObject);
    procedure DBEidCadDescontoExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure BtnSalvarTabClick(Sender: TObject);
    procedure dsConfigRomDescStateChange(Sender: TObject);
    procedure cdsConfigRomDescAfterInsert(DataSet: TDataSet);
    procedure DBRtpRomaneioClick(Sender: TObject);
    procedure DBRtpRomaneioExit(Sender: TObject);
    procedure cdsConfigRomaneioAfterInsert(DataSet: TDataSet);
    procedure DBCKUsaNotaClick(Sender: TObject);
    procedure cdsConfigRomaneioAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dspConfigRomaneioBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBEidCadEmpresaExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidTpNotaFiscalExit(Sender: TObject);
  private
    { Private declarations }
    test : boolean;
  public
    { Public declarations }
  end;

var
  FrmConfigArmazem: TFrmConfigArmazem;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao;

{$R *.dfm}

procedure TFrmConfigArmazem.actSalvarExecute(Sender: TObject);
begin
  if cdsConfigRomDesc.State in [dsInsert, dsEdit] then
    cdsConfigRomDesc.Cancel;

 if cdsConfigRomaneio.State in [dsInsert, dsEdit] then
   cdsConfigRomaneio.Post;

  GravaChave(1, '', nil);
  inherited;
  DBRtpRomaneio.ItemIndex := 0;
  DBRtpRomaneioExit(DBRtpRomaneio);
  cdsPadrao.Cancel;
  if PagAbas.ActivePageIndex = 0 then
    foco.SetFocus
  else
    PagAbas.ActivePageIndex := 0;

end;

procedure TFrmConfigArmazem.BtnFecharMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inherited;
  test := false;
end;

procedure TFrmConfigArmazem.BtnSalvarTabClick(Sender: TObject);
var
  valor : string;
begin
  valor := cdsConfigRomDesc.FieldByName('tpRomaneio').AsString;
  inherited;
  funcao.GravaSec(chave, cdsConfigRomDesc, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab, (Sender as TCBitBtn), '');
  DBEidCadDesconto.SetFocus;
  if (Sender as TCBitBtn).Name = 'BtnNovoTab' then
    cdsConfigRomDesc.FieldByName('tpRomaneio').AsString := valor;
  
end;

procedure TFrmConfigArmazem.cdsConfigRomaneioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
  DataSet.FieldByName('UsaTalhao').AsString := 'S';
  DataSet.FieldByName('UsaContrato').AsString := 'S';
  DataSet.FieldByName('UsaNota').AsString := 'S';
  DataSet.FieldByName('UsaDesconto').AsString := 'S';
end;

procedure TFrmConfigArmazem.cdsConfigRomaneioAfterScroll(DataSet: TDataSet);
begin
  inherited;
  GrpNotaFiscal.Enabled := cdsConfigRomaneio.FieldByName('UsaNota').AsString = 'S';
end;

procedure TFrmConfigArmazem.cdsConfigRomDescAfterInsert(DataSet: TDataSet);
begin
  inherited;
//  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
//    cdsPadrao.Edit;
  cdsConfigRomDesc.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  cdsConfigRomDesc.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
end;

procedure TFrmConfigArmazem.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.Name = 'cdsPadrao') and (DataSet.State = dsInsert) then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('PesagemManual').AsString := 'N';
    DataSet.FieldByName('ImpPadrao').AsString := 'MATRICIAL';
  end
  else
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
end;

procedure TFrmConfigArmazem.CGroupBox1Exit(Sender: TObject);
begin
  inherited;
  if test then
  begin
    if (trim(DBEidProdDeposito.Text) = '')  then
    begin
      messagedlg('Informe o Deposito !', mtInformation, [mbOk], 0);
      DBEidProdDeposito.SetFocus;
      exit;
    end;

    if (trim(DBEidProdMedida.Text) = '') then
    begin
      messagedlg('Informe a Medida !', mtInformation, [mbOk], 0);
      DBEidProdMedida.SetFocus;
      exit;
    end;

    if (trim(DBEidTab.Text) = '') then
    begin
      messagedlg('Informe a Tabela Padrão !', mtInformation, [mbOk], 0);
      DBEidTab.SetFocus;
      exit;
    end;
  end;
end;

procedure TFrmConfigArmazem.DBCKUsaNotaClick(Sender: TObject);
begin
  inherited;
  GrpNotaFiscal.Enabled := cdsConfigRomaneio.FieldByName('UsaNota').AsString = 'S';
end;

procedure TFrmConfigArmazem.DBEidCadDescontoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsConfigRomDesc, [DBEidEmpresa, DBEidCadEmpresa, DBRtpRomaneio2, DBEidCadDesconto]);
end;

procedure TFrmConfigArmazem.DBEidCadEmpresaExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidCadEmpresa.Text) <> '') and (trim(DBEidEmpresa.Text) <> '') then
  begin
    BuscaChave(cdsPadrao, chave);
    AbreTabSecundaria;
  if (not (cdsConfigRomaneio.State in [dsInsert, dsEdit])) then
    if cdsConfigRomaneio.IsEmpty then
      cdsConfigRomaneio.Append
    else
      cdsConfigRomaneio.Edit;
    cdsConfigRomaneio.FieldByName('tpRomaneio').AsString := 'DEPOSITO';
    DBRtpRomaneioExit(DBRtpRomaneio);
  end;
end;

procedure TFrmConfigArmazem.DBEidTpNotaFiscalExit(Sender: TObject);
begin
  inherited;
  LookNatureza.AlternateSQL.Clear;
  FindNatureza.JoinClause.Clear;
  if DBEidTpNotaFiscal.Text = '1' then //Nota Fiscal de Entrada
  begin
    LookNatureza.AlternateSQL.Add('SELECT descNatureza FROM Natureza WHERE tpNatureza = ' + QuotedStr('ENTRADA') +
          ' AND stNatureza = ' + QuotedStr('ATIVO') + ' AND idNatureza = ?');
    FindNatureza.JoinClause.Add('WHERE tpNatureza = ' + QuotedStr('ENTRADA') + ' AND stNatureza = ' + QuotedStr('ATIVO'));
  end
  else
    if DBEidTpNotaFiscal.Text = '2' then  //Nota Fiscal de Saida
    begin
      LookNatureza.AlternateSQL.Add('SELECT descNatureza FROM Natureza WHERE tpNatureza = ' + QuotedStr('SAIDA') +
          ' AND stNatureza = ' + QuotedStr('ATIVO') + ' AND idNatureza = ?');
      FindNatureza.JoinClause.Add('WHERE tpNatureza = ' + QuotedStr('SAIDA') + ' AND stNatureza = ' + QuotedStr('ATIVO'));
    end
    else
    begin
       LookNatureza.AlternateSQL.Add('SELECT descNatureza FROM Natureza WHERE tpNatureza = ' +
          ' AND stNatureza = ' + QuotedStr('ATIVO') + ' AND idNatureza = ?');
       FindNatureza.JoinClause.Add('WHERE tpNatureza = ' + ' AND stNatureza = ' + QuotedStr('ATIVO'));
    end;


end;

procedure TFrmConfigArmazem.DBRtpRomaneio2Click(Sender: TObject);
var
  index : integer;
begin
  index := DBRtpRomaneio2.ItemIndex;
  inherited;
  with cdsConfigRomDesc do
  begin
    if not Active then
      exit;
//    BtnSalvar.Click;
    Active := false;
    CommandText := 'SELECT * FROM ConfigRomaneioDesc WHERE idEmpresa = ' + DBEidEmpresa.Text +
                   ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND tpRomaneio = ' +
                   QuotedStr(DBRtpRomaneio2.Values.Strings[index]);
    Active := true;
    Append;
    FieldByName('tpRomaneio').AsString := DBRtpRomaneio2.Values.Strings[index];
//    DBEidCadDesconto.SetFocus;
  end;
end;

procedure TFrmConfigArmazem.DBRtpRomaneioClick(Sender: TObject);
begin
  inherited;
  if not (cdsConfigRomaneio.Active)  then
    exit;
  if (not (cdsConfigRomaneio.State in [dsInsert, dsEdit])) then
    if cdsConfigRomaneio.IsEmpty then
      cdsConfigRomaneio.Append
    else
      cdsConfigRomaneio.Edit;
  case DBRtpRomaneio.ItemIndex of
  0 : cdsConfigRomaneio.FieldByName('tpRomaneio').AsString := 'DEPOSITO';
  1 : cdsConfigRomaneio.FieldByName('tpRomaneio').AsString := 'RETIRADA';
  2 : cdsConfigRomaneio.FieldByName('tpRomaneio').AsString := 'AVULSA';
  end;
  BuscaChaveSec(cdsConfigRomaneio, [DBEidEmpresa, DBEidCadEmpresa, DBRtpRomaneio]);
end;

procedure TFrmConfigArmazem.DBRtpRomaneioExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsConfigRomaneio, [DBEidEmpresa, DBEidCadEmpresa, DBRtpRomaneio]);
end;

procedure TFrmConfigArmazem.dsConfigRomDescStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab);
end;

procedure TFrmConfigArmazem.dspConfigRomaneioBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmConfigArmazem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
  Action := cafree;
  FrmConfigArmazem := nil;
end;

procedure TFrmConfigArmazem.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsConfigRomaneio;
  Tabelas[2] := cdsConfigRomDesc;  
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  foco := DBEidProdDeposito;
  tab_chave := 'ConfigArmazem';
end;

procedure TFrmConfigArmazem.FormShow(Sender: TObject);
begin
  inherited;
  DBEidCadEmpresaExit(DBEidCadEmpresa);
  GrpNotaFiscal.Enabled := false;
  Width := 720;
  Height := 480;
  test := true;
end;

procedure TFrmConfigArmazem.PagAbasChange(Sender: TObject);
begin
  inherited;
  if ((PagAbas.ActivePageIndex = 1) or ((trim(DBEidProdDeposito.Text) <> ''))) then
  begin
    if not(cdsConfigRomDesc.State in [dsInsert, dsEdit]) then
      cdsConfigRomDesc.Append;
      cdsConfigRomDesc.FieldByName('tpRomaneio').AsString := 'DEPOSITO';
      DBRtpRomaneio2Click(DBRtpRomaneio2);
  end;
end;

end.
