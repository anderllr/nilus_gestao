unit uFrmRelAplicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CRadioGroup, CDBRadioGroup, CDBCheckBox, ClipBrd, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelAplicacao = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CLabel7: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel5: TCLabel;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidCultura: TIntegerField;
    cdsPadraoidBem: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidProdGrupoIni: TSmallintField;
    cdsPadraoidProdGrupoFim: TSmallintField;
    cdsPadraoidProdSubGrupoIni: TSmallintField;
    cdsPadraoidProdSubGrupoFim: TSmallintField;
    cdsPadraoagrupCultura: TStringField;
    cdsPadraogrupos: TStringField;
    cdsPadraosubgrupos: TStringField;
    cdsPadraoordem: TStringField;
    DBEidSubGrupo: TcxPopupEdit;
    CLabel12: TCLabel;
    DBEidGrupo: TcxPopupEdit;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    DBEsubgrupos: TCDBEdit;
    DBEgrupos: TCDBEdit;
    panGrupo: TPanel;
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
    panSubGrupo: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    cxGrid1: TcxGrid;
    DBTableViewSubGrupo: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBCodSubGrupo: TcxGridDBColumn;
    cxGridDBNomeSubGrupo: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtnAplicarSubGrupo: TCBitBtn;
    BtnCancelarSubGrupo: TCBitBtn;
    BtnLimparSubGrupo: TCBitBtn;
    cbCodSubGrupo: TcxCheckBox;
    cbDescSubGrupo: TcxCheckBox;
    cdsGrupo: TClientDataSet;
    cdsGrupoSELECIONADO: TStringField;
    cdsGrupoidProdGrupo: TSmallintField;
    cdsGrupodescProdGrupo: TStringField;
    cdsGrupostProdGrupo: TStringField;
    dsGrupo: TDataSource;
    dspGrupo: TDataSetProvider;
    sdsGrupo: TSQLQuery;
    cdsSubGrupo: TClientDataSet;
    StringField1: TStringField;
    cdsSubGrupoidProdSubGrupo: TSmallintField;
    cdsSubGrupodescProdSubGrupo: TStringField;
    cdsSubGrupostProdSubGrupo: TStringField;
    dsSubGrupo: TDataSource;
    dspSubGrupo: TDataSetProvider;
    sdsSubGrupo: TSQLQuery;
    cdsPadraosoaplicacao: TStringField;
    cdsPadraotpRel: TStringField;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsTalhao: TClientDataSet;
    StringField2: TStringField;
    dsTalhao: TDataSource;
    dspTalhao: TDataSetProvider;
    sdsTalhao: TSQLQuery;
    DBEidTalhao: TcxPopupEdit;
    CLabel11: TCLabel;
    cdsPadraotalhoes: TStringField;
    DBEtalhoes: TCDBEdit;
    CLabel18: TCLabel;
    panTalhao: TPanel;
    Shape3: TShape;
    Label4: TLabel;
    Label6: TLabel;
    GridTalhao: TcxGrid;
    DBTableViewTalhao: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBCodTalhao: TcxGridDBColumn;
    cxGridDBNomeTalhao: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    BtnAplicarTalhao: TCBitBtn;
    BtnCancelarTalhao: TCBitBtn;
    BtnLimparTalhao: TCBitBtn;
    cbCodTalhao: TcxCheckBox;
    cbDescTalhao: TcxCheckBox;
    cdsTalhaoidEmpresa: TIntegerField;
    cdsTalhaoidResultado: TIntegerField;
    cdsTalhaodescResultado: TStringField;
    cdsTalhaoTalhao: TStringField;
    cdsTalhaoidBem: TIntegerField;
    cdsTalhaostResultado: TStringField;
    cdsTalhaoconsolidaEmp: TStringField;
    DBEidProduto: TcxPopupEdit;
    panProduto: TPanel;
    Shape4: TShape;
    Label7: TLabel;
    Label8: TLabel;
    GridProduto: TcxGrid;
    DBTableViewProduto: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    BtnAplicarProduto: TCBitBtn;
    BtnCancelarProduto: TCBitBtn;
    BtnLimparProduto: TCBitBtn;
    cbCodProduto: TcxCheckBox;
    cbDescProduto: TcxCheckBox;
    dspProduto: TDataSetProvider;
    sdsProduto: TSQLQuery;
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    StringField3: TStringField;
    cdsProdutoidProduto: TIntegerField;
    cdsProdutodescProduto: TStringField;
    cdsProdutoidProdCategoria: TSmallintField;
    cdsProdutoidProdMedida: TSmallintField;
    cdsProdutoidProdGrupo: TSmallintField;
    cdsProdutoidProdSubGrupo: TSmallintField;
    cdsProdutodtCadastro: TSQLTimeStampField;
    cdsProdutoobsProduto: TStringField;
    cdsProdutostProduto: TStringField;
    cdsProdutoidIndice: TSmallintField;
    cdsProdutoidCultura: TSmallintField;
    cdsProdutoidFabricante: TIntegerField;
    cdsProdutocodFabricante: TStringField;
    cdsProdutodescAplicacao: TStringField;
    cdsProdutoNcm: TStringField;
    cdsProdutoqtSacas: TFMTBCDField;
    cdsProdutoqtArrobas: TFMTBCDField;
    cdsProdutoCombustivel: TStringField;
    cdsProdutolocacao: TStringField;
    cdsProdutoproducao: TStringField;
    cdsProdutoidProdOrigem: TSmallintField;
    CLabel6: TCLabel;
    DBEprodutos: TCDBEdit;
    cdsPadraoprodutos: TStringField;
    cxGridDBCodProduto: TcxGridDBColumn;
    cxGridDBNomeProduto: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure PreencheSqlTalhao;
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure panTalhaoClick(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
    stDestaque: TcxStyle;
    //*********************************************************************************
    // ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
   //*********************************************************************************
        //*********   GRUPOS DE PRODUTOS   ************//
        Procedure Montar_Selecao_Grupo;
        Procedure Limpar_Selecao_Grupo;
        procedure GruposEnter(Sender: TObject);
        procedure AplicarGrupoClick(Sender: TObject);
        procedure CancelarGrupoClick(Sender: TObject);
        procedure LimparGrupoClick(Sender: TObject);
        procedure OnDBTableViewGrupoDblClick(Sender: TObject);
        procedure OnDBEidGruposPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   SUBGRUPOS DE PRODUTOS   ************//
        Procedure Montar_Selecao_SubGrupo;
        Procedure Limpar_Selecao_SubGrupo;
        procedure SubGrupoEnter(Sender: TObject);
        procedure AplicarSubGrupoClick(Sender: TObject);
        procedure CancelarSubGrupoClick(Sender: TObject);
        procedure LimparSubGrupoClick(Sender: TObject);
        procedure OnDBTableViewSubGrupoDblClick(Sender: TObject);
        procedure OnDBEidSubGrupoPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewSubGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   TALHÕES   ************//
        Procedure Montar_Selecao_Talhao;
        Procedure Limpar_Selecao_Talhao;
        procedure TalhaosEnter(Sender: TObject);
        procedure AplicarTalhaoClick(Sender: TObject);
        procedure CancelarTalhaoClick(Sender: TObject);
        procedure LimparTalhaoClick(Sender: TObject);
        procedure OnDBTableViewTalhaoDblClick(Sender: TObject);
        procedure OnDBEidTalhaosPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewTalhaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   PRODUTOS   ************//
        Procedure Montar_Selecao_Produto;
        Procedure Limpar_Selecao_Produto;
        procedure ProdutoEnter(Sender: TObject);
        procedure AplicarProdutoClick(Sender: TObject);
        procedure CancelarProdutoClick(Sender: TObject);
        procedure LimparProdutoClick(Sender: TObject);
        procedure OnDBTableViewProdutoDblClick(Sender: TObject);
        procedure OnDBEidProdutoPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

        //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  public
    { Public declarations }
  end;

var
  FrmRelAplicacao: TFrmRelAplicacao;

implementation

uses uFrmPadraoRel, uDmPadrao, uFrmPrincipal, uFuncao, uDmFind;

{$R *.dfm}

//*********************************************************************************
// ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
//*********************************************************************************
//*****************************************************************************//
        //*********   GRUPOS DE PRODUTOS   ************//
procedure TFrmRelAplicacao.Montar_Selecao_Grupo;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsGrupo do
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
             sCodigos.Add(DataSet.FieldByName('idProdGrupo').Text);
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

//*****************************************************************************//
        //*********   PRODUTO   ************//
procedure TFrmRelAplicacao.Montar_Selecao_Produto;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsProduto do
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
             sCodigos.Add(DataSet.FieldByName('idProduto').Text);
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
    DBEidProduto.Text := funcao.SepararValores(aCodigos, ', ');
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

procedure TFrmRelAplicacao.Limpar_Selecao_Grupo;
Var bReg: Pointer;
begin
  with dsGrupo do
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
procedure TFrmRelAplicacao.Limpar_Selecao_Produto;
Var bReg: Pointer;
begin
  with dsProduto do
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
    DBEidProduto.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with

end;

procedure TFrmRelAplicacao.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupo.DataSet.Active) Then
     dsGrupo.DataSet.Open;
  //
end;
procedure TFrmRelAplicacao.AplicarGrupoClick(Sender: TObject);
begin
  //
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_Grupo;
  //
end;
procedure TFrmRelAplicacao.AplicarProdutoClick(Sender: TObject);
begin
  //
  DBEidProduto.PopupWindow.Close;
  Montar_Selecao_Produto;
  //
end;

procedure TFrmRelAplicacao.CancelarGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelAplicacao.CancelarProdutoClick(Sender: TObject);
begin
  //
  DBEidProduto.PopupWindow.Close;
  //
end;

procedure TFrmRelAplicacao.LimparGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_Grupo;
  //
end;
procedure TFrmRelAplicacao.LimparProdutoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidProduto.PopupWindow.Close;
  Limpar_Selecao_Produto;
  //
end;

procedure TFrmRelAplicacao.OnDBTableViewGrupoDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsGrupo.DataSet.Edit;
  //
  If (dsGrupo.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsGrupo.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsGrupo.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsGrupo.DataSet.Post;
  //
end;
procedure TFrmRelAplicacao.OnDBEidGruposPropertiesPopup(Sender: TObject);
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
procedure TFrmRelAplicacao.OnDBEidProdutoPropertiesPopup(Sender: TObject);
begin
  inherited;
  //
  If (cbCodProduto.Checked) Then
     cxGridDBCodProduto.Focused := True;
  //
  If (cbDescProduto.Checked) Then
     cxGridDBNomeProduto.Focused := True;
  //
end;

procedure TFrmRelAplicacao.OnDBTableViewGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewGrupo.OnDblClick(DBTableViewGrupo);
  //
end;
procedure TFrmRelAplicacao.OnDBTableViewProdutoDblClick(Sender: TObject);
begin
  inherited;
  //
  dsProduto.DataSet.Edit;
  //
  If (dsProduto.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsProduto.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsProduto.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsProduto.DataSet.Post;
  //
end;

procedure TFrmRelAplicacao.OnDBTableViewProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewProduto.OnDblClick(DBTableViewProduto);
  //

end;

//******************************************************************************
        //*********   SUB-GRUPOS DE PRODUTOS   ************//
procedure TFrmRelAplicacao.Montar_Selecao_SubGrupo;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsSubGrupo do
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
             sCodigos.Add(DataSet.FieldByName('idProdSubGrupo').Text);
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
    DBEidSubGrupo.Text := funcao.SepararValores(aCodigos, ', ');
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
procedure TFrmRelAplicacao.Limpar_Selecao_SubGrupo;
Var bReg: Pointer;
begin
  with dsSubGrupo do
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
procedure TFrmRelAplicacao.SubGrupoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsSubGrupo.DataSet.Active) Then
     dsSubGrupo.DataSet.Open;
  //
end;
procedure TFrmRelAplicacao.AplicarSubGrupoClick(Sender: TObject);
begin
  //
  DBEidSubGrupo.PopupWindow.Close;
  Montar_Selecao_SubGrupo;
  //
end;
procedure TFrmRelAplicacao.CancelarSubGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSubGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelAplicacao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
end;

procedure TFrmRelAplicacao.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TFrmRelAplicacao.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCustomEdit).Text then
    PreencheSqlTalhao;
end;

procedure TFrmRelAplicacao.LimparSubGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSubGrupo.PopupWindow.Close;
  Limpar_Selecao_SubGrupo;
  //
end;
procedure TFrmRelAplicacao.OnDBTableViewSubGrupoDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsSubGrupo.DataSet.Edit;
  //
  If (dsSubGrupo.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsSubGrupo.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsSubGrupo.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsSubGrupo.DataSet.Post;
  //
end;
procedure TFrmRelAplicacao.OnDBEidSubGrupoPropertiesPopup(Sender: TObject);
begin
  inherited;
  //
  If (cbCodSubGrupo.Checked) Then
     cxGridDBCodSubGrupo.Focused := True;
  //
  If (cbDescSubGrupo.Checked) Then
     cxGridDBNomeSubGrupo.Focused := True;
  //
end;
procedure TFrmRelAplicacao.OnDBTableViewSubGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewSubGrupo.OnDblClick(DBTableViewSubGrupo);
  //
end;

//*****************************************************************************//
        //*********   TALHÕES   ************//
procedure TFrmRelAplicacao.Montar_Selecao_Talhao;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsTalhao do
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
             sCodigos.Add(DataSet.FieldByName('idResultado').Text);
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
    DBEidTalhao.Text := funcao.SepararValores(aCodigos, ', ');
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
procedure TFrmRelAplicacao.Limpar_Selecao_Talhao;
Var bReg: Pointer;
begin
  with dsTalhao do
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
    DBEidTalhao.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelAplicacao.TalhaosEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsTalhao.DataSet.Active) Then
     dsTalhao.DataSet.Open;
  //
end;
procedure TFrmRelAplicacao.AplicarTalhaoClick(Sender: TObject);
begin
  //
  DBEidTalhao.PopupWindow.Close;
  Montar_Selecao_Talhao;
  //
end;
procedure TFrmRelAplicacao.CancelarTalhaoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidTalhao.PopupWindow.Close;
  //

end;
procedure TFrmRelAplicacao.LimparTalhaoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidTalhao.PopupWindow.Close;
  Limpar_Selecao_Talhao;
  //
end;
procedure TFrmRelAplicacao.OnDBTableViewTalhaoDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsTalhao.DataSet.Edit;
  //
  If (dsTalhao.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsTalhao.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsTalhao.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsTalhao.DataSet.Post;
  //
end;
procedure TFrmRelAplicacao.OnDBEidTalhaosPropertiesPopup(Sender: TObject);
begin
  inherited;
  //
  If (cbCodTalhao.Checked) Then
     cxGridDBCodTalhao.Focused := True;
  //
  If (cbDescTalhao.Checked) Then
     cxGridDBNomeTalhao.Focused := True;
  //
end;
procedure TFrmRelAplicacao.OnDBTableViewTalhaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewTalhao.OnDblClick(DBTableViewTalhao);
  //
end;
procedure TFrmRelAplicacao.panTalhaoClick(Sender: TObject);
begin
  inherited;

end;

//******************************************************************************

//******************************************************************************


//******************************************************************************
        //*********   COMUM A TODOS  ************//

procedure TFrmRelAplicacao.OnDBTableViewGetContentStyle(
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

procedure TFrmRelAplicacao.PreencheSqlTalhao;
begin
  cdsTalhao.Active := false;
  cdsTalhao.CommandText := 'SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND talhao = ' + QuotedStr('S');
  cdsTalhao.Active := true;
end;

procedure TFrmRelAplicacao.ProdutoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsProduto.DataSet.Active) Then
     dsProduto.DataSet.Open;
  //
end;

procedure TFrmRelAplicacao.actGerarExecute(Sender: TObject);
var
  grupos, subgrupos, talhoes, produtos : string;
begin

  //como o gerar foi omitido chamaremos direto daqui
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  //Atribui o valor ao DBEgrupos e DBEsubGrupos
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  //tira a vírgula do final
  grupos := 'NULL';
  if trim(DBEidGrupo.Text) <> '' then
    grupos := QuotedStr(trim(DBEidGrupo.Text));

  subgrupos := 'NULL';
  if trim(DBEidSubGrupo.Text) <> '' then
    subgrupos := QuotedStr(trim(DBEidSubGrupo.Text));

  talhoes := 'NULL';
  if trim(DBEidTalhao.Text) <> '' then
    talhoes := QuotedStr(trim(DBEidTalhao.Text));

  produtos := 'NULL';
  if trim(DBEidProduto.Text) <> '' then
    produtos := QuotedStr(trim(DBEidProduto.Text));

  cdsPadraogrupos.AsString := grupos;
  cdsPadraosubgrupos.AsString := subgrupos;
  cdsPadraotalhoes.AsString := talhoes;
  cdsPadraoprodutos.AsString := produtos;

  begin
    relatorio := 'RelAplicacao.fr3';
    cdsRelatorio.Active := false;
    cdsRelatorio.CommandText := 'EXEC spRelAplicacao ' + DBEidEmpresa.text + ',' +
                                 funcao.RetornaValorEField(DBEdtInicial, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEdtFinal, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEidSafra, 3)+ ',' +
                                 produtos + ',' +
                                 talhoes + ',' +
                                 grupos + ',' +
                                 subgrupos + ', ' +
                                 funcao.RetornaValorEField(DBCKconsolidaemp, 3);
//    Clipboard.AsText := cdsRelatorio.CommandText;
    cdsRelatorio.Active := true;
  end;

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);

  (frxRel.FindComponent('MdtInicial') as TfrxMemoview).Memo.Clear;
  (frxRel.FindComponent('MdtInicial') as TfrxMemoview).Memo.Add(cdsPadrao.FieldByName('dtInicial').AsString);
  (frxRel.FindComponent('MdtFinal') as TfrxMemoview).Memo.Clear;
  (frxRel.FindComponent('MdtFinal') as TfrxMemoview).Memo.Add(cdsPadrao.FieldByName('dtFinal').AsString);
  (frxRel.FindComponent('MSafra') as TfrxMemoview).Memo.Clear;
  (frxRel.FindComponent('MSafra') as TfrxMemoview).Memo.Add(LookSafra.caption);

  frxRel.ShowReport;

  //inherited;
end;

procedure TFrmRelAplicacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelAplicacao := nil;
end;

procedure TFrmRelAplicacao.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelAplicacao.fr3';
  Width := 640;
  Height := 320;
       //******  GRUPOS DE PRODUTOS ******//
  panGrupo.OnEnter := GruposEnter;
  BtnAplicarGrupo.OnClick := AplicarGrupoClick;
  BtnCancelarGrupo.OnClick := CancelarGrupoClick;
  BtnLimparGrupo.OnClick := LimparGrupoClick;
  DBTableViewGrupo.OnDblClick := OnDBTableViewGrupoDblClick;
  DBEidGrupo.Properties.OnPopup := OnDBEidGruposPropertiesPopup;
  DBTableViewGrupo.OnKeyDown := OnDBTableViewGrupoKeyDown;
  DBTableViewGrupo.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidGrupo.Properties.PopupControl := panGrupo;

       //******  GRUPOS DE SUB-PRODUTOS ******//
  panSubGrupo.OnEnter := SubGrupoEnter;
  BtnAplicarSubGrupo.OnClick := AplicarSubGrupoClick;
  BtnCancelarSubGrupo.OnClick := CancelarSubGrupoClick;
  BtnLimparSubGrupo.OnClick := LimparSubGrupoClick;
  DBTableViewSubGrupo.OnDblClick := OnDBTableViewSubGrupoDblClick;
  DBEidSubGrupo.Properties.OnPopup := OnDBEidSubGrupoPropertiesPopup;
  DBTableViewSubGrupo.OnKeyDown := OnDBTableViewSubGrupoKeyDown;
  DBTableViewSubGrupo.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidSubGrupo.Properties.PopupControl := panSubGrupo;

       //******  TALHÕES ******//
  panTalhao.OnEnter := TalhaosEnter;
  BtnAplicarTalhao.OnClick := AplicarTalhaoClick;
  BtnCancelarTalhao.OnClick := CancelarTalhaoClick;
  BtnLimparTalhao.OnClick := LimparTalhaoClick;
  DBTableViewTalhao.OnDblClick := OnDBTableViewTalhaoDblClick;
  DBEidTalhao.Properties.OnPopup := OnDBEidTalhaosPropertiesPopup;
  DBTableViewTalhao.OnKeyDown := OnDBTableViewTalhaoKeyDown;
  DBTableViewTalhao.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidTalhao.Properties.PopupControl := panTalhao;

      //******  PRODUTOS ******//
  panProduto.OnEnter := ProdutoEnter;
  BtnAplicarProduto.OnClick := AplicarProdutoClick;
  BtnCancelarProduto.OnClick := CancelarProdutoClick;
  BtnLimparProduto.OnClick := LimparProdutoClick;
  DBTableViewProduto.OnDblClick := OnDBTableViewProdutoDblClick;
  DBEidProduto.Properties.OnPopup := OnDBEidProdutoPropertiesPopup;
  DBTableViewProduto.OnKeyDown := OnDBTableViewProdutoKeyDown;
  DBTableViewProduto.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidProduto.Properties.PopupControl := panProduto;
end;

procedure TFrmRelAplicacao.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtInicial.SetFocus;
  PreencheSqlTalhao;
end;

procedure TFrmRelAplicacao.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
