unit uFrmCadTipoMaquina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadTipoMaquina = class(TFrmCadPadraoGrid)
    sdsTipoMaquina: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidTipoMaquina: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescTipoMaquina: TCDBEdit;
    CLabel2: TCLabel;
    DBEstTipoMaquina: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidTipoMaquinaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTipoMaquina: TFrmCadTipoMaquina;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadTipoMaquina.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadTipoMaquina.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTipoMaquina.DBEidTipoMaquinaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTipoMaquina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTipoMaquina := nil;
end;

procedure TFrmCadTipoMaquina.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTipoMaquina;
  foco := DBEidTipoMaquina;
  tab_chave := 'TipoMaquina';
  situacao := 'stTipoMaquina';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindTipoMaquina;
  Height := 451;
  Width := 447;
end;

end.
