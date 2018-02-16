unit uFrmPesContratoTituloRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, EditAlign, CEdit, System.Actions, System.ImageList;

type
  TFrmPesContratoTituloRec = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanCliente: TCPanelGradient;
    Bevel3: TBevel;
    FindCliente: TCFind;
    CGroupBox3: TCGroupBox;
    BtnPesquisar: TCBitBtn;
    BtnFechar1: TCBitBtn;
    CGroupBox1: TCGroupBox;
    CLabel7: TCLabel;
    BtnAnexar: TCBitBtn;
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
    DBCKstAberto: TCDBCheckBox;
    DBCKstLiquidado: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    DBCKlistaTitContrato: TCDBCheckBox;
    cdsPadraostAtivo: TStringField;
    cdsPadraostAberto: TStringField;
    cdsPadraostLiquidado: TStringField;
    cdsPadraolistaTitContrato: TStringField;
    cdsGridsel: TBooleanField;
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
    DBEidContratoVenda: TCDBEdit;
    LookNrOriginal: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookEmissaoVenda: TCLookUp;
    CLabel12: TCLabel;
    cdsContratoidContratoVenda: TStringField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidContratoCompraEnter(Sender: TObject);
    procedure cdsGridselGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGridCellClick(Column: TColumn);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure DBEidContratoVendaExit(Sender: TObject);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vlAnterior : string;
    qtSel : integer;
  public
    { Public declarations }

  end;

var
  FrmPesContratoTituloRec: TFrmPesContratoTituloRec;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesContratoVenda,
  uFrmPesTituloRec, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmPesContratoTituloRec.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  if (trim(DBEidCliente.Text) = '') then
  begin
    messagedlg('Você deve informar o Cliente!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := ' SELECT CONVERT(BIT, 0) sel, idEmpresa, idCadEmpresa, id, idDocSerie, nrTitulo, idParcela, ' +
         'descAbreviada, vlParcela, vlPago, Saldo, dtEmissao, dtVencimento, stParcela, tpConsulta ' +
         ' FROM vConsultaTitulos t WHERE t.tpConsulta = ' + QuotedStr('TREC');

  sql := sql + ' AND t.idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
               ' AND t.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);

  sql := sql + ' AND t.idCadGeral = ' + cdsPadraoidCliente.AsString;

  if cdsPadraostAtivo.AsString = 'S' then
    status := QuotedStr('ATIVO');
  if cdsPadraostAberto.AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('ABERTO')
    else
      status := status + ',' + QuotedStr('ABERTO');

  if cdsPadraostLiquidado.AsString = 'S' then
    if trim(status) = '' then
      status := QuotedStr('LIQUIDADO')
    else
      status := status + ',' + QuotedStr('LIQUIDADO');

  if trim(status) <> '' then
    sql := sql + ' AND t.stTitulo IN (' + status + ')';

  if cdsPadraolistaTitContrato.AsString = 'N' then
    sql := sql + ' AND t.id NOT IN (SELECT idTituloRec FROM vContratoVendaFinanc  WHERE idTituloRec IS NOT NULL)';

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  qtSel := 0;
  btnAnexar.Enabled := qtSel > 0;

  inherited;
end;

procedure TFrmPesContratoTituloRec.BtnAnexarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidCliente.Text) = '') or (trim(DBEidContratoVenda.Text) = '') then
  begin
    messagedlg('É preciso selecionar o Cliente e o contrato!', mtwarning, [mbok], 0);
    exit;
  end;

  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsBoolean then
    begin
      //Primeiro verifica se o título já não está em outro contrato
      sql := 'SELECT idCliente, idContratoVenda FROM vContratoVendaFinanc WHERE idTituloRec = ' + cdsGridid.AsString +
             ' AND idContratoVenda <> ' + funcao.RetornaValorEField(DBEidContratoVenda, 3);
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          messagedlg('Título: ' + cdsGridnrTitulo.AsString + ' já presente em outro contrato!' + #13 +
                     'Cliente: ' + FieldByName('idCliente').AsString + #13 +
                     'Contrato: ' + FieldByName('idContratoVenda').AsString, mtwarning, [mbok], 0);
          exit;
        end;
      end;

      //Primeiro verifica se o título já não está em outro cliente pois o contrato pode ter o mesmo número para clientes diferentes
      sql := 'SELECT idCliente, idContratoVenda FROM vContratoVendaFinanc WHERE idTituloRec = ' + cdsGridid.AsString +
             ' AND ((idCliente <> ' + funcao.RetornaValorEField(DBEidCliente, 3) + '))';
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          messagedlg('Título: ' + cdsGridnrTitulo.AsString + ' já presente em contrato de outro Cliente!' + #13 +
                     'Cliente: ' + FieldByName('idCliente').AsString + #13 +
                     'Contrato: ' + FieldByName('idContratoVenda').AsString, mtwarning, [mbok], 0);
          exit;
        end;
      end;
      //Agora verifica se o título já não está no mesmo contrato
      sql := 'SELECT idCliente, idContratoVenda FROM vContratoVendaFinanc WHERE idTituloRec = ' + cdsGridid.AsString +
             ' AND idContratoVenda = ' + funcao.RetornaValorEField(DBEidContratoVenda, 3) +
             ' AND idCliente = ' + funcao.RetornaValorEField(DBEidCliente, 3);
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          messagedlg('Título: ' + cdsGridnrTitulo.AsString + ' já presente nesse contrato!' + #13 +
                     'Cliente: ' + FieldByName('idCliente').AsString + #13 +
                     'Contrato: ' + FieldByName('idContratoVenda').AsString, mtwarning, [mbok], 0);
          exit;
        end;
      end;

      //se não está presente em nenhum... adiciona
      sql := 'INSERT INTO ContratoVendaTitulo (idEmpresa, idCadEmpresa, idCliente, idContratoVenda, idTituloRec) VALUES(' +
             funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
             funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
             funcao.RetornaValorEField(DBEidCliente, 3) + ', ' +
             funcao.RetornaValorEField(DBEidContratoVenda, 3) + ', ' +
             cdsGridid.AsString + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end; //fim do     if cdsGridsel.AsBoolean then
    cdsGrid.Next;
  end;
  actPesquisar.Execute;
  vlAnterior := '';
  DBEidContratoVendaExit(DBEidContratoVenda);
  cdsContrato.Append;
  showmessage('Título(s) anexado(s)!');
end;

procedure TFrmPesContratoTituloRec.cdsDadosCalcFields(DataSet: TDataSet);
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

procedure TFrmPesContratoTituloRec.cdsGridselGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := '';
end;

procedure TFrmPesContratoTituloRec.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  cdsPadraostAtivo.AsString := 'S';
  cdsPadraostAberto.AsString := 'S';
  cdsPadraostLiquidado.AsString := 'N';
  cdsPadraolistaTitContrato.AsString := 'N';
end;

procedure TFrmPesContratoTituloRec.DBEidContratoCompraEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidContratoVenda.Text;
end;

procedure TFrmPesContratoTituloRec.DBEidContratoVendaExit(Sender: TObject);
begin
  inherited;
  if DBEidContratoVenda.Text <> vlAnterior then
  begin
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
  end;

end;

procedure TFrmPesContratoTituloRec.DBEidContratoVendaKeyDown(Sender: TObject;
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
        if not (cdsContrato.State in [dsEdit, dsInsert]) then
          cdsContrato.Append;

        cdsContratoidContratoVenda.Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        DBEidContratoVenda.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmPesContratoTituloRec.DBEidEmpresaExit(Sender: TObject);
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

procedure TFrmPesContratoTituloRec.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      if FieldByName('sel').AsBoolean then
        qtSel := qtSel - 1
      else
        qtSel := qtSel + 1;
    end; //fim do with cdsGrid do
    btnAnexar.Enabled := qtSel > 0;
  end;
end;

procedure TFrmPesContratoTituloRec.DBGridDblClick(Sender: TObject);
begin
//  inherited;
end;

procedure TFrmPesContratoTituloRec.dsPadraoDataChange(Sender: TObject;
  Field: TField);
begin
//  inherited;

end;

procedure TFrmPesContratoTituloRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesContratoTituloRec := nil;
end;

procedure TFrmPesContratoTituloRec.FormCreate(Sender: TObject);
begin
  inherited;
  cdsContrato.CreateDataSet;
  cdsContrato.Append;
  foco := DBEidCliente;
  Width := 780;
  Height := 635;
end;

procedure TFrmPesContratoTituloRec.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
  DBEidCliente.SetFocus;

end;

end.











