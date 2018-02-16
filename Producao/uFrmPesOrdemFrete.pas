unit uFrmPesOrdemFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, System.Actions;

type
  TFrmPesOrdemFrete = class(TFrmPadraoPesqEmpFiscal)
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
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    FindFornecedor: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEidOrdemFim: TCDBEdit;
    DBEidOrdemIni: TCDBEdit;
    Bevel2: TBevel;
    cdsPadraoidOrdemIni: TIntegerField;
    cdsPadraoidOrdemFim: TIntegerField;
    cdsPadraoidNfIni: TIntegerField;
    cdsPadraoidNfFim: TIntegerField;
    DBEidNfIni: TCDBEdit;
    DBEidNfFim: TCDBEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    cdsGrididOrdemFrete: TIntegerField;
    cdsGrididNf: TIntegerField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridvlFreteTotal: TFMTBCDField;
    DBCKconsolidafilial: TCDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa : integer;
    idOrdemFrete : integer;
  end;

var
  FrmPesOrdemFrete: TFrmPesOrdemFrete;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind;

{$R *.dfm}

procedure TFrmPesOrdemFrete.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  idOrdemFrete := 0;
  status := '';
  if (trim(DBEidNfIni.Text) <> '') or (trim(DBEidNfFim.Text) <> '') then
    sql := 'SELECT o.idEmpresa, o.idCadEmpresa, o.idOrdemFrete, onf.idNf, o.dtEmissao, o.vlFreteTotal FROM OrdemFrete o ' +
           ' INNER JOIN OrdemFreteNf onf ON o.idEmpresa = onf.idEmpresa AND o.idCadEmpresa = onf.idCadEmpresa AND o.idOrdemFrete = onf.idOrdemFrete ' +
           ' WHERE 1=1'
  else
    sql := 'SELECT o.idEmpresa, o.idCadEmpresa, o.idOrdemFrete, 0 idNf, o.dtEmissao, o.vlFreteTotal FROM OrdemFrete o WHERE 1=1';

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND o.idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND o.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND o.dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND o.dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idOrdemIni').AsString) <> '' then
    sql := sql + ' AND o.idOrdemFrete >= ' + QuotedStr(cdsPadrao.FieldByName('idOrdemIni').AsString);
  if trim(cdsPadrao.FieldByName('idOrdemFim').AsString) <> '' then
    sql := sql + ' AND o.idOrdemFrete <= ' + QuotedStr(cdsPadrao.FieldByName('idOrdemFim').AsString);
  if trim(cdsPadrao.FieldByName('idNfIni').AsString) <> '' then
    sql := sql + ' AND onf.idNf >= ' + QuotedStr(cdsPadrao.FieldByName('idNfIni').AsString);
  if trim(cdsPadrao.FieldByName('idNfFim').AsString) <> '' then
    sql := sql + ' AND onf.idNf <= ' + QuotedStr(cdsPadrao.FieldByName('idNfFim').AsString);

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidOrdemIni.SetFocus;
  inherited;
end;

procedure TFrmPesOrdemFrete.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesOrdemFrete.DBGridDblClick(Sender: TObject);
begin
  if (not cdsGrid.IsEmpty) then
    idOrdemFrete := cdsGrididOrdemFrete.AsInteger;
  inherited;
end;

procedure TFrmPesOrdemFrete.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not cdsGrid.IsEmpty) then
    idOrdemFrete := cdsGrididOrdemFrete.AsInteger;
  inherited;
end;

procedure TFrmPesOrdemFrete.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidOrdemIni;
end;

procedure TFrmPesOrdemFrete.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;

end;

end.
