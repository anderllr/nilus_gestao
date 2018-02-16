unit uFrmPesCadFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, DB, DBClient, Provider, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, FMTBcd, SqlExpr;

type
  TFrmPesCadFiscal = class(TFrmPadraoPesquisa)
    CLabel42: TCLabel;
    DBEdescCadCliente: TCDBEdit;
    CLabel43: TCLabel;
    DBEdescAbreviadaCli: TCDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesCadFiscal: TFrmPesCadFiscal;

implementation

{$R *.dfm}

end.
