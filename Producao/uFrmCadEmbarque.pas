unit uFrmCadEmbarque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, CDBRadioGroup, Math, System.Actions;

type
  TFrmCadEmbarque = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    sdsEmbarque: TSQLDataSet;
    CLabel7: TCLabel;
    DBEdtEmbarque: TCDBEdit;
    DBEstEmbarque: TCDBEdit;
    CLabel14: TCLabel;
    DBEidEmbarque: TCDBEdit;
    CLabel5: TCLabel;
    CGroupBox4: TCGroupBox;
    DBEidContratoVenda: TCDBEdit;
    CLabel12: TCLabel;
    CGroupBox7: TCGroupBox;
    CLabel23: TCLabel;
    DBEqtEmbarque: TCDBEdit;
    CLabel6: TCLabel;
    DBEidClassificador: TCDBEdit;
    LookProdutor: TCLookUp;
    LookEstadoEmpresa: TCLookUp;
    CGroupBox3: TCGroupBox;
    CLabel1: TCLabel;
    DBEidContratoCompra: TCDBEdit;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    CLabel13: TCLabel;
    LookDescCfop: TCLookUp;
    LookIdCfop: TCLookUp;
    CLabel2: TCLabel;
    LookNatureza: TCLookUp;
    DBEidNatureza: TCDBEdit;
    CLabel11: TCLabel;
    DBEprIcms: TCDBEdit;
    CLabel18: TCLabel;
    CLabel15: TCLabel;
    LookTributacao: TCLookUp;
    CLabel47: TCLabel;
    DBEidCSTPis: TCDBEdit;
    LookPis: TCLookUp;
    CLabel48: TCLabel;
    DBEidCSTCofins: TCDBEdit;
    CLookUp5: TCLookUp;
    DBEidStTributaria: TCDBEdit;
    CLabel16: TCLabel;
    DBEobsEmbarque: TCDBEdit;
    CLabel17: TCLabel;
    DBEdescLocalEmbarque: TCDBEdit;
    LookIdCliente: TCLookUp;
    CLabel19: TCLabel;
    DBEprReducao: TCDBEdit;
    LookInscricaoVenda: TCLookUp;
    LookCnpjVenda: TCLookUp;
    LookNomeCliente: TCLookUp;
    lookqtContratoVenda: TCLookUp;
    lookRetiradoVenda: TCLookUp;
    CLookUp1: TCLookUp;
    lookEnderecoVenda: TCLookUp;
    lookCidadeVenda: TCLookUp;
    lookEstadoVenda: TCLookUp;
    lookIdProdutoVenda: TCLookUp;
    lookProdutoVenda: TCLookUp;
    lookvlProduto: TCLookUp;
    CLabel20: TCLabel;
    CLabel21: TCLabel;
    LookProdMedida: TCLookUp;
    LookProdutoCompra: TCLookUp;
    LookValorProdutoCompra: TCLookUp;
    CLookUp6: TCLookUp;
    LookEstadoCompra: TCLookUp;
    LookCidadeCompra: TCLookUp;
    LookEnderecoCompra: TCLookUp;
    CLookUp3: TCLookUp;
    CLookUp2: TCLookUp;
    CLookUp4: TCLookUp;
    lookInscricaoCompra: TCLookUp;
    LookCnpjCompra: TCLookUp;
    lookFornecedor: TCLookUp;
    CLabel22: TCLabel;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLookUp7: TCLookUp;
    CLabel26: TCLabel;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidEmbarque: TIntegerField;
    cdsPadraodtEmbarque: TSQLTimeStampField;
    cdsPadraoidContratoVenda: TStringField;
    cdsPadraoidNatureza: TSmallintField;
    cdsPadraodescLocalEmbarque: TStringField;
    cdsPadraoidStTributaria: TSmallintField;
    cdsPadraoprReducao: TFMTBCDField;
    cdsPadraoprIcms: TFMTBCDField;
    cdsPadraoidCSTPis: TSmallintField;
    cdsPadraoidCSTCofins: TSmallintField;
    cdsPadraoobsEmbarque: TStringField;
    cdsPadraostEmbarque: TStringField;
    cdsPadraoidContratoCompra: TStringField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    lblCliFor: TCLabel;
    DBEidFornecedor: TCDBEdit;
    CLookUp8: TCLookUp;
    CLookUp9: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    CLabel27: TCLabel;
    cdsPadraoidCadFornecedor: TSmallintField;
    cdsPadraoidClassificador: TIntegerField;
    cdsPadraoqtEmbarque: TFMTBCDField;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidEmbarqueExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidEmbarqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoCompraEnter(Sender: TObject);
    procedure DBEidContratoCompraExit(Sender: TObject);
    procedure DBEidNaturezaExit(Sender: TObject);
    procedure DBEidContratoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    vlAnterior : string;
    Salvar, browser : Boolean;
  public
    { Public declarations }
  end;

var
  FrmCadEmbarque: TFrmCadEmbarque;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao, uDmFind,
     uFrmPesContratoVenda, uFrmPesEmbarque, uFrmPesContratoCompra,
  uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmCadEmbarque.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesEmbarque, FrmPesEmbarque);
  FrmPesEmbarque.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesEmbarque.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesEmbarque.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesEmbarque.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesEmbarque.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesEmbarque.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesEmbarque.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesEmbarque.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idEmbarque').Value := FrmPesEmbarque.cdsGrid.FieldByName('idEmbarque').Value;
      DBEidEmbarque.SetFocus;
      DBEidEmbarqueExit(DBEidEmbarque);
    end;
  end;

end;

procedure TFrmCadEmbarque.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  ins, ok : boolean;
  tpFinanceiro, sql, tp : string;
  vlUnitario : currency;
begin
  ok := False;
  ins := false;
  vlUnitario := 0;
  dmPadrao.dbConexao.CloseDataSets;
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if cdsPadrao.State = dsInsert then
      ins := true;
    GravaChave(1, '', nil);
    inherited;

  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  if frmPrincipal.erro = 0 then
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    Salvar := True;
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
 DBEidEmbarqueExit(DBEidEmbarque);
end;

procedure TFrmCadEmbarque.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('dtEmbarque').AsDateTime := date;
    DataSet.FieldByName('stEmbarque').AsString := 'ATIVO';
  end;
end;

procedure TFrmCadEmbarque.DBEidContratoCompraEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TFrmCadEmbarque.DBEidContratoCompraExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> (Sender as TCustomEdit).Text then
    cdsPadrao.FieldByName('descLocalEmbarque').AsString := trim(LookEnderecoCompra.Caption) + ' - ' + trim(LookCidadeCompra.Caption) + ' - ' + LookEstadoCompra.Caption;
end;

procedure TFrmCadEmbarque.DBEidContratoCompraKeyDown(Sender: TObject;
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
    FrmPesContratoCompra.idFornecedor := cdsPadraoidFornecedor.AsInteger;
    FrmPesContratoCompra.idCadFornecedor := cdsPadraoidCadFornecedor.AsInteger;
    FrmPesContratoCompra.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoCompra.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idFornecedor').Value;
        FieldByName('idCadFornecedor').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idCadFornecedor').Value;
        FieldByName('idContratoCompra').Value := FrmPesContratoCompra.cdsGrid.FieldByName('idContratoCompra').Value;
        DBEidContratoCompra.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmCadEmbarque.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  sql : String;
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadraoidCliente.AsInteger;
    FrmPesContratoVenda.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idContratoVenda').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        DBEidContratoVenda.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmCadEmbarque.DBEidEmbarqueExit(Sender: TObject);
begin
  inherited;
  if not (BuscaChave(tabelas[0], chave)) then
    if trim(DBEidEmbarque.Text) <> '' then
    begin
      messagedlg('Embarque não encontrado! Deixe em branco para novo!', mtwarning, [mbok], 0);
      DBEidEmbarque.Clear;
      DBEidEmbarque.SetFocus;
      exit;
    end;
end;


procedure TFrmCadEmbarque.DBEidEmbarqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadEmbarque.DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmCadEmbarque.DBEidFornecedorKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmCadEmbarque.DBEidNaturezaExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (vlAnterior <> (Sender as TCustomEdit).Text) and ((Sender as TCustomEdit).Text <> '') and
     (DBEidContratoVenda.Text <> '')  then
  begin
    sql := 'EXEC spRetProdImposto ' + trim(lookIdProdutoVenda.Caption) + ', ' + funcao.RetornaValorEField(DBEidNatureza, 3) + ', ' +
           funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
           ', ' + Funcao.TiraVirgula(trim(lookidCliente.Caption)) + ', 1, NULL';
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      cdsPadrao.FieldByName('idStTributaria').AsInteger := FieldByName('idStTributaria').AsInteger;
      cdsPadrao.FieldByName('prIcms').AsFloat := FieldByName('prIcms').AsFloat;
      cdsPadrao.FieldByName('prReducao').AsFloat := FieldByName('prReducao').AsFloat;
      cdsPadrao.FieldByName('idCSTPis').AsInteger := FieldByName('idCSTPis').AsInteger;
      cdsPadrao.FieldByName('idCSTCofins').AsInteger := FieldByName('idCSTCofins').AsInteger;
    end;
  end;

end;

procedure TFrmCadEmbarque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadEmbarque := nil;
end;

procedure TFrmCadEmbarque.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidEmbarque;
  foco := DBEidEmbarque;
  tab_chave := 'Embarque';
end;

procedure TFrmCadEmbarque.FormShow(Sender: TObject);
begin
  inherited;
  Height := 635;
  Width := 670;
end;

end.
