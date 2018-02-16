unit uFrmCadDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, FMTBcd, DB, SqlExpr, Provider, DBClient, ActnList,
  ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls,
  CPageControl, Grids, DBGrids, CDBGrid, DBCtrls, CDBCheckBox, Mask, CDBEdit,
  CLabel, CGroupBox;

type
  TFrmCadDocumento = class(TFrmCadPadrao)
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    CLabel58: TCLabel;
    DBEidDocumento: TCDBEdit;
    DBEdescDocumento: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    cdsPadraoidDocumento: TIntegerField;
    cdsPadraodescDocumento: TStringField;
    cdsPadraostDocumento: TStringField;
    DBEstDocumento: TCDBEdit;
    CLabel2: TCLabel;
    procedure DBEidDocumentoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadDocumento: TFrmCadDocumento;

implementation

uses uDmFind;

{$R *.dfm}

procedure TFrmCadDocumento.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadDocumento.DBEidDocumentoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadDocumento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadDocumento := nil;
end;

procedure TFrmCadDocumento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidDocumento;
  foco := DBEidDocumento;
  tab_chave := 'Documento';
  situacao := 'stDocumento';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := True;
end;

procedure TFrmCadDocumento.FormShow(Sender: TObject);
begin
  inherited;
  Height := 413;
  Width := 525;
end;

end.
