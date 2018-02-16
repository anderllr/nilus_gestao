unit uFrmPesContaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, CFind, SqlExpr, DB, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox;

type
  TFrmPesContaCliente = class(TFrmPadraoPesqEmpContabil)
    CGroupBox7: TCGroupBox;
    CLabel30: TCLabel;
    CLabel45: TCLabel;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    DBEcdPlanoContaCre: TCDBEdit;
    LookdescPlanoContaCre: TCLookUp;
    FindPlanoContaCre: TCFind;
    FindPlanoContaDeb: TCFind;
    CLabel9: TCLabel;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    FindCliente: TCFind;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraocdPlanoContaCre: TIntegerField;
    cdsPadraocdPlanoContaDeb: TIntegerField;
    CBitBtn2: TCBitBtn;
    CBitBtn1: TCBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesContaCliente: TFrmPesContaCliente;

implementation

uses uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesContaCliente.actExecutarExecute(Sender: TObject);
var
sql : string;
begin
  inherited;

  sql := ' SELECT * FROM vContaCliente WHERE idEmpresa = ' + DBEidEmpresa.Text;

  if trim(DBEidCliente.Text) <> '' then
     sql := sql + ' AND idCliente = '+ DBEidCliente.Text;

  if trim(DBEcdPlanoContaCre.Text) <> '' then
     sql := sql + ' AND cdPlanoContaCre = '+ DBEcdPlanoContaCre.Text;

  if trim(DBEcdPlanoContaDeb.Text) <> '' then
     sql := sql + ' AND cdPlanoContaDeb = '+ DBEcdPlanoContaDeb.Text;

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;


end;

procedure TFrmPesContaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmPesContaCliente := nil;
end;

procedure TFrmPesContaCliente.FormShow(Sender: TObject);
begin
  inherited;
  DBEidCliente.SetFocus;
end;

end.
