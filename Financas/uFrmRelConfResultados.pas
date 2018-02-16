unit uFrmRelConfResultados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  System.Actions, System.ImageList;

type
  TFrmRelConfResultado = class(TFrmPadraoRelEmpresa)
    DBGBResultado: TGroupBox;
    DBEidResultado: TCDBEdit;
    CLabel11: TCLabel;
    LookResultado: TCLookUp;
    CBitBtn4: TCBitBtn;
    FindResultado: TCFind;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CLabel5: TCLabel;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    frxRel: TfrxReport;
    FindGerencial: TCFind;
    cdsPadraoidGerencial: TIntegerField;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerenciaR: TCLookUp;
    CBitBtn6: TCBitBtn;
    cdsEmpresaContabil: TClientDataSet;
    frxEmpresaContabil: TfrxDBDataset;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConfResultado: TFrmRelConfResultado;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmRelConfResultado.actGerarExecute(Sender: TObject);
begin
  cdsEmpresaContabil.Active := false;
  cdsEmpresaContabil.CommandText := 'SELECT * FROM EmpresaContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  cdsEmpresaContabil.Active := true;
  inherited;
end;

procedure TFrmRelConfResultado.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidResultado.Text) = '') And
     (Self.ActiveControl <> BtnFechar) then
    begin
      ShowMessage('Este Parametro é obrigatório !');
      DBEidResultado.SetFocus;
    end;       
end;

procedure TFrmRelConfResultado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelConfResultado := nil;
end;

procedure TFrmRelConfResultado.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelConfResultado';
  relatorio := 'RelConfResultado.fr3';
  SetLength(parametro, 6);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidCadEmpresa;
  parametro[2] := DBEidResultado;
  parametro[3] := DBEidGerencial;
  parametro[4] := DBEdtInicial;
  parametro[5] := DBEdtFinal;
  Width := 576;
  Height := 205 ;
  fiscal := true;
end;

procedure TFrmRelConfResultado.FormShow(Sender: TObject);
begin
  inherited;
   DBEidResultado.SetFocus;
end;

procedure TFrmRelConfResultado.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
