unit uFrmCadTipoOleo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadTipoOleo = class(TFrmCadPadraoGrid)
    sdsTipoPneu: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidTipoOleo: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescTipoOleo: TCDBEdit;
    CLabel2: TCLabel;
    DBEstTipoOleo: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidTipoOleoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTipoOleo: TFrmCadTipoOleo;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadTipoOleo.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadTipoOleo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTipoOleo.DBEidTipoOleoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTipoOleo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTipoOleo := nil;
end;

procedure TFrmCadTipoOleo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTipoOleo;
  foco := DBEidTipoOleo;
  tab_chave := 'TipoOleo';
  situacao := 'stTipoOleo';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindTipoOleo;
  Height := 451;
  Width := 447;
end;

end.
