unit uFrmRelExtratoBancario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, StdCtrls, CGroupBox, SqlExpr, CFind,
  DB, frxClass, frxDBSet, frxExportCSV, frxExportMail, frxExportODF,
  frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, CLookUp, Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CLabel, CCheckBox, CDBCheckBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxNavigator, System.Actions, System.ImageList;

type
  TFrmRelExtratoBancario = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel8: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidConta: TCDBEdit;
    FindConta: TCFind;
    cdsPadraoidConta: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    frxRel: TfrxReport;
    cdsPadraoidEmpresa: TIntegerField;
    cdsRelLancamento: TClientDataSet;
    dspReLancamento: TDataSetProvider;
    frxDBRelLancamento: TfrxDBDataset;
    cdsPadraoconsolida: TStringField;
    DBCBLimite: TCDBCheckBox;
    cdsPadraoLimite: TStringField;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    DBCBConsolida: TCDBCheckBox;
    cdsConta: TClientDataSet;
    dsConta: TDataSource;
    dspConta: TDataSetProvider;
    sdsConta: TSQLQuery;
    CLabel10: TCLabel;
    DBEidContas: TcxPopupEdit;
    CLabel1: TCLabel;
    panConta: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label5: TLabel;
    GridConta: TcxGrid;
    DBTableViewConta: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBCodConta: TcxGridDBColumn;
    cxGridDBNomeConta: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    BtnAplicarConta: TCBitBtn;
    BtnCancelarConta: TCBitBtn;
    BtnLimparConta: TCBitBtn;
    cbCodConta: TcxCheckBox;
    cbDescConta: TcxCheckBox;
    cdsContaidEmpresa: TIntegerField;
    cdsContaidConta: TIntegerField;
    cdsContaidBanco: TIntegerField;
    cdsContaidAgencia: TStringField;
    cdsContaidContaCorrente: TStringField;
    cdsContadescConta: TStringField;
    cdsContavlLimite: TFMTBCDField;
    cdsContastConta: TStringField;
    cdsPadraoContas: TStringField;
    CLabel5: TCLabel;
    cdsContaSELECIONADO: TStringField;
    cdsPadraolancFuturo: TStringField;
    DBCKlancFuturo: TCDBCheckBox;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure DBEdtInicialExit(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure AtribuiConta;
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);

  private
    { Private declarations }
    vlAnterior : string;
    stDestaque: TcxStyle;
    //*********************************************************************************
    // ROTINAS DE CONFIGURAÇÃO DAS CONTAS E GRIDS - DEPOIS É SÓ COPIAR
   //*********************************************************************************
        //*********   CONTAS BANCÁRIAS   ************//
        Procedure Montar_Selecao_Conta;
        Procedure Limpar_Selecao_Conta;
        procedure ContasEnter(Sender: TObject);
        procedure AplicarContaClick(Sender: TObject);
        procedure CancelarContaClick(Sender: TObject);
        procedure LimparContaClick(Sender: TObject);
        procedure OnDBTableViewContaDblClick(Sender: TObject);
        procedure OnDBEidContasPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewContaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

        //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  public
    { Public declarations }
  end;

var
  FrmRelExtratoBancario: TFrmRelExtratoBancario;

implementation

uses uFuncao, uDmPadrao, uFrmPadraoRel;

{$R *.dfm}

//*********************************************************************************
// ROTINAS DE CONFIGURAÇÃO DAS CONTAS E GRIDS - DEPOIS É SÓ COPIAR
//*********************************************************************************
//*****************************************************************************//
        //*********   CONTAS BANCÁRIAS   ************//
procedure TFrmRelExtratoBancario.Montar_Selecao_Conta;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsConta do
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
             sCodigos.Add(DataSet.FieldByName('idConta').Text);
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
    DBEidContas.Text := funcao.SepararValores(aCodigos, ', ');
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
procedure TFrmRelExtratoBancario.Limpar_Selecao_Conta;
Var bReg: Pointer;
begin
  with dsConta do
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
    DBEidContas.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelExtratoBancario.ContasEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsConta.DataSet.Active) Then
     dsConta.DataSet.Open;
  //
end;
procedure TFrmRelExtratoBancario.AplicarContaClick(Sender: TObject);
begin
  //
  DBEidContas.PopupWindow.Close;
  Montar_Selecao_Conta;
  //
end;
procedure TFrmRelExtratoBancario.CancelarContaClick(Sender: TObject);
begin
  inherited;
  //
  DBEidContas.PopupWindow.Close;
  //

end;
procedure TFrmRelExtratoBancario.LimparContaClick(Sender: TObject);
begin
  inherited;
  //
  DBEidContas.PopupWindow.Close;
  Limpar_Selecao_Conta;
  //
end;
procedure TFrmRelExtratoBancario.OnDBTableViewContaDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsConta.DataSet.Edit;
  //
  If (dsConta.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsConta.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsConta.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsConta.DataSet.Post;
  //
end;
procedure TFrmRelExtratoBancario.OnDBEidContasPropertiesPopup(Sender: TObject);
begin
  inherited;
  //
  If (cbCodConta.Checked) Then
     cxGridDBCodConta.Focused := True;
  //
  If (cbDescConta.Checked) Then
     cxGridDBNomeConta.Focused := True;
  //
end;
procedure TFrmRelExtratoBancario.OnDBTableViewContaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewConta.OnDblClick(DBTableViewConta);
  //
end;
//******************************************************************************
        //*********   COMUM A TODOS  ************//

procedure TFrmRelExtratoBancario.OnDBTableViewGetContentStyle(
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
// FIM DAS ROTINAS DE CONFIGURAÇÃO DOS ContaS E GRIDS - COPIAR ATÉ AQUI
//*********************************************************************************

procedure TFrmRelExtratoBancario.actGerarExecute(Sender: TObject);
var
  DataI, DataF : TDateTime;
  anoi, mesi, diai : Word;
  anof, mesf, diaf : Word;
  idConta, arqRel : string;
begin

  //  ---------------------------- Tratamento da data -------------------------

  if ((TRIM(DBEdtInicial.Text) = '') or (TRIM(DBEdtFinal.Text)= '')) then
  begin
    MessageDlg('É necessario informar o periodo !',mtwarning,[mbok],0);
    DBEdtInicial.SetFocus;
    exit;
  end;
  DataI := StrToDate(DBEdtInicial.Text);
  DecodeDate(DataI,anoi,mesi,diai);
  DataF := StrToDate(DBEdtFinal.Text);
  DecodeDate(DataF,anof,mesf,diaf);

{  if(mesf <> mesi) then
  begin
    MessageDlg('Erro com a informação do periodo ! Verifique se o mês da data incial é o mesmo da final !',mtwarning,[mbok],0);
    DBEdtInicial.SetFocus;
    exit;
  end; }

  // Fim do tratamento da data ------------------------------------------------------

  if (trim(DBEidConta.text) = '') and (trim(DBEidContas.text) = '') then
  begin
    messagedlg('A conta OU as contas deve(m) ser informada(s)!, para a impressão do Extrato !', mtwarning, [mbok], 0);
    DBEidConta.SetFocus;
    exit;
  end;

  if trim(DBEidContas.Text) <> '' then
    idConta := trim(DBEidContas.Text)
  else
    idConta := trim(DBEidConta.Text);

  inherited;

  arqRel := dmPadrao.RetornaConfig('caminho_rel') + relatorio;
  if funcao.VerExistFile(arqRel) then
    frxRel.LoadFromFile(arqRel)
  else
    exit;


  //Verifica as opções de impressão
  (frxRel.FindComponent('HeaderLancFuturos') as TfrxHeader).Visible := cdsPadraolancFuturo.AsString = 'S';
  (frxRel.FindComponent('MasterDataLancFuturos') as TfrxMasterData).Visible := cdsPadraolancFuturo.AsString = 'S';
  (frxRel.FindComponent('DetailDataLancFuturos') as TfrxDetailData).Visible := cdsPadraolancFuturo.AsString = 'S';
  (frxRel.FindComponent('FooterLancFuturos') as TfrxFooter).Visible := cdsPadraolancFuturo.AsString = 'S';
  (frxRel.FindComponent('GroupHeaderLancFuturos') as TfrxGroupHeader).Visible := cdsPadraolancFuturo.AsString = 'S';


  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelExtratoBancario ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.text + ',' +
                               QuotedStr(idConta) + ',' +
                               funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                               funcao.RetornaValorEField(DBEdtFinal, 3)+ ',' +
                               funcao.RetornaValorEField(DBCBConsolida, 3)+ ',' +
                               funcao.RetornaValorEField(DBCBLimite, 3);
  cdsRelLancamento.Active := false;
  cdsRelLancamento.CommandText := 'EXEC spRelLancamentoFuturo ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.text + ',' +
                               QuotedStr(idConta) + ',' +
                               funcao.RetornaValorEField(DBEdtFinal, 3) + ',' +
                               funcao.RetornaValorEField(DBCBConsolida, 3)+ ',' +
                               funcao.RetornaValorEField(DBCBLimite, 3);
  cdsRelLancamento.Active := true;

  Screen.Cursor := crDefault;
  parametrorel;
  frxRel.ShowReport;

  dmPadrao.dbConexao.CloseDataSets;

end;

procedure TFrmRelExtratoBancario.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoidEmpresa.Value := cdsEmpresaidEmpresa.Value;
end;

procedure TFrmRelExtratoBancario.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolida.Value := 'S';
  cdsPadraoLimite.Value := 'S';
  cdsPadraolancFuturo.Value := 'S';
  cdsPadraoidEmpresa.Value := cdsEmpresaidEmpresa.Value;
end;

procedure TFrmRelExtratoBancario.DBEdtInicialExit(Sender: TObject);
var
  dia, mes, ano : Word;
begin
  inherited;
  if (trim(DBEdtInicial.Text)<>'') then
  begin
    DecodeDate(StrToDate(DBEdtInicial.Text),ano, mes, dia);
    dia := funcao.UltDiaDoMes(StrToDate(DBEdtInicial.Text));
    cdsPadraodtFinal.AsString := Format('%s/%s/%s',[IntToStr(dia),InttoStr(mes),InttoStr(ano)]);
  end;
end;

procedure TFrmRelExtratoBancario.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidEmpresa.Text;
end;

procedure TFrmRelExtratoBancario.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> DBEidEmpresa.Text) and (trim(DBEidEmpresa.Text) <> '') then
    AtribuiConta;
end;

procedure TFrmRelExtratoBancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelExtratoBancario := nil;
end;

procedure TFrmRelExtratoBancario.FormCreate(Sender: TObject);
begin
  inherited;
//  proc := 'spRelExtratoBancario';
  relatorio := 'RelExtratoBancario.fr3';
  SetLength(parametro, 7);
  parametro[0] := LookAgencia;
  parametro[1] := LookAgencia;
  parametro[2] := LookdescConta;
  parametro[3] := DBEdtInicial;
  parametro[4] := DBEdtFinal;
  parametro[5] := DBCBLimite;
  parametro[6] := DBCBConsolida;
  Width := 589;
  Height := 300;
//  cdsPadraoidEmpresa.Value := 1;
  fiscal := true;

       //******  CONTAS BANCÁRIAS ******//
  panConta.OnEnter := ContasEnter;
  BtnAplicarConta.OnClick := AplicarContaClick;
  BtnCancelarConta.OnClick := CancelarContaClick;
  BtnLimparConta.OnClick := LimparContaClick;
  DBTableViewConta.OnDblClick := OnDBTableViewContaDblClick;
  DBEidContas.Properties.OnPopup := OnDBEidContasPropertiesPopup;
  DBTableViewConta.OnKeyDown := OnDBTableViewContaKeyDown;
  DBTableViewConta.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidContas.Properties.PopupControl := panConta;

end;

procedure TFrmRelExtratoBancario.AtribuiConta;
begin
  cdsConta.Active := false;
  cdsConta.CommandText := 'SELECT * FROM vConta WHERE idEmpresa = ' + DBEidEmpresa.Text;
//  cdsConta.
end;
procedure TFrmRelExtratoBancario.FormShow(Sender: TObject);
begin
  inherited;
  DbeidConta.SetFocus;
  //Atribui o relacionamento da empresa no dataset de conta
  AtribuiConta;
end;

procedure TFrmRelExtratoBancario.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
