unit uFrmPadraoPesqEmpContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  Grids, DBGrids, CDBGrid, CGroupBox, CLookUp, Mask, DBCtrls, CDBEdit, CLabel,
  CFind, System.Actions, System.ImageList;

type
  TFrmPadraoPesqEmpContabil = class(TFrmPadraoPesquisa)
    PanEmpresa: TCPanelGradient;
    lblEmpresa: TCLabel;
    lblCNPJ: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    cdsPadraoidEmpresa: TIntegerField;
    FindEmpresa: TCFind;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure ConfigLookEmpresa;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadraoPesqEmpContabil: TFrmPadraoPesqEmpContabil;

implementation

uses uFrmPrincipal;

{$R *.dfm}

procedure TFrmPadraoPesqEmpContabil.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with (Formulario.FindComponent('cdsPadrao') as TClientDataSet) do
  begin
    if (Trim(FieldByName('idEmpresa').AsString) = '') or (Trim(FieldByName('idEmpresa').AsString) = '0') then
      FieldByName('idEmpresa').AsString := FrmPrincipal.idEmpresa;
  end;
end;

procedure TFrmPadraoPesqEmpContabil.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaContabil cont WHERE idEmpresa IN ' +
                             ' (SELECT DISTINCT idEmpresa FROM UsuarioEmpresa usu WHERE idUsuario = ' +
                             frmPrincipal.idUsuario + '  AND acessa = ' + QuotedStr('S') +
                             ') AND idEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaContabil cont WHERE idEmpresa IN ' +
                             ' (SELECT DISTINCT idEmpresa FROM UsuarioEmpresa usu WHERE idUsuario = ' +
                             frmPrincipal.idUsuario + '  AND acessa = ' + QuotedStr('S') +
                             ') AND idEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaContabil cont WHERE idEmpresa IN ' +
                             ' (SELECT DISTINCT idEmpresa FROM UsuarioEmpresa usu WHERE idUsuario = ' +
                             frmPrincipal.idUsuario + '  AND acessa = ' + QuotedStr('S') +
                             ') AND idEmpresa = ?');
end;

procedure TFrmPadraoPesqEmpContabil.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;

end;

end.
