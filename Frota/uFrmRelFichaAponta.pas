unit uFrmRelFichaAponta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpFiscal, FMTBcd, DB, SqlExpr, CFind, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList;

type
  TFrmRelFichaAponta = class(TFrmPadraoRelEmpFiscal)
    frxRel: TfrxReport;
    DBEqtLinha: TCDBEdit;
    CLabel8: TCLabel;
    DBEidMaquina: TcxPopupEdit;
    LblCad: TCLabel;
    CLabel1: TCLabel;
    DBEqtFicha: TCDBEdit;
    cdsPadraomaquinas: TStringField;
    cdsPadraoqtLinha: TIntegerField;
    cdsPadraoqtFicha: TIntegerField;
    cdsMaquina: TClientDataSet;
    cdsMaquinaSELECIONADO: TStringField;
    dsMaquina: TDataSource;
    dspMaquina: TDataSetProvider;
    sdsMaquina: TSQLQuery;
    panMaquina: TPanel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    GridSegmento: TcxGrid;
    DBTableViewMaquina: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBCodMaquina: TcxGridDBColumn;
    cxGridDBdescMaquina: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    BtnAplicarMaquina: TCBitBtn;
    BtnCancelarMaquina: TCBitBtn;
    BtnLimparMaquina: TCBitBtn;
    cbCodMaquina: TcxCheckBox;
    cbNomeMaquina: TcxCheckBox;
    cdsMaquinaidMaquina: TIntegerField;
    cdsMaquinadescMaquina: TStringField;
    cdsMaquinastMaquina: TStringField;
    cdsRelatoriodescMaquina: TStringField;
    cdsRelatoriocampo: TStringField;
    cdsRelatorioidFicha: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelClosePreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LimpaRelatorio;
  private
    { Private declarations }
    stDestaque: TcxStyle;

    //*********   SEGMENTOS   ************//
    Procedure Montar_Selecao_Maquina;
    Procedure Limpar_Selecao_Maquina;
    procedure MaquinaEnter(Sender: TObject);
    procedure AplicarMaquinaClick(Sender: TObject);
    procedure CancelarMaquinaClick(Sender: TObject);
    procedure LimparMaquinaClick(Sender: TObject);
    procedure OnDBTableViewMaquinaDblClick(Sender: TObject);
    procedure OnDBEidMaquinaPropertiesPopup(Sender: TObject);
    procedure OnDBTableViewMaquinaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    //
    //*********   COMUM A TODOS   ************//
    procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                           AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelFichaAponta: TFrmRelFichaAponta;

implementation

uses uDmPadrao, uFuncao, uDmFind, uFrmPrincipal;

{$R *.dfm}

        //*********   MaquinaS  ************//
procedure TFrmRelFichaAponta.Montar_Selecao_Maquina;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsMaquina do
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
             sCodigos.Add(DataSet.FieldByName('idMaquina').Text);
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
    DBEidMaquina.Text := funcao.SepararValores(aCodigos, ', ');
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
procedure TFrmRelFichaAponta.Limpar_Selecao_Maquina;
Var bReg: Pointer;
begin
  with dsMaquina do
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
    DBEidMaquina.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelFichaAponta.MaquinaEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsMaquina.DataSet.Active) Then
     dsMaquina.DataSet.Open;
  //
end;
procedure TFrmRelFichaAponta.AplicarMaquinaClick(Sender: TObject);
begin
  inherited;
  //
  DBEidMaquina.PopupWindow.Close;
  Montar_Selecao_Maquina;
  //
end;
procedure TFrmRelFichaAponta.CancelarMaquinaClick(Sender: TObject);
begin
  inherited;
  //
  DBEidMaquina.PopupWindow.Close;
  //
end;
procedure TFrmRelFichaAponta.LimpaRelatorio;
begin
  with cdsRelatorio do
  begin
    First;
    while not eof do
    begin
      First;
      Delete;
    end;
  end;
end;

procedure TFrmRelFichaAponta.LimparMaquinaClick(Sender: TObject);
begin
  inherited;
  //
  DBEidMaquina.PopupWindow.Close;
  Limpar_Selecao_Maquina;
  //
end;

procedure TFrmRelFichaAponta.OnDBTableViewMaquinaDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsMaquina.DataSet.Edit;
  //
  If (dsMaquina.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsMaquina.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsMaquina.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsMaquina.DataSet.Post;
  //
end;
procedure TFrmRelFichaAponta.OnDBEidMaquinaPropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //
  If (cbCodMaquina.Checked) Then
     cxGridDBCodMaquina.Focused := True;
  //
  If (cbNomeMaquina.Checked) Then
     cxGridDBDescMaquina.Focused := True;
  //
end;

procedure TFrmRelFichaAponta.OnDBTableViewMaquinaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewMaquina.OnDblClick(DBTableViewMaquina);
  //
end;
//******************************************************************************
        //*********   COMUM A TODOS  ************//

procedure TFrmRelFichaAponta.OnDBTableViewGetContentStyle(
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

procedure TFrmRelFichaAponta.actGerarExecute(Sender: TObject);
var
  sql : string;
  i, j : integer;
begin
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
   cdsPadrao.Edit;

  if cdsPadraoqtLinha.AsInteger = 0 then
    cdsPadraoqtLinha.AsInteger := 10;

  if cdsPadraoqtFicha.AsInteger = 0 then
    cdsPadraoqtFicha.AsInteger := 1;

  if trim(DBEidMaquina.Text) = '' then //só para pegar um registro qualquer para impressão da ficha em branco
    sql := 'SELECT TOP 1 CONVERT(VARCHAR(100), ' + QuotedStr('') + ') descMaquina FROM CadGeral'
  else
    sql := 'SELECT descMaquina FROM Maquina WHERE idMaquina IN (' + DBEidMaquina.Text + ')';

  LimpaRelatorio;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    for i := 1 to cdsPadraoqtFicha.AsInteger do
    begin
      for j := 1 to cdsPadraoqtLinha.AsInteger do
      begin
        cdsRelatorio.Append;
        cdsRelatorioidFicha.AsInteger := i;
        cdsRelatoriodescMaquina.AsString := FieldByName('descMaquina').AsString;
        cdsRelatorio.Post;
      end; // fim do for j := 1 to cdsPadraoqtLinha.AsInteger do -- determina as linhas
    end; //fim do for que determina a quantidade de fichas
  end;

  inherited;
end;

procedure TFrmRelFichaAponta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmRelFichaAponta := nil;
end;

procedure TFrmRelFichaAponta.FormCreate(Sender: TObject);
begin
  inherited;
       //******  MÁQUINAS ******//
  panMaquina.OnEnter := MaquinaEnter;
  BtnAplicarMaquina.OnClick := AplicarMaquinaClick;
  BtnCancelarMaquina.OnClick := CancelarMaquinaClick;
  BtnLimparMaquina.OnClick := LimparMaquinaClick;
  DBTableViewMaquina.OnDblClick := OnDBTableViewMaquinaDblClick;
  DBEidMaquina.Properties.OnPopup := OnDBEidMaquinaPropertiesPopup;
  DBTableViewMaquina.OnKeyDown := OnDBTableViewMaquinaKeyDown;
  DBTableViewMaquina.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidMaquina.Properties.PopupControl := panMaquina;

  cdsRelatorio.CreateDataSet;
  fiscal := false;
  relatorio := 'RelFichaApontamento.fr3';
  par := 0;
end;

procedure TFrmRelFichaAponta.FormShow(Sender: TObject);
begin
  inherited;
  Height := 250;
  Width := 545;

end;

procedure TFrmRelFichaAponta.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;
end;

end.
