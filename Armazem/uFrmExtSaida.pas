unit uFrmExtSaida;

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
  TFrmRelExtSaida = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel7: TCLabel;
    CLabel30: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    CBitBtn1: TCBitBtn;
    DBEidSafra: TCDBEdit;
    LookdescSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    FindCliente: TCFind;
    FindProduto: TCFind;
    FindSafra: TCFind;
    frxRel: TfrxReport;
    CLabel13: TCLabel;
    DBEidContratoArm: TCDBEdit;
    LookContrato: TCLookUp;
    BtnCadContrato: TCBitBtn;
    FindContrato: TCFind;
    Bevel2: TBevel;
    Bevel4: TBevel;
    DBEidCadEmpresa: TCDBEdit;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidContratoArm: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    CBitBtn2: TCBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelExtSaida: TFrmRelExtSaida;

implementation
uses uDmPadrao, uFuncao, uFrmPrincipal;
{$R *.dfm}

procedure TFrmRelExtSaida.actGerarExecute(Sender: TObject);
begin
//inherited;

  if (DBEidContratoArm.Text = '') then
    showmessage('Campo do Contrato Vazio')
  else
    begin
    cdsRelatorio.Active := false;
    cdsRelatorio.CommandText := 'EXEC spRelExtSaida ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ',' +
                                 funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                                 funcao.RetornaValorEField(DBEidCliente, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEidCadCliente, 3) + ',' +
                                 funcao.RetornaValorEField(DBEidProduto, 3) + ','+
                                 funcao.RetornaValorEfield(DBEidSafra, 3) + ','+
                                 funcao.RetornaValorEField(DBEidContratoArm, 3) + ','+
                                 funcao.RetornaValorEfield(DBEdtInicial, 3) +','+
                                 funcao.RetornaValorEField(DBEdtFinal, 3);
      cdsRelatorio.Active := true;
      frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
      (frxRel.FindComponent('LookdescSafra') as TFrxMemoView).Memo.Clear;
      (frxRel.FindComponent('LookdescSafra') as TfrxMemoView).Memo.Add(LookdescSafra.Caption);
      (frxRel.FindComponent('DBMdtInicial') as TfrxMemoView).Memo.Clear;
      (frxRel.FindComponent('DBMdtInicial') as TfrxMemoView).Memo.Add(DBEdtFinal.Text);
      (frxRel.FindComponent('DBMdtFinal') as TfrxMemoView).Memo.Clear;
      (frxRel.FindComponent('DBMdtFinal') as TfrxMemoView).Memo.Add(DBEdtFinal.Text);
      frxRel.ShowReport;
  end;
end;

procedure TFrmRelExtSaida.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelExtSaida.fr3';
{  proc := 'spRelExtSaida';
  SetLength(parametro, 7);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidProduto;
  parametro[2] := DBEidSafra;
  parametro[3] := DBEidCliente;
  parametro[4] := DBEidCadCliente;
  parametro[5] := DBEidContratoArm;
  parametro[6] := DBEdtInicial;
  parametro[7] := DBEdtFinal;}
  fiscal := true;
  Width := 517;
  Height := 245 ;

end;

procedure TFrmRelExtSaida.FormShow(Sender: TObject);
begin
  inherited;
  DBEidProduto.SetFocus;
end;

procedure TFrmRelExtSaida.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
