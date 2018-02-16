unit uFrmPesEmpFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, DB, DBClient, Provider, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, FMTBcd, SqlExpr;

type
  TFrmPesEmpFiscal = class(TFrmPadraoPesquisa)
    CLabel42: TCLabel;
    DBEdescCadEmpresa: TCDBEdit;
    CLabel43: TCLabel;
    DBEdescAbreviadaEmp: TCDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesEmpFiscal: TFrmPesEmpFiscal;

implementation

uses uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesEmpFiscal.FormCreate(Sender: TObject);
begin
  cdsGrid.CommandText := 'SELECT * FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                         ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                         ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + ' and acessa = ' + QuotedStr('S') + ')';
  inherited;
end;
end.
