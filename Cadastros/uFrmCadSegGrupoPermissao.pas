unit uFrmCadSegGrupoPermissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit, CLookUp, ExtCtrls,
  CPanelGradient, DB, DBClient, Provider, Grids, DBGrids, CDBGrid, CDBMemo,
  CDBCheckBox, CPanel, Buttons, CBitBtn, FMTBcd, SqlExpr;

type
  TfrmCadSegGrupoPermissao = class(TForm)
    PanTopo: TCPanelGradient;
    LookSegModulo: TCLookUp;
    CLookUp1: TCLookUp;
    DBEidSegModulo: TCDBEdit;
    CLabel61: TCLabel;
    CLabel1: TCLabel;
    DBEidUsuarioGrupo: TCDBEdit;
    lookUsuarioGrupo: TCLookUp;
    CLookUp3: TCLookUp;
    dsTopo: TDataSource;
    cdsTopo: TClientDataSet;
    cdsTopoidUsuarioGrupo: TIntegerField;
    cdsTopoidSegModulo: TIntegerField;
    cdsLookup: TClientDataSet;
    dspLookup: TDataSetProvider;
    DBGrid: TCDBGrid;
    dsGrid: TDataSource;
    cdsGrid: TClientDataSet;
    cdsGrididSegGrupoMenu: TIntegerField;
    cdsGrididSegMenu: TIntegerField;
    cdsGridexcluir: TStringField;
    cdsGridacessar: TStringField;
    cdsGridincluir: TStringField;
    cdsGrideditar: TStringField;
    cdsGridobsSegMenu: TStringField;
    cdsGriddescSegMenu: TStringField;
    cdsGridgrupo: TIntegerField;
    PanBotoes: TCPanelGradient;
    cdsGriddescGrid: TStringField;
    panControle: TCPanel;
    DBMobsSegMenu: TCDBMemo;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    DBEdescSegMenu: TCDBEdit;
    DBCKincluir: TCDBCheckBox;
    DBCKeditar: TCDBCheckBox;
    DBCKexcluir: TCDBCheckBox;
    DBCKAcessar: TCDBCheckBox;
    BtnSalvar: TCBitBtn;
    BtnPermitir: TCBitBtn;
    BtnBloquear: TCBitBtn;
    BtnFechar: TCBitBtn;
    cdsPermissao: TClientDataSet;
    sdsPermissao: TSQLDataSet;
    dspPermissao: TDataSetProvider;
    dsPermissao: TDataSource;
    cdsGriddescSegMenuInterno: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure MudaGrupo;
    procedure MudaModulo;
    procedure cdsTopoidUsuarioGrupoValidate(Sender: TField);
    procedure cdsTopoidSegModuloValidate(Sender: TField);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsGridAfterScroll(DataSet: TDataSet);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnPermitirClick(Sender: TObject);
    procedure Permissao(tipo : string);
    procedure BtnBloquearClick(Sender: TObject);
    procedure DBCKAcessarClick(Sender: TObject);
    procedure DBCKexcluirClick(Sender: TObject);
    procedure DBCKincluirClick(Sender: TObject);
    procedure DBCKeditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSegGrupoPermissao: TfrmCadSegGrupoPermissao;

implementation

uses uDmFind, uDmPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TfrmCadSegGrupoPermissao.BtnBloquearClick(Sender: TObject);
begin
  Permissao('N');
end;

procedure TfrmCadSegGrupoPermissao.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadSegGrupoPermissao.BtnPermitirClick(Sender: TObject);
begin
  Permissao('S');
end;

procedure TfrmCadSegGrupoPermissao.BtnSalvarClick(Sender: TObject);
var
  sql : string;
begin
//MOdificado para fazer atualização geral em todos os módulos por action
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if (cdsGridgrupo.AsInteger = 0) and (
       (cdsGridexcluir.OldValue <> cdsGridexcluir.NewValue) or
       (cdsGridacessar.OldValue <> cdsGridacessar.NewValue) or
       (cdsGridincluir.OldValue <> cdsGridincluir.NewValue) or
       (cdsGrideditar.OldValue <> cdsGrideditar.NewValue)
       )then
    begin
      sql := 'UPDATE vSegMenuPermissao SET excluir = ' + QuotedStr(cdsGridexcluir.AsString) + ', ' +
             ' acessar = ' + QuotedStr(cdsGridacessar.AsString) + ', ' +
             ' incluir = ' + QuotedStr(cdsGridincluir.AsString) + ', ' +
             ' editar = ' + QuotedStr(cdsGrideditar.AsString) +
             ' WHERE idUsuarioGrupo = ' + DBEidUsuarioGrupo.Text +
             '   AND descSegMenuInterno = ' + QuotedStr(cdsGriddescSegMenuInterno.AsString);
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;

    cdsGrid.Next;
  end;
end;

procedure TfrmCadSegGrupoPermissao.cdsGridAfterScroll(DataSet: TDataSet);
var
  sql : string;
begin
  panControle.Visible := cdsGridgrupo.AsInteger = 0;
  if (cdsGridgrupo.AsInteger = 0) and (cdsGrididSegGrupoMenu.AsInteger > 0) and
     (cdsGrididSegMenu.AsInteger > 0)  then
  begin
    //verifica se para o menu selecionado existe os botoes
    sql := 'SELECT * FROM SegMenu WHERE idSegModulo = ' + cdsTopoidSegModulo.AsString +
           ' AND idSegGrupoMenu = ' + cdsGrididSegGrupoMenu.AsString +
           ' AND idSegMenu = ' + cdsGrididSegMenu.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      DBCKincluir.Visible := FieldByName('incluir').AsString = 'S';
      DBCKacessar.Visible := FieldByName('acessar').AsString = 'S';
      DBCKeditar.Visible := FieldByName('editar').AsString = 'S';
      DBCKexcluir.Visible := FieldByName('excluir').AsString = 'S';
    end;
  end;
end;

procedure TfrmCadSegGrupoPermissao.cdsTopoidSegModuloValidate(Sender: TField);
begin
  MudaModulo;
end;

procedure TfrmCadSegGrupoPermissao.cdsTopoidUsuarioGrupoValidate(
  Sender: TField);
begin
  MudaGrupo;
end;

procedure TfrmCadSegGrupoPermissao.DBCKAcessarClick(Sender: TObject);
begin
if cdsGrid.State = dsEdit then
  begin
    if DBCKAcessar.Checked then
      cdsGridacessar.AsString := 'S'
    else
      cdsGridacessar.AsString := 'N';
      cdsGrid.Post;
      cdsGrid.Edit;
  end;
end;

procedure TfrmCadSegGrupoPermissao.DBCKeditarClick(Sender: TObject);
begin
  if cdsGrid.State = dsEdit then
  begin
    if DBCKeditar.Checked then
      cdsGrideditar.AsString := 'S'
    else
      cdsGrideditar.AsString := 'N';
      cdsGrid.Post;
      cdsGrid.Edit;
  end;
end;

procedure TfrmCadSegGrupoPermissao.DBCKexcluirClick(Sender: TObject);
begin
  if cdsGrid.State = dsEdit then
  begin
    if DBCKexcluir.Checked then
      cdsGridexcluir.AsString := 'S'
    else
      cdsGridexcluir.AsString := 'N';
      cdsGrid.Post;
      cdsGrid.Edit;
  end;

end;

procedure TfrmCadSegGrupoPermissao.DBCKincluirClick(Sender: TObject);
begin
  if cdsGrid.State = dsEdit then
  begin
    if DBCKincluir.Checked then
      cdsGridincluir.AsString := 'S'
    else
      cdsGridincluir.AsString := 'N';
      cdsGrid.Post;
      cdsGrid.Edit;
  end;
end;

procedure TfrmCadSegGrupoPermissao.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  begin
    if cdsGridgrupo.AsInteger = 1 then
    begin
      DBGrid.Canvas.Brush.Color := $00A6D2D2;
     DBGrid.Canvas.Font.Style := DBGrid.Canvas.Font.Style + [fsbold];
    end
    else
      if State = [] then
        DBGrid.Canvas.Brush.Color := clWhite;
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmCadSegGrupoPermissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmCadSegGrupoPermissao := nil;
end;

procedure TfrmCadSegGrupoPermissao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with cdsGrid do
  begin
    if (not IsEmpty) and (not (DBGrid.Focused)) then
    begin
      if key = VK_UP then
        Prior;
      if key = VK_DOWN then
        Next;
    end;
  end;
  //valores para os checks
  if PanControle.Visible then
  begin
    if key in [VK_F6, VK_F7, VK_F8, VK_F9] then
    begin
      if not (cdsGrid.State in [dsEdit, dsInsert]) then
        cdsGrid.Edit;

      if (key = VK_F6) and (DBCKAcessar.Visible) then
        if cdsGridacessar.AsString = 'N' then
          cdsGridacessar.AsString := 'S'
        else
          cdsGridacessar.AsString := 'N';

      if (key = VK_F7) and (DBCKexcluir.Visible) then
        if cdsGridexcluir.AsString = 'N'  then
          cdsGridexcluir.AsString := 'S'
        else
          cdsGridexcluir.AsString := 'N';

      if (key = VK_F8) and (DBCKincluir.Visible) then
        if cdsGridincluir.AsString = 'N'  then
          cdsGridincluir.AsString := 'S'
        else
          cdsGridincluir.AsString := 'N';

      if (key = VK_F9) and (DBCKeditar.Visible) then
        if cdsGrideditar.AsString = 'N'  then
          cdsGrideditar.AsString := 'S'
        else
          cdsGrideditar.AsString := 'N';

      cdsGrid.Post;

    end; //fim do if key in [VK_F9, VK_F10, VK_F11, VK_F12] then
  end;
end;

procedure TfrmCadSegGrupoPermissao.FormShow(Sender: TObject);
var
  r : TRect;
begin
  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 10;
  Top := r.top + 10;
  cdsTopo.CreateDataSet;
  cdsGrid.CreateDataSet;
  panControle.Visible := false;
  BtnSalvar.Enabled := false;
  BtnPermitir.Enabled := false;
  BtnBloquear.Enabled := false;

  DBGrid.Columns[0].Width := 350;
end;

procedure TfrmCadSegGrupoPermissao.MudaGrupo;
begin
  //rotinha para alterar os dados quando mudar o grupo
  cdsTopoidSegModulo.Clear;
  BtnSalvar.Enabled := false;
  BtnPermitir.Enabled := false;
  BtnBloquear.Enabled := false;
end;

procedure TfrmCadSegGrupoPermissao.MudaModulo;
var
  sql : string;
  idGrupoAnt : integer;
begin
  cdsGrid.EmptyDataSet;
  BtnSalvar.Enabled := false;
  BtnPermitir.Enabled := false;
  BtnBloquear.Enabled := false;

  //rotina que irá carregar os menus
  if (cdsTopoidSegModulo.AsInteger <= 0)  or (cdsTopoidUsuarioGrupo.AsInteger <= 0) or (cdsTopoidSegModulo.IsNull) then
    exit;

  //verifica se tem os menus para o usuário referenciado e gera as permissões
  with frmPrincipal.ExecutaSQLRet([DBEidSegModulo], '', 'SegMenu') do
  begin
    First;
    while not Eof do
    begin
      dmPadrao.cdsTmp.Active := false;
      sql := 'SELECT COUNT(*) Qtde FROM SegGrupoPermissao WHERE idSegModulo = ' + cdsTopoidSegModulo.AsString +
             ' AND idSegGrupoMenu = ' + FieldByName('idSegGrupoMenu').AsString +
             ' AND idSegMenu = ' + FieldByName('idSegMenu').AsString +
             ' AND idUsuarioGrupo = ' + DBEidUsuarioGrupo.Text;
      dmPadrao.cdsTmp.CommandText := sql;
      dmPadrao.cdsTmp.Active := true;
      if dmPadrao.cdsTmp.FieldByName('Qtde').AsInteger <= 0 then
      begin
        sql := 'INSERT INTO SegGrupoPermissao (idSegModulo, idSegGrupoMenu, idSegMenu, idUsuarioGrupo,' +
               'excluir, editar, incluir, acessar) VALUES (' + cdsTopoidSegModulo.AsString + ', ' +
               FieldByName('idSegGrupoMenu').AsString + ', ' + FieldByName('idSegMenu').AsString +
               ', ' + DBEidUsuarioGrupo.Text + ', ' + QuotedStr('N') + ', ' + QuotedStr('N')
                + ', ' + QuotedStr('N') + ', ' + QuotedStr('N') + ')';
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      Next;
    end; //fim do while not Eof do
  end; //fim do with frmPrincipal.ExecutaSQLRet([DBEidSegModulo], '', 'SegMenu') do

  //monta a tela para a exibição dos dados para as permissões
  sql := 'SELECT p.*, g.descSegGrupoMenu, m.obsSegMenu, m.descSegMenu, m.descSegMenuInterno ' +
         ' FROM SegGrupoPermissao p INNER JOIN SegGrupoMenu g ' +
         ' ON p.idSegGrupoMenu = g.idSegGrupoMenu AND p.idSegModulo = g.idSegModulo INNER JOIN ' +
         ' SegMenu m ON p.idSegModulo = m.idSegModulo AND p.idSegGrupoMenu = m.idSegGrupoMenu ' +
         ' AND p.idSegMenu = m.idSegMenu  WHERE p.idSegModulo = ' + cdsTopoidSegModulo.AsString +
         ' AND p.idUsuarioGrupo = ' + DBEidUsuarioGrupo.Text + ' ORDER BY g.ordem';
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    idGrupoAnt := 0;
    First;
    while not Eof do
    begin
      if idGrupoAnt <> FieldByName('idSegGrupoMenu').AsInteger  then //significa que veio grupo novo
      begin
        cdsGrid.Append;
        cdsGriddescGrid.AsString := FieldByName('descSegGrupoMenu').AsString;
        cdsGridgrupo.AsInteger := 1;
        cdsGrid.Post;
        idGrupoAnt := FieldByName('idSegGrupoMenu').AsInteger;
      end;

      cdsGrid.Append;
      cdsGrididSegGrupoMenu.AsInteger := FieldByName('idSegGrupoMenu').AsInteger;
      cdsGrididSegMenu.AsInteger := FieldByName('idSegMenu').AsInteger;
      cdsGridexcluir.AsString := FieldByName('excluir').AsString;
      cdsGrideditar.AsString := FieldByName('editar').AsString;
      cdsGridincluir.AsString := FieldByName('incluir').AsString;
      cdsGridacessar.AsString := FieldByName('acessar').AsString;
      cdsGridobsSegMenu.AsString := FieldByName('obsSegMenu').AsString;
      cdsGriddescGrid.AsString := '          ' + FieldByName('descSegMenu').AsString;
      cdsGriddescSegMenu.AsString := FieldByName('descSegMenu').AsString;
      cdsGriddescSegMenuInterno.AsString := FieldByName('descSegMenuInterno').AsString;
      cdsGridgrupo.AsInteger := 0;
      cdsGrid.Post;
      Next;
    end; //while not Eof do
    cdsGrid.First;
  end;//with frmPrincipal.ExecutaSQLRet([], '', sql) do
  BtnSalvar.Enabled := true;
  BtnPermitir.Enabled := true;
  BtnBloquear.Enabled := true;
end;

procedure TfrmCadSegGrupoPermissao.Permissao(tipo: string);
var
  bm : TBookMark;
  //procedure q irá liberar ou bloquear todos os registros conforme o tipo passado S ou N
begin
  bm := cdsGrid.GetBookmark;
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridgrupo.AsInteger = 0 then
    begin
      cdsGrid.Edit;
      cdsGridexcluir.AsString := tipo;
      cdsGrideditar.AsString := tipo;
      cdsGridacessar.AsString := tipo;
      cdsGridincluir.AsString := tipo;
      cdsGrid.Post;
    end;
    cdsGrid.Next;
  end;
  cdsGrid.GotoBookmark(bm);
  cdsGrid.FreeBookmark(bm);
end;

end.
