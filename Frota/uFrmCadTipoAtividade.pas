unit uFrmCadTipoAtividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadTipoAtividade = class(TFrmCadPadraoGrid)
    sdsTipoPneu: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidTipoAtividade: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescTipoAtividade: TCDBEdit;
    CLabel2: TCLabel;
    DBEstTipoAtividade: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidTipoAtividadeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTipoAtividade: TFrmCadTipoAtividade;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadTipoAtividade.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadTipoAtividade.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTipoAtividade.DBEidTipoAtividadeExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTipoAtividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTipoAtividade := nil;
end;

procedure TFrmCadTipoAtividade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTipoAtividade;
  foco := DBEidTipoAtividade;
  tab_chave := 'TipoAtividade';
  situacao := 'stTipoAtividade';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindTipoAtividade;
  Height := 451;
  Width := 447;
end;

end.
