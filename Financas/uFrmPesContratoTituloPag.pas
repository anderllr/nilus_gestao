unit uFrmPesContratoTituloPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, EditAlign, CEdit, System.Actions;

type
  TFrmPesContratoTituloPag = class(TFrmPadraoPesqEmpFiscal)
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
    DBEvlContratoCompra: TCDBEdit;
    DBEvlDifContrato: TCDBEdit;
    DBEvlSomaTitulo2: TCDBEdit;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    dspDados: TDataSetProvider;
    sdsDados: TSQLDataSet;
    cdsDadosidEmpresa: TIntegerField;
    cdsDadosidCadEmpresa: TSmallintField;
    cdsDadosvlProduto: TFMTBCDField;
    cdsDadosqtContrato: TFMTBCDField;
    cdsDadosqtPesoEntregue: TIntegerField;
    cdsDadosvlEntregue: TFMTBCDField;
    CLabel1: TCLabel;
    DBEqtContrato: TCDBEdit;
    CLabel2: TCLabel;
    DBEqtPesoEntregue: TCDBEdit;
    cdsDadosvlDifEntregue: TCurrencyField;
    cdsDadosvlDifContrato: TCurrencyField;
    cdsContrato: TClientDataSet;
    dsContrato: TDataSource;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TIntegerField;
    CLookUp3: TCLookUp;
    CLookUp2: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    lblCliFor: TCLabel;
    cdsDadosidFornecedor: TIntegerField;
    cdsDadosidCadFornecedor: TSmallintField;
    cdsDadosidContratoCompra: TStringField;
    cdsDadosvlContratoCompra: TFMTBCDField;
    cdsContratoidContratoCompra: TStringField;
    DBEidContratoCompra: TCDBEdit;
    LookNrOriginal: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookEmissaoVenda: TCLookUp;
    CLabel12: TCLabel;
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
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoCompraEnter(Sender: TObject);
    procedure DBEidContratoCompraExit(Sender: TObject);
    procedure cdsGridselGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGridCellClick(Column: TColumn);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    vlAnterior : string;
    qtSel : integer;
  public
    { Public declarations }

  end;

var
  FrmPesContratoTituloPag: TFrmPesContratoTituloPag;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesContratoCompra,
  uFrmPesTituloPag, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmPesContratoTituloPag.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') then
  begin
    messagedlg('Você deve informar o Fornecedor!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := ' SELECT CONVERT(BIT, 0) sel, idEmpresa, idCadEmpresa, id, idDocSerie, nrTitulo, idParcela, ' +
         'descAbreviada, vlParcela, vlPago, Saldo, dtEmissao, dtVencimento, stParcela, tpConsulta ' +
         ' FROM vConsultaTitulos t WHERE t.tpConsulta = ' + QuotedStr('TPAG');
   if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' +  funcao.RetornaValorEField(DBEidEmpresa, 3);
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);
  end;
//  sql := sql + ' AND t.idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
//               ' AND t.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);

  sql := sql + ' AND t.idCadGeral = ' + cdsPadraoidFornecedor.AsString;

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
    sql := sql + ' AND t.id NOT IN (SELECT idTituloPag FROM vContratoCompraFinanc  WHERE idTituloPag IS NOT NULL)';

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  qtSel := 0;
  btnAnexar.Enabled := qtSel > 0;

  inherited;
end;

procedure TFrmPesContratoTituloPag.BtnAnexarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') or (trim(DBEidContratoCompra.Text) = '') then
  begin
    messagedlg('É preciso selecionar o fornecedor e o contrato!', mtwarning, [mbok], 0);
    exit;
  end;

  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsBoolean then
    begin
      //Primeiro verifica se o título já não está em outro contrato
      sql := 'SELECT idFornecedor, idCadFornecedor, idContratoCompra FROM vContratoCompraFinanc WHERE idTituloPag = ' + cdsGridid.AsString +
             ' AND idContratoCompra <> ' + funcao.RetornaValorEField(DBEidContratoCompra, 3);
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          messagedlg('Título: ' + cdsGridnrTitulo.AsString + ' já presente em outro contrato!' + #13 +
                     'Fornecedor: ' + FieldByName('idFornecedor').AsString + '-' + FieldByName('idCadFornecedor').AsString + #13 +
                     'Contrato: ' + FieldByName('idContratoCompra').AsString, mtwarning, [mbok], 0);
          exit;
        end;
      end;

      //Primeiro verifica se o título já não está em outro cliente pois o contrato pode ter o mesmo número para clientes diferentes
      sql := 'SELECT idFornecedor, idCadFornecedor, idContratoCompra FROM vContratoCompraFinanc WHERE idTituloPag = ' + cdsGridid.AsString +
             ' AND ((idFornecedor <> ' + funcao.RetornaValorEField(DBEidFornecedor, 3) + ') OR (idCadFornecedor <> ' + funcao.RetornaValorEField(DBEidCadFornecedor, 3) + '))';
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          messagedlg('Título: ' + cdsGridnrTitulo.AsString + ' já presente em contrato de outro Fornecedor!' + #13 +
                     'Fornecedor: ' + FieldByName('idFornecedor').AsString + '-' + FieldByName('idCadFornecedor').AsString + #13 +
                     'Contrato: ' + FieldByName('idContratoCompra').AsString, mtwarning, [mbok], 0);
          exit;
        end;
      end;
      //Agora verifica se o título já não está no mesmo contrato
      sql := 'SELECT idFornecedor, idCadFornecedor, idContratoCompra FROM vContratoCompraFinanc WHERE idTituloPag = ' + cdsGridid.AsString +
             ' AND idContratoCompra = ' + funcao.RetornaValorEField(DBEidContratoCompra, 3) +
             ' AND idFornecedor = ' + funcao.RetornaValorEField(DBEidFornecedor, 3) +
             ' AND idCadFornecedor = ' + funcao.RetornaValorEField(DBEidCadFornecedor, 3);
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        if RecordCount > 0 then
        begin
          messagedlg('Título: ' + cdsGridnrTitulo.AsString + ' já presente nesse contrato!' + #13 +
                     'Fornecedor: ' + FieldByName('idFornecedor').AsString + '-' + FieldByName('idCadFornecedor').AsString + #13 +
                     'Contrato: ' + FieldByName('idContratoCompra').AsString, mtwarning, [mbok], 0);
          exit;
        end;
      end;

      //se não está presente em nenhum... adiciona
      sql := 'INSERT INTO ContratoCompraTitulo (idEmpresa, idCadEmpresa, idFornecedor, idCadFornecedor, idContratoCompra, idTituloPag) VALUES(' +
             funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
             funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
             funcao.RetornaValorEField(DBEidFornecedor, 3) + ', ' +
             funcao.RetornaValorEField(DBEidCadFornecedor, 3) + ', ' +
             funcao.RetornaValorEField(DBEidContratoCompra, 3) + ', ' +
             cdsGridid.AsString + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end; //fim do     if cdsGridsel.AsBoolean then
    cdsGrid.Next;
  end;
  actPesquisar.Execute;
  vlAnterior := '';
  DBEidContratoCompraExit(DBEidContratoCompra);
  cdsContrato.Append;
  showmessage('Título(s) anexado(s)!');
end;

procedure TFrmPesContratoTituloPag.cdsDadosCalcFields(DataSet: TDataSet);
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
      cdsDadosvlDifContrato.AsFloat := cdsDadosvlContratoCompra.AsFloat - vlTitulo;
    end;

end;

procedure TFrmPesContratoTituloPag.cdsGridselGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := 'N';
end;

procedure TFrmPesContratoTituloPag.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  cdsPadraostAtivo.AsString := 'S';
  cdsPadraostAberto.AsString := 'S';
  cdsPadraostLiquidado.AsString := 'N';
  cdsPadraolistaTitContrato.AsString := 'N';
end;

procedure TFrmPesContratoTituloPag.DBEidContratoCompraEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := DBEidContratoCompra.Text;
end;

procedure TFrmPesContratoTituloPag.DBEidContratoCompraExit(Sender: TObject);
begin
  inherited;
  if DBEidContratoCompra.Text <> vlAnterior then
  begin
    //Agora tras os detalhes do contrato
    cdsDados.Active := false;
    if trim(DBEidContratoCompra.Text) <> '' then
      cdsDados.CommandText := 'SELECT * FROM vContratoCompraValor WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                              ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                              ' AND idFornecedor = ' + funcao.RetornaValorEField(DBEidFornecedor, 3) +
                              ' AND idCadFornecedor = ' + funcao.RetornaValorEField(DBEidCadFornecedor, 3) +
                              ' AND idContratoCompra = ' + funcao.RetornaValorEField(DBEidContratoCompra, 3)
    else
      cdsDados.CommandText := 'SELECT * FROM vContratoCompraValor WHERE 1=2';
    cdsDados.Active := true;
  end;

end;

procedure TFrmPesContratoTituloPag.DBEidContratoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoCompra, FrmPesContratoCompra);
    FrmPesContratoCompra.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoCompra.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    if trim(DBEidFornecedor.Text) <> '' then
      FrmPesContratoCompra.idFornecedor := StrToInt(DBEidFornecedor.Text);
    if trim(DBEidCadFornecedor.Text) <> '' then
      FrmPesContratoCompra.idCadFornecedor := StrToInt(DBEidCadFornecedor.Text);
    FrmPesContratoCompra.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoCompra.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idFornecedor').Value;
        FieldByName('idCadFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadFornecedor').Value;
        if not (cdsContrato.State in [dsInsert, dsEdit]) then
          cdsContrato.Append;

        cdsContratoidContratoCompra.Value := FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').Value;
        DBEidContratoCompra.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmPesContratoTituloPag.DBEidEmpresaExit(Sender: TObject);
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

procedure TFrmPesContratoTituloPag.DBEidFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmPesContratoTituloPag.DBEidFornecedorKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmPesContratoTituloPag.DBGridCellClick(Column: TColumn);
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

procedure TFrmPesContratoTituloPag.DBGridDblClick(Sender: TObject);
begin
//  inherited;
end;

procedure TFrmPesContratoTituloPag.dsPadraoDataChange(Sender: TObject;
  Field: TField);
begin
//  inherited;

end;

procedure TFrmPesContratoTituloPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesContratoTituloPag := nil;
end;

procedure TFrmPesContratoTituloPag.FormCreate(Sender: TObject);
begin
  inherited;
  cdsContrato.CreateDataSet;
  cdsContrato.Append;
  foco := DBEidFornecedor;
  Width := 780;
  Height := 635;
end;

procedure TFrmPesContratoTituloPag.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
  DBEidFornecedor.SetFocus;

end;

end.











