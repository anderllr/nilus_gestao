unit uFrmPesClienteFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, DB, DBClient, Provider, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, FMTBcd, SqlExpr, System.Actions;

type
  TFrmPesClienteFiscal = class(TFrmPadraoPesquisa)
    CLabel42: TCLabel;
    DBEdescCadCliente: TCDBEdit;
    CLabel43: TCLabel;
    DBEdescAbreviadaCli: TCDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdescCadClienteEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    busca : string;
  end;

var
  FrmPesClienteFiscal: TFrmPesClienteFiscal;

implementation

{$R *.dfm}

procedure TFrmPesClienteFiscal.DBEdescCadClienteEnter(Sender: TObject);
begin
  inherited;
  DBEdescCadCliente.SelStart := 1;
end;

procedure TFrmPesClienteFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
    close;
end;

procedure TFrmPesClienteFiscal.FormShow(Sender: TObject);
begin
  inherited;
  //Quando vem a variável busca com valor já preenche automático
  if trim(busca) <> '' then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('descCadCliente').AsString := busca;
  end;
end;

end.
