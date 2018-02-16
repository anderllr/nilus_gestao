unit uFrmCadProdMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, CLookUp,
  FMTBcd, SqlExpr, CPanelGradient;

type
  TFrmCadProdMedida = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    DBEidProdMedida: TCDBEdit;
    CLabel3: TCLabel;
    DBEstProdMedida: TCDBEdit;
    DBEdescProdMedida: TCDBEdit;
    CLabel2: TCLabel;
    DBEidProdMedidaSub: TCDBEdit;
    CLabel4: TCLabel;
    LookUnidade: TCLookUp;
    DBEqtProdMedidaSub: TCDBEdit;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEdescAbreviada: TCDBEdit;
    sdsProdMedida: TSQLDataSet;
    LookUnidTransporte: TCLookUp;
    DBEcUnid: TCDBEdit;
    CLabel7: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidProdMedidaExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdMedida: TFrmCadProdMedida;

implementation

uses uDmFind;

{$R *.dfm}

procedure TFrmCadProdMedida.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadProdMedida.DBEidProdMedidaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadProdMedida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadProdMedida := nil;
end;

procedure TFrmCadProdMedida.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidProdMedida;
  foco := DBEidProdMedida;
  tab_chave := 'ProdMedida';
  situacao := 'stProdMedida';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 415;
  Width := 458;
end;

end.
