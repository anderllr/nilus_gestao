unit uFrmRelFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CDBCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, CDBRadioGroup, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, EditAlign, CEdit, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelFluxoCaixa = class(TFrmPadraoRelEmpresa)
    cdsRelVencer: TClientDataSet;
    dspRelVencer: TDataSetProvider;
    dspRelVencido: TDataSetProvider;
    cdsRelVencido: TClientDataSet;
    cdsRelConta: TClientDataSet;
    dspRelConta: TDataSetProvider;
    frxRel: TfrxReport;
    CGroupBox1: TCGroupBox;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    FindIndice: TCFind;
    CLabel29: TCLabel;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    cdsPadraoidIndice: TSmallintField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    frxDBRelConta: TfrxDBDataset;
    frxDBRelVencer: TfrxDBDataset;
    frxDBRelVencido: TfrxDBDataset;
    cdsRelatorioidIndice: TSmallintField;
    cdsRelatoriodescIndice: TStringField;
    cdsRelatoriodescSimbolo: TStringField;
    cdsRelatoriodtLancamento: TSQLTimeStampField;
    dspRelRodape: TDataSetProvider;
    frxDBRelRodape: TfrxDBDataset;
    cdsRelRodape: TClientDataSet;
    cdsRelatorioqtEstoque: TFMTBCDField;
    cdsRelatoriovlEstoque: TFMTBCDField;
    cdsRelatoriovlLancamento: TFMTBCDField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBEidSegmento: TcxPopupEdit;
    CLabel12: TCLabel;
    DBEidGrupo: TcxPopupEdit;
    CLabel10: TCLabel;
    DBEidFornecedores: TcxPopupEdit;
    LblCad: TCLabel;
    CGroupBox2: TCGroupBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    CGroupBox3: TCGroupBox;
    DBCKmostraContas: TCDBCheckBox;
    DBCKmostraIndice: TCDBCheckBox;
    DBCKmostraVencidos: TCDBCheckBox;
    DBRGagrupar: TCDBRadioGroup;
    cdsPadraoagrupar: TStringField;
    cdsPadraomostraIndice: TStringField;
    cdsPadraomostraContas: TStringField;
    cdsPadraomostraVencidos: TStringField;
    panPopupFornecedores: TPanel;
    Shape8: TShape;
    Label29: TLabel;
    Label30: TLabel;
    GridFornecedores: TcxGrid;
    DBTableViewFornecedor: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBCODIGO: TcxGridDBColumn;
    cxGridDBNOME: TcxGridDBColumn;
    cxGridDBNOME_FANTASIA: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtnAplicarFor: TCBitBtn;
    BtnCancelarFor: TCBitBtn;
    BtnLimparFor: TCBitBtn;
    cbCodigo: TcxCheckBox;
    cbNome: TcxCheckBox;
    cbFantasia: TcxCheckBox;
    panSegmento: TPanel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    GridSegmento: TcxGrid;
    DBTableViewSegmento: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBCodSegmento: TcxGridDBColumn;
    cxGridDBDescSegmento: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    BtnAplicarSegmento: TCBitBtn;
    BtnCancelarSegmento: TCBitBtn;
    BtnLimparSegmento: TCBitBtn;
    cbCodSegmento: TcxCheckBox;
    cbNomeSegmento: TcxCheckBox;
    panGrupos: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label5: TLabel;
    GridGrupo: TcxGrid;
    DBTableViewGrupo: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBCodGrupo: TcxGridDBColumn;
    cxGridDBNomeGrupo: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    BtnAplicarGrupo: TCBitBtn;
    BtnCancelarGrupo: TCBitBtn;
    BtnLimparGrupo: TCBitBtn;
    cbCodGrupo: TcxCheckBox;
    cbDescGrupo: TcxCheckBox;
    dsGrupoCad: TDataSource;
    cdsGrupoCad: TClientDataSet;
    cdsGrupoCadSELECIONADO: TStringField;
    cdsGrupoCadidGrupoCad: TSmallintField;
    cdsGrupoCaddescGrupoCad: TStringField;
    cdsGrupoCadstGrupoCad: TStringField;
    dspGrupoCad: TDataSetProvider;
    sdsGrupoCad: TSQLQuery;
    dsFornecedores: TDataSource;
    cdsFornecedores: TClientDataSet;
    cdsFornecedoresSELECIONADO: TStringField;
    cdsFornecedoresidFornecedor: TIntegerField;
    cdsFornecedoresdescCadFornecedor: TStringField;
    cdsFornecedoresdescAbreviada: TStringField;
    dspFornecedores: TDataSetProvider;
    qryFornecedores: TSQLQuery;
    cdsRelContaidConta: TIntegerField;
    cdsRelContadescConta: TStringField;
    cdsRelContavlEntrada: TFMTBCDField;
    cdsRelContavlSaida: TFMTBCDField;
    cdsRelContavlSaldoAtual: TFMTBCDField;
    cdsRelVencidoidDocSerie: TStringField;
    cdsRelVencidonrTitulo: TStringField;
    cdsRelVencidoidParcela: TSmallintField;
    cdsRelVencidoidCadGeral: TIntegerField;
    cdsRelVencidodescAbreviada: TStringField;
    cdsRelVencidodtVencimento: TSQLTimeStampField;
    cdsRelVencidoIndice: TStringField;
    cdsRelVencidoqtIndice: TFMTBCDField;
    cdsRelVencidovlDebito: TFMTBCDField;
    cdsRelVencidovlCredito: TFMTBCDField;
    cdsRelVencidoobsTitulo: TStringField;
    cdsRelVenceridDocSerie: TStringField;
    cdsRelVencernrTitulo: TStringField;
    cdsRelVenceridParcela: TSmallintField;
    cdsRelVenceridCadGeral: TIntegerField;
    cdsRelVencerdescAbreviada: TStringField;
    cdsRelVencerdtVencimento: TSQLTimeStampField;
    cdsRelVencerIndice: TStringField;
    cdsRelVencerqtIndice: TFMTBCDField;
    cdsRelVencervlDebito: TFMTBCDField;
    cdsRelVencervlCredito: TFMTBCDField;
    cdsRelVencerobsTitulo: TStringField;
    cdsRelVenceridGerencial: TIntegerField;
    DBCKintegraSaldo: TCDBCheckBox;
    cdsPadraointegraSaldo: TStringField;
    dspRelAdiantamento: TDataSetProvider;
    cdsRelAdiantamento: TClientDataSet;
    frxDBAdiantamento: TfrxDBDataset;
    cdsRelAdiantamentoidCadGeral: TIntegerField;
    cdsRelAdiantamentodescCadGeral: TStringField;
    cdsRelAdiantamentovlEntrada: TFMTBCDField;
    cdsRelAdiantamentovlSaida: TFMTBCDField;
    cdsPadraomostraAdiantamento: TStringField;
    DBCKmostraAdiantamento: TCDBCheckBox;
    cdsRelContavlSaldoBanco: TFMTBCDField;
    cdsRelVencidovlSaldoVencido: TFMTBCDField;
    cdsRelAdiantamentovlSaldoAdiantamento: TFMTBCDField;
    cdsRelVencidovlSaldoAnterior: TFMTBCDField;
    cdsRelAdiantamentovlSaldoAnterior: TFMTBCDField;
    cdsRelVencervlSaldoAnterior: TFMTBCDField;
    DBEvlAcumulado: TCDBEdit;
    cdsPadraovlAcumulado: TCurrencyField;
    DBRGtpFluxo: TCDBRadioGroup;
    cdsPadraotpFluxo: TStringField;
    EDtpFluxo: TCEdit;
    EDtpAgrupamento: TCEdit;
    cdsPadraoimpCabecalho: TStringField;
    DBCKimpCabecalho: TCDBCheckBox;
    panEmpresas: TPanel;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    GridEmpresa: TcxGrid;
    DBTableViewEmpresas: TcxGridDBTableView;
    GridEmpresaSELECIONADO: TcxGridDBColumn;
    GridEmpresaidEmpresa: TcxGridDBColumn;
    GridEmpresadescCadEmpresa: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    BtnAplicarEmpresas: TCBitBtn;
    BtnCancelarEmpresas: TCBitBtn;
    BtnLimparEmpresas: TCBitBtn;
    cbCodEmpresa: TcxCheckBox;
    cbdescEmpresa: TcxCheckBox;
    dsSegmento: TDataSource;
    cdsSegmento: TClientDataSet;
    cdsSegmentoSELECIONADO: TStringField;
    cdsSegmentoidSegmento: TSmallintField;
    cdsSegmentodescSegmento: TStringField;
    cdsSegmentostSegmento: TStringField;
    dspSegmento: TDataSetProvider;
    sdsSegmento: TSQLQuery;
    dsEmpresas: TDataSource;
    cdsEmpresas: TClientDataSet;
    dspEmpresas: TDataSetProvider;
    sdsEmpresas: TSQLQuery;
    cdsEmpresasidEmpresa: TIntegerField;
    cdsEmpresasdescCadEmpresa: TStringField;
    cdsEmpresasdescAbreviada: TStringField;
    cdsEmpresasidCnpjCpf: TStringField;
    cdsEmpresasSELECIONADO: TStringField;
    GridEmpresadescAbreviada: TcxGridDBColumn;
    DBEidEmpresas: TcxPopupEdit;
    CLabel1: TCLabel;
    cdsPadraotpPrevisao: TStringField;
    DBCKtpPrevisao: TCDBCheckBox;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
      stDestaque: TcxStyle;
    vlSaldoAnterior : Currency;
    //*********************************************************************************
    // ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
   //*********************************************************************************
        //*********   FORNECEDORES   ************//
        Procedure Montar_Selecao_Fornecedores;
        Procedure Limpar_Selecao_Fornecedores;
        procedure PopupFornecedoresEnter(Sender: TObject);
        procedure AplicarForClick(Sender: TObject);
        procedure CancelarForClick(Sender: TObject);
        procedure LimparForClick(Sender: TObject);
        procedure OnDBTableViewFornecedorDblClick(Sender: TObject);
        procedure OnDBEidFornecedoresPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewFornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   GRUPOS EMPRESARIAIS   ************//
        Procedure Montar_Selecao_GrupoCad;
        Procedure Limpar_Selecao_GrupoCad;
        procedure GruposEnter(Sender: TObject);
        procedure AplicarGrupoClick(Sender: TObject);
        procedure CancelarGrupoClick(Sender: TObject);
        procedure LimparGrupoClick(Sender: TObject);
        procedure OnDBTableViewGrupoDblClick(Sender: TObject);
        procedure OnDBEidGruposPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   SEGMENTOS   ************//
        Procedure Montar_Selecao_Segmento;
        Procedure Limpar_Selecao_Segmento;
        procedure SegmentoEnter(Sender: TObject);
        procedure AplicarSegmentoClick(Sender: TObject);
        procedure CancelarSegmentoClick(Sender: TObject);
        procedure LimparSegmentoClick(Sender: TObject);
        procedure OnDBTableViewSegmentoDblClick(Sender: TObject);
        procedure OnDBEidSegmentosPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewSegmentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);        
        //
        //*********   EMPRESAS   ************//
        Procedure Montar_Selecao_Empresas;
        Procedure Limpar_Selecao_Empresas;
        procedure EmpresasEnter(Sender: TObject);
        procedure AplicarEmpresasClick(Sender: TObject);
        procedure CancelarEmpresasClick(Sender: TObject);
        procedure LimparEmpresasClick(Sender: TObject);
        procedure OnDBTableViewEmpresasDblClick(Sender: TObject);
        procedure OnDBEidEmpresasPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewEmpresasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //

        //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  public
    { Public declarations }
  end;

var
  FrmRelFluxoCaixa: TFrmRelFluxoCaixa;

implementation

uses uFrmPadraoRel, uFuncao, uDmPadrao;

{$R *.dfm}

//*********************************************************************************
// ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
//*********************************************************************************
   //*********   FORNECEDORES   ************//
procedure TFrmRelFluxoCaixa.Montar_Selecao_Fornecedores;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsFornecedores do
  begin
    sCodigos := TStringList.Create();
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;
    While Not(DataSet.Eof) Do
    Begin
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idFornecedor').Text);
      DataSet.Next;
    End;
    //
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    //
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);
    //
    funcao.ASort(iCodigos);
    //
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    //
    DBEidFornecedores.Text := funcao.SepararValores(aCodigos, ', ');
    //
    sCodigos.Free;
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; // fim do with
end;

procedure TFrmRelFluxoCaixa.Limpar_Selecao_Fornecedores;
Var bReg: Pointer;
begin
  with dsFornecedores do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidFornecedores.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelFluxoCaixa.PopupFornecedoresEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsFornecedores.DataSet.Active) Then
     dsFornecedores.DataSet.Open;
  //
end;

procedure TFrmRelFluxoCaixa.AplicarForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  Montar_Selecao_Fornecedores;
  //
end;


procedure TFrmRelFluxoCaixa.CancelarForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  //
end;
procedure TFrmRelFluxoCaixa.LimparForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  Limpar_Selecao_Fornecedores;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBTableViewFornecedorDblClick(Sender: TObject);
begin
  //
  dsFornecedores.DataSet.Edit;
  //
  If (dsFornecedores.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsFornecedores.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsFornecedores.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsFornecedores.DataSet.Post;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBEidFornecedoresPropertiesPopup(Sender: TObject);
begin
  inherited;
  //
  If (cbCodigo.Checked) Then
     cxGridDBCODIGO.Focused := True;
  //
  If (cbNome.Checked) Then
     cxGridDBNOME.Focused := True;
  //
  If (cbFantasia.Checked) Then
     cxGridDBNOME_FANTASIA.Focused := True;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBTableViewFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewFornecedor.OnDblClick(DBTableViewFornecedor);
  //
end;
//*****************************************************************************//
        //*********   GRUPOS EMPRESARIAIS   ************//
procedure TFrmRelFluxoCaixa.Montar_Selecao_GrupoCad;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsGrupoCad do
  begin
    sCodigos := TStringList.Create();
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idGrupoCad').Text);
          //
          DataSet.Next;
          //
        End;
    //
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    //
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);
    //
    funcao.ASort(iCodigos);
    //
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    //
    DBEidGrupo.Text := funcao.SepararValores(aCodigos, ', ');
    //
    sCodigos.Free;
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; // fim do withend;
end;
procedure TFrmRelFluxoCaixa.Limpar_Selecao_GrupoCad;
Var bReg: Pointer;
begin
  with dsGrupoCad do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidGrupo.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelFluxoCaixa.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupoCad.DataSet.Active) Then
     dsGrupoCad.DataSet.Open;
  //
end;
procedure TFrmRelFluxoCaixa.AplicarGrupoClick(Sender: TObject);
begin
  //
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelFluxoCaixa.CancelarGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelFluxoCaixa.LimparGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBTableViewGrupoDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsGrupoCad.DataSet.Edit;
  //
  If (dsGrupoCad.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsGrupoCad.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsGrupoCad.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsGrupoCad.DataSet.Post;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBEidGruposPropertiesPopup(Sender: TObject);
begin
  inherited;
  //
  If (cbCodGrupo.Checked) Then
     cxGridDBCodGrupo.Focused := True;
  //
  If (cbDescGrupo.Checked) Then
     cxGridDBNomeGrupo.Focused := True;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBTableViewGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewGrupo.OnDblClick(DBTableViewGrupo);
  //
end;
//******************************************************************************
        //*********   SEGMENTOS  ************//
procedure TFrmRelFluxoCaixa.Montar_Selecao_Segmento;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsSegmento do
  begin
    sCodigos := TStringList.Create();
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idSegmento').Text);
          //
          DataSet.Next;
          //
        End;
    //
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    //
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);
    //
    funcao.ASort(iCodigos);
    //
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    //
    DBEidSegmento.Text := funcao.SepararValores(aCodigos, ', ');
    //
    sCodigos.Free;
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; // fim do withend;
end;
procedure TFrmRelFluxoCaixa.Limpar_Selecao_Segmento;
Var bReg: Pointer;
begin
  with dsSegmento do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidSegmento.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelFluxoCaixa.SegmentoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsSegmento.DataSet.Active) Then
     dsSegmento.DataSet.Open;
  //
end;
procedure TFrmRelFluxoCaixa.AplicarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Montar_Selecao_Segmento;
  //
end;
procedure TFrmRelFluxoCaixa.CancelarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  //
end;
procedure TFrmRelFluxoCaixa.LimparSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Limpar_Selecao_Segmento;
  //
end;

procedure TFrmRelFluxoCaixa.OnDBTableViewSegmentoDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsSegmento.DataSet.Edit;
  //
  If (dsSegmento.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsSegmento.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsSegmento.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsSegmento.DataSet.Post;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBEidSegmentosPropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //
  If (cbCodSegmento.Checked) Then
     cxGridDBCodSegmento.Focused := True;
  //
  If (cbNome.Checked) Then
     cxGridDBDescSegmento.Focused := True;
  //
end;

procedure TFrmRelFluxoCaixa.OnDBTableViewSegmentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewSegmento.OnDblClick(DBTableViewSegmento);
  //
end;
//******************************************************************************

//******************************************************************************
        //*********   EMPRESAS  ************//
procedure TFrmRelFluxoCaixa.Montar_Selecao_Empresas;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsEmpresas do
  begin
    sCodigos := TStringList.Create();
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idEmpresa').Text);
          //
          DataSet.Next;
          //
        End;
    //
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    //
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);
    //
    funcao.ASort(iCodigos);
    //
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    //
    DBEidEmpresas.Text := funcao.SepararValores(aCodigos, ', ');
    //
    sCodigos.Free;
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; // fim do withend;
end;
procedure TFrmRelFluxoCaixa.Limpar_Selecao_Empresas;
Var bReg: Pointer;
begin
  with dsEmpresas do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidEmpresas.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelFluxoCaixa.EmpresasEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsEmpresas.DataSet.Active) Then
     dsEmpresas.DataSet.Open;
  //
end;
procedure TFrmRelFluxoCaixa.AplicarEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  Montar_Selecao_Empresas;
  //
end;
procedure TFrmRelFluxoCaixa.CancelarEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  //
end;
procedure TFrmRelFluxoCaixa.LimparEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  Limpar_Selecao_Empresas;
  //
end;

procedure TFrmRelFluxoCaixa.OnDBTableViewEmpresasDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsEmpresas.DataSet.Edit;
  //
  If (dsEmpresas.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsEmpresas.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsEmpresas.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsEmpresas.DataSet.Post;
  //
end;
procedure TFrmRelFluxoCaixa.OnDBEidEmpresasPropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //
  If (cbCodEmpresa.Checked) Then
     GridEmpresaidEmpresa.Focused := True;
  //
  If (cbNome.Checked) Then
     GridEmpresadescCadEmpresa.Focused := True;
  //
end;

procedure TFrmRelFluxoCaixa.OnDBTableViewEmpresasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewEmpresas.OnDblClick(DBTableViewEmpresas);
  //
end;
//******************************************************************************

        //*********   COMUM A TODOS  ************//

procedure TFrmRelFluxoCaixa.OnDBTableViewGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  //
  If (ARecord.Values[0] = 'S') Then
     AStyle := stDestaque;
  //
end;
//*********************************************************************************
// FIM DAS ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - COPIAR ATÉ AQUI
//*********************************************************************************

procedure TFrmRelFluxoCaixa.actGerarExecute(Sender: TObject);
var
  arqRel : string;
begin
  inherited;
  if (trim(DBEdtInicial.Text) = '') or (trim(DBEdtFinal.Text) = '') then
  begin
    messagedlg('O Periodo deve ser informado!', mtwarning, [mbok], 0);
    exit;
  end;
  Screen.Cursor := crSQLWait;

  //Ajusta os campos para os parâmetros
  case DBRGtpFluxo.ItemIndex of
    0 : EDtpFluxo.Text := 'CRÉDITOS';
    1 : EDtpFluxo.Text := 'DÉBITOS';
    2 : EDtpFluxo.Text := 'AMBOS';
  end;

  case DBRGagrupar.ItemIndex of
    0 : EDtpAgrupamento.Text := 'FORNECEDOR';
    1 : EDtpAgrupamento.Text := 'GERENCIAL';
    2 : EDtpAgrupamento.Text := 'GRUPO EMPRESARIAL';
  end;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelFluxoProduto ' + DBEidEmpresa.Text + ', ' +
                                                          DBEidCadEmpresa.Text + ',' +
                                                          QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                          QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                          QuotedStr(DBEidEmpresas.Text);
  cdsRelatorio.Active := true;

  cdsRelConta.Active := false;
  cdsRelConta.CommandText := 'EXEC spRelFluxoBanco ' + DBEidEmpresa.Text + ', ' +
                                                       DBEidCadEmpresa.Text +', ' +
                                                       funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                                       funcao.RetornaValorEField(DBCKintegraSaldo, 3) + ', ' +
                                                       funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                                       funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', ' +
                                                       QuotedStr(DBEidEmpresas.Text);
  cdsRelConta.Active := true;

  //Inicia o valor acumulado que irá tratar dos saldos anteriores nos relatórios
  cdsPadraovlAcumulado.AsCurrency := 0;

  if cdsRelConta.RecordCount > 0 then
    cdsPadraovlAcumulado.AsCurrency := cdsRelContavlSaldoBanco.AsCurrency;


  cdsRelAdiantamento.Active := false;
  cdsRelAdiantamento.CommandText := 'EXEC spRelFluxoAdiantamento ' + DBEidEmpresa.Text + ', ' +
                                                                     DBEidCadEmpresa.Text + ', ' +
                                                                     funcao.RetornaValorEField(DBEvlAcumulado, 3) + ', ' +
                                                                     funcao.RetornaValorEField(DBCKintegraSaldo, 3) + ', ' +
                                                                     funcao.RetornaValorEField(DBRGtpFluxo, 3) + ',' +
                                                                     QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                                     QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                                     QuotedStr(DBEidFornecedores.Text) + ', ' +
                                                                     QuotedStr(DBEidGrupo.Text) + ', ' +
                                                                     QuotedStr(DBEidSegmento.Text) + ', ' +
                                                                     QuotedStr(DBEidEmpresas.Text);
  if DBCKmostraAdiantamento.Checked then
  begin
  cdsRelAdiantamento.Active := true;

  if cdsRelAdiantamento.RecordCount > 0 then
    cdsPadraovlAcumulado.AsCurrency := cdsRelAdiantamentovlSaldoAdiantamento.AsCurrency;
  end;

  cdsRelVencido.Active := false;
  cdsRelVencido.CommandText := 'EXEC spRelFluxoVencido ' + DBEidEmpresa.Text + ', ' +
                                                           DBEidCadEmpresa.Text +', ' +
                                                           funcao.RetornaValorEField(DBEidIndice, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                                                           QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                           QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                           funcao.RetornaValorEField(DBEvlAcumulado, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBCKintegraSaldo, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBRGtpFluxo, 3) + ', ' +
                                                           QuotedStr(DBEidFornecedores.Text) + ', ' +
                                                           QuotedStr(DBEidGrupo.Text) + ', ' +
                                                           QuotedStr(DBEidSegmento.Text) + ', ' +
                                                           QuotedStr(DBEidEmpresas.Text) + ', ' +
                                                           QuotedStr(cdsPadraotpPrevisao.AsString);
  cdsRelVencido.Active := true;

  if cdsRelVencido.RecordCount > 0 then
    cdsPadraovlAcumulado.AsCurrency := cdsRelVencidovlSaldoVencido.AsCurrency;

  cdsRelVencer.Active := false;
  cdsRelVencer.CommandText := 'EXEC spRelFluxoAVencer ' + DBEidEmpresa.Text + ', ' +
                                                          DBEidCadEmpresa.Text +', ' +
                                                          funcao.RetornaValorEField(DBEidIndice, 3) + ', ' +
                                                          funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                                          funcao.RetornaValorEField(DBEdtFinal, 3) + ',' +
                                                          QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                          QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                          QuotedStr(cdsPadraoagrupar.AsString) + ', ' +
                                                          QuotedStr(DBEidFornecedores.Text) + ', ' +
                                                          QuotedStr(DBEidGrupo.Text) + ', ' +
                                                          QuotedStr(DBEidSegmento.Text) + ', ' +
                                                          funcao.RetornaValorEField(DBEvlAcumulado, 3) + ', ' +
                                                          funcao.RetornaValorEField(DBRGtpFluxo, 3) + ', ' +
                                                          QuotedStr(DBEidEmpresas.Text) + ', ' +
                                                           QuotedStr(cdsPadraotpPrevisao.AsString);
  cdsRelVencer.Active := true;

  cdsRelRodape.Active := false;
  cdsRelRodape.CommandText := 'EXEC spRelFluxoRodape ' + DBEidEmpresa.Text + ', ' +
                                                         DBEidCadEmpresa.Text +', ' +
                                                         funcao.RetornaValorEField(DBEidIndice, 3) + ', ' +
                                                         funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                                         funcao.RetornaValorEField(DBEdtFinal, 3) + ',' +
                                                         QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                         QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                         QuotedStr(DBEidFornecedores.Text) + ', ' +
                                                         QuotedStr(DBEidGrupo.Text) + ', ' +
                                                         QuotedStr(DBEidSegmento.Text) + ', ' +
                                                         QuotedStr(DBEidEmpresas.Text);
  cdsRelRodape.Active := true;

//  CalcSaldos;

  arqRel := dmPadrao.RetornaConfig('caminho_rel') + 'RelFluxoCaixa.fr3';
  if funcao.VerExistFile(arqRel) then
    frxRel.LoadFromFile(arqRel)
  else
    exit;

//  (frxRel.FindComponent('MemEmpresa') as TFrxMemoView).Memo.Clear;
//  (frxRel.FindComponent('MemEmpresa') as TFrxMemoView).Memo.Add(DBEidEmpresa.Text + '.' +  DBEidCadEmpresa.Text + ' - ' + LookdescCadEmpresa.Caption);
//  (frxRel.FindComponent('MemVencidos') as TFrxMemoView).Memo.Clear;
//  (frxRel.FindComponent('MemVencidos') as TFrxMemoView).Memo.Add('Vencimentos Anteriores a ' + DBEdtInicial.Text);

  //Verifica as opções de impressão
  (frxRel.FindComponent('Header1') as TfrxHeader).Visible := cdsPadraoimpCabecalho.AsString = 'S';
  (frxRel.FindComponent('HeaderIndice') as TfrxHeader).Visible := cdsPadraomostraIndice.AsString = 'S';
  (frxRel.FindComponent('DetailDataIndice') as TfrxDetailData).Visible := cdsPadraomostraIndice.AsString = 'S';

  (frxRel.FindComponent('HeaderDataConta') as TfrxHeader).Visible := cdsPadraomostraContas.AsString = 'S';
  (frxRel.FindComponent('DetailDataConta') as TfrxDetailData).Visible := cdsPadraomostraContas.AsString = 'S';
  (frxRel.FindComponent('FooterConta') as TfrxFooter).Visible := cdsPadraomostraContas.AsString = 'S';

  (frxRel.FindComponent('HeaderVencidos') as TfrxHeader).Visible := cdsPadraomostraVencidos.AsString = 'S';
  (frxRel.FindComponent('DetailDataVencidos') as TfrxDetailData).Visible := cdsPadraomostraVencidos.AsString = 'S';
  (frxRel.FindComponent('FooterVencidos') as TfrxFooter).Visible := cdsPadraomostraVencidos.AsString = 'S';

  (frxRel.FindComponent('HeaderAdiantamento') as TfrxHeader).Visible := cdsPadraomostraAdiantamento.AsString = 'S';
  (frxRel.FindComponent('DetailAdiantamento') as TfrxDetailData).Visible := cdsPadraomostraAdiantamento.AsString = 'S';
  (frxRel.FindComponent('FooterAdiantamento') as TfrxFooter).Visible := cdsPadraomostraAdiantamento.AsString = 'S';

  Screen.Cursor := crDefault;
  parametrorel;
  frxRel.ShowReport;

  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelFluxoCaixa.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  cdsPadraoagrupar.AsString := 'F';
  cdsPadraomostraIndice.AsString := 'N';
  cdsPadraomostraContas.AsString := 'N';
  cdsPadraomostraVencidos.AsString := 'N';
  cdsPadraomostraAdiantamento.AsString := 'N';
  cdsPadraointegraSaldo.AsString := 'S';
  cdsPadraotpFluxo.AsString := 'A';
  cdsPadraoimpCabecalho.AsString := 'S';
  cdsPadraotpPrevisao.AsString := 'S';

  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmRelFluxoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelFluxoCaixa := nil;
end;

procedure TFrmRelFluxoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  //relatorio := 'RelFluxoBanco.fr3';
  Width := 492;
  Height := 505;
  fiscal := true;

  //***** ASSOCIAÇÃO DE ROTINAS DOS GRUPOS  **** //
     //******  FORNECEDORES ******//
  panPopupFornecedores.OnEnter := PopupFornecedoresEnter;
  BtnAplicarFor.OnClick := AplicarForClick;
  BtnCancelarFor.OnClick := CancelarForClick;
  BtnLimparFor.OnClick := LimparForClick;
  DBTableViewFornecedor.OnDblClick := OnDBTableViewFornecedorDblClick;
  DBEidFornecedores.Properties.OnPopup := OnDBEidFornecedoresPropertiesPopup;
  DBTableViewFornecedor.OnKeyDown := OnDBTableViewFornecedorKeyDown;
  DBTableViewFornecedor.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidFornecedores.Properties.PopupControl := panPopupFornecedores;
  

       //******  GRUPOS EMPRESARIAIS ******//
  panGrupos.OnEnter := GruposEnter;
  BtnAplicarGrupo.OnClick := AplicarGrupoClick;
  BtnCancelarGrupo.OnClick := CancelarGrupoClick;
  BtnLimparGrupo.OnClick := LimparGrupoClick;
  DBTableViewGrupo.OnDblClick := OnDBTableViewGrupoDblClick;
  DBEidGrupo.Properties.OnPopup := OnDBEidGruposPropertiesPopup;
  DBTableViewGrupo.OnKeyDown := OnDBTableViewGrupoKeyDown;
  DBTableViewGrupo.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidGrupo.Properties.PopupControl := panGrupos;

       //******  SEGMENTOS ******//
  panSegmento.OnEnter := SegmentoEnter;
  BtnAplicarSegmento.OnClick := AplicarSegmentoClick;
  BtnCancelarSegmento.OnClick := CancelarSegmentoClick;
  BtnLimparSegmento.OnClick := LimparSegmentoClick;
  DBTableViewSegmento.OnDblClick := OnDBTableViewSegmentoDblClick;
  DBEidSegmento.Properties.OnPopup := OnDBEidSegmentosPropertiesPopup;
  DBTableViewSegmento.OnKeyDown := OnDBTableViewSegmentoKeyDown;
  DBTableViewSegmento.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidSegmento.Properties.PopupControl := panSegmento;

       //******  EMPRESAS ******//
  panEmpresas.OnEnter := EmpresasEnter;
  BtnAplicarEmpresas.OnClick := AplicarEmpresasClick;
  BtnCancelarEmpresas.OnClick := CancelarEmpresasClick;
  BtnLimparEmpresas.OnClick := LimparEmpresasClick;
  DBTableViewEmpresas.OnDblClick := OnDBTableViewEmpresasDblClick;
  DBEidEmpresas.Properties.OnPopup := OnDBEidEmpresasPropertiesPopup;
  DBTableViewEmpresas.OnKeyDown := OnDBTableViewEmpresasKeyDown;
  DBTableViewEmpresas.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidEmpresas.Properties.PopupControl := panEmpresas;

   //configuração dos parâmetros
  SetLength(parametro, 15);
  parametro[0] := DBEidFornecedores;
  parametro[1] := DBEidGrupo;
  parametro[2] := DBEidSegmento;
  parametro[3] := DBEdtInicial;
  parametro[4] := DBEdtFinal;
  parametro[5] := LookIndice;
  parametro[6] := EDtpFluxo;
  parametro[7] := EDtpAgrupamento;
  parametro[8] := DBCKmostraIndice;
  parametro[9] := DBCKmostraContas;
  parametro[10] := DBCKmostraVencidos;
  parametro[11] := DBCKmostraAdiantamento;
  parametro[12] := DBCKintegraSaldo;
  parametro[13] := DBCKconsolidaemp;
  parametro[14] := DBCKconsolidafilial;
end;

procedure TFrmRelFluxoCaixa.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtInicial.SetFocus;
  DBCKconsolidafilial.Visible := filial;  
end;

procedure TFrmRelFluxoCaixa.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
