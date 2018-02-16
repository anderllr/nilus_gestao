unit uFrmCadSaldoCredor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox, CFind,
  Grids, DBGrids, CDBGrid, DBXCommon, System.Actions;

type
  TFrmCadSaldoCredor = class(TFrmCadPadraoEmpFiscal)
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    CGroupBox1: TCGroupBox;
    CLabel5: TCLabel;
    CLabel4: TCLabel;
    CLabel8: TCLabel;
    DBEidTributo: TCDBEdit;
    LookdescTributo: TCLookUp;
    DBEMesAno: TCDBEdit;
    DBEvlSaldoCredor: TCDBEdit;
    FindTributo: TCFind;
    dsLookUp: TDataSource;
    FindSaldo: TCFind;
    cdsTributo: TClientDataSet;
    dspTributo: TDataSetProvider;
    cdsTributoidTributo: TSmallintField;
    cdsTributodescTributo: TStringField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidTributo: TSmallintField;
    cdsPadraomesAno: TStringField;
    cdsPadraovlSaldoCredor: TFMTBCDField;
    cdsPadraodescTributo: TStringField;
    procedure DBEidCadEmpresaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEMesAnoEnter(Sender: TObject);
    procedure DBEMesAnoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadSaldoCredor: TFrmCadSaldoCredor;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadSaldoCredor.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
begin
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    GravaChave(1, '', nil);
    inherited;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
    dmPadrao.dbConexao.CommitFreeAndNil(t)
  else
  begin
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  end;
end;

procedure TFrmCadSaldoCredor.DBEidCadEmpresaExit(Sender: TObject);
var
  idEmp, idCad : string;
begin
  inherited;
  if (trim(DBEidCadEmpresa.Text) <> '') then
  begin
    idEmp := DBEidEmpresa.Text;
    idCad := DBEidCadEmpresa.Text;
    cdsPadrao.Cancel;
    cdsPadrao.Filtered := false;
    cdsPadrao.Filter := 'idEmpresa = ' + idEmp + ' AND idCadEmpresa = ' + idCad;
    cdsPadrao.Filtered := true;
    if cdsPadrao.IsEmpty then
    begin
      cdsPadrao.Append;
      cdsPadrao.FieldByName('idEmpresa').AsString := idEmp;
      cdsPadrao.FieldByName('idCadEmpresa').AsString := idCad;
    end;
  end;
end;

procedure TFrmCadSaldoCredor.DBEMesAnoEnter(Sender: TObject);
begin
  inherited;
 if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('MesAno').AsString) <> '' then
      cdsPadrao.FieldByName('MesAno').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('MesAno').AsString);
end;

procedure TFrmCadSaldoCredor.DBEMesAnoExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('MesAno').AsString := funcao.Mascara(cdsPadrao.FieldByName('MesAno').AsString, 99, '**/****');

  BuscaChaveGrid(cdsPadrao,[DBEidEmpresa,DBEidCadEmpresa,DBEidTributo,DBEMesAno]);
end;

procedure TFrmCadSaldoCredor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadSaldoCredor := nil;
end;

procedure TFrmCadSaldoCredor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave,4 );
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidTributo;
  chave[3] := DBEMesAno;
  tab_chave := 'SaldoCredor';
  Grid := true;
  FindPesquisa := FindSaldo;
end;

procedure TFrmCadSaldoCredor.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actSaldoCredor';
  inherited;
  DBEidTributo.SetFocus;
end;

end.
