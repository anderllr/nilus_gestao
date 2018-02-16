unit uFrmRelLancCaixaConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr, Provider, DBClient, ActnList,
  ImgList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, CLookUp, Mask, DBCtrls, CDBEdit,
  CDBCheckBox, CFind, frxClass, frxDBSet, ClipBrd, frxExportMail, frxExportCSV,
  frxExportODF, frxExportHTML, frxExportXLS, frxExportXML, frxExportPDF,
  frxExportText, frxExportRTF, frxExportImage, cxCurrencyEdit, cxExport, cxGridExportLink, ShellAPI,
  Menus, cxShellBrowserDialog, ExtDlgs, RzShellDialogs, cxNavigator,
  System.Actions, System.ImageList;

type
  TFrmRelContCaixaConta = class(TFrmPadraoPesquisaDevExpress)
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    CLabel13: TCLabel;
    DBEidLote: TCDBEdit;
    LookGerenciaR: TCLookUp;
    cdsPadraoidCadEmpresa: TIntegerField;
    BtnImprimir: TCBitBtn;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    frxDataset: TfrxDBDataset;
    FrxRel: TfrxReport;
    FindEmpresa: TCFind;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxCSVExport1: TfrxCSVExport;
    DbViewidEmpresa: TcxGridDBColumn;
    DbViewidCadEmpresa: TcxGridDBColumn;
    DbViewidMovimentacao: TcxGridDBColumn;
    DbViewidCxaCnt: TcxGridDBColumn;
    DbViewdescMov: TcxGridDBColumn;
    DbViewidMovFinanceira: TcxGridDBColumn;
    DbViewidResultado: TcxGridDBColumn;
    DbViewidSafra: TcxGridDBColumn;
    DbViewidGerencial: TcxGridDBColumn;
    DbViewvlMov: TcxGridDBColumn;
    DbViewtpMov: TcxGridDBColumn;
    cdsPadraoidLote: TIntegerField;
    FindLote: TCFind;
    actImprimir: TAction;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnExportaClick(Sender: TObject);
    procedure DBViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelContCaixaConta: TFrmRelContCaixaConta;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal, uDmFind, uFrmPesEmpFiscal,
  uFrmRelMovTitulos;

{$R *.dfm}

procedure TFrmRelContCaixaConta.actImprimirExecute(Sender: TObject);
begin
  inherited;
    //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsPadrao.FieldByName('idEmpresa').AsString + ', ' + cdsPadrao.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := 'EXEC spBuscaCaixaConta ' + DBEidEmpresa.Text + ',' +  DBEidLote.Text;
  cdsRelatorio.Active := true;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelNaoIntegradosLote.fr3');
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelContCaixaConta.actPesquisarExecute(Sender: TObject);
begin
  if (trim(DBEidEmpresa.Text) = '') or (trim(DBEidCadEmpresa.Text) = '') then
  begin
    messagedlg('A empresa deve ser informada!', mtwarning, [mbok], 0);
    DBEidEmpresa.SetFocus;
    exit;
  end;

  if (trim(DBEidLote.Text) = '') then
  begin
    messagedlg('O Lote deve ser informada!', mtwarning, [mbok], 0);
    DBEidEmpresa.SetFocus;
    exit;
  end;

  Screen.Cursor := crSqlWait;
  dmPadrao.dbConexao.CloseDataSets;
  cdsGrid.Active := False;
  cdsGrid.CommandText := 'EXEC spBuscaCaixaConta ' + DBEidEmpresa.Text + ',' + DBEidLote.Text;
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
  inherited;
end;

procedure TFrmRelContCaixaConta.BtnExportaClick(Sender: TObject);
var
  caminho : string;
begin

  try
    caminho := ExtractFileDir(Application.ExeName) + '\Contas_Receber.xls';
    if FileExists(caminho) then
       if MessageDlg('Essa pasta já contém um arquivo com esse nome. Deseja substituí-lo?', mtInformation,[mbYes,mbNo],0) = mrNo then
          Exit;
    ExportGridToExcel(ExtractFileDir(Application.ExeName) + '\Contas_Receber.xls', cxGrid);
    ShowMessage('Em: '+DateToStr(Now)+' Foi gerado o arquivo: '+caminho +#10+#13+
                'com sucesso. Para abir-lo, basta ir no caminho aonde foi criado o arquivo.');
  except
    on E: Exception do
    begin
       raise exception.create('Erro! Arquivo não foi criado'+ e.message);
    end;
  end;
end;

procedure TFrmRelContCaixaConta.ConfigLookEmpresa;
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

procedure TFrmRelContCaixaConta.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
 if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
       cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmRelContCaixaConta.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TFrmRelContCaixaConta.DBViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
    sql : string;
begin
  inherited;
  sql := 'EXEC spRelMovTitulos ' + cdsGrid.FieldByName('idEmpresa').AsString + ', ' +
                                   cdsGrid.FieldByName('idMovimentacao').AsString;
  Application.CreateForm(TFrmRelMovTitulos, FrmRelMovTitulos);
  FrmRelMovTitulos.sql := sql;
  FrmRelMovTitulos.ShowModal;
end;

procedure TFrmRelContCaixaConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContCaixaConta := nil;
end;

procedure TFrmRelContCaixaConta.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
end;

procedure TFrmRelContCaixaConta.FormShow(Sender: TObject);
begin
  inherited;
  DBEidLote.SetFocus;
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
end;

end.
