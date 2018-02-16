unit uFrmRelContratoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoRelEmpresa, CFind, Data.DB,
  frxExportMail, frxExportXLS, frxClass, frxDBSet, frxExportCSV, frxExportPDF,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, Datasnap.DBClient,
  Datasnap.Provider, System.Actions, Vcl.ActnList, Vcl.ImgList, CLookUp,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit, Vcl.Buttons, CBitBtn,
  Vcl.ExtCtrls, CPanelGradient, CLabel, CGroupBox;

type
  TFrmRelContratoEstoque = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    UniQryRelatorioidEmpresa: TIntegerField;
    UniSPRelatorioidCadEmpresa: TSmallintField;
    UniQryRelatorioidFornecedor: TIntegerField;
    UniSPRelatorioidCadFornecedor: TSmallintField;
    UniQryRelatorioidContratoCompra: TStringField;
    UniQryRelatoriodescFornecedor: TStringField;
    cdsRelatorioqtAEmbarcar: TFMTBCDField;
    UniQryRelatoriodescLocalEmbarque: TStringField;
    UniQryRelatoriodescCidade: TStringField;
    cdsRelatoriodtPagamento: TSQLTimeStampField;
    cdsRelatoriodtVencimento: TSQLTimeStampField;
    cdsRelatoriovlSaca: TFMTBCDField;
    cdsRelatoriovlAEmbarcar: TFMTBCDField;
    UniQryRelatorioAFixar: TStringField;
    UniQryRelatoriodescGrupo: TStringField;
    cdsRelatorioqtSacas: TFMTBCDField;
    UniQryRelatoriostTituloPag: TStringField;
    UniQryPadraodtIni: TDateField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdtContratoIni: TCDBEdit;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGerarExecute(Sender: TObject);
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelContratoEstoque: TFrmRelContratoEstoque;

implementation

{$R *.dfm}

uses uDmPadrao, uFrmPrincipal, uFrmCadFuncao, uFuncao, uDmFind;

procedure TFrmRelContratoEstoque.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status : string;
begin
//  inherited;
  sql := 'EXEC spRelContratoEstoque ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                     + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                                     + funcao.RetornaValorEField(DBEdtContratoIni, 3);

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

  (frxRel.FindComponent('MDESC_PRODUTOR') as TfrxMemoview).clear;
//  (frxRel.FindComponent('MDESC_PRODUTOR') as TfrxMemoview).Text := trim(LookFornecedor.Caption);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtContratoIni.Text;

  frxRel.ShowReport;
end;

procedure TFrmRelContratoEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoEstoque := nil;
end;

procedure TFrmRelContratoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoEstoque.fr3';
//  par := 0;
  Height := 210;
  Width :=  589;
end;

procedure TFrmRelContratoEstoque.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
