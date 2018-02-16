unit uFrmPesRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpFiscal, frxClass, frxDBSet, frxExportMail,
  frxExportCSV, frxExportODF, frxExportXLS, frxExportHTML, frxExportXML,
  frxExportPDF, frxExportText, frxExportRTF, frxExportImage, System.Actions,
  System.ImageList;

type
  TFrmPesRomaneio = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanCliente: TCPanelGradient;
    Bevel3: TBevel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEidMotorista: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookDescAbreviadaCliente: TCLookUp;
    LookidCnpjCpfCliente: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidRomaneioIni: TCDBEdit;
    DBEidRomaneioFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    FindCliente: TCFind;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraoidSafra: TIntegerField;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel23: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel11: TCLabel;
    cdsPadraoidProduto: TIntegerField;
    DBEidArmazem: TCDBEdit;
    LookCliente: TCLookUp;
    lblCliFor: TCLabel;
    cdsPadraoidArmazem: TIntegerField;
    CLookUp3: TCLookUp;
    DBEidCliente: TCDBEdit;
    CLabel1: TCLabel;
    cdsPadraoidMotorista: TIntegerField;
    cdsPadraoidRomaneioIni: TIntegerField;
    cdsPadraoidRomaneioFim: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididArmazem: TIntegerField;
    cdsGriddescArmazem: TStringField;
    cdsGrididRomaneio: TIntegerField;
    cdsGriddtRomaneio: TSQLTimeStampField;
    cdsGridqtPesoLiquido: TIntegerField;
    cdsGriddescMotorista: TStringField;
    DBEidContratoFim: TCDBEdit;
    CLabel3: TCLabel;
    DBEidContratoIni: TCDBEdit;
    CLabel2: TCLabel;
    DBEnrOrigFim: TCDBEdit;
    CLabel10: TCLabel;
    DBEnrOrigIni: TCDBEdit;
    CLabel12: TCLabel;
    cdsPadraonrOrigIni: TStringField;
    cdsPadraonrOrigFim: TStringField;
    cdsPadraoidContratoIni: TStringField;
    cdsPadraoidContratoFim: TStringField;
    cdsGrididContratoVenda: TStringField;
    DBEidProdutor: TCDBEdit;
    LookProdutor: TCLookUp;
    CLabel13: TCLabel;
    cdsPadraoidProdutor: TIntegerField;
    cdsGrididRomaneioArm: TIntegerField;
    DBCKstConfirmar: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TStringField;
    cdsPadraostConfirmar: TStringField;
    DBEidNfIni: TCDBEdit;
    DBEidNfFim: TCDBEdit;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    cdsPadraoidNfIni: TIntegerField;
    cdsPadraoidNfFim: TIntegerField;
    cdsGrididNF: TIntegerField;
    DBEnrFreteFim: TCDBEdit;
    CLabel16: TCLabel;
    DBEnrFreteIni: TCDBEdit;
    CLabel17: TCLabel;
    cdsPadraonrFreteIni: TIntegerField;
    cdsPadraonrFreteFim: TIntegerField;
    cdsGridnrCartaFrete: TIntegerField;
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
  FrmPesRomaneio: TFrmPesRomaneio;

implementation

uses uFuncao, uFrmPrincipal, uDmFind, uDmPadrao;

{$R *.dfm}

procedure TFrmPesRomaneio.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT rom.idEmpresa, rom.idCadEmpresa, rom.idArmazem, cad.descAbreviada descArmazem, ' +
         ' idRomaneio, dtRomaneio, qtPesoLiquido, mot.descAbreviada descMotorista, rom.idContratoVenda, rom.idRomaneioArm, rom.idNF, rom.nrCartaFrete FROM Romaneio rom ' +
         ' LEFT JOIN vCadClienteContabil cad ON rom.idCliente = cad.idCliente LEFT JOIN ' +
         ' vCadClienteContabil mot ON rom.idMotorista = mot.idCliente LEFT JOIN ContratoVenda v ' +
         ' ON rom.idEmpresa = v.idEmpresa AND rom.idCadEmpresa = v.idCadEmpresa ' +
         ' AND rom.idContratoVenda = v.idContratoVenda WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
    sql := sql + ' AND rom.idEmpresa = ' + DBEidEmpresa.Text;
  if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND rom.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND v.idCliente = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND rom.idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtRomaneio >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtRomaneio <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idRomaneioIni').AsString) <> '' then
    sql := sql + ' AND rom.idRomaneio >= ' + QuotedStr(cdsPadrao.FieldByName('idRomaneioIni').AsString);
  if trim(cdsPadrao.FieldByName('idRomaneioFim').AsString) <> '' then
    sql := sql + ' AND rom.idRomaneio <= ' + QuotedStr(cdsPadrao.FieldByName('idRomaneioFim').AsString);
  if trim(cdsPadrao.FieldByName('idMotorista').AsString) <> '' then
    sql := sql + ' AND rom.idMotorista = ' + cdsPadrao.FieldByName('idMotorista').AsString;
  if trim(cdsPadrao.FieldByName('idArmazem').AsString) <> '' then
    sql := sql + ' AND rom.idArmazem = ' + cdsPadrao.FieldByName('idArmazem').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND rom.idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idContratoIni').AsString) <> '' then
    sql := sql + ' AND rom.idContratoVenda >= ' + QuotedStr(cdsPadrao.FieldByName('idContratoIni').AsString);
  if trim(cdsPadrao.FieldByName('idContratoFim').AsString) <> '' then
    sql := sql + ' AND rom.idContratoVenda <= ' + QuotedStr(cdsPadrao.FieldByName('idContratoFim').AsString);
  if trim(cdsPadrao.FieldByName('nrOrigIni').AsString) <> '' then
    sql := sql + ' AND rom.idRomaneioArm >= ' + cdsPadrao.FieldByName('nrOrigIni').AsString;
  if trim(cdsPadrao.FieldByName('nrOrigFim').AsString) <> '' then
    sql := sql + ' AND rom.idRomaneioArm <= ' + cdsPadrao.FieldByName('nrOrigFim').AsString;
  if Trim(cdsPadrao.FieldByName('idProdutor').AsString) <> '' then
    sql := sql + ' AND rom.idProdutor = ' + cdsPadrao.FieldByName('idProdutor').AsString;
  if trim(cdsPadrao.FieldByName('idNfIni').AsString) <> '' then
    sql := sql + ' AND rom.idNF >= ' + cdsPadrao.FieldByName('idNfIni').AsString;
  if Trim(cdsPadrao.FieldByName('idNfFim').AsString) <> '' then
    sql := sql + ' AND rom.idNF <= ' + cdsPadrao.FieldByName('idNfFim').AsString;
  if trim(cdsPadrao.FieldByName('nrFreteIni').AsString) <> '' then
    sql := sql + ' AND rom.nrCartaFrete >= ' + cdsPadrao.FieldByName('nrFreteIni').AsString;
  if Trim(cdsPadrao.FieldByName('nrFreteFim').AsString) <> '' then
    sql := sql + ' AND rom.nrCartaFrete = ' + cdsPadrao.FieldByName('nrFreteFim').AsString;

  status := QuotedStr('STATUS'); //somente para iniciar a variável
  if cdsPadraostConfirmar.AsString = 'S' then
    status := status + ', ' + QuotedStr('A CONFIRMAR');
  if cdsPadraostAtivo.AsString = 'S' then
    status := status + ', ' + QuotedStr('ATIVO');

  //aplica o status
  sql := sql + ' AND rom.stRomaneio IN (' + status + ')';
  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
//  DBEidCliente.SetFocus;
  inherited;
end;

procedure TFrmPesRomaneio.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
  cdsPadraostAtivo.AsString := 'S';
  cdsPadraostConfirmar.AsString := 'S';
end;

procedure TFrmPesRomaneio.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidMotorista;
end;

procedure TFrmPesRomaneio.FormShow(Sender: TObject);
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
