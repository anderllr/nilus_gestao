unit uFrmRelEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, frxClass, SqlExpr, CFind, DB, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, Grids, DBGrids, CDBGrid, CDBCheckBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, CDBRadioGroup, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList;

type
  TFrmRelEstoque = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    DBEProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    cdsPadraoidProdDeposito: TIntegerField;
    cdsPadraoidProdIni: TIntegerField;
    cdsPadraoidProdFim: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    LookFabricante: TCLookUp;
    DBEidFabricante: TCDBEdit;
    CLabel31: TCLabel;
    cdsPadraoidFabricante: TIntegerField;
    cdsPadraoagrupar: TStringField;
    DBCKagrupar: TCDBCheckBox;
    cdsPadraoidProdGrupo: TIntegerField;
    cdsPadraoidProdSubGrupo: TIntegerField;
    DBCKConsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKsaldoZero: TCDBCheckBox;
    cdsPadraosaldoZero: TStringField;
    CLabel11: TCLabel;
    DBEidProdIni: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    DBEidProdFim: TCDBEdit;
    CLabel8: TCLabel;
    DBEidGrupo: TcxPopupEdit;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    DBEidSubGrupo: TcxPopupEdit;
    CLabel5: TCLabel;
    CLabel9: TCLabel;
    CLabel13: TCLabel;
    CLabel14: TCLabel;
    DBEidGrupoIni: TCDBEdit;
    DBEidGrupoFim: TCDBEdit;
    DBEidSubGrupoFim: TCDBEdit;
    DBEidSubGrupoIni: TCDBEdit;
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
    sdsGrupo: TSQLQuery;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    cdsGrupoSELECIONADO: TStringField;
    cdsGrupoidProdGrupo: TSmallintField;
    cdsGrupodescProdGrupo: TStringField;
    cdsGrupostProdGrupo: TStringField;
    dsGrupo: TDataSource;
    dsSubGrupo: TDataSource;
    cdsSubGrupo: TClientDataSet;
    StringField1: TStringField;
    cdsSubGrupoidProdSubGrupo: TSmallintField;
    cdsSubGrupodescProdSubGrupo: TStringField;
    cdsSubGrupostProdSubGrupo: TStringField;
    dspSubGrupo: TDataSetProvider;
    sdsSubGrupo: TSQLQuery;
    DBEgrupos: TCDBEdit;
    DBEsubgrupos: TCDBEdit;
    DBRGordem: TCDBRadioGroup;
    cdsPadraogrupos: TStringField;
    cdsPadraosubgrupos: TStringField;
    cdsPadraoordem: TStringField;
    cdsPadraoidGrupoIni: TIntegerField;
    cdsPadraoidGrupoFim: TIntegerField;
    cdsPadraoidSubGrupoIni: TIntegerField;
    cdsPadraoidSubGrupoFim: TIntegerField;
    cdsPadraoproducao: TStringField;
    DBCKproducao: TCDBCheckBox;
    cdsPadraoidSafra: TIntegerField;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel3: TCLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
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
  FrmRelEstoque: TFrmRelEstoque;

implementation

{$R *.dfm}

uses uDmPadrao, uFrmPrincipal, uFuncao, uDmFind;

procedure TFrmRelEstoque.actGerarExecute(Sender: TObject);
begin
//  frxRel. caminho 'D:\Sistemas\Nilus\Relatorios\RelEstoque.fr3'
 //Atribui o valor ao DBEgrupos e DBEsubGrupos
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsPadraogrupos.AsString := DBEidGrupo.Text;
  cdsPadraosubgrupos.AsString := DBEidSubGrupo.Text;
  inherited;
end;

procedure TFrmRelEstoque.AplicarGrupoClick(Sender: TObject);
begin
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_Grupo;
end;

procedure TFrmRelEstoque.AplicarSubGrupoClick(Sender: TObject);
begin
  DBEidSubGrupo.PopupWindow.Close;
  Montar_Selecao_SubGrupo;
end;

procedure TFrmRelEstoque.CancelarGrupoClick(Sender: TObject);
begin
  DBEidGrupo.PopupWindow.Close;
end;

procedure TFrmRelEstoque.CancelarSubGrupoClick(Sender: TObject);
begin
  DBEidSubGrupo.PopupWindow.Close;
end;

procedure TFrmRelEstoque.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoagrupar.AsString := 'N';
  cdsPadraosaldoZero.AsString := 'N';
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoproducao.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'S';
  DataSet.FieldByName('ordem').AsString := 'D';
end;

procedure TFrmRelEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelEstoque := nil;
end;

procedure TFrmRelEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelEstoque';
  relatorio := 'RelEstoque.fr3';
  SetLength(parametro, 19);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidCadEmpresa;
  parametro[2] := DBEProdDeposito;
  parametro[3] := DBEidProdIni;
  parametro[4] := DBEidProdFim;
  parametro[5] := DBEgrupos;
  parametro[6] := DBEsubgrupos;
  parametro[7] := DBEidFabricante;
  parametro[8] := DBCKConsolidaemp;
  parametro[9] := DBCKconsolidafilial;
  parametro[10] := DBCKagrupar;
  parametro[11] := DBCKsaldoZero;
  parametro[12] := DBCKproducao;
  parametro[13] := DBEidGrupoIni;
  parametro[14] := DBEidGrupoFim;
  parametro[15] := DBEidSubGrupoIni;
  parametro[16] := DBEidSubGrupoFim;
  parametro[17] := DBRGordem;
  parametro[18] := DBEidSafra;

  Width := 679;
  Height := 430;
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

procedure TFrmRelEstoque.FormShow(Sender: TObject);
begin
  inherited;
  DBEProdDeposito.SetFocus;
end;

procedure TFrmRelEstoque.GruposEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsGrupo.DataSet.Active) Then
     dsGrupo.DataSet.Open;
  //
end;

procedure TFrmRelEstoque.LimparGrupoClick(Sender: TObject);
begin
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_Grupo;
  //
end;

procedure TFrmRelEstoque.LimparSubGrupoClick(Sender: TObject);
begin
  DBEidSubGrupo.PopupWindow.Close;
  Limpar_Selecao_SubGrupo;
end;

procedure TFrmRelEstoque.Limpar_Selecao_Grupo;
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

procedure TFrmRelEstoque.Limpar_Selecao_SubGrupo;
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

procedure TFrmRelEstoque.Montar_Selecao_Grupo;
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

procedure TFrmRelEstoque.Montar_Selecao_SubGrupo;
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

procedure TFrmRelEstoque.OnDBEidGruposPropertiesPopup(Sender: TObject);
begin
 //
  If (cbCodGrupo.Checked) Then
     cxGridDBCodGrupo.Focused := True;
  //
  If (cbDescGrupo.Checked) Then
     cxGridDBNomeGrupo.Focused := True;
  //
end;

procedure TFrmRelEstoque.OnDBEidSubGrupoPropertiesPopup(Sender: TObject);
begin
 //
  If (cbCodSubGrupo.Checked) Then
     cxGridDBCodSubGrupo.Focused := True;
  //
  If (cbDescSubGrupo.Checked) Then
     cxGridDBNomeSubGrupo.Focused := True;
  //
end;

procedure TFrmRelEstoque.OnDBTableViewGetContentStyle(
Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  //
  If (ARecord.Values[0] = 'S') Then
     AStyle := stDestaque;
  //
end;

procedure TFrmRelEstoque.OnDBTableViewGrupoDblClick(Sender: TObject);
begin
  //
  dsGrupo.DataSet.Edit;
  //
  If (dsGrupo.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsGrupo.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsGrupo.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsGrupo.DataSet.Post;
end;

procedure TFrmRelEstoque.OnDBTableViewGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewGrupo.OnDblClick(DBTableViewGrupo);
end;

procedure TFrmRelEstoque.OnDBTableViewSubGrupoDblClick(Sender: TObject);
begin
  //
  dsSubGrupo.DataSet.Edit;
  //
  If (dsSubGrupo.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsSubGrupo.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsSubGrupo.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsSubGrupo.DataSet.Post;
end;

procedure TFrmRelEstoque.OnDBTableViewSubGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewSubGrupo.OnDblClick(DBTableViewSubGrupo);
end;

procedure TFrmRelEstoque.SubGrupoEnter(Sender: TObject);
begin
  //
  If Not(dsSubGrupo.DataSet.Active) Then
     dsSubGrupo.DataSet.Open;
  //
end;

end.
