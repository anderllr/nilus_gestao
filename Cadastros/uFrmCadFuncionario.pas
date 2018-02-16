unit uFrmCadFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, CLookUp,
  FMTBcd, SqlExpr, CFind, CPanelGradient, CDBCheckBox, CDBMemo, CDBComboBox,
  CDBRadioGroup, RDprint, math;

type
  TFrmCadFuncionario = class(TFrmCadPadraoGrid)
    TabCampos: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel2: TCLabel;
    DBEdescFuncionario: TCDBEdit;
    DBEidFuncionario: TCDBEdit;
    CLabel1: TCLabel;
    CGroupBox3: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdescFuncionario2: TCDBEdit;
    DBEidFuncionario2: TCDBEdit;
    CGroupBox4: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox5: TCGroupBox;
    BtnNovoTab: TCBitBtn;
    BtnExcluirTab: TCBitBtn;
    BtnCancelarTab: TCBitBtn;
    BtnSalvarTab: TCBitBtn;
    sdsTab: TSQLDataSet;
    sdsCampos: TSQLDataSet;
    dspCampos: TDataSetProvider;
    cdsCampos: TClientDataSet;
    dsCampos: TDataSource;
    CGroupBox6: TCGroupBox;
    CLabel6: TCLabel;
    DBEano: TCDBEdit;
    CLabel8: TCLabel;
    DBEentManha: TCDBEdit;
    CLabel25: TCLabel;
    DBEhrNormal: TCDBEdit;
    CLabel26: TCLabel;
    DBEhrNormal2: TCDBEdit;
    CLabel27: TCLabel;
    DBCBmes: TCDBComboBox;
    CLabel11: TCLabel;
    DBEdescEmpregador: TCDBEdit;
    CLabel28: TCLabel;
    DBEnrRegistro: TCDBEdit;
    DBEnrCtps: TCDBEdit;
    CLabel30: TCLabel;
    CLabel31: TCLabel;
    DBEdescFuncao: TCDBEdit;
    CLabel32: TCLabel;
    DBEdescLocal: TCDBEdit;
    CLabel12: TCLabel;
    DBEdia: TCDBEdit;
    CLabel3: TCLabel;
    DBEsaiManha: TCDBEdit;
    CLabel7: TCLabel;
    DBEentTarde: TCDBEdit;
    CLabel9: TCLabel;
    DBEsaiTarde: TCDBEdit;
    CLabel10: TCLabel;
    DBEentExtra: TCDBEdit;
    CLabel13: TCLabel;
    DBEsaiExtra: TCDBEdit;
    cdsCamposidFuncionario: TIntegerField;
    cdsCamposmes: TStringField;
    cdsCamposano: TSmallintField;
    cdsCamposdia: TSmallintField;
    cdsCamposentManha: TSQLTimeStampField;
    cdsCampossaiManha: TSQLTimeStampField;
    cdsCamposentTarde: TSQLTimeStampField;
    cdsCampossaiTarde: TSQLTimeStampField;
    cdsCamposentExtra: TSQLTimeStampField;
    cdsCampossaiExtra: TSQLTimeStampField;
    cdsCamposferiado: TStringField;
    DBCKferiado: TCDBCheckBox;
    cdsCamposdiaSemana: TStringField;
    LblDiaSemana: TCLabel;
    Lbl50: TCLabel;
    Lbl100: TCLabel;
    LblAdicional: TCLabel;
    cdsCamposhr: TFloatField;
    cdsCamposhrExtra: TFloatField;
    cdsCamposhrAdicional: TFloatField;
    CBitBtn1: TCBitBtn;
    actImprimir: TAction;
    cdsCamposExtra: TBCDField;
    cdsCamposAdicional: TBCDField;
    CBitBtn2: TCBitBtn;
    procedure CBitBtn2Click(Sender: TObject);
    procedure DBCBmesExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure cdsCamposAfterScroll(DataSet: TDataSet);
    procedure cdsCamposCalcFields(DataSet: TDataSet);
    procedure DBEdiaExit(Sender: TObject);
    procedure cdsCamposAfterInsert(DataSet: TDataSet);
    procedure dsCamposStateChange(Sender: TObject);
    procedure dspCamposBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnSalvarTabClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidFuncionarioExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure MontaData;
    procedure SomaHoras;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncionario: TFrmCadFuncionario;

implementation

uses uDmPadrao, uFuncao, uFrmTpCadDesconto;

{$R *.dfm}

procedure TFrmCadFuncionario.actSalvarExecute(Sender: TObject);
begin
  if cdsCampos.State in [dsInsert, dsEdit]  then
    cdsCampos.Cancel;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadFuncionario.BtnSalvarTabClick(Sender: TObject);
var
  mes : string;
  ano : integer;
begin
  inherited;
  ano := 2007;
  if (Sender as TCBitBtn).Name = 'BtnNovoTab' then
    SomaHoras;
  if ((Sender as TCBitBtn).Name = 'BtnSalvarTab') or ((Sender as TCBitBtn).Name = 'BtnNovoTab') then
  begin
    ano := cdsCampos.FieldByName('ano').Value;
    mes := cdsCampos.FieldByName('mes').Value;
    if (Sender as TCBitBtn).Name = 'BtnSalvarTab' then
    begin
      cdsCampos.FieldByName('Extra').Value := cdsCampos.FieldByName('hrExtra').Value;
      cdsCampos.FieldByName('Adicional').Value := cdsCampos.FieldByName('hrAdicional').Value;
    end;
  end;

  GravaSec(cdsCampos, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab, (Sender as TCBitBtn), '');

  if (Sender as TCBitBtn).Name <> 'BtnNovoTab' then
    SomaHoras
  else
    begin
      cdsCampos.FieldByName('ano').Value := ano;
      cdsCampos.FieldByName('mes').Value := mes;
    end;
  if ((Sender as TCBitBtn).Name = 'BtnSalvarTab') then
    BtnNovoTab.Click;
  DBEdia.SetFocus;
end;

procedure TFrmCadFuncionario.CBitBtn2Click(Sender: TObject);
begin
  inherited;
  cdsCampos.First;
  While not cdsCampos.Eof do
  begin
    cdsCampos.Edit;
    cdsCampos.FieldByName('Extra').Value := cdsCampos.FieldByName('hrExtra').Value;
    cdsCampos.FieldByName('Adicional').Value := cdsCampos.FieldByName('hrAdicional').Value;
    cdsCampos.Post;
    cdsCampos.Next;
  end;
end;

procedure TFrmCadFuncionario.cdsCamposAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadFuncionario.cdsCamposAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MontaData;
end;

procedure TFrmCadFuncionario.cdsCamposCalcFields(DataSet: TDataSet);
var
  hr, hrExtra, hrAdicional : double;
  entManha, entTarde, saiManha, saiTarde, entExtra, saiExtra : Double;
begin
  inherited;
  hrAdicional := 0;
  entManha := 0;
  entTarde := 0;
  saiManha := 0;
  saiTarde := 0;
  entExtra := 0;
  saiExtra := 0;
  with cdsCampos do
  begin
    if trim(FieldByName('entManha').AsString) <> '' then
      entManha := FieldByName('entManha').AsDateTime*24;
    if trim(FieldByName('entTarde').AsString) <> '' then
      entTarde := FieldByName('entTarde').AsDateTime*24;
    if trim(FieldByName('saiManha').AsString) <> '' then
      saiManha := FieldByName('saiManha').AsDateTime*24;
    if trim(FieldByName('saiTarde').AsString) <> '' then
      saiTarde := FieldByName('saiTarde').AsDateTime*24;
    if trim(FieldByName('entExtra').AsString) <> '' then
      entExtra := FieldByName('entExtra').AsDateTime*24;
    if trim(FieldByName('saiExtra').AsString) <> '' then
      saiExtra := FieldByName('saiExtra').AsDateTime*24;

    hr := (saiManha-entManha) + (saiTarde-entTarde);

    if entExtra > saiExtra then
      saiExtra := saiExtra + 24;

    //calcula hora extra e adicional
    hrExtra := saiExtra - entExtra;
    if saiExtra > 21 then
      hrAdicional := saiExtra - 21;
    FieldByName('hr').AsFloat := hr;
    FieldByName('HrExtra').AsFloat := hrExtra;
    FieldByName('HrAdicional').AsFloat := hrAdicional;
  end;
end;

procedure TFrmCadFuncionario.DBCBmesExit(Sender: TObject);
var
  ano, mes : string;
begin
  inherited;
  with cdsCampos do
  begin
    if not Active then
      exit;
    mes := DBCBmes.Items.Strings[DBCBmes.ItemIndex];
    ano := DBEAno.Text;
    Active := false;
    CommandText := 'SELECT * FROM FuncionarioPonto WHERE idFuncionario = ' + DBEidFuncionario.Text +
                   ' AND ano = ' + ano + ' AND mes = ' + QuotedStr(mes);
    Active := true;
    SomaHoras;
    Append;
    FieldByName('idFuncionario').AsString := DBEidFuncionario.Text;
    FieldByName('ano').AsString := ano;
    FieldByName('mes').AsString := mes;
    DBEdia.SetFocus;
  end;
end;

procedure TFrmCadFuncionario.DBEdiaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCampos, [DBEano, DBCBmes, DBEdia]);
  MontaData;

  with cdsCampos do
  begin
   if State in [dsInsert] then
   begin
      if (FieldByName('diaSemana').AsString <> 'DOMINGO') and
         (FieldByName('diaSemana').AsString <> 'SABADO') and
         (FieldByName('feriado').AsString <> 'S') then
      begin
        FieldByName('entManha').AsString := '08:00:00';
        FieldByName('saiManha').AsString := '12:00:00';
        FieldByName('entTarde').AsString := '14:00:00';
        FieldByName('saiTarde').AsString := '18:00:00';
      end
      else
        if (FieldByName('diaSemana').AsString = 'SABADO') and
           (FieldByName('feriado').AsString <> 'S') then
        begin
          FieldByName('entManha').AsString := '08:00:00';
          FieldByName('saiManha').AsString := '12:00:00';
        end;
   end;
  end; //  with cdsCampos do
end;

procedure TFrmCadFuncionario.DBEidFuncionarioExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  AbreTabSecundaria;
end;

procedure TFrmCadFuncionario.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
end;

procedure TFrmCadFuncionario.dsCamposStateChange(Sender: TObject);
begin
  inherited;
  HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab);
end;

procedure TFrmCadFuncionario.dspCamposBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadFuncionario := nil;
end;

procedure TFrmCadFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCampos;
  chave[0] := DBEidFuncionario;
  foco := DBEidFuncionario;
  tab_chave := 'Funcionario';
end;

procedure TFrmCadFuncionario.MontaData;
var
  data : TDateTime;
  mes : byte;
begin
  if trim(DBEdia.Text) = '' then
    exit;
  if DBCBmes.ItemIndex < 0 then
    exit;
  mes := DBCBmes.ItemIndex + 1;
  try
    data := StrToDate(DBEdia.Text + '/' + inttostr(mes) + '/' + cdsCampos.FieldByName('ano').AsString);
  except
    on E: Exception do
    begin
      messagedlg('Data Inválida!', mterror, [mbok], E.HelpContext);
      exit;
    end;
  end;
  LblDiaSemana.Caption := funcao.DayOfTheWeek(data);
//  showmessage(datetoStr(data));
  if cdsCampos.State in [dsEdit, dsInsert] then
  begin
    case DayOfWeek(data) of
      1 : cdsCampos.FieldByName('diaSemana').AsString := 'DOMINGO';
      2 : cdsCampos.FieldByName('diaSemana').AsString := 'SEGUNDA';
      3 : cdsCampos.FieldByName('diaSemana').AsString := 'TERCA';
      4 : cdsCampos.FieldByName('diaSemana').AsString := 'QUARTA';
      5 : cdsCampos.FieldByName('diaSemana').AsString := 'QUINTA';
      6 : cdsCampos.FieldByName('diaSemana').AsString := 'SEXTA';
      7 : cdsCampos.FieldByName('diaSemana').AsString := 'SABADO';
    end;
    if funcao.Feriado(data) then
      cdsCampos.FieldByName('feriado').AsString := 'S'
    else
      cdsCampos.FieldByName('feriado').AsString := 'N';
  end;
end;

procedure TFrmCadFuncionario.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 1 then
    SomaHoras;
end;

procedure TFrmCadFuncionario.SomaHoras;
var
  hr50, hr100, hrAdicional: Double;
begin
  hr50 := 0;
  hr100 := 0;
  hrAdicional := 0;
  if cdsCampos.IsEmpty then
  begin
    Lbl50.Caption := '50%:  ' + FloatToStr(hr50);
    lbl100.Caption := '100%:  ' + FloatToStr(hr100);
    lblAdicional.Caption := 'Adi:  ' + FloatToStr(hrAdicional);
    exit;
  end;

  cdsCampos.First;
  while not cdsCampos.Eof do
  begin
    if (cdsCampos.FieldByName('feriado').AsString <> 'S') AND (cdsCampos.FieldByName('diaSemana').AsString <> 'DOMINGO') then
      hr50 := hr50 + cdsCampos.FieldByName('hrExtra').Value
    else
      hr100 := hr100 + cdsCampos.FieldByName('hrExtra').Value;
    hrAdicional := hrAdicional + cdsCampos.FieldByName('hrAdicional').Value;
    cdsCampos.Next;
  end;
  Lbl50.Caption := '50%:  ' + FloatToStr(hr50);
  lbl100.Caption := '100%:  ' + FloatToStr(hr100);
  lblAdicional.Caption := 'Adi:  ' + FloatToStr(hrAdicional);
end;

end.
