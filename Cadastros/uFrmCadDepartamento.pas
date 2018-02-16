unit uFrmCadDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind;

type
  TFrmCadDepartamento = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidDepartamento: TCDBEdit;
    DBEdescDepartamento: TCDBEdit;
    sdsCultura: TSQLDataSet;
    FindCultura: TCFind;
    DBEstDepartamento: TCDBEdit;
    CLabel11: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidDepartamentoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadDepartamento: TFrmCadDepartamento;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadDepartamento.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadDepartamento.DBEidDepartamentoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadDepartamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadDepartamento := nil;
end;

procedure TFrmCadDepartamento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidDepartamento;
  foco := DBEidDepartamento;
  tab_chave := 'Departamento';
  situacao := 'stDepartamento';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 575;
  Height := 365;
end;

end.
