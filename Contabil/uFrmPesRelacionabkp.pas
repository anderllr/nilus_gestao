unit uFrmPesRelacionabkp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, ExtCtrls, DBCtrls, CDBRadioGroup,
  CLookUp, StdCtrls, Mask, CDBEdit, CLabel, CFind, SqlExpr, DB, DBClient,
  Provider, ActnList, ImgList, Buttons, CBitBtn, CPanelGradient, Grids, DBGrids,
  CDBGrid, CGroupBox;

type
  TFrmPesRelaciona454 = class(TFrmPadraoPesquisa)
    PanEmpresa: TCPanelGradient;
    FindEmpresa: TCFind;
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    dspEmpresa: TDataSetProvider;
    lookidCnpjCpf: TCLookUp;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBEidEmpresa: TCDBEdit;
    CLabel2: TCLabel;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresadescCadEmpresa: TStringField;
    cdsEmpresadescAbreviada: TStringField;
    cdsEmpresaidCnpjCpf: TStringField;
    RadioGroup1: TRadioGroup;
    FindMovFinanceira: TCFind;
    FindGerenciaP: TCFind;
    FindResultado: TCFind;
    FindPlanoContaCre: TCFind;
    FindContHistorico: TCFind;
    FindPlanoContaDeb: TCFind;
    FindContRelaciona: TCFind;
    CLabel10: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerencial: TCLookUp;
    LookMovFinanceira: TCLookUp;
    CLabel11: TCLabel;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    CLabel1: TCLabel;
    DBEidHistorico: TCDBEdit;
    LookHistorico: TCLookUp;
    CLabel3: TCLabel;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    CLabel4: TCLabel;
    DBEcdPlanoContaCre: TCDBEdit;
    LookdescPlanoContaCre: TCLookUp;
    cdsPadraoidMovFinanceira: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraocdPlanoContaDeb: TIntegerField;
    cdsPadraocdPlanoContaCre: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraoidContHistorico: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
    parSql : string;
  public
    { Public declarations }
  end;

var
  FrmPesRelaciona454: TFrmPesRelaciona454;

implementation

{$R *.dfm}

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPadrao;

procedure TFrmPesRelaciona454.actExecutarExecute(Sender: TObject);
Var
vOrigem:string;
sql, status, tpConsulta : string;
begin
    if RadioGroup1.ItemIndex = 0 then
       begin
        vOrigem:= 'GERENCIAL';
       end
    else
       begin
         vOrigem:='FISCAL';
       end;

  parSql := '';
  status := '';
  tpConsulta := '';
  sql := ' WHERE 1=1';


  screen.Cursor := crSqlWait;

  if trim(cdsPadrao.FieldByName('idEmpresa').AsString) <> '' then
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;

  if trim(cdsPadrao.FieldByName('tpPlanoConta').AsString) <> '' then
    sql := sql + ' AND tpPlanoConta = ' + quotedstr(vOrigem);

  if trim(cdsPadrao.FieldByName('idMovFinanceira').AsString) <> '' then
    sql := sql + ' AND idMovFinanceira = ' + DBEidMovFinanceira.text;

  if trim(cdsPadrao.FieldByName('idGerencial').AsString) <> '' then
    sql := sql + ' AND idGerencial = ' + DBEidGerencial.Text;

  if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
    sql := sql + ' AND idResultado = ' + DBEidResultado.Text;

  if trim(cdsPadrao.FieldByName('idHistorico').AsString) <> '' then
    sql := sql + ' AND idHistorico = ' + DBEidHistorico.Text;

  if trim(cdsPadrao.FieldByName('cdPlanoContaDeb').AsString) <> '' then
    sql := sql + ' AND cdPlanoContaDeb = ' + DBEcdPlanoContaDeb.Text;

  if trim(cdsPadrao.FieldByName('cdPlanoContaCre').AsString) <> '' then
    sql := sql + ' AND cdPlanoContaCre = ' + DBEcdPlanoContaCre.Text;

//  showmessage(sql);
  parSql := sql;
  cdsGrid.Active := false;
  cdsGrid.CommandText := 'SELECT * FROM vPesRelaciona ' + sql;
  cdsGrid.Active := true;
  screen.Cursor := crDefault;

//  if trim(cdsGrid.IndexFieldNames) = '' then
//  begin
//    cdsGrid.IndexFieldNames := 'dtVencimento';
//    DBGrid.Columns[8].Title.Font.Style := DBGrid.Columns[8].Title.Font.Style + [fsBold];
//  end;

 inherited;
end;

procedure TFrmPesRelaciona454.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//FrmPesRelaciona:= nil;
end;

procedure TFrmPesRelaciona454.FormCreate(Sender: TObject);
begin
  inherited;
//DBRGtpPlanoConta.Value:='G';
  Height := 485;
  Width := 690;
end;

end.
