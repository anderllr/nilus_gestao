unit uCadDocSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox;

type
  TfrmCadDocSerie = class(TFrmCadPadraoGrid)
    sdsDocSerie: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidDocSerie: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescDocSerie: TCDBEdit;
    CLabel2: TCLabel;
    DBEstDocSerie: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    FindTipoDocSerie: TCFind;
    CLabel16: TCLabel;
    DBEidTipoDocSerie: TCDBEdit;
    LookTipoDocSerie: TCLookUp;
    FindDocSerie: TCFind;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodescDocSerie: TStringField;
    cdsPadraodescTipoDocSerie: TStringField;
    cdsPadraoidTipoDocSerie: TSmallintField;
    cdsPadraonrUltimo: TIntegerField;
    cdsPadraostDocSerie: TStringField;
    cdsPadraoImprime: TStringField;
    DBCBimprimeNF: TCDBCheckBox;
    DBEnrUltimo: TCDBEdit;
    CLabel1: TCLabel;
    cdsPadraoserieFiscal: TFMTBCDField;
    DBEserieFiscal: TCDBEdit;
    CLabel3: TCLabel;
    procedure DBEidTipoDocSerieExit(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidDocSerieExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDocSerie: TfrmCadDocSerie;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

procedure TfrmCadDocSerie.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadDocSerie.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TfrmCadDocSerie.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (cdsPadrao.FieldByName('idTipoDocSerie').AsString = '3') or (cdsPadrao.FieldByName('idTipoDocSerie').AsString = '4')  then
    DBCBimprimeNF.Enabled:=true
  else
    DBCBimprimeNF.Enabled:=false;
end;

procedure TfrmCadDocSerie.DBEidDocSerieExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadDocSerie.DBEidTipoDocSerieExit(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.FieldByName('idTipoDocSerie').AsString = '3') or (cdsPadrao.FieldByName('idTipoDocSerie').AsString = '4')  then
    DBCBimprimeNF.Enabled:=true
  else
    DBCBimprimeNF.Enabled:=false;
end;

procedure TfrmCadDocSerie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadDocSerie := nil;
end;

procedure TfrmCadDocSerie.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidDocSerie;
  foco := DBEidDocSerie;
  tab_chave := 'DocSerie';
  situacao := 'stDocSerie';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindDocSerie;
end;

end.
