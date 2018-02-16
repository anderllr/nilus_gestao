unit uFrmRelManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBCheckBox, CGroupBox,
  CDBRadioGroup, System.Actions;

type
  TFrmRelManutencao = class(TFrmPadraoRelEmpresa)
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidManutencaoIni: TIntegerField;
    cdsPadraoidManutencaoFim: TIntegerField;
    cdsPadraodtIni: TDateField;
    cdsPadraodtFim: TDateField;
    FrxRel: TfrxReport;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsRelatoriovlTotalGeral: TAggregateField;
    cdsRelatorioidEmpresa: TIntegerField;
    cdsRelatorioidCadEmpresa: TSmallintField;
    cdsRelatoriodescCadEmpresa: TStringField;
    cdsRelatoriodescAbreviada: TStringField;
    cdsRelatoriodtMovimentacao: TSQLTimeStampField;
    cdsRelatoriohr_kmAtual: TFMTBCDField;
    cdsRelatorioidManutencao: TIntegerField;
    cdsRelatorioidMaquina: TIntegerField;
    cdsRelatorioidProdDeposito: TIntegerField;
    cdsRelatorioobsManutencao: TStringField;
    cdsRelatoriotpManutencao: TStringField;
    cdsRelatoriovlDescontoTotal: TFMTBCDField;
    cdsRelatoriovlManutencao: TFMTBCDField;
    cdsRelatorioidFornecedor: TIntegerField;
    cdsRelatorioidItem: TIntegerField;
    cdsRelatorioinfoGarantia: TStringField;
    cdsRelatorioqtItem: TFMTBCDField;
    cdsRelatoriotpItem: TStringField;
    cdsRelatoriodescMaquina: TStringField;
    cdsRelatoriovlItem: TFMTBCDField;
    cdsRelatoriodescCadFornecedor: TStringField;
    cdsRelatoriodescSafra: TStringField;
    DBRGOrdem: TCDBRadioGroup;
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    lblCliFor: TCLabel;
    CLabel1: TCLabel;
    CLabel6: TCLabel;
    CLabel3: TCLabel;
    CLabel7: TCLabel;
    CLabel11: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookCliente: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    DBEidManutencaoIni: TCDBEdit;
    DBEdtFim: TCDBEdit;
    DBEdtIni: TCDBEdit;
    DBEidManutencaoFim: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    LookRazao: TCLookUp;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoordem: TStringField;
    cdsRelatorioidNf: TStringField;
    DBRGmostrar: TCDBRadioGroup;
    cdsPadraomostrar: TStringField;
    LookGerencial: TCLookUp;
    DBEidGerencial: TCDBEdit;
    CLabel8: TCLabel;
    cdsPadraoidGerencial: TIntegerField;
    cdsRelatoriodescItem: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelManutencao: TFrmRelManutencao;

implementation

uses uDmPadrao, uFrmPrincipal, uFrmCadFuncao, uFuncao, uDmFind;

{$R *.dfm}

procedure TFrmRelManutencao.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, agrupRom, status, ordem : string;
begin
//  inherited;
    sql := 'EXEC spRelMaquinaManutencao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEidMaquina, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEidManutencaoIni, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEidManutencaoFim, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEdtIni, 3) + ', ' +
                                          funcao.RetornaValorEField(DBEdtFim, 3) + ', ' +
                                          QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                          QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                          QuotedStr(cdsPadraoordem.AsString) + ', ' +
                                          QuotedStr(cdsPadraomostrar.AsString) + ', ' +
                                          funcao.RetornaValorEField(DBEidGerencial, 3);

  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport
end;

procedure TFrmRelManutencao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  DataSet.FieldByName('consolidafilial').AsString := 'S';
  DataSet.FieldByName('ordem').AsString := 'C';
  DataSet.FieldByName('mostrar').AsString := 'R';
end;

procedure TFrmRelManutencao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelManutencao := nil;
end;

procedure TFrmRelManutencao.FormCreate(Sender: TObject);
begin
  inherited;
  Fiscal := True;
end;

procedure TFrmRelManutencao.FormShow(Sender: TObject);
begin
  inherited;
  Height := 420;
  Width := 510;
  relatorio := 'RelManutencaoMaquinas.fr3'
end;

end.
