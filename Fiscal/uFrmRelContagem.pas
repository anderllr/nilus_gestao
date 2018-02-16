unit uFrmRelContagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CDBCheckBox, ClipBrd, System.Actions;

type
  TFrmRelContagem = class(TFrmPadraoRelEmpresa)
    FindProdDeposito: TCFind;
    FindCultura: TCFind;
    FindSafra: TCFind;
    cdsPadraoconsolida: TStringField;
    frxRel: TfrxReport;
    cdsPadraoidIni: TIntegerField;
    cdsPadraoidFim: TIntegerField;
    DBEidFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidIni: TCDBEdit;
    CLabel3: TCLabel;
    cdsPadraoMostraSaldo: TStringField;
    DBCKMostraSaldo: TCDBCheckBox;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure frxRelClosePreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelContagem: TFrmRelContagem;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmRelContagem.actGerarExecute(Sender: TObject);
begin
  //
  if (trim(DBEidIni.Text) = '') or (trim(DBEidFim.Text) = '') then
  Begin
    MessageDlg('É necessario informar o intervalo !',mtwarning,[mbok],0);
    Exit;
  End;
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'SELECT * FROM vConsInventario WHERE idEmpresa = ' + DBEidEmpresa.Text +
       ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idInventario BETWEEN ' + DBEidIni.Text +
       ' AND ' + DBEidFim.Text  + ' ORDER BY idEmpresa, idCadEmpresa, idInventario, ordem';
//  ClipBoard.AsText := cdsRelatorio.CommandText;

  cdsRelatorio.Active := true;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  (frxRel.FindComponent('MemEstoque') as TfrxMemoview).Visible := cdsPadraoMostraSaldo.AsString = 'S';
  (frxRel.FindComponent('lblEstoque') as TfrxMemoview).Visible := cdsPadraoMostraSaldo.AsString = 'S';
  (frxRel.FindComponent('MemAjuste') as TfrxMemoview).Visible := cdsPadraoMostraSaldo.AsString = 'S';
  (frxRel.FindComponent('lblAjuste') as TfrxMemoview).Visible := cdsPadraoMostraSaldo.AsString = 'S';
  frxRel.ShowReport;
//  Inherited;
  //
end;

procedure TFrmRelContagem.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolida').AsString := 'S';
  DataSet.FieldByName('MostraSaldo').AsString := 'N';
end;

procedure TFrmRelContagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContagem := nil;
end;

procedure TFrmRelContagem.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelContagem.fr3';
  SetLength(parametro, 10);
  Width := 546;
  Height := 238;
  fiscal := true;
  par := 0;
end;

procedure TFrmRelContagem.FormShow(Sender: TObject);
begin
  inherited;
  DBEidIni.SetFocus;
end;

procedure TFrmRelContagem.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelContagem.frxRelClosePreview(Sender: TObject);
begin
  inherited;
  if par = 2 then
  begin
    par := 1;
    close;
  end;

end;

end.
