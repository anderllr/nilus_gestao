unit uFrmPesCte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, System.Actions;

type
  TfrmPesCte = class(TFrmPadraoPesqEmpFiscal)
    FindSerie: TCFind;
    CLabel7: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEidCTeIni: TCDBEdit;
    CLabel8: TCLabel;
    DBEidCTeFim: TCDBEdit;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidDocSerie: TStringField;
    DBCKconsolida: TCDBCheckBox;
    cdsPadraoconsolida: TStringField;
    lblMaquina: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    FindGerencial: TCFind;
    DBEidCadDestinatario: TCDBEdit;
    LookFornecedorFiscal: TCLookUp;
    DBEidDestinatario: TCDBEdit;
    LblCad: TCLabel;
    cdsPadraoidDestinatario: TIntegerField;
    cdsPadraoidCadDestinatario: TIntegerField;
    DBEidRemetente: TCDBEdit;
    CLookUp8: TCLookUp;
    DBEidCadRecebedor: TCDBEdit;
    DBEidRecebedor: TCDBEdit;
    CLabel32: TCLabel;
    CLookUp6: TCLookUp;
    DBEidCadExpedidor: TCDBEdit;
    DBEidExpedidor: TCDBEdit;
    CLabel30: TCLabel;
    CLookUp2: TCLookUp;
    DBEidCadRemetente: TCDBEdit;
    CLabel31: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    CLabel25: TCLabel;
    DBEidMotorista: TCDBEdit;
    CLookUp24: TCLookUp;
    CLabel119: TCLabel;
    cdsPadraoidRemetente: TIntegerField;
    cdsPadraoidCadRemetente: TIntegerField;
    cdsPadraoidExpedidor: TIntegerField;
    cdsPadraoidCadExpedidor: TIntegerField;
    cdsPadraoidRecebedor: TIntegerField;
    cdsPadraoidCadRecebedor: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraoidMotorista: TIntegerField;
    cdsPadraoidCTeIni: TIntegerField;
    cdsPadraoidCTeFim: TIntegerField;
    DBEidSafra: TCDBEdit;
    CLabel2: TCLabel;
    LookSafra: TCLookUp;
    cdsPadraoidSafra: TIntegerField;
    DBEidProdutoPred: TCDBEdit;
    CLookUp13: TCLookUp;
    CLabel34: TCLabel;
    cdsPadraoidProdutoPred: TIntegerField;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actExecutarExecute(Sender: TObject);
    procedure DBEidDestinatarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidRemetenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidExpedidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidRecebedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesCte: TfrmPesCte;

implementation

uses uFrmPesClienteFiscal, uFuncao, uFrmPadraoPesquisa, uFrmNFE, uFrmNotaFiscal;

{$R *.dfm}

procedure TfrmPesCte.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  screen.Cursor := crSqlWait;
  cdsGrid.Active := false;
  sqlPadrao := 'SELECT * FROM vCTe WHERE 1=1';;
  sql := Format(' AND idEmpresa = %s ', [cdsEmpresaidEmpresa.AsString]);

  if cdsPadraoconsolida.AsString = 'N' then
    sql := sql + Format(' AND idCadEmpresa = %s ', [cdsEmpresaidCadEmpresa.AsString]);

  if (trim(DBEidDestinatario.Text) <> '') then
    sql := sql + ' AND idDestinatario = ' + cdsPadraoidDestinatario.AsString;
  if (trim(DBEidCadDestinatario.Text) <> '') then
    sql := sql + ' AND idCadDestinatario = ' + cdsPadraoidCadDestinatario.AsString;

  if (trim(DBEidRemetente.Text) <> '') then
    sql := sql + ' AND idRemetente = ' + cdsPadraoidRemetente.AsString;
  if (trim(DBEidCadRemetente.Text) <> '') then
    sql := sql + ' AND idCadRemetente = ' + cdsPadraoidCadRemetente.AsString;

  if (trim(DBEidExpedidor.Text) <> '') then
    sql := sql + ' AND idExpedidor = ' + cdsPadraoidExpedidor.AsString;
  if (trim(DBEidCadExpedidor.Text) <> '') then
    sql := sql + ' AND idCadExpedidor = ' + cdsPadraoidCadExpedidor.AsString;

  if (trim(DBEidRecebedor.Text) <> '') then
    sql := sql + ' AND idRecebedor = ' + cdsPadraoidRecebedor.AsString;
  if (trim(DBEidCadRecebedor.Text) <> '') then
    sql := sql + ' AND idCadRecebedor = ' + cdsPadraoidCadRecebedor.AsString;

  if (trim(DBEidMaquina.Text) <> '') then
    sql := sql + ' AND idMaquina = ' + cdsPadraoidMaquina.AsString;

  if (trim(DBEidDocSerie.Text) <> '') then
    sql := sql + ' AND idDocSerie = ' + QuotedStr(cdsPadraoidDocSerie.AsString);

  if (trim(DBEidMotorista.Text) <> '') then
    sql := sql + ' AND idMotorista = ' + cdsPadraoidMotorista.AsString;

  if (trim(DBEidSafra.Text) <> '') then
    sql := sql + ' AND idSafra = ' + cdsPadraoidSafra.AsString;

  if (trim(DBEidProdutoPred.Text) <> '') then
    sql := sql + ' AND idProdutoPred = ' + cdsPadraoidProdutoPred.AsString;

  if (trim(DBEidCTeIni.Text) <> '') then
    sql := sql + ' AND idCTeIni >= ' + cdsPadraoidCTeIni.AsString;

  if (trim(DBEidCTeFim.Text) <> '') then
    sql := sql + ' AND idCTeFim <= ' + cdsPadraoidCTeFim.AsString;

  if (trim(DBEdtInicial.Text) <> '') then
    sql := sql + ' AND dtEmissao >= ' + funcao.RetornaValorEField(DBEdtInicial, 3);

  if (trim(DBEdtFinal.Text) <> '') then
    sql := sql + ' AND dtEmissao <= ' + funcao.RetornaValorEField(DBEdtFinal, 3);

  //executa
  cdsGrid.CommandText := sqlPadrao + sql;
  cdsGrid.Active := true;
  screen.Cursor := crDefault;
end;

procedure TfrmPesCte.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolida').AsString := 'S';
end;

procedure TfrmPesCte.DBEidDestinatarioKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idDestinatario').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadDestinatario').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadDestinatario') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TfrmPesCte.DBEidExpedidorKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idExpedidor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadExpedidor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadExpedidor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TfrmPesCte.DBEidRecebedorKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idRecebedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadRecebedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadRecebedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TfrmPesCte.DBEidRemetenteKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idRemetente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadRemetente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadRemetente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TfrmPesCte.FormCreate(Sender: TObject);
begin
  inherited;
  Height := 530;
end;

end.
