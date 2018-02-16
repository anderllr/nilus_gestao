unit uFrmCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient, EditAlign, CEdit, System.Actions, System.ImageList;

type
  TfrmCadUsuario = class(TFrmCadPadraoGrid)
    sdsUsuario: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidUsuario: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescUsuario: TCDBEdit;
    FindUsuario: TCFind;
    CLabel1: TCLabel;
    DBElogin: TCDBEdit;
    CLabel17: TCLabel;
    DBEidUsuarioGrupo: TCDBEdit;
    LookUsuarioGrupo: TCLookUp;
    EDSenha: TCEdit;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    EDConfirma: TCEdit;
    DBEsenha: TCDBEdit;
    FindUsuarioGrupo: TCFind;
    FindEmpresa: TCFind;
    CGroupBox3: TCGroupBox;
    LookRazao: TCLookUp;
    DBEidEmpresa: TCDBEdit;
    CLabel5: TCLabel;
    DBEidCadEmpresa: TCDBEdit;
    lookidCnpjCpf: TCLookUp;
    LookInscricao: TCLookUp;
    TabEmpresa: TTabSheet;
    CGroupBox4: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    CDBEdit1: TCDBEdit;
    CDBEdit2: TCDBEdit;
    CGroupBox5: TCGroupBox;
    grdUsuarioEmpresa: TCDBGrid;
    dsUsuarioEmpresa: TDataSource;
    cdsUsuarioEmpresa: TClientDataSet;
    dspUsuarioEmpresa: TDataSetProvider;
    sdsUsuarioEmpresa: TSQLDataSet;
    cdsEmpresa: TClientDataSet;
    cdsUsuarioEmpresaidUsuario: TSmallintField;
    cdsUsuarioEmpresaidEmpresa: TIntegerField;
    cdsUsuarioEmpresaidCadEmpresa: TSmallintField;
    cdsUsuarioEmpresaacessa: TStringField;
    cdsUsuarioEmpresadescCadEmpresa: TStringField;
    cdsUsuarioEmpresadescAbreviada: TStringField;
    procedure EDConfirmaChange(Sender: TObject);
    procedure EDConfirmaExit(Sender: TObject);
    procedure DBEidUsuarioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure grdUsuarioEmpresaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdUsuarioEmpresaColEnter(Sender: TObject);
    procedure grdUsuarioEmpresaCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsUsuarioEmpresaCalcFields(DataSet: TDataSet);
    procedure ConfigLookEmpresa;
    procedure DBGridCellClick(Column: TColumn);
    procedure PagAbasChange(Sender: TObject);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

uses uDmPadrao, uFrmCadPadrao, uFuncao, uFrmPesEmpFiscal, uFrmPrincipal;

{$R *.dfm}

//****************************************************************************************//
procedure TfrmCadUsuario.actSalvarExecute(Sender: TObject);
begin
  if trim(EDSenha.Text) <> trim(EDConfirma.Text) then
  begin
    messagedlg('Senha confirmada diferente! Informe novamente!', mtwarning, [mbok], 0);
    EDConfirma.SetFocus;
    exit;
  end;
  if EDSenha.Text <> '' then
    cdsPadrao.FieldByName('senha').AsString := funcao.Crypt('C', EDSenha.Text)
  else
    if cdsPadrao.State = dsInsert then
    begin
      messagedlg('Você deve informar a senha do Usuário!', mtwarning, [mbok], 0);
      exit;
    end;
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadUsuario.cdsUsuarioEmpresaCalcFields(DataSet: TDataSet);
var
  sql : string;
begin
  inherited;
  if (cdsUsuarioEmpresaidEmpresa.AsInteger > 0) and (cdsUsuarioEmpresaidCadEmpresa.AsInteger > 0) then
  begin
    sql := 'SELECT * FROM vCadEmpresaFiscal WHERE idEmpresa = ' + cdsUsuarioEmpresaidEmpresa.AsString +
           ' AND idCadEmpresa = ' + cdsUsuarioEmpresaidCadEmpresa.AsString;
    with frmPrincipal.ExecutaSqlRet([], '', sql) do
    begin
      cdsUsuarioEmpresadescCadEmpresa.AsString := FieldByName('descCadEmpresa').AsString;
      cdsUsuarioEmpresadescAbreviada.AsString := FieldByName('descAbreviada').AsString;
    end;
  end; // fim do if (cdsUsuarioEmpresaidEmpresa.AsInteger > 0) and (cdsUsuarioEmpresaidCadEmpresa.AsInteger > 0) then
end;

procedure TfrmCadUsuario.ConfigLookEmpresa;
begin
  LookRazao.AlternateSQL.Clear;
  LookRazao.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookInscricao.AlternateSQL.Clear;
  LookInscricao.AlternateSQL.Add('SELECT idInscEstadual FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');

end;

procedure TfrmCadUsuario.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
    FrmPesEmpFiscal.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
        FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
        DBEidCadEmpresa.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmCadUsuario.DBEidUsuarioExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  if (trim(DBEidUsuario.Text) <> '') and (cdsPadrao.State in [dsBrowse, dsEdit]) then
    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidUsuario], 'spVerUsuarioEmpresa');
  AbreTabSecundaria;
  EDSenha.Clear;
  EDConfirma.Clear;
end;

procedure TfrmCadUsuario.DBGridCellClick(Column: TColumn);
begin
  inherited;
  EDSenha.Clear;
  EDConfirma.Clear;

end;

procedure TfrmCadUsuario.EDConfirmaChange(Sender: TObject);
begin
  inherited;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TfrmCadUsuario.EDConfirmaExit(Sender: TObject);
begin
  inherited;
  if trim(EDConfirma.Text) <> '' then 
    if trim(EDSenha.Text) <> trim(EDConfirma.Text) then
    begin
      messagedlg('Senha confirmada diferente! Informe novamente!', mtwarning, [mbok], 0);
      EDConfirma.SetFocus;
      exit;
    end;
end;

procedure TfrmCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadUsuario := nil;
end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  ConfigLookEmpresa;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsUsuarioEmpresa;  
  chave[0] := DBEidUsuario;
  foco := DBEidUsuario;
  tab_chave := 'Usuario';
  FindPesquisa := FindUsuario;
  Width := 453;
  Height := 506;
end;

procedure TfrmCadUsuario.FormShow(Sender: TObject);
begin
  inherited;
  Self.FOriginalOptions := Self.grdUsuarioEmpresa.Options;
  Self.grdUsuarioEmpresa.Options := Self.grdUsuarioEmpresa.Options - [dgEditing];
end;

procedure TfrmCadUsuario.grdUsuarioEmpresaCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsUsuarioEmpresa do
    begin
      if IsEmpty then
        exit;
      Self.grdUsuarioEmpresa.Options := Self.grdUsuarioEmpresa.Options - [dgEditing];
      Edit;
      if FieldByName('acessa').AsString = 'S' then
      begin
        FieldByName('acessa').AsString := 'N';
      end
      else
      begin
        FieldByName('acessa').AsString := 'S';
      end;
      Post;
      grdUsuarioEmpresa.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    Self.grdUsuarioEmpresa.Options := Self.FOriginalOptions;
end;

procedure TfrmCadUsuario.grdUsuarioEmpresaColEnter(Sender: TObject);
begin
  inherited;
  if grdUsuarioEmpresa.SelectedIndex > 0 then
    Self.grdUsuarioEmpresa.Options := Self.FOriginalOptions;
end;

procedure TfrmCadUsuario.grdUsuarioEmpresaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
begin
  inherited;
  marca := false;
  if cdsUsuarioEmpresa.FieldByName('acessa').Value = 'S' then
    marca := true;

//  if (Column = 1) and (ARow >= 1) then
  if (Column.Index = 0) then
  begin
    Self.grdUsuarioEmpresa.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.grdUsuarioEmpresa.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
  end;
end;

procedure TfrmCadUsuario.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 1 then
  begin
    if (trim(DBEidUsuario.Text) <> '') and (cdsPadrao.State in [dsBrowse, dsEdit]) then
      funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidUsuario], 'spVerUsuarioEmpresa');
    AbreTabSecundaria;
  end;

end;

end.
