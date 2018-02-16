unit uFrmCadSegmento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind;

type
  TFrmCadSegmento = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidSegmento: TCDBEdit;
    DBEdescSegmento: TCDBEdit;
    sdsSegmento: TSQLDataSet;
    DBEstSegmento: TCDBEdit;
    CLabel1: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidSegmentoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadSegmento: TFrmCadSegmento;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadSegmento.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadSegmento.DBEidSegmentoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadSegmento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadSegmento := nil;
end;

procedure TFrmCadSegmento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidSegmento;
  foco := DBEidSegmento;
  tab_chave := 'Segmento';
  situacao := 'stSegmento';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 425;
  Height := 391;
end;

end.
