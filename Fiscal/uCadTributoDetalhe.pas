unit uCadTributoDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox, CFind,
  Grids, DBGrids, CDBGrid, DBXCommon;

type
  TFrmCadTributoDetalhe = class(TFrmCadPadraoEmpFiscal)
    c: TCGroupBox;
    CLabel5: TCLabel;
    DBEidTributo: TCDBEdit;
    LookdescTributo: TCLookUp;
    CLabel4: TCLabel;
    DBEMesAno: TCDBEdit;
    CLabel6: TCLabel;
    DBEidTpDetalhe: TCDBEdit;
    LookdescTpDetalhe: TCLookUp;
    CLabel7: TCLabel;
    DBEdescTributoDetalhe: TCDBEdit;
    CLabel8: TCLabel;
    DBEvlTributoDetalhe: TCDBEdit;
    CGroupBox2: TCGroupBox;
    FindTpDetalhe: TCFind;
    FindTributo: TCFind;
    FindTributoDetalhe: TCFind;
    DBGrid: TCDBGrid;
    DBEidTributoDetalhe: TCDBEdit;
    procedure DBEidCadEmpresaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEMesAnoExit(Sender: TObject);
    procedure DBEMesAnoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTributoDetalhe: TFrmCadTributoDetalhe;

implementation

uses uDmPadrao, uFrmPrincipal,uFuncao, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadTributoDetalhe.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
begin
     cdsLookUp.Active := false;
     cdsLookup.CommandText := 'SELECT MAX(idTributoDetalhe) AS idTributoDetalhe FROM TributoDetalhe WHERE idEmpresa = ' + DBEidEmpresa.Text +
                    ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idTributo = ' + DBEidTributo.Text +
                    ' AND idTpDetalhe = ' + DBEidTpDetalhe.Text +' AND MesAno = ' + QuotedStr(DBEMesAno.Text);
     cdsLookup.Active := True;
     if (cdsLookup.FieldByName('idTributoDetalhe').IsNull) or (cdsLookup.FieldByName('idTributoDetalhe').value = 0) then
        cdsPadrao.FieldByName('idTributoDetalhe').Value := 1
     else
        cdsPadrao.FieldByName('idTributoDetalhe').Value := cdsLookup.FieldByName('idTributoDetalhe').value + 1;
     cdsLookup.Active := False;
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

procedure TFrmCadTributoDetalhe.DBEidCadEmpresaExit(Sender: TObject);
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

procedure TFrmCadTributoDetalhe.DBEMesAnoEnter(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('MesAno').AsString) <> '' then
      cdsPadrao.FieldByName('MesAno').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('MesAno').AsString);

end;

procedure TFrmCadTributoDetalhe.DBEMesAnoExit(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('MesAno').AsString := funcao.Mascara(cdsPadrao.FieldByName('MesAno').AsString, 99, '**/****');
end;

procedure TFrmCadTributoDetalhe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadTributoDetalhe := nil;
end;

procedure TFrmCadTributoDetalhe.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave,4 );
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidTributo;
  chave[3] := DBEMesAno;
  chave[4] := DBEidTpDetalhe;
  chave[5] := DBEidTributoDetalhe;
  tab_chave := 'TributoDetalhe';
  Grid := true;
  FindPesquisa := FindTributoDetalhe;
end;

end.
