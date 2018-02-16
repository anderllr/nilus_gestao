unit uFrmPesResultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind;

type
  TFrmPesResultado = class(TFrmPadraoPesqEmpContabil)
    CLabel8: TCLabel;
    DBEdescResultadoItem: TCDBEdit;
    CLabel3: TCLabel;
    DBEclassificacao: TCDBEdit;
    cdsPadraodescResultadoItem: TStringField;
    cdsPadraoclassificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdescResultadoItemChange(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dtTitulo : TDateTime;
    idEmpresa : integer;
  end;

var
  FrmPesResultado: TFrmPesResultado;

implementation

uses uFuncao;

{$R *.dfm}

procedure TFrmPesResultado.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  sql := 'SELECT * FROM vResultado WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND dtInicial <= ' +
         funcao.ConverteData(dtTitulo) + ' AND dtFinal >= ' + funcao.ConverteData(dtTitulo) +
         ' AND descResultadoItem LIKE ' + QuotedStr('%' + DBEdescResultadoItem.Text + '%') +
         ' AND classificacao LIKE ' + QuotedStr('%' + DBEclassificacao.Text + '%');
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  cdsGrid.IndexFieldNames := 'descResultadoItem';
  DBEdescResultadoItem.SetFocus;
end;

procedure TFrmPesResultado.DBEdescResultadoItemChange(Sender: TObject);
begin
  inherited;
  cdsGrid.FindNearest([DBEdescResultadoItem.Text]);
end;

procedure TFrmPesResultado.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEdescResultadoItem;
end;

procedure TFrmPesResultado.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  actPesquisar.Execute;
end;

end.
