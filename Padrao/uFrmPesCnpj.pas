unit uFrmPesCnpj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  Grids, DBGrids, CDBGrid, CGroupBox, CLabel, System.Actions;

type
  TFrmPesCnpj = class(TFrmPadraoPesquisa)
    CLabel1: TCLabel;
    BtnVoltar: TCBitBtn;
    cdsPadraoidCadGeral: TIntegerField;
    procedure BtnVoltarClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    prefixo, idCadGeral: string;
    tem : boolean;
  end;

var
  FrmPesCnpj: TFrmPesCnpj;

implementation

{$R *.dfm}

procedure TFrmPesCnpj.BtnVoltarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmPesCnpj.DBGridDblClick(Sender: TObject);
begin
  if not cdsGrid.IsEmpty then
    idCadGeral := cdsGrid.FieldByName('idCliente').AsString;
  inherited;
end;

procedure TFrmPesCnpj.FormShow(Sender: TObject);
begin
  inherited;
  cdsGrid.Active := false;
  if not tem then 
    cdsGrid.CommandText := 'SELECT * FROM vCadClienteContabil WHERE idCliente <> ' + QuotedStr(idCadGeral) + 'AND idCnpjCpf LIKE ' + QuotedStr('%' + prefixo + '%')
  else
    cdsGrid.CommandText := 'SELECT * FROM vCadClienteContabil WHERE idCnpjCpf LIKE ' + QuotedStr('%' + prefixo + '%');  
  cdsGrid.Active := true;
end;

end.
