unit uFrmRelConfRecepcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpFiscal, FMTBcd, DB, SqlExpr, CFind, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CDBCheckBox, CGroupBox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxContainer, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxNavigator,
  System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelConfRecepcao = class(TFrmPadraoRelEmpFiscal)
    frxRel: TfrxReport;
    DBEidPedidoFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidPedidoIni: TCDBEdit;
    CLabel8: TCLabel;
    DBEdtPedidoFim: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtPedidoIni: TCDBEdit;
    CLabel5: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel11: TCLabel;
    cdsPadraoidPedidoIni: TIntegerField;
    cdsPadraoidPedidoFim: TIntegerField;
    cdsPadraodtPedidoIni: TDateField;
    cdsPadraodtPedidoFim: TDateField;
    DBEidCadEmpresa: TCDBEdit;
    CGroupBox1: TCGroupBox;
    DBCKstCancelado: TCDBCheckBox;
    DBCKstTotal: TCDBCheckBox;
    DBCKstParcial: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostParcial: TBooleanField;
    cdsPadraostTotal: TBooleanField;
    cdsPadraostCancelado: TBooleanField;
    DBCKstEncerrado: TCDBCheckBox;
    cdsPadraostEncerrado: TBooleanField;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaFilial: TStringField;
    DBEidProdutoFim: TCDBEdit;
    CLabel1: TCLabel;
    DBEidProdutoIni: TCDBEdit;
    CLabel3: TCLabel;
    cdsPadraoidProdutoIni: TIntegerField;
    cdsPadraoidProdutoFim: TIntegerField;
    cdsPadraolistaFornecedor: TStringField;
    cdsPadraosomentePendente: TStringField;
    DBCKsomentePendente: TCDBCheckBox;
    DBCKlistaFornecedor: TCDBCheckBox;
    dspSubGrupo: TDataSetProvider;
    sdsSubGrupo: TSQLQuery;
    cdsSubGrupo: TClientDataSet;
    StringField1: TStringField;
    cdsSubGrupoidProdSubGrupo: TSmallintField;
    cdsSubGrupodescProdSubGrupo: TStringField;
    cdsSubGrupostProdSubGrupo: TStringField;
    dsSubGrupo: TDataSource;
    dsGrupo: TDataSource;
    cdsGrupo: TClientDataSet;
    cdsGrupoSELECIONADO: TStringField;
    cdsGrupoidProdGrupo: TSmallintField;
    cdsGrupodescProdGrupo: TStringField;
    cdsGrupostProdGrupo: TStringField;
    dspGrupo: TDataSetProvider;
    sdsGrupo: TSQLQuery;
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
    DBEidGrupo: TcxPopupEdit;
    DBEidSubGrupo: TcxPopupEdit;
    CLabel12: TCLabel;
    CLabel10: TCLabel;
    cdsPadraogrupos: TStringField;
    cdsPadraosubgrupos: TStringField;
    DBEgrupos: TCDBEdit;
    DBEsubgrupos: TCDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelClosePreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
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
        //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelConfRecepcao: TFrmRelConfRecepcao;

implementation

uses uDmPadrao, uFuncao, uDmFind, uFrmPrincipal;

{$R *.dfm}

//*********************************************************************************
// ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
//*********************************************************************************
//*****************************************************************************//
        //*********   GRUPOS DE PRODUTOS   ************//
procedure TFrmRelConfRecepcao.Montar_Selecao_Grupo;
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
procedure TFrmRelConfRecepcao.Limpar_Selecao_Grupo;
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
procedure TFrmRelConfRecepcao.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupo.DataSet.Active) Then
     dsGrupo.DataSet.Open;
  //
end;
procedure TFrmRelConfRecepcao.AplicarGrupoClick(Sender: TObject);
begin
  //
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_Grupo;
  //
end;
procedure TFrmRelConfRecepcao.CancelarGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelConfRecepcao.LimparGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_Grupo;
  //
end;
procedure TFrmRelConfRecepcao.OnDBTableViewGrupoDblClick(
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
procedure TFrmRelConfRecepcao.OnDBEidGruposPropertiesPopup(Sender: TObject);
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
procedure TFrmRelConfRecepcao.OnDBTableViewGrupoKeyDown(Sender: TObject;
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
        //*********   SUB-GRUPOS DE PRODUTOS   ************//
procedure TFrmRelConfRecepcao.Montar_Selecao_SubGrupo;
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
procedure TFrmRelConfRecepcao.Limpar_Selecao_SubGrupo;
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
procedure TFrmRelConfRecepcao.SubGrupoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsSubGrupo.DataSet.Active) Then
     dsSubGrupo.DataSet.Open;
  //
end;
procedure TFrmRelConfRecepcao.AplicarSubGrupoClick(Sender: TObject);
begin
  //
  DBEidSubGrupo.PopupWindow.Close;
  Montar_Selecao_SubGrupo;
  //
end;
procedure TFrmRelConfRecepcao.CancelarSubGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSubGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelConfRecepcao.LimparSubGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSubGrupo.PopupWindow.Close;
  Limpar_Selecao_SubGrupo;
  //
end;
procedure TFrmRelConfRecepcao.OnDBTableViewSubGrupoDblClick(
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
procedure TFrmRelConfRecepcao.OnDBEidSubGrupoPropertiesPopup(Sender: TObject);
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
procedure TFrmRelConfRecepcao.OnDBTableViewSubGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewSubGrupo.OnDblClick(DBTableViewSubGrupo);
  //
end;
//******************************************************************************

//******************************************************************************
        //*********   COMUM A TODOS  ************//

procedure TFrmRelConfRecepcao.OnDBTableViewGetContentStyle(
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

procedure TFrmRelConfRecepcao.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, status : string;
begin
  inherited;
  cdsRelatorio.Active := false;

    //Atribui o valor ao DBEgrupos e DBEsubGrupos
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsPadraogrupos.AsString := DBEidGrupo.Text;
  cdsPadraosubgrupos.AsString := DBEidSubGrupo.Text;

  status := '';
  if cdsPadraostAtivo.AsBoolean then
    status := 'ATIVO';

  if cdsPadraostParcial.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + 'PARCIAL'
    else
      status := 'PARCIAL';

  if cdsPadraostTotal.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + 'TOTAL'
    else
      status := 'TOTAL';

  if cdsPadraostEncerrado.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + 'ENCERRADO'
    else
      status := 'ENCERRADO';

  if cdsPadraostCancelado.AsBoolean then
    if trim(status) <> '' then
      status := status + ', ' + 'CANCELADO'
    else
      status := 'CANCELADO';

  sql := 'EXEC spRelConfRecepcao ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
         funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
         funcao.RetornaValorEField(DBEidPedidoIni, 3) + ', ' +
         funcao.RetornaValorEField(DBEidPedidoFim, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtPedidoIni, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtPedidoFim, 3) + ', ' +
         funcao.RetornaValorEField(DBEidProdutoIni, 3) + ', ' +
         funcao.RetornaValorEField(DBEidProdutoFim, 3) + ', ' +
         funcao.RetornaValorEField(DBCKlistaFornecedor, 3) + ', ' +
         funcao.RetornaValorEField(DBCKsomentePendente, 3) + ', ' +
         funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', ' +
         funcao.RetornaValorEField(DBEgrupos, 3) + ', ' +
         funcao.RetornaValorEField(DBEsubgrupos, 3) + ', ';

  if trim(status) <> '' then
    sql := sql + QuotedStr('(' + status + ')')
  else
    sql := sql + 'NULL';

  cdsRelatorio.CommandText := sql;

  caminho_rel := dmPadrao.RetornaConfig('caminho_rel');
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport;
end;

procedure TFrmRelConfRecepcao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraostAtivo.AsBoolean := true;
  cdsPadraostParcial.AsBoolean := true;
  cdsPadraostTotal.AsBoolean := true;
  cdsPadraostEncerrado.AsBoolean := true;
  cdsPadraostCancelado.AsBoolean := false;
  cdsPadraoconsolidaFilial.AsString := 'N';
  cdsPadraolistaFornecedor.AsString := 'S';
  cdsPadraosomentePendente.AsString := 'S';
end;

procedure TFrmRelConfRecepcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmPadrao.cdsEmpresaContabil.Active := false;
  inherited;
  frmRelConfRecepcao := nil;
end;

procedure TFrmRelConfRecepcao.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := true;
  relatorio := 'RelConfRecepcao.fr3';
  par := 0;

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
end;

procedure TFrmRelConfRecepcao.FormShow(Sender: TObject);
begin
  inherited;
  Height := 390;
  Width := 545;
end;

procedure TFrmRelConfRecepcao.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

end.
