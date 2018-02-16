unit uFrmRelMaquinaOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, ExtDlgs, cxShellBrowserDialog,
  Menus, cxClasses, cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr, Provider,
  DBClient, ActnList, ImgList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, DBCtrls, CDBCheckBox,
  CLookUp, Mask, CDBEdit, cxCurrencyEdit, frxClass, frxDBSet, CFind;

type
  TFrmRelMaquinaOperacao = class(TFrmPadraoPesquisaDevExpress)
    CBitBtn1: TCBitBtn;
    CLabel2: TCLabel;
    lblCliFor: TCLabel;
    CLabel4: TCLabel;
    CLabel1: TCLabel;
    CLabel7: TCLabel;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    PanEmpresa: TCPanelGradient;
    CLabel10: TCLabel;
    CDBEdit1: TCDBEdit;
    CDBEdit2: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    DBEidMaquina: TCDBEdit;
    LookCliente: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidOperacaoIni: TCDBEdit;
    DBEidOperacaoFim: TCDBEdit;
    DBEdtOperacaoFim: TCDBEdit;
    DBEdtOperacaoIni: TCDBEdit;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    CBitBtn2: TCBitBtn;
    BtnImprimir: TCBitBtn;
    FrxRel: TfrxReport;
    frxDataset: TfrxDBDataset;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidOperacaoIni: TIntegerField;
    cdsPadraoidOperacaoFim: TIntegerField;
    cdsPadraodtOperacaoIni: TDateField;
    cdsPadraodtOperacaoFim: TDateField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidOperacao: TcxGridDBColumn;
    DBViewidMaquina: TcxGridDBColumn;
    DBViewdtOperacao: TcxGridDBColumn;
    DBViewqtHoraKm: TcxGridDBColumn;
    DBViewhr_kmInicial: TcxGridDBColumn;
    DBViewhr_kmAtual: TcxGridDBColumn;
    DBViewvlHoraKm: TcxGridDBColumn;
    DBViewvlTotalHoraKm: TcxGridDBColumn;
    DBViewidTipoAtividade: TcxGridDBColumn;
    DBViewdescTipoAtividade: TcxGridDBColumn;
    DBViewobsOperacao: TcxGridDBColumn;
    DBViewdescMaquina: TcxGridDBColumn;
    FindEmpresa: TCFind;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure actPesquisarExecute(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actExportaExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    relatorio : string;
  end;

var
  FrmRelMaquinaOperacao: TFrmRelMaquinaOperacao;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmRelMaquinaOperacao.actExportaExcelExecute(Sender: TObject);
begin
//  inherited;
  funcao.ExportaExcell(FrmRelMaquinaOperacao.Caption, cxGrid);
end;

procedure TFrmRelMaquinaOperacao.actPesquisarExecute(Sender: TObject);
var
  sql : string;
begin
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text;
  dmPadrao.cdsEmpresaContabil.Active := true;

  sql := 'SELECT idEmpresa, idCadEmpresa, idOperacao, mo.idMaquina, dtOperacao, qtHoraKm, hr_kmInicial, ' +
      	 ' hr_kmAtual, vlHoraKm, vlTotalHoraKm, mo.idTipoAtividade, t.descTipoAtividade, obsOperacao, m.descMaquina ' +
         ' FROM MaquinaOperacao mo LEFT JOIN TipoAtividade t ' +
         ' ON mo.idTipoAtividade = t.idTipoAtividade INNER JOIN Maquina m ' +
         ' ON mo.idMaquina = m.idMaquina WHERE 1=1';

  //Aqui define os parametros da pesquisa
  if cdsPadraoconsolidaemp.AsString = 'S' then
  begin
    sql := sql + ' AND mo.idEmpresa = ' + cdsPadraoidEmpresa.AsString +
                 ' AND mo.idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString;
  end;

  if (cdsPadraoconsolidafilial.AsString = 'S') AND (cdsPadraoconsolidaemp.AsString = 'N') then
    sql := sql + ' AND mo.idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString;

  if cdsPadraoidMaquina.AsString <> '' then
    sql := sql + ' AND mo.idMaquina = ' + cdsPadraoidMaquina.AsString;

  if cdsPadraoidSafra.AsString <> '' then
    sql := sql + ' AND mo.idSafra = ' + cdsPadraoidSafra.AsString;

  if cdsPadraoidOperacaoIni.AsString <> '' then
    sql := sql + ' AND mo.idMaquinaOperacao >= ' + cdsPadraoidOperacaoIni.AsString;

  if cdsPadraoidOperacaoFim.AsString <> '' then
    sql := sql + ' AND mo.idMaquinaOperacao <= ' + cdsPadraoidOperacaoFim.AsString;

  if cdsPadraodtOperacaoIni.AsString <> '' then
    sql := sql + ' AND mo.dtOperacaoIni >= ' + cdsPadraodtOperacaoIni.AsString;

  if cdsPadraodtOperacaoFim.AsString <> '' then
    sql := sql + ' AND mo.dtOperacaoFim <= ' + cdsPadraodtOperacaoFim.AsString;

  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;
end;

procedure TFrmRelMaquinaOperacao.BtnImprimirClick(Sender: TObject);
var
  caminho_rel : string;
begin
  inherited;
  caminho_rel := dmPadrao.RetornaConfig('caminho_rel');
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelMaquinaOperacao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'S';
end;

procedure TFrmRelMaquinaOperacao.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TFrmRelMaquinaOperacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelMaquinaOperacao := nil;
end;

procedure TFrmRelMaquinaOperacao.FormCreate(Sender: TObject);
begin
  inherited;
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
  relatorio := 'RelMaquinaOperacao.fr3'
end;

procedure TFrmRelMaquinaOperacao.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  if not filial then
  begin
    DBEidCadEmpresa.Visible := false;
    LookdescCadEmpresa.Left := 109;
    LookdescAbreviada.Left := 341;
    cdsPadrao.FieldByName('idCadEmpresa').Value := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
    if not cdsPadraoidCadEmpresa.AsInteger > 0 then
      cdsPadraoidCadEmpresa.AsInteger := 1;

    FindEmpresa.JoinClause.Clear;
    FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                               ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                               ' AND acessa = ' + QuotedStr('S') + ')');

    DBEidEmpresa.Find := FindEmpresa;

  end
  else
    cdsPadraoidCadEmpresa.AsString := FrmPrincipal.idCadEmpresa;

  DBCKconsolidafilial.Visible := filial;
end;

end.
