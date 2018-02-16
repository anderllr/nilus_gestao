unit uFrmCadPagina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox, CFind,
  Grids, DBGrids, CDBGrid;

type
  TFrmCadPagina = class(TFrmCadPadraoEmpFiscal)
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
  FrmCadPagina: TFrmCadPagina;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadPagina.actSalvarExecute(Sender: TObject);
var
  t : TTransactionDesc;
begin
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  t.TransactionID := 9998;
//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported

  dmPadrao.dbConexao.StartTransaction(t);
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
    dmPadrao.dbConexao.Commit(t)
  else
  begin
    dmPadrao.dbConexao.Rollback(t);
  end;
end;

procedure TFrmCadPagina.DBEMesAnoEnter(Sender: TObject);
begin
  inherited;
 if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('MesAno').AsString) <> '' then
      cdsPadrao.FieldByName('MesAno').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('MesAno').AsString);
end;

procedure TFrmCadPagina.DBEMesAnoExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('MesAno').AsString := funcao.Mascara(cdsPadrao.FieldByName('MesAno').AsString, 99, '**/****');

  BuscaChaveGrid(cdsPadrao,[DBEidEmpresa,DBEidCadEmpresa,DBEidTributo,DBEMesAno]);
end;

procedure TFrmCadPagina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadPagina := nil;
end;

procedure TFrmCadPagina.FormCreate(Sender: TObject);
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

procedure TFrmCadPagina.FormShow(Sender: TObject);
begin
  inherited;
  DBEidTributo.SetFocus;
end;

end.
