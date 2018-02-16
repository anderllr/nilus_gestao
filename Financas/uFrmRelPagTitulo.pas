unit uFrmRelPagTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CRadioGroup, System.Actions, System.ImageList;

type
  TFrmRelPagTitulo = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    FindFornecedor: TCFind;
    CGroupBox1: TCGroupBox;
    DBEidFornecedor: TCDBEdit;
    LookDescCadFornecedor: TCLookUp;
    LookidCnpjCpfFornecedor: TCLookUp;
    cdsPadraotpDocumento: TStringField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraodtEmissao: TDateTimeField;
    cdsPadraodtVencimento: TDateTimeField;
    CLabel4: TCLabel;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEdtEmissaoFinal: TCDBEdit;
    DBEdtEmissaoInicial: TCDBEdit;
    DBEtpPagamento: TCDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelPagTitulo: TFrmRelPagTitulo;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmRelPagTitulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelPagTitulo := nil;
end;

procedure TFrmRelPagTitulo.FormCreate(Sender: TObject);
begin
  inherited;

  tabela := 'vRelPagTitulo';
  relatorio := 'RelPagTitulo.fr3';
  SetLength(parametro, 3);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidFornecedor;
  parametro[2] := DBEtpPagamento;
  Width := 489;
  Height := 231;

end;

end.
