unit uFrmRelBalancetebkb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRel, ExtCtrls, DBCtrls, CDBRadioGroup, StdCtrls, CGroupBox,
  CLookUp, Mask, CDBEdit, CLabel, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient, Provider,
  ActnList, ImgList, Buttons, CBitBtn, CPanelGradient, CCheckBox, CRadioGroup, EditAlign, CEdit;

type
  TFrmRelbalancetebkb = class(TFrmPadraoRel)
    FindEmpresa: TCFind;
    CGroupBox1: TCGroupBox;
    DBRGtpPlanoConta: TCDBRadioGroup;
    GPPeriodo: TCGroupBox;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    DBEnrGrau: TCDBEdit;
    DBEClassificacaoIni: TCDBEdit;
    DBEClassificacaoFim: TCDBEdit;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CGroupBox2: TCGroupBox;
    CRadioGroup1: TCRadioGroup;
    CCheckBox1: TCCheckBox;
    CCheckBox2: TCCheckBox;
    CCheckBox3: TCCheckBox;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    DBEdtIni: TCDBEdit;
    DBEdtFim: TCDBEdit;
    frxRel: TfrxReport;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraonrGrau: TSmallintField;
    cdsPadraoclassificacaoIni: TStringField;
    cdsPadraoclassificacaoFim: TStringField;
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    cdsRelatorioclassificacao: TStringField;
    cdsRelatoriodescCadEmpresa: TStringField;
    cdsRelatoriocdPlanoConta: TStringField;
    cdsRelatoriodescPlanoConta: TStringField;
    cdsRelatoriovlSaldoAnt: TFMTBCDField;
    cdsRelatoriovlDebito: TFMTBCDField;
    cdsRelatoriovlCredito: TFMTBCDField;
    cdsRelatoriovlSaldoAtual: TFMTBCDField;
    cdsRelatorionrGrau: TSmallintField;
    EDdtEmissao: TCEdit;
    cdsPadraoidEmpresa: TIntegerField;
    procedure dsPadraoStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelbalancetebkb: TFrmRelbalancetebkb;

implementation

{$R *.dfm}

uses uDmPadrao;

procedure TFrmRelbalancetebkb.actGerarExecute(Sender: TObject);
begin
//  inherited;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'contRelBalancete.fr3');
  (frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Add(DBEnrGrau.Text);
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Add(EDdtEmissao.Text);

  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelbalancetebkb.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
EDdtEmissao.text:=DatetoStr(date);
end;

procedure TFrmRelbalancetebkb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//  FrmRelBalancete := nil;
end;

procedure TFrmRelbalancetebkb.FormCreate(Sender: TObject);
begin
  inherited;

  proc := 'spContRelBalancete';
  relatorio := 'contRelBalancete.fr3'; //Arquivo de Relatorio
  SetLength(parametro, 7);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpPlanoConta;
  parametro[2] := DBEdtIni;
  parametro[3] := DBEdtFim;
  parametro[4] := DBEnrGrau;
  parametro[5] := DBEclassificacaoIni;
  parametro[6] := DBEclassificacaoFim;


//  ordem := ' ORDER BY classificacao'; --Verificar com o mario o funcionamento


  Height := 370;
  Width := 487;
end;

procedure TFrmRelbalancetebkb.FormShow(Sender: TObject);
begin
  inherited;
DBEdtIni.setfocus;
end;

end.
