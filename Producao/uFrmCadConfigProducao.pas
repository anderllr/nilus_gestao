unit uFrmCadConfigProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox, uFrmCadPadraoGrid, uFrmCadPadrao, cxShellBrowserDialog,   uFrmCadPadraoEmpFiscal,
  System.Actions, cxClasses, System.ImageList;

type
  TfrmCadConfigProducao = class(TFrmCadPadraoEmpFiscal)
    sdsConfigProducao: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    AbrePasta: TcxShellBrowserDialog;
    OpenDialog1: TOpenDialog;
    DBEidArmOperacaoVenda: TCDBEdit;
    LookOperacao: TCLookUp;
    CLabel19: TCLabel;
    CLabel93: TCLabel;
    DBEprTolFrete: TCDBEdit;
    CLabel1: TCLabel;
    DBEvlTarifaFrete: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBEidDocSerieAdto: TCDBEdit;
    LookDocSerie: TCLookUp;
    CLabel3: TCLabel;
    DBEidGerencialAdto: TCDBEdit;
    LookGerencialP: TCLookUp;
    CLabel13: TCLabel;
    DBEidResultadoAdto: TCDBEdit;
    CLookUp1: TCLookUp;
    CLabel11: TCLabel;
    DBEidDocSerieSaldo: TCDBEdit;
    CLookUp2: TCLookUp;
    DBEidResultadoSaldo: TCDBEdit;
    CLabel2: TCLabel;
    CLookUp3: TCLookUp;
    DBEidGerencialSaldo: TCDBEdit;
    CLabel4: TCLabel;
    CLookUp4: TCLookUp;
    CLabel5: TCLabel;
    CGroupBox3: TCGroupBox;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    CLabel8: TCLabel;
    DBEidDocSerieComissao: TCDBEdit;
    CLookUp5: TCLookUp;
    DBEidGerencialComissao: TCDBEdit;
    CLookUp6: TCLookUp;
    DBEidResultadoComissao: TCDBEdit;
    CLookUp7: TCLookUp;
    DBRGtpCalcFrete: TCDBRadioGroup;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel23: TCLabel;
    TabFiscal: TTabSheet;
    CGroupBox4: TCGroupBox;
    DBEidNaturezaContra: TCDBEdit;
    LookNatureza: TCLookUp;
    CLabel9: TCLabel;
    CLookUp8: TCLookUp;
    DBEidDocSerieContra: TCDBEdit;
    CLabel10: TCLabel;
    LookDescCfop: TCLookUp;
    LookIdCfop: TCLookUp;
    Estoque: TTabSheet;
    CGroupBox5: TCGroupBox;
    DBEidProdDepositoRom: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CLabel12: TCLabel;
    DBEidProdDepositoContCom: TCDBEdit;
    CLookUp9: TCLookUp;
    CLabel14: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConfigProducao: TfrmCadConfigProducao;

implementation

uses uDmPadrao, uDmFind, uFrmPesEmpContabil, uFrmPrincipal;

{$R *.dfm}


//****************************************************************************************//
procedure TfrmCadConfigProducao.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TfrmCadConfigProducao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
    cdsPadrao.FieldByName('tpCalcFrete').AsString := 'S';
end;

procedure TfrmCadConfigProducao.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidEmpresa.Text) <> '') and (trim(DBEidCadEmpresa.Text) <> '') then
    BuscaChave(cdsPadrao, chave);
end;

procedure TfrmCadConfigProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadConfigProducao := nil;
end;

procedure TfrmCadConfigProducao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  foco := DBEidArmOperacaoVenda;
  tab_chave := 'ConfigProducao';
  Height := 540;
  Width := 678;
end;

procedure TfrmCadConfigProducao.FormShow(Sender: TObject);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Append;

  DBEidEmpresaExit(DBEidEmpresa);
end;

end.
