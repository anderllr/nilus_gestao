unit uCadMovFinanceira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  System.Actions;

type
  TfrmCadMovFinanceira = class(TFrmCadPadraoGrid)
    sdsGerencial: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescMovFinanceira: TCDBEdit;
    CLabel2: TCLabel;
    DBEstMovFinanceira: TCDBEdit;
    cdsTpMovFinanceira: TClientDataSet;
    FindMovOrigem: TCFind;
    CLabel16: TCLabel;
    DBEidMovOrigem: TCDBEdit;
    LookMovOrigem: TCLookUp;
    DBRGsinal: TCDBRadioGroup;
    DBEidTpMovFinanceira: TCDBEdit;
    LookTpMovFinanceira: TCLookUp;
    FindTpMovFinanceira: TCFind;
    cdsPadraoidMovFinanceira: TIntegerField;
    cdsPadraoidMovOrigem: TSmallintField;
    cdsPadraodescMovFinanceira: TStringField;
    cdsPadraoidTpMovFinanceira: TSmallintField;
    cdsPadraosinal: TStringField;
    cdsPadraostMovFinanceira: TStringField;
    cdsPadraodescTpMovFinanceira: TStringField;
    FindMovFinanceira: TCFind;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidMovFinanceiraExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovFinanceira: TfrmCadMovFinanceira;

implementation

uses uDmPadrao, uFrmCadPadrao;

{$R *.dfm}

procedure TfrmCadMovFinanceira.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadMovFinanceira.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadMovFinanceira.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
    cdsPadrao.FieldByName('sinal').AsString := '+';
end;

procedure TfrmCadMovFinanceira.DBEidMovFinanceiraExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadMovFinanceira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadMovFinanceira := nil;
end;

procedure TfrmCadMovFinanceira.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidMovFinanceira;
  foco := DBEidMovFinanceira;
  tab_chave := 'MovFinanceira';
  situacao := 'stMovFinanceira';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindMovFinanceira;
end;

end.
