unit uFrmRelCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, CGroupBox,
  System.Actions, System.ImageList;

type
  TFrmRelCodigo = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    cdsPadraotpPlanoConta: TStringField;
    CGroupBox1: TCGroupBox;
    DBRGtpPlanoConta: TCDBRadioGroup;
    DBEpar: TCDBEdit;
    CLabel1: TCLabel;
    cdsPadraopar: TSmallintField;
    procedure actGerarExecute(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCodigo: TFrmRelCodigo;

implementation

uses uFrmPadraoRel, uDmPadrao;

{$R *.dfm}

procedure TFrmRelCodigo.actGerarExecute(Sender: TObject);
begin
  if (trim(DBEpar.Text) = '') then
    cdsPadrao.FieldByName('par').AsString := '300';
  inherited;

end;

procedure TFrmRelCodigo.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('tpPlanoConta').AsString := 'F';
end;

procedure TFrmRelCodigo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelCodigo := nil;
end;

procedure TFrmRelCodigo.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelCodigoReduzido';
  relatorio := 'RelCodPlanoConta.fr3';
  SetLength(parametro, 3);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpPlanoConta;
  parametro[2] := DBEpar;  

  Width := 487;
  Height := 189;
end;

procedure TFrmRelCodigo.FormShow(Sender: TObject);
begin
  inherited;
  DBRGtpPlanoConta.SetFocus;
end;

procedure TFrmRelCodigo.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
