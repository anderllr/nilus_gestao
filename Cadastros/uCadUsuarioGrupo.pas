unit uCadUsuarioGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox;

type
  TfrmCadUsuarioGrupo = class(TFrmCadPadraoGrid)
    sdsDocSerie: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidUsuarioGrupo: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescUsuarioGrupo: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    TabPermissao: TTabSheet;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidUsuarioGrupoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarioGrupo: TfrmCadUsuarioGrupo;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TfrmCadUsuarioGrupo.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadUsuarioGrupo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TfrmCadUsuarioGrupo.DBEidUsuarioGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadUsuarioGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadUsuarioGrupo := nil;
end;

procedure TfrmCadUsuarioGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidUsuarioGrupo;
  foco := DBEidUsuarioGrupo;
  tab_chave := 'UsuarioGrupo';
//  FindPesquisa := dmFind.FindUsuarioGrupo;
end;

end.
