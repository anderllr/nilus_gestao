unit uCadPropriedade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TfrmCadPropriedade = class(TFrmCadPadraoGrid)
    sdsPropriedade: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidPropriedade: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescPropriedade: TCDBEdit;
    CLabel2: TCLabel;
    DBEstPropriedade: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    FindPropriedade: TCFind;
    CLabel1: TCLabel;
    DBEqtAreaTotal: TCDBEdit;
    DBMobsPropriedade: TCDBMemo;
    CLabel3: TCLabel;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidPropriedadeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPropriedade: TfrmCadPropriedade;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

procedure TfrmCadPropriedade.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadPropriedade.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadPropriedade.DBEidPropriedadeExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadPropriedade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadPropriedade := nil;
end;

procedure TfrmCadPropriedade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidPropriedade;
  foco := DBEidPropriedade;
  tab_chave := 'Propriedade';
  situacao := 'stPropriedade';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindPropriedade;
end;

end.
