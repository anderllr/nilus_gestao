unit uFrmRelFichaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, SqlExpr,
  Provider, DBClient, ActnList, ImgList, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CFind, DBCtrls,
  CDBCheckBox, CLookUp, Mask, CDBEdit, CLabel, cxLookAndFeels,
  cxGridCustomPopupMenu, cxGridPopupMenu, CSpeedButton, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, cxShellBrowserDialog, ExtDlgs,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions;

type
  TFrmRelFichaEstoque = class(TFrmPadraoPesquisaDevExpress)
    FindEmpresa: TCFind;
    PanEmpresa: TCPanelGradient;
    Bevel3: TBevel;
    FindConta: TCFind;
    CLabel3: TCLabel;
    DBEdtEstoqueIni: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtEstoqueFim: TCDBEdit;
    Bevel1: TBevel;
    cxStyle1: TcxStyle;
    CPanelGradient1: TCPanelGradient;
    Bevel2: TBevel;
    CLabel2: TCLabel;
    DBEqtSaldoAnterior: TCDBEdit;
    CLabel4: TCLabel;
    DBEqtSaidas: TCDBEdit;
    CLabel6: TCLabel;
    DBEqtEntradas: TCDBEdit;
    Bevel4: TBevel;
    CLabel8: TCLabel;
    DBEqtUltimoSaldo: TCDBEdit;
    cdsRodape: TClientDataSet;
    dsRodape: TDataSource;
    cdsPadraoconsolida: TStringField;
    DBCKconsolida: TCDBCheckBox;
    CLabel1: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    CLabel11: TCLabel;
    LookidInscEstadual: TCLookUp;
    CLabel12: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    FindProdDeposito: TCFind;
    FindProduto: TCFind;
    CLabel13: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    cdsGrididProdDeposito: TSmallintField;
    cdsGriddtEstoque: TSQLTimeStampField;
    cdsGrididProduto: TIntegerField;
    cdsGridtpDocumento: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGridnrDocumento: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidProdDeposito: TIntegerField;
    cdsPadraodtEstoqueIni: TDateTimeField;
    cdsPadraodtEstoqueFim: TDateTimeField;
    cdsPadraoidProduto: TIntegerField;
    cdsRodapeqtSaldoAnterior: TFloatField;
    cdsRodapeqtSaidas: TFloatField;
    cdsRodapeqtEntradas: TFloatField;
    cdsRodapeqtUltimoSaldo: TFloatField;
    cdsProduto: TClientDataSet;
    cdsGriddescProduto: TStringField;
    DBViewidProdDeposito: TcxGridDBColumn;
    DBViewdtEstoque: TcxGridDBColumn;
    DBViewqtEstoque: TcxGridDBColumn;
    DBViewvlEstoque: TcxGridDBColumn;
    DBViewqtSaldo: TcxGridDBColumn;
    DBViewtpDocumento: TcxGridDBColumn;
    DBViewidDocSerie: TcxGridDBColumn;
    DBViewnrDocumento: TcxGridDBColumn;
    DBViewidEmpresa: TcxGridDBColumn;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididFornecedor: TIntegerField;
    cdsGrididCadFornecedor: TSmallintField;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidFornecedor: TcxGridDBColumn;
    DBViewidCadFornecedor: TcxGridDBColumn;
    cdsGridvlEstoque: TFMTBCDField;
    cdsGridvlCustoMedio: TFMTBCDField;
    DBViewvlCustoMedio: TcxGridDBColumn;
    cdsPadraoidSafra: TIntegerField;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel5: TCLabel;
    cdsGridqtEstoque: TFMTBCDField;
    cdsGridqtSaldo: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFichaEstoque: TFrmRelFichaEstoque;

implementation

uses uFrmPrincipal, uFuncao, uDmPadrao, uFrmPesEmpFiscal;

{$R *.dfm}

procedure TFrmRelFichaEstoque.actPesquisarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if trim(DBEidProduto.Text) = '' then
  begin
    messagedlg('O Produto deve ser informado!', mtwarning, [mbok], 0);
    DBEidProduto.SetFocus;
    exit;
  end;

  screen.Cursor := crSqlWait;
  cdsGrid.Active := false;
  //começa a seleção dos dados
  sql := 'EXEC spFichaEstoque ' + DBEidEmpresa.Text;

  if (cdsPadrao.FieldByName('consolida').AsString = 'S') then
    sql := sql + ' , 0, '
  else
    sql := sql + ', ' + DBEidCadEmpresa.Text + ', ';

  if trim(DBEidProdDeposito.Text) <> '' then
    sql := sql + DBEidProdDeposito.Text + ', '
  else
    sql := sql + ' 0, ';

  sql := sql + DBEidProduto.Text + ', ';

  if trim(DBEdtEstoqueIni.Text) <> '' then
    sql := sql + quotedstr(DBEdtEstoqueIni.Text) + ', '
  else
    sql := sql + ' NULL, ';

  if trim(DBEdtEstoqueFim.Text) <> '' then
    sql := sql + quotedstr(DBEdtEstoqueFim.Text)
  else
    sql := sql + ' NULL';

  sql := sql + ', ' + funcao.RetornaValorEField(DBEidSafra, 3);

  cdsGrid.CommandText := sql;

  DmPadrao.dbConexao.CloseDataSets;
  //antes de ativar o grid executa a procedure para retornar os dados do rodapé
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidProdDeposito,
                    DBEidProduto, DBEdtEstoqueIni, DBEdtEstoqueFim], 'spRetMovEstoque', '') do
  begin
    cdsRodape.Append;
    cdsRodape.FieldByName('qtSaldoAnterior').Value := FieldByName('qtSaldoAnterior').Value;
    cdsRodape.FieldByName('qtSaidas').Value := FieldByName('qtSaidas').Value;
    cdsRodape.FieldByName('qtEntradas').Value := FieldByName('qtEntradas').Value;
    cdsRodape.FieldByName('qtUltimoSaldo').Value := FieldByName('qtUltimoSaldo').Value;
  end;
  cdsGrid.Active := true;
  screen.Cursor := crDefault;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
end;

procedure TFrmRelFichaEstoque.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('consolida').AsString := 'S';
end;

procedure TFrmRelFichaEstoque.ConfigLookEmpresa;
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
  LookidInscEstadual.AlternateSQL.Clear;
  LookidInscEstadual.AlternateSQL.Add('SELECT idInscEstadual FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');

end;

procedure TFrmRelFichaEstoque.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
    FrmPesEmpFiscal.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
        FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
        (Formulario.FindComponent('DBEidCadEmpresa') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmRelFichaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelFichaEstoque := nil;
end;

procedure TFrmRelFichaEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  ConfigLookEmpresa;
  empresa := true;
  foco := DBEidProdDeposito;
end;

procedure TFrmRelFichaEstoque.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  cdsRodape.Active := false;
  cdsRodape.CreateDataSet;
  cdsRodape.Append;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
end;

end.
