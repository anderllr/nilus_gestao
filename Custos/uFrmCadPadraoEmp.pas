unit uFrmCadPadraoEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox, Grids,
  DBGrids, CDBGrid, CDBMemo, EditAlign, CEdit, CDBComboBox, CFind;

type
  TFrmCadProdAplicacao = class(TFrmCadPadraoEmpFiscal)
    TabSheet1: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    DBEidAplicacao: TCDBEdit;
    CLabel8: TCLabel;
    DBMObservacao: TCDBMemo;
    CLabel9: TCLabel;
    DBEdtAplicacao: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBEidProduto: TCDBEdit;
    CLabel10: TCLabel;
    LookProduto: TCLookUp;
    LookProduto2: TCLookUp;
    CGroupBox12: TCGroupBox;
    BtnSalvarCli: TCBitBtn;
    BtnCancelarCli: TCBitBtn;
    BtnExcluirCli: TCBitBtn;
    BtnNovoCli: TCBitBtn;
    CGroupBox3: TCGroupBox;
    DBGInfo_Produto: TCDBGrid;
    CLabel12: TCLabel;
    CBitBtn1: TCBitBtn;
    DBETotal: TCDBEdit;
    CLabel14: TCLabel;
    CLabel13: TCLabel;
    DBEstAplicacao: TCDBEdit;
    FindProdDeposito: TCFind;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    CLabel5: TCLabel;
    CBitBtn4: TCBitBtn;
    Label1: TLabel;
    FindRateio: TCFind;
    FindResultado: TCFind;
    Label2: TLabel;
    DBEidRateio: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CLabel11: TCLabel;
    DBEQuant: TCDBEdit;
    CLabel6: TCLabel;
    DBEProdDeposito: TCDBEdit;
    LookRateio: TCLookUp;
    FindProduto: TCFind;
    cdsProdAplicacao: TClientDataSet;
    dspProdAplicacao: TDataSetProvider;
    dsProdAplicacao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdAplicacao: TFrmCadProdAplicacao;

implementation

{$R *.dfm}

end.
