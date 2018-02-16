unit uFrmRelGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, System.Actions,
  System.ImageList;

type
  TFrmRelGerencial = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    DBRGtpGerencial: TCDBRadioGroup;
    cdsPadraotpGerencial: TStringField;
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
  FrmRelGerencial: TFrmRelGerencial;

implementation

uses uFrmPadraoRel, uDmPadrao;

{$R *.dfm}

procedure TFrmRelGerencial.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('tpGerencial').AsString := 'ENTRADAS';
end;

procedure TFrmRelGerencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelGerencial := nil;
end;

procedure TFrmRelGerencial.FormCreate(Sender: TObject);
begin
  inherited;
  tabela := 'vRelGerencial';
  relatorio := 'RelGerencial.fr3';
  SetLength(parametro, 2);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpGerencial;
  ordem := ' ORDER BY classificacao';

  Width := 499;
  Height := 172;
  fiscal := true;
end;

procedure TFrmRelGerencial.FormShow(Sender: TObject);
begin
  inherited;
  DBRGtpGerencial.SetFocus;
end;

procedure TFrmRelGerencial.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
