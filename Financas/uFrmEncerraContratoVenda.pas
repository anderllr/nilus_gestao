unit uFrmEncerraContratoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, EditAlign, CEdit, System.Actions;

type
  TFrmEncerraContratoVenda = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanCliente: TCPanelGradient;
    Bevel3: TBevel;
    FindCliente: TCFind;
    CGroupBox3: TCGroupBox;
    BtnPesquisar: TCBitBtn;
    BtnFechar1: TCBitBtn;
    CGroupBox1: TCGroupBox;
    BtnEncerrar: TCBitBtn;
    cdsGridvlSomaTitulo: TAggregateField;
    CPanelGradient1: TCPanelGradient;
    Bevel4: TBevel;
    DBEvlEntregue: TCDBEdit;
    DBEvlDifEntregue: TCDBEdit;
    CLabel8: TCLabel;
    DBEvlSomaTitulo: TCDBEdit;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    CPanelGradient2: TCPanelGradient;
    Bevel5: TBevel;
    CLabel11: TCLabel;
    CLabel13: TCLabel;
    CLabel14: TCLabel;
    DBEvlContratoVenda: TCDBEdit;
    DBEvlDifContrato: TCDBEdit;
    DBEvlSomaTitulo2: TCDBEdit;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    dspDados: TDataSetProvider;
    sdsDados: TSQLDataSet;
    CLabel1: TCLabel;
    DBEqtContrato: TCDBEdit;
    CLabel2: TCLabel;
    DBEqtPesoEntregue: TCDBEdit;
    cdsContrato: TClientDataSet;
    dsContrato: TDataSource;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGridid: TIntegerField;
    cdsGrididDocSerie: TStringField;
    cdsGridnrTitulo: TStringField;
    cdsGrididParcela: TSmallintField;
    cdsGriddescAbreviada: TStringField;
    cdsGridvlParcela: TFMTBCDField;
    cdsGridvlPago: TFMTBCDField;
    cdsGridSaldo: TFMTBCDField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGridstParcela: TStringField;
    cdsGridtpConsulta: TStringField;
    cdsPadraoidCliente: TIntegerField;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    lblCliFor: TCLabel;
    cdsDadosidEmpresa: TIntegerField;
    cdsDadosidCadEmpresa: TSmallintField;
    cdsDadosidCliente: TIntegerField;
    cdsDadosidContratoVenda: TStringField;
    cdsDadosvlContratoVenda: TFMTBCDField;
    cdsDadosvlProduto: TFMTBCDField;
    cdsDadosqtContrato: TFMTBCDField;
    cdsDadosqtPesoEntregue: TIntegerField;
    cdsDadosvlEntregue: TFMTBCDField;
    cdsDadosvlDifEntregue: TCurrencyField;
    cdsDadosvlDifContrato: TCurrencyField;
    cdsPadraoidContratoVenda: TStringField;
    CLabel12: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    cdsContratobaixaSaldo: TStringField;
    lookStatus: TCLookUp;
    DBCKbaixaSaldo: TCDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure BtnEncerrarClick(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoVendaEnter(Sender: TObject);
    procedure DBEidContratoVendaExit(Sender: TObject);
    procedure cdsContratoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vlAnterior : string;
  public
    { Public declarations }
  end;

var
  FrmEncerraContratoVenda: TFrmEncerraContratoVenda;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesContratoVenda,
  uFrmPesTituloRec, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmEncerraContratoVenda.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  if (trim(DBEidCliente.Text) = '') then
  begin
    messagedlg('Você deve informar o Cliente!', mtwarning, [mbok], 0);
    exit;
  end;

  if (trim(DBEidContratoVenda.Text) = '') then
  begin
    messagedlg('Você deve informar o Contrato!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'SELECT t.idEmpresa, t.idCadEmpresa, id, idDocSerie, nrTitulo, idParcela, ' +
         'descAbreviada, vlParcela, vlPago, Saldo, dtEmissao, dtVencimento, stParcela, tpConsulta ' +
         ' FROM vConsultaTitulos t INNER JOIN vContratoVendaFinanc c ON t.idEmpresa = c.idEmpresa ' +
         ' AND t.idCadEmpresa = c.idCadEmpresa ' +
         ' AND t.idCadGeral = c.idCliente ' +
         ' AND t.id = c.idTituloRec WHERE t.tpConsulta = ' + QuotedStr('TREC');

  sql := sql + ' AND t.idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
               ' AND t.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);

  sql := sql + ' AND t.idCadGeral = ' + cdsPadraoidCliente.AsString;

  sql := sql + ' AND c.idContratoVenda = ' + QuotedStr(cdsPadraoidContratoVenda.AsString);

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  //Agora tras os detalhes do contrato
  cdsDados.Active := false;
  if trim(DBEidContratoVenda.Text) <> '' then
    cdsDados.CommandText := 'SELECT * FROM vContratoVendaValor WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                            ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                            ' AND idCliente = ' + funcao.RetornaValorEField(DBEidCliente, 3) +
                            ' AND idContratoVenda = ' + funcao.RetornaValorEField(DBEidContratoVenda, 3)
  else
    cdsDados.CommandText := 'SELECT * FROM vContratoVendaValor WHERE 1=2';
  cdsDados.Active := true;

  BtnEncerrar.Enabled := cdsGrid.RecordCount > 0;
  inherited;
end;

procedure TFrmEncerraContratoVenda.BtnEncerrarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidCliente.Text) = '') or (trim(DBEidContratoVenda.Text) = '') then
  begin
    messagedlg('É preciso selecionar o Cliente e o contrato!', mtwarning, [mbok], 0);
    exit;
  end;

  if messagedlg('Tem certeza que deseja encerrar o contrato?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

  //se for para baixar o saldo dos títulos...
  if cdsContratobaixaSaldo.AsString = 'S' then
  begin

    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if (cdsGridstParcela.AsString <> 'LIQUIDADO') and (cdsGridstParcela.AsString <> 'ESTORNADO') then
      begin
        sql := 'EXEC spEstornaSaldoTit ' + cdsGridid.AsString + ', ' + cdsGrididParcela.AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;

      cdsGrid.Next;
    end;
  end; // fim do if cdsContratobaixaSaldo.AsString = 'S' then
  sql := 'UPDATE ContratoVenda SET stContratoVenda = ' + QuotedStr('ENCERRADO') +
         ', dtEncerramento = ' + funcao.ConverteData(date) +
         ' WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         '   AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
         '   AND idCliente = ' + funcao.RetornaValorEField(DBEidCliente, 3) +
         '   AND idContratoVenda = ' + funcao.RetornaValorEField(DBEidContratoVenda, 3);
  dmPadrao.dbConexao.ExecuteDirect(sql);
  cdsPadrao.Append;
  cdsDados.Active := false;
  cdsDados.CommandText := 'SELECT * FROM vContratoVendaValor WHERE 1=2';
  cdsDados.Active := true;
  cdsGrid.Active := false;
  cdsGrid.CommandText := 'SELECT idEmpresa, idCadEmpresa, id, idDocSerie, nrTitulo, idParcela, descAbreviada, vlParcela, vlPago, Saldo, dtEmissao, dtVencimento, stParcela, tpConsulta FROM vConsultaTitulos WHERE 1=2';
  cdsGrid.Active := true;
  cdsDados.Append;
  showmessage('Contrato Encerrado!');
end;

procedure TFrmEncerraContratoVenda.cdsContratoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsContratobaixaSaldo.AsString := 'S';
end;

procedure TFrmEncerraContratoVenda.cdsDadosCalcFields(DataSet: TDataSet);
var
  vlTitulo : double;
begin
  inherited;
  cdsDadosvlDifEntregue.AsCurrency := 0;
  cdsDadosvlDifContrato.AsCurrency := 0;
  if cdsGrid.RecordCount > 0 then
    if cdsGridvlSomaTitulo.Value > 0 then
    begin
      vlTitulo := cdsGridvlSomaTitulo.Value;
      cdsDadosvlDifEntregue.AsFloat := cdsDadosvlEntregue.AsFloat - vlTitulo;
      cdsDadosvlDifContrato.AsFloat := cdsDadosvlContratoVenda.AsFloat - vlTitulo;
    end;

end;

procedure TFrmEncerraContratoVenda.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;

end;

procedure TFrmEncerraContratoVenda.DBEidContratoVendaEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidContratoVenda.Text;
end;

procedure TFrmEncerraContratoVenda.DBEidContratoVendaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEidContratoVenda.Text then
  begin
    if trim(lookStatus.Caption) = 'ENCERRADO' then
    begin
      messagedlg('O contrato já está encerrado!', mtwarning, [mbok], 0);
      DBEidContratoVenda.SetFocus;
      vlAnterior := '';
      exit;
    end;
  end;
end;

procedure TFrmEncerraContratoVenda.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadraoidCliente.AsInteger;
    FrmPesContratoVenda.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idCadEmpresa').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCadEmpresa').Value;
        FieldByName('idCliente').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').Value;

        cdsPadraoidContratoVenda.Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        DBEidContratoVenda.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmEncerraContratoVenda.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if (cdsEmpresaidEmpresa.AsInteger <> cdsPadraoidEmpresa.AsInteger) or
     (cdsEmpresaidCadEmpresa.AsInteger <> cdsPadraoidCadEmpresa.AsInteger) then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;

    cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
    cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  end;

end;

procedure TFrmEncerraContratoVenda.DBGridDblClick(Sender: TObject);
begin
//  inherited;
end;

procedure TFrmEncerraContratoVenda.dsPadraoDataChange(Sender: TObject;
  Field: TField);
begin
//  inherited;

end;

procedure TFrmEncerraContratoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmEncerraContratoVenda := nil;
end;

procedure TFrmEncerraContratoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  cdsContrato.CreateDataSet;
  cdsContrato.Append;
  foco := DBEidCliente;
  Width := 745;
  Height := 635;

  BtnEncerrar.Enabled := false;
end;

procedure TFrmEncerraContratoVenda.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
  DBEidCliente.SetFocus;

end;

end.











