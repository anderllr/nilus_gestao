unit uFrmCadImpostoOutro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox;

type
  TfrmCadImpostoOutro = class(TFrmCadPadraoGrid)
    sdsImpostoOutro: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidImpostoOutro: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescImpostoOutro: TCDBEdit;
    CLabel2: TCLabel;
    DBEstImpostoOutro: TCDBEdit;
    FindImpostoOutro: TCFind;
    CLabel1: TCLabel;
    DBEdtInicio: TCDBEdit;
    procedure FormShow(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidImpostoOutroExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadImpostoOutro: TfrmCadImpostoOutro;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

procedure TfrmCadImpostoOutro.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadImpostoOutro.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadImpostoOutro.DBEidImpostoOutroExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadImpostoOutro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadImpostoOutro := nil;
end;

procedure TfrmCadImpostoOutro.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidImpostoOutro;
  foco := DBEidImpostoOutro;
  tab_chave := 'ImpostoOutro';
  situacao := 'stImpostoOutro';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindImpostoOutro;
end;

procedure TfrmCadImpostoOutro.FormShow(Sender: TObject);
begin
  inherited;
  Height := 461;
  Width := 514;
end;

end.
