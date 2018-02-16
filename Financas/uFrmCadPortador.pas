unit uFrmCadPortador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, CLabel, Mask, DBCtrls, CDBEdit,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CFind, CDBCheckBox;

type
  TFrmCadPortador = class(TFrmCadPadraoGrid)
    CGroupBox1: TCGroupBox;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEidPortador: TCDBEdit;
    DBEdescPortador: TCDBEdit;
    sdsSegmento: TSQLDataSet;
    DBEstPortador: TCDBEdit;
    CLabel1: TCLabel;
    DBCKHabilitaConta: TCDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidPortadorExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPortador: TFrmCadPortador;

implementation

uses uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadPortador.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadPortador.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
    DataSet.FieldByName('HabilitaConta').AsString := 'N';
end;

procedure TFrmCadPortador.DBEidPortadorExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadPortador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadPortador := nil;
end;

procedure TFrmCadPortador.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidPortador;
  foco := DBEidPortador;
  tab_chave := 'Portador';
  situacao := 'stPortador';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 502;
  Height := 412;
end;

end.
