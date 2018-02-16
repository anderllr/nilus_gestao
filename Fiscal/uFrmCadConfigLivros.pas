unit uFrmCadConfigLivros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox, CFind,
  Grids, DBGrids, CDBGrid, DBXCommon, System.Actions;

type
  TFrmCadConfigLivro = class(TFrmCadPadraoEmpFiscal)
    c: TCGroupBox;
    lblLivro: TCLabel;
    CLabel4: TCLabel;
    DBEidLivro: TCDBEdit;
    LookdescLivro: TCLookUp;
    DBEMesAno: TCDBEdit;
    CLabel5: TCLabel;
    DBEnrPaginaIni: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidLivro: TSmallintField;
    cdsPadraomesAno: TStringField;
    cdsPadraonrPaginaIni: TSmallintField;
    cdsPadraonrPaginaFim: TSmallintField;
    FindPagina: TCFind;
    FindLivro: TCFind;
    cdsLivro: TClientDataSet;
    dspLivro: TDataSetProvider;
    cdsLivroidLivro: TSmallintField;
    cdsLivrodescLivro: TStringField;
    cdsPadraodescLivro: TStringField;
    procedure DBEidCadEmpresaExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadConfigLivro: TFrmCadConfigLivro;

implementation

uses uFrmPrincipal, uDmPadrao;

{$R *.dfm}

procedure TFrmCadConfigLivro.actSalvarExecute(Sender: TObject);
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

procedure TFrmCadConfigLivro.DBEidCadEmpresaExit(Sender: TObject);
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

procedure TFrmCadConfigLivro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadConfigLivro := nil;
end;

procedure TFrmCadConfigLivro.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave,2 );
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidLivro;
  Grid := true;
  FindPesquisa := FindPagina;
end;

procedure TFrmCadConfigLivro.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actConfigLivro';

  inherited;

end;

end.
