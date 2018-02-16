unit uFrmCadCondicaoPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CCheckBox, CDBCheckBox,
  CDBRadioGroup, System.Actions;

type
  TFrmCadCondicaoPgto = class(TFrmCadPadrao)
    sdsCondicaoPgto: TSQLDataSet;
    actCadCidade: TAction;
    sdsCondicaoPgtoDia: TSQLDataSet;
    dspCondicaoPgtoDia: TDataSetProvider;
    cdsCondicaoPgtoDia: TClientDataSet;
    dsCondicaoPgtoDia: TDataSource;
    CGroupBox13: TCGroupBox;
    DBEidCondicaoPgto: TCDBEdit;
    CLabel14: TCLabel;
    CGroupBox1: TCGroupBox;
    BtnAdicionar: TCBitBtn;
    BtnCancelarItem: TCBitBtn;
    BtnRetirar: TCBitBtn;
    BtnNovoItem: TCBitBtn;
    CGroupBox2: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox4: TCGroupBox;
    DBEstCondicaoPgto: TCDBEdit;
    CLabel25: TCLabel;
    DBEdias: TCDBEdit;
    CLabel5: TCLabel;
    CLabel4: TCLabel;
    cdsProduto: TClientDataSet;
    cdsEquipamentos: TClientDataSet;
    FindRequisicao: TCFind;
    DBEdescCondicaoPgto: TCDBEdit;
    DBEPrazoMedio: TCDBEdit;
    CLabel2: TCLabel;
    cdsCondicaoPgtoDiaidCondicaoPgto: TSmallintField;
    cdsCondicaoPgtoDiadias: TSmallintField;
    cdsCondicaoPgtoDiasomaDias: TAggregateField;
    procedure cdsCondicaoPgtoDiaAfterEdit(DataSet: TDataSet);
    procedure dspCondicaoPgtoDiaBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsCondicaoPgtoDiaAfterInsert(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidCondicaoPgtoExit(Sender: TObject);
    procedure dsCondicaoPgtoDiaStateChange(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCondicaoPgto: TFrmCadCondicaoPgto;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadCondicaoPgto.actCancelarExecute(Sender: TObject);
begin
  cdsCondicaoPgtoDia.IndexFieldNames := '';
  inherited;
end;

procedure TFrmCadCondicaoPgto.actExcluirExecute(Sender: TObject);
begin
  cdsCondicaoPgtoDia.IndexFieldNames := '';
  inherited;
end;

procedure TFrmCadCondicaoPgto.actNovoExecute(Sender: TObject);
begin
  cdsCondicaoPgtoDia.IndexFieldNames := '';
  inherited;

end;

procedure TFrmCadCondicaoPgto.actSalvarExecute(Sender: TObject);
begin
  if cdsCondicaoPgtoDia.State in [dsInsert, dsEdit] then
    cdsCondicaoPgtoDia.Cancel;

  if cdsCondicaoPgtoDia.RecordCount = 0 then
  begin
    messagedlg('Você precisa informar os dias de prazo', mtwarning, [mbok], 0);
    exit;
  end;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadCondicaoPgto.BtnAdicionarClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCondicaoPgtoDia, BtnAdicionar, BtnCancelarItem, BtnRetirar, BtnNovoItem, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionar' then
  begin
    cdsCondicaoPgtoDia.IndexFieldNames := 'dias';
    //calcula o prazo médio
    if cdsCondicaoPgtoDiasomaDias.Value > 0 then
      cdsPadrao.FieldByName('PrazoMedio').AsInteger := Trunc(cdsCondicaoPgtoDiasomaDias.Value/cdsCondicaoPgtoDia.RecordCount)
    else
      cdsPadrao.FieldByName('PrazoMedio').AsInteger := 0;

    BtnNovoItem.Click;
  end;

  DBEdias.SetFocus;
end;

procedure TFrmCadCondicaoPgto.cdsCondicaoPgtoDiaAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadCondicaoPgto.cdsCondicaoPgtoDiaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadCondicaoPgto.DBEidCondicaoPgtoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
end;

procedure TFrmCadCondicaoPgto.dspCondicaoPgtoDiaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadCondicaoPgto.dsCondicaoPgtoDiaStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCondicaoPgtoDia, BtnAdicionar, BtnCancelarItem, BtnRetirar, btnNovoItem);
end;

procedure TFrmCadCondicaoPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsCondicaoPgtoDia.IndexFieldNames := '';
  inherited;
  FrmCadCondicaoPgto := nil;
end;

procedure TFrmCadCondicaoPgto.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCondicaoPgtoDia;
  chave[0] := DBEidCondicaoPgto;
  foco := DBEidCondicaoPgto;
  tab_chave := 'CondicaoPgto';
  FindPesquisa := dmFind.FindCondicaoPgto;
  situacao := 'stCondicaoPgto';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadCondicaoPgto.FormShow(Sender: TObject);
begin
  inherited;
  Height := 456;
  Width := 498;
end;

end.
