unit uCadFabricante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox, uFrmCadPadraoGrid;

type
  TfrmCadFabricante = class(TFrmCadPadraoGrid)
    sdsDocSerie: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidFabricante: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescFabricante: TCDBEdit;
    CLabel2: TCLabel;
    DBEstFabricante: TCDBEdit;
    cdsPadraoidFabricante: TIntegerField;
    cdsPadraodescFabricante: TStringField;
    cdsPadraostFabricante: TStringField;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidFabricanteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFabricante: TfrmCadFabricante;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TfrmCadFabricante.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadFabricante.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadFabricante.DBEidFabricanteExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadFabricante.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadFabricante:= nil;
end;

procedure TfrmCadFabricante.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidFabricante;
  foco := DBEidFabricante;
  tab_chave := 'Fabricante';
  situacao := 'stFabricante';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindFabricante;
end;

end.
