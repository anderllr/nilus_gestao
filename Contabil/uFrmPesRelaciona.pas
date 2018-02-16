unit uFrmPesRelaciona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, CFind, SqlExpr, DB, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, CDBRadioGroup, EditAlign, CEdit;

type
  TFrmPesRelaciona = class(TFrmPadraoPesqEmpContabil)
    cdsPadraoidMovFinanceira: TIntegerField;
    FindMovFinanceira: TCFind;
    FindGerencial: TCFind;
    FindResultado: TCFind;
    FindPlanoContaCre: TCFind;
    FindContHistorico: TCFind;
    FindPlanoContaDeb: TCFind;
    FindContRelaciona: TCFind;
    CLabel10: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraocdPlanoContaDeb: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraocdPlanoContaCre: TIntegerField;
    cdsPadraoidContHistorico: TIntegerField;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel11: TCLabel;
    CLabel13: TCLabel;
    CLabel6: TCLabel;
    DBEidHistorico: TCDBEdit;
    LookHistorico: TCLookUp;
    CLabel7: TCLabel;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    LookdescPlanoContaCre: TCLookUp;
    DBEcdPlanoContaCre: TCDBEdit;
    CLabel8: TCLabel;
    LookGerencial: TCLookUp;
    LookResultado: TCLookUp;
    DBEidResultado: TCDBEdit;
    DBEidGerencial: TCDBEdit;
    CLabel9: TCLabel;
    CLabel12: TCLabel;
    LookMovFinanceira: TCLookUp;
    cdsGrididGerencial: TIntegerField;
    cdsGrididMovFinanceira: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGriddescMovFinanceira: TStringField;
    cdsGrididResultado: TIntegerField;
    cdsGrididContHistorico: TIntegerField;
    cdsGriddescContHistorico: TStringField;
    cdsGridcdPlanoContaDeb: TIntegerField;
    cdsGridcdPlanoContaCre: TIntegerField;
    cdsGriddescGerencial: TStringField;
    cdsGriddescResultado: TStringField;
    cdsGridtpPlanoConta: TStringField;
    DBRGtpPlanoConta: TCDBRadioGroup;
    EDtpPlanoConta: TCEdit;
    cdsGridclassificacao: TStringField;
    procedure DBRGtpPlanoContaChange(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExecutarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sel : boolean;
    tpPlano : string;
  end;

var
  FrmPesRelaciona: TFrmPesRelaciona;

implementation

{$R *.dfm}
uses uFrmContRelaciona;

procedure TFrmPesRelaciona.actExecutarExecute(Sender: TObject);
Var
vOrigem:string;
sql, status, tpConsulta : string;
begin
    if DBRGtpPlanoConta.ItemIndex = 0 then
       begin
        vOrigem:= 'FISCAL';
       end
    else
       begin
         vOrigem:='GERENCIAL';
       end;

  status := '';
  tpConsulta := '';
  sql := ' WHERE 1=1';

  screen.Cursor := crSqlWait;

  sql := sql + ' AND tpPlanoConta = ' + quotedstr(vOrigem);

  if trim(cdsPadrao.FieldByName('idEmpresa').AsString) <> '' then
    sql := sql + ' AND idEmpresa = ' + Trim(DBEidEmpresa.Text);

  if trim(cdsPadrao.FieldByName('idMovFinanceira').AsString) <> '' then
    sql := sql + ' AND idMovFinanceira = ' + Trim(DBEidMovFinanceira.text);

  if trim(cdsPadrao.FieldByName('idGerencial').AsString) <> '' then
    sql := sql + ' AND idGerencial = ' + Trim(DBEidGerencial.Text);

  if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
    sql := sql + ' AND idResultado = ' + Trim(DBEidResultado.Text);

  if trim(cdsPadrao.FieldByName('idContHistorico').AsString) <> '' then
    sql := sql + ' AND idContHistorico = ' + Trim(DBEidHistorico.Text);

  if trim(cdsPadrao.FieldByName('cdPlanoContaDeb').AsString) <> '' then
    sql := sql + ' AND cdPlanoContaDeb = ' + Trim(DBEcdPlanoContaDeb.Text);

  if trim(cdsPadrao.FieldByName('cdPlanoContaCre').AsString) <> '' then
    sql := sql + ' AND cdPlanoContaCre = ' + Trim(DBEcdPlanoContaCre.Text);

//  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := 'SELECT * FROM vPesRelaciona ' + sql;
  cdsGrid.Active := true;
  screen.Cursor := crDefault;

//  if trim(cdsGrid.IndexFieldNames) = '' then
//  begin
//    cdsGrid.IndexFieldNames := 'dtVencimento';
//    DBGrid.Columns[8].Title.Font.Style := DBGrid.Columns[8].Title.Font.Style + [fsBold];
//  end;

// inherited;
end;

procedure TFrmPesRelaciona.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraotpPlanoConta.AsString := tpPlano;
end;

procedure TFrmPesRelaciona.DBGridDblClick(Sender: TObject);
begin
//  inherited;
  if not cdsGrid.IsEmpty then
  begin
    sel := true;
    with FrmCadContRelaciona do
    begin
      if (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Cancel;
      cdsPadrao.Edit;
      cdsPadrao.FieldByName('tpPlanoConta').AsString := cdsGridtpPlanoConta.AsString;
      cdsPadrao.FieldByName('idMovFinanceira').AsString := cdsGrididMovFinanceira.AsString;
      DBEidMovFinanceiraExit(DBEidMovFinanceira);
      if not cdsGrididGerencial.IsNull then
      begin
        if not (cdsPadrao.State in [dsEdit, dsInsert]) then
          cdsPadrao.Edit;
        cdsPadrao.FieldByName('idGerencial').AsString := cdsGrididGerencial.AsString;
        DBEidGerencialExit(DBEidGerencial);
      end;
      if not cdsGrididResultado.IsNull then
      begin
        if not (cdsPadrao.State in [dsEdit, dsInsert]) then
          cdsPadrao.Edit;
        cdsPadrao.FieldByName('idResultado').AsString := cdsGrididResultado.AsString;
        DBEidResultadoExit(DBEidResultado);
      end;
      if (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Post;
    end;
    close;
  end;
end;

procedure TFrmPesRelaciona.DBRGtpPlanoContaChange(Sender: TObject);
begin
  inherited;
EDtpPlanoConta.text:=DBRGtpPlanoConta.value;
end;

procedure TFrmPesRelaciona.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmPesRelaciona:= nil;
end;

procedure TFrmPesRelaciona.FormCreate(Sender: TObject);
begin
  inherited;
  Height:=485;
  Width:=736;
  Foco:=DBEidMovFinanceira;
end;

procedure TFrmPesRelaciona.FormShow(Sender: TObject);
var
  r : TRect;
begin
  inherited;
  sel := false;
  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 85;
  Top := r.top + 65;  
end;

end.
