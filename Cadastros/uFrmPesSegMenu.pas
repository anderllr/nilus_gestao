unit uFrmPesSegMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, DB, SqlExpr, DBClient, Provider,
  ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  Grids, DBGrids, CDBGrid, CGroupBox, CLookUp, CLabel, Mask, DBCtrls, CDBEdit;

type
  TFrmPesSegMenu = class(TFrmPadraoPesquisa)
    DBEdescSegMenu: TCDBEdit;
    CLabel58: TCLabel;
    DBEidSegMenu: TCDBEdit;
    CLabel3: TCLabel;
    DBEdescSegGrupoMenu: TCLookUp;
    DBEidSegGrupoMenu: TCDBEdit;
    CLabel1: TCLabel;
    LookSegModulo: TCLookUp;
    CLookUp1: TCLookUp;
    DBEidSegModulo: TCDBEdit;
    CLabel61: TCLabel;
    cdsPadraoidSegModulo: TIntegerField;
    cdsPadraoidSegGrupoMenu: TIntegerField;
    cdsPadraoidSegMenu: TIntegerField;
    cdsPadraodescSegMenu: TStringField;
    cdsGrididSegModulo: TSmallintField;
    cdsGrididSegGrupoMenu: TSmallintField;
    cdsGrididSegMenu: TSmallintField;
    cdsGriddescSegMenu: TStringField;
    cdsGriddescSegMenuInterno: TStringField;
    cdsGridstSegMenu: TStringField;
    cdsGridexcluir: TStringField;
    cdsGridacessar: TStringField;
    cdsGridincluir: TStringField;
    cdsGrideditar: TStringField;
    cdsGridobsSegMenu: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idSegModulo : integer;
  end;

var
  FrmPesSegMenu: TFrmPesSegMenu;

implementation

uses uDmFind;

{$R *.dfm}

procedure TFrmPesSegMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmPesSegMenu.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidSegModulo;
end;

end.
