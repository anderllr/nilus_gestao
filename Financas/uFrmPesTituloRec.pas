unit uFrmPesTituloRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpFiscal, System.Actions, System.ImageList;

type
  TFrmPesTituloRec = class(TFrmPadraoPesqEmpFiscal)
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
    DBEidTituloRecIni: TCDBEdit;
    DBEidTituloRecFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsGrididCliente: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGridnrTituloRec: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridstTituloRec: TStringField;
    CGroupBox1: TCGroupBox;
    DBCKstEstornado: TCDBCheckBox;
    DBCKstLiquidado: TCDBCheckBox;
    DBCKstAberto: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostAberto: TBooleanField;
    cdsPadraostLiquidado: TBooleanField;
    cdsPadraostEstornado: TBooleanField;
    FindCliente: TCFind;
    cdsPadraoidTituloRecIni: TStringField;
    cdsPadraoidTituloRecFim: TStringField;
    cdsGridvlTituloRec: TFMTBCDField;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididTituloRec: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa, idCliente : integer;
  end;

var
  FrmPesTituloRec: TFrmPesTituloRec;

implementation

uses uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesTituloRec.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT tit.idTituloRec, tit.idEmpresa, tit.idCadEmpresa, tit.idCliente, cad.descAbreviada, nrTituloRec, idDocSerie, dtEmissao, vlTituloRec, ' +
         'stTituloRec FROM titulorec tit, vCadClienteContabil cad WHERE tit.idCliente = cad.idCliente';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND tit.idCliente = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idTituloRecIni').AsString) <> '' then
    sql := sql + ' AND nrTituloRec >= ' + QuotedStr(cdsPadrao.FieldByName('idTituloRecIni').AsString);
  if trim(cdsPadrao.FieldByName('idTituloRecFim').AsString) <> '' then
    sql := sql + ' AND nrTituloRec <= ' + QuotedStr(cdsPadrao.FieldByName('idTituloRecFim').AsString);
  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stAberto').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('ABERTO')
    else
      status := status + ',' + QuotedStr('ABERTO');
  if cdsPadrao.FieldByName('stLiquidado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('LIQUIDADO')
    else
      status := status + ',' + QuotedStr('LIQUIDADO');
  if cdsPadrao.FieldByName('stEstornado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND stTituloRec IN (' + status + ')';

  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  inherited;  
end;

procedure TFrmPesTituloRec.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesTituloRec.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
end;

procedure TFrmPesTituloRec.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  if idCliente > 0 then
    cdsPadrao.FieldByName('idCliente').AsInteger := idCliente;

  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stAberto').AsBoolean := false;
  cdsPadrao.FieldByName('stLiquidado').AsBoolean := False;
  cdsPadrao.FieldByName('stEstornado').AsBoolean := False;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;

  if not DBCKconsolidafilial.Enabled then
    cdsPadraoconsolidafilial.AsString := 'N';
end;

end.
