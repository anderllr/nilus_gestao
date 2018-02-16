unit uFrmCadTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, CLookUp,
  FMTBcd, SqlExpr, CFind, CPanelGradient, CDBCheckBox;

type
  TFrmCadTab = class(TFrmCadPadraoGrid)
    TabTabela: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel2: TCLabel;
    DBEdescTab: TCDBEdit;
    DBEidTab: TCDBEdit;
    CLabel1: TCLabel;
    CGroupBox3: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdescTab2: TCDBEdit;
    DBEidTab2: TCDBEdit;
    CGroupBox4: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox5: TCGroupBox;
    BtnNovoTab: TCBitBtn;
    BtnExcluirTab: TCBitBtn;
    BtnCancelarTab: TCBitBtn;
    BtnSalvarTab: TCBitBtn;
    sdsTab: TSQLDataSet;
    actCadTpDesconto: TAction;
    sdsTabProduto: TSQLDataSet;
    dspTabProduto: TDataSetProvider;
    cdsTabProduto: TClientDataSet;
    dsTabProduto: TDataSource;
    DBEstTab: TCDBEdit;
    CLabel19: TCLabel;
    CGroupBox6: TCGroupBox;
    CLabel6: TCLabel;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    CLabel3: TCLabel;
    DBEvlProduto: TCDBEdit;
    CLabel9: TCLabel;
    DBEdtTab: TCDBEdit;
    FindProduto: TCFind;
    LookMedida: TCLookUp;
    cdsProduto: TClientDataSet;
    cdsTabProdutoidTab: TSmallintField;
    cdsTabProdutoidProduto: TIntegerField;
    cdsTabProdutovlProduto: TFMTBCDField;
    cdsTabProdutodescProduto: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cdsTabProdutoAfterInsert(DataSet: TDataSet);
    procedure dsTabProdutoStateChange(Sender: TObject);
    procedure dspTabProdutoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure BtnSalvarTabClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidTabExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTab: TFrmCadTab;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmCadTab.actSalvarExecute(Sender: TObject);
begin
  if cdsTabProduto.State in [dsInsert, dsEdit]  then
    cdsTabProduto.Cancel;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTab.BtnSalvarTabClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsTabProduto, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab, (Sender as TCBitBtn), '');
  DBEidProduto.SetFocus;
end;

procedure TFrmCadTab.cdsTabProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

end;

procedure TFrmCadTab.DBEidTabExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  AbreTabSecundaria;
end;

procedure TFrmCadTab.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsTabProduto, [DBEidProduto]);
end;

procedure TFrmCadTab.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
end;

procedure TFrmCadTab.dsTabProdutoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab);
end;

procedure TFrmCadTab.dspTabProdutoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadTab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTab := nil;
end;

procedure TFrmCadTab.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsTabProduto;
  chave[0] := DBEidTab;
  foco := DBEidTab;
  situacao := 'stTab';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  tab_chave := 'Tab';
end;

procedure TFrmCadTab.FormShow(Sender: TObject);
begin
  inherited;
  Width := 587;
  Height := 480;
end;

end.
