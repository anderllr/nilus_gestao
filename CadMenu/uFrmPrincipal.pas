unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, SqlExpr, DBClient, CLookUp, StdCtrls, Mask,
  DBCtrls, CDBEdit, CLabel, ExtCtrls, CPanelGradient, Buttons, CBitBtn,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, CRadioGroup, CListBox,
  CGroupBox, CFind;

type
  TFrmPrincipal = class(TForm)
    cdsBusca: TClientDataSet;
    sdsBusca: TSQLDataSet;
    dspBusca: TDataSetProvider;
    dsBusca: TDataSource;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    cdsPadrao: TClientDataSet;
    dsPadrao: TDataSource;
    cdsPadraodescAction: TStringField;
    cdsPadraonameAction: TStringField;
    cdsPadraoobsAction: TStringField;
    cdsPadraoordem: TIntegerField;
    cdsPadraoexcluir: TStringField;
    cdsPadraoeditar: TStringField;
    cdsPadraoincluir: TStringField;
    cdsPadraoacessar: TStringField;
    PanTopo: TCPanelGradient;
    CLabel42: TCLabel;
    CLabel1: TCLabel;
    DBEnameAction: TCDBEdit;
    DBEdescAction: TCDBEdit;
    cdsLocal: TClientDataSet;
    sdsLocal: TSQLDataSet;
    dspLocal: TDataSetProvider;
    dsLocal: TDataSource;
    BtnExecutar: TCBitBtn;
    DBEordem: TCDBEdit;
    CLabel2: TCLabel;
    DBCKAcessar: TCDBCheckBox;
    DBCKincluir: TCDBCheckBox;
    DBCKeditar: TCDBCheckBox;
    DBCKexcluir: TCDBCheckBox;
    DBMobsAction: TCDBMemo;
    CLabel3: TCLabel;
    PanSimilar: TCPanelGradient;
    CLabel4: TCLabel;
    GridSimilar: TCDBGrid;
    CPanelGradient1: TCPanelGradient;
    CPanelGradient2: TCPanelGradient;
    rgModulos: TCRadioGroup;
    rgGrupo: TCRadioGroup;
    CGroupBox1: TCGroupBox;
    lstMenus: TCListBox;
    FindAction: TCFind;
    BtnSalvar: TCBitBtn;
    BtnVerScript: TCBitBtn;
    BtnExcluirMenu: TCBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BuscaSql(sql: string);
    procedure rgModulosClick(Sender: TObject);
    procedure rgGrupoClick(Sender: TObject);
    procedure BtnExecutarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnVerScriptClick(Sender: TObject);
    procedure BtnExcluirMenuClick(Sender: TObject);
  private
    { Private declarations }
    idModulos, idGrupos, idMenus : TStrings;   //variável que armazenará o histórico de scripts

  public
    { Public declarations }
    histScript : TStrings;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses uDmPadrao, uFuncao, uFrmVerInsert;

{$R *.dfm}

procedure TFrmPrincipal.BtnExcluirMenuClick(Sender: TObject);
var
  sql : string;
  ordem : integer;
begin
  sql := 'DELETE FROM SegGrupoPermissao WHERE idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] +
           ' AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex] +
           ' AND idSegMenu = ' + idMenus.Strings[lstMenus.ItemIndex];

  dmPadrao.dbConexao.ExecuteDirect(sql);

  histScript.Add(sql);

  //Insere o Delete da tabela de Permissao
  sql := 'DELETE FROM SegMenu WHERE idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] +
           ' AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex] +
           ' AND idSegMenu = ' + idMenus.Strings[lstMenus.ItemIndex];

  dmPadrao.dbConexao.ExecuteDirect(sql);

  histScript.Add(sql);

  //Organiza ordem
  sql := 'SELECT * FROM SegMenu WHERE idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] +
         ' AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex] + ' ORDER BY ordem';

  BuscaSql(sql);
  with cdsBusca do
  begin
    First;
    ordem := 1;
    while not Eof do
    begin
      if ordem = cdsPadraoordem.AsInteger then
        ordem := ordem + 1;

      sql := 'UPDATE SegMenu SET ordem = ' + IntToStr(ordem) + ' WHERE idSegModulo = ' +
             FieldByName('idSegModulo').AsString + ' AND idSegGrupoMenu = ' +
             FieldByName('idSegGrupoMenu').AsString + ' AND idSegMenu = ' +
             FieldByName('idSegMenu').AsString;

      dmPadrao.dbConexao.ExecuteDirect(sql);
      histScript.Add(sql);
      //incrementa a ordem
      ordem := ordem + 1;

      Next;
    end;
  end; // fim do with cdsBusca do

  rgGrupoClick(rgGrupo);

  BtnExecutar.Click;
end;

procedure TFrmPrincipal.BtnExecutarClick(Sender: TObject);
var
  sql, name : string;
begin
  name := DBEnameAction.Text;
  cdsPadrao.Append;
  cdsLocal.Active := false;
  cdsLocal.CommandText := 'SELECT mo.descSegModulo, gm.descSegGrupoMenu, m.descSegMenu, m.excluir, m.acessar, ' +
                          ' m.incluir, m.editar, m.obsSegMenu, m.ordem, m.stSegMenu FROM SegMenu m INNER JOIN ' +
                          ' SegGrupoMenu gm ON m.idSegModulo = gm.idSegModulo AND m.idSegGrupoMenu = gm.idSegGrupoMenu ' +
                          ' INNER JOIN SegModulo mo ON gm.idSegModulo = mo.idSegModulo WHERE 1=2';
  if trim(name) <> '' then
  begin
    cdsPadraonameAction.AsString := name;
    sql := 'SELECT TOP 1 * FROM SegMenu WHERE descSegMenuInterno = ' + QuotedStr(name);
    BuscaSql(sql);
    if cdsBusca.RecordCount > 0 then
    begin
      cdsPadraodescAction.AsString := cdsBusca.FieldByName('descSegMenu').AsString;
      cdsPadraoordem.AsInteger := cdsBusca.FieldByName('ordem').AsInteger;
      cdsPadraoobsAction.AsString := cdsBusca.FieldByName('obsSegMenu').AsString;
      cdsPadraoexcluir.AsString := cdsBusca.FieldByName('excluir').AsString;
      cdsPadraoeditar.AsString := cdsBusca.FieldByName('editar').AsString;
      cdsPadraoincluir.AsString := cdsBusca.FieldByName('incluir').AsString;
      cdsPadraoacessar.AsString := cdsBusca.FieldByName('acessar').AsString;

      //Carrega o Grid com o Histórico
      cdsLocal.CommandText := 'SELECT mo.descSegModulo, gm.descSegGrupoMenu, m.descSegMenu, m.excluir, m.acessar, ' +
                              ' m.incluir, m.editar, m.obsSegMenu, m.ordem, m.stSegMenu FROM SegMenu m INNER JOIN ' +
                              ' SegGrupoMenu gm ON m.idSegModulo = gm.idSegModulo AND m.idSegGrupoMenu = gm.idSegGrupoMenu ' +
                              ' INNER JOIN SegModulo mo ON gm.idSegModulo = mo.idSegModulo WHERE m.descSegMenuInterno = ' +
                              QuotedStr(name);

    end; //if cdsBusca.RecordCount > 0 then
  end; //if trim(name) <> '' then
  cdsLocal.Active := true;
end;

procedure TFrmPrincipal.BtnSalvarClick(Sender: TObject);
var
  sql, msg : string;
  idSegMenu, ordem : integer;
begin
  msg := '';
  if (rgModulos.ItemIndex < 0) or (rgGrupo.ItemIndex < 0) then
    msg := 'Você precisa selecionar Módulo e Grupo que fará a Inclusão/Edição!' + #13;

  //verifica agora se os campos não estão vazios
  if trim(DBEnameAction.Text) = '' then
    msg := msg + 'Você deve informar o nome da ação!' + #13;

  if trim(DBEdescAction.Text) = '' then
    msg := msg + 'Você deve informar a descrição da ação!' + #13;

  if trim(DBEordem.Text) = '' then
    msg := msg + 'Você deve informar a ordem da ação!' + #13;

  if trim(DBMobsAction.Text) = '' then
    msg := msg + 'Você deve informar a observação da ação!' + #13;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  //verifica se existe cadastrada para o grupo selecionado a ação informada se sim
  // busca o código
  sql := 'SELECT idSegMenu FROM SegMenu WHERE idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] +
         ' AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex] + ' AND descSegMenuInterno = ' +
         QuotedStr(trim(DBEnameAction.Text));

  BuscaSql(sql);
  if (cdsBusca.RecordCount > 0)  and (trim(DBEnameAction.Text) <> '-') then //existe então geração será de update
  begin
    idSegMenu := cdsBusca.FieldByName('idSegMenu').AsInteger;
      //Insere o Update
    sql := 'UPDATE SegMenu SET descSegMenu  = ' + QuotedStr(DBEdescAction.Text) + ', ' +
             ' descSegMenuInterno = ' + QuotedStr(DBEnameAction.Text) + ', ' +
             ' stSegMenu = ' + QuotedStr('ATIVO') + ', ' +
             ' excluir = ' + QuotedStr(cdsPadrao.FieldByName('excluir').AsString) + ', ' +
             ' acessar = ' + QuotedStr(cdsPadrao.FieldByName('acessar').AsString) + ', ' +
             ' incluir = ' + QuotedStr(cdsPadrao.FieldByName('incluir').AsString) + ', ' +
             ' editar = ' + QuotedStr(cdsPadrao.FieldByName('editar').AsString) + ', ' +
             ' obsSegMenu = ' + QuotedStr(DBMobsAction.Text) + ', ' +
             ' ordem = ' + DBEordem.Text +
             ' WHERE idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] +
             ' AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex] +
             ' AND idSegMenu = ' + IntToStr(idSegMenu);
    histScript.Add(sql);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end
  else
  begin //não encontrado então terá que inserir
    sql := 'SELECT ISNULL(MAX(idSegMenu), 0) idSegMenu FROM SegMenu WHERE idSegModulo = ' +
           idModulos.Strings[rgModulos.ItemIndex] + ' AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex];
    BuscaSql(sql);
    idSegMenu := cdsBusca.FieldByName('idSegMenu').AsInteger + 1;
    sql := 'INSERT INTO SegMenu (idSegModulo, idSegGrupoMenu, idSegMenu, descSegMenu, ' +
           ' descSegMenuInterno, stSegMenu, excluir, acessar, incluir, editar, ordem, obsSegMenu) ' +
           ' VALUES(' + idModulos.Strings[rgModulos.ItemIndex] + ', ' + idGrupos.Strings[rgGrupo.ItemIndex] + ', ' +
           IntToStr(idSegMenu) + ', ' + QuotedStr(DBEdescAction.Text) + ', ' +
           QuotedStr(DBEnameAction.Text) + ', ' + QuotedStr('ATIVO') + ', ' +
           QuotedStr(cdsPadrao.FieldByName('excluir').AsString) + ', ' +
           QuotedStr(cdsPadrao.FieldByName('acessar').AsString) + ', ' +
           QuotedStr(cdsPadrao.FieldByName('incluir').AsString) + ', ' +
           QuotedStr(cdsPadrao.FieldByName('editar').AsString) + ', ' +
           DBEordem.Text + ', ' + QuotedStr(DBMobsAction.Text) + ')';
    histScript.Add(sql);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end; //fim do else

  //Organiza ordem
  sql := 'SELECT * FROM SegMenu WHERE idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] +
         ' AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex] +
         ' AND RTRIM(ordem) + RTRIM(descSegMenuInterno) <> ' + QuotedStr(trim(DBEordem.Text) + trim(DBEnameAction.Text)) +
         ' ORDER BY ordem';

  BuscaSql(sql);
  with cdsBusca do
  begin
    First;
    ordem := 1;
    while not Eof do
    begin
      if ordem = cdsPadraoordem.AsInteger then
        ordem := ordem + 1;

      //se for igual não há necessidade de executar de novo
      if FieldByName('ordem').AsInteger <> ordem then
      begin
        sql := 'UPDATE SegMenu SET ordem = ' + IntToStr(ordem) + ' WHERE idSegModulo = ' +
               FieldByName('idSegModulo').AsString + ' AND idSegGrupoMenu = ' +
               FieldByName('idSegGrupoMenu').AsString + ' AND idSegMenu = ' +
               FieldByName('idSegMenu').AsString;

        dmPadrao.dbConexao.ExecuteDirect(sql);
        histScript.Add(sql);
      end;
      //incrementa a ordem
      ordem := ordem + 1;

      Next;
    end;
  end; // fim do with cdsBusca do

  rgGrupoClick(rgGrupo);

  BtnExecutar.Click;
end;

procedure TFrmPrincipal.BtnVerScriptClick(Sender: TObject);
begin
  Application.CreateForm(TFrmVerInsert, FrmVerInsert);
  FrmVerInsert.MemScript.Lines.Assign(histScript);
  FrmVerInsert.ShowModal;
end;

procedure TFrmPrincipal.BuscaSql(sql: string);
begin
  cdsBusca.Active := false;
  cdsBusca.CommandText := sql;
  cdsBusca.Active := true;
end;

procedure TFrmPrincipal.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  cdsPadraoexcluir.AsString := 'S';
  cdsPadraoeditar.AsString := 'S';
  cdsPadraoincluir.AsString := 'S';
  cdsPadraoacessar.AsString := 'S';
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
  histScript := TStringList.Create;
  idModulos := TStringList.Create;
  idGrupos := TStringList.Create;
  idMenus := TStringList.Create;
  Width := 830;
  Height := 575;
  Application.OnMessage := funcao.AppMessage;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
var
  sql : string;
begin
  sql := 'SELECT idSegModulo, REPLACE(REPLACE(descSegModulo, ' + QuotedStr('Modulo de ') +
           ', ' + QuotedStr('') + '), ' + QuotedStr('Modulo ') + ',' + QuotedStr('') +
           ') descSegModulo FROM SegModulo WHERE stSegModulo = '+ QuotedStr('ATIVO') +
           ' ORDER BY idSegModulo';
  BuscaSql(sql);
  with cdsBusca do
  begin
    First;
    while not Eof do
    begin
      rgModulos.Items.Add(FieldByName('descSegModulo').AsString);
      idModulos.Add(FieldByName('idSegModulo').AsString);
      Next;
    end; //fim do while not Eof do
  end; //fim do with cdsBusca do
end;

procedure TFrmPrincipal.rgGrupoClick(Sender: TObject);
var
  sql : string;
begin
  if rgModulos.ItemIndex < 0 then //signigica que não selecionou nada
    exit;

  lstMenus.Items.Clear;
  idMenus.Clear;
  sql := 'SELECT idSegModulo, idSegGrupoMenu, idSegMenu, descSegMenu, ordem FROM SegMenu WHERE stSegMenu = ' +
         QuotedStr('ATIVO') + ' AND idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] +
         'AND idSegGrupoMenu = ' + idGrupos.Strings[rgGrupo.ItemIndex] + ' ORDER BY ordem';
  BuscaSql(sql);
  with cdsBusca do
  begin
    First;
    while not Eof do
    begin
      lstMenus.Items.Add(FieldByName('ordem').AsString + ' - ' +  FieldByName('descSegMenu').AsString);
      idMenus.Add(FieldByName('idSegMenu').AsString);
      Next;
    end; //fim do while not Eof do
  end; //fim do with cdsBusca do
end;

procedure TFrmPrincipal.rgModulosClick(Sender: TObject);
var
  sql : string;
begin
  if rgModulos.ItemIndex < 0 then //signigica que não selecionou nada
    exit;

  rgGrupo.Items.Clear;
  idGrupos.Clear;
  sql := 'SELECT idSegModulo, idSegGrupoMenu, descSegGrupoMenu FROM SegGrupoMenu WHERE stSegGrupoMenu = ' +
         QuotedStr('ATIVO') + ' AND idSegModulo = ' + idModulos.Strings[rgModulos.ItemIndex] + ' ORDER BY ordem';
  BuscaSql(sql);
  with cdsBusca do
  begin
    First;
    while not Eof do
    begin
      rgGrupo.Items.Add(FieldByName('descSegGrupoMenu').AsString);
      idGrupos.Add(FieldByName('idSegGrupoMenu').AsString);
      Next;
    end; //fim do while not Eof do
  end; //fim do with cdsBusca do
end;

end.
