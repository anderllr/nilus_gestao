unit uFrmImprimeCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, System.Actions, CPanel, CDBRadioGroup, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox,
  frxClass, frxDMPExport, frxDBSet, ACBrBase, ACBrExtenso, frxDMPClass, DateUtils;

type
  TFrmImprimeCheque = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanFornecedor: TCPanelGradient;
    Bevel3: TBevel;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    FindFornecedor: TCFind;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    CPanel1: TCPanel;
    CLabel42: TCLabel;
    CLabel51: TCLabel;
    DBEvlSomaTotal: TCDBEdit;
    DBEvlSomaSel: TCDBEdit;
    PanOpcoes: TCPanelGradient;
    cdsGridvlSomaTotal: TAggregateField;
    cdsGridvlSomaSel: TAggregateField;
    cdsGrididMovConta: TIntegerField;
    cdsGriddescGerencial: TStringField;
    cdsGriddescMovConta: TStringField;
    cdsGriddtMovConta: TSQLTimeStampField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGridvlMovConta: TFMTBCDField;
    cdsGridsel: TStringField;
    cdsGridfat: TByteField;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    cdsGrididCheque: TStringField;
    cdsGrididCadGeral: TIntegerField;
    DBEidFornecedor: TCDBEdit;
    LookidCnpjCpfFornecedor: TCLookUp;
    CLabel9: TCLabel;
    LookDescAbreviadaFornecedor: TCLookUp;
    LookDescCadFornecedor: TCLookUp;
    CLabel7: TCLabel;
    DBEidChequeIni: TCDBEdit;
    DBEidChequeFim: TCDBEdit;
    CLabel4: TCLabel;
    CLabel8: TCLabel;
    cdsPadraoidChequeIni: TStringField;
    cdsPadraoidChequeFim: TStringField;
    cdsGriddescCadFornecedor: TStringField;
    btnImprimir: TCBitBtn;
    DBCBimpresso: TCDBCheckBox;
    cdsPadraoimpresso: TStringField;
    cbPredatado: TcxCheckBox;
    cbCruzado: TcxCheckBox;
    cbNominal: TcxCheckBox;
    CLabel3: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    cdsPadraoidConta: TIntegerField;
    cdsCheque: TClientDataSet;
    dsCheque: TDataSource;
    dspCheque: TDataSetProvider;
    sdsCheque: TSQLDataSet;
    cdsChequeextenso: TStringField;
    rptCheque: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    Report: TfrxReport;
    cdsChequenominal: TStringField;
    cdsChequelocal: TStringField;
    cdsChequeano: TIntegerField;
    cdsChequemes: TStringField;
    cdsChequedata: TStringField;
    Extenso: TACBrExtenso;
    cdsChequeidMovConta: TIntegerField;
    cdsChequevlMovConta: TFMTBCDField;
    cdsChequedescCadFornecedor: TStringField;
    cdsChequedtVencimento: TSQLTimeStampField;
    cdsChequedia: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure cdsGridselGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure cdsChequeCalcFields(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    function RetornaMov: String;
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;
  public
    { Public declarations }
    idEmpresa, idCadEmpresa : integer;
  end;

var
  FrmImprimeCheque: TFrmImprimeCheque;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uCadTituloPag;

{$R *.dfm}

procedure TFrmImprimeCheque.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  if (cdsPadraoidConta.AsInteger = 0) then
  begin
    messagedlg('Você precisa informar a conta!', mtwarning, [mbok], 0);
    exit;
  end;
  status := '';
  cdsGrid.IndexFieldNames := '';
  sql := 'SELECT CONVERT(CHAR(1), ' + QuotedStr('N') + ') sel, idMovConta, descGerencial, descMovConta, ' +
         ' dtMovConta, dtVencimento, vlMovConta, idCheque, idCadGeral,  CONVERT(TINYINT, 0) fat, ' +
         ' f.descCadFornecedor FROM vMovContaCons LEFT JOIN vCadFornecedorContabil f ON vMovContaCons.idCadGeral = f.idFornecedor ' +
         ' WHERE idMovFinanceira = 7 AND ISNUMERIC(idCheque) > 0';

  sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtMovConta >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtMovConta <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoIni').AsString) <> '' then
    sql := sql + ' AND dtVencimento >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoFim').AsString) <> '' then
    sql := sql + ' AND dtVencimento <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoFim').AsDateTime);
  if cdsPadraoidFornecedor.AsInteger > 0 then
    sql := sql + ' AND idCadGeral = ' + cdsPadraoidFornecedor.AsString;
  if trim(cdsPadraoidChequeIni.AsString) <> '' then
    sql := sql + ' AND CONVERT(INT, idCheque) >= ' + cdsPadraoidChequeIni.AsString;
  if trim(cdsPadraoidChequeFim.AsString) <> '' then
    sql := sql + ' AND CONVERT(INT, idCheque) <= ' + cdsPadraoidChequeFim.AsString;
  if cdsPadraoimpresso.AsString = 'N' then
    sql := sql + ' AND impresso = ' + QuotedStr('N');
  if cdsPadraoidConta.AsInteger > 0 then
    sql := sql + ' AND idConta = ' + cdsPadraoidConta.AsString;

  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEdtInicial.SetFocus;
  qtSel := 0;
  btnImprimir.Enabled := qtSel > 0;
  inherited;
end;

procedure TFrmImprimeCheque.btnImprimirClick(Sender: TObject);
var
  arqRel, sql, mov : string;
begin
  inherited;
  arqRel := dmPadrao.RetornaConfig('caminho_rel') + Format('RelChequeLista_%d.fr3', [cdsPadraoidConta.AsInteger]);
  If Not(FileExists(arqRel)) Then
  Begin
    messagedlg('O arquivo de impressão do cheque ainda não foi configurado. Verifique!', mtwarning, [mbok], 0);
    exit;
  End;

  mov := RetornaMov;

  sql := 'SELECT m.idMovConta, m.vlMovConta, m.dtVencimento, f.descCadFornecedor  FROM MovConta m ' +
         ' LEFT JOIN vCadFornecedorContabil f ON m.idCadGeral = f.idFornecedor WHERE 1=1 AND ' +
         ' idMovConta IN (' + mov + ')';

  cdsCheque.Active := false;
  cdsCheque.CommandText := sql;

  Report.LoadFromFile(arqRel);
  TfrxDMPMemoView(Report.FindComponent('lblPredatado')).Visible   := cbPredatado.Checked;
  TfrxDMPMemoView(Report.FindComponent('lblCruzado')).Visible   := cbCruzado.Checked;
  //
  Report.ShowReport;

  //Marca a impressão do cheque -- feito via script para não causar problemas no dataset
  sql := 'UPDATE MovConta SET impresso = ' + QuotedStr('S') + ' WHERE idMovConta IN (' + mov + ')';
  dmPadrao.dbConexao.ExecuteDirect(sql);
end;

procedure TFrmImprimeCheque.cdsChequeCalcFields(DataSet: TDataSet);
begin
  inherited;
  Extenso.Valor := cdsChequevlMovConta.AsCurrency;
  cdsChequeextenso.AsString := UpperCase(Extenso.Texto);

  if cbNominal.Checked then
    cdsChequenominal.AsString := cdsChequedescCadFornecedor.AsString
  else
    cdsChequenominal.AsString := '';

  cdsChequedata.AsString := FormatDateTime('dd/MM/yyyy', cdsChequedtVencimento.AsDateTime);
  cdsChequelocal.AsString := FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1').FieldByName('descCidade').asString;
  cdsChequedia.AsString := funcao.StrZero(DayOf(Date()), 2);
  cdsChequemes.AsString := funcao.CDoW(Date(), exdMes);
  cdsChequeano.AsInteger := YearOf(Date());
end;

procedure TFrmImprimeCheque.cdsGridselGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := '';
end;

procedure TFrmImprimeCheque.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoimpresso.AsString := 'N';
end;

procedure TFrmImprimeCheque.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
      Edit;
      if FieldByName('sel').AsString = 'S' then
      begin
        qtSel := qtSel - 1;
        FieldByName('sel').AsString := 'N';
        FieldByName('fat').AsInteger := 0;
      end
      else
      begin
        qtSel := qtSel + 1;
        FieldByName('sel').AsString := 'S';
        FieldByName('fat').AsInteger := 1;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
    btnImprimir.Enabled := qtSel > 0;
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmImprimeCheque.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmImprimeCheque.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmImprimeCheque.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
begin
  inherited;
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
  end;
end;

procedure TFrmImprimeCheque.dsPadraoDataChange(Sender: TObject; Field: TField);
begin
//  inherited;

end;

procedure TFrmImprimeCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmImprimeCheque := nil;
end;

procedure TFrmImprimeCheque.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
  Height := 515;
  Width := 900;
end;

procedure TFrmImprimeCheque.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

function TFrmImprimeCheque.RetornaMov: String;
var
  mov : string;
begin
  mov := '';
  //Funcão que retorna os ids selecionados no grid
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsString = 'S' then
      if trim(mov) <> '' then
        mov := mov + ', ' + cdsGrididMovConta.AsString
      else
        mov := cdsGrididMovConta.AsString;
    cdsGrid.Next;
  end;

  cdsGrid.First;

  Result := mov;
end;

end.
