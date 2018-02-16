unit uFrmCadProdSubGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient;

type
  TFrmCadProdSubGrupo = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidProdSubGrupo: TCDBEdit;
    DBEdescProdSubGrupo: TCDBEdit;
    DBEstProdSubGrupo: TCDBEdit;
    sdsProdSubGrupo: TSQLDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidProdSubGrupoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdSubGrupo: TFrmCadProdSubGrupo;

implementation

{$R *.dfm}

procedure TFrmCadProdSubGrupo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadProdSubGrupo.DBEidProdSubGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadProdSubGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadProdSubGrupo := nil;
end;

procedure TFrmCadProdSubGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidProdSubGrupo;
  foco := DBEidProdSubGrupo;
  tab_chave := 'ProdSubGrupo';
  situacao := 'stProdSubGrupo';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

end.
