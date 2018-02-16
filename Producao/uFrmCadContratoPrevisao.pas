unit uFrmCadContratoPrevisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadPadraoEmpFiscal, Data.FMTBcd,
  CFind, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, Vcl.ImgList, CLookUp, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, CDBEdit, CLabel, Vcl.Buttons, CBitBtn, Vcl.ExtCtrls,
  CPanelGradient, Vcl.ComCtrls, CPageControl, CGroupBox, Vcl.Grids, Vcl.DBGrids,
  CDBGrid, CDBCheckBox, CDBMemo, CDBComboBox, CDBRadioGroup;

type
  TFrmCadContratoPrevisao = class(TFrmCadPadraoEmpFiscal)
    TabContratoCompra: TTabSheet;
    CGroupBox9: TCGroupBox;
    CLabel33: TCLabel;
    DBEidContratoCompra: TCDBEdit;
    LookCnpjCompra: TCLookUp;
    lookFornecedor: TCLookUp;
    CGroupBox10: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox11: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CLabel5: TCLabel;
    CLabel7: TCLabel;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    CLabel14: TCLabel;
    CLabel26: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    CLabel38: TCLabel;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    CLabel41: TCLabel;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    CLabel44: TCLabel;
    CLabel45: TCLabel;
    CLabel46: TCLabel;
    CLabel47: TCLabel;
    CLabel48: TCLabel;
    CLabel49: TCLabel;
    CLabel50: TCLabel;
    CLabel51: TCLabel;
    CLookUp3: TCLookUp;
    CBitBtn3: TCBitBtn;
    DBEidSafra1: TCDBEdit;
    DBEvlContratoCompra: TCDBEdit;
    CLookUp6: TCLookUp;
    CLookUp7: TCLookUp;
    DBEidProduto1: TCDBEdit;
    CBitBtn4: TCBitBtn;
    DBEvlProduto1: TCDBEdit;
    DBEqtProduto: TCDBEdit;
    DBEvlTotalProduto1: TCDBEdit;
    DBEvlImposto1: TCDBEdit;
    DBEvlFrete1: TCDBEdit;
    DBEidComissionado: TCDBEdit;
    CDBEdit8: TCDBEdit;
    CLookUp8: TCLookUp;
    CDBRadioGroup1: TCDBRadioGroup;
    DBEvlIcms1: TCDBEdit;
    DBEvlIcmsFrete1: TCDBEdit;
    DBEvlContribSocial1: TCDBEdit;
    DBEvlOutrosImp1: TCDBEdit;
    CBitBtn5: TCBitBtn;
    CLookUp9: TCLookUp;
    CLookUp10: TCLookUp;
    DBEidIndice1: TCDBEdit;
    CDBEdit14: TCDBEdit;
    CDBEdit15: TCDBEdit;
    DBEvlSaca1: TCDBEdit;
    DBEvlIcmsSaca1: TCDBEdit;
    DBEprIcmsSaca1: TCDBEdit;
    DBEidConta: TCDBEdit;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    LookAgencia: TCLookUp;
    LookDescarga: TCLookUp;
    DBEidEmbarque: TCDBEdit;
    DBEidCadEmbarque: TCDBEdit;
    CLookUp13: TCLookUp;
    DBEidTrangenia: TCDBEdit;
    CLookUp14: TCLookUp;
    lblCliFor: TCLabel;
    DBEidFornecedor: TCDBEdit;
    DBEidCadFornecedor: TCDBEdit;
    CLookUp15: TCLookUp;
    CLookUp16: TCLookUp;
    CGroupBox3: TCGroupBox;
    CLabel53: TCLabel;
    CLabel54: TCLabel;
    CLabel55: TCLabel;
    DBEdtContratoProjecao: TCDBEdit;
    DBEstContratoProjecao: TCDBEdit;
    DBEidContratoProjecao: TCDBEdit;
    dsCompra: TDataSource;
    cdsCompra: TClientDataSet;
    dspCompra: TDataSetProvider;
    sdsCompra: TSQLDataSet;
    TabContratoVenda: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    CLabel23: TCLabel;
    CLabel2: TCLabel;
    CLabel11: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    CLabel13: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel21: TCLabel;
    CLabel22: TCLabel;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    CLabel27: TCLabel;
    CLabel28: TCLabel;
    CLabel29: TCLabel;
    CLabel30: TCLabel;
    CLabel31: TCLabel;
    CLabel32: TCLabel;
    CLabel52: TCLabel;
    DBEdtEncerramento: TCDBEdit;
    LookSafra: TCLookUp;
    BtnactCadSafra: TCBitBtn;
    DBEidSafra: TCDBEdit;
    DBEvlContratoVenda: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    DBEidProduto: TCDBEdit;
    BtnactCadProduto: TCBitBtn;
    DBEvlProduto: TCDBEdit;
    DBEqtProduto1: TCDBEdit;
    DBEvlTotalProduto: TCDBEdit;
    DBEvlImposto: TCDBEdit;
    DBEvlFrete: TCDBEdit;
    DBEidProdutor: TCDBEdit;
    DBEidRepresentante: TCDBEdit;
    DBEvlComissao: TCDBEdit;
    LookProdutor: TCLookUp;
    LookRepresen: TCLookUp;
    DBRGtpCalculo: TCDBRadioGroup;
    DBEvlIcms: TCDBEdit;
    DBEvlIcmsFrete: TCDBEdit;
    DBEvlContribSocial: TCDBEdit;
    DBEvlOutrosImp: TCDBEdit;
    BtnactIndice: TCBitBtn;
    LookLancamento: TCLookUp;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    DBEqtArrobas: TCDBEdit;
    DBEqtSacas: TCDBEdit;
    DBEvlSaca: TCDBEdit;
    LookSaca: TCLookUp;
    lookArroba: TCLookUp;
    DBEidDescarga: TCDBEdit;
    CLookUp2: TCLookUp;
    DBEvlIcmsSaca: TCDBEdit;
    DBEprIcmsSaca: TCDBEdit;
    DBEdescEntrega: TCDBEdit;
    CLookUp5: TCLookUp;
    CLookUp4: TCLookUp;
    DBEidContratoVenda: TCDBEdit;
    CLookUp1: TCLookUp;
    LookCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    CGroupBox2: TCGroupBox;
    DBMobsContratoVenda: TCDBMemo;
    CGroupBox4: TCGroupBox;
    BtnAdicionarVenda: TCBitBtn;
    BtnCancelarVenda: TCBitBtn;
    BtnRetirarVenda: TCBitBtn;
    BtnNovoVenda: TCBitBtn;
    CGroupBox5: TCGroupBox;
    CDBGrid2: TCDBGrid;
    dsVenda: TDataSource;
    cdsFornecedor: TClientDataSet;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidContratoProjecao: TIntegerField;
    cdsPadraodtContratoProjecao: TSQLTimeStampField;
    cdsPadraostContratoProjecao: TStringField;
    cdsPadraoobsContratoVenda: TStringField;
    cdsVenda: TClientDataSet;
    dspVenda: TDataSetProvider;
    sdsVenda: TSQLDataSet;
    cdsVendaidEmpresa: TIntegerField;
    cdsVendaidCadEmpresa: TSmallintField;
    cdsVendaidCliente: TIntegerField;
    cdsVendaidContratoVenda: TStringField;
    cdsVendaidContratoProjecao: TIntegerField;
    cdsVendadtEmissao: TSQLTimeStampField;
    cdsVendadtEncerramento: TSQLTimeStampField;
    cdsVendaidSafra: TIntegerField;
    cdsVendaidProduto: TIntegerField;
    cdsVendaqtProduto: TFMTBCDField;
    cdsVendavlProduto: TFMTBCDField;
    cdsVendavlTotalProduto: TFMTBCDField;
    cdsVendavlImposto: TFMTBCDField;
    cdsVendavlFrete: TFMTBCDField;
    cdsVendavlContratoVenda: TFMTBCDField;
    cdsVendatpCobranca: TStringField;
    cdsVendatpFinanceiro: TStringField;
    cdsVendaobsContratoVenda: TStringField;
    cdsVendastContratoVenda: TStringField;
    cdsVendanrOriginal: TStringField;
    cdsVendaidProdutor: TIntegerField;
    cdsVendaidRepresentante: TIntegerField;
    cdsVendavlComissao: TFMTBCDField;
    cdsVendatpCalculo: TStringField;
    cdsVendavlContribSocial: TFMTBCDField;
    cdsVendavlOutrosImp: TFMTBCDField;
    cdsVendavlIcmsFrete: TFMTBCDField;
    cdsVendavlIcms: TFMTBCDField;
    cdsVendaidIndice: TSmallintField;
    cdsVendaqtSacas: TFMTBCDField;
    cdsVendaqtArrobas: TFMTBCDField;
    cdsVendavlSaca: TFMTBCDField;
    cdsVendaidDescarga: TIntegerField;
    cdsVendavlIcmsSaca: TFMTBCDField;
    cdsVendaprIcmsSaca: TFMTBCDField;
    cdsVendadescEntrega: TStringField;
    cdsVendaAFixar: TStringField;
    cdsVendadescCadCliente: TStringField;
    cdsCompraidEmpresa: TIntegerField;
    cdsCompraidCadEmpresa: TSmallintField;
    cdsCompraidContratoProjecao: TIntegerField;
    cdsCompraidFornecedor: TIntegerField;
    cdsCompraidContratoCompra: TStringField;
    cdsCompradtEmissao: TSQLTimeStampField;
    cdsCompraidSafra: TIntegerField;
    cdsCompraidProduto: TIntegerField;
    cdsCompraqtProduto: TFMTBCDField;
    cdsCompravlProduto: TFMTBCDField;
    cdsCompravlTotalProduto: TFMTBCDField;
    cdsCompravlImposto: TFMTBCDField;
    cdsCompravlFrete: TFMTBCDField;
    cdsCompravlContratoCompra: TFMTBCDField;
    cdsCompratpCobranca: TStringField;
    cdsCompratpFinanceiro: TStringField;
    cdsCompraobsContratoCompra: TStringField;
    cdsComprastContratoCompra: TStringField;
    cdsCompranrOriginal: TStringField;
    cdsCompraidComissionado: TIntegerField;
    cdsCompravlComissao: TFMTBCDField;
    cdsCompratpCalculo: TStringField;
    cdsCompravlContribSocial: TFMTBCDField;
    cdsCompravlOutrosImp: TFMTBCDField;
    cdsCompravlIcmsFrete: TFMTBCDField;
    cdsCompravlIcms: TFMTBCDField;
    cdsCompraidIndice: TSmallintField;
    cdsCompraqtSacas: TFMTBCDField;
    cdsCompraqtArrobas: TFMTBCDField;
    cdsCompravlSaca: TFMTBCDField;
    cdsCompraidConta: TSmallintField;
    cdsCompravlIcmsSaca: TFMTBCDField;
    cdsCompraprIcmsSaca: TFMTBCDField;
    cdsCompraidEmbarque: TIntegerField;
    cdsCompraidCadEmbarque: TSmallintField;
    cdsCompraidCadFornecedor: TSmallintField;
    cdsCompraidTrangenia: TSmallintField;
    cdsCompradescEntrega: TStringField;
    cdsCompravlServico: TFMTBCDField;
    cdsCompraAFixar: TStringField;
    cdsCompradescCadFornecedor: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure DBEidContratoProjecaoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCompraStateChange(Sender: TObject);
    procedure BtnAdicionarVendaClick(Sender: TObject);
    procedure dsVendaStateChange(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure CarregaSec;
    procedure DBEidClienteExit(Sender: TObject);
    procedure DBEidFornecedorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadContratoPrevisao: TFrmCadContratoPrevisao;

implementation

{$R *.dfm}

uses uFrmPesContratoCompra, uFrmPesContratoVenda, uFrmPrincipal,
  uFrmPesContratoProjecao, uFuncao, uDmFind;

procedure TFrmCadContratoPrevisao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesContratoPrevisao, FrmPesContratoPrevisao);
  FrmPesContratoPrevisao.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesContratoPrevisao.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesContratoPrevisao.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesContratoPrevisao.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesContratoPrevisao.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesContratoPrevisao.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesContratoPrevisao.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesContratoPrevisao.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idContratoProjecao').Value := FrmPesContratoPrevisao.cdsGrid.FieldByName('idContratoProjecao').Value;
      DBEidContratoProjecao.SetFocus;
      DBEidContratoProjecaoExit(DBEidContratoProjecao);
    end;
  end;
end;

procedure TFrmCadContratoPrevisao.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadContratoPrevisao.BtnAdicionarVendaClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsVenda, BtnAdicionarVenda, BtnCancelarVenda, BtnRetirarVenda, BtnNovoVenda, (Sender as TCBitBtn), '');
  if ((sender as tcbitbtn).Name = 'BtnAdicionarVenda') then
  begin
    if cdsVenda.State in [dsEdit, dsInsert] then
      cdsVenda.Post;

    cdsVenda.ApplyUpdates(0);
  end;

  if ((sender as tcbitbtn).Name = 'BtnRetirarVenda') then
  begin
    cdsVenda.ApplyUpdates(0);
  end;

  if ((sender as tcbitbtn).Name = 'BtnNovoVenda') then
    DBEidContratoVenda.SetFocus;
end;

procedure TFrmCadContratoPrevisao.CarregaSec;
begin
  //Carrega Secundarias, não sei por que mas esta dando erro na hora de salvar então quero resolver fiz uma adaptação
  cdsVenda.Active := False;
  cdsVenda.CommandText := 'SELECT * FROM ContratoProjecaoVenda WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
                          ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
                          ' AND idContratoProjecao = ' + cdsPadraoidContratoProjecao.AsString;
  cdsVenda.Active := True;

  cdsCompra.Active := False;
  cdsCompra.CommandText := 'SELECT * FROM ContratoProjecaoCompra WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
                          ' AND idCadEmpresa = ' + cdsPadraoidCadEmpresa.AsString +
                          ' AND idContratoProjecao = ' + cdsPadraoidContratoProjecao.AsString;
  cdsCompra.Active := True;
end;

procedure TFrmCadContratoPrevisao.BtnAdicionarProdClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsCompra, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), '');
  if ((sender as tcbitbtn).Name = 'BtnAdicionarProd') then
  begin
    if cdsCompra.State in [dsEdit, dsInsert] then
      cdsCompra.Post;

    cdsCompra.ApplyUpdates(0);
  end;
  if ((sender as tcbitbtn).Name = 'BtnRetirarProd') then
  begin
    cdsCompra.ApplyUpdates(0);
  end;
  if ((sender as tcbitbtn).Name = 'BtnNovoProd') then
    DBEidContratoCompra.SetFocus;
end;

procedure TFrmCadContratoPrevisao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('dtContratoProjecao').AsDateTime := Now;
  end;
end;

procedure TFrmCadContratoPrevisao.DBEidClienteExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (Trim(DBEidCliente.Text) <> '')  AND (Trim(DBEidContratoVenda.Text) <> '')then
  begin
    sql := 'SELECT * FROM ContratoVenda WHERE idEmpresa = ' + DBEidEmpresa.Text +
             ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
             ' AND idContratoVenda = ' + QuotedStr(DBEidContratoVenda.Text) +
             ' AND idCliente = ' + DBEidCliente.Text;


    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (cdsVenda.State in [dsEdit, dsInsert]) then
        cdsVenda.Append;
      cdsVenda.FieldByName('idEmpresa').Value := FieldByName('idEmpresa').Value;
      cdsVenda.FieldByName('idCadEmpresa').Value := FieldByName('idCadEmpresa').Value;
      cdsVenda.FieldByName('idCliente').Value := FieldByName('idCliente').Value;
      cdsVenda.FieldByName('idContratoVenda').Value := FieldByName('idContratoVenda').Value;
      cdsVenda.FieldByName('dtEmissao').Value := FieldByName('dtEmissao').Value;
      cdsVenda.FieldByName('dtEncerramento').Value := FieldByName('dtEncerramento').Value;
      cdsVenda.FieldByName('idSafra').Value := FieldByName('idSafra').Value;
      cdsVenda.FieldByName('idProduto').Value := FieldByName('idProduto').Value;
      cdsVenda.FieldByName('qtProduto').Value := FieldByName('qtProduto').Value;
      cdsVenda.FieldByName('vlProduto').Value := FieldByName('vlProduto').Value;
      cdsVenda.FieldByName('vlTotalProduto').Value := FieldByName('vlTotalProduto').Value;
      cdsVenda.FieldByName('vlImposto').Value := FieldByName('vlImposto').Value;
      cdsVenda.FieldByName('vlFrete').Value := FieldByName('vlFrete').Value;
      cdsVenda.FieldByName('vlContratoVenda').Value := FieldByName('vlContratoVenda').Value;
      cdsVenda.FieldByName('obsContratoVenda').Value := FieldByName('obsContratoVenda').Value;
      cdsVenda.FieldByName('stContratoVenda').Value := FieldByName('stContratoVenda').Value;
      cdsVenda.FieldByName('nrOriginal').Value := FieldByName('nrOriginal').Value;
      cdsVenda.FieldByName('idProdutor').Value := FieldByName('idProdutor').Value;
      cdsVenda.FieldByName('idRepresentante').Value := FieldByName('idRepresentante').Value;
      cdsVenda.FieldByName('vlComissao').Value := FieldByName('vlComissao').Value;
      cdsVenda.FieldByName('vlContribSocial').Value := FieldByName('vlContribSocial').Value;
      cdsVenda.FieldByName('vlOutrosImp').Value := FieldByName('vlOutrosImp').Value;
      cdsVenda.FieldByName('vlIcmsFrete').Value := FieldByName('vlIcmsFrete').Value;
      cdsVenda.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsVenda.FieldByName('idIndice').Value := FieldByName('idIndice').Value;
      cdsVenda.FieldByName('qtSacas').Value := FieldByName('qtSacas').Value;
      cdsVenda.FieldByName('qtArrobas').Value := FieldByName('qtArrobas').Value;
      cdsVenda.FieldByName('tpCobranca').Value := FieldByName('tpCobranca').Value;
      cdsVenda.FieldByName('tpFinanceiro').Value := FieldByName('tpFinanceiro').Value;
      cdsVenda.FieldByName('vlSaca').Value := FieldByName('vlSaca').Value;
      cdsVenda.FieldByName('vlIcmsSaca').Value := FieldByName('vlIcmsSaca').Value;
      cdsVenda.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsVenda.FieldByName('prIcmsSaca').Value := FieldByName('prIcmsSaca').Value;
      BtnAdicionarVenda.SetFocus;
    end;
  end;
end;

procedure TFrmCadContratoPrevisao.DBEidContratoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sql : String;
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoCompra, FrmPesContratoCompra);
    FrmPesContratoCompra.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoCompra.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoCompra.idFornecedor := cdsCompra.FieldByName('idFornecedor').AsInteger;
    FrmPesContratoCompra.Previsao := True;
      FrmPesContratoCompra.ShowModal;
    with cdsCompra do
    begin
      if not (FrmPesContratoCompra.cdsGrid.IsEmpty) then
      begin
//        if not (State in [dsEdit, dsInsert]) then
//          Edit;
        if (DBEidEmpresa.Text <> FrmPesContratoCompra.cdsGrid.FieldByName('idEmpresa').AsString) or
           (DBEidCadEmpresa.Text <> FrmPesContratoCompra.cdsGrid.FieldByName('idCadEmpresa').AsString) then
        begin
          if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
            Edit;
          cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idEmpresa').Value;
          cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadEmpresa').Value;
        end;

          sql := 'SELECT * FROM ContratoCompra WHERE idEmpresa = ' + FrmPesContratoCompra.cdsGrid.FieldByName('idEmpresa').AsString +
           ' AND idCadEmpresa = ' + FrmPesContratoCompra.cdsGrid.FieldByName('idCadEmpresa').AsString +
           ' AND idContratoCompra = ' + QuotedStr(FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').AsString) +
           ' AND idFornecedor = ' + FrmPesContratoCompra.cdsGrid.FieldByName('idFornecedor').AsString +
           ' AND idCadFornecedor = ' + FrmPesContratoCompra.cdsGrid.FieldByName('idCadFornecedor').AsString;
      end;
    end;

    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (cdsCompra.State in [dsEdit, dsInsert]) then
        cdsCompra.Append;
      cdsCompra.FieldByName('idCadEmpresa').Value := FieldByName('idCadEmpresa').Value;
      cdsCompra.FieldByName('idFornecedor').Value := FieldByName('idFornecedor').Value;
      cdsCompra.FieldByName('idCadFornecedor').Value := FieldByName('idCadFornecedor').Value;
      cdsCompra.FieldByName('idContratoCompra').Value := FieldByName('idContratoCompra').Value;
      cdsCompra.FieldByName('dtEmissao').Value := FieldByName('dtEmissao').Value;
      cdsCompra.FieldByName('idSafra').Value := FieldByName('idSafra').Value;
      cdsCompra.FieldByName('idProduto').Value := FieldByName('idProduto').Value;
      cdsCompra.FieldByName('idConta').Value := FieldByName('idConta').Value;
      cdsCompra.FieldByName('idTrangenia').Value := FieldByName('idTrangenia').Value;
      cdsCompra.FieldByName('qtProduto').Value := FieldByName('qtProduto').Value;
      cdsCompra.FieldByName('vlProduto').Value := FieldByName('vlProduto').Value;
      cdsCompra.FieldByName('vlTotalProduto').Value := FieldByName('vlTotalProduto').Value;
      cdsCompra.FieldByName('vlImposto').Value := FieldByName('vlImposto').Value;
      cdsCompra.FieldByName('vlFrete').Value := FieldByName('vlFrete').Value;
      cdsCompra.FieldByName('vlContratoCompra').Value := FieldByName('vlContratoCompra').Value;
      cdsCompra.FieldByName('obsContratoCompra').Value := FieldByName('obsContratoCompra').Value;
      cdsCompra.FieldByName('stContratoCompra').Value := FieldByName('stContratoCompra').Value;
      cdsCompra.FieldByName('nrOriginal').Value := FieldByName('nrOriginal').Value;
      cdsCompra.FieldByName('idComissionado').Value := FieldByName('idComissionado').Value;
      cdsCompra.FieldByName('vlComissao').Value := FieldByName('vlComissao').Value;
      cdsCompra.FieldByName('vlContribSocial').Value := FieldByName('vlContribSocial').Value;
      cdsCompra.FieldByName('vlOutrosImp').Value := FieldByName('vlOutrosImp').Value;
      cdsCompra.FieldByName('vlIcmsFrete').Value := FieldByName('vlIcmsFrete').Value;
      cdsCompra.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsCompra.FieldByName('idIndice').Value := FieldByName('idIndice').Value;
      cdsCompra.FieldByName('qtSacas').Value := FieldByName('qtSacas').Value;
      cdsCompra.FieldByName('qtArrobas').Value := FieldByName('qtArrobas').Value;
      cdsCompra.FieldByName('tpCobranca').Value := FieldByName('tpCobranca').Value;
      cdsCompra.FieldByName('tpFinanceiro').Value := FieldByName('tpFinanceiro').Value;
      cdsCompra.FieldByName('vlSaca').Value := FieldByName('vlSaca').Value;
      cdsCompra.FieldByName('vlIcmsSaca').Value := FieldByName('vlIcmsSaca').Value;
      cdsCompra.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsCompra.FieldByName('prIcmsSaca').Value := FieldByName('prIcmsSaca').Value;
      BtnAdicionarProd.SetFocus;
    end;
  end;
end;

procedure TFrmCadContratoPrevisao.DBEidContratoProjecaoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
 { if Trim(DBEidContratoProjecao.Text) <> '' then
    CarregaSec;}
end;

procedure TFrmCadContratoPrevisao.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sql : string;
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsVenda.FieldByName('idCliente').AsInteger;
    FrmPesContratoVenda.Previsao := True;
    FrmPesContratoVenda.ShowModal;
    with cdsVenda do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        sql := 'SELECT * FROM ContratoVenda WHERE idEmpresa = ' + FrmPesContratoVenda.cdsGrid.FieldByName('idEmpresa').AsString +
               ' AND idCadEmpresa = ' + FrmPesContratoVenda.cdsGrid.FieldByName('idCadEmpresa').AsString +
               ' AND idContratoVenda = ' + QuotedStr(FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').AsString) +
               ' AND idCliente = ' + FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').AsString;
      end;
    end;
    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (cdsVenda.State in [dsEdit, dsInsert]) then
        cdsVenda.Append;
      cdsVenda.FieldByName('idEmpresa').Value := FieldByName('idEmpresa').Value;
      cdsVenda.FieldByName('idCadEmpresa').Value := FieldByName('idCadEmpresa').Value;
      cdsVenda.FieldByName('idCliente').Value := FieldByName('idCliente').Value;
      cdsVenda.FieldByName('idContratoVenda').Value := FieldByName('idContratoVenda').Value;
      cdsVenda.FieldByName('dtEmissao').Value := FieldByName('dtEmissao').Value;
      cdsVenda.FieldByName('dtEncerramento').Value := FieldByName('dtEncerramento').Value;
      cdsVenda.FieldByName('idSafra').Value := FieldByName('idSafra').Value;
      cdsVenda.FieldByName('idProduto').Value := FieldByName('idProduto').Value;
      cdsVenda.FieldByName('qtProduto').Value := FieldByName('qtProduto').Value;
      cdsVenda.FieldByName('vlProduto').Value := FieldByName('vlProduto').Value;
      cdsVenda.FieldByName('vlTotalProduto').Value := FieldByName('vlTotalProduto').Value;
      cdsVenda.FieldByName('vlImposto').Value := FieldByName('vlImposto').Value;
      cdsVenda.FieldByName('vlFrete').Value := FieldByName('vlFrete').Value;
      cdsVenda.FieldByName('vlContratoVenda').Value := FieldByName('vlContratoVenda').Value;
      cdsVenda.FieldByName('obsContratoVenda').Value := FieldByName('obsContratoVenda').Value;
      cdsVenda.FieldByName('stContratoVenda').Value := FieldByName('stContratoVenda').Value;
      cdsVenda.FieldByName('nrOriginal').Value := FieldByName('nrOriginal').Value;
      cdsVenda.FieldByName('idProdutor').Value := FieldByName('idProdutor').Value;
      cdsVenda.FieldByName('idRepresentante').Value := FieldByName('idRepresentante').Value;
      cdsVenda.FieldByName('vlComissao').Value := FieldByName('vlComissao').Value;
      cdsVenda.FieldByName('vlContribSocial').Value := FieldByName('vlContribSocial').Value;
      cdsVenda.FieldByName('vlOutrosImp').Value := FieldByName('vlOutrosImp').Value;
      cdsVenda.FieldByName('vlIcmsFrete').Value := FieldByName('vlIcmsFrete').Value;
      cdsVenda.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsVenda.FieldByName('idIndice').Value := FieldByName('idIndice').Value;
      cdsVenda.FieldByName('qtSacas').Value := FieldByName('qtSacas').Value;
      cdsVenda.FieldByName('qtArrobas').Value := FieldByName('qtArrobas').Value;
      cdsVenda.FieldByName('tpCobranca').Value := FieldByName('tpCobranca').Value;
      cdsVenda.FieldByName('tpFinanceiro').Value := FieldByName('tpFinanceiro').Value;
      cdsVenda.FieldByName('vlSaca').Value := FieldByName('vlSaca').Value;
      cdsVenda.FieldByName('vlIcmsSaca').Value := FieldByName('vlIcmsSaca').Value;
      cdsVenda.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsVenda.FieldByName('prIcmsSaca').Value := FieldByName('prIcmsSaca').Value;
      BtnAdicionarVenda.SetFocus;
    end;
  end;
end;

procedure TFrmCadContratoPrevisao.DBEidFornecedorExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (Trim(DBEidContratoCompra.Text) <> '')
    AND (Trim(DBEidFornecedor.Text) <> '')
    AND (Trim(DBEidCadFornecedor.Text) <> '') then
  begin
    sql := 'SELECT * FROM ContratoCompra WHERE idEmpresa = ' + DBEidEmpresa.Text +
           ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
           ' AND idContratoCompra = ' + QuotedStr(DBEidContratoCompra.Text) +
           ' AND idFornecedor = ' + DBEidFornecedor.Text +
           ' AND idCadFornecedor = ' + DBEidCadFornecedor.Text;
    with FrmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if not (cdsCompra.State in [dsEdit, dsInsert]) then
        cdsCompra.Append;
      cdsCompra.FieldByName('idCadEmpresa').Value := FieldByName('idCadEmpresa').Value;
      cdsCompra.FieldByName('idFornecedor').Value := FieldByName('idFornecedor').Value;
      cdsCompra.FieldByName('idCadFornecedor').Value := FieldByName('idCadFornecedor').Value;
      cdsCompra.FieldByName('idContratoCompra').Value := FieldByName('idContratoCompra').Value;
      cdsCompra.FieldByName('dtEmissao').Value := FieldByName('dtEmissao').Value;
      cdsCompra.FieldByName('idSafra').Value := FieldByName('idSafra').Value;
      cdsCompra.FieldByName('idProduto').Value := FieldByName('idProduto').Value;
      cdsCompra.FieldByName('idConta').Value := FieldByName('idConta').Value;
      cdsCompra.FieldByName('idTrangenia').Value := FieldByName('idTrangenia').Value;
      cdsCompra.FieldByName('qtProduto').Value := FieldByName('qtProduto').Value;
      cdsCompra.FieldByName('vlProduto').Value := FieldByName('vlProduto').Value;
      cdsCompra.FieldByName('vlTotalProduto').Value := FieldByName('vlTotalProduto').Value;
      cdsCompra.FieldByName('vlImposto').Value := FieldByName('vlImposto').Value;
      cdsCompra.FieldByName('vlFrete').Value := FieldByName('vlFrete').Value;
      cdsCompra.FieldByName('vlContratoCompra').Value := FieldByName('vlContratoCompra').Value;
      cdsCompra.FieldByName('obsContratoCompra').Value := FieldByName('obsContratoCompra').Value;
      cdsCompra.FieldByName('stContratoCompra').Value := FieldByName('stContratoCompra').Value;
      cdsCompra.FieldByName('nrOriginal').Value := FieldByName('nrOriginal').Value;
      cdsCompra.FieldByName('idComissionado').Value := FieldByName('idComissionado').Value;
      cdsCompra.FieldByName('vlComissao').Value := FieldByName('vlComissao').Value;
      cdsCompra.FieldByName('vlContribSocial').Value := FieldByName('vlContribSocial').Value;
      cdsCompra.FieldByName('vlOutrosImp').Value := FieldByName('vlOutrosImp').Value;
      cdsCompra.FieldByName('vlIcmsFrete').Value := FieldByName('vlIcmsFrete').Value;
      cdsCompra.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsCompra.FieldByName('idIndice').Value := FieldByName('idIndice').Value;
      cdsCompra.FieldByName('qtSacas').Value := FieldByName('qtSacas').Value;
      cdsCompra.FieldByName('qtArrobas').Value := FieldByName('qtArrobas').Value;
      cdsCompra.FieldByName('tpCobranca').Value := FieldByName('tpCobranca').Value;
      cdsCompra.FieldByName('tpFinanceiro').Value := FieldByName('tpFinanceiro').Value;
      cdsCompra.FieldByName('vlSaca').Value := FieldByName('vlSaca').Value;
      cdsCompra.FieldByName('vlIcmsSaca').Value := FieldByName('vlIcmsSaca').Value;
      cdsCompra.FieldByName('vlIcms').Value := FieldByName('vlIcms').Value;
      cdsCompra.FieldByName('prIcmsSaca').Value := FieldByName('prIcmsSaca').Value;
      BtnAdicionarProd.SetFocus;
    end;
  end;
end;

procedure TFrmCadContratoPrevisao.dsCompraStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsCompra, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadContratoPrevisao.dsVendaStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsVenda, BtnAdicionarVenda, BtnCancelarVenda, BtnRetirarVenda, btnNovoVenda);
end;

procedure TFrmCadContratoPrevisao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadContratoPrevisao := Nil;
end;

procedure TFrmCadContratoPrevisao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsVenda;
  Tabelas[2] := cdsCompra;


  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidContratoProjecao;
//  chave[3] := DBEidContratoVenda;
  foco := DBEidContratoProjecao;
  tab_chave := 'ContratoProjecao';

  situacao := 'stContratoProjecao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';

end;

procedure TFrmCadContratoPrevisao.FormShow(Sender: TObject);
begin
  inherited;
  Height := 323;
  Width := 830;
  funcao.SomenteLeitura([DBEvlContratoVenda, DBEidSafra, DBEvlImposto, DBEvlFrete,
                         DBEidProduto, DBEvlProduto, DBEqtProduto1, DBEvlTotalProduto,
                         DBEvlSaca, DBEprIcmsSaca, DBEvlIcmsSaca, DBEvlIcms, DBEvlContribSocial,
                         DBEvlOutrosImp, DBEvlIcmsFrete, DBEidIndice, DBEdtEncerramento, DBRGtpCalculo,
                         DBEvlContratoCompra, DBEidTrangenia, DBEidEmbarque,
                         DBEidCadEmbarque, DBEidIndice1, DBEvlProduto1, DBEvlSaca1, DBEqtProduto,
                         DBEqtProduto, DBEvlTotalProduto, DBEvlImposto, DBEvlFrete, DBEvlTotalProduto1,
                         DBEprIcmsSaca1, DBEvlIcmsSaca1, DBEvlIcms1, DBEvlContribSocial1, DBEvlImposto1,
                         DBEvlOutrosImp1, DBEvlFrete1, DBEvlIcmsFrete1,
                         DBEidConta, DBEidComissionado, DBEidSafra1, DBEidProduto1],
                         True);
end;

procedure TFrmCadContratoPrevisao.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 315;
    Width := 827;
  end
  else
    if PagAbas.ActivePageIndex = 1 then
    begin
      Height := 585;
      Width := 837;
    end
    else
      if PagAbas.ActivePageIndex = 2 then
      begin
        Height := 606;
        Width := 774;
      end;
end;

end.
