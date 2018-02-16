unit uFrmCadCultura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind;

type
  TFrmCadCultura = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidCultura: TCDBEdit;
    DBEdescCultura: TCDBEdit;
    sdsCultura: TSQLDataSet;
    FindCultura: TCFind;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidCulturaExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCultura: TFrmCadCultura;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmCadCultura.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadCultura.DBEidCulturaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadCultura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadCultura := nil;
end;

procedure TFrmCadCultura.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidCultura;
  foco := DBEidCultura;
  tab_chave := 'Cultura';
  Width := 425;
  Height := 340;
end;

end.
