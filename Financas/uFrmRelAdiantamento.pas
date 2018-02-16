unit uFrmRelAdiantamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CDBRadioGroup, CDBCheckBox, EditAlign, CEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, ClipBrd, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, System.Actions,
  System.ImageList, frxExportXLSX;

type
  TFrmRelAdiantamento = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBRGtpAdiantamento: TCDBRadioGroup;
    frxRel: TfrxReport;
    Label2: TLabel;
    DBEidAdiantamento: TCDBEdit;
    CLabel11: TCLabel;
    DBEidCadGeral: TCDBEdit;
    LookCliente: TCLookUp;
    Styles: TcxStyleRepository;
    CGroupBox2: TCGroupBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoidAdiantamento: TIntegerField;
    cdsPadraoidCadGeral: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraotpAdiantamento: TStringField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKlistaSaldoZero: TCDBCheckBox;
    cdsPadraolistaSaldoZero: TStringField;
    CGroupBox3: TCGroupBox;
    DBCKstLiquidado: TCDBCheckBox;
    DBCKstAberto: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TStringField;
    cdsPadraostAberto: TStringField;
    cdsPadraostLiquidado: TStringField;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidAdiantamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAdiantamento: TFrmRelAdiantamento;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoRel, uDmFind,
  uFrmPesAdiantamento;

{$R *.dfm}


procedure TFrmRelAdiantamento.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('tpAdiantamento').AsString := 'C';
  DataSet.FieldByName('consolidaemp').AsString := 'S';
  DataSet.FieldByName('consolidafilial').AsString := 'S';
  DataSet.FieldByName('listaSaldoZero').AsString := 'S';
  DataSet.FieldByName('stAtivo').AsString := 'S';
  DataSet.FieldByName('stAberto').AsString := 'S';
  DataSet.FieldByName('stLiquidado').AsString := 'N';
end;

procedure TFrmRelAdiantamento.DBEidAdiantamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesAdiantamento, FrmPesAdiantamento);
    FrmPesAdiantamento.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesAdiantamento.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesAdiantamento.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesAdiantamento.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idAdiantamento').Value := FrmPesAdiantamento.cdsGrid.FieldByName('idAdiantamento').Value;
        DBEidAdiantamento.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmRelAdiantamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelAdiantamento := nil;
end;

procedure TFrmRelAdiantamento.FormCreate(Sender: TObject);
begin
  inherited;
  proc := 'spRelAdiantamento';
  relatorio := 'RelAdiantamento.fr3';
  SetLength(parametro, 14);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidCadEmpresa;
  parametro[2] := DBEidAdiantamento;
  parametro[3] := DBEidCadGeral;
  parametro[4] := DBEdtInicial;
  parametro[5] := DBEdtFinal;
  parametro[6] := DBRGtpAdiantamento;
  parametro[7] := DBCKconsolidaemp;
  parametro[8] := DBCKconsolidafilial;
  parametro[9] := LookCliente;
  parametro[10] := DBCKlistaSaldoZero;
  parametro[11] := DBCKstAtivo;
  parametro[12] := DBCKstAberto;
  parametro[13] := DBCKstLiquidado;
  height := 370;
  width := 545;
  fiscal := true;
  foco := DBEidAdiantamento;
end;

procedure TFrmRelAdiantamento.FormShow(Sender: TObject);
begin
  //
  Inherited;
end;

procedure TFrmRelAdiantamento.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
