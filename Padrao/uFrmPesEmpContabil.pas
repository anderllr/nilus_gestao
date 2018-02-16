unit uFrmPesEmpContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, DB, DBClient, Provider, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, FMTBcd, SqlExpr;

type
  TFrmPesEmpContabil = class(TFrmPadraoPesquisa)
    CLabel42: TCLabel;
    DBEdescCadEmpresa: TCDBEdit;
    CLabel43: TCLabel;
    DBEdescAbreviadaEmp: TCDBEdit;
    cdsGrididEmpresa: TIntegerField;
    cdsGriddescCadEmpresa: TStringField;
    cdsGriddescAbreviada: TStringField;
    cdsGrididCnpjCpf: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesEmpContabil: TFrmPesEmpContabil;

implementation

uses uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesEmpContabil.FormCreate(Sender: TObject);
begin
   cdsGrid.CommandText := 'SELECT * FROM vCadEmpresaContabil WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                          ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +  ' AND acessa = ' +
                           QuotedStr('S') + ')';
  inherited;
end;
end.
