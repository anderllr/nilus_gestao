unit uFrmRelContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CDBRadioGroup, CDBCheckBox, EditAlign, CEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, ClipBrd, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelContasPagar = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtEmissaoFim: TCDBEdit;
    DBRGstTitulo: TCDBRadioGroup;
    DBRGOrdem: TCDBRadioGroup;
    Label4: TLabel;
    frxReport1: TfrxReport;
    cdsPadraostTituloPag: TStringField;
    cdsPadraoordem: TStringField;
    FindFornecedor: TCFind;
    cdsPadraoPrevisoes: TStringField;
    cdsPadraoidResultado: TIntegerField;
    FindResultado: TCFind;
    cdsPadraoidFornecedor: TIntegerField;
    DBEclassificacaoFim: TCDBEdit;
    CLabel5: TCLabel;
    DBEclassificacaoIni: TCDBEdit;
    Label2: TLabel;
    DBEnrTituloIni: TCDBEdit;
    Label3: TLabel;
    DBEnrTituloFim: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtVencimentoFim: TCDBEdit;
    cdsPadraonrTituloPagIni: TStringField;
    cdsPadraonrTituloPagFim: TStringField;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    cdsPadraoclassificacaoIni: TStringField;
    cdsPadraoclassificacaoFim: TStringField;
    cdsPadraodtEmissaoIni: TDateTimeField;
    cdsPadraodtEmissaoFim: TDateTimeField;
    CEdit1: TCEdit;
    CLabel7: TCLabel;
    DBEJuros: TCDBEdit;
    CLabel8: TCLabel;
    DBEDesconto: TCDBEdit;
    cdsPadraodesconto: TFloatField;
    cdsPadraojuros: TFloatField;
    FindGerencial: TCFind;
    CLabel11: TCLabel;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    Styles: TcxStyleRepository;
    cdsPadraoidIndice: TIntegerField;
    FindIndice: TCFind;
    LookLancamento: TCLookUp;
    CLabel22: TCLabel;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLabel21: TCLabel;
    CGroupBox2: TCGroupBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKmostraobs: TCDBCheckBox;
    cdsPadraomostraobs: TStringField;
    dsFornecedores: TDataSource;
    cdsFornecedores: TClientDataSet;
    cdsFornecedoresSELECIONADO: TStringField;
    cdsFornecedoresidFornecedor: TIntegerField;
    cdsFornecedoresdescCadFornecedor: TStringField;
    cdsFornecedoresdescAbreviada: TStringField;
    dspFornecedores: TDataSetProvider;
    qryFornecedores: TSQLQuery;
    sdsGrupoCad: TSQLQuery;
    dspGrupoCad: TDataSetProvider;
    cdsGrupoCad: TClientDataSet;
    cdsGrupoCadSELECIONADO: TStringField;
    cdsGrupoCadidGrupoCad: TSmallintField;
    cdsGrupoCaddescGrupoCad: TStringField;
    cdsGrupoCadstGrupoCad: TStringField;
    dsGrupoCad: TDataSource;
    dsSegmento: TDataSource;
    cdsSegmento: TClientDataSet;
    cdsSegmentoSELECIONADO: TStringField;
    cdsSegmentoidSegmento: TSmallintField;
    cdsSegmentodescSegmento: TStringField;
    cdsSegmentostSegmento: TStringField;
    dspSegmento: TDataSetProvider;
    sdsSegmento: TSQLQuery;
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
    DBEidSegmento: TcxPopupEdit;
    CLabel12: TCLabel;
    DBEidGrupo: TcxPopupEdit;
    CLabel10: TCLabel;
    DBEidFornecedores: TcxPopupEdit;
    LblCad: TCLabel;
    cdsPadraoincluiMov: TStringField;
    DBCKincluiMov: TCDBCheckBox;
    DBCBPrevisoes: TCDBCheckBox;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    CLabel72: TCLabel;
    cdsPadraoidSafra: TIntegerField;
    DBCKmostraRazao: TCDBCheckBox;
    cdsPadraomostraRazao: TStringField;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    CLabel9: TCLabel;
    cdsPadraoidRateio: TIntegerField;
    cdsPadraoidContratoCompra: TStringField;
    DBEidContratoCompra: TCDBEdit;
    Label8: TLabel;
    procedure frxReport1AfterPrint(Sender: TfrxReportComponent);
    procedure DBEDescontoExit(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEclassificacaoFimExit(Sender: TObject);
    procedure DBEclassificacaoFimEnter(Sender: TObject);
    procedure DBEclassificacaoIniExit(Sender: TObject);
    procedure DBEclassificacaoIniEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    stDestaque: TcxStyle;
    mascara : String;
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
        //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  public
    { Public declarations }
  end;

var
  FrmRelContasPagar: TFrmRelContasPagar;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoRel, uDmFind;

{$R *.dfm}



//*********************************************************************************
// ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
//*********************************************************************************
   //*********   FORNECEDORES   ************//
procedure TFrmRelContasPagar.Montar_Selecao_Fornecedores;
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

procedure TFrmRelContasPagar.Limpar_Selecao_Fornecedores;
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
procedure TFrmRelContasPagar.PopupFornecedoresEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsFornecedores.DataSet.Active) Then
     dsFornecedores.DataSet.Open;
  //
end;

procedure TFrmRelContasPagar.AplicarForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  Montar_Selecao_Fornecedores;
  //
end;


procedure TFrmRelContasPagar.CancelarForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  //
end;
procedure TFrmRelContasPagar.LimparForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  Limpar_Selecao_Fornecedores;
  //
end;
procedure TFrmRelContasPagar.OnDBTableViewFornecedorDblClick(Sender: TObject);
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
procedure TFrmRelContasPagar.OnDBEidFornecedoresPropertiesPopup(Sender: TObject);
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
procedure TFrmRelContasPagar.OnDBTableViewFornecedorKeyDown(Sender: TObject;
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
procedure TFrmRelContasPagar.Montar_Selecao_GrupoCad;
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
procedure TFrmRelContasPagar.Limpar_Selecao_GrupoCad;
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
procedure TFrmRelContasPagar.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupoCad.DataSet.Active) Then
     dsGrupoCad.DataSet.Open;
  //
end;
procedure TFrmRelContasPagar.AplicarGrupoClick(Sender: TObject);
begin
  //
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelContasPagar.CancelarGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelContasPagar.LimparGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelContasPagar.OnDBTableViewGrupoDblClick(
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
procedure TFrmRelContasPagar.OnDBEidGruposPropertiesPopup(Sender: TObject);
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
procedure TFrmRelContasPagar.OnDBTableViewGrupoKeyDown(Sender: TObject;
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
procedure TFrmRelContasPagar.Montar_Selecao_Segmento;
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
procedure TFrmRelContasPagar.Limpar_Selecao_Segmento;
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
procedure TFrmRelContasPagar.SegmentoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsSegmento.DataSet.Active) Then
     dsSegmento.DataSet.Open;
  //
end;
procedure TFrmRelContasPagar.AplicarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Montar_Selecao_Segmento;
  //
end;
procedure TFrmRelContasPagar.CancelarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  //
end;
procedure TFrmRelContasPagar.LimparSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Limpar_Selecao_Segmento;
  //
end;

procedure TFrmRelContasPagar.OnDBTableViewSegmentoDblClick(
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
procedure TFrmRelContasPagar.OnDBEidSegmentosPropertiesPopup(
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

procedure TFrmRelContasPagar.OnDBTableViewSegmentoKeyDown(Sender: TObject;
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
        //*********   COMUM A TODOS  ************//

procedure TFrmRelContasPagar.OnDBTableViewGetContentStyle(
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

procedure TFrmRelContasPagar.actGerarExecute(Sender: TObject);
var
  arqRel : string;
begin
//  inherited;
  // Execução da Procedure
    //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelContasPagar '+ DBEidEmpresa.Text + ',' + DBEidCadEmpresa.Text + ',' +
                               QuotedStr(DBEidFornecedores.Text) +  ',' +
                               QuotedStr(DBEidGrupo.Text) +  ',' +
                               QuotedStr(DBEidSegmento.Text) +  ',' +
                               funcao.RetornaValorEField(DBEdtVencimentoIni, 3) + ',' +
                               funcao.RetornaValorEField(DBEdtVencimentoFim, 3) + ',' +
                               funcao.RetornaValorEField(DBEdtEmissaoIni, 3) + ',' +
                               funcao.RetornaValorEField(DBEdtEmissaoFim, 3) + ',' +
                               funcao.RetornaValorEField(DBRGOrdem,3) + ',' +
                               funcao.RetornaValorEField(DBRGstTitulo,3) + ',' +
                               funcao.RetornaValorEField(DBEnrTituloIni,3) + ',' +
                               funcao.RetornaValorEField(DBEnrTituloFim,3) + ',' +
                               funcao.RetornaValorEField(DBEclassificacaoIni,3) + ',' +
                               funcao.RetornaValorEField(DBEclassificacaoFim,3) + ',' +
                               funcao.RetornaValorEField(DBEidResultado,3) + ',' +
                               funcao.RetornaValorEField(DBEidIndice,3) + ',' +
                               funcao.RetornaValorEField(DBCBPrevisoes,3) +
                               ',' + QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                               QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                               QuotedStr(cdsPadraoincluiMov.AsString) + ', ' +
                               funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidRateio, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidContratoCompra, 3);
//  ClipBoard.AsText := cdsRelatorio.CommandText;
//  CEdit1.Text := cdsRelatorio.CommandText; exit;
  if cdsPadraoincluiMov.AsString = 'S' then
    arqRel := dmPadrao.RetornaConfig('caminho_rel') + 'RelContasPagarMov.fr3'
  else
    arqRel := dmPadrao.RetornaConfig('caminho_rel') + 'RelContasPagar.fr3';
//  frxReport1.LoadFromFile('C:\Nilus\Relatorios\RelContasPagar.fr3');

  //verifica o relatório
  if FileExists(arqRel) then
    frxReport1.LoadFromFile(arqrel)
  else
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;

  if DBCKmostraRazao.Checked then
  begin
    (frxReport1.FindComponent('MDESC_FORNECEDOR') as TfrxMemoview).Memo.Clear;
    (frxReport1.FindComponent('MDESC_FORNECEDOR')as TfrxMemoview).Memo.Add('[frxDataset."descCadFornecedor"]');
  end
  else
  begin
    (frxReport1.FindComponent('MDESC_FORNECEDOR') as TfrxMemoview).Memo.Clear;
    (frxReport1.FindComponent('MDESC_FORNECEDOR')as TfrxMemoview).Memo.Add('[frxDataset."descAbreviada"]');
  end;

  //Parametros para ajuste do relatório
  if trim(DBRGOrdem.Value) = 'D' then
  begin
    (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).Condition := 'DayOf(<frxDataset."dtVencimento">)';
    (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).OutlineText := 'frxDataset."dtEmissao"';
    (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Clear;
    (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Vencimento no Dia - [(DayOf(<frxDataset."dtVencimento">))]');
    (frxReport1.FindComponent('MdtEmissao') as TfrxMemoview).Memo.Clear;
    (frxReport1.FindComponent('MdtEmissao') as TfrxMemoview).Memo.Add('Vencimento');
    (frxReport1.FindComponent('DBMdtEmissao') as TfrxMemoview).Memo.Clear;
    (frxReport1.FindComponent('DBMdtEmissao')as TfrxMemoview).Memo.Add('[frxDataset."dtVencimento"]');
  end
  else
    if trim(DBRGOrdem.Value)= 'E' then
    begin
      (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).Condition := '<frxDataset."dtEmissao">';
      (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).OutlineText := '<frxDataset."dtEmissao">';
      (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Clear;
      (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Data de Emissão - [frxDataset."dtEmissao"]');
      (frxReport1.FindComponent('MdtEmissao') as TfrxMemoview).Memo.Clear;
      (frxReport1.FindComponent('MdtEmissao') as TfrxMemoview).Memo.Add('Vencimento');
      (frxReport1.FindComponent('DBMdtEmissao') as TfrxMemoview).Memo.Clear;
      (frxReport1.FindComponent('DBMdtEmissao')as TfrxMemoview).Memo.Add('[frxDataset."dtVencimento"]');
    end
    else
      if trim(DBRGOrdem.Value) = 'T' then
      begin
        (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).Condition := 'frxDataset."nrTitulo"';
        (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).OutlineText := 'frxDataset."dtEmissao"';
        (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Clear;
        (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Titulo - [frxDataset."nrTitulo"]');
        (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Clear;
        (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Add('Vencimento');
        (frxReport1.FindComponent('DBMnrTitulo') as TfrxMemoview).Memo.Clear;
        (frxReport1.FindComponent('DBMnrTitulo')as TfrxMemoview).Memo.Add('[frxDataset."dtVencimento"]');
      end
      Else
        If (Trim(DBRGOrdem.Value) = 'F') Then
         Begin
          (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('Memo29') as TfrxMemoview).Memo.Clear;
           if cdsPadraomostraRazao.AsString = 'N' then
           begin
            (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).Condition := 'frxDataset."descAbreviada"';
            (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).OutlineText := 'frxDataset."descAbreviada"';
            (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Fornecedor - [frxDataset."descAbreviada"]');
            (frxReport1.FindComponent('Memo29') as TfrxMemoview).Memo.Add('Valor Total à ser Pago a [frxDataset."descAbreviada"]:');
           end
           else
           begin
            (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).Condition := 'frxDataset."descCadFornecedor"';
            (frxReport1.FindComponent('GroupHeaderContaPag') as TfrxGroupHeader).OutlineText := 'frxDataset."descCadFornecedor"';
            (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Fornecedor - [frxDataset."descCadFornecedor"]');
            (frxReport1.FindComponent('Memo29') as TfrxMemoview).Memo.Add('Valor Total à ser Pago a [frxDataset."descCadFornecedor"]:');
           end;

          (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Add('Titulo');
          (frxReport1.FindComponent('DBMnrTitulo') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('DBMnrTitulo')as TfrxMemoview).Memo.Add('[frxDataset."nrTitulo"]');
          (frxReport1.FindComponent('Memo23') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('Memo23') as TfrxMemoview).Memo.Add('Vencimento');
          (frxReport1.FindComponent('MDESC_FORNECEDOR') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('MDESC_FORNECEDOR')as TfrxMemoview).Memo.Add('[frxDataset."dtVencimento"]');

         End;
  //
  (frxReport1.FindComponent('MdtEmissaoIni') as TfrxMemoView).Memo.Add(DBEdtEmissaoIni.Text);
  (frxReport1.FindComponent('MdtEmissaoFim') as TfrxMemoView).Memo.Add(DBEdtEmissaoFim.Text);
  (frxReport1.FindComponent('MdtVencimentoIni') as TfrxMemoView).Memo.Add(DBEdtVencimentoIni.Text);
  (frxReport1.FindComponent('MdtVencimentoFim') as TfrxMemoView).Memo.Add(DBEdtVencimentoFim.Text);
  (frxReport1.FindComponent('MnrTituloIni') as TfrxMemoView).Memo.Add(DBEnrTituloIni.Text);
  (frxReport1.FindComponent('MnrTituloFim') as TfrxMemoView).Memo.Add(DBEnrTituloFim.Text);
  (frxReport1.FindComponent('MclassificacaoIni') as TfrxMemoView).Memo.Add(DBEclassificacaoIni.Text);
  (frxReport1.FindComponent('MclassificacaoFim') as TfrxMemoView).Memo.Add(DBEclassificacaoFim.Text);
  (frxReport1.FindComponent('MstTitulo') as TfrxMemoView).Memo.Add(cdsPadraostTituloPag.Value);
  (frxReport1.FindComponent('MPrevisoes') as TfrxMemoView).Memo.Add(cdsPadraoordem.Value);
  (frxReport1.FindComponent('MJuros') as TfrxMemoView).Memo.Add(DBEJuros.Text);
  (frxReport1.FindComponent('MDesconto') as TfrxMemoView).Memo.Add(DBEDesconto.Text);

  //Se tiver rateio
  (frxReport1.FindComponent('MRateio') as TfrxMemoView).Memo.Clear;
  (frxReport1.FindComponent('MRateio') as TfrxMemoView).Memo.Add(DBEidRateio.Text + '-' + trim(LookRateio.Caption));

  (frxReport1.FindComponent('MCONTRATO') as TfrxMemoview).Clear;
  (frxReport1.FindComponent('MCONTRATO') as TfrxMemoview).Text := DBEidContratoCompra.Text;

  (frxReport1.FindComponent('lblObsTitulo') as TfrxMemoView).Visible := true;
  //Configuração se mostra ou não a observação do título
  if cdsPadraomostraobs.Value = 'S' then
  begin
    (frxReport1.FindComponent('lblObsTitulo') as TfrxMemoView).Visible := true;
    (frxReport1.FindComponent('MemObsTitulo') as TfrxMemoView).Visible := true;
    if cdsPadraoincluiMov.AsString <> 'S' then
      (frxReport1.FindComponent('MasterDataContaMov') as TfrxMasterData).Height := 0.82;
  end
  else
  begin
    (frxReport1.FindComponent('lblObsTitulo') as TfrxMemoView).Visible := false;
    (frxReport1.FindComponent('MemObsTitulo') as TfrxMemoView).Visible := false;
    (frxReport1.FindComponent('lblObsTitulo') as TfrxMemoView).Top := 0;
    (frxReport1.FindComponent('MemObsTitulo') as TfrxMemoView).Top := 0;
    if cdsPadraoincluiMov.AsString <> 'S' then
      (frxReport1.FindComponent('MasterDataContaMov') as TfrxMasterData).Height := 0.42;
  end;
  frxReport1.ShowReport;
end;

procedure TFrmRelContasPagar.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('stTituloPag').AsString := 'ATIVO';
  DataSet.FieldByName('ordem').AsString := 'V';
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
  DataSet.FieldByName('mostraobs').AsString := 'S';
  cdsPadraoincluiMov.AsString := 'N';
  cdsPadraoPrevisoes.AsString := 'N';
  cdsPadraomostraRazao.AsString := 'N';
end;

procedure TFrmRelContasPagar.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
end;

procedure TFrmRelContasPagar.DBEclassificacaoFimEnter(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoFim').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoFim').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoFim').AsString);
    cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
end;

procedure TFrmRelContasPagar.DBEclassificacaoFimExit(Sender: TObject);
begin
  inherited;
 { if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('classificacaoFim').AsString := funcao.Mascara(cdsPadrao.FieldByName('classificacaoFim').AsString, 99, mascara );}

end;

procedure TFrmRelContasPagar.DBEclassificacaoIniEnter(Sender: TObject);
begin
  inherited;
  cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoIni').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoIni').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoIni').AsString);
end;

procedure TFrmRelContasPagar.DBEclassificacaoIniExit(Sender: TObject);
begin
  inherited;
{  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('classificacaoIni').AsString := funcao.Mascara(cdsPadrao.FieldByName('classificacaoIni').AsString, 99, mascara );}

end;

procedure TFrmRelContasPagar.DBEDescontoExit(Sender: TObject);
begin
  inherited;
{  cdsRecalculodtAtual.Value := cdsPadraodtAtual.Value;
  cdsRecalculodesconto.Value := cdsPadraodesconto.Value;
  cdsRecalculojuro.Value := cdsPadraojuros.Value;}
end;

procedure TFrmRelContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContasPagar := nil;
end;

procedure TFrmRelContasPagar.FormCreate(Sender: TObject);
begin
  inherited;
//  proc := 'spRelContasPagar';
  relatorio := 'RelContasPagar.fr3';
{  SetLength(parametro, 12);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidFornecedor;
  parametro[2] := DBEdtInicial;
  parametro[3] := DBEdtFinal;
  parametro[4] := DBRGOrdem;
  parametro[5] := DBRGstTitulo;
  parametro[6] := DBEidTituloIni;
  parametro[7] := DBEidTituloFim;
  parametro[8] := DBEidGerencialIni;
  parametro[9] := DBEidGerencialFim;
  parametro[10] := DBEidResultado;
  parametro[11] := DBCBPrevisoes;}
  height := 590;
  width := 499;
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
end;

procedure TFrmRelContasPagar.FormShow(Sender: TObject);
begin
  //
  Inherited;
  //
  DBEidFornecedores.SetFocus;
  DBCKconsolidafilial.Visible := filial;
  //
end;

procedure TFrmRelContasPagar.frxReport1AfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
