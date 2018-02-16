unit uCadSegGrupoMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient;

type
  TfrmCadSegGrupoMenu = class(TFrmCadPadraoGrid)
    sdsSegGrupoMenu: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidSegGrupoMenu: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescSegGrupoMenu: TCDBEdit;
    CLabel2: TCLabel;
    DBEstSegGrupoMenu: TCDBEdit;
    CLabel61: TCLabel;
    DBEidSegModulo: TCDBEdit;
    LookSegModulo: TCLookUp;
    FindSegGrupoMenu: TCFind;
    CLabel1: TCLabel;
    DBEordem: TCDBEdit;
    DBEindiceImagem: TCDBEdit;
    CLabel3: TCLabel;
    DBCKprimeiro: TCDBCheckBox;
    procedure DBEidSegGrupoMenuExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSegGrupoMenu: TfrmCadSegGrupoMenu;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

//****************************************************************************************//
procedure TfrmCadSegGrupoMenu.actSalvarExecute(Sender: TObject);
var
  sql : string;
begin
  sql := '';
  if cdsPadrao.FieldByName('primeiro').AsString = 'S' then
    sql := 'UPDATE SegGrupoMenu SET primeiro = ' + QuotedStr('N') + ' idSegModulo = ' +
           DBEidSegModulo.Text + ' AND idSegGrupoMenu <> ' + DBEidSegGrupoMenu.Text;

  GravaChave(1, '', nil);
  inherited;

  if trim(sql) <> '' then
    dmPadrao.dbConexao.ExecuteDirect(sql);
end;

procedure TfrmCadSegGrupoMenu.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
    DataSet.FieldByName('primeiro').AsString := 'N';
end;

procedure TfrmCadSegGrupoMenu.DBEidSegGrupoMenuExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadSegGrupoMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadSegGrupoMenu := nil;
end;

procedure TfrmCadSegGrupoMenu.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 2);
  chave[0] := DBEidSegModulo;
  chave[1] := DBEidSegGrupoMenu;
  foco := DBEidSegModulo;
  tab_chave := 'SegGrupoMenu';
  situacao := 'stSegGrupoMenu';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindSegGrupoMenu;
  Height := 450;
  Width := 591;
end;

end.
