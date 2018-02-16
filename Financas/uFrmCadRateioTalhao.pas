unit uFrmCadRateioTalhao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient, ComCtrls, CPageControl, FMTBcd, SqlExpr, CGroupBox,
  Grids, DBGrids, CDBGrid, CDBRadioGroup, EditAlign, CEdit;

type
  TFrmCadRateioTalhao = class(TFrmCadPadraoEmpCont)
    sdsRateio: TSQLDataSet;
    sdsRateioItem: TSQLDataSet;
    dspRateioItem: TDataSetProvider;
    cdsRateioItem: TClientDataSet;
    dsRateioItem: TDataSource;
    FindTalhao: TCFind;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    CLabel58: TCLabel;
    CLabel3: TCLabel;
    DBEidRateio: TCDBEdit;
    DBEdescRateio: TCDBEdit;
    DBEstRateio: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    TabRateio: TTabSheet;
    CGroupBox5: TCGroupBox;
    CLabel5: TCLabel;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEdescRateio2: TCDBEdit;
    DBEidRateio2: TCDBEdit;
    DBEStRateio2: TCDBEdit;
    CGroupBox4: TCGroupBox;
    CLabel9: TCLabel;
    CLabel7: TCLabel;
    DBEidTalhao: TCDBEdit;
    LookTalhao: TCLookUp;
    DBEprRateio: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox6: TCGroupBox;
    CLabel8: TCLabel;
    CLabel10: TCLabel;
    BtnSalvarRes: TCBitBtn;
    BtnCancelarRes: TCBitBtn;
    BtnExcluirRes: TCBitBtn;
    BtnNovoRes: TCBitBtn;
    DBRGtpRateio: TCDBRadioGroup;
    cdsRateioItemidEmpresa: TIntegerField;
    cdsRateioItemidRateio: TSmallintField;
    cdsTalhao: TClientDataSet;
    EDTotal: TCEdit;
    EDRestante: TCEdit;
    FindRateio: TCFind;
    cdsRateioItemprRateio: TFMTBCDField;
    cdsRateioItemidTalhao: TIntegerField;
    cdsRateioItemdesRateio: TStringField;
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBRGtpRateioExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure cdsRateioItemAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dspRateioItemBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dsRateioItemStateChange(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidRateioExit(Sender: TObject);
    procedure DBEidTalhaoExit(Sender: TObject);
    procedure cdsRateioItemAfterInsert(DataSet: TDataSet);
    procedure CalculaRateio;    
    procedure BtnSalvarResClick(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
  private
    { Private declarations }
    prTotal : double;
  public
    { Public declarations }
  end;

var
  FrmCadRateioTalhao: TFrmCadRateioTalhao;

implementation

uses uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadRateioTalhao.CalculaRateio;
var
  prRestante : double;
begin
  prTotal := 0;
  with cdsRateioItem do
    if not IsEmpty then
    begin
      First;
      while not eof do
      begin
        prTotal := prTotal + FieldByName('prRateio').AsFloat;
        Next;
      end;
    end;
  prRestante := 100-prTotal;
  EdTotal.Value := prTotal;
  EdRestante.Value := prRestante;
end;

procedure TFrmCadRateioTalhao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
    DataSet.FieldByName('tpRateio').AsString := 'FIXO';
end;

procedure TFrmCadRateioTalhao.cdsRateioItemAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadRateioTalhao.cdsRateioItemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;  
end;

procedure TFrmCadRateioTalhao.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if cdsEmpresa.FieldByName('idEmpresa').NewValue <>  cdsEmpresa.FieldByName('idEmpresa').OldValue then
    cdsTalhao.CommandText := ' SELECT * FROM Talhao WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

procedure TFrmCadRateioTalhao.DBEidRateioExit(Sender: TObject);
begin
  inherited;
{  if (not BuscaChaveGrid(cdsPadrao, chave)) and (trim(DBEidRateio.Text) <> '') then
  begin
    messagedlg('Código não existe!', mtwarning, [mbok], 0);
    DBEidRateio.SetFocus;
  end;}
  BuscaChaveGrid(cdsPadrao, chave);
  if not (cdsPadrao.State in [dsInsert]) then
    CalculaRateio;
  AbreTabSecundaria;

end;

procedure TFrmCadRateioTalhao.DBEidTalhaoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsRateioItem, [DBEidTalhao]);
end;

procedure TFrmCadRateioTalhao.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
  
end;

procedure TFrmCadRateioTalhao.DBRGtpRateioExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
    if (trim(cdsPadrao.FieldByName('descRateio').AsString) <> '') and
    (trim(cdsPadrao.FieldByName('tpRateio').AsString) = 'FIXO') then
    begin
      PagAbas.ActivePageIndex := 1;
      CalculaRateio;
      DBEidTalhao.SetFocus;
    end;
end;

procedure TFrmCadRateioTalhao.dspRateioItemBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadRateioTalhao.dsRateioItemStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRes, BtnCancelarRes, BtnExcluirRes, BtnNovoRes);
end;

procedure TFrmCadRateioTalhao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadRateioTalhao := nil;
end;

procedure TFrmCadRateioTalhao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsRateioItem;
  SetLength(chave, 2);

  chave[0] := DBEidEmpresa;
  chave[1] := DBEidRateio;
  foco := DBEidRateio;

  tab_chave := 'RateioTalhao';
  situacao := 'stRateio';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := true;
  //
  FrmCadRateioTalhao.Height := 514;
  FrmCadRateioTalhao.Width := 610;
  //
end;

procedure TFrmCadRateioTalhao.FormShow(Sender: TObject);
begin
  inherited;
  prTotal := 0;
  cdsTalhao.CommandText := ' SELECT * FROM Talhao WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

procedure TFrmCadRateioTalhao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  findRateio.ShowModal;
end;

procedure TFrmCadRateioTalhao.actSalvarExecute(Sender: TObject);
var
  pr100 : double;
begin
  pr100 := 100;
  if (cdsPadrao.FieldByName('tpRateio').AsString = 'FIXO') then
  begin
    if (FloatToStr(prTotal) <> FloatToStr(pr100)) then
      raise Exception.Create('O total do Rateio não pode ser maior que 100%!');
//    if (prTotal < pr100) then
//      raise Exception.Create('O total do Rateio não pode ser menor que 100%!');
  end;
  if BtnSalvarRes.Enabled then
    cdsRateioItem.Cancel;
  GravaChave(1, '', nil);
{  //inicia processo de geração do código com o 2 na frente
  if (cdsPadrao.State = dsInsert) then
  begin
    vlGerado := cdsPadrao.FieldByName('idRateio').AsInteger -1;
    if vlGerado = 0 then
      vlGerado := 21
    else
    begin
      vlGerado := StrToInt(Copy(IntToStr(vlGerado), 2, length(IntToStr(vlGerado))-1)) + 1;
      vlGerado := StrToInt('2' + IntToStr(vlGerado));
    end;
    cdsPadrao.FieldByName('idRateio').AsInteger := vlGerado;
      //processo para colocar o 1 na frente do código
  end; //if (cdsPadrao.State = dsInsert) then }

  inherited;
end;

procedure TFrmCadRateioTalhao.BtnSalvarResClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsRateioItem, BtnSalvarRes, BtnCancelarRes, BtnExcluirRes, BtnNovoRes, (Sender as TCBitBtn), '');
  if (Sender as TBitBtn).Name <> 'BtnNovoRes' then
  begin
    CalculaRateio;
    BtnNovoRes.Click;
  end;
  DBEidTalhao.SetFocus;
end;

procedure TFrmCadRateioTalhao.PagAbasChange(Sender: TObject);
begin
  inherited;
  if (PagAbas.ActivePageIndex = 1) and (cdsPadrao.FieldByName('tpRateio').AsString <> 'FIXO') then
  begin
    messagedlg('Somente o plano de rateio pré-fixado é que tem o plano definido!', mtwarning, [mbok], 0);
    PagAbas.ActivePageIndex := 0;
    exit;
  end
  else
    CalculaRateio;
end;

end.
