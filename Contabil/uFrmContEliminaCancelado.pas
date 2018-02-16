unit uFrmContEliminaCancelado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, CFind, SqlExpr, DB, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, CDBComboBox, CDBRadioGroup;

type
  TFrmContEliminaCancelado = class(TFrmPadraoPesqEmpContabil)
    CGroupBox2: TCGroupBox;
    CLabel6: TCLabel;
    CLabel10: TCLabel;
    DBEidLoteIni: TCDBEdit;
    DBEidLoteFim: TCDBEdit;
    DBRGtpPlanoConta: TCDBRadioGroup;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraoidLoteIni: TIntegerField;
    cdsPadraoidLoteFim: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraocdPlanoConta: TIntegerField;
    DBEdtInicial: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel5: TCLabel;
    DBEcdPlanoConta: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    CLabel12: TCLabel;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididLote: TIntegerField;
    cdsGrididContLancamento: TIntegerField;
    cdsGriddtContLancamento: TSQLTimeStampField;
    cdsGridcdPlanoContaDeb: TIntegerField;
    cdsGridcdPlanoContaCre: TIntegerField;
    cdsGridvlContLancamento: TFMTBCDField;
    cdsGridobsContLancamento: TStringField;
    cdsGridtpPlanoConta: TStringField;
    cdsGridstContLancamento: TStringField;
    cdsGridSEL: TBooleanField;
    PanConfirmacao: TCPanelGradient;
    BtnConfirmar: TCBitBtn;
    BtnNenhum: TCBitBtn;
    BtnTodos: TCBitBtn;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actExecutarExecute(Sender: TObject);
    procedure MarcaGrid(marca: string);
    procedure BtnNenhumClick(Sender: TObject);
    procedure BtnTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    qtSel : Integer;
  public
    { Public declarations }
  end;

var
  FrmContEliminaCancelado: TFrmContEliminaCancelado;

implementation

uses uDmFind, uFuncao, uDmPadrao;

{$R *.dfm}

procedure TFrmContEliminaCancelado.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
//  inherited;
  if trim(cdsPadraotpPlanoConta.AsString) = '' then
  begin
    messagedlg('Você precisa informar se é Fiscal ou Gerencial!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'SELECT idEmpresa, idLote, idContLancamento, dtContLancamento, cdPlanoContaDeb, ' +
         ' cdPlanoContaCre, vlContLancamento, obsContLancamento, tpPlanoConta, stContLancamento ' +
         ' FROM ContLancamento WHERE idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND tpPlanoConta = ' + QuotedStr(cdsPadraotpPlanoConta.AsString);
  if trim(DBEidLoteIni.Text) <> '' then
    sql := sql + ' AND idLote >= ' + DBEidLoteIni.Text;
  if trim(DBEidLoteFim.Text) <> '' then
    sql := sql + ' AND idLote <= ' + DBEidLoteFim.Text;
  if trim(DBEdtInicial.Text) <> '' then
    sql := sql + ' AND dtContLancamento >= ' + funcao.RetornaValorEField(DBEdtInicial, 3);

  if trim(DBEdtFinal.Text) <> '' then
    sql := sql + ' AND dtContLancamento <= ' + funcao.RetornaValorEField(DBEdtFinal, 3);

  if trim(DBEcdPlanoConta.Text) <> '' then
    sql := sql + ' AND ((cdPlanoContaDeb = ' + DBEcdPlanoConta.Text + ') OR (cdPlanoContaCre = ' + DBEcdPlanoConta.Text + '))';

  sql := sql + ' AND stContLancamento = ' + QuotedStr('CANCELADO');

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  BtnTodos.Click;
end;

procedure TFrmContEliminaCancelado.BtnConfirmarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if messagedlg('Confirma a exclusão de ' + IntToStr(qtSel) + ' registro(s)', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if cdsGridSEL.AsBoolean then
      begin
        sql := 'DELETE FROM ContImporta WHERE idEmpresa = ' + DBEidEmpresa.Text +
               ' AND idLote = ' + cdsGrididLote.AsString +
               ' AND tpPlanoConta = ' + QuotedStr(cdsGridtpPlanoConta.AsString) +
               ' AND idContLancamento = ' + cdsGrididContLancamento.AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);

        sql := 'DELETE FROM ContLancamento WHERE idEmpresa = ' + DBEidEmpresa.Text +
               ' AND idLote = ' + cdsGrididLote.AsString +
               ' AND tpPlanoConta = ' + QuotedStr(cdsGridtpPlanoConta.AsString) +
               ' AND idContLancamento = ' + cdsGrididContLancamento.AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      cdsGrid.Next;
    end;
    BtnExecutar.Click;
  end;

end;

procedure TFrmContEliminaCancelado.BtnNenhumClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('N');
  qtSel := 0;
  BtnConfirmar.Enabled := qtSel > 0;
end;

procedure TFrmContEliminaCancelado.BtnTodosClick(Sender: TObject);
begin
  inherited;
  MarcaGrid('S');
  qtSel := cdsGrid.RecordCount;
  BtnConfirmar.Enabled := qtSel > 0;
end;

procedure TFrmContEliminaCancelado.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if trim(cdsPadraotpPlanoConta.AsString) = '' then
    cdsPadraotpPlanoConta.AsString := 'F';
end;

procedure TFrmContEliminaCancelado.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    if cdsGridSEL.AsBoolean then
      qtSel := qtSel - 1
    else
      qtSel := qtSel + 1;
    BtnConfirmar.Enabled := qtSel > 0;
  end;

end;

procedure TFrmContEliminaCancelado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmContEliminaCancelado := nil;
end;

procedure TFrmContEliminaCancelado.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidLoteIni;
  Height := 510;
  Width := 760;
end;

procedure TFrmContEliminaCancelado.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.Append;
end;

procedure TFrmContEliminaCancelado.MarcaGrid(marca: string);
begin
  with cdsGrid do
  begin
    First;
    while not Eof do
    begin
      if not (State in [dsInsert, dsEdit]) then
        Edit;
      FieldByName('SEL').AsBoolean := marca = 'S';
      Post;
      Next;
    end;
    First;
  end;
end;

end.
