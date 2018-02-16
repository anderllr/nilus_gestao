unit uFrmRelFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRel, DB, frxClass, frxDBSet, frxExportCSV, frxExportMail,
  frxExportODF, frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML,
  frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CLookUp, EditAlign, CEdit, CLabel, DBCtrls, CDBRadioGroup,
  Mask, CDBEdit;

type
  TuFrmFaturamento = class(TFrmPadraoRel)
    C: TfrxReport;
    CLabel1: TCLabel;
    Bevel3: TBevel;
    cd_empresa: TCEdit;
    LookRazao: TCLookUp;
    CDBRadioGroup1: TCDBRadioGroup;
    CDBRadioGroup2: TCDBRadioGroup;
    CDBRadioGroup3: TCDBRadioGroup;
    CBitBtn1: TCBitBtn;
    CBitBtn2: TCBitBtn;
    cdsPadraodtFaturamento: TDateField;
    Lookdtpesq: TCLookUp;
    Lookdtpesq2: TCLookUp;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmFaturamento: TuFrmFaturamento;

implementation

{$R *.dfm}

procedure TuFrmFaturamento.FormShow(Sender: TObject);
begin
  inherited;
  tabela := 'vRelRateio';
  relatorio := 'C:\Nilus\Relatorios\RelRateio.fr3';
  SetLength(parametro, 2);
  parametro[0] :=cd_Empresa;
  Width := 499;
  Height := 172;
end;

end.
