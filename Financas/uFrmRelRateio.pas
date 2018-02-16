unit uFrmRelRateio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, StdCtrls, CGroupBox, SqlExpr, CFind,
  DB, frxClass, frxDBSet, frxExportCSV, frxExportMail, frxExportODF,
  frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML, frxExportText,
  frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, CLookUp, Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CLabel, System.Actions, System.ImageList;

type
  TfrmRelRateio = class(TFrmPadraoRelEmpresa)
    DBGBRateio: TCGroupBox;
    Label1: TLabel;
    CLabel1: TCLabel;
    cdsPadraoidRateio: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    DBEidRateio: TCDBEdit;
    LookRateio: TCLookUp;
    FindRateio: TCFind;
    Label2: TLabel;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    FindResultado: TCFind;
    frxRel: TfrxReport;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRateio: TfrmRelRateio;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TfrmRelRateio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmRelRateio := nil;
end;

procedure TfrmRelRateio.FormCreate(Sender: TObject);
begin
  inherited;
  tabela := 'vRelRateio';
  relatorio := 'RelRateio.fr3';
  SetLength(parametro, 3);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidRateio;
  parametro[2] := DBEidResultado;
  Width := 555;
  Height := 199;
end;

procedure TfrmRelRateio.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
