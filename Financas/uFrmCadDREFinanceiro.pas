unit uFrmCadDREFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient, System.Actions, uFrmCadPadraoEmpCont;

type
  TFrmCadDREFinanceiro = class(TFrmCadPadraoEmpCont)
    sdsDREFinanceiro: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidDREFinanceiro: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescDREFinanceiro: TCDBEdit;
    CLabel2: TCLabel;
    DBEstDREFinanceiro: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    DBCKvincResultado: TCDBCheckBox;
    TabGrupo: TTabSheet;
    TabGerencial: TTabSheet;
    CGroupBox9: TCGroupBox;
    CLabel40: TCLabel;
    CLabel17: TCLabel;
    CLabel41: TCLabel;
    DBEordem: TCDBEdit;
    DBEdescDREFinanceiroGrupo: TCDBEdit;
    DBEidDREFinanceiroGrupo: TCDBEdit;
    CGroupBox11: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox10: TCGroupBox;
    BtnAdicionarGrp: TCBitBtn;
    BtnCancelarGrp: TCBitBtn;
    BtnRetirarGrp: TCBitBtn;
    BtnNovoGrp: TCBitBtn;
    cdsGrupos: TClientDataSet;
    dsGrupos: TDataSource;
    dspGrupos: TDataSetProvider;
    sdsGrupos: TSQLDataSet;
    cdsGruposidEmpresa: TIntegerField;
    cdsGruposidDREFinanceiro: TSmallintField;
    cdsGruposidDREFinanceiroGrupo: TSmallintField;
    cdsGruposdescDREFinanceiroGrupo: TStringField;
    cdsGruposordem: TSmallintField;
    cdsGerencial: TClientDataSet;
    dsGerencial: TDataSource;
    dspGerencial: TDataSetProvider;
    sdsGerencial: TSQLDataSet;
    cdsGerencialidEmpresa: TIntegerField;
    cdsGerencialidDREFinanceiro: TSmallintField;
    cdsGerencialidDREFinanceiroGrupo: TSmallintField;
    cdsGerencialidGerencial: TIntegerField;
    CGroupBox3: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdescDREFinanceiroGrupo2: TCDBEdit;
    DBEidDREFinanceiroGrupo2: TCDBEdit;
    CGroupBox4: TCGroupBox;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidDREFinanceiro2: TCDBEdit;
    DBEdescDREFinanceiro2: TCDBEdit;
    CGroupBox5: TCGroupBox;
    CGroupBox6: TCGroupBox;
    BtnAdicionarGer: TCBitBtn;
    BtnCancelarGer: TCBitBtn;
    BtnRetirarGer: TCBitBtn;
    BtnNovoGer: TCBitBtn;
    CGroupBox7: TCGroupBox;
    CDBGrid2: TCDBGrid;
    DBEidGerencial: TCDBEdit;
    LookGerencial: TCLookUp;
    CLabel13: TCLabel;
    cdsGerencialC: TClientDataSet;
    cdsGerencialdescGerencial: TStringField;
    procedure DBEidDREFinanceiroExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ConfigGerencial;
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidDREFinanceiroGrupoExit(Sender: TObject);
    procedure DBEidGerencialExit(Sender: TObject);
    procedure BtnAdicionarGrpClick(Sender: TObject);
    procedure BtnAdicionarGerClick(Sender: TObject);
    procedure dsGruposStateChange(Sender: TObject);
    procedure dsGerencialStateChange(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure dspGruposBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure cdsGruposAfterScroll(DataSet: TDataSet);
    procedure cdsGerencialAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadDREFinanceiro: TFrmCadDREFinanceiro;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind, uFuncao, uFrmPrincipal;

{$R *.dfm}

//****************************************************************************************//
procedure TFrmCadDREFinanceiro.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadDREFinanceiro.BtnAdicionarGerClick(Sender: TObject);
begin
  inherited;
  if ((Sender as TCBitBtn).Name = 'BtnAdicionarGer') then
  begin
    if trim(DBEidGerencial.Text) = '' then
    begin
      messagedlg('O Gerencial deve ser informado!', mtwarning, [mbok], 0);
      DBEordem.SetFocus;
      exit;
    end;
  end; //fim do   if ((Sender as TCBitBtn).Name = 'BtnAdicionarGer') then
  funcao.GravaSec(chave, cdsGerencial, BtnAdicionarGer, BtnCancelarGer, BtnRetirarGer, BtnNovoGer, (Sender as TCBitBtn), '');

  if ((Sender as TCBitBtn).Name = 'BtnAdicionarGer') or ((Sender as TCBitBtn).Name = 'BtnRetirarGer') then
    cdsGerencial.ApplyUpdates(0);

  if (sender as tcbitbtn).Name = 'BtnAdicionarGer' then
    BtnNovoGer.Click;

  DBEidGerencial.SetFocus;
end;

procedure TFrmCadDREFinanceiro.BtnAdicionarGrpClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if ((Sender as TCBitBtn).Name = 'BtnAdicionarGrp') then
  begin
    if trim(DBEordem.Text) = '' then
    begin
      messagedlg('A ordem deve ser informada!', mtwarning, [mbok], 0);
      DBEordem.SetFocus;
      exit;
    end;
    sql := 'SELECT * FROM DREFinanceiroGrupo WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ' AND idDREFinanceiro = ' +
           funcao.RetornaValorEField(DBEidDREFinanceiro, 3) + ' AND ordem = ' + funcao.RetornaValorEField(DBEordem, 3);
    //se tiver informado o código verifica se não é o mesmo
    if trim(DBEidDREFinanceiroGrupo.Text) <> '' then
    begin
      sql := sql + ' AND idDREFinanceiroGrupo <> ' + funcao.RetornaValorEField(DBEidDREFinanceiroGrupo, 3);
    end;

    with frmPrincipal.ExecutaSQLRet([], '', sql) do
      if RecordCount > 0 then
      begin
        messagedlg('Já tem um grupo com essa ordem!', mtwarning, [mbok], 0);
        exit;
      end;
  end; //fim do   if ((Sender as TCBitBtn).Name = 'BtnAdicionarGrp') then

  if ((Sender as TCBitBtn).Name = 'BtnRetirarGrp') then
    if cdsGerencial.RecordCount > 0 then
    begin
      messagedlg('Você deve excluir primeiramente o gerencial relacionado a este grupo!', mtwarning, [mbok], 0);
      exit;
    end;

  funcao.GravaSec(chave, cdsGrupos, BtnAdicionarGrp, BtnCancelarGrp, BtnRetirarGrp, BtnNovoGrp, (Sender as TCBitBtn), 'idDREFinanceiroGrupo');

  if ((Sender as TCBitBtn).Name = 'BtnAdicionarGrp') or ((Sender as TCBitBtn).Name = 'BtnRetirarGrp') then
    cdsGrupos.ApplyUpdates(0);

  if (sender as tcbitbtn).Name = 'BtnAdicionarGrp' then
    BtnNovoGrp.Click;

  DBEidDREFinanceiroGrupo.SetFocus;
end;

procedure TFrmCadDREFinanceiro.cdsGerencialAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsGerencialidEmpresa.AsInteger := cdsGruposidEmpresa.AsInteger;
  cdsGerencialidDREFinanceiro.AsInteger := cdsGruposidDREFinanceiro.AsInteger;
  cdsGerencialidDREFinanceiroGrupo.AsInteger := cdsGruposidDREFinanceiroGrupo.AsInteger;
end;

procedure TFrmCadDREFinanceiro.cdsGruposAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsGruposidDREFinanceiroGrupo.AsInteger > 0 then
  begin
    cdsGerencial.Filtered := false;
    cdsGerencial.Filter := 'idDREFinanceiroGrupo = ' + cdsGruposidDREFinanceiroGrupo.AsString;
    cdsGerencial.Filtered := true;
  end;
end;

procedure TFrmCadDREFinanceiro.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
  begin
    cdsPadrao.FieldByName('vincResultado').AsString := 'S';
  end;
end;

procedure TFrmCadDREFinanceiro.ConfigGerencial;
begin
  cdsGerencial.Active := false;
  cdsGerencial.CommandText := 'SELECT * FROM Gerencial WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
end;

procedure TFrmCadDREFinanceiro.DBEidDREFinanceiroExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);

end;

procedure TFrmCadDREFinanceiro.DBEidDREFinanceiroGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsGrupos, [DBEidDREFinanceiroGrupo]);
end;

procedure TFrmCadDREFinanceiro.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  ConfigGerencial;
end;

procedure TFrmCadDREFinanceiro.DBEidGerencialExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsGerencial, [DBEidGerencial]);
end;

procedure TFrmCadDREFinanceiro.dsGerencialStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsGerencial, BtnAdicionarGer, BtnCancelarGer, BtnRetirarGer, btnNovoGer);
end;

procedure TFrmCadDREFinanceiro.dsGruposStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsGrupos, BtnAdicionarGrp, BtnCancelarGrp, BtnRetirarGrp, btnNovoGrp);
end;

procedure TFrmCadDREFinanceiro.dspGruposBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspGrupos' then
    begin
      GeraAutoInc(DeltaDS, 'DREFinanceiroGrupo', 'idDREFinanceiroGrupo', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadDREFinanceiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadDREFinanceiro := nil;
end;

procedure TFrmCadDREFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsGrupos;
  Tabelas[2] := cdsGerencial;
  SetLength(Chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidDREFinanceiro;
  foco := DBEidDREFinanceiro;
  tab_chave := 'DREFinanceiro';
  situacao := 'stDREFinanceiro';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 535;
  Width := 565;
end;

procedure TFrmCadDREFinanceiro.FormShow(Sender: TObject);
begin
  inherited;
  ConfigGerencial;
end;

procedure TFrmCadDREFinanceiro.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 1 then
  begin
    if cdsPadrao.RecordCount = 0 then
    begin
      messagedlg('É preciso ter um DRE Financeiro cadastrado!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;
    if trim(DBEidDREFinanceiro.Text) = '' then
    begin
      messagedlg('É preciso selecionar um DRE Financeiro!', mtwarning, [mbok], 0);
      PagAbas.ActivePageIndex := 0;
      exit;
    end;
    AbreTabSecundaria;
  end
  else
    if PagAbas.ActivePageIndex = 2 then
    begin
      if cdsGrupos.RecordCount = 0 then
      begin
        messagedlg('É preciso ter um Grupo Cadastro primeiramente!', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
      if trim(DBEidDREFinanceiroGrupo.Text) = '' then
      begin
        messagedlg('É preciso selecionar um Grupo!', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
    end;
end;

end.
