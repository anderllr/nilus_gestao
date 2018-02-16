unit uFrmRelExtratoConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, SqlExpr,
  Provider, DBClient, ActnList, ImgList, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CFind, DBCtrls,
  CDBCheckBox, CLookUp, Mask, CDBEdit, CLabel, cxLookAndFeels,
  cxGridCustomPopupMenu, cxGridPopupMenu, CSpeedButton, frxExportCSV, frxExportMail, frxExportPDF,
  frxExportXML, frxExportRTF, frxExportText, frxDMPExport, frxClass, frxDBSet,
  frxExportImage, frxExportXLS, frxExportODF, frxExportHTML,
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
  System.Actions, System.ImageList, uFrmPadraoPesquisaDevExpress;
type
  TFrmRelExtratoConta = class(TFrmPadraoPesquisaDevExpress)
    PanEmpresa: TCPanelGradient;
    CLabel1: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBCKconsolida: TCDBCheckBox;
    Bevel3: TBevel;
    FindConta: TCFind;
    CLabel48: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CLabel3: TCLabel;
    DBEdtMovContaIni: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtMovContaFim: TCDBEdit;
    DBCKnaoCompensados: TCDBCheckBox;
    cdsPadraoidConta: TIntegerField;
    cdsPadraodtMovContaIni: TDateField;
    cdsPadraodtMovContaFim: TDateField;
    Bevel1: TBevel;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewdescMovFinanceira: TcxGridDBColumn;
    DBViewdtMovConta: TcxGridDBColumn;
    DBViewdtCompensacao: TcxGridDBColumn;
    DBViewvlMovConta: TcxGridDBColumn;
    DBViewdtComp: TcxGridDBColumn;
    DBViewdescMovConta: TcxGridDBColumn;
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
    CLabel9: TCLabel;
    DBEvlACompensar: TCDBEdit;
    CLabel10: TCLabel;
    DBEvlSaldoTotal: TCDBEdit;
    cdsGrididMovConta: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididConta: TIntegerField;
    cdsGrididCadGeral: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGrididMovFinanceira: TIntegerField;
    cdsGriddescMovFinanceira: TStringField;
    cdsGriddtMovConta: TSQLTimeStampField;
    cdsGriddtCompensacao: TSQLTimeStampField;
    cdsGriddtComp: TSQLTimeStampField;
    cdsGridvlMovConta: TFMTBCDField;
    cdsGriddescricao: TStringField;
    cdsGriddescMovConta: TStringField;
    cdsRodape: TClientDataSet;
    dsRodape: TDataSource;
    cdsRodapevlSaldoAnterior: TCurrencyField;
    cdsRodapevlSaidas: TCurrencyField;
    cdsRodapevlEntradas: TCurrencyField;
    cdsRodapevlUltimoSaldo: TCurrencyField;
    cdsRodapevlSaldoAtual: TCurrencyField;
    cdsRodapevlACompensar: TCurrencyField;
    cdsRodapevlSaldoTotal: TCurrencyField;
    cdsPadraoconsolida: TStringField;
    cdsPadraonaoCompensados: TStringField;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    frxRel: TfrxReport;
    frxDataset: TfrxDBDataset;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxCSVExport1: TfrxCSVExport;
    BtnImprimir: TCBitBtn;
    cdsRelLancamento: TClientDataSet;
    dspReLancamento: TDataSetProvider;
    frxDBRelLancamento: TfrxDBDataset;
    DBEidCadEmpresa: TCDBEdit;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididCheque: TStringField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGrididGerencial: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBEidChequeIni: TCDBEdit;
    CLabel12: TCLabel;
    cdsPadraoidChequeIni: TIntegerField;
    cdsPadraoidChequeFim: TIntegerField;
    DBEidChequeFim: TCDBEdit;
    CLabel11: TCLabel;
    DBViewidCheque: TcxGridDBColumn;
    FindEmpresa: TCFind;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure cdsPadraoidEmpresaValidate(Sender: TField);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfigLookEmpresa;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelExtratoConta: TFrmRelExtratoConta;

implementation

uses uFrmPrincipal, uFuncao, uDmPadrao, uFrmPesEmpFiscal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TFrmRelExtratoConta.actPesquisarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if trim(DBEidEmpresa.Text) = '' then
  begin
    messagedlg('A empresa deve ser informada!', mtwarning, [mbok], 0);
    DBEidEmpresa.SetFocus;
    exit;
  end;

  if trim(DBEidConta.Text) = '' then  
  begin
    messagedlg('A conta deve ser informada!', mtwarning, [mbok], 0);
    DBEidConta.SetFocus;
    exit;
  end;

  screen.Cursor := crSqlWait;
  cdsGrid.Active := false;
  //começa a seleção dos dados
  sql := 'SELECT * FROM vExtratoConta WHERE 1=1 ';
  //como a conta é obrigatória seleciona ela primeiro
  sql := sql + ' AND idConta = ' + DBEidConta.Text;

  if not (cdsPadrao.FieldByName('consolida').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
    sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if not (cdsPadrao.FieldByName('naoCompensados').AsString = 'S') then
    sql := sql + ' AND dtCompensacao IS NOT NULL';

  if trim(DBEdtMovContaIni.Text) <> '' then
    sql := sql + ' AND dtComp >= ' + funcao.RetornaValorEField(DBEdtMovContaIni,3);

  if trim(DBEdtMovContaFim.Text) <> '' then
    sql := sql + ' AND dtComp <= ' + funcao.RetornaValorEField(DBEdtMovContaFim,3);

  if (trim(DBEidChequeIni.Text) <> '') or (trim(DBEidChequeFim.Text) <> '') then
  begin
    sql := sql + ' AND ISNUMERIC(idCheque) > 0';

    if trim(DBEidChequeIni.Text) <> '' then
      sql := sql + ' AND CONVERT(NUMERIC(15,0), idCheque) >= ' + DBEidChequeIni.Text;

    if trim(DBEidChequeFim.Text) <> '' then
      sql := sql + ' AND CONVERT(NUMERIC(15,0), idCheque) <= ' + DBEidChequeFim.Text;
  end;


  cdsGrid.CommandText := sql;


  //antes de ativar o grid executa a procedure para retornar os dados do rodapé
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidConta, DBEdtMovContaIni,
                    DBEdtMovContaFim, DBCKnaoCompensados, DBCKconsolida], 'spRetSaldoConta', '') do
  begin
    cdsRodape.Append;
    cdsRodape.FieldByName('vlSaldoAnterior').Value := FieldByName('vlSaldoAnterior').Value;
    cdsRodape.FieldByName('vlSaidas').Value := FieldByName('vlSaidas').Value;
    cdsRodape.FieldByName('vlEntradas').Value := FieldByName('vlEntradas').Value;
    cdsRodape.FieldByName('vlUltimoSaldo').Value := FieldByName('vlUltimoSaldo').Value;
    cdsRodape.FieldByName('vlSaldoAtual').Value := FieldByName('vlSaldoAtual').Value;
    cdsRodape.FieldByName('vlACompensar').Value := FieldByName('vlACompensar').Value;
    cdsRodape.FieldByName('vlSaldoTotal').Value := FieldByName('vlSaldoTotal').Value;
  end;
  cdsGrid.Active := true;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
  screen.Cursor := crDefault;
end;

procedure TFrmRelExtratoConta.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if (trim(DBEidConta.Text) <> '' ) then
  begin
    cdsRelatorio.Active := False;
    cdsRelatorio.CommandText := 'EXEC spRelExtratoBancario ' + DBEidEmpresa.Text + ',' + DBEidCadEmpresa.Text + ',' +
                            funcao.RetornaValorEField(DBEidConta, 3) + ',' +
                            funcao.RetornaValorEField(DBEdtMovContaIni, 3) + ',' +
                            funcao.RetornaValorEField(DBEdtMovContaFim, 3) + ',' +
                            funcao.RetornaValorEField(DBCKconsolida, 3) + ',' +
                            quotedstr('N') ;
    cdsRelatorio.Active := true;


    cdsRelLancamento.Active := false;
    cdsRelLancamento.CommandText := 'EXEC spRelLancamentoFuturo ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.Text + ',' +
                               funcao.RetornaValorEField(DBEidConta, 3) + ',' +
                               funcao.RetornaValorEField(DBEdtMovContaFim, 3) + ',' +
                               funcao.RetornaValorEField(DBCKConsolida, 3)+ ',' +
                               funcao.RetornaValorEField(DBCKnaoCompensados, 3);
    cdsRelLancamento.Active := true;

    frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelExtratoBancario.fr3');

    //Monta Cabeçalho
    (FrxRel.FindComponent('DBEdtInicial') as TfrxMemoView).Memo.Clear;
    (FrxRel.FindComponent('DBEdtInicial') as TfrxMemoView).Memo.Add(DBEdtMovContaIni.Text);
    (FrxRel.FindComponent('DBEdtFinal') as TfrxMemoView).Memo.Clear;
    (FrxRel.FindComponent('DBEdtFinal') as TfrxMemoView).Memo.Add(DBEdtMovContaFim.Text);
    (FrxRel.FindComponent('DBCBconsolida') as TfrxMemoView).Memo.Clear;
    (FrxRel.FindComponent('DBCBconsolida') as TfrxMemoView).Memo.Add(cdsPadraoconsolida.AsString);
    (FrxRel.FindComponent('LookAgencia') as TfrxMemoView).Memo.Clear;
    (FrxRel.FindComponent('LookAgencia') as TfrxMemoView).Memo.Add(LookAgencia.Caption);
    (FrxRel.FindComponent('LookContaCorrente') as TfrxMemoView).Memo.Clear;
    (FrxRel.FindComponent('LookContaCorrente') as TfrxMemoView).Memo.Add(LookContaCorrente.Caption);
    (FrxRel.FindComponent('LookdescConta') as TfrxMemoView).Memo.Clear;
    (FrxRel.FindComponent('LookdescConta') as TfrxMemoView).Memo.Add(LookdescConta.Caption);

    //Por Pedidos de Clientes Coloquei a Opção de Esconder alguns Dados
    if cdsPadraonaoCompensados.AsString = 'N' then
    begin
      (frxRel.FindComponent('HeaderLancFuturos') as TfrxHeader).Visible := False;
      (frxRel.FindComponent('GroupHeaderLancFuturos') as TfrxGroupHeader).Visible := False;
      (frxRel.FindComponent('DetailDataLancFuturos') as TfrxDetailData).Visible := False;
      (frxRel.FindComponent('GroupFooterLimite') as TfrxGroupFooter).Visible := False;
    end;
    frxRel.ShowReport;
    dmPadrao.dbConexao.CloseDataSets;
  end
  else
  begin
    messagedlg('A conta deve ser informada!', mtwarning, [mbok], 0);
    DBEidConta.SetFocus;
    exit;
  end;
end;

procedure TFrmRelExtratoConta.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('consolida').AsString := 'S';
  cdsPadrao.FieldByName('naoCompensados').AsString := 'S';  
end;

procedure TFrmRelExtratoConta.cdsPadraoidEmpresaValidate(Sender: TField);
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

procedure TFrmRelExtratoConta.ConfigLookEmpresa;
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

procedure TFrmRelExtratoConta.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
       cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmRelExtratoConta.DBEidEmpresaKeyDown(Sender: TObject;
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

procedure TFrmRelExtratoConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmRelExtratoConta := nil;
end;

procedure TFrmRelExtratoConta.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidConta;
end;

procedure TFrmRelExtratoConta.FormShow(Sender: TObject);
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
