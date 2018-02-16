unit uFrmListagemClienteFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRel, DB, frxClass, frxDBSet, frxExportCSV, frxExportMail,
  frxExportODF, frxExportPDF, frxExportXML, frxExportXLS, frxExportHTML,
  frxExportText, frxExportRTF, frxExportImage, DBClient, Provider, ActnList,
  ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBCtrls, CDBCheckBox, CLookUp,
  Mask, CDBEdit, CLabel, CGroupBox, CDBRadioGroup, Menus, cxShellBrowserDialog,
  ExtDlgs, dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxNavigator,
  System.Actions, System.ImageList;

type
  TFrmRelListagemCliFor = class(TFrmPadraoRel)
    cxGrid: TcxGrid;
    DBView: TcxGridDBTableView;
    Nivel1: TcxGridLevel;
    CGroupBox1: TCGroupBox;
    CLabel36: TCLabel;
    DBEidCidade: TCDBEdit;
    LookCidade: TCLookUp;
    LookEstado2: TCLookUp;
    DBEdtInicial: TCDBEdit;
    CLabel11: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel3: TCLabel;
    CLabel61: TCLabel;
    DBEidGrupoCad: TCDBEdit;
    LookGrupoCad: TCLookUp;
    LookSegmento: TCLookUp;
    DBEidSegmento: TCDBEdit;
    CLabel62: TCLabel;
    DBRGOrdem: TCDBRadioGroup;
    dsRelatorio: TDataSource;
    AbreArq: TOpenTextFileDialog;
    AbrePasta: TcxShellBrowserDialog;
    PopupMenu: TPopupMenu;
    actExportaExcel1: TMenuItem;
    cdsPadraoidCidade: TIntegerField;
    cdsPadraoidSegmento: TIntegerField;
    cdsPadraoordem: TStringField;
    cdsPadraoidCadGeralIni: TIntegerField;
    cdsPadraoidCadGeralFim: TIntegerField;
    DBEidCadGeralFim: TCDBEdit;
    CLabel7: TCLabel;
    DBEidCadGeralIni: TCDBEdit;
    CLabel1: TCLabel;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraoidGrupoCad: TIntegerField;
    cdsRelatorioidCliente: TIntegerField;
    cdsRelatorioidCadCliente: TSmallintField;
    cdsRelatoriodescCadCliente: TStringField;
    cdsRelatoriodescAbreviada: TStringField;
    cdsRelatorioidCnpjCpf: TStringField;
    cdsRelatorioidInscEstadual: TStringField;
    cdsRelatorioendereco: TStringField;
    cdsRelatorionumero: TIntegerField;
    cdsRelatoriocomplemento: TStringField;
    cdsRelatoriobairro: TStringField;
    cdsRelatoriocep: TStringField;
    cdsRelatorioidCidade: TIntegerField;
    cdsRelatoriodescCidade: TStringField;
    cdsRelatorioidEstado: TStringField;
    cdsRelatoriofone: TStringField;
    cdsRelatoriofax: TStringField;
    cdsRelatoriocelular: TStringField;
    cdsRelatorioemail: TStringField;
    DBViewidCliente: TcxGridDBColumn;
    DBViewidCadCliente: TcxGridDBColumn;
    DBViewdescCadCliente: TcxGridDBColumn;
    DBViewdescAbreviada: TcxGridDBColumn;
    DBViewidCnpjCpf: TcxGridDBColumn;
    DBViewidInscEstadual: TcxGridDBColumn;
    DBViewendereco: TcxGridDBColumn;
    DBViewnumero: TcxGridDBColumn;
    DBViewcomplemento: TcxGridDBColumn;
    DBViewbairro: TcxGridDBColumn;
    DBViewcep: TcxGridDBColumn;
    DBViewidCidade: TcxGridDBColumn;
    DBViewdescCidade: TcxGridDBColumn;
    DBViewidEstado: TcxGridDBColumn;
    DBViewfone: TcxGridDBColumn;
    DBViewfax: TcxGridDBColumn;
    DBViewcelular: TcxGridDBColumn;
    DBViewemail: TcxGridDBColumn;
    frxRel: TfrxReport;
    BtnImprime: TCBitBtn;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    procedure actGerarExecute(Sender: TObject);
    procedure BtnImprimeClick(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actExportaExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelListagemCliFor: TFrmRelListagemCliFor;

implementation

uses uFrmCadFuncao, uFuncao, uDmPadrao, uFrmPadrao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelListagemCliFor.actExportaExcel1Click(Sender: TObject);
begin
  inherited;
  funcao.ExportaExcell(FrmRelListagemCliFor.Caption, cxGrid);
end;

procedure TFrmRelListagemCliFor.actGerarExecute(Sender: TObject);
var
  sql : string;
begin
//  inherited;
  //Optei por SQL Direto pois as View não tinha alguns Campos e para não mexer muito na estrutura não modifiquei
  sql :=  'SELECT Cad.idCadGeral idCliente, Adi.idCadAdicional idCadCliente, Adi.descCadAdicional descCadCliente,  Adi.descAbreviada, ' +
          ' Adi.idCnpjCpf, Adi.idInscEstadual,  Adi.endereco, Adi.numero,  Adi.complemento, Adi.bairro, Adi.cep, Adi.idCidade, ' +
          ' Cid.descCidade, cid.idEstado,  Adi.fone, Adi.fax, Adi.celular, Adi.email ' +
          ' FROM CadGeral Cad INNER JOIN CadAdicional Adi ' +
          ' ON Cad.idCadGeral = Adi.idCadGeral LEFT JOIN Cidade Cid ' +
          ' ON Adi.idCidade = Cid.idCidade LEFT JOIN CadGeralSegmento Seg ' +
          ' ON Cad.idCadGeral = Seg.idCadGeral WHERE 1=1';
  if Trim(cdsPadraoidCidade.AsString) <> '' then
    sql := sql + ' AND Adi.idCidade = ' + cdsPadraoidCidade.AsString;
  if Trim(cdsPadraoidSegmento.AsString) <> '' then
    sql := sql + ' AND Seg.idSegmento = ' + cdsPadraoidSegmento.AsString;
  if Trim(cdsPadraoidGrupoCad.AsString) <> '' then
    sql := sql + ' AND Cad.idGrupoCad = ' + cdsPadraoidGrupoCad.AsString;
  if Trim(cdsPadraodtInicial.AsString) <> '' then
    sql := sql + ' AND Cad.dtCadastro >= ' + cdsPadraodtInicial.AsString;
  if Trim(cdsPadraodtFinal.AsString) <> '' then
    sql := sql + ' AND Cad.dtCadastro <= ' + cdsPadraodtFinal.AsString;
  if Trim(cdsPadraoidCadGeralIni.AsString) <> '' then
    sql := sql + ' AND Adi.idCadGeral >= ' + cdsPadraoidCadGeralIni.AsString;
  if Trim(cdsPadraoidCadGeralFim.AsString) <> '' then
    sql := sql + ' AND Adi.idCadGeral <= ' + cdsPadraoidCadGeralFim.AsString;

  if DBRGOrdem.Value = 'D' then
    sql := sql + ' ORDER BY Adi.descCadAdicional'
  else
    if DBRGOrdem.Value = 'C' then
      sql := sql + ' ORDER BY Adi.idCadGeral'
    else
      if DBRGOrdem.Value = 'A' then
        sql := sql + ' ORDER BY Cad.dtCadastro'
      else
       if DBRGOrdem.Value = 'I' then
         sql := sql + ' ORDER BY Adi.idCidade';

  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;
end;

procedure TFrmRelListagemCliFor.BtnImprimeClick(Sender: TObject);
var
  caminho_rel : String;
begin
   //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           frmPrincipal.idEmpresa + ', ' + frmPrincipal.idCadEmpresa;
  dmPadrao.cdsEmpresaContabil.Active := true;
  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  frxRel.ShowReport
//  inherited;
end;

procedure TFrmRelListagemCliFor.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ordem').AsString := 'D';
end;

procedure TFrmRelListagemCliFor.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelListagemCliFor.fr3';
  Width := 1160;
  Height := 600;
end;

end.
