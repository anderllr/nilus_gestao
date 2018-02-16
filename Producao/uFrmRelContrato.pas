unit uFrmRelContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBRadioGroup, CDBCheckBox,
  System.Actions;

type
  TFrmRelContrato = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    CLabel4: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel5: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    lblCliFor: TCLabel;
    CLabel1: TCLabel;
    DBEidContrato: TCDBEdit;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    DBEdtContratoFim: TCDBEdit;
    DBEdtContratoIni: TCDBEdit;
    DBRGstContrato: TCDBRadioGroup;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtIni: TDateField;
    cdsPadraodtFim: TDateField;
    cdsPadraoagrupRom: TStringField;
    cdsPadraostatus: TStringField;
    cdsPadraotpRel: TStringField;
    cdsPadraoidContrato: TStringField;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelContrato: TFrmRelContrato;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelContrato.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status : string;
begin
//  inherited;
  if DBCBagrupRom.Checked then
    agrupRom := 'S'
  else
    agrupRom := 'N';

  status := cdsPadraostatus.AsString; //DBRGstContrato.Items[DBRGstContrato.ItemIndex];
  sql := 'EXEC spRelContrato ' + DBEidEmpresa.Text + ', '
                               + DBEidCadEmpresa.Text + ', '
                               + funcao.RetornaValorEField(DBEidCliente, 3) + ', '
                               + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                               + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                               + funcao.RetornaValorEField(DBEidContrato, 3) + ', '
                               + funcao.RetornaValorEField(DBEdtContratoIni, 3) + ', '
                               + funcao.RetornaValorEField(DBEdtContratoFim, 3) + ', '
                               + QuotedStr(Trim(status)) + ', '
                               + QuotedStr(agrupRom);

    //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := false;

  tp_relatorio := DBRGTp_relatorio.Items[DBRGTp_relatorio.ItemIndex];

  if tp_relatorio = 'Analitico' then
    relatorio := 'RelContratoAnalitico.fr3'
  else
    relatorio := 'RelContratoSintetico.fr3';



  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  if (not DBCBagrupRom.Checked) AND (tp_relatorio = 'Analitico') then
  begin
    (frxRel.FindComponent('Mobs') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MRomaneio') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MPesoBruto') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MPesoLiquido') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MvlLiquido') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MlbObs') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MlbRomaneio') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MlbPesoBruto') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MlbPesoLiquido') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('MlbVlLiquido') as TfrxMemoview).Visible := False;
    (frxRel.FindComponent('Shape2') as TfrxShapeView).Visible := False;
    (frxRel.FindComponent('Shape3') as TfrxShapeView).Visible := False;
    (frxRel.FindComponent('MRomTitle') as TfrxMemoview).Visible := False;
  end;
  frxRel.ShowReport
end;

procedure TFrmRelContrato.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('status').AsString := 'TODOS';
  DataSet.FieldByName('tpRel').AsString := 'ANALITICO';
  DataSet.FieldByName('agrupRom').AsString := 'N';
end;

procedure TFrmRelContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelContrato := nil;
end;

procedure TFrmRelContrato.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoAnalitico.fr3';
  par := 0;
  Height := 322;
  Width :=  540;
end;

procedure TFrmRelContrato.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
