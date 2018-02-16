unit uFrmPesSerContrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoPesquisaDevExpress,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Data.FMTBcd, Vcl.ExtDlgs, cxShellBrowserDialog, Vcl.Menus,
  cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  Vcl.ImgList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, CLabel, Vcl.Buttons,
  CBitBtn, Vcl.ExtCtrls, CPanelGradient, Vcl.DBCtrls, CDBCheckBox, CLookUp,
  Vcl.Mask, CDBEdit;

type
  TFrmPesSerContrato = class(TFrmPadraoPesquisaDevExpress)
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookDescAbreviadaCliente: TCLookUp;
    LookidCnpjCpfCliente: TCLookUp;
    DBEidContratoIni: TCDBEdit;
    DBEidContratoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBCKstAtivo: TCDBCheckBox;
    DBCKstCancelado: TCDBCheckBox;
    DBCKstEncerrado: TCDBCheckBox;
    DBEnrOrigFim: TCDBEdit;
    DBEnrOrigIni: TCDBEdit;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididSerContrato: TIntegerField;
    cdsGrididFornecedor: TIntegerField;
    cdsGriddtSerContrato: TSQLTimeStampField;
    cdsGrididSerTpContrato: TSmallintField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGriddiaBase: TByteField;
    cdsGridvlSerContrato: TFMTBCDField;
    cdsGrididIndice: TSmallintField;
    cdsGrididComissionado: TIntegerField;
    cdsGridprComissao: TFMTBCDField;
    cdsGridvlComissao: TFMTBCDField;
    cdsGridgeraNFSe: TStringField;
    cdsGrididServico: TIntegerField;
    cdsGridgeraNFe: TStringField;
    cdsGrididProduto: TIntegerField;
    cdsGridobsSerContrato: TStringField;
    cdsGridstSerContrato: TStringField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidSerContrato: TcxGridDBColumn;
    DBViewidFornecedor: TcxGridDBColumn;
    DBViewdtSerContrato: TcxGridDBColumn;
    DBViewidSerTpContrato: TcxGridDBColumn;
    DBViewdtVencimento: TcxGridDBColumn;
    DBViewdiaBase: TcxGridDBColumn;
    DBViewvlSerContrato: TcxGridDBColumn;
    DBViewidIndice: TcxGridDBColumn;
    DBViewidComissionado: TcxGridDBColumn;
    DBViewprComissao: TcxGridDBColumn;
    DBViewvlComissao: TcxGridDBColumn;
    DBViewgeraNFSe: TcxGridDBColumn;
    DBViewidServico: TcxGridDBColumn;
    DBViewgeraNFe: TcxGridDBColumn;
    DBViewidProduto: TcxGridDBColumn;
    DBViewobsSerContrato: TcxGridDBColumn;
    DBViewstSerContrato: TcxGridDBColumn;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    CLookUp1: TCLookUp;
    LookProdMedida: TCLookUp;
    CDBEdit1: TCDBEdit;
    DBEidServico: TCDBEdit;
    LookProdMedidaSer: TCLookUp;
    LookServico: TCLookUp;
    lblEmpresa: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidServico: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidContratoIni: TIntegerField;
    cdsPadraoidContratoFim: TIntegerField;
    cdsPadraostAtivo: TStringField;
    cdsPadraostEncerrado: TStringField;
    cdsPadraostCancelado: TStringField;
    procedure actPesquisarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idFornecedor : integer;
  end;

var
  FrmPesSerContrato: TFrmPesSerContrato;

implementation

{$R *.dfm}

uses uFuncao;

procedure TFrmPesSerContrato.actPesquisarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT * FROM SerContrato WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idFornecedor').AsString) <> '' then
    sql := sql + ' AND idFornecedor = ' + cdsPadrao.FieldByName('idFornecedor').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idServico').AsString) <> '' then
    sql := sql + ' AND idServico = ' + cdsPadrao.FieldByName('idServico').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtSerContrato >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtSerContrato <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idContratoIni').AsString) <> '' then
    sql := sql + ' AND idSerContrato >= ' + QuotedStr(cdsPadrao.FieldByName('idContratoIni').AsString);
  if trim(cdsPadrao.FieldByName('idContratoFim').AsString) <> '' then
    sql := sql + ' AND idSerContrato <= ' + QuotedStr(cdsPadrao.FieldByName('idContratoFim').AsString);

  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stEncerrado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('ENCERRADO')
    else
      status := status + ',' + QuotedStr('ENCERRADO');
  if cdsPadrao.FieldByName('stCancelado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND stSerContrato IN (' + status + ')';


  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
end;

end.
