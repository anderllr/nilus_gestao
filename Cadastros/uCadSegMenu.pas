unit uCadSegMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient;

type
  TfrmCadSegMenu = class(TFrmCadPadraoGrid)
    sdsSegMenu: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    DBEdescSegMenu: TCDBEdit;
    CLabel2: TCLabel;
    DBEstSegMenu: TCDBEdit;
    CLabel61: TCLabel;
    DBEidSegModulo: TCDBEdit;
    LookSegModulo: TCLookUp;
    FindSegMenu: TCFind;
    CLabel58: TCLabel;
    CLabel1: TCLabel;
    CLookUp1: TCLookUp;
    DBEdescSegGrupoMenu: TCLookUp;
    DBEidSegGrupoMenu: TCDBEdit;
    CLabel3: TCLabel;
    DBEidSegMenu: TCDBEdit;
    CLabel4: TCLabel;
    DBEdescSegMenuInterno: TCDBEdit;
    CGroupBox9: TCGroupBox;
    DBMobsSegMenu: TCDBMemo;
    DBCKexcluir: TCDBCheckBox;
    DBCKeditar: TCDBCheckBox;
    DBCKincluir: TCDBCheckBox;
    DBCKAcessar: TCDBCheckBox;
    FindSegGrupoMenu: TCFind;
    BtnVerInsert: TCBitBtn;
    DBEordem: TCDBEdit;
    CLabel5: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidSegMenuExit(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure BtnVerInsertClick(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSegMenu: TfrmCadSegMenu;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind, uFrmVerInsert, uFrmPesSegMenu;

{$R *.dfm}

//****************************************************************************************//
procedure TfrmCadSegMenu.actPesquisarExecute(Sender: TObject);
begin
//  inherited;
  Application.CreateForm(TFrmPesSegMenu, FrmPesSegMenu);
  FrmPesSegMenu.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesSegMenu.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      FieldByName('idSegModulo').Value := FrmPesSegMenu.cdsGrid.FieldByName('idSegModulo').Value;
      FieldByName('idSegGrupoMenu').Value := FrmPesSegMenu.cdsGrid.FieldByName('idSegGrupoMenu').Value;
      FieldByName('idSegMenu').Value := FrmPesSegMenu.cdsGrid.FieldByName('idSegMenu').Value;
      DBEidSegMenu.SetFocus;
      DBEidSegMenuExit(DBEidSegMenu);
    end;
  end;
end;

procedure TfrmCadSegMenu.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadSegMenu.BtnVerInsertClick(Sender: TObject);
var
  sqlIns, sqlUp, sqlDel : string;
begin
  inherited;
  //Insere o Insert
  sqlIns := 'INSERT INTO SegMenu (idSegModulo, idSegGrupoMenu, idSegMenu, descSegMenu, ' +
         ' descSegMenuInterno, stSegMenu, excluir, acessar, incluir, editar, ordem, obsSegMenu) ' +
         ' VALUES(' + DBEidSegModulo.Text + ', ' + DBEidSegGrupoMenu.Text + ', ' +
         DBEidSegMenu.Text + ', ' + QuotedStr(DBEdescSegMenu.Text) + ', ' +
         QuotedStr(DBEdescSegMenuInterno.Text) + ', ' + QuotedStr(DBEstSegMenu.Text) + ', ' +
         QuotedStr(cdsPadrao.FieldByName('excluir').AsString) + ', ' +
         QuotedStr(cdsPadrao.FieldByName('acessar').AsString) + ', ' +
         QuotedStr(cdsPadrao.FieldByName('incluir').AsString) + ', ' +
         QuotedStr(cdsPadrao.FieldByName('editar').AsString) + ', ' +
         DBEordem.Text + ', ' + QuotedStr(DBMobsSegMenu.Text) + ')';

  //Insere o Update
  sqlUp := 'UPDATE SegMenu SET descSegMenu  = ' + QuotedStr(DBEdescSegMenu.Text) + ', ' +
           ' descSegMenuInterno = ' + QuotedStr(DBEdescSegMenuInterno.Text) + ', ' +
           ' stSegMenu = ' + QuotedStr(DBEstSegMenu.Text) + ', ' +
           ' excluir = ' + QuotedStr(cdsPadrao.FieldByName('excluir').AsString) + ', ' +
           ' acessar = ' + QuotedStr(cdsPadrao.FieldByName('acessar').AsString) + ', ' +
           ' incluir = ' + QuotedStr(cdsPadrao.FieldByName('incluir').AsString) + ', ' +
           ' editar = ' + QuotedStr(cdsPadrao.FieldByName('editar').AsString) + ', ' +
           ' obsSegMenu = ' + QuotedStr(DBMobsSegMenu.Text) + ', ' +
           ' ordem = ' + DBEordem.Text +
           ' WHERE idSegModulo = ' + DBEidSegModulo.Text +
           ' AND idSegGrupoMenu = ' + DBEidSegGrupoMenu.Text +
           ' AND idSegMenu = ' + DBEidSegMenu.Text;

  //Insere o Delete
  sqlDel := 'DELETE FROM SegGrupoPermissao WHERE idSegModulo = ' + DBEidSegModulo.Text +
           ' AND idSegGrupoMenu = ' + DBEidSegGrupoMenu.Text +
           ' AND idSegMenu = ' + DBEidSegMenu.Text;


  Application.CreateForm(TFrmVerInsert, FrmVerInsert);
  FrmVerInsert.MemInsert.Lines.Add(sqlIns);
  FrmVerInsert.MemUpdate.Lines.Add(sqlUp);
  FrmVerInsert.MemDelete.Lines.Add(sqlDel);
  //Insere o Delete da tabela de Permissao
  sqlDel := 'DELETE FROM SegMenu WHERE idSegModulo = ' + DBEidSegModulo.Text +
           ' AND idSegGrupoMenu = ' + DBEidSegGrupoMenu.Text +
           ' AND idSegMenu = ' + DBEidSegMenu.Text;
  FrmVerInsert.MemDelete.Lines.Add(sqlDel);
  FrmVerInsert.ShowModal;
end;

procedure TfrmCadSegMenu.DBEidSegMenuExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadSegMenu.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  BtnVerInsert.Enabled := cdsPadrao.State = dsBrowse;
end;

procedure TfrmCadSegMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadSegMenu := nil;
end;

procedure TfrmCadSegMenu.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 3);
  chave[0] := DBEidSegModulo;
  chave[1] := DBEidSegGrupoMenu;
  chave[2] := DBEidSegMenu;
  foco := DBEidSegModulo;
  tab_chave := 'SegMenu';
  situacao := 'stSegMenu';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindSegMenu;
  Height := 560;
  Width := 610;
end;

end.
