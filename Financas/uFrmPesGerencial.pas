unit uFrmPesGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, cxLookAndFeels,
  cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr, Provider, DBClient, ActnList,
  ImgList, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CFind, CLookUp, Mask,
  DBCtrls, CDBEdit, CSpeedButton, frxExportCSV, frxExportMail, frxExportPDF,
  frxExportXML, frxExportRTF, frxExportText, frxDMPExport, frxClass, frxDBSet,
  frxExportImage, frxExportXLS, frxExportODF, frxExportHTML, cxCurrencyEdit, ClipBrd,
  CDBCheckBox, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, Menus,
  cxShellBrowserDialog, ExtDlgs, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, System.Actions, cxGridExportLink, System.ImageList;

type
  TFrmPesGerencial = class(TFrmPadraoPesquisaDevExpress)
    CLabel13: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEidGerencial: TCDBEdit;
    LookGerenciaR: TCLookUp;
    CLabel5: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel1: TCLabel;
    DBEclassificacaoInicial: TCDBEdit;
    CLabel3: TCLabel;
    DBEclassificacaoFinal: TCDBEdit;
    FindGerencial: TCFind;
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    Bevel3: TBevel;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoclass_ini: TStringField;
    cdsPadraoclass_fim: TStringField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    DBViewclassificacao: TcxGridDBColumn;
    DBViewidGerencial: TcxGridDBColumn;
    DBViewdescGerencial: TcxGridDBColumn;
    DBViewnrGrau: TcxGridDBColumn;
    DBViewtpGerencial: TcxGridDBColumn;
    DBViewvlGerencial: TcxGridDBColumn;
    DBViewFornecedor: TcxGridDBColumn;
    DBViewnrDocumento: TcxGridDBColumn;
    DBViewSerie: TcxGridDBColumn;
    DBViewobsGerencial: TcxGridDBColumn;
    CBitBtn1: TCBitBtn;
    FindClassificao: TCFind;
    DBViewdt: TcxGridDBColumn;
    BtnImprimir: TCBitBtn;
    actImprimir: TAction;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    frxJPEGExport1: TfrxJPEGExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    frxXLSExport1: TfrxXLSExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRel: TfrxReport;
    frxDataset: TfrxDBDataset;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxRTFExport1: TfrxRTFExport;
    frxXMLExport1: TfrxXMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxCSVExport1: TfrxCSVExport;
    FindSafra: TCFind;
    CLabel23: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    cdsPadraoidSafra: TIntegerField;
    DBViewdescSafra: TcxGridDBColumn;
    DBViewdescResultado: TcxGridDBColumn;
    DBEidCadEmpresa: TCDBEdit;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBEvlFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEvlInicial: TCDBEdit;
    CLabel7: TCLabel;
    cdsPadraovlInicial: TCurrencyField;
    cdsPadraovlFinal: TCurrencyField;
    FindEmpresa: TCFind;
    BtnExportXls: TCBitBtn;
    BtnExportXlsx: TCBitBtn;
    SaveDialog: TSaveDialog;
    procedure DBEclassificacaoInicialEnter(Sender: TObject);
    procedure DBEclassificacaoFinalEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure ConfigLookEmpresa;
    procedure cdsPadraoidEmpresaValidate(Sender: TField);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEclassificacaoFinalExit(Sender: TObject);
    procedure DBEclassificacaoInicialExit(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure BtnExportXlsClick(Sender: TObject);
    procedure BtnExportXlsxClick(Sender: TObject);
  private
    { Private declarations }
    mascara : string;
  public
    { Public declarations }
  end;

var
  FrmPesGerencial: TFrmPesGerencial;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPesEmpFiscal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TFrmPesGerencial.actImprimirExecute(Sender: TObject);
begin
  inherited;
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := 'EXEC spBuscaGerencial ' + DBEidEmpresa.Text + ',' +  DBEidEmpresa.Text + ',' +
                          funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                          funcao.RetornaValorEField(DBEdtFinal, 3) + ',' +
                          funcao.RetornaValorEField(DBEidGerencial, 3) + ',' +
                          funcao.RetornaValorEField(DBEidSafra, 3) + ',' +
                          funcao.RetornaValorEField(DBEclassificacaoInicial, 3) + ',' +
                          funcao.RetornaValorEField(DBEclassificacaoFinal, 3) +
                          ',' + QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                          QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                          funcao.RetornaValorEField(DBEvlInicial, 3) + ', ' +
                          funcao.RetornaValorEField(DBEvlFinal, 3);
  cdsRelatorio.Active := true;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelDetalhamentoGerencial.fr3');
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmPesGerencial.actPesquisarExecute(Sender: TObject);
begin
  if (trim(DBEidEmpresa.Text) = '') or (trim(DBEidCadEmpresa.Text) = '') then
  begin
    messagedlg('A empresa deve ser informada!', mtwarning, [mbok], 0);
    DBEidEmpresa.SetFocus;
    exit;
  end;
  if (trim(DBEdtInicial.Text) = '') and (trim(DBEdtFinal.Text) = '') then
  begin
    messagedlg('Você deve obrigatoriamente informar o período!', mtwarning, [mbok], 0);
    exit;
  end;

  Screen.Cursor := crSqlWait;
  dmPadrao.dbConexao.CloseDataSets;
  cdsGrid.Active := False;
  cdsGrid.CommandText := 'EXEC spBuscaGerencial ' + DBEidEmpresa.Text + ',' + DBEidCadEmpresa.Text + ',' +
                          funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                          funcao.RetornaValorEField(DBEdtFinal, 3) + ',' +
                          funcao.RetornaValorEField(DBEidGerencial, 3) + ',' +
                          funcao.RetornaValorEField(DBEidSafra, 3) + ',' +
                          funcao.RetornaValorEField(DBEclassificacaoInicial, 3) + ',' +
                          funcao.RetornaValorEField(DBEclassificacaoFinal, 3) +
                          ',' + QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                          QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                          funcao.RetornaValorEField(DBEvlInicial, 3) + ', ' +
                          funcao.RetornaValorEField(DBEvlFinal, 3);
//  Clipboard.AsText := cdsGrid.CommandText;
  cdsGrid.Active := true;
  screen.Cursor := crDefault;
  if cdsGrid.RecordCount = 0 then
  begin
    ShowMessage('Sem dados para listar!');
    exit;
  end;

  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;

  BtnExportXls.Enabled := cdsGrid.RecordCount > 0;
  BtnExportXlsx.Enabled := cdsGrid.RecordCount > 0;

  inherited;
end;

procedure TFrmPesGerencial.BtnExportXlsClick(Sender: TObject);
begin
  inherited;
  SaveDialog.Filter:= 'Arquivos XLS (*.xls)|*.xls';
  if SaveDialog.Execute then
  begin
    ExportGridToExcel(SaveDialog.FileName, cxGrid);
    if FileExists(SaveDialog.FileName) then
      WinExec(PAnsiChar(SaveDialog.FileName), SW_SHOWMAXIMIZED);
  end;
end;

procedure TFrmPesGerencial.BtnExportXlsxClick(Sender: TObject);
begin
  inherited;
  SaveDialog.Filter:= 'Arquivos XLSX (*.xlsx)|*.xlsx';
  if SaveDialog.Execute then
  begin
    ExportGridToXLSX(SaveDialog.FileName, cxGrid);
    if FileExists(SaveDialog.FileName) then
      WinExec(PAnsiChar(SaveDialog.FileName), SW_SHOWMAXIMIZED);
  end;
end;

procedure TFrmPesGerencial.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesGerencial.cdsPadraoidEmpresaValidate(Sender: TField);
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
    mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
    if trim(mascara) = '' then
    begin
      messagedlg('Empresa sem máscara cadastrada! Entre em configuração e informe a máscara!', mtwarning, [mbok], 0);
      close;
      exit;
    end;

  end;
end;

procedure TFrmPesGerencial.ConfigLookEmpresa;
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

procedure TFrmPesGerencial.DBEclassificacaoFinalEnter(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('class_Fim').AsString) <> '' then
      cdsPadrao.FieldByName('class_Fim').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('class_Fim').AsString);
end;

procedure TFrmPesGerencial.DBEclassificacaoFinalExit(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCDBEdit).Text) = '' then
    exit;

  //inclui a máscara
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadraoclass_fim.AsString := funcao.Mascara(cdsPadraoclass_fim.AsString, 99, mascara);

end;

procedure TFrmPesGerencial.DBEclassificacaoInicialEnter(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('class_Ini').AsString) <> '' then
      cdsPadrao.FieldByName('class_Ini').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('class_Ini').AsString);
end;

procedure TFrmPesGerencial.DBEclassificacaoInicialExit(Sender: TObject);
begin
  inherited;
  if trim((Sender as TCDBEdit).Text) = '' then
    exit;

  //inclui a máscara
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadraoclass_ini.AsString := funcao.Mascara(cdsPadraoclass_ini.AsString, 99, mascara);

end;

procedure TFrmPesGerencial.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
       cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmPesGerencial.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
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
    end; // fim do filial
  end; // fim do VK_F4
end;

procedure TFrmPesGerencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesGerencial := nil;
end;

procedure TFrmPesGerencial.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
end;

procedure TFrmPesGerencial.FormShow(Sender: TObject);
begin
  inherited;
  DBEidGerencial.SetFocus;
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
