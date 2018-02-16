unit uCadHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox;

type
  TfrmCadHistorico = class(TFrmCadPadraoGrid)
    sdsPadrao: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidContHistorico: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescHistorico: TCDBEdit;
    CLabel2: TCLabel;
    DBEstHistorico: TCDBEdit;
    FindHistorico: TCFind;
    procedure FindHistoricoClose(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidContHistoricoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadHistorico: TfrmCadHistorico;

implementation

uses uDmPadrao, uFrmCadPadrao, uFrmPrincipal,uFuncao;

{$R *.dfm}

procedure TfrmCadHistorico.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadHistorico.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;


procedure TfrmCadHistorico.DBEidContHistoricoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadHistorico.FindHistoricoClose(Sender: TObject);
begin
inherited;
  if trim(FindHistorico.Value) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idContHistorico').AsString := FindHistorico.Value;
    DBEidContHistorico.setfocus;
    DBEidContHistoricoExit(DBEidContHistorico);
  end;
end;

procedure TfrmCadHistorico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadHistorico := nil;
end;

procedure TfrmCadHistorico.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidContHistorico;
  foco := DBEidContHistorico;
  tab_chave := 'ContHistorico';
  situacao := 'stContHistorico';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindHistorico;
end;

end.
