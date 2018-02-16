unit uFrmCadMaquina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  uFrmCadPadrao, CDBCheckBox, Math, System.Actions;

type
  TFrmCadMaquina = class(TFrmCadPadrao)
    sdsMaquina: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidMaquina: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescMaquina: TCDBEdit;
    CLabel2: TCLabel;
    DBEstMaquina: TCDBEdit;
    DBEanoFabricacao: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtAquisicao: TCDBEdit;
    CLabel3: TCLabel;
    DBEanoModelo: TCDBEdit;
    CLabel4: TCLabel;
    DBEvlAquisicao: TCDBEdit;
    CLabel62: TCLabel;
    DBEvlVenda: TCDBEdit;
    CLabel61: TCLabel;
    CLabel9: TCLabel;
    DBEnrPatrimonio: TCDBEdit;
    CLabel59: TCLabel;
    DBEdescModelo: TCDBEdit;
    DBEidTipoMaquina: TCDBEdit;
    LookTipoMaquina: TCLookUp;
    CLabel8: TCLabel;
    LookMaquinaMarca: TCLookUp;
    DBEidMaquinaMarca: TCDBEdit;
    CLabel6: TCLabel;
    DBEnrSerie: TCDBEdit;
    CLabel5: TCLabel;
    CGroupBox2: TCGroupBox;
    CLabel15: TCLabel;
    DBEdescPlaca1: TCDBEdit;
    DBEdescPlaca2: TCDBEdit;
    CLabel7: TCLabel;
    DBEidChassi: TCDBEdit;
    CLabel10: TCLabel;
    DBEidRenavam: TCDBEdit;
    CLabel13: TCLabel;
    DBEidCertificado: TCDBEdit;
    CLabel16: TCLabel;
    CGroupBox3: TCGroupBox;
    DBRGtpMaquina: TCDBRadioGroup;
    DBEkilometragem: TCDBEdit;
    CLabel11: TCLabel;
    DBEhora: TCDBEdit;
    CLabel12: TCLabel;
    CLabel14: TCLabel;
    DBEvlPotencia: TCDBEdit;
    DBCBtpPotencia: TCDBComboBox;
    CGroupBox4: TCGroupBox;
    DBMobsMaquina: TCDBMemo;
    DBCKveiculo: TCDBCheckBox;
    TabFixos: TTabSheet;
    CGroupBox5: TCGroupBox;
    cdsCustoFixo: TClientDataSet;
    dsCustoFixo: TDataSource;
    dspCustoFixo: TDataSetProvider;
    sdsCustoFixo: TSQLDataSet;
    CLabel18: TCLabel;
    DBEqtAnosVida: TCDBEdit;
    CLabel17: TCLabel;
    DBEqtHorasVida: TCDBEdit;
    CLabel19: TCLabel;
    DBEqtKmVida: TCDBEdit;
    CLabel20: TCLabel;
    DBEqtTempoUsoAno: TCDBEdit;
    CLabel22: TCLabel;
    DBEqtConsumoHoraKM: TCDBEdit;
    DBEvlSucata: TCDBEdit;
    CLabel21: TCLabel;
    DBEvlJurosAno: TCDBEdit;
    CLabel23: TCLabel;
    CLabel24: TCLabel;
    DBEvlJurosHoraKM: TCDBEdit;
    DBEvlSeguroHoraKM: TCDBEdit;
    CLabel25: TCLabel;
    DBEvlSeguroAno: TCDBEdit;
    CLabel26: TCLabel;
    DBEvlImpostosHoraKM: TCDBEdit;
    CLabel27: TCLabel;
    DBEvlImpostosAno: TCDBEdit;
    CLabel28: TCLabel;
    DBEvlAlojamentoHoraKM: TCDBEdit;
    CLabel29: TCLabel;
    DBEvlAlojamentoAno: TCDBEdit;
    CLabel30: TCLabel;
    DBEvlOutrasAno: TCDBEdit;
    DBEvlOutrasHoraKM: TCDBEdit;
    CLabel31: TCLabel;
    CLabel32: TCLabel;
    CGroupBox6: TCGroupBox;
    LookTipoDepreciacao: TCLookUp;
    DBEidTipoDepreciacao: TCDBEdit;
    CLabel33: TCLabel;
    DBEprDepreciacaoAno: TCDBEdit;
    CLabel34: TCLabel;
    DBEvlDepreciacaoHoraKM: TCDBEdit;
    CLabel35: TCLabel;
    cdsDepreciacao: TClientDataSet;
    dsDepreciacao: TDataSource;
    dspDepreciacao: TDataSetProvider;
    sdsDepreciacao: TSQLDataSet;
    GridDepreciacao: TCDBGrid;
    BtnCalcDepreciacao: TCBitBtn;
    CLabel36: TCLabel;
    CGroupBox7: TCGroupBox;
    CLabel37: TCLabel;
    CLabel38: TCLabel;
    DBEvlTotalCusto: TCDBEdit;
    DBEvlTotalCustoHoraKM: TCDBEdit;
    cdsCustoFixoidMaquina: TIntegerField;
    cdsCustoFixoidTipoDepreciacao: TSmallintField;
    cdsCustoFixoprDepreciacaoAno: TFMTBCDField;
    cdsCustoFixovlDepreciacaoHoraKM: TFMTBCDField;
    cdsCustoFixovlJurosAno: TFMTBCDField;
    cdsCustoFixovlJurosHoraKM: TFMTBCDField;
    cdsCustoFixovlSeguroAno: TFMTBCDField;
    cdsCustoFixovlSeguroHoraKM: TFMTBCDField;
    cdsCustoFixovlAlojamentoAno: TFMTBCDField;
    cdsCustoFixovlAlojamentoHoraKM: TFMTBCDField;
    cdsCustoFixovlOutrasAno: TFMTBCDField;
    cdsCustoFixovlOutrasHoraKM: TFMTBCDField;
    cdsCustoFixovlImpostosAno: TFMTBCDField;
    cdsCustoFixovlImpostosHoraKM: TFMTBCDField;
    cdsCustoFixovlTotalCusto: TAggregateField;
    cdsCustoFixovlTotalCustoHoraKM: TAggregateField;
    cdsDepreciacaoidMaquina: TIntegerField;
    cdsDepreciacaoano: TSmallintField;
    cdsDepreciacaovlDepreciacao: TFMTBCDField;
    cdsDepreciacaoprDepreciacao: TFMTBCDField;
    cdsDepreciacaovlMaquina: TFMTBCDField;
    cdsCustoFixovlDepreciacaoAno: TFMTBCDField;
    TabVariaveis: TTabSheet;
    CGroupBox8: TCGroupBox;
    CLabel39: TCLabel;
    CLabel42: TCLabel;
    DBEvlOperadorHoraKM: TCDBEdit;
    DBEvlOutrasHoraKMV: TCDBEdit;
    cdsCustoVariavel: TClientDataSet;
    dsCustoVariavel: TDataSource;
    dspCustoVariavel: TDataSetProvider;
    sdsCustoVariavel: TSQLDataSet;
    cdsCustoVariavelvlTotalCustoHoraKM: TAggregateField;
    cdsCustoVariavelidMaquina: TIntegerField;
    cdsCustoVariavelvlOperadorHoraKM: TFMTBCDField;
    cdsCustoVariavelvlOutrasHoraKM: TFMTBCDField;
    dsMaquinaProduto: TDataSource;
    cdsMaquinaProduto: TClientDataSet;
    dspMaquinaProduto: TDataSetProvider;
    sdsMaquinaProduto: TSQLDataSet;
    cdsMaquinaProdutoidMaquina: TIntegerField;
    cdsMaquinaProdutoidProduto: TIntegerField;
    cdsMaquinaProdutoqtProdutoHoraKM: TFMTBCDField;
    cdsMaquinaProdutotpCusto: TStringField;
    cdsMaquinaProdutovlProduto: TFMTBCDField;
    cdsMaquinaProdutovlProdutoHoraKM: TFMTBCDField;
    CGroupBox9: TCGroupBox;
    CLabel40: TCLabel;
    CLabel41: TCLabel;
    CLabel45: TCLabel;
    CLabel46: TCLabel;
    DBEqtProdutoHoraKM: TCDBEdit;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProdMedida: TCLookUp;
    DBEvlProduto: TCDBEdit;
    DBEvlProdutoHoraKM: TCDBEdit;
    CBitBtn8: TCBitBtn;
    DBRGtpCusto: TCDBRadioGroup;
    CGroupBox10: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox11: TCGroupBox;
    CDBGrid1: TCDBGrid;
    cdsMaquinaProdutodescTpValor: TStringField;
    cdsProduto: TClientDataSet;
    cdsMaquinaProdutodescProduto: TStringField;
    CGroupBox12: TCGroupBox;
    CLabel43: TCLabel;
    CLabel44: TCLabel;
    DBEvlTotalCustoHoraKMV: TCDBEdit;
    DBEvlTotalProdutoHoraKM: TCDBEdit;
    cdsMaquinaProdutovlTotalProdutoHoraKM: TAggregateField;
    cdsMaquinaProdutomovimentaEstoque: TStringField;
    DBCKmovimentaEstoque: TCDBCheckBox;
    TabPneu: TTabSheet;
    cdsPneu: TClientDataSet;
    dsPneu: TDataSource;
    dspPneu: TDataSetProvider;
    sdsPneu: TSQLDataSet;
    cdsFiltro: TClientDataSet;
    dsFiltro: TDataSource;
    dspFiltro: TDataSetProvider;
    sdsFiltro: TSQLDataSet;
    cdsOleo: TClientDataSet;
    dsOleo: TDataSource;
    dspOleo: TDataSetProvider;
    sdsOleo: TSQLDataSet;
    cdsPneuidMaquina: TIntegerField;
    cdsPneuidTipoPneu: TSmallintField;
    cdsPneuidProduto: TIntegerField;
    cdsPneuqtPneu: TSmallintField;
    cdsPneuqtTempoUsoHoraKm: TIntegerField;
    cdsFiltroidMaquina: TIntegerField;
    cdsFiltroidTipoFiltro: TSmallintField;
    cdsFiltroidProduto: TIntegerField;
    cdsFiltroqtFiltro: TSmallintField;
    cdsFiltroqtTempoUsoHoraKm: TIntegerField;
    cdsOleoidMaquina: TIntegerField;
    cdsOleoidTipoOleo: TSmallintField;
    cdsOleoidProduto: TIntegerField;
    cdsOleoqtOleo: TFMTBCDField;
    cdsOleoqtTempoUsoHoraKm: TIntegerField;
    CGroupBox15: TCGroupBox;
    BtnAdicionarPneu: TCBitBtn;
    BtnCancelarPneu: TCBitBtn;
    BtnRetirarPneu: TCBitBtn;
    BtnNovoPneu: TCBitBtn;
    CGroupBox13: TCGroupBox;
    CLabel47: TCLabel;
    CLabel48: TCLabel;
    CLabel51: TCLabel;
    CLabel57: TCLabel;
    DBEqtPneu: TCDBEdit;
    CLookUp1: TCLookUp;
    DBEidProdutoPneu: TCDBEdit;
    CLookUp2: TCLookUp;
    CBitBtn1: TCBitBtn;
    DBEidTipoPneu: TCDBEdit;
    CLookUp3: TCLookUp;
    DBEqtTempoUsoHoraKm: TCDBEdit;
    CGroupBox14: TCGroupBox;
    CDBGrid2: TCDBGrid;
    TabOleo: TTabSheet;
    TabFiltro: TTabSheet;
    cdsPneudescProduto: TStringField;
    cdsTipoPneu: TClientDataSet;
    cdsPneudescTipoPneu: TStringField;
    CGroupBox16: TCGroupBox;
    CLabel49: TCLabel;
    CLabel50: TCLabel;
    CLabel52: TCLabel;
    CLabel53: TCLabel;
    DBEqtOleo: TCDBEdit;
    CLookUp4: TCLookUp;
    DBEidProdutoOleo: TCDBEdit;
    CLookUp5: TCLookUp;
    CBitBtn2: TCBitBtn;
    DBEidTipoOleo: TCDBEdit;
    CLookUp6: TCLookUp;
    DBEqtTempoUsoHoraKmO: TCDBEdit;
    CGroupBox17: TCGroupBox;
    BtnAdicionarOleo: TCBitBtn;
    BtnCancelarOleo: TCBitBtn;
    BtnRetirarOleo: TCBitBtn;
    BtnNovoOleo: TCBitBtn;
    CGroupBox18: TCGroupBox;
    CDBGrid3: TCDBGrid;
    cdsOleodescProduto: TStringField;
    cdsTipoOleo: TClientDataSet;
    cdsTipoFiltro: TClientDataSet;
    cdsOleodescTipoOleo: TStringField;
    CGroupBox19: TCGroupBox;
    CLabel54: TCLabel;
    CLabel55: TCLabel;
    CLabel56: TCLabel;
    CLabel63: TCLabel;
    DBEqtFiltro: TCDBEdit;
    CLookUp7: TCLookUp;
    DBEidProdutoF: TCDBEdit;
    CLookUp8: TCLookUp;
    CBitBtn3: TCBitBtn;
    DBEidTipoFiltro: TCDBEdit;
    CLookUp9: TCLookUp;
    DBEqtTempoUsoHoraKmF: TCDBEdit;
    CGroupBox20: TCGroupBox;
    BtnAdicionarFiltro: TCBitBtn;
    BtnCancelarFiltro: TCBitBtn;
    BtnRetirarFiltro: TCBitBtn;
    BtnNovoFiltro: TCBitBtn;
    CGroupBox21: TCGroupBox;
    CDBGrid4: TCDBGrid;
    cdsFiltrodescProduto: TStringField;
    cdsFiltrodescTipoFiltro: TStringField;
    BtnAlteraCod: TCBitBtn;
    cdsVeiculos: TClientDataSet;
    dsVeiculos: TDataSource;
    dspVeiculos: TDataSetProvider;
    sdsVeiculos: TSQLDataSet;
    tabVeiculos: TTabSheet;
    CGroupBox22: TCGroupBox;
    CLabel64: TCLabel;
    DBEcapM3: TCDBEdit;
    DBRGtpPropriedade: TCDBRadioGroup;
    CGroupBox23: TCGroupBox;
    CDBGrid5: TCDBGrid;
    CGroupBox24: TCGroupBox;
    BtnAdicionarVeic: TCBitBtn;
    BtnCancelarVeic: TCBitBtn;
    BtnRetirarVeic: TCBitBtn;
    BtnNovoVeic: TCBitBtn;
    CLabel68: TCLabel;
    DBEcodInterno: TCDBEdit;
    CLabel69: TCLabel;
    DBEplaca: TCDBEdit;
    CLabel70: TCLabel;
    DBERenavam: TCDBEdit;
    CLabel71: TCLabel;
    DBEtara: TCDBEdit;
    CLabel72: TCLabel;
    DBEcapKG: TCDBEdit;
    CLabel73: TCLabel;
    DBEUFLicenciamento: TCDBEdit;
    LookEstado: TCLookUp;
    DBEtpCarroceria: TCDBEdit;
    lookCarroceria: TCLookUp;
    CLabel65: TCLabel;
    DBRGtpVeiculo: TCDBRadioGroup;
    CLookUp22: TCLookUp;
    CLookUp23: TCLookUp;
    DBEidProprietario: TCDBEdit;
    CLabel120: TCLabel;
    CLabel66: TCLabel;
    DBERNTRCProp: TCDBEdit;
    DBEtpProprietario: TCDBEdit;
    LookTipoProprietario: TCLookUp;
    CLabel67: TCLabel;
    cdsVeiculosidMaquina: TIntegerField;
    cdsVeiculoscodInterno: TStringField;
    cdsVeiculosplaca: TStringField;
    cdsVeiculosRenavam: TStringField;
    cdsVeiculostara: TFMTBCDField;
    cdsVeiculoscapKG: TFMTBCDField;
    cdsVeiculoscapM3: TFMTBCDField;
    cdsVeiculostpPropriedade: TStringField;
    cdsVeiculostpVeiculo: TStringField;
    cdsVeiculostpRodado: TFMTBCDField;
    cdsVeiculostpCarroceria: TFMTBCDField;
    cdsVeiculosUFLicenciamento: TStringField;
    cdsVeiculosidProprietario: TIntegerField;
    cdsVeiculosRNTRCProp: TStringField;
    cdsVeiculostpProprietario: TFMTBCDField;
    DBEtpRodado: TCDBEdit;
    LookTipoRodado: TCLookUp;
    CLabel74: TCLabel;
    CLabel75: TCLabel;
    CLabel76: TCLabel;
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure cdsPadraotpMaquinaValidate(Sender: TField);
    procedure CalcCustoFixo;
    procedure DBEvlJurosAnoEnter(Sender: TObject);
    procedure DBEvlJurosAnoExit(Sender: TObject);
    procedure DBEidTipoDepreciacaoExit(Sender: TObject);
    procedure LimpaDepreciacao;
    procedure BtnCalcDepreciacaoClick(Sender: TObject);

    //PROCEDURES DE CÁLCULO DA DEPRECIAÇÃO
    procedure CalculoTipo1;
    procedure cdsCustoFixoAfterEdit(DataSet: TDataSet);
    procedure dspCustoFixoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsMaquinaProdutoCalcFields(DataSet: TDataSet);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure cdsMaquinaProdutoAfterInsert(DataSet: TDataSet);
    procedure dsMaquinaProdutoStateChange(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure DBRGtpCustoEnter(Sender: TObject);
    procedure HabilitaValorProduto;
    procedure DBRGtpCustoExit(Sender: TObject);
    procedure CalcProduto;
    procedure DBEqtProdutoHoraKMExit(Sender: TObject);
    procedure dsPneuStateChange(Sender: TObject);
    procedure cdsPneuAfterInsert(DataSet: TDataSet);
    procedure BtnAdicionarPneuClick(Sender: TObject);
    procedure DBEidTipoPneuExit(Sender: TObject);
    procedure DBEidTipoOleoExit(Sender: TObject);
    procedure BtnAdicionarOleoClick(Sender: TObject);
    procedure dsOleoStateChange(Sender: TObject);
    procedure DBEidTipoFiltroExit(Sender: TObject);
    procedure BtnAdicionarFiltroClick(Sender: TObject);
    procedure dsFiltroStateChange(Sender: TObject);
    procedure BtnAlteraCodClick(Sender: TObject);
    procedure BtnAdicionarVeicClick(Sender: TObject);
    procedure DBEcodInternoExit(Sender: TObject);
    procedure HabilitaProprietario;
    procedure dsVeiculosStateChange(Sender: TObject);
    procedure DBRGtpPropriedadeExit(Sender: TObject);
  private
    { Private declarations }
    vlAnterior : string;
  public
    { Public declarations }
    id : string
  end;

var
  FrmCadMaquina: TFrmCadMaquina;

implementation

uses uDmPadrao, uDmFind, uFuncao, uFrmAlteraCodigo;

{$R *.dfm}

procedure TFrmCadMaquina.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 1 then
    HabilitaProprietario;
end;

//****************************************************************************************//
procedure TFrmCadMaquina.actSalvarExecute(Sender: TObject);
begin
  if cdsMaquinaProduto.State in [dsEdit, dsInsert] then
    cdsMaquinaProduto.Cancel;

  if cdsPneu.State in [dsEdit, dsInsert] then
    cdsPneu.Cancel;

  if cdsOleo.State in [dsEdit, dsInsert] then
    cdsOleo.Cancel;

  if cdsFiltro.State in [dsEdit, dsInsert] then
    cdsFiltro.Cancel;

  if cdsVeiculos.State in [dsEdit, dsInsert] then
    cdsVeiculos.Cancel;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadMaquina.BtnAdicionarFiltroClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsFiltro, BtnAdicionarFiltro, BtnCancelarFiltro, BtnRetirarFiltro, BtnNovoFiltro, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarFiltro' then
    BtnNovoFiltro.Click;

  DBEidTipoFiltro.SetFocus;
end;

procedure TFrmCadMaquina.BtnAdicionarOleoClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsOleo, BtnAdicionarOleo, BtnCancelarOleo, BtnRetirarOleo, BtnNovoOleo, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarOleo' then
    BtnNovoOleo.Click;

  DBEidTipoOleo.SetFocus;
end;

procedure TFrmCadMaquina.BtnAdicionarPneuClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsPneu, BtnAdicionarPneu, BtnCancelarPneu, BtnRetirarPneu, BtnNovoPneu, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarPneu' then
    BtnNovoPneu.Click;

  DBEidTipoPneu.SetFocus;

end;

procedure TFrmCadMaquina.BtnAdicionarProdClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsMaquinaProduto, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), '');
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
    BtnNovoProd.Click;

  DBEidProduto.SetFocus;
end;

procedure TFrmCadMaquina.BtnAdicionarVeicClick(Sender: TObject);
begin
  inherited;
  if (sender as tcbitbtn).Name = 'BtnAdicionarVeic' then
    if trim(DBEcodInterno.Text) = '' then
    begin
      messagedlg('O código interno é obrigatório!', mtwarning, [mbok], 0);
      DBEcodInterno.SetFocus;
      exit;
    end;

  if (sender as tcbitbtn).Name = 'BtnNovoVeic' then
    if cdsVeiculos.RecordCount = 4 then
    begin
      messagedlg('Só é permitido cadastrar 4 veículos!', mtwarning, [mbok], 0);
      exit;
    end;

  funcao.GravaSec(chave, cdsVeiculos, BtnAdicionarVeic, BtnCancelarVeic, BtnRetirarVeic, BtnNovoVeic, (Sender as TCBitBtn), 'codInterno');
  if ((sender as tcbitbtn).Name = 'BtnAdicionarVeic') and (cdsVeiculos.RecordCount < 4) then
    BtnNovoVeic.Click;

  DBEcodInterno.SetFocus;
end;

procedure TFrmCadMaquina.BtnAlteraCodClick(Sender: TObject);
begin
  inherited;
  if Trim(DBEidMaquina.Text) = '' then
  begin
    MessageDlg('Favor informar codigo a ser alterado!', mtInformation, [mbOK], 0);
    Exit;
  end;
  Application.CreateForm(TFrmAlteraCodigo, FrmAlteraCodigo);
  FrmAlteraCodigo.id := cdsPadrao.FieldByName('idMaquina').AsString;
  FrmAlteraCodigo.tpForm := 'MAQ';
  FrmAlteraCodigo.tab := tab_chave;
  FrmAlteraCodigo.key :=  DBEidMaquina.DataField;
  FrmAlteraCodigo.ShowModal;
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('idMaquina').AsString := id;
  DBEidMaquinaExit(DBEidMaquina);
end;

procedure TFrmCadMaquina.BtnCalcDepreciacaoClick(Sender: TObject);
begin
  inherited;
  //Achei mais interessante separar os tipos de cálculo em procedimentos isolados
  case cdsCustoFixo.FieldByName('idTipoDepreciacao').AsInteger of
    1 : CalculoTipo1;
  end;

end;

procedure TFrmCadMaquina.CalcCustoFixo;
//procedure que irá refazer os cálculos dos campos de hora do custo fixo
begin
  //Juros Anuais
  if (cdsCustoFixo.FieldByName('vlJurosAno').AsCurrency > 0) and
     (cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger > 0) then
    cdsCustoFixo.FieldByName('vlJurosHoraKM').AsCurrency := RoundTo(cdsCustoFixo.FieldByName('vlJurosAno').AsCurrency /
                                                            cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger, -2)
  else
    cdsCustoFixo.FieldByName('vlJurosHoraKM').AsCurrency := 0;

  //Seguro Anual
  if (cdsCustoFixo.FieldByName('vlSeguroAno').AsCurrency > 0) and
     (cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger > 0) then
    cdsCustoFixo.FieldByName('vlSeguroHoraKM').AsCurrency := RoundTo(cdsCustoFixo.FieldByName('vlSeguroAno').AsCurrency /
                                                            cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger, -2)
  else
    cdsCustoFixo.FieldByName('vlSeguroHoraKM').AsCurrency := 0;

  //Alojamento Anual
  if (cdsCustoFixo.FieldByName('vlAlojamentoAno').AsCurrency > 0) and
     (cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger > 0) then
    cdsCustoFixo.FieldByName('vlAlojamentoHoraKM').AsCurrency := RoundTo(cdsCustoFixo.FieldByName('vlAlojamentoAno').AsCurrency /
                                                            cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger, -2)
  else
    cdsCustoFixo.FieldByName('vlAlojamentoHoraKM').AsCurrency := 0;

  //Imposto Anual
  if (cdsCustoFixo.FieldByName('vlImpostosAno').AsCurrency > 0) and
     (cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger > 0) then
    cdsCustoFixo.FieldByName('vlImpostosHoraKM').AsCurrency := RoundTo(cdsCustoFixo.FieldByName('vlImpostosAno').AsCurrency /
                                                            cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger, -2)
  else
    cdsCustoFixo.FieldByName('vlImpostosHoraKM').AsCurrency := 0;

  //Outras Despesas Anuais
  if (cdsCustoFixo.FieldByName('vlOutrasAno').AsCurrency > 0) and
     (cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger > 0) then
    cdsCustoFixo.FieldByName('vlOutrasHoraKM').AsCurrency := RoundTo(cdsCustoFixo.FieldByName('vlOutrasAno').AsCurrency /
                                                            cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger, -2)
  else
    cdsCustoFixo.FieldByName('vlOutrasHoraKM').AsCurrency := 0;
end;

procedure TFrmCadMaquina.CalcProduto;
begin
  if (cdsMaquinaProdutoqtProdutoHoraKM.AsFloat > 0) and (cdsMaquinaProdutovlProduto.AsCurrency > 0) then
    cdsMaquinaProdutovlProdutoHoraKM.AsCurrency := RoundTo(cdsMaquinaProdutoqtProdutoHoraKM.AsFloat * cdsMaquinaProdutovlProduto.AsCurrency, -2)
  else
    cdsMaquinaProdutovlProdutoHoraKM.AsCurrency := 0;
end;

procedure TFrmCadMaquina.CalculoTipo1;
//Depreciação por quotas constantes ou por forma retilínea
var
  msg : string;
  i : integer;
  vlDepTotal, vlDepAno, vlMaquinaAcum : currency;
  prDep : double;
begin
  msg := '';

  if not (cdsPadrao.FieldByName('vlAquisicao').AsCurrency > 0) then
    msg := 'Esse cálculo necessita do valor de aquisição!' + #13;

  if not (cdsPadrao.FieldByName('vlSucata').AsCurrency > 0) then
    msg := msg + 'Esse cálculo necessita do valor de Sucata!' + #13;

  if not (cdsPadrao.FieldByName('qtAnosVida').AsInteger > 0) then
    msg := msg + 'Esse cálculo necessita da Vida Útil (Anos)!' + #13;

  if cdsPadrao.FieldByName('vlAquisicao').AsCurrency <= cdsPadrao.FieldByName('vlSucata').AsCurrency then
    msg := msg + 'O valor de aquisição deve ser obrigatoriamente maior que o valor de sucata!';

  if not (cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger > 0) then
    msg := msg + 'Esse cálculo necessita do Uso aproximado por ano (H/Km)!' + #13;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  if not (cdsCustoFixo.State in [dsInsert, dsEdit]) then
    cdsCustoFixo.Edit;
  //Acha o valor da depreciação total
  vlDepTotal := cdsPadrao.FieldByName('vlAquisicao').AsCurrency - cdsPadrao.FieldByName('vlSucata').AsCurrency;
  //Acha o valor da depreciação por ano
  vlDepAno := RoundTo(vlDepTotal/cdsPadrao.FieldByName('qtAnosVida').AsInteger, -2);

  prDep := RoundTo((vlDepAno/cdsPadrao.FieldByName('vlAquisicao').AsCurrency)*100, -2);

  cdsCustoFixo.FieldByName('prDepreciacaoAno').AsFloat := prDep;
  cdsCustoFixo.FieldByName('vlDepreciacaoAno').AsFloat := vlDepAno;

  cdsCustoFixo.FieldByName('vlDepreciacaoHoraKM').AsCurrency := RoundTo(vlDepAno/cdsPadrao.FieldByName('qtTempoUsoAno').AsInteger, -2);

  cdsDepreciacao.IndexFieldNames := 'ano';

  //inicia com o valor de aquisição da máquina
  vlMaquinaAcum := cdsPadrao.FieldByName('vlAquisicao').AsCurrency;

  //Agora faz o laço para incluir a depreciação na grade
  for i := 0 to cdsPadrao.FieldByName('qtAnosVida').AsInteger do
  begin
    cdsDepreciacao.Append;
    cdsDepreciacaoidMaquina.AsInteger := cdsPadrao.FieldByName('idMaquina').AsInteger;
    cdsDepreciacaoano.AsInteger := i;
    if i = 0 then
    begin
      cdsDepreciacaovlDepreciacao.AsCurrency := 0;//Ano 0 - zero : onde não há depreciação
      cdsDepreciacaoprDepreciacao.AsFloat := 0;
      cdsDepreciacaovlMaquina.AsCurrency := vlMaquinaAcum;
    end
    else
    begin
      vlMaquinaAcum := vlMaquinaAcum - vlDepAno;
      cdsDepreciacaovlDepreciacao.AsCurrency := vlDepAno;
      cdsDepreciacaoprDepreciacao.AsFloat := prDep;
      cdsDepreciacaovlMaquina.AsCurrency := vlMaquinaAcum;
    end;
    cdsDepreciacao.Post;
  end; //fim do for i := 0 to cdsPadrao.FieldByName('qtAnosVida').AsInteger do


end;

procedure TFrmCadMaquina.cdsCustoFixoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadMaquina.cdsMaquinaProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  if cdsMaquinaProduto.State = dsInsert then
  begin
    cdsMaquinaProdutotpCusto.AsString := 'F';
    cdsMaquinaProdutomovimentaEstoque.AsString := 'S';
  end;
end;

procedure TFrmCadMaquina.cdsMaquinaProdutoCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsMaquinaProdutotpCusto.AsString = 'F' then
    cdsMaquinaProdutodescTpValor.AsString := 'Valor Fixado'
  else
    if cdsMaquinaProdutotpCusto.AsString = 'M' then
      cdsMaquinaProdutodescTpValor.AsString := 'Custo Médio'
    else
      if cdsMaquinaProdutotpCusto.AsString = 'U' then
        cdsMaquinaProdutodescTpValor.AsString := 'Último Valor de Compra';
end;

procedure TFrmCadMaquina.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State = dsInsert then
  begin
    cdsPadrao.FieldByName('tpMaquina').AsString := 'H'; //Inicializa com Hora
    cdsPadrao.FieldByName('tpPotencia').AsString := 'CV'; //Inicializa com Cavalos
    cdsPadrao.FieldByName('veiculo').AsString := 'N'; //Inicializa como não sendo Veículo
  end; //fim do if Dataset = dsInsert then
end;

procedure TFrmCadMaquina.cdsPadraotpMaquinaValidate(Sender: TField);
begin
  inherited;
  if trim(cdsPadrao.FieldByName('tpMaquina').AsString) <> '' then
  begin
    funcao.SomenteLeitura([DBEhora], cdsPadrao.FieldByName('tpMaquina').AsString = 'K');
    funcao.SomenteLeitura([DBEkilometragem], cdsPadrao.FieldByName('tpMaquina').AsString = 'H');
  end;
end;

procedure TFrmCadMaquina.cdsPneuAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  if DataSet.Name = 'cdsVeiculos' then
    if DataSet.State = dsInsert then
    begin
      cdsVeiculostpPropriedade.AsString := 'P';
      cdsVeiculostpVeiculo.AsString := '0';
    end;

end;

procedure TFrmCadMaquina.DBEcodInternoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsVeiculos, [DBEcodInterno]);
  HabilitaProprietario;
end;

procedure TFrmCadMaquina.DBEidMaquinaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
  AbreTabSecundaria;
end;

procedure TFrmCadMaquina.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsMaquinaProduto, [DBEidProduto]);
  HabilitaValorProduto;
end;

procedure TFrmCadMaquina.DBEidTipoDepreciacaoExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidTipoDepreciacao.Text) = vlAnterior) then
    exit;

  //Habilita ou desabilita o % de depreciação conforme a opção escolhida
  funcao.SomenteLeitura([DBEprDepreciacaoAno], (trim(DBEidTipoDepreciacao.Text) = '1') );

  if cdsDepreciacao.RecordCount > 0 then
    LimpaDepreciacao;
end;

procedure TFrmCadMaquina.DBEidTipoFiltroExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsFiltro, [DBEidTipoFiltro]);
end;

procedure TFrmCadMaquina.DBEidTipoOleoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsOleo, [DBEidTipoOleo]);
end;

procedure TFrmCadMaquina.DBEidTipoPneuExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsPneu, [DBEidTipoPneu]);
end;

procedure TFrmCadMaquina.DBEqtProdutoHoraKMExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then //se fez modificações faz o cálculo do produto por hora
    CalcProduto;
end;

procedure TFrmCadMaquina.DBEvlJurosAnoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := trim((Sender as TCDBEdit).Text);
end;

procedure TFrmCadMaquina.DBEvlJurosAnoExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> trim((Sender as TCDBEdit).Text) then //se fez modificações faz o cálculo do custo por hora
    CalcCustoFixo;

end;

procedure TFrmCadMaquina.DBRGtpCustoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsMaquinaProdutotpCusto.AsString;
end;

procedure TFrmCadMaquina.DBRGtpCustoExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> cdsMaquinaProdutotpCusto.AsString) then
    HabilitaValorProduto;

end;

procedure TFrmCadMaquina.DBRGtpPropriedadeExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> cdsVeiculostpPropriedade.AsString) then
    HabilitaProprietario;
end;

procedure TFrmCadMaquina.dsFiltroStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsFiltro, BtnAdicionarFiltro, BtnCancelarFiltro, BtnRetirarFiltro, btnNovoFiltro);
end;

procedure TFrmCadMaquina.dsMaquinaProdutoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsMaquinaProduto, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadMaquina.dsOleoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsOleo, BtnAdicionarOleo, BtnCancelarOleo, BtnRetirarOleo, btnNovoOleo);
end;

procedure TFrmCadMaquina.dspCustoFixoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspVeiculos' then
    begin
      GeraAutoInc(DeltaDS, 'MaquinaVeiculo', 'codInterno', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspVeiculos' then
  end; //if (UpdateKind = ukInsert) then

end;

procedure TFrmCadMaquina.dsPneuStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsPneu, BtnAdicionarPneu, BtnCancelarPneu, BtnRetirarPneu, btnNovoPneu);
end;

procedure TFrmCadMaquina.dsVeiculosStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsVeiculos, BtnAdicionarVeic, BtnCancelarVeic, BtnRetirarVeic, btnNovoVeic);
end;

procedure TFrmCadMaquina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadMaquina := nil;
end;

procedure TFrmCadMaquina.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 9);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCustoFixo;
  Tabelas[2] := cdsDepreciacao;
  Tabelas[3] := cdsCustoVariavel;
  Tabelas[4] := cdsMaquinaProduto;
  Tabelas[5] := cdsPneu;
  Tabelas[6] := cdsFiltro;
  Tabelas[7] := cdsOleo;
  Tabelas[8] := cdsVeiculos;
  chave[0] := DBEidMaquina;
  foco := DBEidMaquina;
  tab_chave := 'Maquina';
  situacao := 'stMaquina';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := dmFind.FindMaquina;
  Height := 515;
  Width := 740;
end;

procedure TFrmCadMaquina.HabilitaProprietario;
begin
  funcao.SomenteLeitura([DBEidProprietario, DBERNTRCProp, DBEtpProprietario], cdsVeiculostpPropriedade.AsString <> 'T');
end;

procedure TFrmCadMaquina.HabilitaValorProduto;
begin
  funcao.SomenteLeitura([DBEvlProduto], (cdsMaquinaProdutotpCusto.AsString <> 'F'));

  if (cdsMaquinaProdutotpCusto.AsString <> 'F') then
    if cdsMaquinaProduto.State in [dsInsert, dsEdit] then
    begin
      cdsMaquinaProdutovlProduto.AsCurrency := 0;
      cdsMaquinaProdutovlProdutoHoraKM.AsCurrency := 0;
    end;


end;

procedure TFrmCadMaquina.LimpaDepreciacao;
begin
  with cdsDepreciacao do
  begin
    First;
    while not Eof do
    begin
      Delete;
      First;
    end;
  end;
end;

end.
