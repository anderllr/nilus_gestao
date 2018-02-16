unit uFrmCadBemSubGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadBemSubGrupo = class(TFrmCadPadraoGrid)
    sdsBemSubGrupo: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidBemSubGrupo: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescBemSubGrupo: TCDBEdit;
    CLabel2: TCLabel;
    DBEstBemSubGrupo: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    FindBemSubGrupo: TCFind;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidBemSubGrupoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBemSubGrupo: TFrmCadBemSubGrupo;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadBemSubGrupo.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadBemSubGrupo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadBemSubGrupo.DBEidBemSubGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadBemSubGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadBemSubGrupo := nil;
end;

procedure TFrmCadBemSubGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidBemSubGrupo;
  foco := DBEidBemSubGrupo;
  tab_chave := 'BemSubGrupo';
  situacao := 'stBemSubGrupo';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindBemSubGrupo;
end;

end.
