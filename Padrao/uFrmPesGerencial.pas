unit uFrmPesGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind;

type
  TFrmPesGerencial = class(TFrmPadraoPesqEmpContabil)
    CLabel8: TCLabel;
    DBEdescGerencialItem: TCDBEdit;
    CLabel3: TCLabel;
    DBEclassificacao: TCDBEdit;
    cdsPadraoclassificacao: TStringField;
    cdsPadraodescGerencialItem: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdescGerencialItemChange(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dtTitulo : TDateTime;
    idEmpresa : integer;
    tpGerencialItem : string;
  end;

var
  FrmPesGerencial: TFrmPesGerencial;

implementation

uses uFuncao;

{$R *.dfm}

procedure TFrmPesGerencial.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  sql := 'SELECT * FROM vGerencial WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND tpGerencialItem = ' + QuotedStr(tpGerencialItem) + ' AND dtInicial <= ' +
         funcao.ConverteData(dtTitulo) + ' AND dtFinal >= ' + funcao.ConverteData(dtTitulo) +
         ' AND descGerencialItem LIKE ' + QuotedStr('%' + DBEdescGerencialItem.Text + '%') +
         ' AND classificacao LIKE ' + QuotedStr('%' + DBEclassificacao.Text + '%');
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  cdsGrid.IndexFieldNames := 'descGerencialItem';
  DBEdescGerencialItem.SetFocus;
end;

procedure TFrmPesGerencial.DBEdescGerencialItemChange(Sender: TObject);
begin
  inherited;
  cdsGrid.FindNearest([DBEdescGerencialItem.Text]);
end;

procedure TFrmPesGerencial.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEdescGerencialItem;
end;

procedure TFrmPesGerencial.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  actPesquisar.Execute;
end;

end.
