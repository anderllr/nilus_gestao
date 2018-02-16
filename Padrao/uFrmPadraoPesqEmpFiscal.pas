unit uFrmPadraoPesqEmpFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  Grids, DBGrids, CDBGrid, CGroupBox, CLookUp, Mask, DBCtrls, CDBEdit, CLabel,
  CFind, System.Actions, System.ImageList;

type
  TFrmPadraoPesqEmpFiscal = class(TFrmPadraoPesquisa)
    PanEmpresa: TCPanelGradient;
    lblEmpresa: TCLabel;
    lblCNPJ: TCLabel;
    lblInscricao: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    LookidInscEstadual: TCLookUp;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    FindEmpresa: TCFind;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure FormCreate(Sender: TObject);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure cdsEmpresaidEmpresaValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa : string;
    filial : boolean;
  end;

var
  FrmPadraoPesqEmpFiscal: TFrmPadraoPesqEmpFiscal;

implementation

uses uFrmPrincipal, uFrmPesEmpFiscal, uFrmPesEmpContabil, uFuncao;

{$R *.dfm}

procedure TFrmPadraoPesqEmpFiscal.cdsEmpresaidEmpresaValidate(Sender: TField);
begin
  inherited;
  if (trim(cdsEmpresaidEmpresa.AsString) <> '') then
  begin
    if not filial then
    begin
      cdsEmpresa.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsEmpresaidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsEmpresa.FieldByName('idCadEmpresa').AsString) = '' then
         cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := 1;

    end;
  end;
end;

procedure TFrmPadraoPesqEmpFiscal.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookidInscEstadual.AlternateSQL.Clear;
  LookidInscEstadual.AlternateSQL.Add('SELECT idInscEstadual FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');

end;

procedure TFrmPadraoPesqEmpFiscal.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  idEmpresa := DBEidEmpresa.Text;
  idCadEmpresa := DBEidCadEmpresa.Text;
end;

procedure TFrmPadraoPesqEmpFiscal.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if (DBEidEmpresa.Text <> idEmpresa) or (DBEidCadEmpresa.Text <> idCadEmpresa) then
  begin
    if not filial then
    begin
      cdsEmpresa.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsEmpresaidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsEmpresa.FieldByName('idCadEmpresa').AsString) = '' then
         cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := 1;
    end;
  end;

end;

procedure TFrmPadraoPesqEmpFiscal.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    if filial then
    begin
      Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
      FrmPesEmpFiscal.ShowModal;
      with (Formulario.FindComponent('cdsEmpresa') as TClientDataset) do
      begin
        if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
          FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
          (Formulario.FindComponent('DBEidCadEmpresa') as TCustomEdit).SetFocus;
        end;
      end;
    end;  // FIM DO IF FILIAL
  end; // fim do VK_F4
end;

procedure TFrmPadraoPesqEmpFiscal.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
end;

procedure TFrmPadraoPesqEmpFiscal.FormShow(Sender: TObject);
begin
  inherited;
  with (Formulario.FindComponent('cdsEmpresa') as TClientDataSet) do
  begin
    CreateDataSet;
    Append;
    if trim(idEmpresa) <> '' then
      FieldByName('idEmpresa').Value := idEmpresa
    else
      FieldByName('idEmpresa').Value := FrmPrincipal.idEmpresa;
    filial := true;
    if frmPrincipal.modulo = 'FIN' then //verificação se está vindo do financeiro para a possibilidade de lançar por filial
    begin
      filial := false;
      cdsLookup.Active := false;
      cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
      cdsLookup.Active := true;
      filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
      if not filial then
      begin
        FieldByName('idCadEmpresa').Value := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
        DBEidCadEmpresa.Visible := false;
        LookdescCadEmpresa.Left := 111;
        LookdescAbreviada.Left := 367;
        lookidCnpjCpf.Visible := false;
        LookidInscEstadual.Visible := false;
        PanEmpresa.Height := 28;
      end;
    end;
    if filial then
    begin
      if trim(idCadEmpresa) <> '' then
        FieldByName('idCadEmpresa').Value := idCadEmpresa
      else
        FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa;
    end
    else
    begin
      FindEmpresa.JoinClause.Clear;
      FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                 ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                                 ' AND acessa = ' + QuotedStr('S') + ')');

      DBEidEmpresa.Find := FindEmpresa;
    end;

  end;

end;

end.
