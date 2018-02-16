unit uFrmCadFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind;

type
  TFrmCadFuncao = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidFuncao: TCDBEdit;
    DBEdescFuncao: TCDBEdit;
    sdsCultura: TSQLDataSet;
    DBEstFuncao: TCDBEdit;
    CLabel11: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidFuncaoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncao: TFrmCadFuncao;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadFuncao.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadFuncao.DBEidFuncaoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadFuncao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadFuncao := nil;
end;

procedure TFrmCadFuncao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidFuncao;
  foco := DBEidFuncao;
  tab_chave := 'Funcao';
  situacao := 'stFuncao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 575;
  Height := 365;
end;

end.
