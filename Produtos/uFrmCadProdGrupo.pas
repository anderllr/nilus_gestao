unit uFrmCadProdGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient;

type
  TFrmCadProdGrupo = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidProdGrupo: TCDBEdit;
    DBEdescProdGrupo: TCDBEdit;
    DBEstProdGrupo: TCDBEdit;
    sdsProdGrupo: TSQLDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidProdGrupoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdGrupo: TFrmCadProdGrupo;

implementation

{$R *.dfm}

procedure TFrmCadProdGrupo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadProdGrupo.DBEidProdGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadProdGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadProdGrupo := nil;
end;

procedure TFrmCadProdGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidProdGrupo;
  foco := DBEidProdGrupo;
  tab_chave := 'ProdGrupo';
  situacao := 'stProdGrupo';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

end.
