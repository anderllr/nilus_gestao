unit uFrmCadTipoAdmissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind;

type
  TFrmCadTipoAdmissao = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidTipoAdmissao: TCDBEdit;
    DBEdescTipoAdmissao: TCDBEdit;
    sdsCultura: TSQLDataSet;
    DBEstTipoAdmissao: TCDBEdit;
    CLabel11: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidTipoAdmissaoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTipoAdmissao: TFrmCadTipoAdmissao;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadTipoAdmissao.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTipoAdmissao.DBEidTipoAdmissaoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTipoAdmissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTipoAdmissao := nil;
end;

procedure TFrmCadTipoAdmissao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTipoAdmissao;
  foco := DBEidTipoAdmissao;
  tab_chave := 'TipoAdmissao';
  situacao := 'stTipoAdmissao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 575;
  Height := 365;
end;

end.
