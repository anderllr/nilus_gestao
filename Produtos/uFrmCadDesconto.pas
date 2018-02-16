unit uFrmCadDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind, System.Actions, CDBCheckBox;

type
  TFrmCadDesconto = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidDesconto: TCDBEdit;
    DBEdescDesconto: TCDBEdit;
    sdsCultura: TSQLDataSet;
    DBEstDesconto: TCDBEdit;
    CLabel11: TCLabel;
    DBCKalteraQtde: TCDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidDescontoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadDesconto: TFrmCadDesconto;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadDesconto.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadDesconto.DBEidDescontoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadDesconto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadDesconto := nil;
end;

procedure TFrmCadDesconto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidDesconto;
  foco := DBEidDesconto;
  tab_chave := 'Desconto';
  situacao := 'stDesconto';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 575;
  Height := 400;
end;

end.
