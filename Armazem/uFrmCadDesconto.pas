unit uFrmCadDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  ActnList, ImgList, DB, Provider, DBClient, Buttons, CBitBtn, Grids, DBGrids,
  CDBGrid, CGroupBox, ComCtrls, CPageControl, CStatusBar, ExtCtrls, CLookUp,
  FMTBcd, SqlExpr, CFind, CPanelGradient, CDBCheckBox, CButton, Math;

type
  TFrmCadDesconto = class(TFrmCadPadraoGrid)
    TabTabela: TTabSheet;
    CGroupBox1: TCGroupBox;
    CLabel2: TCLabel;
    DBEdescCadDesconto: TCDBEdit;
    DBEidCadDesconto: TCDBEdit;
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    DBEidTpCadDesconto: TCDBEdit;
    LookTpCadDesconto: TCLookUp;
    CGroupBox3: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEdescCadDesconto2: TCDBEdit;
    DBEidCadDesconto2: TCDBEdit;
    DBEprMedido: TCDBEdit;
    CLabel7: TCLabel;
    DBEprDesconto: TCDBEdit;
    CGroupBox4: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox5: TCGroupBox;
    BtnNovoTab: TCBitBtn;
    BtnExcluirTab: TCBitBtn;
    BtnCancelarTab: TCBitBtn;
    BtnSalvarTab: TCBitBtn;
    sdsCadDesconto: TSQLDataSet;
    BtnCadTpDesconto: TCBitBtn;
    actCadTpDesconto: TAction;
    FindTpCadDesconto: TCFind;
    sdsCadDescontoTab: TSQLDataSet;
    dspCadDescontoTab: TDataSetProvider;
    cdsCadDescontoTab: TClientDataSet;
    dsCadDescontoTab: TDataSource;
    DBCBImpObrigatoria: TCDBCheckBox;
    FindProduto: TCFind;
    CLabel8: TCLabel;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    CBitBtn1: TCBitBtn;
    cdsProduto: TClientDataSet;
    cdsCadDescontoTabidCadDesconto: TSmallintField;
    cdsCadDescontoTabidProduto: TIntegerField;
    cdsCadDescontoTabdescProduto: TStringField;
    cdsCadDescontoTabprDesconto: TFMTBCDField;
    cdsCadDescontoTabprMedido: TFMTBCDField;
    procedure DBEprMedidoExit(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure cdsCadDescontoTabAfterInsert(DataSet: TDataSet);
    procedure dsCadDescontoTabStateChange(Sender: TObject);
    procedure dspCadDescontoTabBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnSalvarTabClick(Sender: TObject);
    procedure actCadTpDescontoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidCadDescontoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadDesconto: TFrmCadDesconto;

implementation

uses uDmPadrao, uFuncao, uFrmTpCadDesconto, uFrmPrincipal, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadDesconto.actCadTpDescontoExecute(Sender: TObject);
begin
  inherited;
  funcao.AbreFrm(TFrmTpCadDesconto, TForm(FrmTpCadDesconto));
end;

procedure TFrmCadDesconto.actSalvarExecute(Sender: TObject);
begin
  if cdsCadDescontoTab.State in [dsInsert, dsEdit]  then
    cdsCadDescontoTab.Cancel;

  cdsCadDescontoTab.Filtered := false;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadDesconto.BtnSalvarTabClick(Sender: TObject);
var
  idProd : string;
begin
  inherited;
  idProd := DBEidProduto.Text;
  funcao.GravaSec(chave, cdsCadDescontoTab, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab, (Sender as TCBitBtn), '');
  if (sender as TCBitBtn).Name = 'BtnSalvarTab' then
    BtnNovoTab.Click
  else
    if (sender as TCBitBtn).Name = 'BtnNovoTab' then
      cdsCadDescontoTabidProduto.AsString := idProd;
  DBEprMedido.SetFocus;
end;

procedure TFrmCadDesconto.cdsCadDescontoTabAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

end;

procedure TFrmCadDesconto.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.Name = 'cdsPadrao') and (DataSet.State = dsInsert) then
    DataSet.FieldByName('ImpObrigatoria').AsString := 'S';
end;

procedure TFrmCadDesconto.DBEidCadDescontoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  AbreTabSecundaria;
end;

procedure TFrmCadDesconto.DBEidProdutoExit(Sender: TObject);
var
  idProd : string;
begin
  inherited;
  if (trim(DBEidProduto.Text) <> '') then
  begin
    idProd := DBEidProduto.Text;
    cdsCadDescontoTab.Cancel;
    cdsCadDescontoTab.Filtered := false;
    cdsCadDescontoTab.Filter := 'idProduto = ' + idProd;
    cdsCadDescontoTab.Filtered := true;
    if cdsCadDescontoTab.IsEmpty then
    begin
      cdsCadDescontoTab.Append;
      cdsCadDescontoTabidProduto.AsString := idProd;
    end;
  end;
end;

procedure TFrmCadDesconto.DBEprMedidoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCadDescontoTab, [DBEidCadDesconto,DBEidProduto,DBEprMedido]);
end;

procedure TFrmCadDesconto.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
end;

procedure TFrmCadDesconto.dsCadDescontoTabStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarTab, BtnCancelarTab, BtnExcluirTab, BtnNovoTab);
end;

procedure TFrmCadDesconto.dspCadDescontoTabBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
end;

procedure TFrmCadDesconto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadDesconto := nil;
end;

procedure TFrmCadDesconto.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCadDescontoTab;
  chave[0] := DBEidCadDesconto;
  foco := DBEidCadDesconto;
  tab_chave := 'CadDesconto';
end;

end.
