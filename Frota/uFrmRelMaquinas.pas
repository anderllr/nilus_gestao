unit uFrmRelMaquinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, uFrmPadraoRel,
  CDBCheckBox, CGroupBox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Menus, cxShellBrowserDialog, ExtDlgs, cxGridExportLink, cxCurrencyEdit, ShellApi,
  cxHint, dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, dxScreenTip,
  dxCustomHint, cxNavigator, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelMaquinas = class(TFrmPadraoRel)
    frxRel: TfrxReport;
    cdsPadraoveiculo: TStringField;
    cdsPadraomaquina: TStringField;
    cdsPadraoanoFabricaIni: TIntegerField;
    cdsPadraoanoFabricaFim: TIntegerField;
    cdsPadraodtAquisicaoIni: TDateField;
    cdsPadraodtAquisicaoFim: TDateField;
    cdsPadraoidTipoMaquina: TIntegerField;
    cdsPadraotpMaquina: TStringField;
    cdsPadraoanoModeloIni: TIntegerField;
    cdsPadraoanoModeloFim: TIntegerField;
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel62: TCLabel;
    CLabel61: TCLabel;
    CLabel8: TCLabel;
    CLabel6: TCLabel;
    DBEanoFabricaIni: TCDBEdit;
    DBEdtAquisicaoIni: TCDBEdit;
    DBEanoModeloIni: TCDBEdit;
    DBEvlAquisicaoIni: TCDBEdit;
    DBEvlVendaIni: TCDBEdit;
    DBEidTipoMaquina: TCDBEdit;
    LookTipoMaquina: TCLookUp;
    LookMaquinaMarca: TCLookUp;
    DBEidMaquinaMarca: TCDBEdit;
    DBCKveiculo: TCDBCheckBox;
    DBCKmaquina: TCDBCheckBox;
    DBEanoFabricaFim: TCDBEdit;
    CLabel7: TCLabel;
    DBEanoModeloFim: TCDBEdit;
    CLabel10: TCLabel;
    CLabel11: TCLabel;
    DBEdtAquisicaoFim: TCDBEdit;
    cdsPadraovlAquisicaoIni: TCurrencyField;
    cdsPadraovlAquisicaoFim: TCurrencyField;
    cdsPadraovlVendaIni: TCurrencyField;
    cdsPadraovlVendaFim: TCurrencyField;
    DBEvlAquisicaoFim: TCDBEdit;
    CLabel12: TCLabel;
    DBEvlVendaFim: TCDBEdit;
    CLabel9: TCLabel;
    cdsPadraoidMaquinaMarca: TIntegerField;
    DBRGOrdem: TCDBRadioGroup;
    cdsPadraoordem: TStringField;
    CLabel60: TCLabel;
    DBEidMaquina: TCDBEdit;
    CLookUp10: TCLookUp;
    cdsPadraoidMaquina: TIntegerField;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    BtnPesquisarM: TCBitBtn;
    BtnFecharM: TCBitBtn;
    BtnImprime: TCBitBtn;
    cxGrid: TcxGrid;
    DBView: TcxGridDBTableView;
    Nivel1: TcxGridLevel;
    dsRelatorio: TDataSource;
    DBViewidMaquina: TcxGridDBColumn;
    DBViewdescMaquina: TcxGridDBColumn;
    DBViewidTipoMaquina: TcxGridDBColumn;
    DBViewdescTipoMaquina: TcxGridDBColumn;
    DBViewtpMaquina: TcxGridDBColumn;
    DBViewhora: TcxGridDBColumn;
    DBViewkilometragem: TcxGridDBColumn;
    DBViewdescModelo: TcxGridDBColumn;
    DBViewidMaquinaMarca: TcxGridDBColumn;
    DBViewdescMaquinaMarca: TcxGridDBColumn;
    DBViewdescPlaca1: TcxGridDBColumn;
    DBViewdescPlaca2: TcxGridDBColumn;
    DBViewanoFabricacao: TcxGridDBColumn;
    DBViewanoModelo: TcxGridDBColumn;
    DBViewidCertificado: TcxGridDBColumn;
    DBViewidRenavam: TcxGridDBColumn;
    DBViewidChassi: TcxGridDBColumn;
    DBViewnrPatrimonio: TcxGridDBColumn;
    DBViewvlPotencia: TcxGridDBColumn;
    DBViewtpPotencia: TcxGridDBColumn;
    DBViewnrSerie: TcxGridDBColumn;
    DBViewdtAquisicao: TcxGridDBColumn;
    DBViewvlAquisicao: TcxGridDBColumn;
    DBViewvlVenda: TcxGridDBColumn;
    DBViewobsMaquina: TcxGridDBColumn;
    DBViewstMaquina: TcxGridDBColumn;
    DBViewveiculo: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    actExportaExcel1: TMenuItem;
    AbreArq: TOpenTextFileDialog;
    AbrePasta: TcxShellBrowserDialog;
    cxHintStyleController1: TcxHintStyleController;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure BtnPesquisarMClick(Sender: TObject);
    procedure actExportaExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelMaquinas: TFrmRelMaquinas;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelMaquinas.actExportaExcel1Click(Sender: TObject);
begin
//exper
  funcao.ExportaExcell(FrmRelMaquinas.Caption, cxGrid);
end;

procedure TFrmRelMaquinas.actGerarExecute(Sender: TObject);
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

procedure TFrmRelMaquinas.BtnPesquisarMClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (not DBCKveiculo.Checked) and (not DBCKmaquina.Checked) then
  begin
    messagedlg('Você deve selecionar: Veículos, Máquinas ou Ambos!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'SELECT * FROM vMaquina WHERE stMaquina <> ' + QuotedStr('CANCELADO');
  //filtro por máquina
  if trim(DBEidMaquina.Text) <> '' then
    sql := sql + ' AND idMaquina = ' + DBEidMaquina.Text;
  //filtro por ano de fabricação
  if trim(DBEanoFabricaIni.Text) <> '' then
    sql := sql + ' AND anoFabricacao >= ' + DBEanoFabricaIni.Text;
  if trim(DBEanoFabricaFim.Text) <> '' then
    sql := sql + ' AND anoFabricacao <= ' + DBEanoFabricaFim.Text;
  //filtro por ano de modelo
  if trim(DBEanoModeloIni.Text) <> '' then
    sql := sql + ' AND anoModelo >= ' + DBEanoModeloIni.Text;
  if trim(DBEanoModeloFim.Text) <> '' then
    sql := sql + ' AND anoModelo <= ' + DBEanoModeloFim.Text;
  //filtro por data de aquisição
  if trim(DBEdtAquisicaoIni.Text) <> '' then
    sql := sql + ' AND dtAquisicao >= ' + funcao.RetornaValorEField(DBEdtAquisicaoIni, 3);
  if trim(DBEdtAquisicaoFim.Text) <> '' then
    sql := sql + ' AND dtAquisicao <= ' + funcao.RetornaValorEField(DBEdtAquisicaoFim, 3);
  //filtro por valor de aquisição
  if trim(DBEvlAquisicaoIni.Text) <> '' then
    sql := sql + ' AND vlAquisicao >= ' + funcao.RetornaValorEField(DBEvlAquisicaoIni, 3);
  if trim(DBEvlAquisicaoFim.Text) <> '' then
    sql := sql + ' AND vlAquisicao <= ' + funcao.RetornaValorEField(DBEvlAquisicaoFim, 3);
  //filtro por valor de venda
  if trim(DBEvlVendaIni.Text) <> '' then
    sql := sql + ' AND vlVenda >= ' + funcao.RetornaValorEField(DBEvlVendaIni, 3);
  if trim(DBEvlVendaFim.Text) <> '' then
    sql := sql + ' AND vlVenda <= ' + funcao.RetornaValorEField(DBEvlVendaFim, 3);
  //filtro por tipo de máquina/veículo
  if trim(DBEidTipoMaquina.Text) <> '' then
    sql := sql + ' AND idTipoMaquina = ' + DBEidTipoMaquina.Text;
  //filtro por marca de máquina/veículo
  if trim(DBEidMaquinaMarca.Text) <> '' then
    sql := sql + ' AND idMaquinaMarca = ' + DBEidMaquinaMarca.Text;

  if (DBCKveiculo.Checked) and (not DBCKmaquina.Checked) then
    sql := sql + ' AND veiculo = ' + QuotedStr('S')
  else
    if (not DBCKveiculo.Checked) and (DBCKmaquina.Checked) then
      sql := sql + ' AND veiculo = ' + QuotedStr('N');

  if DBRGOrdem.Value = 'D' then
    sql := sql + 'ORDER BY descMaquina'
  else
    if DBRGOrdem.Value = 'P' then
      sql := sql + 'ORDER BY nrPatrimonio'
    else
      if DBRGOrdem.Value = 'V' then
        sql := sql + 'ORDER BY vlVenda'
      else
       if DBRGOrdem.Value = 'M' then
         sql := sql + 'ORDER BY anoModelo'
       else
         if DBRGOrdem.Value = 'C' then
           sql := sql + 'ORDER BY idMaquina'
         else
           if DBRGOrdem.Value = 'A' then
             sql := sql + 'ORDER BY dtAquisicao'
           else
            if DBRGOrdem.Value = 'F' then
              sql := sql + 'ORDER BY anoFabricacao';
  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;
end;

procedure TFrmRelMaquinas.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoveiculo.AsString := 'S';
  cdsPadraomaquina.AsString := 'S';
  DataSet.FieldByName('ordem').AsString := 'D';
end;

procedure TFrmRelMaquinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelMaquinas := nil;
end;

procedure TFrmRelMaquinas.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelListaMaquinas.fr3';
  SetLength(parametro, 16);
  parametro[0] := DBEidMaquina;
  parametro[1] := DBEanoFabricaIni;
  parametro[2] := DBEanoFabricaFim;
  parametro[3] := DBEanoModeloIni;
  parametro[4] := DBEanoModeloFim;
  parametro[5] := DBEdtAquisicaoIni;
  parametro[6] := DBEdtAquisicaoFim;
  parametro[7] := DBEvlAquisicaoIni;
  parametro[8] := DBEvlAquisicaoFim;
  parametro[9] := DBEvlVendaIni;
  parametro[10] := DBEvlVendaFim;
  parametro[11] := LookTipoMaquina;
  parametro[12] := LookMaquinaMarca;
  parametro[13] := DBCKveiculo;
  parametro[14] := DBCKmaquina;

  Width := 1136;
  Height := 600;
end;

procedure TFrmRelMaquinas.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
