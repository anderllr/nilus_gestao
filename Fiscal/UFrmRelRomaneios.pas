unit UFrmRelRomaneios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, frxClass, SqlExpr, CFind, DB, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel;

type
  TFrmPadraoRelEmpresa1 = class(TFrmPadraoRelEmpresa)
    DBEidCadEmpresa: TCDBEdit;
    frxRel: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadraoRelEmpresa1: TFrmPadraoRelEmpresa1;

implementation

{$R *.dfm}

end.
