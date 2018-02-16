unit uFrmCadProdDeposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CDBMemo, CPanelGradient;

type
  TFrmCadProdDeposito = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    DBEdescProdDeposito: TCDBEdit;
    DBEstProdDeposito: TCDBEdit;
    sdsProdDeposito: TSQLDataSet;
    DBMobsProdDeposito: TCDBMemo;
    CLabel1: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidProdDepositoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdDeposito: TFrmCadProdDeposito;

implementation

{$R *.dfm}

procedure TFrmCadProdDeposito.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadProdDeposito.DBEidProdDepositoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadProdDeposito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadProdDeposito := nil;
end;

procedure TFrmCadProdDeposito.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidProdDeposito;
  foco := DBEidProdDeposito;
  tab_chave := 'ProdDeposito';
  situacao := 'stProdDeposito';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

end.
