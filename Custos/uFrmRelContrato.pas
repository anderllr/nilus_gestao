unit uFrmRelContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRel, DB, frxClass, frxDBSet, frxExportCSV, frxExportMail,
  frxExportODF, frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML,
  frxExportText, frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient;

type
  TFrmRelContrato = class(TFrmPadraoRel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelContrato: TFrmRelContrato;

implementation

{$R *.dfm}

end.
