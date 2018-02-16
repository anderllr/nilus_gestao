unit uFrmDistribuiNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, DB, SqlExpr, DBClient, Provider,
  ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  Grids, DBGrids, CDBGrid, CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, CLookUp,
  EditAlign, CEdit, System.Actions;

type
  TFrmDistribuiNF = class(TFrmPadraoPesquisa)
    CLabel5: TCLabel;
    DBEidPedido: TCDBEdit;
    CLabel11: TCLabel;
    DBEidFornecedor: TCDBEdit;
    LookRazao: TCLookUp;
    cdsGrididCadEmpresa: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididFornecedor: TIntegerField;
    cdsGrididNfe: TIntegerField;
    CLabel2: TCLabel;
    DBEidProduto: TCDBEdit;
    CLookUp: TCLookUp;
    cdsGrididPedido: TIntegerField;
    cdsGrididProduto: TIntegerField;
    cdsGridqtProduto: TFloatField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidPedido: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoqtde: TFloatField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    BtnConfirmar: TCBitBtn;
    CLabel3: TCLabel;
    EDQtdeParc: TCEdit;
    cdsGridqtTotal: TAggregateField;
    cdsTmp: TClientDataSet;
    sdsTmp: TSQLDataSet;
    dspTmp: TDataSetProvider;
    cdsTmpidEmpresa: TIntegerField;
    cdsTmpidCadEmpresa: TIntegerField;
    cdsTmpidPedido: TIntegerField;
    cdsTmpidProduto: TIntegerField;
    cdsTmpidFornecedor: TIntegerField;
    cdsTmpqtde: TFMTBCDField;
    cdsGridqtde: TFloatField;
    CLabel4: TCLabel;
    cdsTmpidNfE: TIntegerField;
    CLabel6: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    cdsTmpidDocSerie: TStringField;
    cdsGrididDocSerie: TStringField;
    EDNfE: TCEdit;
    BtnGerar: TCBitBtn;
    cdsGrididMaquina: TIntegerField;
    cdsGrididPedidoProd: TIntegerField;
    cdsTmpidPedidoProd: TSmallintField;
    cdsTmpidMaquina: TIntegerField;
    DBEqtProduto: TCDBEdit;
    CLabel1: TCLabel;
    CLabel7: TCLabel;
    DBEqtTotal: TCDBEdit;
    CDBEdit2: TCDBEdit;
    CLabel8: TCLabel;
    cdsGridqtSaldo: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure InsereTabela;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure LimpaCampos;
    procedure BtnGerarClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure EDNfEExit(Sender: TObject);
    procedure cdsGridCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    result : Boolean;
  end;

var
  FrmDistribuiNF: TFrmDistribuiNF;

implementation

uses uFrmPesRecepcao, uFuncao, uDmPadrao, uFrmPrincipal, uFrmSelNfE, uDmFind;

{$R *.dfm}

procedure TFrmDistribuiNF.BtnConfirmarClick(Sender: TObject);
var
  msg, sql, idFornecedor, idDocSerie : string;
begin
  idFornecedor := FrmPesRecepcao.cdsDistribuiNfidFornecedor.AsString;
  idDocSerie := FrmPesRecepcao.cdsDistribuiNfidDocSerie.AsString;
  inherited;

  if trim(EDQtdeParc.Text) = '' then
    msg := msg + 'Você deve informar a quantidade!' + #13; //esse #13 dá um Enter na mensagem pula a linha

  sql := 'SELECT COUNT(*) qtde FROM Nfe WHERE idEmpresa = ' + FrmPesRecepcao.cdsEmpresaidEmpresa.AsString +
         ' AND idCadEmpresa = ' + FrmPesRecepcao.cdsDistribuiNfidCadEmpresa.AsString +
         ' AND idFornecedor = ' + FrmPesRecepcao.cdsDistribuiNfidFornecedor.AsString +
         ' AND idCadFornecedor = 1 ' +
         ' AND idNFE = ' + EDNfE.Text +
         ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text);

  if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('qtde').AsInteger > 0 then
    msg := 'Nota fiscal já existente!';


  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  if not (FrmPesRecepcao.cdsDistribuiNf.isEmpty) then
  begin
    cdsGrid.IndexFieldNames := 'idFornecedor;idNfe; idDocSerie';
    if cdsGrid.FindKey([StrToInt(DBEidFornecedor.Text), StrToInt(EDNfE.Text), DBEidDocSerie.Text]) then
      cdsGrid.Edit
    else
      cdsGrid.Append;
    cdsGrididEmpresa.AsInteger := FrmPesRecepcao.cdsEmpresaidEmpresa.AsInteger;
    cdsGrididCadEmpresa.AsInteger := FrmPesRecepcao.cdsDistribuiNfidCadEmpresa.AsInteger;
    cdsGrididPedido.AsInteger := FrmPesRecepcao.cdsDistribuiNfidPedido.AsInteger;
    cdsGrididFornecedor.AsString := FrmPesRecepcao.cdsDistribuiNfidFornecedor.AsString;
    cdsGrididProduto.AsInteger := FrmPesRecepcao.cdsDistribuiNfidProduto.AsInteger;
    cdsGridqtde.AsString := EDQtdeParc.text;
    cdsGrididNfe.AsString := EDNfE.Text;
    cdsGrididDocSerie.AsString := DBEidDocSerie.Text;
    cdsGrididPedidoProd.AsInteger := FrmPesRecepcao.cdsDistribuiNfidPedidoProd.AsInteger;
    if FrmPesRecepcao.cdsDistribuiNfidMaquina.AsInteger > 0 then
      cdsGrididMaquina.AsInteger := FrmPesRecepcao.cdsDistribuiNfidMaquina.AsInteger;
    cdsGrid.Post;
  end;
  LimpaCampos;
  FrmPesRecepcao.cdsDistribuiNfidFornecedor.AsString := idFornecedor;
  FrmPesRecepcao.cdsDistribuiNfidDocSerie.AsString := idDocSerie;
//  DBEidFornecedor.Text := idFornecedor;
  EDNfE.SetFocus;
end;

procedure TFrmDistribuiNF.BtnFecharClick(Sender: TObject);

begin
  inherited;

  Close;
end;

procedure TFrmDistribuiNF.BtnGerarClick(Sender: TObject);
var
  sql, soma : string;
begin
  inherited;
  if cdsGrid.RecordCount = 0 then
  begin
    messagedlg('Sem dados informados!', mtwarning, [mbok], 0);
    exit;
  end;
  InsereTabela;
  cdsGrid.IndexFieldNames := '';
  Application.CreateForm(TFrmSelNfE, TForm(FrmSelNfE));
  FrmSelNfe.ShowModal;
  close;
end;

procedure TFrmDistribuiNF.cdsGridCalcFields(DataSet: TDataSet);
begin
  inherited;
  if FrmPesRecepcao.cdsDistribuiNfqtde.Value > 0 then
    if cdsGridqtTotal.Value > 0 then
      cdsGridqtSaldo.Value := FrmPesRecepcao.cdsDistribuiNfqtde.Value - cdsGridqtTotal.Value
    else
      cdsGridqtSaldo.Value := 0
  else
    cdsGridqtSaldo.Value := 0;

end;

procedure TFrmDistribuiNF.DBEidFornecedorExit(Sender: TObject);
begin
  inherited;
  EDQtdeParc.Clear;
end;

procedure TFrmDistribuiNF.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmDistribuiNF.EDNfEExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidFornecedor.Text) <> '') and (trim(DBEidDocSerie.Text) <> '') and (trim(EDNfE.Text) <> '') then
  begin
    //verifica se já existe no grid
    cdsGrid.IndexFieldNames := 'idFornecedor;idNfe; idDocSerie';
    if cdsGrid.FindKey([StrToInt(DBEidFornecedor.Field.AsString), StrToInt(EDNfE.Text), DBEidDocSerie.Text]) then
      EDQtdeParc.Value := cdsGridqtde.AsFloat;
    cdsGrid.IndexFieldNames := '';
  end;

end;

procedure TFrmDistribuiNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsGrid.IndexFieldNames := '';
  Action := caFree;
end;

procedure TFrmDistribuiNF.FormCreate(Sender: TObject);
begin
  inherited;
  Height := 397;
  Width := 655;
  cdsGrid.CreateDataSet;
  cdsPadrao.CreateDataSet;
end;

procedure TFrmDistribuiNF.FormShow(Sender: TObject);
begin
  inherited;
//  with cdsGrid do
//  begin
//    Filtered := false;
//    Filter := 'idPedido = ' + IntToStr(FrmPesRecepcao.cdsDistribuiNfidProduto.AsInteger);
//    Filtered := true;
//  end;
  DBEidFornecedor.SetFocus;
end;

procedure TFrmDistribuiNF.InsereTabela;
var
  sql : string;
begin
  sql := 'DELETE FROM tmpGeraNfE';
  dmPadrao.dbConexao.ExecuteDirect(sql);

  with cdsGrid do
  begin
    Filtered := false;
    cdsTmp.Active := false;
    cdsTmp.Active := true;

    First;
    while not eof do
    begin
      cdsTmp.Append;
      cdsTmpidEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
      cdsTmpidCadEmpresa.AsInteger := FieldByName('idCadEmpresa').AsInteger;
      cdsTmpidPedido.AsInteger := FieldByName('idPedido').AsInteger;
      cdsTmpidFornecedor.AsInteger := FieldByName('idFornecedor').AsInteger;
      cdsTmpidProduto.AsInteger := FieldByName('idProduto').AsInteger;
      cdsTmpqtde.AsFloat := FieldByName('qtde').AsFloat;
      cdsTmpidNfE.AsInteger := FieldByName('idNfE').AsInteger;
      cdsTmpidDocSerie.AsString := FieldByName('idDocSerie').AsString;
      cdsTmpidPedidoProd.AsInteger := FieldByName('idPedidoProd').AsInteger;
      if FieldByName('idMaquina').AsInteger > 0 then
      cdsTmpidMaquina.AsInteger := FieldByName('idMaquina').AsInteger;
      cdsTmp.Post;
      cdsTmp.ApplyUpdates(0);
      Next;
    end;
  end;
end;

procedure TFrmDistribuiNF.LimpaCampos;
begin
  DBEidFornecedor.Field.Clear;
  EDQtdeParc.Clear;
  EDNfE.Clear;
  DBEidDocSerie.Field.Clear;
end;

end.

