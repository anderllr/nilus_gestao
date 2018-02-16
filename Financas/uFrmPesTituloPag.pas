unit uFrmPesTituloPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions, System.ImageList;

type
  TFrmPesTituloPag = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanFornecedor: TCPanelGradient;
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
    DBEidFornecedor: TCDBEdit;
    LookDescCadFornecedor: TCLookUp;
    LookDescAbreviadaFornecedor: TCLookUp;
    LookidCnpjCpfFornecedor: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel11: TCLabel;
    DBEidTituloPagIni: TCDBEdit;
    DBEidTituloPagFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsGrididFornecedor: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGridnrTituloPag: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridstTituloPag: TStringField;
    CGroupBox1: TCGroupBox;
    DBCKstEstornado: TCDBCheckBox;
    DBCKstLiquidado: TCDBCheckBox;
    DBCKstAberto: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostAberto: TBooleanField;
    cdsPadraostLiquidado: TBooleanField;
    cdsPadraostEstornado: TBooleanField;
    FindFornecedor: TCFind;
    cdsPadraoidTituloPagIni: TStringField;
    cdsPadraoidTituloPagFim: TStringField;
    cdsGridvlTituloPag: TFMTBCDField;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsGrididTituloPag: TIntegerField;
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
    idFornecedor : integer;
  end;

var
  FrmPesTituloPag: TFrmPesTituloPag;

implementation

uses uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesTituloPag.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT tit.idTituloPag, tit.idEmpresa, tit.idCadEmpresa, tit.idFornecedor, cad.descAbreviada, nrTituloPag, idDocSerie, dtEmissao, vlTituloPag, ' +
         'stTituloPag FROM TituloPag tit INNER JOIN vCadFornecedorContabil cad ON tit.idFornecedor = cad.idFornecedor WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idFornecedor').AsString) <> '' then
    sql := sql + ' AND tit.idFornecedor = ' + cdsPadrao.FieldByName('idFornecedor').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idTituloPagIni').AsString) <> '' then
    sql := sql + ' AND nrTituloPag >= ' + QuotedStr(cdsPadrao.FieldByName('idTituloPagIni').AsString);
  if trim(cdsPadrao.FieldByName('idTituloPagFim').AsString) <> '' then
    sql := sql + ' AND nrTituloPag <= ' + QuotedStr(cdsPadrao.FieldByName('idTituloPagFim').AsString);
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
    sql := sql + ' AND stTituloPag IN (' + status + ')';
  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidFornecedor.SetFocus;
  inherited;  
end;

procedure TFrmPesTituloPag.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesTituloPag.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
end;

procedure TFrmPesTituloPag.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;

  if idFornecedor > 0 then
    cdsPadrao.FieldByName('idFornecedor').AsInteger := idFornecedor;

  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stAberto').AsBoolean := false;
  cdsPadrao.FieldByName('stLiquidado').AsBoolean := False;
  cdsPadrao.FieldByName('stEstornado').AsBoolean := False;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;    
end;

end.
