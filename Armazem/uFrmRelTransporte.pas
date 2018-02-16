unit uFrmRelTransporte;

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
  TFrmRelTransporte = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    DBEidCadEmpresa: TCDBEdit;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    CBitBtn1: TCBitBtn;
    CLabel7: TCLabel;
    CLabel6: TCLabel;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    CBitBtn2: TCBitBtn;
    CLabel30: TCLabel;
    DBEidSafra: TCDBEdit;
    LookdescSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    CLabel3: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel9: TCLabel;
    DBEidMotorista: TCDBEdit;
    LookdescMotorista: TCLookUp;
    BtnCadMotorista: TCBitBtn;
    FindSafra: TCFind;
    FindMotorista: TCFind;
    FindProduto: TCFind;
    FindCliente: TCFind;
    frxRel: TfrxReport;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidMotorista: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelTransporte: TFrmRelTransporte;

implementation
uses uDmPadrao, uFuncao, uFrmPrincipal;
{$R *.dfm}

procedure TFrmRelTransporte.actGerarExecute(Sender: TObject);
begin
  //inherited;
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelTransporte ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ',' +
                               funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                               funcao.RetornaValorEField(DBEidProduto, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidCliente, 3) + ',' +
                               funcao.RetornaValorEfield(DBEidCadCliente, 3) +','+
                               funcao.RetornaValorEField(DBEidSafra, 3) +',' +
                               funcao.RetornaValorEField(DBEidMotorista, 3) + ','+
                               funcao.RetornaValorEfield(DBEdtInicial, 3) +','+
                               funcao.RetornaValorEField(DBEdtFinal, 3);
  cdsRelatorio.Active := true;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  (frxRel.FindComponent('LookdescSafra') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookdescSafra') as TfrxMemoView).Memo.Add(LookdescSafra.Caption);
  (frxRel.FindComponent('DBMdtInicial') as TfrxMemoView).Memo.Clear;
  (frxRel.FindComponent('DBMdtInicial') as TfrxMemoView).Memo.Add(DBEdtInicial.Text);
  (frxRel.FindComponent('DBMdtFinal') as TfrxMemoView).Memo.Clear;
  (frxRel.FindComponent('DBMdtFinal') as TfrxMemoView).Memo.Add(DBEdtFinal.Text);
  (frxRel.FindComponent('LookdescMotorista') as TfrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookdescMotorista') as TfrxMemoView).Memo.Add(LookdescMotorista.Caption);
  frxRel.ShowReport;

end;

procedure TFrmRelTransporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelTransporte := Nil;
end;

procedure TFrmRelTransporte.FormCreate(Sender: TObject);
begin
  inherited;
  Fiscal := True;
  Height := 248;
  Width := 536;
  Relatorio:= 'RelTransporte.fr3'
end;

procedure TFrmRelTransporte.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
