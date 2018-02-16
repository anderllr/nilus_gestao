unit uFrmCadSubGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, FMTBcd, DB, SqlExpr, Provider, DBClient, ActnList,
  ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CLabel, Mask, DBCtrls, CDBEdit;

type
  TFrmCadSubGrupo = class(TFrmCadPadraoGrid)
    cdsPadraoidSubGrupo: TIntegerField;
    cdsPadraodescSubGrupo: TStringField;
    cdsPadraostSubGrupo: TStringField;
    CGroupBox1: TCGroupBox;
    CLabel58: TCLabel;
    CLabel60: TCLabel;
    CLabel14: TCLabel;
    DBEidSubGrupo: TCDBEdit;
    DBEdescSubGrupo: TCDBEdit;
    DBEstSubGrupo: TCDBEdit;
    procedure DBEidSubGrupoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadSubGrupo: TFrmCadSubGrupo;

implementation

{$R *.dfm}

procedure TFrmCadSubGrupo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadSubGrupo.DBEidSubGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadSubGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidSubGrupo;
  foco := DBEidSubGrupo;
  tab_chave := 'AplicacaoSubGrupo';
  situacao := 'stSubGrupo';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 320;
  Width := 445;
end;

end.
