unit uFrmTabDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, StdCtrls, CGroupBox, SqlExpr, CFind,
  DB, frxClass, frxDBSet, frxExportCSV, frxExportMail, frxExportODF,
  frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, CLookUp, Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CLabel;

type
    TFrmTabDesconto = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel7: TCLabel;
    LblCad: TCLabel;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    LookClienteFiscal: TCLookUp;
    DBEidCodigo: TCDBEdit;
    FindDesconto: TCFind;
    FindProduto: TCFind;
    frxReport1: TfrxReport;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoprMedido: TFloatField;
    cdsPadraoprDesconto: TFloatField;
    cdsPadraodescCadDesconto: TStringField;
    cdsPadraoidCadDesconto: TStringField;
    cdsPadraodescProduto: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabDesconto: TFrmTabDesconto;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmTabDesconto.actGerarExecute(Sender: TObject);
begin
  inherited;
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'SELECT * FROM vRelTabDesconto' + funcao.RetornaValorEField(DBEidEmpresa,3) +
                              'AND idProduto = ' + funcao.RetornaValorEField(DBEidProduto,3) +
                              'AND idCadDesconto = '+ funcao.RetornaValorEField(DBEidCodigo,3);

  showmessage(cdsRelatorio.CommandText);
  frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  (frxReport1.FindComponent('descCadEmpresa') as TfrxMemoView).Memo.Clear;
  (frxReport1.FindComponent('descCadEmpresa') as TfrxMemoView).Memo.Add(LookdescCadEmpresa.Caption);
  frxReport1.ShowReport;
end;

procedure TFrmTabDesconto.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelTabelaDesconto.fr3';
  Width := 511;
  Height := 180;
end;

end.
