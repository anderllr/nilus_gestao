unit uFrmPesContratoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, ExtDlgs,
  cxShellBrowserDialog, Menus, cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr,
  Provider, DBClient, ActnList, ImgList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, DBCtrls,
  CDBCheckBox, CLookUp, Mask, CDBEdit, cxCurrencyEdit, cxMaskEdit, cxCalc,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions, System.ImageList;

type
  TFrmPesContratoCompra = class(TFrmPadraoPesquisaDevExpress)
    PanEmpresa: TCPanelGradient;
    lblEmpresa: TCLabel;
    lblCNPJ: TCLabel;
    lblInscricao: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    LookidInscEstadual: TCLookUp;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    CLabel23: TCLabel;
    CLabel11: TCLabel;
    LookidCnpjCpfCliente: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEidContratoIni: TCDBEdit;
    DBEidContratoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBCKstAtivo: TCDBCheckBox;
    DBCKstCancelado: TCDBCheckBox;
    DBCKstEncerrado: TCDBCheckBox;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    DBEnrOrigFim: TCDBEdit;
    DBEnrOrigIni: TCDBEdit;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraostCancelado: TBooleanField;
    cdsPadraostEncerrado: TBooleanField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraonrOrigIni: TStringField;
    cdsPadraonrOrigFim: TStringField;
    cdsPadraoidContratoIni: TStringField;
    cdsPadraoidContratoFim: TStringField;
    DBViewidEmpresa: TcxGridDBColumn;
    DBViewidCadEmpresa: TcxGridDBColumn;
    DBViewidFornecedor: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewidContratoCompra: TcxGridDBColumn;
    DBViewdtEmissao: TcxGridDBColumn;
    DBViewvlContratoCompra: TcxGridDBColumn;
    DBViewstContratoCompra: TcxGridDBColumn;
    DBViewqtProduto: TcxGridDBColumn;
    DBViewvlProduto: TcxGridDBColumn;
    DBViewqtArrobas: TcxGridDBColumn;
    DBViewqtSacas: TcxGridDBColumn;
    DBViewvlIcms: TcxGridDBColumn;
    DBViewvlImposto: TcxGridDBColumn;
    DBViewvlOutrosImp: TcxGridDBColumn;
    DBViewvlIcmsFrete: TcxGridDBColumn;
    DBViewvlFrete: TcxGridDBColumn;
    DBViewvlComissao: TcxGridDBColumn;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGriddescAbreviada: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridqtProduto: TFMTBCDField;
    cdsGridvlProduto: TFMTBCDField;
    cdsGridqtArrobas: TFMTBCDField;
    cdsGridqtSacas: TFMTBCDField;
    cdsGridvlIcms: TFMTBCDField;
    cdsGridvlImposto: TFMTBCDField;
    cdsGridvlOutrosImp: TFMTBCDField;
    cdsGridvlIcmsFrete: TFMTBCDField;
    cdsGridvlFrete: TFMTBCDField;
    cdsGridvlComissao: TFMTBCDField;
    cdsGridvlTotalProdutos: TFMTBCDField;
    cdsGriddescSafra: TStringField;
    DBViewvlTotalProdutos: TcxGridDBColumn;
    DBViewdescSafra: TcxGridDBColumn;
    cdsGrididFornecedor: TIntegerField;
    cdsGrididContratoCompra: TStringField;
    cdsGridvlContratoCompra: TFMTBCDField;
    cdsGridstContratoCompra: TStringField;
    cdsGrididCadFornecedor: TSmallintField;
    cdsPadraoidCadFornecedor: TIntegerField;
    DBEidFornecedor: TCDBEdit;
    DBEidCadFornecedor: TCDBEdit;
    CLookUp2: TCLookUp;
    CLookUp3: TCLookUp;
    DBEidEmbarque: TCDBEdit;
    CLookUp1: TCLookUp;
    LookDescarga: TCLookUp;
    DBEidCadEmbarque: TCDBEdit;
    CLabel27: TCLabel;
    cdsPadraoidEmbarque: TIntegerField;
    cdsPadraoidCadEmbarque: TSmallintField;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure DBViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidEmbarqueKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa, idFornecedor, idCadFornecedor : integer;
    Previsao : Boolean;
  end;

var
  FrmPesContratoCompra: TFrmPesContratoCompra;

implementation

uses uFuncao, uDmPadrao, uDmFind, uFrmPrincipal, uFrmPesClienteFiscal;
{$R *.dfm}

procedure TFrmPesContratoCompra.actPesquisarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT con.idEmpresa, con.idCadEmpresa, con.idFornecedor, con.idCadFornecedor, cad.descAbreviada, ' +
         ' idContratoCompra, dtEmissao, vlContratoCompra, stContratoCompra, con.qtProduto, ' +
         ' con.vlProduto, con.qtArrobas, con.qtSacas, vlIcms, vlImposto, vlOutrosImp, vlIcmsFrete, ' +
         ' vlFrete, vlComissao, SUM(vlTotalProduto) vlTotalProdutos, s.descSafra FROM ContratoCompra con ' +
         ' INNER JOIN vCadClienteFiscal cad ON con.idFornecedor = cad.idCliente AND con.idCadFornecedor = cad.idCadCliente INNER JOIN Safra s ' +
         ' ON con.idSafra = s.idSafra AND con.idEmpresa = s.idEmpresa WHERE 1=1';
  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND con.idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('idFornecedor').AsString) <> '' then
    sql := sql + ' AND con.idFornecedor = ' + cdsPadrao.FieldByName('idFornecedor').AsString;
  if trim(cdsPadrao.FieldByName('idCadFornecedor').AsString) <> '' then
    sql := sql + ' AND con.idCadFornecedor = ' + cdsPadrao.FieldByName('idCadFornecedor').AsString;
  if trim(cdsPadrao.FieldByName('idProduto').AsString) <> '' then
    sql := sql + ' AND con.idProduto = ' + cdsPadrao.FieldByName('idProduto').AsString;
  if trim(cdsPadrao.FieldByName('idSafra').AsString) <> '' then
    sql := sql + ' AND con.idSafra = ' + cdsPadrao.FieldByName('idSafra').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idContratoIni').AsString) <> '' then
    sql := sql + ' AND idContratoCompra >= ' + QuotedStr(cdsPadrao.FieldByName('idContratoIni').AsString);
  if trim(cdsPadrao.FieldByName('idContratoFim').AsString) <> '' then
    sql := sql + ' AND idContratoCompra <= ' + QuotedStr(cdsPadrao.FieldByName('idContratoFim').AsString);
  if trim(cdsPadrao.FieldByName('nrOrigIni').AsString) <> '' then
    sql := sql + ' AND nrOriginal >= ' + QuotedStr(cdsPadrao.FieldByName('nrOrigIni').AsString);
  if trim(cdsPadrao.FieldByName('nrOrigFim').AsString) <> '' then
    sql := sql + ' AND nrOriginal <= ' + QuotedStr(cdsPadrao.FieldByName('nrOrigFim').AsString);
  if trim(cdsPadrao.FieldByName('idEmbarque').AsString) <> '' then
    sql := sql + ' AND con.idEmbarque = ' + cdsPadrao.FieldByName('idEmbarque').AsString;
  if trim(cdsPadrao.FieldByName('idCadEmbarque').AsString) <> '' then
    sql := sql + ' AND con.idCadEmbarque = ' + cdsPadrao.FieldByName('idCadEmbarque').AsString;


  if not Previsao then
  begin
    if cdsPadrao.FieldByName('stAtivo').AsBoolean then
      status := QuotedStr('ATIVO');
    if cdsPadrao.FieldByName('stEncerrado').AsBoolean then
      if trim(status) = '' then
        status := QuotedStr('ENCERRADO')
      else
        status := status + ',' + QuotedStr('ENCERRADO');
    if cdsPadrao.FieldByName('stCancelado').AsBoolean then
      if trim(status) = '' then
        status := QuotedStr('CANCELADO')
      else
        status := status + ',' + QuotedStr('CANCELADO');

    if trim(status) <> '' then
      sql := sql + ' AND stContratoCompra IN (' + status + ')';
  end
  else
  begin
    status := QuotedStr('PREVISÃO');
    sql := sql + ' AND stContratoCompra IN (' + status + ')';
  end;

  sql := sql + ' GROUP BY con.idEmpresa, con.idCadEmpresa, con.idFornecedor, con.idCadFornecedor, cad.descAbreviada, idContratoCompra, dtEmissao, ' +
               ' vlContratoCompra, stContratoCompra, con.qtProduto,  con.vlProduto, con.qtArrobas, con.qtSacas, vlIcms, ' +
               ' vlImposto, vlOutrosImp, vlIcmsFrete,  vlFrete, vlComissao, s.descSafra ';

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidFornecedor.SetFocus;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
//  inherited;
end;

procedure TFrmPesContratoCompra.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if (DBCKconsolidafilial.Enabled) then
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmPesContratoCompra.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TFrmPesContratoCompra.DBEidEmbarqueKeyDown(Sender: TObject;
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
        FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadEmbarque') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmPesContratoCompra.DBEidEmbarqueKeyPress(Sender: TObject;
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
      cdsPadrao.FieldByName('idEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadEmbarque').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmPesContratoCompra.DBEidFornecedorKeyDown(Sender: TObject;
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

procedure TFrmPesContratoCompra.DBEidFornecedorKeyPress(Sender: TObject;
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

procedure TFrmPesContratoCompra.DBViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not (formulario.FindComponent('cdsGrid') as TClientDataSet).IsEmpty then
    close;
end;

procedure TFrmPesContratoCompra.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empresa := true;
  foco := DBEidFornecedor;
  idFornecedor := 0;
  WindowState := wsNormal;
end;

procedure TFrmPesContratoCompra.FormShow(Sender: TObject);
begin
  inherited;
  Height := 650;
  Width := 1150;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idCadEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stCancelado').AsBoolean := false;
  cdsPadrao.FieldByName('stEncerrado').AsBoolean := true;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBCKconsolidafilial.Visible := filial;

  //verifica se o idFornecedor é maior que zero se for desabilita o campo
  if idFornecedor > 0 then
  begin
    cdsPadrao.FieldByName('idFornecedor').AsInteger := idFornecedor;
    if idCadFornecedor > 0 then
      cdsPadrao.FieldByName('idCadFornecedor').AsInteger := idCadFornecedor
    else
      cdsPadrao.FieldByName('idCadFornecedor').AsInteger := 1;
    funcao.SomenteLeitura([DBEidFornecedor, DBEidCadFornecedor], true);
    actPesquisar.Execute;
  end;
  if Previsao then
  begin
    DBCKstAtivo.Visible := False;
    DBCKstEncerrado.Visible := False;
    DBCKstCancelado.Visible := False;
  end;
end;

end.
