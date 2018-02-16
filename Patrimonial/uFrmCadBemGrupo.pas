unit uFrmCadBemGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadBemGrupo = class(TFrmCadPadraoGrid)
    sdsBemGrupo: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidBemGrupo: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescBemGrupo: TCDBEdit;
    CLabel2: TCLabel;
    DBEstBemGrupo: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    FindBemGrupo: TCFind;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidBemGrupoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBemGrupo: TFrmCadBemGrupo;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadBemGrupo.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadBemGrupo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadBemGrupo.DBEidBemGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadBemGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadBemGrupo := nil;
end;

procedure TFrmCadBemGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidBemGrupo;
  foco := DBEidBemGrupo;
  tab_chave := 'BemGrupo';
  situacao := 'stBemGrupo';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindBemGrupo;
end;

end.
