unit uFrmCadCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, FMTBcd, DB, SqlExpr, CFind, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, Grids, DBGrids,
  CDBGrid, CDBMemo, CGroupBox, CDBCheckBox, CDBRadioGroup, EditAlign, CEdit,
  System.Actions, System.ImageList;

type
  TFrmCadCaixa = class(TFrmCadPadraoEmpCont)
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
    FindCaixa: TCFind;
    CGroupBox3: TCGroupBox;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    DBEcdPlanoContaG: TCDBEdit;
    DBEcdPlanoContaF: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    LookdescPlanoContaCre: TCLookUp;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraodescCaixa: TStringField;
    cdsPadraostCaixa: TStringField;
    cdsPadraocdPlanoContaF: TIntegerField;
    cdsPadraocdPlanoContaG: TIntegerField;
    FindPlanoContaFiscal: TCFind;
    FindPlanoContaGerencial: TCFind;
    cdsPadraoIntegraLote: TStringField;
    DBCKIntegraLote: TCDBCheckBox;
    cdsPadraocdPlanoContaDeb: TIntegerField;
    cdsPadraocdPlanoContaCre: TIntegerField;
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
  FrmCadCaixa: TFrmCadCaixa;

implementation

uses uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadCaixa.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  FindCaixa.ShowModal;
end;

procedure TFrmCadCaixa.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadCaixa.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
//  if cdsPadrao.State in [dsInsert] then
//    cdsPadrao.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
  DataSet.FieldByName('IntegraLote').AsString := 'S';
end;

procedure TFrmCadCaixa.DBEidCaixaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadCaixa := nil;
end;

procedure TFrmCadCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 1);
  Tabelas[0] := cdsPadrao;

  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCaixa;
  foco := DBEidCaixa;
  tab_chave := 'Caixa';
  situacao := 'stCaixa';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := true;
  Height:=497;
  Width:=543;
end;

end.
