unit uFrmCadTalhao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, FMTBcd, DB, SqlExpr, CFind, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, Grids, DBGrids,
  CDBGrid, CDBMemo, CGroupBox, CDBCheckBox, System.Actions, System.ImageList;

type
  TFrmCadTalhao = class(TFrmCadPadraoEmpCont)
    sdsTalhao: TSQLDataSet;
    CGroupBox2: TCGroupBox;
    CLabel11: TCLabel;
    DBEidTalhao: TCDBEdit;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEidBem: TCDBEdit;
    CLookUp1: TCLookUp;
    DBMobsTituloRec: TCDBMemo;
    CGroupBox1: TCGroupBox;
    CDBGrid1: TCDBGrid;
    DBEdescTalhao: TCDBEdit;
    FindPropriedade: TCFind;
    FindResultado: TCFind;
    CLookUp2: TCLookUp;
    DBEidResultado: TCDBEdit;
    CLabel4: TCLabel;
    DBEstTalhao: TCDBEdit;
    FindTalhao: TCFind;
    BtnCadCidade: TCBitBtn;
    CBitBtn1: TCBitBtn;
    dspBem: TDataSetProvider;
    cdsBem: TClientDataSet;
    cdsPadraodescBem: TStringField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidTalhao: TIntegerField;
    cdsPadraoidBem: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraodescTalhao: TStringField;
    cdsPadraostTalhao: TStringField;
    cdsPadraoobsTalhao: TStringField;
    procedure FindTalhaoClose(Sender: TObject);
    procedure DBEidTalhaoExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidCaixaExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTalhao: TFrmCadTalhao;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmCadTalhao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
FindTalhao.ShowModal;
end;

procedure TFrmCadTalhao.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTalhao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
//  if cdsPadrao.State in [dsInsert] then
//    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
end;

procedure TFrmCadTalhao.DBEidCaixaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTalhao.DBEidTalhaoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTalhao.FindTalhaoClose(Sender: TObject);
begin
  inherited;
 if trim(FindTalhao.Value) <> '' then
  begin
 if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idTalhao').AsString := FindTalhao.Value;
    DBEidTalhao.setfocus;
    DBEidTalhaoExit(DBEidTalhao);
  end;
end;

procedure TFrmCadTalhao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadTalhao := nil;
end;

procedure TFrmCadTalhao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 1); // Seta o numero de Tabelas, se tiver mais cds entao vao ser setados aqui
  Tabelas[0] := cdsPadrao;
//  Tabelas[1] := cdsResultadoItem;

  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidTalhao;

  foco := DBEidTalhao;
  tab_chave := 'Talhao';
  situacao := 'stTalhao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';

  Grid := true;
  Height := 523;
  Width := 541;

end;

end.
