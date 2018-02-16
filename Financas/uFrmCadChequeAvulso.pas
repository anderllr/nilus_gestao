unit uFrmCadChequeAvulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CDBMemo, CGroupBox, FMTBcd,
  SqlExpr, uFrmCadPadraoEmpCont, System.Actions;

type
  TFrmCadChequeAvulso = class(TFrmCadPadraoEmpFiscal)
    CLabel1: TCLabel;
    DBEidCheque: TCDBEdit;
    DBEidConta: TCDBEdit;
    CLabel3: TCLabel;
    CGroupBox1: TCGroupBox;
    FindConta: TCFind;
    sdsMovConta: TSQLDataSet;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CLabel4: TCLabel;
    DBEdtMovConta: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtvencimento: TCDBEdit;
    CLabel7: TCLabel;
    DBMHistorico: TCDBMemo;
    CGroupBox3: TCGroupBox;
    CLabel12: TCLabel;
    LookdescCaixa: TCLookUp;
    DBEidCaixa: TCDBEdit;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadChequeAvulso: TFrmCadChequeAvulso;

implementation

uses uDmPadrao;

{$R *.dfm}

end.
