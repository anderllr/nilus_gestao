unit uFrmRelFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel;

type
  TFrmRelFaturamento = class(TFrmPadraoRelEmpresa)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFaturamento: TFrmRelFaturamento;

implementation

{$R *.dfm}

end.
