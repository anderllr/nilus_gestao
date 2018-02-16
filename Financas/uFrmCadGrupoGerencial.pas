unit uFrmCadGrupoGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind;

type
  TFrmCadGrupoGerencial = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidGrupoGerencial: TCDBEdit;
    DBEdescGrupoGerencial: TCDBEdit;
    sdsSegmento: TSQLDataSet;
    DBEstGrupoGerencial: TCDBEdit;
    CLabel1: TCLabel;
    DBEordem: TCDBEdit;
    CLabel2: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidGrupoGerencialExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadGrupoGerencial: TFrmCadGrupoGerencial;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadGrupoGerencial.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadGrupoGerencial.DBEidGrupoGerencialExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadGrupoGerencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadGrupoGerencial := nil;
end;

procedure TFrmCadGrupoGerencial.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidGrupoGerencial;
  foco := DBEidGrupoGerencial;
  tab_chave := 'GrupoGerencial';
  situacao := 'stGrupoGerencial';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 490;
  Height := 405;
end;

end.
