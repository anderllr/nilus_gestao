unit uFrmCadTipoPneu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadTipoPneu = class(TFrmCadPadraoGrid)
    sdsTipoPneu: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidTipoPneu: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescTipoPneu: TCDBEdit;
    CLabel2: TCLabel;
    DBEstTipoPneu: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidTipoPneuExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTipoPneu: TFrmCadTipoPneu;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadTipoPneu.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadTipoPneu.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadTipoPneu.DBEidTipoPneuExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadTipoPneu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadTipoPneu := nil;
end;

procedure TFrmCadTipoPneu.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTipoPneu;
  foco := DBEidTipoPneu;
  tab_chave := 'TipoPneu';
  situacao := 'stTipoPneu';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindTipoPneu;
  Height := 451;
  Width := 447;
end;

end.
