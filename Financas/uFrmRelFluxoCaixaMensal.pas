unit uFrmRelFluxoCaixaMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CCheckBox, CGroupBox, CDBCheckBox, uFrmPadraoRelEmpresa, DateUtils,
  CDBRadioGroup, ClipBrd, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxContainer, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, EditAlign, CEdit, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelFluxoCaixaMensal = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel29: TCLabel;
    DBEdtPosicao: TCDBEdit;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    cdsRelConta: TClientDataSet;
    dspRelConta: TDataSetProvider;
    frxDBRelConta: TfrxDBDataset;
    cdsRelVencido: TClientDataSet;
    dspRelVencido: TDataSetProvider;
    frxDBRelVencido: TfrxDBDataset;
    cdsRelFluxoProduto: TClientDataSet;
    cdsRelatorioidIndice: TSmallintField;
    cdsRelatoriodescIndice: TStringField;
    cdsRelatoriodescSimbolo: TStringField;
    cdsRelatoriodtLancamento: TSQLTimeStampField;
    dspRelFluxoProduto: TDataSetProvider;
    frxDBRelFluxoProduto: TfrxDBDataset;
    FindIndice: TCFind;
    frxRel: TfrxReport;
    cdsPadraodtPosicao: TDateTimeField;
    cdsPadraoidIndice: TIntegerField;
    cdsPadraoagrupar: TStringField;
    DBRGagrupar: TCDBRadioGroup;
    cdsRelatorioid: TIntegerField;
    cdsRelatorioDescricao: TStringField;
    cdsRelatoriomes1: TFMTBCDField;
    cdsRelatoriomes2: TFMTBCDField;
    cdsRelatoriomes3: TFMTBCDField;
    cdsRelatoriomes4: TFMTBCDField;
    cdsRelatoriomes5: TFMTBCDField;
    cdsRelatoriomes6: TFMTBCDField;
    cdsRelatoriomes7: TFMTBCDField;
    cdsRelatoriomes8: TFMTBCDField;
    cdsRelatoriomes9: TFMTBCDField;
    cdsRelatoriomes10: TFMTBCDField;
    cdsRelatoriomes11: TFMTBCDField;
    cdsRelatoriomes12: TFMTBCDField;
    DBRGtpFluxo: TCDBRadioGroup;
    cdsPadraotpFluxo: TStringField;
    cdsRelFluxoProdutoqtEstoque: TFMTBCDField;
    cdsRelFluxoProdutovlEstoque: TFMTBCDField;
    cdsRelFluxoProdutovlLancamento: TFMTBCDField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    CGroupBox2: TCGroupBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    dspFornecedores: TDataSetProvider;
    qryFornecedores: TSQLQuery;
    cdsFornecedores: TClientDataSet;
    cdsFornecedoresSELECIONADO: TStringField;
    cdsFornecedoresidFornecedor: TIntegerField;
    cdsFornecedoresdescCadFornecedor: TStringField;
    cdsFornecedoresdescAbreviada: TStringField;
    dsFornecedores: TDataSource;
    dsGrupoCad: TDataSource;
    cdsGrupoCad: TClientDataSet;
    cdsGrupoCadSELECIONADO: TStringField;
    cdsGrupoCadidGrupoCad: TSmallintField;
    cdsGrupoCaddescGrupoCad: TStringField;
    cdsGrupoCadstGrupoCad: TStringField;
    dspGrupoCad: TDataSetProvider;
    sdsGrupoCad: TSQLQuery;
    sdsSegmento: TSQLQuery;
    dspSegmento: TDataSetProvider;
    cdsSegmento: TClientDataSet;
    cdsSegmentoSELECIONADO: TStringField;
    cdsSegmentoidSegmento: TSmallintField;
    cdsSegmentodescSegmento: TStringField;
    cdsSegmentostSegmento: TStringField;
    dsSegmento: TDataSource;
    DBEidSegmento: TcxPopupEdit;
    CLabel12: TCLabel;
    LblCad: TCLabel;
    DBEidFornecedores: TcxPopupEdit;
    CLabel10: TCLabel;
    DBEidGrupo: TcxPopupEdit;
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
    CGroupBox3: TCGroupBox;
    DBCKmostraContas: TCDBCheckBox;
    DBCKmostraIndice: TCDBCheckBox;
    cdsPadraomostraIndice: TStringField;
    cdsPadraomostraContas: TStringField;
    cdsPadraomostraVencidos: TStringField;
    DBCKmostraVencidos: TCDBCheckBox;
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
    cdsRelatoriovlSaldoAnterior: TCurrencyField;
    DBCKtpPrevisao: TCDBCheckBox;
    cdsPadraotpPrevisao: TStringField;
    cdsRelatorioordem: TStringField;
    DBCKintegraSaldo: TCDBCheckBox;
    cdsPadraointegraSaldo: TStringField;
    cdsPadraogrupoGerencial: TStringField;
    DBCKgrupoGerencial: TCDBCheckBox;
    cdsRelatorioordemGrupo: TSmallintField;
    cdsPadraomostraAdiantamento: TStringField;
    DBCKmostraAdiantamento: TCDBCheckBox;
    dspRelAdiantamento: TDataSetProvider;
    frxDBAdiantamento: TfrxDBDataset;
    cdsRelAdiantamento: TClientDataSet;
    cdsRelAdiantamentoidCadGeral: TIntegerField;
    cdsRelAdiantamentodescCadGeral: TStringField;
    cdsRelAdiantamentovlEntrada: TFMTBCDField;
    cdsRelAdiantamentovlSaida: TFMTBCDField;
    cdsRelContavlSaldoBanco: TFMTBCDField;
    cdsRelVencidovlSaldoVencido: TFMTBCDField;
    cdsRelVencidovlSaldoAnterior: TFMTBCDField;
    cdsRelAdiantamentovlSaldoAdiantamento: TFMTBCDField;
    cdsRelAdiantamentovlSaldoAnterior: TFMTBCDField;
    cdsPadraovlAcumulado: TCurrencyField;
    DBEvlAcumulado: TCDBEdit;
    EDtpFluxo: TCEdit;
    EDtpAgrupamento: TCEdit;
    DBCKimpCabecalho: TCDBCheckBox;
    cdsPadraoimpCabecalho: TStringField;
    cdsPadraosepararReceitas: TStringField;
    DBCKsepararReceitas: TCDBCheckBox;
    cdsRelatorioidGrupoGerencial: TIntegerField;
    cdsRelatoriodescGrupoGerencial: TStringField;
    DBEidEmpresas: TcxPopupEdit;
    CLabel1: TCLabel;
    dsEmpresas: TDataSource;
    cdsEmpresas: TClientDataSet;
    cdsEmpresasSELECIONADO: TStringField;
    cdsEmpresasidEmpresa: TIntegerField;
    cdsEmpresasdescCadEmpresa: TStringField;
    cdsEmpresasdescAbreviada: TStringField;
    cdsEmpresasidCnpjCpf: TStringField;
    dspEmpresas: TDataSetProvider;
    sdsEmpresas: TSQLQuery;
    panEmpresas: TPanel;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    GridEmpresa: TcxGrid;
    DBTableViewEmpresas: TcxGridDBTableView;
    GridEmpresaSELECIONADO: TcxGridDBColumn;
    GridEmpresaidEmpresa: TcxGridDBColumn;
    GridEmpresadescCadEmpresa: TcxGridDBColumn;
    GridEmpresadescAbreviada: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    BtnAplicarEmpresas: TCBitBtn;
    BtnCancelarEmpresas: TCBitBtn;
    BtnLimparEmpresas: TCBitBtn;
    cbCodEmpresa: TcxCheckBox;
    cbdescEmpresa: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure cdsRelatorioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }

    vlSomaTotal  : Double;

    stDestaque: TcxStyle;
    const meses : array[1..12] of string = ('JANEIRO','FEVEREIRO', 'MARÇO', 'ABRIL', 'MAIO', 'JUNHO', 'JULHO', 'AGOSTO', 'SETEMBRO', 'OUTUBRO', 'NOVEMBRO', 'DEZEMBRO');
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

        //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  public
    { Public declarations }
  end;

var
  FrmRelFluxoCaixaMensal: TFrmRelFluxoCaixaMensal;

implementation

  uses uFuncao, uDmPadrao, uFrmPrincipal;
{$R *.dfm}

//*********************************************************************************
// ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
//*********************************************************************************
   //*********   FORNECEDORES   ************//
procedure TFrmRelFluxoCaixaMensal.Montar_Selecao_Fornecedores;
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

procedure TFrmRelFluxoCaixaMensal.Limpar_Selecao_Fornecedores;
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
procedure TFrmRelFluxoCaixaMensal.PopupFornecedoresEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsFornecedores.DataSet.Active) Then
     dsFornecedores.DataSet.Open;
  //
end;

procedure TFrmRelFluxoCaixaMensal.AplicarForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  Montar_Selecao_Fornecedores;
  //
end;


procedure TFrmRelFluxoCaixaMensal.CancelarForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  //
end;
procedure TFrmRelFluxoCaixaMensal.LimparForClick(Sender: TObject);
begin
  //
  DBEidFornecedores.PopupWindow.Close;
  Limpar_Selecao_Fornecedores;
  //
end;
procedure TFrmRelFluxoCaixaMensal.OnDBTableViewFornecedorDblClick(Sender: TObject);
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
procedure TFrmRelFluxoCaixaMensal.OnDBEidFornecedoresPropertiesPopup(Sender: TObject);
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
procedure TFrmRelFluxoCaixaMensal.OnDBTableViewFornecedorKeyDown(Sender: TObject;
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
procedure TFrmRelFluxoCaixaMensal.Montar_Selecao_GrupoCad;
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
procedure TFrmRelFluxoCaixaMensal.Limpar_Selecao_GrupoCad;
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
procedure TFrmRelFluxoCaixaMensal.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupoCad.DataSet.Active) Then
     dsGrupoCad.DataSet.Open;
  //
end;
procedure TFrmRelFluxoCaixaMensal.AplicarGrupoClick(Sender: TObject);
begin
  //
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelFluxoCaixaMensal.CancelarGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelFluxoCaixaMensal.LimparGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_GrupoCad;
  //
end;
procedure TFrmRelFluxoCaixaMensal.OnDBTableViewGrupoDblClick(
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
procedure TFrmRelFluxoCaixaMensal.OnDBEidGruposPropertiesPopup(Sender: TObject);
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
procedure TFrmRelFluxoCaixaMensal.OnDBTableViewGrupoKeyDown(Sender: TObject;
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
procedure TFrmRelFluxoCaixaMensal.Montar_Selecao_Segmento;
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
procedure TFrmRelFluxoCaixaMensal.Limpar_Selecao_Segmento;
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
procedure TFrmRelFluxoCaixaMensal.SegmentoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsSegmento.DataSet.Active) Then
     dsSegmento.DataSet.Open;
  //
end;
procedure TFrmRelFluxoCaixaMensal.AplicarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Montar_Selecao_Segmento;
  //
end;
procedure TFrmRelFluxoCaixaMensal.CancelarSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  //
end;
procedure TFrmRelFluxoCaixaMensal.LimparSegmentoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSegmento.PopupWindow.Close;
  Limpar_Selecao_Segmento;
  //
end;

procedure TFrmRelFluxoCaixaMensal.OnDBTableViewSegmentoDblClick(
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
procedure TFrmRelFluxoCaixaMensal.OnDBEidSegmentosPropertiesPopup(
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

procedure TFrmRelFluxoCaixaMensal.OnDBTableViewSegmentoKeyDown(Sender: TObject;
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
        //*********   EMPRESAS  ************//
procedure TFrmRelFluxoCaixaMensal.Montar_Selecao_Empresas;
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
procedure TFrmRelFluxoCaixaMensal.Limpar_Selecao_Empresas;
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
procedure TFrmRelFluxoCaixaMensal.EmpresasEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsEmpresas.DataSet.Active) Then
     dsEmpresas.DataSet.Open;
  //
end;
procedure TFrmRelFluxoCaixaMensal.AplicarEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  Montar_Selecao_Empresas;
  //
end;
procedure TFrmRelFluxoCaixaMensal.CancelarEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  //
end;
procedure TFrmRelFluxoCaixaMensal.LimparEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  Limpar_Selecao_Empresas;
  //
end;

procedure TFrmRelFluxoCaixaMensal.OnDBTableViewEmpresasDblClick(
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
procedure TFrmRelFluxoCaixaMensal.OnDBEidEmpresasPropertiesPopup(
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

procedure TFrmRelFluxoCaixaMensal.OnDBTableViewEmpresasKeyDown(Sender: TObject;
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

procedure TFrmRelFluxoCaixaMensal.OnDBTableViewGetContentStyle(
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

procedure TFrmRelFluxoCaixaMensal.actGerarExecute(Sender: TObject);
var
  i : integer;
  mes : integer;
  comp : string;
begin
  inherited;
  if (trim(DBEdtPosicao.Text) = '') then
  begin
    messagedlg('A data deve ser informada!', mtwarning, [mbok], 0);
      exit;
  end;
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

  //Fim do ajuste dos campos para os parâmetros
  Screen.Cursor := crSQLWait;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsRelFluxoProduto.Active := false;
  cdsRelFluxoProduto.CommandText := 'EXEC spRelFluxoProduto ' + DBEidEmpresa.Text + ', ' +
                                                                DBEidCadEmpresa.Text + ',' +
                                                                QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                                QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                                QuotedStr(DBEidEmpresas.Text);
  cdsRelFluxoProduto.Active := true;

  cdsRelConta.Active := false;
  cdsRelConta.CommandText := 'EXEC spRelFluxoBanco ' + DBEidEmpresa.Text + ', ' +
                                                       DBEidCadEmpresa.Text +', ' +
                                                       funcao.RetornaValorEField(DBEdtPosicao, 3) + ', ' +
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
  cdsRelAdiantamento.Active := true;

  if cdsRelAdiantamento.RecordCount > 0 then
    cdsPadraovlAcumulado.AsCurrency := cdsRelAdiantamentovlSaldoAdiantamento.AsCurrency;

  cdsRelVencido.Active := false;
  cdsRelVencido.CommandText := 'EXEC spRelFluxoVencido ' + DBEidEmpresa.Text + ', ' +
                                                           DBEidCadEmpresa.Text +', ' +
                                                           funcao.RetornaValorEField(DBEidIndice, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBEdtPosicao, 3) + ',' +
                                                           QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                           QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                           funcao.RetornaValorEField(DBEvlAcumulado, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBCKintegraSaldo, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBRGtpFluxo, 3) + ', ' +
                                                           QuotedStr(DBEidFornecedores.Text) + ', ' +
                                                           QuotedStr(DBEidGrupo.Text) + ', ' +
                                                           QuotedStr(DBEidSegmento.Text) + ', ' +
                                                           QuotedStr(DBEidEmpresas.Text) + ',' +
                                                           QuotedStr(cdsPadraotpPrevisao.AsString);

  cdsRelVencido.Active := true;

  if cdsRelVencido.RecordCount > 0 then
    cdsPadraovlAcumulado.AsCurrency := cdsRelVencidovlSaldoVencido.AsCurrency;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelFluxoMensal ' + DBEidEmpresa.Text + ', ' +
                                                         DBEidCadEmpresa.Text +', ' +
                                                         funcao.RetornaValorEField(DBEidIndice, 3) + ', ' +
                                                         funcao.ConverteData(cdsPadraodtPosicao.AsDateTime) + ', ' +
                                                         QuotedStr(cdsPadraoagrupar.AsString) + ', ' +
                                                         funcao.RetornaValorEField(DBRGtpFluxo, 3) + ', ' +
                                                         QuotedStr(cdsPadraotpPrevisao.AsString) + ',' +
                                                         QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                         QuotedStr(cdsPadraoconsolidafilial.AsString) + ' ,' +
                                                         QuotedStr(DBEidFornecedores.Text) + ',' +
                                                         QuotedStr(DBEidGrupo.Text) + ',' +
                                                         QuotedStr(DBEidSegmento.Text) + ', ' +
                                                         QuotedStr(cdsPadraogrupoGerencial.AsString) + ', ' +
                                                         funcao.RetornaValorEField(DBCKsepararReceitas, 3) + ' ,' +
                                                         QuotedStr(DBEidEmpresas.Text);
  cdsRelatorio.Active := true;
//  showmessage(cdsRelatoriovlSaldoAnterior.AsString);

  //
//  ClipBoard.asText := cdsRelatorio.CommandText;
  //
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelFluxoMensal.fr3');



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

  mes := MonthOf(StrToDate(DBEdtPosicao.Text));
  for i := 1 to 12 do
  begin
      comp := 'DBMMes'+ IntToStr(i);
    (frxRel.FindComponent(comp) as TFrxMemoView).Memo.Clear;
    (frxRel.FindComponent(comp) as TfrxMemoView).Memo.Add(meses[Mes]);
    if mes = 12 then
      mes := 1
    else
      mes := mes + 1;
  end;
  Screen.Cursor := crDefault;
  parametrorel;
  frxRel.ShowReport;
end;
procedure TFrmRelFluxoCaixaMensal.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoagrupar.AsString := 'F';
  cdsPadraotpFluxo.AsString := 'A';
  cdsPadraomostraIndice.AsString := 'N';
  cdsPadraomostraContas.AsString := 'N';
  cdsPadraomostraVencidos.AsString := 'N';
  cdsPadraotpPrevisao.AsString := 'S';
  cdsPadraointegraSaldo.AsString := 'S';
  cdsPadraogrupoGerencial.AsString := 'N';
  cdsPadraomostraAdiantamento.AsString := 'N';
  cdsPadraosepararReceitas.AsString := 'N';

  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
  cdsPadraoimpCabecalho.AsString := 'S';
end;

procedure TFrmRelFluxoCaixaMensal.cdsRelatorioCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsRelatoriovlSaldoAnterior.AsCurrency := cdsPadraovlAcumulado.AsCurrency;
end;

procedure TFrmRelFluxoCaixaMensal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    FrmRelFluxoCaixaMensal := nil;
end;

procedure TFrmRelFluxoCaixaMensal.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'relFluxoMensal.fr3';
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
  SetLength(parametro, 16);
  parametro[0] := DBEidFornecedores;
  parametro[1] := DBEidGrupo;
  parametro[2] := DBEidSegmento;
  parametro[3] := DBEdtPosicao;
  parametro[4] := LookIndice;
  parametro[5] := EDtpFluxo;
  parametro[6] := EDtpAgrupamento;
  parametro[7] := DBCKmostraIndice;
  parametro[8] := DBCKmostraContas;
  parametro[9] := DBCKmostraVencidos;
  parametro[10] := DBCKmostraAdiantamento;
  parametro[11] := DBCKgrupoGerencial;
  parametro[12] := DBCKtpPrevisao;
  parametro[13] := DBCKintegraSaldo;
  parametro[14] := DBCKconsolidaemp;
  parametro[15] := DBCKconsolidafilial;
end;

procedure TFrmRelFluxoCaixaMensal.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtPosicao.SetFocus;
  Width := 505;
  Height := 500;
  DBCKconsolidafilial.Visible := filial;  
end;

procedure TFrmRelFluxoCaixaMensal.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
