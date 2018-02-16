unit uCadSegModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient;

type
  TfrmCadSegModulo = class(TFrmCadPadraoGrid)
    sdsSegModulo: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidSegModulo: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescSegModulo: TCDBEdit;
    CLabel2: TCLabel;
    DBEstSegModulo: TCDBEdit;
    procedure DBEidSegModuloExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSegModulo: TfrmCadSegModulo;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

//****************************************************************************************//
procedure TfrmCadSegModulo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadSegModulo.DBEidSegModuloExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadSegModulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadSegModulo := nil;
end;

procedure TfrmCadSegModulo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidSegModulo;
  foco := DBEidSegModulo;
  tab_chave := 'SegModulo';
  situacao := 'stSegModulo';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindSegModulo;
  Height := 422;
  Width := 520;
end;

end.
