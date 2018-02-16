unit uFrmCadGrupoCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind;

type
  TFrmCadGrupoCad = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidGrupoCad: TCDBEdit;
    DBEdescGrupoCad: TCDBEdit;
    sdsSegmento: TSQLDataSet;
    DBEstGrupoCad: TCDBEdit;
    CLabel1: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidGrupoCadExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadGrupoCad: TFrmCadGrupoCad;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadGrupoCad.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadGrupoCad.DBEidGrupoCadExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadGrupoCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadGrupoCad := nil;
end;

procedure TFrmCadGrupoCad.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidGrupoCad;
  foco := DBEidGrupoCad;
  tab_chave := 'GrupoCad';
  situacao := 'stGrupoCad';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 425;
  Height := 391;
end;

end.
