unit uFrmPesRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox,
  CDBCheckBox, CMemo, CFind;

type
  TFrmPesRomaneio = class(TFrmPadraoPesqEmpFiscal)
    Bevel3: TBevel;
    Bevel1: TBevel;
    PanRomaneio: TCPanelGradient;
    PanCliente: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    CLookUp9: TCLookUp;
    CLookUp10: TCLookUp;
    CLookUp11: TCLookUp;
    CLookUp12: TCLookUp;
    CLabel7: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookDescAbreviadaCliente: TCLookUp;
    CLabel9: TCLabel;
    LookidCnpjCpfCliente: TCLookUp;
    CLabel10: TCLabel;
    LookidInscEstadualCliente: TCLookUp;
    CLabel8: TCLabel;
    DBEidRomaneioIni: TCDBEdit;
    idRomaneioFim: TCDBEdit;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdtRomaneioIni: TCDBEdit;
    CLabel6: TCLabel;
    DBEdtRomaneioFim: TCDBEdit;
    GrpTipo: TCGroupBox;
    DBCKtpDeposito: TCDBCheckBox;
    DBCKtpRetirada: TCDBCheckBox;
    DBCKtpAvulso: TCDBCheckBox;
    GrpStatus: TCGroupBox;
    DBCKstAtivo: TCDBCheckBox;
    DBCKstLiberado: TCDBCheckBox;
    DBCKstFinalizado: TCDBCheckBox;
    DBCKstCancelado: TCDBCheckBox;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TIntegerField;
    cdsPadraoidRomaneioIni: TIntegerField;
    cdsPadraoidRomaneioFim: TIntegerField;
    cdsPadraodtRomaneioIni: TDateField;
    cdsPadraodtRomaneioFim: TDateField;
    cdsPadraotpDeposito: TBooleanField;
    cdsPadraotpRetirada: TBooleanField;
    cdsPadraotpAvulso: TBooleanField;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostLiberado: TBooleanField;
    cdsPadraostFinalizado: TBooleanField;
    cdsPadraostCancelado: TBooleanField;
    FindEmpresa: TCFind;
    DBEidCadCliente: TCDBEdit;
    cdsGrididRomaneio: TIntegerField;
    cdsGriddtRomaneio: TSQLTimeStampField;
    cdsGriddescAbreviada: TStringField;
    cdsGriddescProduto: TStringField;
    cdsGridtpRomaneio: TStringField;
    cdsGridstRomaneio: TStringField;
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesRomaneio: TFrmPesRomaneio;

implementation

uses uFuncao, uFrmPesCadFiscal, uFrmCadRomaneio, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmPesRomaneio.actExecutarExecute(Sender: TObject);
var
  sql, tipo, status : string;
  ok : boolean; //variável que armazenará situação que dirá se entraram dados no select
                //para evitar muitos dados no select
begin
  sql := sqlPadrao;
  ok := false;
  tipo := '';
  status := '';
  with cdsPadrao do
  begin
    //trata a empresa que é obrigatório
    if (trim(FieldByName('idEmpresa').AsString) = '') or (trim(FieldByName('idCadEmpresa').AsString) = '') then
    begin
      messagedlg('O Campo empresa é obrigatório para a pesquisa!', mtwarning, [mbok], 0);
      exit;
    end;

    //Atribui a empresa ao SQL
    sql := sql + ' AND Romaneio.idEmpresa = ' + FieldByName('idEmpresa').AsString + ' AND Romaneio.idCadEmpresa = ' +
           FieldByName('idCadEmpresa').AsString;

    //Atribui o cliente
    if (trim(FieldByName('idCliente').AsString) <> '') and (trim(FieldByName('idCadCliente').AsString) <> '') then
    begin
      sql := sql + ' AND Romaneio.idCliente = ' + FieldByName('idCliente').AsString + ' AND Romaneio.idCadCliente = ' +
             FieldByName('idCadCliente').AsString;
      ok := true;
    end;

    //Atribui o Romaneio Inicial
    if (trim(FieldByName('idRomaneioIni').AsString) <> '') then
    begin
      sql := sql + ' AND Romaneio.idRomaneio >= ' + FieldByName('idRomaneioIni').AsString;
      ok := true;
    end;

    //Atribui o Romaneio Final
    if (trim(FieldByName('idRomaneioFim').AsString) <> '') then
    begin
      sql := sql + ' AND Romaneio.idRomaneio <= ' + FieldByName('idRomaneioFim').AsString;
      ok := true;
    end;

    //Atribui o Data Inicial
    if (trim(FieldByName('dtRomaneioIni').AsString) <> '') then
    begin
      sql := sql + ' AND Romaneio.dtRomaneio >= ' + Funcao.ConverteData(FieldByName('dtRomaneioIni').AsDateTime);
      ok := true;
    end;

    //Atribui o Data Final
    if (trim(FieldByName('dtRomaneioFim').AsString) <> '') then
    begin
      sql := sql + ' AND Romaneio.dtRomaneio <= ' + Funcao.ConverteData(FieldByName('dtRomaneioFim').AsDateTime);
      ok := true;
    end;

    //Atribui os tipos
    if FieldByName('tpDeposito').AsBoolean then
      tipo := QuotedStr('DEPOSITO');
    if FieldByName('tpRetirada').AsBoolean then
      if trim(tipo) <> '' then
        tipo := tipo + ',' + QuotedStr('RETIRADA')
      else
        tipo := QuotedStr('RETIRADA');
    if FieldByName('tpAvulso').AsBoolean then
      if trim(tipo) <> '' then
        tipo := tipo + ',' + QuotedStr('AVULSA')
      else
        tipo := QuotedStr('AVULSA');

    //Se algum tipo estiver marcado atribui ao sql - não atribui true ao ok por vir default
    if (trim(tipo) <> '') then
      sql := sql + ' AND Romaneio.tpRomaneio IN (' + tipo + ')';

    //Atribui os Status
    if FieldByName('stAtivo').AsBoolean then
      status := QuotedStr('ATIVO');
    if FieldByName('stLiberado').AsBoolean then
      if trim(status) <> '' then
        status := status + ',' + QuotedStr('LIBERADO')
      else
        status := QuotedStr('LIBERADO');
    if FieldByName('stFinalizado').AsBoolean then
      if trim(status) <> '' then
        status := status + ',' + QuotedStr('FINALIZADO')
      else
        status := QuotedStr('FINALIZADO');
    if FieldByName('stCancelado').AsBoolean then
      if trim(status) <> '' then
        status := status + ',' + QuotedStr('CANCELADO')
      else
        status := QuotedStr('CANCELADO');

    //Se algum Status estiver marcado atribui ao sql - não atribui true ao ok por vir default
    if (trim(status) <> '') then
      sql := sql + ' AND Romaneio.stRomaneio IN (' + status + ')';
  end; // fim do with cdsPadrao
{  with cdsGrid do
  begin
    Active := false;
    if ok then //significa que tiveram parametros informados
      CommandText := sql
    else
      CommandText := sqlPadrao + ' AND 1 = 2';
    Active := true;
  end;}

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  inherited;

end;

procedure TFrmPesRomaneio.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with cdsPadrao do
  begin
    FieldByName('tpDeposito').Value := true;
    FieldByName('tpRetirada').Value := true;
    FieldByName('tpAvulso').Value := true;
    FieldByName('stAtivo').Value := true;
    FieldByName('stLiberado').Value := true;
    FieldByName('stFinalizado').Value := true;
    FieldByName('stCancelado').Value := true;
  end;
end;

procedure TFrmPesRomaneio.DBEidClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPesRomaneio.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
end;

procedure TFrmPesRomaneio.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').Value := FrmCadRomaneio.cdsEmpresa.FieldByName('idEmpresa').Value;;
  cdsPadrao.FieldByName('idCadEmpresa').Value := FrmCadRomaneio.cdsEmpresa.FieldByName('idCadEmpresa').Value;
end;

end.
