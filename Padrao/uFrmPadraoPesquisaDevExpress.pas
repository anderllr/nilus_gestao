unit uFrmPadraoPesquisaDevExpress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, Provider, DBClient, ActnList, ImgList, ExtCtrls,
  CPanelGradient, StdCtrls, Buttons, CBitBtn, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, CLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxDBLookupComboBox, cxBlobEdit, cxCalendar, cxCalc,
  cxImageComboBox, cxSpinEdit, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, cxExport, cxGridExportLink, ShellAPI,
  Menus, cxShellBrowserDialog, ExtDlgs, RzShellDialogs, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxNavigator, System.Actions, System.ImageList;

type
  TFrmPadraoPesquisaDevExpress = class(TForm)
    imgIcones: TImageList;
    Acao: TActionList;
    actFechar: TAction;
    actPesquisar: TAction;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    cdsPadrao: TClientDataSet;
    dsPadrao: TDataSource;
    sdsGrid: TSQLDataSet;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
    dsGrid: TDataSource;
    PanTopo: TCPanelGradient;
    cdsPadraoidEmpresa: TIntegerField;
    PanTop: TCPanelGradient;
    BtnFechar: TCBitBtn;
    BtnExecutar: TCBitBtn;
    BevGrid: TBevel;
    BevTop: TBevel;
    lblInfo: TCLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    LookAndFeelController: TcxLookAndFeelController;
    cxGrid: TcxGrid;
    DBView: TcxGridDBTableView;
    Nivel1: TcxGridLevel;
    StyleRepository: TcxStyleRepository;
    stBlueLight: TcxStyle;
    stGreyLight: TcxStyle;
    stBlueSky: TcxStyle;
    stClear: TcxStyle;
    stRed: TcxStyle;
    PopupMenu: TPopupMenu;
    actExportaExcel: TAction;
    actExportaExcel1: TMenuItem;
    AbrePasta: TcxShellBrowserDialog;
    AbreArq: TOpenTextFileDialog;
    procedure IniciaGrid;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure cdsPadraoAfterOpen(DataSet: TDataSet);
    procedure actFecharExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actExportaExcelExecute(Sender: TObject);
  private
    { Private declarations }
    sqlPadrao : String;
  public
    { Public declarations }
    Formulario : TForm;
    foco : TCustomEdit;
    empresa, filial : boolean;
  end;

var
  FrmPadraoPesquisaDevExpress: TFrmPadraoPesquisaDevExpress;

implementation

uses uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmPadraoPesquisaDevExpress.actExportaExcelExecute(Sender: TObject);
var
  caminho : String;
  ano, mes, dia : word;
begin
  try
    AbrePasta.Execute;
    if AbrePasta.Path <> '' then
    begin
      caminho := AbrePasta.Path;
    end
    else
    begin
      caminho := '';
    end;
    DecodeDate(date, ano, mes, dia);
    caminho := caminho + '\Nilus ' + IntToStr(dia) + '-' + IntToStr(mes) + '-' + IntToStr(ano)  + '.xls';
    if FileExists(caminho) then
       if MessageDlg('Essa pasta já contém um arquivo com esse nome. Deseja substituí-lo?', mtInformation,[mbYes,mbNo],0) = mrNo then
          Exit;
    ExportGridToExcel(caminho, cxGrid);
    if FileExists(caminho) then
      MessageDlg('Arquivo Gerado com Sucesso!', mtInformation, [mbOK], 0);
  except
    on E: Exception do
    begin
       raise exception.create('Erro! Arquivo não foi criado'+ e.message);
    end;
  end;
end;

procedure TFrmPadraoPesquisaDevExpress.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPadraoPesquisaDevExpress.actPesquisarExecute(Sender: TObject);
var
  Field, valor, sql : String;
  i : integer;
begin
  if (Sender as TAction).Tag > 0 then
    exit;

  sql := sqlpadrao;
  if pos(UpperCase(sql), 'WHERE') <= 0 then
    sql := sql + ' WHERE 1=1';

  for i := 0 to (formulario.FindComponent('cdsPadrao') as TClientDataSet).FieldCount - 1 do
  begin
    valor := '';
    field := '';
    valor := (formulario.FindComponent('cdsPadrao') as TClientDataSet).Fields[i].AsString;
    Field := (formulario.FindComponent('cdsPadrao') as TClientDataSet).Fields[i].FieldName;
    if trim(valor) <> '' then
    begin
      if (formulario.FindComponent('cdsPadrao') as TClientDataSet).Fields[i].DataType in [ftWideString, ftFixedChar, ftString] then
        sql := sql + ' AND ' + Field + ' LIKE ' + quotedstr('%' + valor + '%')
      else
        sql := sql + ' AND ' + Field + ' = ' + quotedstr(valor);
    end;
  end;
//  showmessage(sql);
//  exit;
  with (formulario.FindComponent('cdsGrid') as TClientDataSet) do
  begin
    Active := false;
    CommandText := sql;
    Active := true;
    if not isempty then
      (formulario.FindComponent('DBGrid') as TcxGrid).SetFocus;
  end;
end;

procedure TFrmPadraoPesquisaDevExpress.cdsPadraoAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
    if DataSet.FieldDefs[i].DataType in [ftFMTBcd, ftBCD] then
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TFrmPadraoPesquisaDevExpress.dsPadraoDataChange(Sender: TObject;
  Field: TField);
begin
  //IniciaGrid;
end;

procedure TFrmPadraoPesquisaDevExpress.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPadraoPesquisaDevExpress.FormCreate(Sender: TObject);
begin
  Formulario := (Sender as TForm);
  empresa := false;
end;

procedure TFrmPadraoPesquisaDevExpress.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  with (Formulario.FindComponent('cdsGrid') as TClientDataSet) do
  begin
    if (not IsEmpty) and (not (Formulario.FindComponent('cxGrid') as TcxGrid).Focused) then
    begin
      if key = VK_UP then
        Prior;
      if key = VK_DOWN then
        Next;
    end;
  end;
end;

procedure TFrmPadraoPesquisaDevExpress.FormShow(Sender: TObject);
var
  r : TRect;
begin
  //inicia o cdsPadrao
  with (Formulario.FindComponent('cdsPadrao') as TClientDataSet) do
  begin
    Active := false;
    CreateDataSet;
    Active := true;
    Append;
    if empresa then
    begin
      FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
      //Configuraçoes para filial
      filial := false;
      cdsLookup.Active := false;
      cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
      cdsLookup.Active := true;
      filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
    end;
  end;

  sqlpadrao := (Formulario.FindComponent('cdsGrid') as TClientDataSet).CommandText;

  if Assigned(foco) then
    foco.SetFocus;

  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
  WindowState := wsMaximized;
  lblInfo.Caption := formulario.Caption;
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
//  Left := r.Left + 10;
//  Top := r.top + 10;

end;

procedure TFrmPadraoPesquisaDevExpress.IniciaGrid;
var
  sqlPadrao2 : string;
begin
  //inicia o cdsGrid
  with (Formulario.FindComponent('cdsGrid') as TClientDataSet) do
    if (trim(sqlpadrao) <> '') then
    begin
      Active := false;    //inicia o Sql
      //verifica se é procedure
      if not (pos('EXEC', UpperCase(sqlpadrao)) > 0) then
      begin
        if pos('WHERE', UpperCase(sqlpadrao)) > 0 then
          sqlpadrao2 := sqlpadrao + ' AND 1 = 2'
        else
          sqlpadrao2 := sqlpadrao + ' WHERE 1 = 2';
      end
      else
        sqlpadrao2 := sqlPadrao;
      CommandText := sqlpadrao2;
      Active := true;
    end;
end;

end.
