unit uFrmRelMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, SqlExpr,
  Provider, DBClient, ActnList, ImgList, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CFind, DBCtrls,
  CDBCheckBox, CLookUp, Mask, CDBEdit, CLabel, cxLookAndFeels,
  cxGridCustomPopupMenu, cxGridPopupMenu, CSpeedButton, frxExportText,
  frxExportPDF, frxExportMail, frxExportCSV, frxExportXML, frxExportRTF,
  frxExportImage, frxExportXLS, frxExportODF, frxExportHTML, frxClass, frxDBSet,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, Menus, cxShellBrowserDialog,
  ExtDlgs, dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions, System.ImageList;

type
  TFrmRelMovCaixa = class(TFrmPadraoPesquisaDevExpress)
    FindEmpresa: TCFind;
    PanEmpresa: TCPanelGradient;
    CLabel1: TCLabel;
    DBEidEmpresa: TCDBEdit;
    Bevel3: TBevel;
    CLabel3: TCLabel;
    DBEdtMovCaixaIni: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtMovCaixaFim: TCDBEdit;
    Bevel1: TBevel;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewdescMovFinanceira: TcxGridDBColumn;
    DBViewvlMovCaixa: TcxGridDBColumn;
    DBViewdtMovCaixa: TcxGridDBColumn;
    DBViewdescMovCaixa: TcxGridDBColumn;
    cxStyle1: TcxStyle;
    CPanelGradient1: TCPanelGradient;
    Bevel2: TBevel;
    CLabel2: TCLabel;
    DBEvlSaldoAnterior: TCDBEdit;
    CLabel4: TCLabel;
    DBEvlSaidas: TCDBEdit;
    CLabel6: TCLabel;
    DBEvlEntradas: TCDBEdit;
    CPanelGradient2: TCPanelGradient;
    Bevel4: TBevel;
    CLabel5: TCLabel;
    DBEvlSaldoAtual: TCDBEdit;
    CLabel8: TCLabel;
    DBEvlUltimoSaldo: TCDBEdit;
    cdsRodape: TClientDataSet;
    dsRodape: TDataSource;
    cdsRodapevlSaldoAnterior: TCurrencyField;
    cdsRodapevlSaidas: TCurrencyField;
    cdsRodapevlEntradas: TCurrencyField;
    cdsRodapevlUltimoSaldo: TCurrencyField;
    cdsRodapevlSaldoAtual: TCurrencyField;
    FindCaixa: TCFind;
    CLabel11: TCLabel;
    DBEidCaixa: TCDBEdit;
    LookCaixa: TCLookUp;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraodtMovCaixaIni: TDateField;
    cdsPadraodtMovCaixaFim: TDateField;
    cdsGrididMovCaixa: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCaixa: TIntegerField;
    cdsGrididCadGeral: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGrididMovFinanceira: TIntegerField;
    cdsGriddescMovFinanceira: TStringField;
    cdsGriddtMovCaixa: TSQLTimeStampField;
    cdsGridvlMovCaixa: TFMTBCDField;
    cdsGriddescMovCaixa: TStringField;
    BtnImprimir: TCBitBtn;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    frxRel: TfrxReport;
    frxDataset: TfrxDBDataset;
    frxJPEGExport1: TfrxJPEGExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    DBEidCadEmpresa: TCDBEdit;
    cdsPadraoidCadEmpresa: TIntegerField;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    procedure BtnImprimirClick(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure cdsPadraoidEmpresaValidate(Sender: TField);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfigLookEmpresa;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vlAnt : string;
  public
    { Public declarations }
  end;

var
  FrmRelMovCaixa: TFrmRelMovCaixa;

implementation

uses uFrmPrincipal, uFuncao, uDmPadrao, uFrmPesEmpFiscal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TFrmRelMovCaixa.actPesquisarExecute(Sender: TObject);
var
  sql, sqlProc : string;
begin
  inherited;
  if trim(DBEidEmpresa.Text) = '' then
  begin
    messagedlg('A empresa deve ser informada!', mtwarning, [mbok], 0);
    DBEidEmpresa.SetFocus;
    exit;
  end;

  if trim(DBEidCaixa.Text) = '' then
  begin
    messagedlg('A conta deve ser informada!', mtwarning, [mbok], 0);
    DBEidCaixa.SetFocus;
    exit;
  end;
  screen.Cursor := crSqlWait;
  cdsGrid.Active := false;
  //começa a seleção dos dados
  sql := 'SELECT * FROM vMovCaixa WHERE idEmpresa = ' + DBEidEmpresa.Text;
  if not DBCKconsolidafilial.Checked then
    sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;

  //como a conta é obrigatória seleciona ela primeiro
  sql := sql + ' AND idCaixa = ' + DBEidCaixa.Text;

  if trim(DBEdtMovCaixaIni.Text) <> '' then
    sql := sql + ' AND dtMovCaixa >= ' + funcao.RetornaValorEField(DBEdtMovCaixaIni,3);

  if trim(DBEdtMovCaixaFim.Text) <> '' then
    sql := sql + ' AND dtMovCaixa <= ' + funcao.RetornaValorEField(DBEdtMovCaixaFim, 3);

  cdsGrid.CommandText := sql;

  if not DBCKconsolidafilial.Checked then
  begin
    //antes de ativar o grid executa a procedure para retornar os dados do rodapé
    with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidCaixa, DBEdtMovCaixaIni,
                      DBEdtMovCaixaFim], 'spRetSaldoCaixa', '') do
    begin
      cdsRodape.Append;
      cdsRodape.FieldByName('vlSaldoAnterior').Value := FieldByName('vlSaldoAnterior').Value;
      cdsRodape.FieldByName('vlSaidas').Value := FieldByName('vlSaidas').Value;
      cdsRodape.FieldByName('vlEntradas').Value := FieldByName('vlEntradas').Value;
      cdsRodape.FieldByName('vlUltimoSaldo').Value := FieldByName('vlUltimoSaldo').Value;
      cdsRodape.FieldByName('vlSaldoAtual').Value := FieldByName('vlSaldo').Value;
    end;
  end
  else
  begin
    sqlProc := 'EXEC spRetSaldoCaixa ' + DBEidEmpresa.Text + ', ' + 'null' + ', ' + DBEidCaixa.Text + ', ' +
               funcao.RetornaValorEField(DBEdtMovCaixaIni, 3) + ', ' + funcao.RetornaValorEField(DBEdtMovCaixaFim, 3);
    with frmPrincipal.ExecutaSQLRet([], '', sqlProc) do
    begin
      cdsRodape.Append;
      cdsRodape.FieldByName('vlSaldoAnterior').Value := FieldByName('vlSaldoAnterior').Value;
      cdsRodape.FieldByName('vlSaidas').Value := FieldByName('vlSaidas').Value;
      cdsRodape.FieldByName('vlEntradas').Value := FieldByName('vlEntradas').Value;
      cdsRodape.FieldByName('vlUltimoSaldo').Value := FieldByName('vlUltimoSaldo').Value;
      cdsRodape.FieldByName('vlSaldoAtual').Value := FieldByName('vlSaldo').Value;
    end;
  end;

  cdsGrid.Active := true;
  screen.Cursor := crDefault;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
end;

procedure TFrmRelMovCaixa.BtnImprimirClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidCaixa.text) = '')then
  begin
    messagedlg('O Caixa deve ser informado, para a realização do Extrato !', mtwarning, [mbok], 0);
    DBEidCaixa.SetFocus;
    exit;
  end
  else
    sql := 'EXEC spRetSaldoCaixa ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.Text + ',' +
                                 funcao.RetornaValorEField(DBEidCaixa, 3) + ',' +
                                 funcao.RetornaValorEField(DBEdtMovCaixaIni, 3) + ',' +
                                 funcao.RetornaValorEField(DBEdtMovCaixaFim, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);
    cdsRelatorio.Active := false;
    cdsRelatorio.CommandText := 'EXEC spRelExtratoCaixa ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.Text + ',' +
                                 funcao.RetornaValorEField(DBEidCaixa, 3) + ',' +
                                 funcao.RetornaValorEField(DBEdtMovCaixaIni, 3) + ',' +
                                 funcao.RetornaValorEField(DBEdtMovCaixaFim, 3) + ', ' +
                                 funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                 funcao.RetornaValorEField(DBCKconsolidafilial, 3);
    cdsRelatorio.Active := true;

    frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelExtratoCaixa.fr3');
    frxRel.ShowReport;

    dmPadrao.dbConexao.CloseDataSets;
    sql := 'DELETE FROM tmpSaldoMovCaixa';
    dmPadrao.dbConexao.ExecuteDirect(sql);
end;

procedure TFrmRelMovCaixa.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'N';
end;

procedure TFrmRelMovCaixa.cdsPadraoidEmpresaValidate(Sender: TField);
begin
  inherited;
  if (trim(cdsPadraoidEmpresa.AsString) <> '') then
  begin
    if not filial then
    begin
      cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
         cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;

    end;
  end;
end;

procedure TFrmRelMovCaixa.ConfigLookEmpresa;
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

procedure TFrmRelMovCaixa.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnt := DBEidEmpresa.Text;
end;

procedure TFrmRelMovCaixa.DBEidEmpresaExit(Sender: TObject);
var
  idEmpresa : string;
begin
  inherited;
  if trim(DBEidEmpresa.Text) = '' then
  begin
    messagedlg('Campo Obrigatório!', mterror, [mbok], 0);
    DBEidEmpresa.SetFocus;
    exit;
  end;
  idEmpresa := DBEidEmpresa.Text;

  if vlAnt <> DBEidEmpresa.Text then
  begin
    cdsPadrao.Cancel;
    cdsPadrao.Append;
    cdsPadrao.FieldByName('idEmpresa').AsString := idEmpresa;
  end;
  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
       cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmRelMovCaixa.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    if filial then
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
    end // fim do filial
    else
    begin
      Application.CreateForm(TFrmPesEmpContabil, FrmPesEmpContabil);
      FrmPesEmpContabil.ShowModal;
      with cdsPadrao do
      begin
        if not (FrmPesEmpContabil.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpContabil.cdsGrid.FieldByName('idEmpresa').Value;
          (Formulario.FindComponent('DBEidEmpresa') as TCustomEdit).SetFocus;
        end;
      end;
    end; // fim do else
  end; // fim do VK_F4

end;

procedure TFrmRelMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelMovCaixa := nil;
end;

procedure TFrmRelMovCaixa.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidCaixa;
end;

procedure TFrmRelMovCaixa.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  cdsRodape.Active := false;
  cdsRodape.CreateDataSet;
  cdsRodape.Append;


  if not filial then
  begin
    DBEidCadEmpresa.Visible := false;
    LookdescCadEmpresa.Left := 127;
    LookdescAbreviada.Left := 359;
    cdsPadrao.FieldByName('idCadEmpresa').Value := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
    if not cdsPadraoidCadEmpresa.AsInteger > 0 then
      cdsPadraoidCadEmpresa.AsInteger := 1;
  end
  else
    cdsPadraoidCadEmpresa.AsString := FrmPrincipal.idCadEmpresa;
end;

end.
