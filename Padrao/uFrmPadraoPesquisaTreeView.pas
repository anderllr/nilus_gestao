unit uFrmPadraoPesquisaTreeView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, StdCtrls, Buttons, CBitBtn, ActnList, CGroupBox,
  DB, DBClient, Provider, CDBEdit, CPanelGradient, FMTBcd, SqlExpr,
  ComCtrls, JvExComCtrls, JvDBTreeView;

type
  TFrmPadraoPesquisaTreeView = class(TForm)
    imgIcones: TImageList;
    Acao: TActionList;
    actFechar: TAction;
    actPesquisar: TAction;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    GrupoGrid: TCGroupBox;
    cdsGrid: TClientDataSet;
    dsGrid: TDataSource;
    dspGrid: TDataSetProvider;
    PanBotoes: TCPanelGradient;
    PanTopo: TCPanelGradient;
    sdsGrid: TSQLDataSet;
    DBTree: TJvDBTreeView;
    GrpBtnPesquisa: TCGroupBox;
    BtnExecutar: TCBitBtn;
    BtnFechar: TCBitBtn;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    procedure cdsPadraoAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  FrmPadraoPesquisaTreeView: TFrmPadraoPesquisaTreeView;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmPadraoPesquisaTreeView.actExecutarExecute(Sender: TObject);
var
  sql : String;
begin
  if (Sender as TAction).Tag > 0 then
    exit;

  sql := sqlpadrao;
  if pos(UpperCase(sql), 'WHERE') <= 0 then
    sql := sql + ' WHERE 1=1';

//  showmessage(sql);
//  exit;
  with (formulario.FindComponent('cdsGrid') as TClientDataSet) do
  begin
    Active := false;
    CommandText := sql;
    Active := true;
    if not isempty then
      (formulario.FindComponent('DBTree') as TJvDBTreeView).SetFocus;
  end;
end;

procedure TFrmPadraoPesquisaTreeView.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPadraoPesquisaTreeView.cdsPadraoAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
//    if DataSet.FieldDefs[i].DataType in [ftFMTBcd, ftBCD] then
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TFrmPadraoPesquisaTreeView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPadraoPesquisaTreeView.FormCreate(Sender: TObject);
begin
  Formulario := (Sender as TForm);
  cdsPadrao.CreateDataSet;  
end;

procedure TFrmPadraoPesquisaTreeView.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with (Formulario.FindComponent('cdsGrid') as TClientDataSet) do
  begin
    if (not IsEmpty) and (not (Formulario.FindComponent('DBTree') as TJvDBTreeView).Focused) then
    begin
      if key = VK_UP then
        Prior;
      if key = VK_DOWN then
        Next;
    end;
  end;
end;

procedure TFrmPadraoPesquisaTreeView.FormShow(Sender: TObject);
var
  r : TRect;
begin
  //inicia o cdsPadrao

//  cdsPadrao.Active := true;
  sqlpadrao := (Formulario.FindComponent('cdsGrid') as TClientDataSet).CommandText;
  sqlpadrao2 := '';
  IniciaGrid;
  if Assigned(foco) then
    foco.SetFocus;

  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 160;
  Top := r.top + 65;
end;

procedure TFrmPadraoPesquisaTreeView.IniciaGrid;
begin
  //inicia o cdsGrid
  with (Formulario.FindComponent('cdsGrid') as TClientDataSet) do
    if (sqlPadrao2 <> CommandText) and (trim(sqlpadrao) <> '') then
    begin
      Active := false;    //inicia o Sql
      if pos('WHERE', UpperCase(sqlpadrao)) > 0 then
        sqlpadrao2 := sqlpadrao + ' AND 1 = 2'
      else
        sqlpadrao2 := sqlpadrao + ' WHERE 1 = 2';
      CommandText := sqlpadrao2;
      Active := true;
    end;
end;

end.
