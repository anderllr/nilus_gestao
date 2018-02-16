unit uFrmCadItemFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox, System.Actions;

type
  TfrmCadItemFrete = class(TFrmCadPadraoGrid)
    sdsPadrao: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidItemFrete: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescItemFrete: TCDBEdit;
    CLabel2: TCLabel;
    DBEstItemFrete: TCDBEdit;
    DBRGtpCobranca: TCDBRadioGroup;
    DBRGfator: TCDBRadioGroup;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidItemFreteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadItemFrete: TfrmCadItemFrete;

implementation

uses uDmPadrao, uFrmCadPadrao, uFrmPrincipal,uFuncao, uDmFind;

{$R *.dfm}

procedure TfrmCadItemFrete.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadItemFrete.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;


procedure TfrmCadItemFrete.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State = dsInsert then
  begin
    cdsPadrao.FieldByName('tpCobranca').AsString := 'U';
    cdsPadrao.FieldByName('fator').AsInteger := 1;
  end;
end;

procedure TfrmCadItemFrete.DBEidItemFreteExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadItemFrete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadItemFrete := nil;
end;

procedure TfrmCadItemFrete.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidItemFrete;
  foco := DBEidItemFrete;
  tab_chave := 'ItemFrete';
  situacao := 'stItemFrete';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

end.
