unit uFrmCadNatureza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox, System.Actions;

type
  TfrmCadNatureza = class(TFrmCadPadraoGrid)
    sdsNatureza: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidNatureza: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescNatureza: TCDBEdit;
    CLabel2: TCLabel;
    DBEstNatureza: TCDBEdit;
    FindNatureza: TCFind;
    CLabel1: TCLabel;
    DBEidCfop: TCDBEdit;
    LookCfop: TCLookUp;
    FindCfop: TCFind;
    DBCKusaPauta: TCDBCheckBox;
    DBCKfaturamento: TCDBCheckBox;
    DBCKfrete: TCDBCheckBox;
    DBMdescNf: TCDBMemo;
    CLabel3: TCLabel;
    procedure FormShow(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidNaturezaExit(Sender: TObject);
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
  frmCadNatureza: TfrmCadNatureza;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TfrmCadNatureza.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadNatureza.actSalvarExecute(Sender: TObject);
begin
  if trim(DBEidCfop.Text) = '' then
  begin
    messagedlg('O Cfop é obrigatório!', mtwarning, [mbok], 0);
    exit;
  end;
  if StrToInt(copy(trim(DBEidCfop.Text), 1, 1)) < 5 then
    cdsPadrao.FieldByName('tpNatureza').AsString := 'ENTRADA'
  else
    cdsPadrao.FieldByName('tpNatureza').AsString := 'SAIDA';
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadNatureza.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State = dsInsert then
  begin
    cdsPadrao.FieldByName('faturamento').AsString := 'N';
    cdsPadrao.FieldByName('usaPauta').AsString := 'N';
    cdsPadrao.FieldByName('frete').AsString := 'N';
  end;
end;

procedure TfrmCadNatureza.DBEidNaturezaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadNatureza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadNatureza := nil;
end;

procedure TfrmCadNatureza.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidNatureza;
  foco := DBEidNatureza;
  tab_chave := 'Natureza';
  situacao := 'stNatureza';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindNatureza;
end;

procedure TfrmCadNatureza.FormShow(Sender: TObject);
begin
  inherited;
  Height := 540;
  Width := 515;
end;

end.
