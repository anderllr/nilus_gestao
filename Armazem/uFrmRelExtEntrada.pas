unit uFrmRelExtEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox;

type
  TFrmRelExtEntrada = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    CGroupBox1: TCGroupBox;
    CLabel7: TCLabel;
    CLabel30: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    CBitBtn1: TCBitBtn;
    DBEidSafra: TCDBEdit;
    LookdescSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    FindProduto: TCFind;
    FindSafra: TCFind;
    FindFornecedor: TCFind;
    LblCad: TCLabel;
    DBEidFornecedor: TCDBEdit;
    DBEidCadFornecedor: TCDBEdit;
    LookFornecedorFiscal: TCLookUp;
    DBEidCadEmpresa: TCDBEdit;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    CBitBtn2: TCBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelExtEntrada: TFrmRelExtEntrada;

implementation
uses uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelExtEntrada.actGerarExecute(Sender: TObject);
begin
//  inherited;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelExtEntrada ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ',' +
                               funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                               funcao.RetornaValorEField(DBEidFornecedor, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ',' +
                               funcao.RetornaValorEfield(DBEdtInicial, 3) +','+
                               funcao.RetornaValorEField(DBEdtFinal, 3) +',' +
                               funcao.RetornaValorEField(DBEidProduto, 3) + ','+
                               funcao.RetornaValorEfield(DBEidSafra, 3);
  cdsRelatorio.Active := true;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  (frxRel.FindComponent('LookdescSafra') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookdescSafra') as TfrxMemoView).Memo.Add(LookdescSafra.Caption);
  (frxRel.FindComponent('DBMdtInicial') as TfrxMemoView).Memo.Clear;
  (frxRel.FindComponent('DBMdtInicial') as TfrxMemoView).Memo.Add(DBEdtInicial.Text);
  (frxRel.FindComponent('DBMdtFinal') as TfrxMemoView).Memo.Clear;
  (frxRel.FindComponent('DBMdtFinal') as TfrxMemoView).Memo.Add(DBEdtFinal.Text);
  frxRel.ShowReport;
end;

procedure TFrmRelExtEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelExtEntrada := Nil;
end;

procedure TFrmRelExtEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelExtEntradas.fr3';
  Width := 485;
  Height := 214 ;
  fiscal := true;
end;

procedure TFrmRelExtEntrada.FormShow(Sender: TObject);
begin
  inherited;
  DBEidProduto.SetFocus;
end;

procedure TFrmRelExtEntrada.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
