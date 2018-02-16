unit uFrmTpCadDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient;

type
  TFrmTpCadDesconto = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    DBEidTpCadDesconto: TCDBEdit;
    CLabel2: TCLabel;
    DBEdescTpCadDesconto: TCDBEdit;
    sdsCadTpDesconto: TSQLDataSet;
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidTpCadDescontoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTpCadDesconto: TFrmTpCadDesconto;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmTpCadDesconto.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmTpCadDesconto.DBEidTpCadDescontoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmTpCadDesconto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmTpCadDesconto := nil;
end;

procedure TFrmTpCadDesconto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidTpCadDesconto;
  foco := DBEidTpCadDesconto;
  tab_chave := 'TpCadDesconto';
end;

end.
