unit uFrmCadCfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient;

type
  TfrmCadCfop = class(TFrmCadPadraoGrid)
    sdsCfop: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidCfop: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescCfop: TCDBEdit;
    cdsTipoDocSerie: TClientDataSet;
    FindCfop: TCFind;
    CLabel1: TCLabel;
    DBEdescAbreviada: TCDBEdit;
    CLabel2: TCLabel;
    DBEdtValidade: TCDBEdit;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidCfopExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCfop: TfrmCadCfop;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

procedure TfrmCadCfop.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadCfop.actSalvarExecute(Sender: TObject);
begin
  if trim(DBEidCfop.Text) <> '' then
    cdsPadrao.FieldByName('idGrupoCfop').AsString := copy(trim(DBEidCfop.Text), 1, 1);
  GravaChave(0, '', nil);
  inherited;
end;

procedure TfrmCadCfop.DBEidCfopExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadCfop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadCfop := nil;
end;

procedure TfrmCadCfop.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidCfop;
  foco := DBEidCfop;
  tab_chave := 'Cfop';
  FindPesquisa := FindCfop;
end;

end.
