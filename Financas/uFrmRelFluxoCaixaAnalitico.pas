unit uFrmRelFluxoCaixaAnalitico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, CDBRadioGroup,
  CDBCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, CGroupBox, FMTBcd,
  SqlExpr, EditAlign, CEdit, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelFluxoCaixaAnalitico = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel29: TCLabel;
    CLabel12: TCLabel;
    CLabel10: TCLabel;
    LblCad: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidIndice: TCDBEdit;
    LookIndice: TCLookUp;
    DBEidSegmento: TcxPopupEdit;
    DBEidGrupo: TcxPopupEdit;
    DBEidFornecedores: TcxPopupEdit;
    CGroupBox2: TCGroupBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKintegraSaldo: TCDBCheckBox;
    CGroupBox3: TCGroupBox;
    DBCKmostraContas: TCDBCheckBox;
    DBCKmostraIndice: TCDBCheckBox;
    DBCKmostraVencidos: TCDBCheckBox;
    DBCKmostraAdiantamento: TCDBCheckBox;
    DBRGagrupar: TCDBRadioGroup;
    panPopupFornecedores: TPanel;
    Shape8: TShape;
    Label29: TLabel;
    Label30: TLabel;
    GridFornecedores: TcxGrid;
    DBTableViewFornecedor: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBCODIGO: TcxGridDBColumn;
    cxGridDBNOME: TcxGridDBColumn;
    cxGridDBNOME_FANTASIA: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtnAplicarFor: TCBitBtn;
    BtnCancelarFor: TCBitBtn;
    BtnLimparFor: TCBitBtn;
    cbCodigo: TcxCheckBox;
    cbNome: TcxCheckBox;
    cbFantasia: TcxCheckBox;
    DBEvlAcumulado: TCDBEdit;
    DBRGtpFluxo: TCDBRadioGroup;
    panGrupos: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label5: TLabel;
    GridGrupo: TcxGrid;
    DBTableViewGrupo: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBCodGrupo: TcxGridDBColumn;
    cxGridDBNomeGrupo: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    BtnAplicarGrupo: TCBitBtn;
    BtnCancelarGrupo: TCBitBtn;
    BtnLimparGrupo: TCBitBtn;
    cbCodGrupo: TcxCheckBox;
    cbDescGrupo: TcxCheckBox;
    dsFornecedores: TDataSource;
    cdsFornecedores: TClientDataSet;
    cdsFornecedoresSELECIONADO: TStringField;
    cdsFornecedoresidFornecedor: TIntegerField;
    cdsFornecedoresdescCadFornecedor: TStringField;
    cdsFornecedoresdescAbreviada: TStringField;
    dspFornecedores: TDataSetProvider;
    qryFornecedores: TSQLQuery;
    sdsGrupoCad: TSQLQuery;
    dspGrupoCad: TDataSetProvider;
    cdsGrupoCad: TClientDataSet;
    cdsGrupoCadSELECIONADO: TStringField;
    cdsGrupoCadidGrupoCad: TSmallintField;
    cdsGrupoCaddescGrupoCad: TStringField;
    cdsGrupoCadstGrupoCad: TStringField;
    dsGrupoCad: TDataSource;
    dsSegmento: TDataSource;
    cdsSegmento: TClientDataSet;
    cdsSegmentoSELECIONADO: TStringField;
    cdsSegmentoidSegmento: TSmallintField;
    cdsSegmentodescSegmento: TStringField;
    cdsSegmentostSegmento: TStringField;
    dspSegmento: TDataSetProvider;
    sdsSegmento: TSQLQuery;
    panSegmento: TPanel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    GridSegmento: TcxGrid;
    DBTableViewSegmento: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBCodSegmento: TcxGridDBColumn;
    cxGridDBDescSegmento: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    BtnAplicarSegmento: TCBitBtn;
    BtnCancelarSegmento: TCBitBtn;
    BtnLimparSegmento: TCBitBtn;
    cbCodSegmento: TcxCheckBox;
    cbNomeSegmento: TcxCheckBox;
    cdsPadraoidIndice: TSmallintField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraoagrupar: TStringField;
    cdsPadraomostraIndice: TStringField;
    cdsPadraomostraContas: TStringField;
    cdsPadraomostraVencidos: TStringField;
    cdsPadraointegraSaldo: TStringField;
    cdsPadraomostraAdiantamento: TStringField;
    cdsPadraotpFluxo: TStringField;
    cdsPadraovlAcumulado: TCurrencyField;
    FrxRel: TfrxReport;
    cdsRelVencer: TClientDataSet;
    cdsRelVenceridDocSerie: TStringField;
    cdsRelVencernrTitulo: TStringField;
    cdsRelVenceridParcela: TSmallintField;
    cdsRelVenceridCadGeral: TIntegerField;
    cdsRelVencerdescAbreviada: TStringField;
    cdsRelVencerdtVencimento: TSQLTimeStampField;
    cdsRelVencerIndice: TStringField;
    cdsRelVencerqtIndice: TFMTBCDField;
    cdsRelVencervlDebito: TFMTBCDField;
    cdsRelVencervlCredito: TFMTBCDField;
    cdsRelVencerobsTitulo: TStringField;
    cdsRelVenceridGerencial: TIntegerField;
    cdsRelVencervlSaldoAnterior: TFMTBCDField;
    dspRelVencer: TDataSetProvider;
    cdsRelConta: TClientDataSet;
    cdsRelContaidConta: TIntegerField;
    cdsRelContadescConta: TStringField;
    cdsRelContavlEntrada: TFMTBCDField;
    cdsRelContavlSaida: TFMTBCDField;
    cdsRelContavlSaldoAtual: TFMTBCDField;
    cdsRelContavlSaldoBanco: TFMTBCDField;
    dspRelConta: TDataSetProvider;
    DBCKimpCabecalho: TCDBCheckBox;
    EDtpFluxo: TCEdit;
    EDtpAgrupamento: TCEdit;
    cdsPadraoimpCabecalho: TStringField;
    DBEidEmpresas: TcxPopupEdit;
    CLabel1: TCLabel;
    dsEmpresas: TDataSource;
    cdsEmpresas: TClientDataSet;
    cdsEmpresasSELECIONADO: TStringField;
    cdsEmpresasidEmpresa: TIntegerField;
    cdsEmpresasdescCadEmpresa: TStringField;
    cdsEmpresasdescAbreviada: TStringField;
    cdsEmpresasidCnpjCpf: TStringField;
    dspEmpresas: TDataSetProvider;
    sdsEmpresas: TSQLQuery;
    panEmpresas: TPanel;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    GridEmpresa: TcxGrid;
    DBTableViewEmpresas: TcxGridDBTableView;
    GridEmpresaSELECIONADO: TcxGridDBColumn;
    GridEmpresaidEmpresa: TcxGridDBColumn;
    GridEmpresadescCadEmpresa: TcxGridDBColumn;
    GridEmpresadescAbreviada: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    BtnAplicarEmpresas: TCBitBtn;
    BtnCancelarEmpresas: TCBitBtn;
    BtnLimparEmpresas: TCBitBtn;
    cbCodEmpresa: TcxCheckBox;
    cbdescEmpresa: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
    stDestaque: TcxStyle;
    vlSaldoAnterior : Currency;
    //*********************************************************************************
    // ROTINAS DE CONFIGURAÇÃO DOS GRUPOS E GRIDS - DEPOIS É SÓ COPIAR
   //*********************************************************************************
        //*********   FORNECEDORES   ************//
        Procedure Montar_Selecao_Fornecedores;
        Procedure Limpar_Selecao_Fornecedores;
        procedure PopupFornecedoresEnter(Sender: TObject);
        procedure AplicarForClick(Sender: TObject);
        procedure CancelarForClick(Sender: TObject);
        procedure LimparForClick(Sender: TObject);
        procedure OnDBTableViewFornecedorDblClick(Sender: TObject);
        procedure OnDBEidFornecedoresPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewFornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   GRUPOS EMPRESARIAIS   ************//
        Procedure Montar_Selecao_GrupoCad;
        Procedure Limpar_Selecao_GrupoCad;
        procedure GruposEnter(Sender: TObject);
        procedure AplicarGrupoClick(Sender: TObject);
        procedure CancelarGrupoClick(Sender: TObject);
        procedure LimparGrupoClick(Sender: TObject);
        procedure OnDBTableViewGrupoDblClick(Sender: TObject);
        procedure OnDBEidGruposPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   SEGMENTOS   ************//
        Procedure Montar_Selecao_Segmento;
        Procedure Limpar_Selecao_Segmento;
        procedure SegmentoEnter(Sender: TObject);
        procedure AplicarSegmentoClick(Sender: TObject);
        procedure CancelarSegmentoClick(Sender: TObject);
        procedure LimparSegmentoClick(Sender: TObject);
        procedure OnDBTableViewSegmentoDblClick(Sender: TObject);
        procedure OnDBEidSegmentosPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewSegmentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   EMPRESAS   ************//
        Procedure Montar_Selecao_Empresas;
        Procedure Limpar_Selecao_Empresas;
        procedure EmpresasEnter(Sender: TObject);
        procedure AplicarEmpresasClick(Sender: TObject);
        procedure CancelarEmpresasClick(Sender: TObject);
        procedure LimparEmpresasClick(Sender: TObject);
        procedure OnDBTableViewEmpresasDblClick(Sender: TObject);
        procedure OnDBEidEmpresasPropertiesPopup(Sender: TObject);
        procedure OnDBTableViewEmpresasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        //
        //*********   COMUM A TODOS   ************//
        procedure OnDBTableViewGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
                                               AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  public
    { Public declarations }
  end;

var
  FrmRelFluxoCaixaAnalitico: TFrmRelFluxoCaixaAnalitico;

implementation

uses uFuncao, uDmPadrao, uDmFind, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelFluxoCaixaAnalitico.actGerarExecute(Sender: TObject);
var
  arqRel, caminho_rel : string;
begin
//  inherited;
  if (trim(DBEdtInicial.Text) = '') or (trim(DBEdtFinal.Text) = '') then
  begin
    messagedlg('O Periodo deve ser informado!', mtwarning, [mbok], 0);
    exit;
  end;
  Screen.Cursor := crSQLWait;
  //Ajusta os campos para os parâmetros
  case DBRGtpFluxo.ItemIndex of
    0 : EDtpFluxo.Text := 'CRÉDITOS';
    1 : EDtpFluxo.Text := 'DÉBITOS';
    2 : EDtpFluxo.Text := 'AMBOS';
  end;

  case DBRGagrupar.ItemIndex of
    0 : EDtpAgrupamento.Text := 'FORNECEDOR';
    1 : EDtpAgrupamento.Text := 'GERENCIAL';
    2 : EDtpAgrupamento.Text := 'GRUPO EMPRESARIAL';
  end;

  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsRelConta.Active := false;
  cdsRelConta.CommandText := 'EXEC spRelFluxoBanco ' + DBEidEmpresa.Text + ', ' +
                                                       DBEidCadEmpresa.Text +', ' +
                                                       funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                                       funcao.RetornaValorEField(DBCKintegraSaldo, 3) + ', ' +
                                                       funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                                       funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', ' +
                                                       QuotedStr(DBEidEmpresas.Text);
  cdsRelConta.Active := true;

  //Inicia o valor acumulado que irá tratar dos saldos anteriores nos relatórios
  cdsPadraovlAcumulado.AsCurrency := 0;

  if cdsRelConta.RecordCount > 0 then
    cdsPadraovlAcumulado.AsCurrency := cdsRelContavlSaldoBanco.AsCurrency;

  cdsRelVencer.Active := false;
  cdsRelVencer.CommandText := 'EXEC spRelFluxoAVencer ' + DBEidEmpresa.Text + ', ' +
                                                          DBEidCadEmpresa.Text +', ' +
                                                          funcao.RetornaValorEField(DBEidIndice, 3) + ', ' +
                                                          funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                                          funcao.RetornaValorEField(DBEdtFinal, 3) + ',' +
                                                          QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                          QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                          QuotedStr(cdsPadraoagrupar.AsString) + ', ' +
                                                          QuotedStr(DBEidFornecedores.Text) + ', ' +
                                                          QuotedStr(DBEidGrupo.Text) + ', ' +
                                                          QuotedStr(DBEidSegmento.Text) + ', ' +
                                                          funcao.RetornaValorEField(DBEvlAcumulado, 3) + ', ' +
                                                          funcao.RetornaValorEField(DBRGtpFluxo, 3) + ', ' +
                                                          QuotedStr(DBEidEmpresas.Text)+ ', ' +
                                                          'N';
  cdsRelVencer.Active := true;

  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelFluxoCaixaSintetico ' + DBEidEmpresa.Text + ', ' +
                                                                 DBEidCadEmpresa.Text + ',' +
                                                                 funcao.RetornaValorEField(DBEidIndice, 3) + ', ' +
                                                                 funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                                                 funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                                                                 QuotedStr(cdsPadraoconsolidaemp.AsString) + ', ' +
                                                                 QuotedStr(cdsPadraoconsolidafilial.AsString) + ', ' +
                                                                 QuotedStr(funcao.RetornaValorEField(DBEvlAcumulado, 3)) + ', ' +
                                                                 QuotedStr(cdsPadraoagrupar.AsString) + ', ' +
                                                                 QuotedStr(DBEidFornecedores.Text) + ', ' +
                                                                 QuotedStr(DBEidGrupo.Text) + ', ' +
                                                                 QuotedStr(DBEidSegmento.Text) + ', ' +
                                                                 funcao.RetornaValorEField(DBRGtpFluxo, 3) + ', ' +
                                                                 funcao.RetornaValorEField(DBCKintegraSaldo, 3) + ', ' +
                                                                 QuotedStr(DBEidEmpresas.Text);
  cdsRelatorio.Active := true;
  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + 'RelFluxoCaixaSintetico.fr3';
  frxRel.LoadFromFile(caminho_rel);
 (frxRel.FindComponent('Header1') as TfrxHeader).Visible := cdsPadraoimpCabecalho.AsString = 'S';
  Screen.Cursor := crDefault;
  parametrorel;
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelFluxoCaixaAnalitico.AplicarForClick(Sender: TObject);
begin
  DBEidFornecedores.PopupWindow.Close;
  Montar_Selecao_Fornecedores;
end;

procedure TFrmRelFluxoCaixaAnalitico.AplicarGrupoClick(Sender: TObject);
begin
  DBEidGrupo.PopupWindow.Close;
  Montar_Selecao_GrupoCad;
end;

procedure TFrmRelFluxoCaixaAnalitico.AplicarSegmentoClick(Sender: TObject);
begin
  inherited;
  DBEidSegmento.PopupWindow.Close;
  Montar_Selecao_Segmento;
end;

procedure TFrmRelFluxoCaixaAnalitico.CancelarForClick(Sender: TObject);
begin
  DBEidFornecedores.PopupWindow.Close;
end;

procedure TFrmRelFluxoCaixaAnalitico.CancelarGrupoClick(Sender: TObject);
begin
  DBEidGrupo.PopupWindow.Close;
end;

procedure TFrmRelFluxoCaixaAnalitico.CancelarSegmentoClick(Sender: TObject);
begin
  inherited;
  DBEidSegmento.PopupWindow.Close;
end;

procedure TFrmRelFluxoCaixaAnalitico.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  cdsPadraoagrupar.AsString := 'F';
  cdsPadraomostraIndice.AsString := 'N';
  cdsPadraomostraContas.AsString := 'N';
  cdsPadraomostraVencidos.AsString := 'N';
  cdsPadraomostraAdiantamento.AsString := 'N';
  cdsPadraointegraSaldo.AsString := 'S';
  cdsPadraotpFluxo.AsString := 'A';
  cdsPadraoimpCabecalho.AsString := 'S';

  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';
end;

procedure TFrmRelFluxoCaixaAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelFluxoCaixaAnalitico := nil;
end;

procedure TFrmRelFluxoCaixaAnalitico.FormCreate(Sender: TObject);
begin
  inherited;
    //relatorio := 'RelFluxoBanco.fr3';
  Width := 505;
  Height := 500;
  fiscal := true;

  //***** ASSOCIAÇÃO DE ROTINAS DOS GRUPOS  **** //
     //******  FORNECEDORES ******//
  panPopupFornecedores.OnEnter := PopupFornecedoresEnter;
  BtnAplicarFor.OnClick := AplicarForClick;
  BtnCancelarFor.OnClick := CancelarForClick;
  BtnLimparFor.OnClick := LimparForClick;
  DBTableViewFornecedor.OnDblClick := OnDBTableViewFornecedorDblClick;
  DBEidFornecedores.Properties.OnPopup := OnDBEidFornecedoresPropertiesPopup;
  DBTableViewFornecedor.OnKeyDown := OnDBTableViewFornecedorKeyDown;
  DBTableViewFornecedor.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidFornecedores.Properties.PopupControl := panPopupFornecedores;


       //******  GRUPOS EMPRESARIAIS ******//
  panGrupos.OnEnter := GruposEnter;
  BtnAplicarGrupo.OnClick := AplicarGrupoClick;
  BtnCancelarGrupo.OnClick := CancelarGrupoClick;
  BtnLimparGrupo.OnClick := LimparGrupoClick;
  DBTableViewGrupo.OnDblClick := OnDBTableViewGrupoDblClick;
  DBEidGrupo.Properties.OnPopup := OnDBEidGruposPropertiesPopup;
  DBTableViewGrupo.OnKeyDown := OnDBTableViewGrupoKeyDown;
  DBTableViewGrupo.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidGrupo.Properties.PopupControl := panGrupos;

       //******  SEGMENTOS ******//
  panSegmento.OnEnter := SegmentoEnter;
  BtnAplicarSegmento.OnClick := AplicarSegmentoClick;
  BtnCancelarSegmento.OnClick := CancelarSegmentoClick;
  BtnLimparSegmento.OnClick := LimparSegmentoClick;
  DBTableViewSegmento.OnDblClick := OnDBTableViewSegmentoDblClick;
  DBEidSegmento.Properties.OnPopup := OnDBEidSegmentosPropertiesPopup;
  DBTableViewSegmento.OnKeyDown := OnDBTableViewSegmentoKeyDown;
  DBTableViewSegmento.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidSegmento.Properties.PopupControl := panSegmento;

       //******  EMPRESAS ******//
  panEmpresas.OnEnter := EmpresasEnter;
  BtnAplicarEmpresas.OnClick := AplicarEmpresasClick;
  BtnCancelarEmpresas.OnClick := CancelarEmpresasClick;
  BtnLimparEmpresas.OnClick := LimparEmpresasClick;
  DBTableViewEmpresas.OnDblClick := OnDBTableViewEmpresasDblClick;
  DBEidEmpresas.Properties.OnPopup := OnDBEidEmpresasPropertiesPopup;
  DBTableViewEmpresas.OnKeyDown := OnDBTableViewEmpresasKeyDown;
  DBTableViewEmpresas.Styles.OnGetContentStyle := OnDBTableViewGetContentStyle;
  DBEidEmpresas.Properties.PopupControl := panEmpresas;

 //configuração dos parâmetros
  SetLength(parametro, 15);
  parametro[0] := DBEidFornecedores;
  parametro[1] := DBEidGrupo;
  parametro[2] := DBEidSegmento;
  parametro[3] := DBEdtInicial;
  parametro[4] := DBEdtFinal;
  parametro[5] := LookIndice;
  parametro[6] := EDtpFluxo;
  parametro[7] := EDtpAgrupamento;
  parametro[8] := DBCKmostraIndice;
  parametro[9] := DBCKmostraContas;
  parametro[10] := DBCKmostraVencidos;
  parametro[11] := DBCKmostraAdiantamento;
  parametro[12] := DBCKintegraSaldo;
  parametro[13] := DBCKconsolidaemp;
  parametro[14] := DBCKconsolidafilial;
end;

procedure TFrmRelFluxoCaixaAnalitico.GruposEnter(Sender: TObject);
begin
  inherited;
  If Not(dsGrupoCad.DataSet.Active) Then
     dsGrupoCad.DataSet.Open;
end;

procedure TFrmRelFluxoCaixaAnalitico.LimparForClick(Sender: TObject);
begin
  DBEidFornecedores.PopupWindow.Close;
  Limpar_Selecao_Fornecedores;
end;

procedure TFrmRelFluxoCaixaAnalitico.LimparGrupoClick(Sender: TObject);
begin
  DBEidGrupo.PopupWindow.Close;
  Limpar_Selecao_GrupoCad;
end;

procedure TFrmRelFluxoCaixaAnalitico.LimparSegmentoClick(Sender: TObject);
begin
  inherited;
  DBEidSegmento.PopupWindow.Close;
  Limpar_Selecao_Segmento;
end;

procedure TFrmRelFluxoCaixaAnalitico.Limpar_Selecao_Fornecedores;
Var bReg: Pointer;
begin
  with dsFornecedores do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidFornecedores.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;

procedure TFrmRelFluxoCaixaAnalitico.Limpar_Selecao_GrupoCad;
Var
  bReg: Pointer;
begin
  with dsGrupoCad do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidGrupo.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;

procedure TFrmRelFluxoCaixaAnalitico.Limpar_Selecao_Segmento;
Var
  bReg: Pointer;
begin
  with dsSegmento do
  begin
    bReg := DataSet.GetBookmark();

    DataSet.DisableControls;
    DataSet.First;

    While Not(DataSet.Eof) Do
    Begin
      If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
      Begin
        DataSet.Edit;
        DataSet.FieldByName('SELECIONADO').AsString := 'N';
        DataSet.Post;
      End;
      DataSet.Next;
    End;

    DBEidSegmento.Text := '';

    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);

    DataSet.EnableControls;

  end; //fim do with
end;

procedure TFrmRelFluxoCaixaAnalitico.Montar_Selecao_Fornecedores;
Var
  sCodigos: TStringList;
  aCodigos: Array of String;
  iCodigos: Array of Integer;
  i: Integer;
  bReg: Pointer;
begin
  with dsFornecedores do
  begin
    sCodigos := TStringList.Create();
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;
    While Not(DataSet.Eof) Do
    Begin
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idFornecedor').Text);
      DataSet.Next;
    End;
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);

    funcao.ASort(iCodigos);
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    DBEidFornecedores.Text := funcao.SepararValores(aCodigos, ', ');

    sCodigos.Free;

    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);

    DataSet.EnableControls;
  end; // fim do with
end;

procedure TFrmRelFluxoCaixaAnalitico.Montar_Selecao_GrupoCad;
Var
  sCodigos: TStringList;
  aCodigos: Array of String;
  iCodigos: Array of Integer;
  i: Integer;
  bReg: Pointer;
begin
  with dsGrupoCad do
  begin
    sCodigos := TStringList.Create();
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;
    While Not(DataSet.Eof) Do
    Begin
      If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
        sCodigos.Add(DataSet.FieldByName('idGrupoCad').Text);
      DataSet.Next;
    End;

    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);

    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);

    funcao.ASort(iCodigos);

    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);

    DBEidGrupo.Text := funcao.SepararValores(aCodigos, ', ');

    sCodigos.Free;

    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);

    DataSet.EnableControls;
  end; // fim do withend;
end;

procedure TFrmRelFluxoCaixaAnalitico.Montar_Selecao_Segmento;
Var
  sCodigos: TStringList;
  aCodigos: Array of String;
  iCodigos: Array of Integer;
  i: Integer;
  bReg: Pointer;
begin
  with dsSegmento do
  begin
    sCodigos := TStringList.Create();
    bReg := DataSet.GetBookmark();
    DataSet.DisableControls;
    DataSet.First;
    While Not(DataSet.Eof) Do
    Begin
      If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
        sCodigos.Add(DataSet.FieldByName('idSegmento').Text);
      DataSet.Next;
    End;
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);

    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);

    funcao.ASort(iCodigos);

    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);

    DBEidSegmento.Text := funcao.SepararValores(aCodigos, ', ');

    sCodigos.Free;

    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);

    DataSet.EnableControls;
  end; // fim do withend;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBEidFornecedoresPropertiesPopup(
  Sender: TObject);
begin
  If (cbCodigo.Checked) Then
     cxGridDBCODIGO.Focused := True;
  If (cbNome.Checked) Then
     cxGridDBNOME.Focused := True;
  If (cbFantasia.Checked) Then
     cxGridDBNOME_FANTASIA.Focused := True;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBEidGruposPropertiesPopup(
  Sender: TObject);
begin
  If (cbCodGrupo.Checked) Then
    cxGridDBCodGrupo.Focused := True;
  If (cbDescGrupo.Checked) Then
    cxGridDBNomeGrupo.Focused := True;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBEidSegmentosPropertiesPopup(
  Sender: TObject);
begin
  inherited;
  If (cbCodSegmento.Checked) Then
     cxGridDBCodSegmento.Focused := True;
  If (cbNome.Checked) Then
     cxGridDBDescSegmento.Focused := True;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewFornecedorDblClick(
  Sender: TObject);
begin
  dsFornecedores.DataSet.Edit;
  If (dsFornecedores.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
    dsFornecedores.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
    dsFornecedores.DataSet.FieldByName('SELECIONADO').asString := 'N';
  dsFornecedores.DataSet.Post;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Key = VK_Return) And (ssShift in Shift) Then
    DBTableViewFornecedor.OnDblClick(DBTableViewFornecedor);
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  If (ARecord.Values[0] = 'S') Then
     AStyle := stDestaque;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewGrupoDblClick(
  Sender: TObject);
begin
  dsGrupoCad.DataSet.Edit;
  If (dsGrupoCad.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
    dsGrupoCad.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
    dsGrupoCad.DataSet.FieldByName('SELECIONADO').asString := 'N';
  dsGrupoCad.DataSet.Post;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
inherited;
  If (Key = VK_Return) And (ssShift in Shift) Then
    DBTableViewGrupo.OnDblClick(DBTableViewGrupo);
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewSegmentoDblClick(
  Sender: TObject);
begin
inherited;
  //
  dsSegmento.DataSet.Edit;
  //
  If (dsSegmento.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsSegmento.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsSegmento.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsSegmento.DataSet.Post;
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewSegmentoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_Return) And (ssShift in Shift) Then
     DBTableViewSegmento.OnDblClick(DBTableViewSegmento);
end;

procedure TFrmRelFluxoCaixaAnalitico.PopupFornecedoresEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsFornecedores.DataSet.Active) Then
     dsFornecedores.DataSet.Open;
  //
end;

procedure TFrmRelFluxoCaixaAnalitico.SegmentoEnter(Sender: TObject);
begin
  inherited;
  If Not(dsSegmento.DataSet.Active) Then
     dsSegmento.DataSet.Open;
end;

        //*********   EMPRESAS  ************//
procedure TFrmRelFluxoCaixaAnalitico.Montar_Selecao_Empresas;
Var sCodigos: TStringList;
    aCodigos: Array of String;
    iCodigos: Array of Integer;
    i: Integer;
    bReg: Pointer;
begin
  //
  with dsEmpresas do
  begin
    sCodigos := TStringList.Create();
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             sCodigos.Add(DataSet.FieldByName('idEmpresa').Text);
          //
          DataSet.Next;
          //
        End;
    //
    SetLength(aCodigos, sCodigos.Count);
    SetLength(iCodigos, sCodigos.Count);
    //
    For i := 0 To sCodigos.Count -1 Do
      iCodigos[i] := StrToInt(sCodigos[i]);
    //
    funcao.ASort(iCodigos);
    //
    For i := 0 To sCodigos.Count -1 Do
      aCodigos[i] := IntToStr(iCodigos[i]);
    //
    DBEidEmpresas.Text := funcao.SepararValores(aCodigos, ', ');
    //
    sCodigos.Free;
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; // fim do withend;
end;
procedure TFrmRelFluxoCaixaAnalitico.Limpar_Selecao_Empresas;
Var bReg: Pointer;
begin
  with dsEmpresas do
  begin
    //
    bReg := DataSet.GetBookmark();
    //
    DataSet.DisableControls;
    DataSet.First;
    //
    While Not(DataSet.Eof) Do
        Begin
          //
          If (DataSet.FieldByName('SELECIONADO').AsString = 'S') Then
             Begin
               //
               DataSet.Edit;
               DataSet.FieldByName('SELECIONADO').AsString := 'N';
               DataSet.Post;
               //
             End;
          //
          DataSet.Next;
          //
        End;
    //
    DBEidEmpresas.Text := '';
    //
    DataSet.GotoBookMark(bReg);
    DataSet.FreeBookMark(bReg);
    //
    DataSet.EnableControls;
    //
  end; //fim do with
end;
procedure TFrmRelFluxoCaixaAnalitico.EmpresasEnter(Sender: TObject);
begin
  inherited;
  //
  If Not(dsEmpresas.DataSet.Active) Then
     dsEmpresas.DataSet.Open;
  //
end;
procedure TFrmRelFluxoCaixaAnalitico.AplicarEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  Montar_Selecao_Empresas;
  //
end;
procedure TFrmRelFluxoCaixaAnalitico.CancelarEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  //
end;
procedure TFrmRelFluxoCaixaAnalitico.LimparEmpresasClick(Sender: TObject);
begin
  inherited;
  //
  DBEidEmpresas.PopupWindow.Close;
  Limpar_Selecao_Empresas;
  //
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewEmpresasDblClick(
  Sender: TObject);
begin
  inherited;
  //
  dsEmpresas.DataSet.Edit;
  //
  If (dsEmpresas.DataSet.FieldByName('SELECIONADO').asString <> 'S') Then
      dsEmpresas.DataSet.FieldByName('SELECIONADO').asString := 'S'
  Else
      dsEmpresas.DataSet.FieldByName('SELECIONADO').asString := 'N';
  //
  dsEmpresas.DataSet.Post;
  //
end;
procedure TFrmRelFluxoCaixaAnalitico.OnDBEidEmpresasPropertiesPopup(
  Sender: TObject);
begin
  inherited;
  //
  If (cbCodEmpresa.Checked) Then
     GridEmpresaidEmpresa.Focused := True;
  //
  If (cbNome.Checked) Then
     GridEmpresadescCadEmpresa.Focused := True;
  //
end;

procedure TFrmRelFluxoCaixaAnalitico.OnDBTableViewEmpresasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
  If (Key = VK_Return) And
     (ssShift in Shift) Then
     DBTableViewEmpresas.OnDblClick(DBTableViewEmpresas);
  //
end;
//******************************************************************************

end.

