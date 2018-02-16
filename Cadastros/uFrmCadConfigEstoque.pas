unit uFrmCadConfigEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, FMTBcd, StdCtrls, DBCtrls, CDBCheckBox, CFind,
  DB, SqlExpr, Provider, DBClient, ActnList, ImgList, CLookUp, Mask, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl;

type
  TFrmCadPadraoEmpCont2 = class(TFrmCadPadraoEmpCont)
    CDBCheckBox1: TCDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPadraoEmpCont2: TFrmCadPadraoEmpCont2;

implementation

{$R *.dfm}

end.
