unit uFrmPesNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, System.Actions, System.ImageList;

type
  TfrmPesNotas = class(TFrmPadraoPesqEmpFiscal)
    LblCad: TCLabel;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    FindSerie: TCFind;
    CLabel4: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    CLabel7: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEnrNotaIni: TCDBEdit;
    CLabel8: TCLabel;
    DBEnrNotaFim: TCDBEdit;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraonrNotaIni: TIntegerField;
    cdsPadraonrNotaFim: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididDocSerie: TStringField;
    cdsGridnrNota: TIntegerField;
    cdsGriddescricao: TStringField;
    cdsGrididCadastro: TIntegerField;
    cdsGrididCadAdicional: TSmallintField;
    DBCKconsolida: TCDBCheckBox;
    cdsPadraoconsolida: TStringField;
    CLabel1: TCLabel;
    cdsPadraoidProdutoIni: TIntegerField;
    cdsPadraoidProdutoFim: TIntegerField;
    lblMaquina: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    lblGerencial: TCLabel;
    DBEidGerencial: TCDBEdit;
    LookGerencial: TCLookUp;
    FindGerencial: TCFind;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    LookProduto: TCLookUp;
    DBEidProdutoIni: TCDBEdit;
    DBEidProdutoFim: TCDBEdit;
    CLookUp1: TCLookUp;
    CLabel2: TCLabel;
    cdsGridstatus: TStringField;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExecutarExecute(Sender: TObject);
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure HabilitaNfe;
  private
    { Private declarations }
  public
    { Public declarations }
    tpNota : string; //vai receber NFE e NFS
  end;

var
  frmPesNotas: TfrmPesNotas;

implementation

uses uFrmPesClienteFiscal, uFuncao, uFrmPadraoPesquisa, uFrmNFE, uFrmNotaFiscal;

{$R *.dfm}

procedure TfrmPesNotas.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  screen.Cursor := crSqlWait;
  cdsGrid.Active := false;
  cdsGrid.CommandText := sqlPadrao;
  sql := Format(' AND N.idEmpresa = %s ', [DBEidEmpresa.Text]);
  if cdsPadrao.FieldByName('consolida').AsString = 'N' then
    sql := sql + Format(' AND N.idCadEmpresa = %s ', [DBEidCadEmpresa.Text]);
  if (trim(DBEidCliente.Text) <> '') and (trim(DBEidCadCliente.Text) <> '') then
    if tpNota = 'NFS' then
      sql := sql + Format(' AND n.idCliente = %s AND n.idCadCliente = %s ', [funcao.RetornaValorEField(DBEidCliente, 3), funcao.RetornaValorEField(DBEidCadCliente, 3)])
    else
      sql := sql + Format(' AND n.idFornecedor = %s AND n.idCadFornecedor = %s ', [funcao.RetornaValorEField(DBEidCliente, 3), funcao.RetornaValorEField(DBEidCadCliente, 3)]);
  if (trim(DBEdtInicial.Text) <> '') then
    if tpNota = 'NFS' then
      sql := sql + Format(' AND n.dtEmissao >= %s ', [funcao.RetornaValorEField(DBEdtInicial, 3)])
    else
      sql := sql + Format(' AND n.dtLancamento >= %s ', [funcao.RetornaValorEField(DBEdtInicial, 3)]);
  if (trim(DBEdtFinal.Text) <> '') then
    if tpNota = 'NFS' then
      sql := sql + Format(' AND n.dtEmissao <= %s ', [funcao.RetornaValorEField(DBEdtFinal, 3)])
    else
      sql := sql + Format(' AND n.dtLancamento <= %s ', [funcao.RetornaValorEField(DBEdtFinal, 3)]);
  if (trim(DBEidDocSerie.Text) <> '') then
    sql := sql + Format(' AND N.idDocSerie = %s', [QuotedStr(DBEidDocSerie.Text)]);
  if (trim(DBEnrNotaIni.Text) <> '') then
    if tpNota = 'NFS' then
      sql := sql + Format(' AND n.idNf >= %s ', [funcao.RetornaValorEField(DBEnrNotaIni, 3)])
    else
      sql := sql + Format(' AND N.idNfE >= %s ', [funcao.RetornaValorEField(DBEnrNotaIni, 3)]);
  if (trim(DBEnrNotaFim.Text) <> '') then
    if tpNota = 'NFS' then
      sql := sql + Format(' AND n.idNf <= %s ', [funcao.RetornaValorEField(DBEnrNotaFim, 3)])
    else
      sql := sql + Format(' AND n.idNfE <= %s ', [funcao.RetornaValorEField(DBEnrNotaFim, 3)]);

   if tpNota = 'NFE' then
   begin
    if Trim(DBEidMaquina.Text) <> '' then
      sql := sql + Format(' AND p.idMaquina = %s ', [funcao.RetornaValorEField(DBEidMaquina, 3)]);
    if Trim(DBEidGerencial.Text) <> '' then
      sql := sql + Format(' AND n.idGerencial = %s ', [funcao.RetornaValorEField(DBEidGerencial, 3)]);
   end;

   if (trim(DBEidProdutoIni.Text) <> '') then
    sql := sql + ' AND p.idProduto >= ' + funcao.RetornaValorEField(DBEidProdutoIni, 3);

   if (trim(DBEidProdutoFim.Text) <> '') then
    sql := sql + ' AND p.idProduto <= ' + funcao.RetornaValorEField(DBEidProdutoFim, 3);

  //executa
  cdsGrid.CommandText := sqlPadrao + sql;
  cdsGrid.Active := true;
  screen.Cursor := crDefault;
end;

procedure TfrmPesNotas.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolida').AsString := 'S';
end;

procedure TfrmPesNotas.DBEidClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadCliente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TfrmPesNotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//  frmPesNotas := nil;
end;

procedure TfrmPesNotas.FormShow(Sender: TObject);
begin
  cdsGrid.Active := false;
  FindSerie.JoinClause.Clear;
  LookDocSerie.AlternateSQL.Clear;
  if tpNota = 'NFE' then
  begin
    HabilitaNfe;
    Caption := 'Pesquisa a notas de entrada!';
    LblCad.Caption := 'Fornec.';
    FindSerie.JoinClause.Add('WHERE idTipoDocSerie = 4');
    LookDocSerie.AlternateSQL.Add('SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 4 AND idDocSerie = ?');
    cdsGrid.CommandText := 'SELECT DISTINCT n.idEmpresa, n.idCadEmpresa, n.idDocSerie, n.idNfE AS nrNota, v.descCadFornecedor AS descricao, ' +
                           ' n.idFornecedor AS idCadastro, n.idCadFornecedor AS idCadAdicional, n.stNFe status ' +
                           ' FROM NfE n , vCadFornecedorFiscal v, NfEProduto P WHERE n.idFornecedor = v.idFornecedor AND ' +
                           ' n.idCadFornecedor = v.idCadFornecedor AND P.idEmpresa = N.idEmpresa AND P.idCadEmpresa = N.idCadEmpresa ' +
                           ' AND P.idDocSerie = N.idDocSerie AND P.idNfE = N.idNfE AND P.idFornecedor = N.idFornecedor ' +
          		             ' AND P.idCadFornecedor = N.idCadFornecedor';
  end
  else
  begin
    HabilitaNfe;
    Caption := 'Pesquisa a notas de saída!';
    LblCad.Caption := 'Fornec.';
    FindSerie.JoinClause.Add('WHERE idTipoDocSerie = 3');
    LookDocSerie.AlternateSQL.Add('SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 3 AND idDocSerie = ?');
    cdsGrid.CommandText := 'SELECT DISTINCT n.idEmpresa, n.idCadEmpresa, n.idDocSerie, n.idNf AS nrNota, v.descCadCliente AS descricao, ' +
                           ' n.idCliente AS idCadastro, n.idCadCliente AS idCadAdicional, n.stNf AS status ' +
                           ' FROM Nf n , vCadClienteFiscal v, NfProduto P WHERE n.idCliente = v.idCliente AND ' +
                           ' n.idCadCliente = v.idCadCliente AND P.idEmpresa = N.idEmpresa AND P.idCadEmpresa = N.idCadEmpresa ' +
                           ' AND P.idDocSerie = N.idDocSerie AND P.idNf = N.idNf';
    end;

  inherited;
  if tpNota = 'NFE' then
  begin
    cdsEmpresa.FieldByName('idEmpresa').AsString := FrmNfE.cdsEmpresa.FieldByName('idEmpresa').AsString;
    cdsEmpresa.FieldByName('idCadEmpresa').AsString := FrmNfE.cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  end
  else
  begin
    cdsEmpresa.FieldByName('idEmpresa').AsString := FrmNotaFiscal.cdsEmpresa.FieldByName('idEmpresa').AsString;
    cdsEmpresa.FieldByName('idCadEmpresa').AsString := FrmNotaFiscal.cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  end;
end;

procedure TfrmPesNotas.HabilitaNfe;
begin
  if tpNota = 'NFE' then
  begin
    PanTopo.Height := 177;
    lblMaquina.Visible := True;
    DBEidMaquina.Visible := True;
    LookMaquina.Visible := True;
    lblGerencial.Visible := True;
    DBEidGerencial.Visible := True;
    LookGerencial.Visible := True;
  end
  else
  if tpNota = 'NFS' then
  begin
    PanTopo.Height := 128;
    lblMaquina.Visible := False;
    DBEidMaquina.Visible := False;
    LookMaquina.Visible := False;
    lblGerencial.Visible := False;
    DBEidGerencial.Visible := False;
    LookGerencial.Visible := False;
  end;


end;

end.
