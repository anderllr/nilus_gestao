unit uFrmRelContratoComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoRelEmpresa, CFind, Data.DB,
  frxExportXLSX, frxExportImage, frxExportPDF, frxExportRTF, frxClass,
  frxExportHTML, frxDBSet, Datasnap.DBClient, Datasnap.Provider, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, CLookUp, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, CDBEdit, Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient,
  CLabel, CDBCheckBox, CGroupBox, CDBRadioGroup;

type
  TFrmRelContratoComissao = class(TFrmPadraoRelEmpresa)
    CGroupBox4: TCGroupBox;
    CLabel12: TCLabel;
    lblCliFor: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    LookCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    frxRel: TfrxReport;
    CLabel4: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel5: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel3: TCLabel;
    DBEdtContratoIni: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtContratoFim: TCDBEdit;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsRelatorioidCliente: TIntegerField;
    cdsRelatoriodescCadCliente: TStringField;
    cdsRelatoriodescRepresentante: TStringField;
    cdsRelatorioidContratoVenda: TStringField;
    cdsRelatoriodescProduto: TStringField;
    cdsRelatorioqtProduto: TFMTBCDField;
    cdsRelatoriodescSafra: TStringField;
    cdsRelatoriovlComissao: TFMTBCDField;
    cdsRelatoriodtEmissao: TSQLTimeStampField;
    cdsRelatoriostContratoVenda: TStringField;
    DBRGstContrato: TCDBRadioGroup;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtIni: TDateField;
    cdsPadraodtFim: TDateField;
    cdsPadraostatus: TStringField;
    cdsPadraoidContratoVenda: TStringField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelContratoComissao: TFrmRelContratoComissao;

implementation

{$R *.dfm}

uses uFuncao, uDmPadrao, uFrmPrincipal;

procedure TFrmRelContratoComissao.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, status : string;
begin
//  inherited;

  status := cdsPadraostatus.AsString; //DBRGstContrato.Items[DBRGstContrato.ItemIndex];
  sql := 'EXEC spRelComissaoContrato ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                       + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                       + funcao.RetornaValorEField(DBEidCliente, 3) + ', '
                                       + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                       + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                                       + funcao.RetornaValorEField(DBEidContratoVenda, 3) + ', '
                                       + funcao.RetornaValorEField(DBEdtContratoIni, 3) + ', '
                                       + funcao.RetornaValorEField(DBEdtContratoFim, 3) + ', '
                                       + funcao.RetornaValorEField(DBRGstContrato, 3) + ', '
                                       + funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', '
                                       + funcao.RetornaValorEField(DBCKconsolidafilial, 3);

    //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;
  frxRel.LoadFromFile(caminho_rel);

  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Text := DBEidContratoVenda.Text;

  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Text := trim(LookCliente.Caption);

  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).Text := trim(LookProduto.Caption);


  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtContratoIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtContratoFim.Text;

  (frxRel.FindComponent('MATIVO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCANCELADO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MENCERRADO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MTODOS') as TfrxMemoview).clear;


  case DBRGstContrato.ItemIndex of
  0 : (frxRel.FindComponent('MATIVO') as TfrxMemoview).Text := 'X';
  1 : (frxRel.FindComponent('MCANCELADO') as TfrxMemoview).Text := 'X';
  2 : (frxRel.FindComponent('MENCERRADO') as TfrxMemoview).Text := 'X';
  3 : (frxRel.FindComponent('MTODOS') as TfrxMemoview).Text := 'X';
  end;


  (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).clear;
  if DBCKconsolidaemp.Checked then
    (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).clear;
  if DBCKconsolidafilial.Checked then
    (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).Text := 'X';

  frxRel.ShowReport;

end;

procedure TFrmRelContratoComissao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'S';
  DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmRelContratoComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoComissao := nil;
end;

procedure TFrmRelContratoComissao.FormShow(Sender: TObject);
begin
  inherited;
  relatorio := 'RelComissaoContratoVenda.fr3';

  Height := 495;
  Width := 716;
end;

end.
