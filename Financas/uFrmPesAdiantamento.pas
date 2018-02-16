unit uFrmPesAdiantamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpFiscal;

type
  TFrmPesAdiantamento = class(TFrmPadraoPesqEmpFiscal)
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
    DBEidAdiantamentoIni: TCDBEdit;
    DBEidAdiantamentoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostAberto: TBooleanField;
    FindCliente: TCFind;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraoidAdiantamentoIni: TIntegerField;
    cdsPadraoidAdiantamentoFim: TIntegerField;
    cdsPadraostFinalizado: TBooleanField;
    DBCKstAtivo: TCDBCheckBox;
    DBCKstAberto: TCDBCheckBox;
    DBCKstFinalizado: TCDBCheckBox;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididCadGeral: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGrididAdiantamento: TIntegerField;
    cdsGriddtAdiantamento: TSQLTimeStampField;
    cdsGridvlAdiantamento: TFMTBCDField;
    cdsGridstAdiantamento: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa : integer;    
  end;

var
  FrmPesAdiantamento: TFrmPesAdiantamento;

implementation

uses uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmPesAdiantamento.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT adt.idEmpresa, adt.idCadEmpresa, adt.idCadGeral, cad.descAbreviada, ' +
         ' idAdiantamento, dtAdiantamento, vlAdiantamento, stAdiantamento FROM Adiantamento adt ' +
         ' INNER JOIN vCadClienteContabil cad ON adt.idCadGeral = cad.idCliente ';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND adt.idCadGeral = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtAdiantamento >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtAdiantamento <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idAdiantamentoIni').AsString) <> '' then
    sql := sql + ' AND idAdiantamento >= ' + QuotedStr(cdsPadrao.FieldByName('idAdiantamentoIni').AsString);
  if trim(cdsPadrao.FieldByName('idAdiantamentoFim').AsString) <> '' then
    sql := sql + ' AND idAdiantamento <= ' + QuotedStr(cdsPadrao.FieldByName('idAdiantamentoFim').AsString);
  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stAberto').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('ABERTO')
    else
      status := status + ',' + QuotedStr('ABERTO');
  if cdsPadrao.FieldByName('stFinalizado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('FINALIZADO')
    else
      status := status + ',' + QuotedStr('FINALIZADO');

  if trim(status) <> '' then
    sql := sql + ' AND stAdiantamento IN (' + status + ')';

  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  inherited;  
end;

procedure TFrmPesAdiantamento.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesAdiantamento.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
end;

procedure TFrmPesAdiantamento.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stAberto').AsBoolean := false;
  cdsPadrao.FieldByName('stFinalizado').AsBoolean := False;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;
end;

end.
