unit uCadBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient;

type
  TfrmCadBanco = class(TFrmCadPadraoGrid)
    sdsGerencial: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidBanco: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescBanco: TCDBEdit;
    CLabel2: TCLabel;
    DBEstBanco: TCDBEdit;
    FindBanco: TCFind;
    DBCHehPortador: TCDBCheckBox;
    cdsPadraoidBanco: TIntegerField;
    cdsPadraodescBanco: TStringField;
    cdsPadraoehPortador: TStringField;
    cdsPadraostBanco: TStringField;
    procedure DBEidBancoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBanco: TfrmCadBanco;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

//****************************************************************************************//
procedure TfrmCadBanco.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadBanco.DBEidBancoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadBanco := nil;
end;

procedure TfrmCadBanco.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidBanco;
  foco := DBEidBanco;
  tab_chave := 'Banco';
  situacao := 'stBanco';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindBanco;
end;

end.
