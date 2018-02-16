unit uCadCriterioCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox;

type
  TfrmCadCriterioCompra = class(TFrmCadPadraoGrid)
    sdsDocSerie: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidCriterioCompra: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescCriterioCompra: TCDBEdit;
    CLabel2: TCLabel;
    DBEstCriterioCompra: TCDBEdit;
    CLabel16: TCLabel;
    DBEpesoPreco: TCDBEdit;
    DBEpesoPrazo: TCDBEdit;
    CLabel1: TCLabel;
    DBEpesoEntrega: TCDBEdit;
    CLabel3: TCLabel;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidCriterioCompraExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCriterioCompra: TfrmCadCriterioCompra;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TfrmCadCriterioCompra.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadCriterioCompra.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadCriterioCompra.DBEidCriterioCompraExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadCriterioCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadCriterioCompra := nil;
end;

procedure TfrmCadCriterioCompra.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidCriterioCompra;
  foco := DBEidCriterioCompra;
  tab_chave := 'CriterioCompra';
  situacao := 'stCriterioCompra';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindCriterioCompra;
end;

end.
