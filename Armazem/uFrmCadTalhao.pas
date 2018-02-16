unit uFrmCadTalhao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, CLookUp,
  CFind, FMTBcd, SqlExpr, CPanelGradient;

type
  TFrmCadTalhao = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    DBEidTalhao: TCDBEdit;
    CLabel3: TCLabel;
    DBEstTalhao: TCDBEdit;
    DBEdescTalhao: TCDBEdit;
    CLabel2: TCLabel;
    DBEidProduto: TCDBEdit;
    CLabel4: TCLabel;
    LookProduto: TCLookUp;
    CLabel6: TCLabel;
    DBEarea: TCDBEdit;
    CLabel5: TCLabel;
    DBEidCultura: TCDBEdit;
    LookCultura: TCLookUp;
    FindProduto: TCFind;
    FindCultura: TCFind;
    sdsTalhao: TSQLDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidTalhaoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTalhao: TFrmCadTalhao;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmCadTalhao.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTalhao.DBEidTalhaoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTalhao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadTalhao := nil;
end;

procedure TFrmCadTalhao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTalhao;
  foco := DBEidTalhao;
  tab_chave := 'Talhao';
  situacao := 'stTalhao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

end.
