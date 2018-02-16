unit uFrmPesOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, CFind, DB, SqlExpr, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox;

type
  TFrmPesOperacao = class(TFrmPadraoPesqEmpFiscal)
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
    DBEidOperacaoIni: TCDBEdit;
    DBEidOperacaoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraoidOperacaoIni: TIntegerField;
    cdsPadraoidOperacaoFim: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididOperacao: TIntegerField;
    cdsGriddtOperacao: TSQLTimeStampField;
    cdsGridvlProduto: TFMTBCDField;
    procedure actExecutarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesOperacao: TFrmPesOperacao;

implementation

uses uFuncao;

{$R *.dfm}

procedure TFrmPesOperacao.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT M.idEmpresa, M.idCadEmpresa, M.idOperacao, dtOperacao, vlProduto ' +
         ' FROM MaquinaOperacao M INNER JOIN vcadEmpresaFiscal cad ' +
         ' ON M.idEmpresa = cad.idEmpresa AND M.idCadEmpresa = cad.idCadEmpresa LEFT JOIN MaquinaOperacaoProd MI ' +
         ' ON MI.idEmpresa = M.idEmpresa AND MI.idCadEmpresa = M.idCadEmpresa AND MI.idOperacao = M.idOperacao' +
         ' WHERE M.idEmpresa = ' + DBEidEmpresa.Text +
         ' AND M.idCadEmpresa = ' + DBEidCadEmpresa.Text;

  if trim(cdsPadrao.FieldByName('idMaquina').AsString) <> '' then
    sql := sql + ' AND M.idMaquina = ' + cdsPadrao.FieldByName('idMaquina').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND MI.idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtOperacao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtOperacao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idOperacaoIni').AsString) <> '' then
    sql := sql + ' AND M.idOperacao >= ' + QuotedStr(cdsPadrao.FieldByName('idOperacaoIni').AsString);
  if trim(cdsPadrao.FieldByName('idOperacaoFim').AsString) <> '' then
    sql := sql + ' AND M.idOperacao <= ' + QuotedStr(cdsPadrao.FieldByName('idOperacaoFim').AsString);

  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidMaquina.SetFocus;
//  inherited;
end;

procedure TFrmPesOperacao.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsString := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := idCadEmpresa;
end;

end.
