unit uFrmPesEmbarque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpFiscal, frxClass, frxDBSet, frxExportMail,
  frxExportCSV, frxExportODF, frxExportXLS, frxExportHTML, frxExportXML,
  frxExportPDF, frxExportText, frxExportRTF, frxExportImage;

type
  TFrmPesEmbarque = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanCliente: TCPanelGradient;
    Bevel3: TBevel;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    FindCliente: TCFind;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBEidContratoVenda: TCDBEdit;
    DBEidContratoCompra: TCDBEdit;
    CLabel3: TCLabel;
    CLabel2: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    cdsPadraoidContratoVenda: TStringField;
    cdsPadraoidContratoCompra: TStringField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididEmbarque: TIntegerField;
    cdsGrididContratoVenda: TStringField;
    cdsGriddescCadCliente: TStringField;
    cdsGrididContratoCompra: TStringField;
    cdsGriddescCadFornecedor: TStringField;
    cdsGridstEmbarque: TStringField;
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
  FrmPesEmbarque: TFrmPesEmbarque;

implementation

uses uFuncao, uFrmPrincipal, uDmFind, uDmPadrao;

{$R *.dfm}

procedure TFrmPesEmbarque.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT emb.idEmpresa, emb.idCadEmpresa, emb.idEmbarque, emb.idContratoVenda, cli.descCadCliente, ' +
         'emb.idContratoCompra, f.descCadFornecedor, emb.stEmbarque ' +
         'FROM Embarque emb INNER JOIN vClienteContratoVenda cli ' +
         'ON emb.idEmpresa = cli.idEmpresa ' +
         'AND emb.idCadEmpresa = cli.idCadEmpresa ' +
         'AND emb.idContratoVenda = cli.idContratoVenda INNER JOIN vClienteContratoCompra f ' +
         'ON emb.idEmpresa = f.idEmpresa ' +
         'AND emb.idCadEmpresa = f.idCadEmpresa ' +
         'AND emb.idContratoCompra = f.idContratoCompra WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
    sql := sql + ' AND emb.idEmpresa = ' + DBEidEmpresa.Text;
  if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND emb.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(cdsPadrao.FieldByName('idContratoVenda').AsString) <> '' then
    sql := sql + ' AND emb.idContratoVenda = ' + cdsPadrao.FieldByName('idContratoVenda').AsString;
  if trim(cdsPadrao.FieldByName('idContratoCompra').AsString) <> '' then
    sql := sql + ' AND emb.idContratoCompra = ' + cdsPadrao.FieldByName('idContratoCompra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmbarque >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmbarque <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);

  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidContratoVenda.SetFocus;
  inherited;
end;

procedure TFrmPesEmbarque.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesEmbarque.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidContratoVenda;
end;

procedure TFrmPesEmbarque.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;
  Height := 475;
  Width := 754;
end;

end.
