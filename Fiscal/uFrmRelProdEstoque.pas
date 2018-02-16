unit uFrmRelProdEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CDBCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, CDBRadioGroup, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelProdEstoque = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidProdIni: TIntegerField;
    cdsPadraoidProdFim: TIntegerField;
    cdsPadraoidProdDeposito: TIntegerField;
    DBEProdDeposito: TCDBEdit;
    CLabel1: TCLabel;
    LookProdDeposito: TCLookUp;
    DBEidCultura: TCDBEdit;
    LookCultura: TCLookUp;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidCultura: TIntegerField;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    cdsPadraoconsolida: TStringField;
    frxRel: TfrxReport;
    SQLDataSet1: TSQLDataSet;
    SQLQuery1: TSQLQuery;
    SQLQuery1dtEstoque: TSQLTimeStampField;
    SQLQuery1tpDocumento: TStringField;
    SQLQuery1idDocSerie: TStringField;
    SQLQuery1nrDocumento: TIntegerField;
    SQLQuery1OrigemDest: TStringField;
    SQLQuery1descSafra: TStringField;
    SQLQuery1descCultura: TStringField;
    SQLQuery1idProduto: TIntegerField;
    SQLQuery1descProduto: TStringField;
    SQLQuery1qtEstoque: TFMTBCDField;
    SQLQuery1Tipo: TStringField;
    SQLQuery1descProdMedida: TStringField;
    SQLQuery1vlEstoque: TFMTBCDField;
    SQLQuery1CustoMedio: TFMTBCDField;
    SQLQuery1qtSaldo: TFMTBCDField;
    SQLQuery1descProdDeposito: TStringField;
    SQLQuery1idEmpresa: TIntegerField;
    SQLQuery1descCadEmpresa: TStringField;
    SQLQuery1qtEntradas: TFMTBCDField;
    SQLQuery1qtSaidas: TFMTBCDField;
    SQLQuery1idProdDeposito: TSmallintField;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEProdIni: TCDBEdit;
    CLabel11: TCLabel;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    DBEProdFim: TCDBEdit;
    CLabel8: TCLabel;
    DBEidGrupo: TcxPopupEdit;
    DBEidSubGrupo: TcxPopupEdit;
    CLabel12: TCLabel;
    CLabel10: TCLabel;
    DBEidGrupoIni: TCDBEdit;
    CLabel5: TCLabel;
    DBEidGrupoFim: TCDBEdit;
    CLabel9: TCLabel;
    DBEidSubGrupoFim: TCDBEdit;
    CLabel13: TCLabel;
    DBEidSubGrupoIni: TCDBEdit;
    CLabel14: TCLabel;
    cdsPadraoidGrupoIni: TIntegerField;
    cdsPadraoidGrupoFim: TIntegerField;
    cdsPadraoidSubGrupoIni: TIntegerField;
    cdsPadraoidSubGrupoFim: TIntegerField;
    cdsGrupo: TClientDataSet;
    cdsGrupoSELECIONADO: TStringField;
    dsGrupo: TDataSource;
    dspGrupo: TDataSetProvider;
    sdsGrupo: TSQLQuery;
    cdsGrupoidProdGrupo: TSmallintField;
    cdsGrupodescProdGrupo: TStringField;
    cdsGrupostProdGrupo: TStringField;
    cdsSubGrupo: TClientDataSet;
    StringField1: TStringField;
    dsSubGrupo: TDataSource;
    dspSubGrupo: TDataSetProvider;
    sdsSubGrupo: TSQLQuery;
    cdsSubGrupoidProdSubGrupo: TSmallintField;
    cdsSubGrupodescProdSubGrupo: TStringField;
    cdsSubGrupostProdSubGrupo: TStringField;
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
    CGroupBox2: TCGroupBox;
    DBCKsaldozero: TCDBCheckBox;
    DBCKconsolida: TCDBCheckBox;
    cdsPadraosaldozero: TStringField;
    DBRGordem: TCDBRadioGroup;
    cdsPadraoordem: TStringField;
    cdsPadraogrupos: TStringField;
    cdsPadraosubgrupos: TStringField;
    DBEsubgrupos: TCDBEdit;
    CLabel15: TCLabel;
    DBEgrupos: TCDBEdit;
    CLabel16: TCLabel;
    CGroupBox3: TCGroupBox;
    DBCKnfs: TCDBCheckBox;
    DBCKnfe: TCDBCheckBox;
    DBCKapl: TCDBCheckBox;
    DBCKmaq: TCDBCheckBox;
    DBCKmov: TCDBCheckBox;
    DBCKrom: TCDBCheckBox;
    DBCKman: TCDBCheckBox;
    cdsPadraonfe: TStringField;
    cdsPadraonfs: TStringField;
    cdsPadraomov: TStringField;
    cdsPadraoapl: TStringField;
    cdsPadraomaq: TStringField;
    cdsPadraorom: TStringField;
    cdsPadraoman: TStringField;
    cdsPadraotpDocumento: TStringField;
    DBEtpDocumento: TCDBEdit;
    DBCKaba: TCDBCheckBox;
    cdsPadraoaba: TStringField;
    DBCKcom: TCDBCheckBox;
    cdsPadraocom: TStringField;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  end;

var
  FrmRelProdEstoque: TFrmRelProdEstoque;

implementation

uses uDmPadrao, uDmFind, uFuncao;

{$R *.dfm}

//*********************************************************************************
// ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
//*********************************************************************************
//*****************************************************************************//
        //*********   GRUPOS DE PRODUTOS   ************//
procedure TFrmRelProdEstoque.Montar_Selecao_Grupo;
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
procedure TFrmRelProdEstoque.Limpar_Selecao_Grupo;
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
procedure TFrmRelProdEstoque.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupo.DataSet.Active) Then
     dsGrupo.DataSet.Open;
  //
end;
procedure TFrmRelProdEstoque.AplicarGrupoClick(Sender: TObject);
begin
  //
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_Grupo;
  //
end;
procedure TFrmRelProdEstoque.CancelarGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelProdEstoque.LimparGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_Grupo;
  //
end;
procedure TFrmRelProdEstoque.OnDBTableViewGrupoDblClick(
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
procedure TFrmRelProdEstoque.OnDBEidGruposPropertiesPopup(Sender: TObject);
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
procedure TFrmRelProdEstoque.OnDBTableViewGrupoKeyDown(Sender: TObject;
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
procedure TFrmRelProdEstoque.Montar_Selecao_SubGrupo;
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
procedure TFrmRelProdEstoque.Limpar_Selecao_SubGrupo;
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
procedure TFrmRelProdEstoque.SubGrupoEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsSubGrupo.DataSet.Active) Then
     dsSubGrupo.DataSet.Open;
  //
end;
procedure TFrmRelProdEstoque.AplicarSubGrupoClick(Sender: TObject);
begin
  //
  DBEidSubGrupo.PopupWindow.Close;
  Montar_Selecao_SubGrupo;
  //
end;
procedure TFrmRelProdEstoque.CancelarSubGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSubGrupo.PopupWindow.Close;
  //

end;
procedure TFrmRelProdEstoque.LimparSubGrupoClick(Sender: TObject);
begin
  inherited;
  //
  DBEidSubGrupo.PopupWindow.Close;
  Limpar_Selecao_SubGrupo;
  //
end;
procedure TFrmRelProdEstoque.OnDBTableViewSubGrupoDblClick(
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
procedure TFrmRelProdEstoque.OnDBEidSubGrupoPropertiesPopup(Sender: TObject);
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
procedure TFrmRelProdEstoque.OnDBTableViewSubGrupoKeyDown(Sender: TObject;
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

procedure TFrmRelProdEstoque.OnDBTableViewGetContentStyle(
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

procedure TFrmRelProdEstoque.actGerarExecute(Sender: TObject);
var
  str : String;
begin
  //Atribui o valor ao DBEgrupos e DBEsubGrupos
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsPadraogrupos.AsString := DBEidGrupo.Text;
  cdsPadraosubgrupos.AsString := DBEidSubGrupo.Text;
  if DBCKnfe.Checked then
    str := 'NFE' + ',';
  if DBCKnfs.Checked then
    str := str + 'NFS' + ',';
  if DBCKmov.Checked then
    str := str + 'MOV' + ',';
  if DBCKapl.Checked then
    str := str + 'APL' + ',';
  if DBCKmaq.Checked then
    str := str + 'MAQ' + ',';
  if DBCKrom.Checked then
    str := str + 'ROM' + ',';
  if DBCKman.Checked then
    str := str + 'MAN' + ',';
  if DBCKaba.Checked then
    str := str + 'ABA' + ',';
  if DBCKcom.Checked then
    str := str + 'COM';
  cdsPadraotpDocumento.AsString := str;
  Inherited;
  //
end;

procedure TFrmRelProdEstoque.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolida').AsString := 'S';
  DataSet.FieldByName('saldozero').AsString := 'S';
  DataSet.FieldByName('apl').AsString := 'S';
  DataSet.FieldByName('nfe').AsString := 'S';
  DataSet.FieldByName('nfs').AsString := 'S';
  DataSet.FieldByName('mov').AsString := 'S';
  DataSet.FieldByName('maq').AsString := 'S';
  DataSet.FieldByName('rom').AsString := 'S';
  DataSet.FieldByName('man').AsString := 'S';
  DataSet.FieldByName('aba').AsString := 'S';
  DataSet.FieldByName('com').AsString := 'S';
  DataSet.FieldByName('ordem').AsString := 'P';
end;

procedure TFrmRelProdEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelProdEstoque := nil;
end;

procedure TFrmRelProdEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelProdEstoque';
  relatorio := 'RelProdEstoque.fr3';
  SetLength(parametro, 19);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidCadEmpresa;
  parametro[2] := DBEProdIni;
  parametro[3] := DBEProdFim;
  parametro[4] := DBEdtInicial;
  parametro[5] := DBEdtFinal;
  parametro[6] := DBEProdDeposito;
  parametro[7] := DBEidCultura;
  parametro[8] := DBEidSafra;
  parametro[9] := DBCKconsolida;
  parametro[10] := DBEgrupos;
  parametro[11] := DBEsubgrupos;
  parametro[12] := DBEidGrupoIni;
  parametro[13] := DBEidGrupoFim;
  parametro[14] := DBEidSubGrupoIni;
  parametro[15] := DBEidSubGrupoFim;
  parametro[16] := DBCKsaldozero;
  parametro[17] := DBRGordem;
  parametro[18] := DBEtpDocumento;

  Width := 555;
  Height := 572;
  fiscal := true;


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

procedure TFrmRelProdEstoque.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtInicial.SetFocus;
end;

procedure TFrmRelProdEstoque.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
