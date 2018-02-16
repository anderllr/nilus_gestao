unit uFrmCadBem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit;

type
  TFrmCadBem = class(TFrmCadPadraoEmpFiscal)
    CPanelGradient1: TCPanelGradient;
    CLabel14: TCLabel;
    DBEstBem: TCDBEdit;
    CGroupBox1: TCGroupBox;
    CLabel8: TCLabel;
    DBEidBemGrupo: TCDBEdit;
    LookBemGrupo: TCLookUp;
    TabProdutos: TTabSheet;
    CGroupBox4: TCGroupBox;
    CLabel11: TCLabel;
    DBEdescPlaca1: TCDBEdit;
    TabImpostos: TTabSheet;
    sdsBemVeiculo: TSQLDataSet;
    dspBemVeiculo: TDataSetProvider;
    cdsBemVeiculo: TClientDataSet;
    dsBemVeiculo: TDataSource;
    sdsBem: TSQLDataSet;
    FindBemGrupo: TCFind;
    CLabel7: TCLabel;
    DBEdtAquisicao: TCDBEdit;
    CLabel10: TCLabel;
    DBEidBemSubGrupo: TCDBEdit;
    CLabel5: TCLabel;
    DBEidBem: TCDBEdit;
    CLabel4: TCLabel;
    DBEdescBem: TCDBEdit;
    CLabel6: TCLabel;
    DBEdescMarca: TCDBEdit;
    CLabel9: TCLabel;
    DBEdescIdentificacao: TCDBEdit;
    CLabel59: TCLabel;
    DBEdescModelo: TCDBEdit;
    CLabel60: TCLabel;
    DBEdescSerie: TCDBEdit;
    CLabel61: TCLabel;
    DBEvlBem: TCDBEdit;
    CLabel62: TCLabel;
    DBEvlAquisicao: TCDBEdit;
    FindBemSubGrupo: TCFind;
    LookBemSubGrupo: TCLookUp;
    FindBem: TCFind;
    CLabel12: TCLabel;
    DBEdescPlaca2: TCDBEdit;
    CLabel16: TCLabel;
    DBEidCertificado: TCDBEdit;
    CLabel13: TCLabel;
    DBEidRenavam: TCDBEdit;
    CLabel15: TCLabel;
    DBEidChassi: TCDBEdit;
    CLabel17: TCLabel;
    DBEanoFabricacao: TCDBEdit;
    CLabel18: TCLabel;
    DBEanoModelo: TCDBEdit;
    DBCKmovCusto: TCDBCheckBox;
    CGroupBox2: TCGroupBox;
    DBMobsBemVeiculo: TCDBMemo;
    CGroupBox3: TCGroupBox;
    CLabel19: TCLabel;
    CLabel21: TCLabel;
    DBEidEscritura: TCDBEdit;
    DBEdescLocalidade: TCDBEdit;
    DBCKmovCustoI: TCDBCheckBox;
    CGroupBox5: TCGroupBox;
    DBMobsBemImovel: TCDBMemo;
    CGroupBox6: TCGroupBox;
    DBCKarrendada: TCDBCheckBox;
    DBCKpropria: TCDBCheckBox;
    DBCKalugada: TCDBCheckBox;
    sdsBemImovel: TSQLDataSet;
    dspBemImovel: TDataSetProvider;
    cdsBemImovel: TClientDataSet;
    dsBemImovel: TDataSource;
    CLabel36: TCLabel;
    DBEidCidade: TCDBEdit;
    LookCidade: TCLookUp;
    LookEstado2: TCLookUp;
    FindCidade: TCFind;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBCKalugadaClick(Sender: TObject);
    procedure DBCKpropriaClick(Sender: TObject);
    procedure DBCKarrendadaClick(Sender: TObject);
    procedure dspBemVeiculoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsBemVeiculoAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidBemExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBem: TFrmCadBem;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadBem.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
begin
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    GravaChave(1, '', nil);
    if cdsBemVeiculo.State in [dsEdit, dsInsert] then
    begin
      funcao.UpdateChave(cdsBemVeiculo as TCustomClientDataSet, chave);
      cdsBemVeiculo.Post;
    end;
    if cdsBemImovel.State in [dsEdit, dsInsert] then
    begin
      funcao.UpdateChave(cdsBemImovel as TCustomClientDataSet, chave);
      cdsBemImovel.Post;
    end;
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
    dmPadrao.dbConexao.CommitFreeAndNil(t)
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
end;

procedure TFrmCadBem.cdsBemVeiculoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then //as duas tabelas tem esse campo
  begin
    DataSet.FieldByName('movCusto').AsString := 'N';
    if DataSet.Name = 'cdsBemImovel' then
    begin
      DataSet.FieldByName('propria').AsString := 'N';
      DataSet.FieldByName('arrendada').AsString := 'N';
      DataSet.FieldByName('alugada').AsString := 'N';
    end;
  end;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadBem.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert, dsEdit] then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;    
  end;
  
end;

procedure TFrmCadBem.DBCKalugadaClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCDBCheckBox).Checked then
    if cdsBemImovel.State in [dsEdit, dsInsert] then
    begin
      cdsBemImovel.FieldByName('propria').AsString := 'N';
      cdsBemImovel.FieldByName('arrendada').AsString := 'N';
    end;
end;

procedure TFrmCadBem.DBCKarrendadaClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCDBCheckBox).Checked then
    if cdsBemImovel.State in [dsEdit, dsInsert] then
    begin
      cdsBemImovel.FieldByName('propria').AsString := 'N';
      cdsBemImovel.FieldByName('alugada').AsString := 'N';
    end;
end;

procedure TFrmCadBem.DBCKpropriaClick(Sender: TObject);
begin
  inherited;
  if (Sender as TCDBCheckBox).Checked then
    if cdsBemImovel.State in [dsEdit, dsInsert] then
    begin
      cdsBemImovel.FieldByName('arrendada').AsString := 'N';
      cdsBemImovel.FieldByName('alugada').AsString := 'N';
    end;
end;

procedure TFrmCadBem.DBEidBemExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
end;


procedure TFrmCadBem.dspBemVeiculoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadBem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadBem := nil;
end;

procedure TFrmCadBem.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsBemVeiculo;
  Tabelas[2] := cdsBemImovel;

  chave[0] := DBEidBem;
  foco := DBEidBem;
  tab_chave := 'Bem';
  situacao := 'stBem';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindBem;
end;

procedure TFrmCadBem.FormShow(Sender: TObject);
begin
  inherited;
  Height := 364;
  Width := 584;
end;

end.
