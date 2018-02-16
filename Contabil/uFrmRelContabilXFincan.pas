unit uFrmRelContabilXFincan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel;

type
  TFrmRelContabilXFinan = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    cdsPadraoidEmpresa: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    par : Integer;
  end;

var
  FrmRelContabilXFinan: TFrmRelContabilXFinan;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmRelContabilXFinan.actGerarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  sql := 'SELECT * FROM vGerencial WHERE idGerencial NOT IN ' +
         '(SELECT idGerencial FROM ContRelaciona)' +
         ' AND idEmpresa = ' + DBEidEmpresa.Text +
         ' ORDER BY idGerencial';
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + relatorio);
  frxRel.ShowReport;
end;

procedure TFrmRelContabilXFinan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContabilXFinan := nil;
end;

procedure TFrmRelContabilXFinan.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelListaGerencial.fr3';
  SetLength(parametro, 1);
  fiscal := False;
  par := 0;
end;

procedure TFrmRelContabilXFinan.FormShow(Sender: TObject);
begin
  inherited;
  Height := 108;
  Width := 544;
end;

end.
