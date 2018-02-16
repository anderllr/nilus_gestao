unit uFrmPesPrevisaoRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, System.Actions, System.ImageList;

type
  TFrmPesPrevisaoRec = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanCliente: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookDescAbreviadaCliente: TCLookUp;
    LookidCnpjCpfCliente: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel11: TCLabel;
    DBEidPrevisaoRecIni: TCDBEdit;
    DBEidPrevisaoRecFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidPrevisaoRecIni: TIntegerField;
    cdsPadraoidPrevisaoRecFim: TIntegerField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsGrididCliente: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGridnrPrevisaoRec: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridstPrevisaoRec: TStringField;
    CGroupBox1: TCGroupBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TBooleanField;
    FindCliente: TCFind;
    cdsGridvlPrevisaoRec: TFMTBCDField;
    cdsPadraostBaixada: TBooleanField;
    cdsPadraostCancelada: TBooleanField;
    DBCKstBaixada: TCDBCheckBox;
    DBCKstCancelada: TCDBCheckBox;
    cdsGrididPrevisaoRec: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa : integer;
  end;

var
  FrmPesPrevisaoRec: TFrmPesPrevisaoRec;

implementation

uses uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesPrevisaoRec.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT tit.idCliente, cad.descAbreviada, nrPrevisaoRec, idDocSerie, dtEmissao, vlPrevisaoRec, ' +
         'stPrevisaoRec, idPrevisaoRec FROM Previsaorec tit, vCadClienteContabil cad WHERE tit.idCliente = cad.idCliente';
  sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND tit.idCliente = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idPrevisaoRecIni').AsString) <> '' then
    sql := sql + ' AND nrPrevisaoRec >= ' + cdsPadrao.FieldByName('idPrevisaoRecIni').AsString;
  if trim(cdsPadrao.FieldByName('idPrevisaoRecFim').AsString) <> '' then
    sql := sql + ' AND nrPrevisaoRec <= ' + cdsPadrao.FieldByName('idPrevisaoRecFim').AsString;
  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadraostBaixada.AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('BAIXADA')
    else
      status := status + ',' + QuotedStr('BAIXADA');
  if cdsPadraostCancelada.AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND stPrevisaoRec IN (' + status + ')';
//  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  inherited;
end;

procedure TFrmPesPrevisaoRec.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
end;

procedure TFrmPesPrevisaoRec.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadraostBaixada.AsBoolean := false;
  cdsPadraostCancelada.AsBoolean := False;
end;

end.
