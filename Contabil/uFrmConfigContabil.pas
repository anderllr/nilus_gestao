unit uFrmConfigContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, FMTBcd, DB, SqlExpr, CFind, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, Grids, DBGrids,
  CDBGrid, CDBMemo, CGroupBox, CDBCheckBox;

type
  TFrmConfigContabil = class(TFrmCadPadraoEmpCont)
    sdsCaixa: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    CLabel58: TCLabel;
    CLabel3: TCLabel;
    DBEidCaixa: TCDBEdit;
    DBEdescCaixa: TCDBEdit;
    DBEstCaixa: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraodescCaixa: TStringField;
    cdsPadraostCaixa: TStringField;
    FindCaixa: TCFind;
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidCaixaExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigContabil: TFrmConfigContabil;

implementation

uses uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmConfigContabil.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  FindCaixa.ShowModal;
end;

procedure TFrmConfigContabil.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmConfigContabil.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
//  if cdsPadrao.State in [dsInsert] then
//    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
end;

procedure TFrmConfigContabil.DBEidCaixaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmConfigContabil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConfigContabil := nil;
end;

procedure TFrmConfigContabil.FormCreate(Sender: TObject);
begin
  inherited;
//  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
//  Tabelas[1] := cdsResultadoItem;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCaixa;
  foco := DBEidCaixa;
  tab_chave := 'Caixa';
  situacao := 'stCaixa';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := true;
end;

end.
