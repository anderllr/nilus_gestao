unit uFrmPadraoPesquisaPivot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, StdCtrls, Buttons, CBitBtn, ActnList, CGroupBox,
  DB, DBClient, Provider, Grids, DBGrids, CDBGrid, CDBEdit, CPanelGradient, FMTBcd, SqlExpr,
  System.Actions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, cxCustomData, cxStyles, cxEdit, cxProgressBar, cxCustomPivotGrid,
  cxDBPivotGrid, System.ImageList;

type
  TFrmPadraoPesquisaPivot = class(TForm)
    imgIcones: TImageList;
    Acao: TActionList;
    actFechar: TAction;
    actPesquisar: TAction;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    dspPadrao: TDataSetProvider;
    cdsPadrao: TClientDataSet;
    dsPadrao: TDataSource;
    GrupoGrid: TCGroupBox;
    cdsGrid: TClientDataSet;
    dsGrid: TDataSource;
    dspGrid: TDataSetProvider;
    PanBotoes: TCPanelGradient;
    BtnExecutar: TCBitBtn;
    BtnFechar: TCBitBtn;
    PanTopo: TCPanelGradient;
    sdsPadrao: TSQLDataSet;
    sdsGrid: TSQLDataSet;
    DBPivotGrid: TcxDBPivotGrid;
    procedure cdsPadraoAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IniciaGrid;
  private
    { Private declarations }
  public
    sqlPadrao, sqlPadrao2 : String;
    Formulario : TForm;
    chave: Array of TCDBEdit;
    foco : TCustomEdit;
    { Public declarations }
  end;

var
  FrmPadraoPesquisaPivot: TFrmPadraoPesquisaPivot;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmPadraoPesquisaPivot.actExecutarExecute(Sender: TObject);
var
  Field, valor, sql : String;
  i : integer;
begin
  if (Sender as TAction).Tag > 0 then
    exit;

  sql := sqlpadrao;
  if pos( 'WHERE', UpperCase(sql)) <= 0 then
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
      (formulario.FindComponent('DBGrid') as TCDBGrid).SetFocus;
  end;
end;

procedure TFrmPadraoPesquisaPivot.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPadraoPesquisaPivot.cdsPadraoAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
//    if DataSet.FieldDefs[i].DataType in [ftFMTBcd, ftBCD] then
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
//    funcao.AtribuiMaskField(DataSet.FieldByName(DataSet.FieldDefs[i].Name));
end;

procedure TFrmPadraoPesquisaPivot.DBGridDblClick(Sender: TObject);
begin
  if not (formulario.FindComponent('cdsGrid') as TClientDataSet).IsEmpty then
    close;
end;

procedure TFrmPadraoPesquisaPivot.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    close;
end;

procedure TFrmPadraoPesquisaPivot.dsPadraoDataChange(Sender: TObject; Field: TField);
begin
  IniciaGrid;
end;

procedure TFrmPadraoPesquisaPivot.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPadraoPesquisaPivot.FormCreate(Sender: TObject);
begin
  Formulario := (Sender as TForm);
end;

procedure TFrmPadraoPesquisaPivot.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with (Formulario.FindComponent('cdsGrid') as TClientDataSet) do
  begin
    if (not IsEmpty) and (not (Formulario.FindComponent('DBGrid') as TCDBGrid).Focused) then
    begin
      if key = VK_UP then
        Prior;
      if key = VK_DOWN then
        Next;
    end;
  end;
  //
  //If (Key = VK_Return) Then
  //   Perform(WM_NEXTDLGCTL, 1, 1);
  //
end;

procedure TFrmPadraoPesquisaPivot.FormShow(Sender: TObject);
var
  r : TRect;
begin
  //inicia o cdsPadrao
  with (Formulario.FindComponent('cdsPadrao') as TClientDataSet) do
  begin
    Active := false;
    //inicia o Sql
    if trim(CommandText) <> '' then
    begin
      if pos(UpperCase(CommandText), 'WHERE') > 0 then
        CommandText := CommandText + ' AND 1 = 2'
      else
        CommandText := CommandText + ' WHERE 1 = 2';
    end
    else
      CreateDataSet;
    Active := true;
    Append;
  end;
  sqlpadrao := (Formulario.FindComponent('cdsGrid') as TClientDataSet).CommandText;
  sqlpadrao2 := '';
  IniciaGrid;
  if Assigned(foco) then
    foco.SetFocus;

  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 10;
  Top := r.top + 10;
end;

procedure TFrmPadraoPesquisaPivot.IniciaGrid;
begin
  //inicia o cdsGrid
  with (Formulario.FindComponent('cdsGrid') as TClientDataSet) do
  begin
    Active := false;
    Active := true;
  end;
end;

end.
