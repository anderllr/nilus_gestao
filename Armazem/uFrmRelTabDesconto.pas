unit uFrmRelTabDesconto;

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
  TFrmRelTabDesconto = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel7: TCLabel;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    CLabel1: TCLabel;
    DBEidCadDesconto: TCDBEdit;
    LookdescCadDesconto: TCLookUp;
    frxReport1: TfrxReport;
    FindDesconto: TCFind;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidCadDesconto: TIntegerField;
    FindProduto: TCFind;
    CBitBtn1: TCBitBtn;
    CBitBtn2: TCBitBtn;
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelTabDesconto: TFrmRelTabDesconto;

implementation

uses uDmPadrao, uFrmPadraoRel, uFrmPrincipal, uFuncao;

{$R *.dfm}

procedure TFrmRelTabDesconto.actGerarExecute(Sender: TObject);
var
sql : string;
begin
  if (trim(DBEidProduto.Text) = '') then
  begin
    messagedlg('É necessario informar o produto !', mtInformation, [mbOk], 0);
    exit;
  end;
  cdsRelatorio.Active := false;
  sql := ' SELECT cd.descCadDesconto, cdt.prMedido, cdt.prDesconto,  prod.descProduto, cdt.idCadDesconto '+
         '   FROM CadDesconto cd, Produto prod, CadDescontoTab cdt ' +
         '  WHERE cd.idCadDesconto = cdt.idCadDesconto ' +
         '    AND cdt.idProduto = prod.idProduto ' +
         '    AND cdt.idProduto = ISNULL( ' + funcao.RetornaValorEField(DBEidProduto,3) + ', cdt.idProduto) ';
  if (trim(DBEidCadDesconto.Text) <> '') then
  begin
    sql := sql + '    AND cd.idCadDesconto = ISNULL( ' + funcao.RetornaValorEField(DBEidCadDesconto,3) + ', cd.idCadDesconto) ' ;
  end;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := true;
  frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  (frxReport1.FindComponent('descCadEmpresa') as TfrxMemoView).Memo.Clear;
  (frxReport1.FindComponent('descCadEmpresa') as TfrxMemoView).Memo.Add(LookdescCadEmpresa.Caption);
  frxReport1.ShowReport;
end;

procedure TFrmRelTabDesconto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelTabDesconto := nil;
end;

procedure TFrmRelTabDesconto.FormCreate(Sender: TObject);
begin
  inherited;
 // proc := 'spRelTabDesconto';
  relatorio := 'RelTabDesconto.fr3';
//  SetLength(parametro, 2);
//  parametro[0] := DBEidProduto;
//  parametro[1] := DBEidCadDesconto;
  Width := 503;
  Height := 179;
end;

procedure TFrmRelTabDesconto.FormShow(Sender: TObject);
begin
  inherited;
  DBEidProduto.SetFocus;
end;

end.
