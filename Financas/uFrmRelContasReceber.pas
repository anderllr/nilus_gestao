unit uFrmRelContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, frxClass, ExtCtrls, DBCtrls,
  CDBRadioGroup, StdCtrls, CDBCheckBox, CGroupBox, SqlExpr, CFind, DB, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, Mask,
  CDBEdit, Buttons, CBitBtn, CPanelGradient, CLabel, EditAlign, CEdit, ClipBrd,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxContainer,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelContasReceber = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    Label4: TLabel;
    CLabel11: TCLabel;
    CLabel5: TCLabel;
    Label2: TLabel;
    Label3: TLabel;
    CLabel1: TCLabel;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    CLabel8: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtEmissaoFim: TCDBEdit;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    DBEclassificacaoFim: TCDBEdit;
    DBEclassificacaoIni: TCDBEdit;
    DBEnrTituloRecIni: TCDBEdit;
    DBEnrTituloRecFim: TCDBEdit;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    DBEJuros: TCDBEdit;
    DBEDesconto: TCDBEdit;
    DBRGstTitulo: TCDBRadioGroup;
    DBRGOrdem: TCDBRadioGroup;
    frxReport1: TfrxReport;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraodtEmissaoIni: TDateTimeField;
    cdsPadraodtEmissaoFim: TDateTimeField;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    cdsPadraoclassificacaoIni: TStringField;
    cdsPadraoclassificacaoFim: TStringField;
    cdsPadraoordem: TStringField;
    cdsPadraostTituloRec: TStringField;
    cdsPadraojuros: TFloatField;
    cdsPadraodesconto: TFloatField;
    cdsPadraodtAtual: TDateTimeField;
    FindCliente: TCFind;
    FindResultado: TCFind;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoPrevisoes: TStringField;
    CEdit1: TCEdit;
    cdsPadraonrTituloRecIni: TStringField;
    cdsPadraonrTituloRecFim: TStringField;
    FindGerencial: TCFind;
    FindIndice: TCFind;
    LookLancamento: TCLookUp;
    CLabel22: TCLabel;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLabel21: TCLabel;
    cdsPadraoidIndice: TIntegerField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    CGroupBox2: TCGroupBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraomostraObs: TStringField;
    DBCKmostraobs: TCDBCheckBox;
    panPopupFornecedores: TPanel;
    Shape8: TShape;
    Label29: TLabel;
    Label30: TLabel;
    GridCliente: TcxGrid;
    DBTableViewCliente: TcxGridDBTableView;
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
    LblCad: TCLabel;
    DBEidCliente: TcxPopupEdit;
    CLabel10: TCLabel;
    DBEidGrupo: TcxPopupEdit;
    CLabel12: TCLabel;
    DBEidSegmento: TcxPopupEdit;
    Styles: TcxStyleRepository;
    stDestaque: TcxStyle;
    dsGrupoCad: TDataSource;
    cdsGrupoCad: TClientDataSet;
    cdsGrupoCadSELECIONADO: TStringField;
    cdsGrupoCadidGrupoCad: TSmallintField;
    cdsGrupoCaddescGrupoCad: TStringField;
    cdsGrupoCadstGrupoCad: TStringField;
    dspGrupoCad: TDataSetProvider;
    sdsGrupoCad: TSQLQuery;
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
    sdsSegmento: TSQLQuery;
    dspSegmento: TDataSetProvider;
    cdsSegmento: TClientDataSet;
    cdsSegmentoSELECIONADO: TStringField;
    cdsSegmentoidSegmento: TSmallintField;
    cdsSegmentodescSegmento: TStringField;
    cdsSegmentostSegmento: TStringField;
    dsSegmento: TDataSource;
    cdsClientes: TClientDataSet;
    cdsClientesSELECIONADO: TStringField;
    cdsClientesidFornecedor: TIntegerField;
    cdsClientesdescCadFornecedor: TStringField;
    cdsClientesdescAbreviada: TStringField;
    dsCliente: TDataSource;
    dspClientes: TDataSetProvider;
    qryClientes: TSQLQuery;
    cdsPadraoincluiMov: TStringField;
    DBCKincluiMov: TCDBCheckBox;
    DBCBPrevisoes: TCDBCheckBox;
    CLabel72: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    cdsPadraoidSafra: TIntegerField;
    DBCKmostraRazao: TCDBCheckBox;
    cdsPadraomostraRazao: TStringField;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    CLabel9: TCLabel;
    cdsPadraoidRateio: TIntegerField;
    cdsPadraoidContratoVenda: TStringField;
    Label8: TLabel;
    DBEidContratoVenda: TCDBEdit;
    procedure frxReport1AfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEclassificacaoIniExit(Sender: TObject);
    procedure DBEclassificacaoIniEnter(Sender: TObject);
    procedure DBEclassificacaoFimExit(Sender: TObject);
    procedure DBEclassificacaoFimEnter(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure panPopupFornecedoresClick(Sender: TObject);
  private
    { Private declarations }
    //stDestaque: TcxStyle;
    mascara : string;
    //*********************************************************************************
    // ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
   //*********************************************************************************
        //*********   Clientes   ************//
    Procedure Montar_Selecao_Clientes;
        Procedure Limpar_Selecao_Clientes;
        procedure PopupClientesEnter(Sender: TObject);
        procedure AplicarForClick(Sender: TObject);
        procedure CancelarCliClick(Sender: TObject);
        procedure LimparCliClick(Sender: TObject);
        procedure OnDBTableViewClientesDblClick(Sender: TObject);
        procedure OnDBEidClientesPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewClientesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  FrmRelContasReceber: TFrmRelContasReceber;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoRel, uDmFind;

{$R *.dfm}
procedure TFrmRelContasReceber.Montar_Selecao_Clientes;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsCliente do
  begin
    sCodigos := TStringList.Create();
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;
    While Not(DataSet.Eof) Do
    Begin
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idCliente').Text);
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
    DBEidCliente.Text := funcao.SepararValores(aCodigos, ', ');
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

procedure TFrmRelContasReceber.Limpar_Selecao_Clientes;
Var bReg: Pointer;
begin
  with dsCliente do
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
    DBEidCliente.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelContasReceber.PopupClientesEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsCliente.DataSet.Active) Then
     dsCliente.DataSet.Open;
  //
end;

procedure TFrmRelContasReceber.AplicarForClick(Sender: TObject);
begin
  //
  DBEidCliente.PopupWindow.Close;
  Montar_Selecao_Clientes;
  //
end;


procedure TFrmRelContasReceber.CancelarCliClick(Sender: TObject);
begin
  //
  DBEidCliente.PopupWindow.Close;
  //
end;
procedure TFrmRelContasReceber.LimparCliClick(Sender: TObject);
begin
  //
  DBEidCliente.PopupWindow.Close;
  Limpar_Selecao_Clientes;
  //
end;
procedure TFrmRelContasReceber.OnDBTableViewClientesDblClick(Sender: TObject);
begin
  //
  dsCliente.DataSet.Edit;
  //
  If (dsCliente.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsCliente.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsCliente.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsCliente.DataSet.Post;
  //
end;
procedure TFrmRelContasReceber.OnDBEidClientesPropertiesPopup(Sender: TObject);
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
procedure TFrmRelContasReceber.OnDBTableViewClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewCliente.OnDblClick(DBTableViewCliente);
  //
end;
//*****************************************************************************//
        //*********   GRUPOS EMPRESARIAIS   ************//
procedure TFrmRelContasReceber.Montar_Selecao_GrupoCad;
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
procedure TFrmRelContasReceber.Limpar_Selecao_GrupoCad;
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
procedure TFrmRelContasReceber.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupoCad.DataSet.Active) Then
     dsGrupoCad.DataSet.Open;
  //
end;
procedure TFrmRelContasReceber.AplicarGrupoClick(Sender: TObject);
begin
  //
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelContasReceber.CancelarGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelContasReceber.LimparGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelContasReceber.OnDBTableViewGrupoDblClick(
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
procedure TFrmRelContasReceber.OnDBEidGruposPropertiesPopup(Sender: TObject);
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
procedure TFrmRelContasReceber.OnDBTableViewGrupoKeyDown(Sender: TObject;
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
procedure TFrmRelContasReceber.Montar_Selecao_Segmento;
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
procedure TFrmRelContasReceber.Limpar_Selecao_Segmento;
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
procedure TFrmRelContasReceber.SegmentoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsSegmento.DataSet.Active) Then
     dsSegmento.DataSet.Open;
  //
end;
procedure TFrmRelContasReceber.AplicarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Montar_Selecao_Segmento;
  //
end;
procedure TFrmRelContasReceber.CancelarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  //
end;
procedure TFrmRelContasReceber.LimparSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Limpar_Selecao_Segmento;
  //
end;

procedure TFrmRelContasReceber.OnDBTableViewSegmentoDblClick(
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
procedure TFrmRelContasReceber.OnDBEidSegmentosPropertiesPopup(
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

procedure TFrmRelContasReceber.OnDBTableViewSegmentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewSegmento.OnDblClick(DBTableViewSegmento);
  //
end;
procedure TFrmRelContasReceber.panPopupFornecedoresClick(Sender: TObject);
begin
  inherited;

end;

//******************************************************************************
        //*********   COMUM A TODOS  ************//

procedure TFrmRelContasReceber.OnDBTableViewGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  //
  If (ARecord.Values[0] = 'S') Then
     AStyle := stDestaque;
  //
end;

procedure TFrmRelContasReceber.actGerarExecute(Sender: TObject);
begin
//  inherited;
  // Execução da Procedure
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelContasReceber ' + DBEidEmpresa.Text + ',' + DBEidCadEmpresa.Text + ',' + 
                               QuotedStr(DBEidCliente.Text) +  ',' +
                               QuotedStr(DBEidGrupo.Text) +  ',' +
                               QuotedStr(DBEidSegmento.Text) +  ',' +
                               funcao.RetornaValorEField(DBEdtVencimentoIni,3) + ',' +
                               funcao.RetornaValorEField(DBEdtVencimentoFim,3) + ',' +
                               funcao.RetornaValorEField(DBEdtEmissaoIni,3) + ',' +
                               funcao.RetornaValorEField(DBEdtEmissaoFim,3) + ',' +
                               funcao.RetornaValorEField(DBRGOrdem,3) + ',' +
                               funcao.RetornaValorEField(DBRGstTitulo,3) + ',' +
                               funcao.RetornaValorEField(DBEnrTituloRecIni,3) + ',' +
                               funcao.RetornaValorEField(DBEnrTituloRecFim,3) + ',' +
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
                               funcao.RetornaValorEField(DBEidContratoVenda, 3);
//  ClipBoard.AsText := cdsRelatorio.CommandText;
 // CEdit1.Text := cdsRelatorio.CommandText; exit;
  if cdsPadraoincluiMov.AsString = 'S' then
    frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelContasReceberMov.fr3')
  else
    frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelContasReceber.fr3');
//  frxReport1.LoadFromFile('C:\Nilus\Relatorios\RelContasReceber.fr3');

  (frxReport1.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Memo.Clear;
  if DBCKmostraRazao.Checked then
    (frxReport1.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Memo.Add('[frxDataset."descCadCliente"]')
  else
    (frxReport1.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Memo.Add('[frxDataset."descAbreviada"]');
  //Parametros para ajuste do relatório
  if trim(DBRGOrdem.Value) = 'D' then
  begin
    (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).Condition := 'DayOf(<frxDataset."dtVencimento">)';
    (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).OutlineText := 'frxDataset."dtEmissao"';
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
      (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).Condition := '<frxDataset."dtEmissao">';
      (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).OutlineText := '<frxDataset."dtEmissao">';
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
        (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).Condition := 'frxDataset."nrTitulo"';
        (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).OutlineText := 'frxDataset."dtEmissao"';
        (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Clear;
        (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Titulo - [frxDataset."nrTitulo"]');
        (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Clear;
        (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Add('Vencimento');
        (frxReport1.FindComponent('DBMnrTitulo') as TfrxMemoview).Memo.Clear;
        (frxReport1.FindComponent('DBMnrTitulo')as TfrxMemoview).Memo.Add('[frxDataset."dtVencimento"]');
       end
       else
         If (Trim(DBRGOrdem.Value) = 'C') Then
         Begin
          (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('Memo29') as TfrxMemoview).Memo.Clear;
          if DBCKmostraRazao.Checked then
          begin
            (frxReport1.FindComponent('Memo29') as TfrxMemoview).Memo.Add('Valor Total à Receber de [frxDataset."descAbreviada"]:');
            (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).Condition := 'frxDataset."descAbreviada"';
            (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).OutlineText := 'frxDataset."descAbreviada"';
            (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Cliente - [frxDataset."descAbreviada"]');
          end
          else
          begin
            (frxReport1.FindComponent('Memo29') as TfrxMemoview).Memo.Add('Valor Total à Receber de [frxDataset."descCadCliente"]:');
            (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).Condition := 'frxDataset."descCadCliente"';
            (frxReport1.FindComponent('GroupHeaderContaRec') as TfrxGroupHeader).OutlineText := 'frxDataset."descCadCliente"';
            (frxReport1.FindComponent('MGHTitulo') as TfrxMemoview).Memo.Add('Cliente - [frxDataset."descCadCliente"]');
          end;
          (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('MnrTitulo') as TfrxMemoview).Memo.Add('Titulo');
          (frxReport1.FindComponent('DBMnrTitulo') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('DBMnrTitulo')as TfrxMemoview).Memo.Add('[frxDataset."nrTitulo"]');
          (frxReport1.FindComponent('Memo23') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('Memo23') as TfrxMemoview).Memo.Add('Vencimento');
          (frxReport1.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Memo.Clear;
          (frxReport1.FindComponent('MDESC_CLIENTE')as TfrxMemoview).Memo.Add('[frxDataset."dtVencimento"]');
         End;

  (frxReport1.FindComponent('MdtEmissaoIni') as TfrxMemoView).Memo.Add(DBEdtEmissaoIni.Text);
  (frxReport1.FindComponent('MdtEmissaoFim') as TfrxMemoView).Memo.Add(DBEdtEmissaoFim.Text);
  (frxReport1.FindComponent('MdtVencimentoIni') as TfrxMemoView).Memo.Add(DBEdtVencimentoIni.Text);
  (frxReport1.FindComponent('MdtVencimentoFim') as TfrxMemoView).Memo.Add(DBEdtVencimentoFim.Text);
  (frxReport1.FindComponent('MnrTituloIni') as TfrxMemoView).Memo.Add(DBEnrTituloRecIni.Text);
  (frxReport1.FindComponent('MnrTituloFim') as TfrxMemoView).Memo.Add(DBEnrTituloRecFim.Text);
  (frxReport1.FindComponent('MclassificacaoIni') as TfrxMemoView).Memo.Add(DBEclassificacaoIni.Text);
  (frxReport1.FindComponent('MclassificacaoFim') as TfrxMemoView).Memo.Add(DBEclassificacaoFim.Text);
  (frxReport1.FindComponent('MstTitulo') as TfrxMemoView).Memo.Add(cdsPadraostTituloRec.Value);
  (frxReport1.FindComponent('MPrevisoes') as TfrxMemoView).Memo.Add(cdsPadraoordem.Value);
  (frxReport1.FindComponent('MidResultado') as TfrxMemoView).Memo.Add(DBEidResultado.Text);
  (frxReport1.FindComponent('MdescResultado') as TfrxMemoView).Memo.Add(LookResultado.Caption);
  (frxReport1.FindComponent('MJuros') as TfrxMemoView).Memo.Add(DBEJuros.Text);
  (frxReport1.FindComponent('MDesconto') as TfrxMemoView).Memo.Add(DBEDesconto.Text);

  (frxReport1.FindComponent('MCONTRATO') as TfrxMemoview).Clear;
  (frxReport1.FindComponent('MCONTRATO') as TfrxMemoview).Text := DBEidContratoVenda.Text;

  //Se tiver rateio
  (frxReport1.FindComponent('MRateio') as TfrxMemoView).Memo.Clear;
  (frxReport1.FindComponent('MRateio') as TfrxMemoView).Memo.Add(DBEidRateio.Text + '-' + trim(LookRateio.Caption));
  //Configuração se mostra ou não a observação do título
  if cdsPadraomostraobs.Value = 'S' then
  begin
    (frxReport1.FindComponent('lblObsTitulo') as TfrxMemoView).Visible := true;
    (frxReport1.FindComponent('MemObsTitulo') as TfrxMemoView).Visible := true;
    if cdsPadraoincluiMov.AsString <> 'S' then
      (frxReport1.FindComponent('MasterDataContaRec') as TfrxMasterData).Height := 0.82;
  end
  else
  begin
    (frxReport1.FindComponent('lblObsTitulo') as TfrxMemoView).Visible := false;
    (frxReport1.FindComponent('MemObsTitulo') as TfrxMemoView).Visible := false;
    (frxReport1.FindComponent('lblObsTitulo') as TfrxMemoView).Top := 0;
    (frxReport1.FindComponent('MemObsTitulo') as TfrxMemoView).Top := 0;
    if cdsPadraoincluiMov.AsString <> 'S' then
      (frxReport1.FindComponent('MasterDataContaRec') as TfrxMasterData).Height := 0.42;
  end;

  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  frxReport1.ShowReport;

end;

procedure TFrmRelContasReceber.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('stTituloRec').AsString := 'ATIVO';
  DataSet.FieldByName('ordem').AsString := 'V';
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
  DataSet.FieldByName('mostraObs').AsString := 'S';
  cdsPadraoincluiMov.AsString := 'N';
  cdsPadraoPrevisoes.AsString := 'N';
  cdsPadraomostraRazao.AsString := 'N';
end;


procedure TFrmRelContasReceber.DBEclassificacaoFimEnter(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoFim').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoFim').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoFim').AsString);
    cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
  end;

procedure TFrmRelContasReceber.DBEclassificacaoFimExit(Sender: TObject);
begin
  inherited;
 { if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('classificacaoFim').AsString := funcao.Mascara(cdsPadrao.FieldByName('classificacaoFim').AsString, 99, mascara );}

end;

procedure TFrmRelContasReceber.DBEclassificacaoIniEnter(Sender: TObject);
begin
  inherited;
  cdsPadraoclassificacaoFim.Value := cdsPadraoclassificacaoIni.Value;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacaoIni').AsString) <> '' then
      cdsPadrao.FieldByName('classificacaoIni').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacaoIni').AsString);


end;

procedure TFrmRelContasReceber.DBEclassificacaoIniExit(Sender: TObject);
begin
  inherited;
{  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('classificacaoIni').AsString := funcao.Mascara(cdsPadrao.FieldByName('classificacaoIni').AsString, 99, mascara );}

end;

procedure TFrmRelContasReceber.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
end;

procedure TFrmRelContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContasReceber := nil;
end;

procedure TFrmRelContasReceber.FormCreate(Sender: TObject);
begin
  inherited;
//  proc := 'spRelContasRec';
  relatorio := 'RelContasReceber.fr3';
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
  panPopupFornecedores.OnEnter := PopupClientesEnter;
  BtnAplicarFor.OnClick := AplicarForClick;
  BtnCancelarFor.OnClick := CancelarCliClick;
  BtnLimparFor.OnClick := LimparCliClick;
  DBTableViewCliente.OnDblClick := OnDBTableViewClientesDblClick;
  DBEidCliente.Properties.OnPopup := OnDBEidClientesPropertiesPopup;
  DBTableViewCliente.OnKeyDown := OnDBTableViewClientesKeyDown;
  DBTableViewCliente.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidCliente.Properties.PopupControl := panPopupFornecedores;


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

procedure TFrmRelContasReceber.FormShow(Sender: TObject);
begin
  inherited;
   DBEidCliente.SetFocus;
   DBCKconsolidafilial.Visible := filial;   
end;

procedure TFrmRelContasReceber.frxReport1AfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
