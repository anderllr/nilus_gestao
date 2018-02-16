unit uFrmRelLogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoPesquisaDevExpress,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Data.FMTBcd, Vcl.ExtDlgs, cxShellBrowserDialog, Vcl.Menus,
  cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, CLabel, Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient,
  CLookUp, Vcl.Mask, Vcl.DBCtrls, CDBEdit, CDBCheckBox, frxClass, frxDBSet,
  frxGradient, CFind;

type
  TFrmRelLogsSeguranca = class(TFrmPadraoPesquisaDevExpress)
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    cdsGrididLog: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TIntegerField;
    cdsGrididUsuario: TIntegerField;
    cdsGrididUsuarioGrupo: TIntegerField;
    cdsGriddtEvento: TSQLTimeStampField;
    cdsGridtpEvento: TStringField;
    cdsGridnomeTela: TStringField;
    cdsGridnr_documento: TStringField;
    cdsGriddescCadAdicional: TStringField;
    cdsGriddescAbreviada: TStringField;
    cdsGriddescUsuario: TStringField;
    cdsGriddescUsuarioGrupo: TStringField;
    DBViewidLog: TcxGridDBColumn;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidUsuario: TcxGridDBColumn;
    DBViewidUsuarioGrupo: TcxGridDBColumn;
    DBViewdtEvento: TcxGridDBColumn;
    DBViewtpEvento: TcxGridDBColumn;
    DBViewnomeTela: TcxGridDBColumn;
    DBViewnr_documento: TcxGridDBColumn;
    DBViewdescCadAdicional: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewdescUsuario: TcxGridDBColumn;
    DBViewdescUsuarioGrupo: TcxGridDBColumn;
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
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    CLabel60: TCLabel;
    DBEidUsuario: TCDBEdit;
    CLabel17: TCLabel;
    DBEidUsuarioGrupo: TCDBEdit;
    LookUsuarioGrupo: TCLookUp;
    CLookUp1: TCLookUp;
    frxRel: TfrxReport;
    frxDataset: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    cdsPadraoidUsuario: TIntegerField;
    cdsPadraoidUsuarioGrupo: TIntegerField;
    FindEmpresa: TCFind;
    DBEdtFinal: TCDBEdit;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    BtnImprimir: TCBitBtn;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelLogsSeguranca: TFrmRelLogsSeguranca;

implementation

uses
  uFuncao, uDmPadrao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelLogsSeguranca.actPesquisarExecute(Sender: TObject);
var
sql, ordem : string;
begin
  sql := 'SELECT * FROM vLogsSeguranca WHERE 1=1';

  //Codigo do Usuario
  if Trim(DBEidUsuario.Text) <> '' then
  sql := sql + ' AND idUsuario = ' + DBEidUsuario.Text;

  //Codigo do Grupo de Usuario
  if Trim(DBEidUsuarioGrupo.Text) <> '' then
  sql := sql + ' AND idUsuarioGrupo = ' + DBEidUsuarioGrupo.Text;

  //Data Inicial
  if Trim(DBEdtInicial.Text) <> '' then
  sql := sql + ' AND dtEvento >= ' + funcao.RetornaValorEField(DBEdtInicial, 3);

  //Data Final
  if Trim(DBEdtFinal.Text) <> '' then
  sql := sql + ' AND dtEvento <= ' + funcao.RetornaValorEField(DBEdtFinal, 3);

  sql := sql + ' ORDER BY dtEvento';

  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsPadrao.FieldByName('idEmpresa').AsString + ', ' + cdsPadrao.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;
  DBView.ViewData.Expand(True);
end;

procedure TFrmRelLogsSeguranca.BtnImprimirClick(Sender: TObject);
var
caminho_rel : string;
begin
  inherited;
  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + 'RelLogsSeguranca.fr3';
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport;
end;

procedure TFrmRelLogsSeguranca.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaEmp').AsString := 'S';
  DataSet.FieldByName('consolidaFilial').AsString := 'N';
  DataSet.FieldByName('idEmpresa').AsString := FrmPrincipal.idEmpresa;
  DataSet.FieldByName('idCadEmpresa').AsString := FrmPrincipal.idCadEmpresa;
end;

procedure TFrmRelLogsSeguranca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelLogsSeguranca := nil;
end;

procedure TFrmRelLogsSeguranca.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;

end;

end.
