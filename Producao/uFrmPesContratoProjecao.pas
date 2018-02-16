unit uFrmPesContratoProjecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoPesquisaDevExpress,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Data.FMTBcd, Vcl.StdCtrls, Vcl.DBCtrls, CDBCheckBox, CLookUp,
  Vcl.Mask, CDBEdit, Vcl.ExtDlgs, cxShellBrowserDialog, Vcl.Menus, cxClasses,
  cxGridCustomPopupMenu, cxGridPopupMenu, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, Vcl.ImgList, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, CLabel, Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient;

type
  TFrmPesContratoPrevisao = class(TFrmPadraoPesquisaDevExpress)
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidContratoIni: TCDBEdit;
    DBEidContratoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    PanEmpresa: TCPanelGradient;
    lblEmpresa: TCLabel;
    lblCNPJ: TCLabel;
    lblInscricao: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    LookidInscEstadual: TCLookUp;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    bvl1: TBevel;
    bvl2: TBevel;
    UniQryPadraoidCadEmpresa: TIntegerField;
    UniQryPadraoidCliente: TIntegerField;
    UniQryPadraodtInicial: TDateTimeField;
    UniQryPadraodtFinal: TDateTimeField;
    cdsPadraostAtivo: TBooleanField;
    UniQryPadraoconsolidaemp: TStringField;
    UniQryPadraoconsolidafilial: TStringField;
    cdsPadraostCancelado: TBooleanField;
    cdsPadraostEncerrado: TBooleanField;
    UniQryPadraoidSafra: TIntegerField;
    UniQryPadraoidProduto: TIntegerField;
    UniQryPadraonrOrigIni: TStringField;
    UniQryPadraonrOrigFim: TStringField;
    UniQryPadraoidContratoIni: TStringField;
    UniQryPadraoidContratoFim: TStringField;
    UniQryPadraostPrevisao1: TStringField;
    UniQryGrididEmpresa: TIntegerField;
    UniQryGrididCadEmpresa: TSmallintField;
    cxGridDBColumnDBViewidEmpresa: TcxGridDBColumn;
    cxGridDBColumnDBViewidCadEmpresa: TcxGridDBColumn;
    cxGridDBColumnDBViewdtEmissao: TcxGridDBColumn;
    UniQryGrididContratoProjecao: TIntegerField;
    cxGridDBColumnDBViewidContratoProjecao: TcxGridDBColumn;
    cdsGriddtContratoProjecao: TSQLTimeStampField;
    cdsGridstContratoProjecao: TStringField;
    cdsGridobsContratoVenda: TStringField;
    DBViewstContratoProjecao: TcxGridDBColumn;
    DBViewobsContratoVenda: TcxGridDBColumn;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
        idEmpresa : integer;
    idCadEmpresa, idCliente : integer;
  end;

var
  FrmPesContratoPrevisao: TFrmPesContratoPrevisao;

implementation

{$R *.dfm}

uses uFuncao;

procedure TFrmPesContratoPrevisao.actPesquisarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT con.idEmpresa, con.idCadEmpresa, con.idContratoProjecao, con.dtContratoProjecao, con.stContratoProjecao, con.obsContratoVenda FROM ContratoProjecao con WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND con.idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' AND con.idCliente = ' + cdsPadrao.FieldByName('idCliente').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND con.idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND con.idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idContratoIni').AsString) <> '' then
    sql := sql + ' AND idContratoVenda >= ' + QuotedStr(cdsPadrao.FieldByName('idContratoIni').AsString);
  if trim(cdsPadrao.FieldByName('idContratoFim').AsString) <> '' then
    sql := sql + ' AND idContratoVenda <= ' + QuotedStr(cdsPadrao.FieldByName('idContratoFim').AsString);
  if trim(cdsPadrao.FieldByName('nrOrigIni').AsString) <> '' then
    sql := sql + ' AND nrOriginal >= ' + QuotedStr(cdsPadrao.FieldByName('nrOrigIni').AsString);
  if trim(cdsPadrao.FieldByName('nrOrigFim').AsString) <> '' then
    sql := sql + ' AND nrOriginal <= ' + QuotedStr(cdsPadrao.FieldByName('nrOrigFim').AsString);

  sql := sql + ' GROUP BY con.idEmpresa, con.idCadEmpresa, con.idContratoProjecao, con.dtContratoProjecao, con.stContratoProjecao, con.obsContratoVenda';
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
end;

procedure TFrmPesContratoPrevisao.DBViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not (formulario.FindComponent('cdsGrid') as TClientDataSet).IsEmpty then
    close;
end;

procedure TFrmPesContratoPrevisao.FormShow(Sender: TObject);
begin
  inherited;
  Height := 650;
  Width := 1150;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  cdsPadrao.FieldByName('consolidaemp').AsString := 'N';
  cdsPadrao.FieldByName('consolidafilial').AsString := 'S';
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
//  DBCKconsolidafilial.Visible := filial;
end;

end.
