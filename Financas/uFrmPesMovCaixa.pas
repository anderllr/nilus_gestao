unit uFrmPesMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpFiscal, EditAlign, CEdit, System.Actions;

type
  TFrmPesMovCaixa = class(TFrmPadraoPesqEmpFiscal)
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
    CLabel11: TCLabel;
    cdsPadraoidMovFinanceira: TIntegerField;
    cdsPadraoidChequeIni: TIntegerField;
    cdsPadraoidChequeFim: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididMovCaixa: TIntegerField;
    cdsGriddescGerencial: TStringField;
    cdsGriddescMovCaixa: TStringField;
    cdsGriddtMovCaixa: TSQLTimeStampField;
    cdsGridvlMovCaixa: TFMTBCDField;
    cdsGrididCadGeral: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    LookMovFinanceira: TCLookUp;
    LookSinal: TCLookUp;
    DBEidMovFinanceira: TCDBEdit;
    CLabel1: TCLabel;
    DBEidGerencial: TCDBEdit;
    DBEidResultado: TCDBEdit;
    CLabel2: TCLabel;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidRateio: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraosoma: TStringField;
    cdsPadraodebito: TStringField;
    cdsPadraocredito: TStringField;
    cdsGridvlTotal: TAggregateField;
    cdsGridfator: TSmallintField;
    CPanelGradient1: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEidChequeIni: TCDBEdit;
    DBEidChequeFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBCBdebito: TCDBCheckBox;
    DBCBcredito: TCDBCheckBox;
    DBEidRateio: TCDBEdit;
    CLabel10: TCLabel;
    DBEdescMovConta: TCDBEdit;
    DBEvlTotal: TCDBEdit;
    CLabel12: TCLabel;
    cdsPadraodescMovConta: TStringField;
    FindMovFinanceira: TCFind;
    LookGerencialR: TCLookUp;
    LookResultado: TCLookUp;
    LookRateio: TCLookUp;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa, idCliente : integer;
  end;

var
  FrmPesMovCaixa: TFrmPesMovCaixa;

implementation

uses uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmPesMovCaixa.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  cdsGrid.IndexFieldNames := '';
  status := '';
  sql := 'SELECT m.idEmpresa, m.idCadEmpresa, m.idMovCaixa, m.descGerencial, m.descMovCaixa, m.dtMovCaixa, ' +
         ' m.vlMovCaixa, m.idCadGeral, c.descAbreviada, m.fator FROM vMovCaixaCons m ' +
         ' LEFT JOIN vCadClienteContabil c ON m.idCadGeral = c.idCliente WHERE 1=1 ';

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND m.idCadGeral = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('idMovFinanceira').AsString) <> '' then
    sql := sql + ' AND m.idMovFinanceira = ' + cdsPadrao.FieldByName('idMovFinanceira').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtMovCaixa >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtMovCaixa <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idGerencial').AsString) <> '' then
    sql := sql + ' AND m.idGerencial = ' + cdsPadrao.FieldByName('idGerencial').AsString;
  if trim(cdsPadrao.FieldByName('idResultado').AsString) <> '' then
    sql := sql + ' AND m.idResultado = ' + cdsPadrao.FieldByName('idResultado').AsString;
  if trim(cdsPadrao.FieldByName('idRateio').AsString) <> '' then
    sql := sql + ' AND m.idRateio = ' + cdsPadrao.FieldByName('idRateio').AsString;

  if not ((cdsPadraodebito.AsString = 'S') and (cdsPadraocredito.AsString = 'S')) then
  begin
    if trim(cdsPadrao.FieldByName('debito').AsString) = 'N' then
      sql := sql + ' AND m.fator > 0';
    if trim(cdsPadrao.FieldByName('credito').AsString) = 'N' then
      sql := sql + ' AND m.fator < 0';
  end;

  if trim(DBEdescMovConta.Text) <> '' then
    sql := sql + 'AND m.descMovCaixa LIKE ' + QuotedStr('%' + Trim(DBEdescMovConta.Text) + '%');

   //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  inherited;
end;

procedure TFrmPesMovCaixa.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
  cdsPadraodebito.AsString := 'S';
  cdsPadraocredito.AsString := 'S';
end;

procedure TFrmPesMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsGrid.IndexFieldNames := '';
  inherited;

end;

procedure TFrmPesMovCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
  idCliente := 0;
end;

procedure TFrmPesMovCaixa.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;

end;

end.
