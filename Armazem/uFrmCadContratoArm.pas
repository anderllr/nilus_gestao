unit uFrmCadContratoArm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CComboBox, DBXCommon;

type
  TFrmCadContratoArm = class(TFrmCadPadrao)
    sdsCadGeral: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    DBEdescContratoArm: TCDBEdit;
    CLabel2: TCLabel;
    actCadCidade: TAction;
    CLabel1: TCLabel;
    DBEnrContratoArm: TCDBEdit;
    CLabel6: TCLabel;
    DBEqtProduto: TCDBEdit;
    DBMobsContratoArm: TCDBMemo;
    CLabel8: TCLabel;
    BtnCadProduto: TCBitBtn;
    CLabel4: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    CLabel5: TCLabel;
    DBEvlContratoArm: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtContratoArm: TCDBEdit;
    CLabel9: TCLabel;
    DBCBtpContratoArm: TCDBComboBox;
    f: TBevel;
    CLabel10: TCLabel;
    DBEidContratoArm: TCDBEdit;
    CLabel11: TCLabel;
    DBEstContratoArm: TCDBEdit;
    CLabel12: TCLabel;
    DBEvlFrete: TCDBEdit;
    CLabel3: TCLabel;
    DBEidCadGeral: TCDBEdit;
    DBEidCadAdicional: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    FindProduto: TCFind;
    procedure DBEidCadGeralKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidCadAdicionalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdescContratoArmEnter(Sender: TObject);
    procedure DBEnrContratoArmExit(Sender: TObject);
    procedure DBEnrContratoArmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadContratoArm: TFrmCadContratoArm;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesContratoArm, uDmPadrao, uFrmPadrao,
  uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmCadContratoArm.actPesquisarExecute(Sender: TObject);
begin
  inherited;
    Application.CreateForm(TFrmPesContratoArm, FrmPesContratoArm);
    FrmPesContratoArm.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoArm.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('nrContratoArm').Value := FrmPesContratoArm.cdsGrid.FieldByName('nrContratoArm').Value;
        DBEnrContratoArm.SetFocus;
        DBEnrContratoArmExit(DBEnrContratoArm);
      end;
    end;
end;

procedure TFrmCadContratoArm.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
  nrContratoArm,sql : string;
begin
  if (trim(cdsPadrao.FieldByName('nrContratoArm').AsString) = '') then
  begin
    messagedlg('Você deve informar o número do contrato!', mtwarning, [mbok], 0);
    exit;
  end;
  nrContratoArm := cdsPadrao.FieldByName('nrContratoArm').AsString;

  if (trim(cdsPadrao.FieldByName('nrContratoArm').AsString) = '') then
  begin
     with cdsLookUp do
     begin
      Active := False;
      CommandText := 'SELECT MAX(nrContratoArm) nrContratoArm FROM ContratoArm WHERE ISNUMERIC(nrContratoArm) > 0 AND idContratoArm = ' + quotedstr(cdsPadrao.FieldByName('nrContratoArm').AsString);
      Active := True;
      if (FieldByName('nrContratoArm').IsNull) or (FieldByName('nrContratoArm').value = 0) then
        cdsPadrao.FieldByName('nrContratoArm').Value := '1'
      else
        cdsPadrao.FieldByName('nrContratoArm').Value := FieldByName('nrContratoArm').value + 1;
      Active := False;
    end; //fim do with cdsLookUp do
  end;
  //======================================================================================================

   // Auto - Incremento ==================================================================
   if (cdsPadrao.State in [dsInsert]) then
   begin
     sql := 'SELECT MAX(idContratoArm) AS idContratoArm FROM ContratoArm ';
     With FrmPrincipal.ExecutaSQLRet([],'',sql) do
     begin
       if (cdsPadrao.State in [dsInsert]) then
         cdsPadrao.FieldByName('idContratoArm').AsInteger :=  (FieldByName('idContratoArm').AsInteger + 1);
     end;
   end;
   //=====================================================================================

  //********************************************************************************//
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação

//  dmPadrao.dbConexao.MultipleTransactionsSupported := true;
//  dmPadrao.dbConexao.TransactionsSupported

  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    GravaChave(1, '', nil);
    inherited;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if frmPrincipal.erro = 0 then
    dmPadrao.dbConexao.CommitFreeAndNil(t)
  else
  begin
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
    //retorna o número anterior
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('nrContratoArm').AsString := nrContratoArm;
  end;
end;


procedure TFrmCadContratoArm.DBEdescContratoArmEnter(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.State in [dsInsert,dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadContratoArm.DBEidCadAdicionalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
        FieldByName('idCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadCliente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmCadContratoArm.DBEidCadGeralKeyDown(Sender: TObject; var Key: Word;
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
        FieldByName('idCadGeral').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadAdicional').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadAdicional') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmCadContratoArm.DBEnrContratoArmExit(Sender: TObject);
begin
  inherited;
  if (cdsPadrao.State in [dsInsert,dsEdit]) then
  begin
    with frmPrincipal.ExecutaSQLRet([DBEnrContratoArm],'','ContratoArm') do
    begin
      if (FieldByName('idContratoArm').AsInteger > 0) then
      begin
        cdsPadrao.FieldByName('idContratoArm').AsInteger := FieldByName('idContratoArm').AsInteger;
        BuscaChave(tabelas[0],chave[0]);
      end;
    end;
  end;
  if (cdsPadrao.State in [dsInsert]) then
    cdsPadrao.FieldByName('tpContratoArm').AsString := 'ENTRADA';
end;

procedure TFrmCadContratoArm.DBEnrContratoArmKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadContratoArm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadContratoArm := nil;
end;

procedure TFrmCadContratoArm.FormCreate(Sender: TObject);
begin
  inherited;
  tabelas[0] := cdsPadrao;
  chave[0] := DBEidContratoArm;
  foco := DBEnrContratoArm;
  tab_chave := 'ContratoArm';
  situacao := 'stContratoArm';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Height := 367;
  Width := 512;

end;

end.
