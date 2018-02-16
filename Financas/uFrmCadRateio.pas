unit uFrmCadRateio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient, ComCtrls, CPageControl, FMTBcd, SqlExpr, CGroupBox,
  Grids, DBGrids, CDBGrid, CDBRadioGroup, EditAlign, CEdit, System.Actions;

type
  TFrmCadRateio = class(TFrmCadPadraoEmpCont)
    sdsRateio: TSQLDataSet;
    sdsRateioItem: TSQLDataSet;
    dspRateioItem: TDataSetProvider;
    cdsRateioItem: TClientDataSet;
    dsRateioItem: TDataSource;
    FindResultado: TCFind;
    FindResultadoItem: TCFind;
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
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
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
    cdsRateioItemidResultado: TIntegerField;
    cdsResultado: TClientDataSet;
    cdsRateioItemdescResultado: TStringField;
    EDTotal: TCEdit;
    EDRestante: TCEdit;
    FindRateio: TCFind;
    cdsRateioItemprRateio: TFMTBCDField;
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
    procedure DBEidResultadoExit(Sender: TObject);
    procedure cdsRateioItemAfterInsert(DataSet: TDataSet);
    procedure CalculaRateio;    
    procedure BtnSalvarResClick(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsRateioItemidResultadoValidate(Sender: TField);
  private
    { Private declarations }
    prTotal : double;
  public
    { Public declarations }
  end;

var
  FrmCadRateio: TFrmCadRateio;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TfrmCadRateio.CalculaRateio;
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

procedure TFrmCadRateio.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
    DataSet.FieldByName('tpRateio').AsString := 'FIXO';
end;

procedure TFrmCadRateio.cdsRateioItemAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadRateio.cdsRateioItemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;  
end;

procedure TFrmCadRateio.cdsRateioItemidResultadoValidate(Sender: TField);
var
  sql : string;
begin
  inherited;
  if DBEidResultado.Text <> '' then
  begin
    sql := 'SELECT * FROM Resultado WHERE idResultado = ' + DBEidResultado.Text;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if FieldByName('consolidaEmp').AsString = 'S' then
      begin
        LookResultado.AlternateSQL.Clear;
        LookResultado.CampoObrigatorio := False;
        LookResultado.ValidaCampoObrigatorio := False;
      end;
    end;
  end;
end;

procedure TFrmCadRateio.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if cdsEmpresa.FieldByName('idEmpresa').NewValue <>  cdsEmpresa.FieldByName('idEmpresa').OldValue then
    cdsResultado.CommandText := ' SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text;
end;

procedure TFrmCadRateio.DBEidRateioExit(Sender: TObject);
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

procedure TFrmCadRateio.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsRateioItem, [DBEidResultado]);
end;

procedure TFrmCadRateio.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
  
end;

procedure TFrmCadRateio.DBRGtpRateioExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert] then
    if (trim(cdsPadrao.FieldByName('descRateio').AsString) <> '') and
    (trim(cdsPadrao.FieldByName('tpRateio').AsString) = 'FIXO') then
    begin
      PagAbas.ActivePageIndex := 1;
      CalculaRateio;
      DBEidResultado.SetFocus;
    end;
end;

procedure TFrmCadRateio.dspRateioItemBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadRateio.dsRateioItemStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarRes, BtnCancelarRes, BtnExcluirRes, BtnNovoRes);
end;

procedure TFrmCadRateio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadRateio := nil;
end;

procedure TFrmCadRateio.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsRateioItem;
  SetLength(chave, 2);

  chave[0] := DBEidEmpresa;
  chave[1] := DBEidRateio;
  foco := DBEidRateio;

  tab_chave := 'Rateio';
  situacao := 'stRateio';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := true;
  //
  FrmCadRateio.Height := 514;
  FrmCadRateio.Width := 610;
  //
end;

procedure TFrmCadRateio.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actCadPlanoRateio';
  inherited;
  prTotal := 0;
  cdsResultado.CommandText := ' SELECT * FROM Resultado WHERE idEmpresa = ' + DBEidEmpresa.Text; 
end;

procedure TFrmCadRateio.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  findRateio.ShowModal;
end;

procedure TFrmCadRateio.actSalvarExecute(Sender: TObject);
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

procedure TFrmCadRateio.BtnSalvarResClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsRateioItem, BtnSalvarRes, BtnCancelarRes, BtnExcluirRes, BtnNovoRes, (Sender as TCBitBtn), '');
  if (Sender as TBitBtn).Name <> 'BtnNovoRes' then
  begin
    CalculaRateio;
    BtnNovoRes.Click;
  end;
  DBEidResultado.SetFocus;
end;

procedure TFrmCadRateio.PagAbasChange(Sender: TObject);
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
