unit uFrmPesManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, CFind, DB, SqlExpr, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox;

type
  TFrmPesManutencao = class(TFrmPadraoPesqEmpFiscal)
    CLabel7: TCLabel;
    CLabel23: TCLabel;
    CLabel11: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidManutencaoIni: TCDBEdit;
    DBEidManutencaoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididManutencao: TIntegerField;
    cdsGriddtManutencao: TSQLTimeStampField;
    cdsGridvlManutencao: TFMTBCDField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidManutencaoIni: TIntegerField;
    cdsPadraoidManutencaoFim: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    LookFornecedorFiscal: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    LblCad: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGridvlItem: TFMTBCDField;
    cdsGriddescCadFornecedor: TStringField;
    DBEidNfFim: TCDBEdit;
    CLabel1: TCLabel;
    DBEidNfIni: TCDBEdit;
    CLabel2: TCLabel;
    cdsPadraoidNfIni: TIntegerField;
    cdsPadraoidNfFim: TIntegerField;
    cdsGrididNf: TStringField;
    procedure actExecutarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesManutencao: TFrmPesManutencao;

implementation

uses uFuncao, uDmFind;

{$R *.dfm}

procedure TFrmPesManutencao.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT DISTINCT M.idEmpresa, M.idCadEmpresa, M.idManutencao, descProduto, vlItem, ' +
         ' dtManutencao, vlManutencao, descCadFornecedor, M.idNf FROM MaquinaManutencao M INNER JOIN vcadEmpresaFiscal cad ' +
         ' ON M.idEmpresa = cad.idEmpresa AND M.idCadEmpresa = cad.idCadEmpresa LEFT JOIN MaquinaManutencaoItem MI ' +
         ' ON MI.idEmpresa = M.idEmpresa AND MI.idCadEmpresa = M.idCadEmpresa AND MI.idManutencao = M.idManutencao ' +
         ' LEFT JOIN vCadFornecedorContabil F ON M.idFornecedor = F.idFornecedor LEFT JOIN Produto P ' +
         ' ON MI.idProduto = P.idProduto ' +
         ' WHERE M.idEmpresa = ' + DBEidEmpresa.Text +
         ' AND M.idCadEmpresa = ' + DBEidCadEmpresa.Text;

  if trim(cdsPadrao.FieldByName('idMaquina').AsString) <> '' then
    sql := sql + ' AND M.idMaquina = ' + cdsPadrao.FieldByName('idMaquina').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND MI.idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtManutencao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtManutencao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idFornecedor').AsString) <> '' then
    sql := sql + ' AND M.idFornecedor = ' + QuotedStr(cdsPadrao.FieldByName('idFornecedor').AsString);
  if trim(cdsPadrao.FieldByName('idManutencaoIni').AsString) <> '' then
    sql := sql + ' AND M.idManutencao >= ' + QuotedStr(cdsPadrao.FieldByName('idManutencaoIni').AsString);
  if trim(cdsPadrao.FieldByName('idManutencaoFim').AsString) <> '' then
    sql := sql + ' AND M.idManutencao <= ' + QuotedStr(cdsPadrao.FieldByName('idManutencaoFim').AsString);
  if (trim(cdsPadrao.FieldByName('idNfIni').AsString) <> '') or (trim(cdsPadrao.FieldByName('idNfFim').AsString) <> '') then
    sql := sql + ' AND ISNUMERIC(M.idNf) > 0 ';
  if trim(cdsPadrao.FieldByName('idNfIni').AsString) <> '' then
    sql := sql + ' AND CONVERT(INT, M.idNf) >= ' + QuotedStr(cdsPadrao.FieldByName('idNfIni').AsString);
  if trim(cdsPadrao.FieldByName('idNfFim').AsString) <> '' then
    sql := sql + ' AND CONVERT(INT, M.idNf) <= ' + QuotedStr(cdsPadrao.FieldByName('idNfFim').AsString);

  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidMaquina.SetFocus;
//  inherited;
end;

procedure TFrmPesManutencao.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsString := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := idCadEmpresa;
end;

end.
