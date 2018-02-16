unit uFrmCadSeguradora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, FMTBcd, DB, SqlExpr, Provider, DBClient, ActnList,
  ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls,
  CPageControl, CLabel, Mask, DBCtrls, CDBEdit, CGroupBox, Grids, DBGrids,
  CDBGrid;

type
  TFrmCadSeguradora = class(TFrmCadPadrao)
    cdsPadraoidSeguradora: TIntegerField;
    cdsPadraodescSeguradora: TStringField;
    cdsPadraofonePrincipal: TStringField;
    cdsPadraofoneSegundo: TStringField;
    cdsPadraofoneTerceiro: TStringField;
    cdsPadraosite: TStringField;
    cdsPadraoemail: TStringField;
    cdsPadraostSeguradora: TStringField;
    CGroupBox1: TCGroupBox;
    DBEidSeguradora: TCDBEdit;
    CLabel1: TCLabel;
    DBEdescSeguradora: TCDBEdit;
    CLabel2: TCLabel;
    CLabel14: TCLabel;
    DBEstSeguradora: TCDBEdit;
    DBEfonePrincipal: TCDBEdit;
    CLabel37: TCLabel;
    DBEfoneSegundo: TCDBEdit;
    CLabel3: TCLabel;
    DBEfoneTerceiro: TCDBEdit;
    CLabel4: TCLabel;
    DBEsite: TCDBEdit;
    CLabel5: TCLabel;
    DBEemail: TCDBEdit;
    CLabel6: TCLabel;
    Group1: TCGroupBox;
    DBGrid: TCDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidSeguradoraExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadSeguradora: TFrmCadSeguradora;

implementation

{$R *.dfm}

procedure TFrmCadSeguradora.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadSeguradora.DBEidSeguradoraExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(tabelas[0], chave);
end;

procedure TFrmCadSeguradora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadSeguradora := nil;
end;

procedure TFrmCadSeguradora.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidSeguradora;
  foco := DBEidSeguradora;
  tab_chave := 'CadSeguradora';
  situacao := 'stSeguradora';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 415;
  Width := 650;
  Grid := True;
end;

end.
