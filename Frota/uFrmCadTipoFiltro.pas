unit uFrmCadTipoFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadTipoFiltro = class(TFrmCadPadraoGrid)
    sdsTipoPneu: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidTipoFiltro: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescTipoFiltro: TCDBEdit;
    CLabel2: TCLabel;
    DBEstTipoFiltro: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidTipoFiltroExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTipoFiltro: TFrmCadTipoFiltro;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadTipoFiltro.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadTipoFiltro.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTipoFiltro.DBEidTipoFiltroExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTipoFiltro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTipoFiltro := nil;
end;

procedure TFrmCadTipoFiltro.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTipoFiltro;
  foco := DBEidTipoFiltro;
  tab_chave := 'TipoFiltro';
  situacao := 'stTipoFiltro';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindTipoFiltro;
  Height := 451;
  Width := 447;
end;

end.
