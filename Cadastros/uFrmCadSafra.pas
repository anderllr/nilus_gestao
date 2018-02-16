unit uFrmCadSafra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient, ComCtrls, CPageControl, FMTBcd, SqlExpr, Grids,
  DBGrids, CDBGrid, CDBMemo, CGroupBox, System.Actions, System.ImageList;

type
  TFrmCadSafra = class(TFrmCadPadraoEmpCont)
    sdsSafra: TSQLDataSet;
    sdsSafraTalhao: TSQLDataSet;
    dspSafraTalhao: TDataSetProvider;
    cdsSafraTalhao: TClientDataSet;
    dsSafraTalhao: TDataSource;
    FindCultura: TCFind;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    CLabel58: TCLabel;
    CLabel1: TCLabel;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    DBEidSafra: TCDBEdit;
    DBEdescSafra: TCDBEdit;
    DBEstSafra: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBMobsSafra: TCDBMemo;
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    TabSafraTalhao: TTabSheet;
    CGroupBox6: TCGroupBox;
    CLabel3: TCLabel;
    CLabel10: TCLabel;
    DBEidSafra2: TCDBEdit;
    DBEdescSafra2: TCDBEdit;
    CGroupBox7: TCGroupBox;
    CLabel11: TCLabel;
    Bevel5: TBevel;
    CLabel16: TCLabel;
    CLabel4: TCLabel;
    BtnSalvarItem: TCBitBtn;
    BtnCancelarItem: TCBitBtn;
    BtnExcluirItem: TCBitBtn;
    BtnNovoItem: TCBitBtn;
    DBEidResultado: TCDBEdit;
    DBEidCultura: TCDBEdit;
    LookCultura: TCLookUp;
    DBEqtArea: TCDBEdit;
    CGroupBox8: TCGroupBox;
    CDBGrid2: TCDBGrid;
    cdsSafraTalhaoidEmpresa: TIntegerField;
    cdsSafraTalhaoidSafra: TIntegerField;
    cdsSafraTalhaoidResultado: TIntegerField;
    cdsCultura: TClientDataSet;
    FindResultado: TCFind;
    cdsResultado: TClientDataSet;
    LookResultado: TCLookUp;
    cdsSafraTalhaodescResultado: TStringField;
    cdsSafraTalhaoidCultura: TSmallintField;
    cdsSafraTalhaodescCultura: TStringField;
    cdsSafraTalhaoqtArea: TFMTBCDField;
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsSafraTalhaoAfterDelete(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure dsSafraTalhaoStateChange(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidSafraExit(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure cdsSafraTalhaoAfterEdit(DataSet: TDataSet);
    procedure cdsSafraTalhaoAfterInsert(DataSet: TDataSet);
    procedure BtnSalvarItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadSafra: TFrmCadSafra;

implementation

uses uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadSafra.actSalvarExecute(Sender: TObject);
begin
  if BtnSalvarItem.Enabled then
    BtnCancelarItem.Click;

  //grava novos registros para tabela de pendencias
  GravaIntegracao('Safra', 'idEmpresa;idSafra', cdsPadrao.FieldByName('idEmpresa').AsString + ';' + cdsPadrao.FieldByName('idSafra').AsString, 'I', 'AGUARDANDO');

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadSafra.BtnSalvarItemClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsSafraTalhao, BtnSalvarItem, BtnCancelarItem, BtnExcluirItem, BtnNovoItem, (Sender as TCBitBtn), '');
  if (Sender as TCBitBtn).Name = 'BtnSalvarItem' then
    BtnNovoItem.Click;

  DBEidResultado.SetFocus;
end;

procedure TFrmCadSafra.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
end;

procedure TFrmCadSafra.cdsSafraTalhaoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadSafra.cdsSafraTalhaoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadSafra.cdsSafraTalhaoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  cdsSafraTalhao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
end;

procedure TFrmCadSafra.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if trim(DBEidEmpresa.Text) <> '' then  
    if cdsEmpresa.FieldByName('idEmpresa').OldValue <> cdsEmpresa.FieldByName('idEmpresa').NewValue then
      cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

procedure TFrmCadSafra.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsSafraTalhao, [DBEidResultado]);
end;

procedure TFrmCadSafra.DBEidSafraExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  AbreTabSecundaria;
end;

procedure TFrmCadSafra.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
end;

procedure TFrmCadSafra.dsSafraTalhaoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarItem, BtnCancelarItem, BtnExcluirItem, BtnNovoItem);
end;

procedure TFrmCadSafra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadSafra := nil;
end;

procedure TFrmCadSafra.FormCreate(Sender: TObject);
begin
  inherited;
  Grid := true;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsSafraTalhao;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidSafra;
  foco := DBEidSafra;
  tab_chave := 'Safra';
  situacao := 'stSafra';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadSafra.FormShow(Sender: TObject);
begin
  inherited;
  cdsResultado.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

end.

