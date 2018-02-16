unit uFrmPesMovTransf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, CFind, SqlExpr, DB, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, uFrmPadraoPesqEmpFiscal, System.Actions;

type
  TFrmPesqMovTransf = class(TFrmPadraoPesqEmpFiscal)
    CLabel9: TCLabel;
    DBEidMovTransf: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtMovTransfIni: TCDBEdit;
    DBEdtMovTransfFim: TCDBEdit;
    CLabel3: TCLabel;
    cdsPadraodtMovTransfIni: TDateTimeField;
    cdsPadraodtMovTransfFim: TDateTimeField;
    cdsGridHistorico: TStringField;
    cdsGridData: TSQLTimeStampField;
    cdsGridOrigem: TStringField;
    cdsGridDestino: TStringField;
    cdsGridValor: TFMTBCDField;
    cdsPadraoidMovTransf: TIntegerField;
    cdsGridNumero: TIntegerField;
    procedure DBGridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExecutarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqMovTransf: TFrmPesqMovTransf;

implementation

uses uFuncao, uDmPadrao, uFrmCadMovTransf;

{$R *.dfm}

procedure TFrmPesqMovTransf.actExecutarExecute(Sender: TObject);
var
sql : string;

begin
  sql := 'EXEC spConsultaMovTransf ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ',' +
                                      funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                                      funcao.RetornaValorEField(DBEidMovTransf, 3) + ',' +
                                      funcao.RetornaValorEField(DBEdtMovTransfIni, 3) + ',' +
                                      funcao.RetornaValorEField(DBEdtMovTransfFim, 3);

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidMovTransf.SetFocus;
  //inherited;
end;
procedure TFrmPesqMovTransf.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if (trim(cdsGrid.FieldByName('Numero').AsString) <> '' )then
  begin
    if not (FrmCadMovTransf.cdsPadrao.State in [dsEdit, dsInsert]) then
      FrmCadMovTransf.cdsPadrao.Edit;
    FrmCadMovTransf.cdsPadrao.FieldByName('idMovTransf').AsString:= cdsGrid.FieldByName('Numero').AsString;
    FrmCadMovTransf.DBEidMovTransfExit(FrmCadMovTransf.DBEidMovTransf);
    FrmCadMovTransf.HabilitaEdits;
  end;
end;

procedure TFrmPesqMovTransf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmPesqMovTransf := nil;
end;

procedure TFrmPesqMovTransf.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidEmpresa;
end;

end.
