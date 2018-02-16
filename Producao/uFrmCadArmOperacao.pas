unit uFrmCadArmOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient, System.Actions;

type
  TFrmCadArmOperacao = class(TFrmCadPadraoGrid)
    sdsOperacao: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidArmOperacao: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescArmOperacao: TCDBEdit;
    CLabel2: TCLabel;
    DBEstArmOperacao: TCDBEdit;
    DBRGtpArmOperacao: TCDBRadioGroup;
    CGroupBox3: TCGroupBox;
    DBCKgeraEstoque: TCDBCheckBox;
    DBCKclassificacao: TCDBCheckBox;
    procedure DBEidArmOperacaoExit(Sender: TObject);
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
  FrmCadArmOperacao: TFrmCadArmOperacao;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

//****************************************************************************************//
procedure TFrmCadArmOperacao.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadArmOperacao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
  begin
    cdsPadrao.FieldByName('tpArmOperacao').AsString := 'E';
    cdsPadrao.FieldByName('geraEstoque').AsString := 'S';
    cdsPadrao.FieldByName('classificacao').AsString := 'N';
  end;
end;

procedure TFrmCadArmOperacao.DBEidArmOperacaoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadArmOperacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadArmOperacao := nil;
end;

procedure TFrmCadArmOperacao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidArmOperacao;
  foco := DBEidArmOperacao;
  tab_chave := 'ArmOperacao';
  situacao := 'stArmOperacao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

end.
