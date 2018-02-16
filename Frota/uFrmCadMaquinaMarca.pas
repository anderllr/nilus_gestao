unit uFrmCadMaquinaMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TFrmCadMaquinaMarca = class(TFrmCadPadraoGrid)
    sdsMaquinaMarca: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidMaquinaMarca: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescMaquinaMarca: TCDBEdit;
    CLabel2: TCLabel;
    DBEstMaquinaMarca: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidMaquinaMarcaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMaquinaMarca: TFrmCadMaquinaMarca;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadMaquinaMarca.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadMaquinaMarca.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadMaquinaMarca.DBEidMaquinaMarcaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadMaquinaMarca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadMaquinaMarca := nil;
end;

procedure TFrmCadMaquinaMarca.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidMaquinaMarca;
  foco := DBEidMaquinaMarca;
  tab_chave := 'MaquinaMarca';
  situacao := 'stMaquinaMarca';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindMaquinaMarca;
  Height := 427;
  Width := 442;
end;

end.
