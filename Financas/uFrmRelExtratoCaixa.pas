unit uFrmRelExtratoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB,frxClass, frxDBSet, frxExportCSV,
  frxExportODF, frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CDBCheckBox, CGroupBox, frxExportMail, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, System.Actions, System.ImageList;

type
  TFrmRelExtratoCaixa = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    frxRel: TfrxReport;
    FindCaixa: TCFind;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBEidCaixa1: TCDBEdit;
    CLabel11: TCLabel;
    DBEidCaixa: TcxPopupEdit;
    CLabel10: TCLabel;
    panGrupos: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label5: TLabel;
    GridGrupo: TcxGrid;
    DBTableViewGrupo: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    BtnAplicarGrupo: TCBitBtn;
    BtnCancelarGrupo: TCBitBtn;
    BtnLimparGrupo: TCBitBtn;
    cbCodGrupo: TcxCheckBox;
    cbDescGrupo: TcxCheckBox;
    dsCaixa: TDataSource;
    cdsCaixa: TClientDataSet;
    cdsCaixaSELECIONADO: TStringField;
    dspCaixa: TDataSetProvider;
    sdsCaixa: TSQLQuery;
    cdsCaixaidEmpresa: TIntegerField;
    cdsCaixaidCaixa: TIntegerField;
    cdsCaixadescCaixa: TStringField;
    cdsCaixastCaixa: TStringField;
    cdsCaixacdPlanoContaF: TIntegerField;
    cdsCaixacdPlanoContaG: TIntegerField;
    cdsCaixaIntegraLote: TStringField;
    DBTableViewGrupoidCaixa: TcxGridDBColumn;
    DBTableViewGrupodescCaixa: TcxGridDBColumn;
    cdsPadraoidCaixa: TStringField;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
     stDestaque: TcxStyle;
    //*********   Caixas  ************//
      Procedure Montar_Selecao_Caixa;
      Procedure Limpar_Selecao_Caixa;
      procedure CaixaEnter(Sender: TObject);
      procedure AplicarCaixaClick(Sender: TObject);
      procedure CancelarCaixaClick(Sender: TObject);
      procedure LimparCaixaClick(Sender: TObject);
      procedure OnDBTableViewCaixaDblClick(Sender: TObject);
      procedure OnDBEidCaixaPropertiesPopup(Sender: TObject);
      procedure OnDBTableViewCaixaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);


      //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  public
    { Public declarations }
  end;

var
  FrmRelExtratoCaixa: TFrmRelExtratoCaixa;

implementation

uses uFuncao, uDmPadrao, uFrmPadraoRel, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelExtratoCaixa.actGerarExecute(Sender: TObject);
var
  sql : string;
begin
  sql := 'DELETE FROM tmpSaldoMovCaixa';
  dmPadrao.dbConexao.ExecuteDirect(sql);
  if (trim(DBEidCaixa.text) = '')then
  begin
    messagedlg('O Caixa deve ser informado, para a realização do Extrato !', mtwarning, [mbok], 0);
    DBEidCaixa.SetFocus;
    exit;
  end;

  cdsPadraoidCaixa.AsString := DBEidCaixa.Text;
 {
   sql := 'EXEC spRetSaldoCaixa ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.Text + ',' +
                                     funcao.RetornaValorEField(DBEidCaixa1, 3) + ',' +
                                     funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                                     funcao.RetornaValorEField(DBEdtFinal, 3);
  dmPadrao.dbConexao.ExecuteDirect(sql);}
  inherited;
//  cdsRelatorio.Active := false;
//  cdsRelatorio.CommandText := 'EXEC spRelExtratoBancario ' + DBEidEmpresa.text + ',' +
//                               funcao.RetornaValorEField(DBEidCaixa, 3) + ',' +
//                               funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
//                               funcao.RetornaValorEField(DBEdtFinal, 3);
//  frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelExtratoBancario.fr3');
//  frxReport1.ShowReport;
end;

procedure TFrmRelExtratoCaixa.AplicarCaixaClick(Sender: TObject);
begin
  DBEidCaixa.PopupWindow.Close;
  Montar_Selecao_Caixa;
end;

procedure TFrmRelExtratoCaixa.CaixaEnter(Sender: TObject);
begin
  inherited;
  if cdsPadraoconsolidaemp.AsString = 'S' then
  begin
    cdsCaixa.Active := False;
    cdsCaixa.CommandText := 'SELECT * FROM Caixa WHERE stCaixa = ' + QuotedStr('ATIVO');
    If Not(dsCaixa.DataSet.Active) Then
       dsCaixa.DataSet.Open;
  end
  else
  begin
    cdsCaixa.Active := False;
    cdsCaixa.CommandText := 'SELECT * FROM Caixa WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
                            ' AND stCaixa = ' + QuotedStr('ATIVO');
    If Not(dsCaixa.DataSet.Active) Then
       dsCaixa.DataSet.Open;
  end;
end;

procedure TFrmRelExtratoCaixa.CancelarCaixaClick(Sender: TObject);
begin
  inherited;
  DBEidCaixa.PopupWindow.Close;
end;

procedure TFrmRelExtratoCaixa.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'N';
end;

procedure TFrmRelExtratoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelExtratoCaixa := nil;
end;

procedure TFrmRelExtratoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelExtratoCaixa';
  relatorio := 'RelExtratoCaixa.fr3';
  SetLength(parametro, 7);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidCadEmpresa;
  parametro[2] := DBEidCaixa1;
  parametro[3] := DBEdtInicial;
  parametro[4] := DBEdtFinal;
  parametro[5] := DBCKconsolidaemp;
  parametro[6] := DBCKconsolidafilial;
  Width := 520;
  Height := 185;
  fiscal := true;

  //******  Caixa ******//
  panGrupos.OnEnter := CaixaEnter;
  BtnAplicarGrupo.OnClick := AplicarCaixaClick;
  BtnCancelarGrupo.OnClick := CancelarCaixaClick;
  BtnLimparGrupo.OnClick := LimparCaixaClick;
  DBTableViewGrupo.OnDblClick := OnDBTableViewCaixaDblClick;
  DBEidCaixa.Properties.OnPopup := OnDBEidCaixaPropertiesPopup;
  DBTableViewGrupo.OnKeyDown := OnDBTableViewCaixaKeyDown;
  DBTableViewGrupo.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidCaixa.Properties.PopupControl := panGrupos;

end;

procedure TFrmRelExtratoCaixa.FormShow(Sender: TObject);
begin
  inherited;
  DBEidCaixa.SetFocus;
end;

procedure TFrmRelExtratoCaixa.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelExtratoCaixa.LimparCaixaClick(Sender: TObject);
begin
  inherited;
  DBEidCaixa.PopupWindow.Close;
  Limpar_Selecao_Caixa;
end;

procedure TFrmRelExtratoCaixa.Limpar_Selecao_Caixa;
Var bReg: Pointer;
begin
  with dscaixa do
  begin
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;

    While Not(DataSet.Eof) Do
    Begin
      If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
      Begin
        DataSet.Edit;
        DataSet.FieldByName('SELECIONADO').AsString := 'N';
        DataSet.Post;
      End;
      DataSet.Next;
    End;
    DBEidCaixa.Text := '';
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    DataSet.EnableControls;
  end; //fim do with
end;

procedure TFrmRelExtratoCaixa.Montar_Selecao_Caixa;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  with dsCaixa do
  begin
    sCodigos := TStringList.Create();
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;
    While Not(DataSet.Eof) Do
    Begin
      If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
         sCodigos.Add(DataSet.FieldByName('idCaixa').Text);
      DataSet.Next;
    End;

    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);
    funcao.ASort(iCodigos);
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    DBEidCaixa.Text := funcao.SepararValores(aCodigos, ', ');
    sCodigos.Free;
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    DataSet.EnableControls;
  end; // fim do withend;
end;

procedure TFrmRelExtratoCaixa.OnDBEidCaixaPropertiesPopup(Sender: TObject);
begin
  If (cbCodGrupo.Checked) Then
     DBTableViewGrupoidCaixa.Focused := True;
  If (cbDescGrupo.Checked) Then
     DBTableViewGrupodescCaixa.Focused := True;
end;

procedure TFrmRelExtratoCaixa.OnDBTableViewCaixaDblClick(Sender: TObject);
begin
inherited;
  dsCaixa.DataSet.Edit;
  If (dsCaixa.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
    dsCaixa.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
    dsCaixa.DataSet.FieldByName('SELECIONADO').asString := 'N';
  dsCaixa.DataSet.Post;
end;

procedure TFrmRelExtratoCaixa.OnDBTableViewCaixaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_Return) And (ssShift in Shift) Then
    DBTableViewGrupo.OnDblClick(DBTableViewGrupo);
end;

procedure TFrmRelExtratoCaixa.OnDBTableViewGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  If (ARecord.Values[0] = 'S') Then
     AStyle := stDestaque;
end;

end.
