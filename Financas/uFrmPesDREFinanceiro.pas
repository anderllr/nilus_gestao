unit uFrmPesDREFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoPesqEmpFiscalPivot,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, Data.FMTBcd, CFind, Data.SqlExpr, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, System.Actions, Vcl.ActnList,
  Vcl.ImgList, CLookUp, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit, CLabel,
  Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient, cxCustomPivotGrid,
  cxDBPivotGrid, CGroupBox, CDBCheckBox, cxProgressBar, cxExportPivotGridLink,
  System.ImageList;

type
  TFrmPesDREFinanceiro = class(TFrmPadraoPesqEmpFiscalPivot)
    cdsPadraoidDREFinanceiro: TIntegerField;
    cdsPadraodtEmissaoIni: TDateTimeField;
    cdsPadraodtEmissaoFim: TDateTimeField;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    cdsPadraodtPagamentoIni: TDateTimeField;
    cdsPadraodtPagamentoFim: TDateTimeField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraotpDREFinanceiro: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    LookRazao: TCLookUp;
    CLabel11: TCLabel;
    DBEidDREFinanceiro: TCDBEdit;
    DBEdtEmissaoIni: TCDBEdit;
    DBEdtEmissaoFim: TCDBEdit;
    CLabel6: TCLabel;
    CLabel5: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    DBEdtPagamentoIni: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtPagamentoFim: TCDBEdit;
    DBCKtpDREFinanceiroX: TCDBCheckBox;
    DBCKtpDREFinanceiroC: TCDBCheckBox;
    DBCKconsolidaFilial: TCDBCheckBox;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel23: TCLabel;
    cdsGrididDREFinanceiroGrupo: TSmallintField;
    cdsGriddescDREFinanceiroGrupo: TStringField;
    cdsGrididGerencial: TIntegerField;
    cdsGridclassificacao: TStringField;
    cdsGrididResultado: TIntegerField;
    cdsGriddescResultado: TStringField;
    cdsGridvlGerencial: TFMTBCDField;
    cdsGridprGerencial: TFMTBCDField;
    cdsGridvlAcrescimo: TFMTBCDField;
    cdsGridvlDesconto: TFMTBCDField;
    cdsGridordem: TSmallintField;
    cdsGridtpGerencial: TStringField;
    descResultado: TcxDBPivotGridField;
    vlGerencial: TcxDBPivotGridField;
    cdsGriddescGerencial: TStringField;
    vlAcrescimo: TcxDBPivotGridField;
    vlDesconto: TcxDBPivotGridField;
    classificacao: TcxDBPivotGridField;
    descGerencial: TcxDBPivotGridField;
    descDREFinanceiroGrupo: TcxDBPivotGridField;
    prGerencial: TcxDBPivotGridField;
    GerencialF: TcxDBPivotGridField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    BtnExportXls: TCBitBtn;
    BtnExportXlsx: TCBitBtn;
    SaveDialog: TSaveDialog;
    ordem: TcxDBPivotGridField;
    procedure FormShow(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure BtnExportXlsClick(Sender: TObject);
    procedure BtnExportXlsxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesDREFinanceiro: TFrmPesDREFinanceiro;

implementation

{$R *.dfm}

uses uDmFind, uFrmPrincipal, uFuncao;

procedure TFrmPesDREFinanceiro.actExecutarExecute(Sender: TObject);
var
  sql : string;
  i : integer;
begin
  inherited;
  if trim(DBEidDREFinanceiro.Text) = '' then
  begin
    messagedlg('Você deve informar o DRE Financeiro!', mtwarning, [mbok], 0);
    exit;
  end;
  sql := 'EXEC spRetDREFinanceiro ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
         funcao.RetornaValorEField(DBEidDREFinanceiro, 3) + ', ' + funcao.RetornaValorEField(DBEdtEmissaoIni, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtEmissaoFim, 3) + ', ' + funcao.RetornaValorEField(DBEdtVencimentoIni, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtVencimentoFim, 3) + ', ' + funcao.RetornaValorEField(DBEdtPagamentoIni, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtPagamentoFim, 3) + ', ' + funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
         funcao.RetornaValorEField(DBCKtpDREFinanceiroX, 3) + ', ' + funcao.RetornaValorEField(DBCKconsolidaFilial, 3);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  for i := 0 to DBPivotGrid.FieldCount - 1 do
    DBPivotGrid.Fields[i].ExpandAll;

  BtnExportXls.Enabled := cdsGrid.RecordCount > 0;
  BtnExportXlsx.Enabled := cdsGrid.RecordCount > 0;
end;

procedure TFrmPesDREFinanceiro.BtnExportXlsClick(Sender: TObject);
begin
  inherited;
  SaveDialog.Filter:= 'Arquivos XLS (*.xls)|*.xls';
  if SaveDialog.Execute then
  begin
    cxExportPivotGridToExcel(SaveDialog.FileName, DBPivotGrid);
    if FileExists(SaveDialog.FileName) then
      WinExec(PAnsiChar(SaveDialog.FileName), SW_SHOWMAXIMIZED);

  end;
end;

procedure TFrmPesDREFinanceiro.BtnExportXlsxClick(Sender: TObject);
begin
  inherited;
  SaveDialog.Filter:= 'Arquivos XLSX (*.xlsx)|*.xlsx';
  if SaveDialog.Execute then
  begin
    cxExportPivotGridToXLSX(SaveDialog.FileName, DBPivotGrid);
    if FileExists(SaveDialog.FileName) then
      WinExec(PAnsiChar(SaveDialog.FileName), SW_SHOWMAXIMIZED);
  end;
end;

procedure TFrmPesDREFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidDREFinanceiro;
end;

procedure TFrmPesDREFinanceiro.FormShow(Sender: TObject);
begin
  inherited;
  frmPesDREFinanceiro.WindowState := wsMaximized;
  if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
    cdsEmpresa.Edit;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
  cdsPadraotpDREFinanceiro.AsString := 'C';
  cdsPadraoconsolidaFilial.AsString := 'N';
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBCKconsolidafilial.Visible := filial;
end;

end.
