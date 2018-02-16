unit uFrmRelSaldoBancario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBCheckBox, CGroupBox;

type
  TFrmRelSaldoBancario = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel8: TCLabel;
    DBEidConta: TCDBEdit;
    DBCBLimite: TCDBCheckBox;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    FrxRel: TfrxReport;
    cdsPadraoidConta: TIntegerField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoconsolida: TStringField;
    cdsPadraoLimite: TStringField;
    FindConta: TCFind;
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelSaldoBancario: TFrmRelSaldoBancario;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelSaldoBancario.actGerarExecute(Sender: TObject);
var
  caminho_rel : string;
begin
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelSaldoBancario ' + DBEidEmpresa.text + ',' + DBEidCadEmpresa.text + ',' +
                               funcao.RetornaValorEField(DBEidConta, 3) + ',' +
                               funcao.RetornaValorEField(DBCBLimite, 3);
  cdsRelatorio.Active := false;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  (frxRel.FindComponent('DBCBlimite') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('DBCBlimite') as TFrxMemoView).Memo.Add(cdsPadraoLimite.AsString);
  (frxRel.FindComponent('LookAgencia') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookAgencia') as TFrxMemoView).Memo.Add(LookAgencia.Caption);
  (frxRel.FindComponent('LookContaCorrente') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookContaCorrente') as TFrxMemoView).Memo.Add(LookContaCorrente.Caption);
  (frxRel.FindComponent('LookdescConta') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookdescConta') as TFrxMemoView).Memo.Add(LookdescConta.Caption);
  frxRel.ShowReport;
//  inherited;
end;

procedure TFrmRelSaldoBancario.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolida.Value := 'S';
  cdsPadraoLimite.Value := 'S';
  cdsPadraoidEmpresa.Value := cdsEmpresaidEmpresa.Value;
end;

procedure TFrmRelSaldoBancario.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := False;
  relatorio := 'RelSaldoBancario.fr3';
  par := 0;
end;

procedure TFrmRelSaldoBancario.FormShow(Sender: TObject);
begin
  inherited;
  Height := 183;
  Width := 598;
end;

procedure TFrmRelSaldoBancario.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
