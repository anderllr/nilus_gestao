unit uFrmPesLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, CFind, SqlExpr, DB, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, CDBComboBox, CDBRadioGroup;

type
  TfrmPesLote = class(TFrmPadraoPesqEmpContabil)
    DBRGtpLote: TCDBRadioGroup;
    CGroupBox2: TCGroupBox;
    CLabel6: TCLabel;
    CLabel8: TCLabel;
    CLabel10: TCLabel;
    DBEidLoteIni: TCDBEdit;
    DBEmesAno: TCDBEdit;
    DBEidLoteFim: TCDBEdit;
    DBRGtpPlanoConta: TCDBRadioGroup;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraoidLoteIni: TIntegerField;
    cdsPadraoidLoteFim: TIntegerField;
    cdsPadraomesAno: TStringField;
    cdsPadraostLote: TStringField;
    cdsPadraotpLote: TStringField;
    CDBComboBox1: TCDBComboBox;
    CLabel1: TCLabel;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEmesAnoExit(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesLote: TfrmPesLote;

implementation

{$R *.dfm}

procedure TfrmPesLote.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
//  inherited;
  if trim(cdsPadraotpPlanoConta.AsString) = '' then
  begin
    messagedlg('Você precisa informar se é Fiscal ou Gerencial!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'SELECT idLote, dtLote, descLote, dtLoteIni, dtLoteFin FROM ContLote WHERE idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND tpPlanoConta = ' + QuotedStr(cdsPadraotpPlanoConta.AsString);
  if trim(DBEidLoteIni.Text) <> '' then
    sql := sql + ' AND idLote >= ' + DBEidLoteIni.Text;
  if trim(DBEidLoteFim.Text) <> '' then
    sql := sql + ' AND idLote <= ' + DBEidLoteFim.Text;
  if trim(DBEmesAno.Text) <> '' then
    sql := sql + ' AND (MONTH(dtLote) = MONTH(' + '01/' + QuotedStr(DBEmesAno.Text) + ') AND YEAR(dtLote) = YEAR(' + '01/' + QuotedStr(DBEmesAno.Text) + '))';
  if (trim(cdsPadraostLote.AsString) <> '') and (cdsPadraostLote.AsString <> 'TODOS') then
    sql := sql + ' AND stLote = ' + QuotedStr(cdsPadraostLote.AsString);
  sql := SQL + ' AND tpLote LIKE ' + QuotedStr('%' + cdsPadraotpLote.AsString + '%');

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

end;

procedure TfrmPesLote.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if trim(cdsPadraotpPlanoConta.AsString) = '' then
    cdsPadraotpPlanoConta.AsString := 'F';
  if trim(cdsPadraotpLote.AsString) = '' then
    cdsPadraotpLote.AsString := '%';
    cdsPadraostLote.AsString := 'TODOS';
end;

procedure TfrmPesLote.DBEmesAnoExit(Sender: TObject);
var
  dtString : string;
  dt : TDateTime;
begin
  inherited;
  if trim(DBEmesAno.Text) <> '' then
    try
      dtString := '01/' + DBEmesAno.Text;
      dt := StrToDate(dtString);
    except
      messagedlg('Mês e Ano Inválidos! Verifique a expressão digitada!', mterror, [mbok], 0);
      DBEmesAno.SetFocus;
    end;
end;

end.
