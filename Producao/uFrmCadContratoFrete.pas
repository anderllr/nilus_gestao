unit uFrmCadContratoFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, CDBRadioGroup;

type
  TFrmCadContratoFrete = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    sdsContratoFrete: TSQLDataSet;
    CLabel7: TCLabel;
    DBEdtEmissao: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtEncerramento: TCDBEdit;
    DBEstContratoFrete: TCDBEdit;
    CLabel14: TCLabel;
    DBEidContratoFrete: TCDBEdit;
    CLabel5: TCLabel;
    LookCliente: TCLookUp;
    CBitBtn3: TCBitBtn;
    DBEidFornecedor: TCDBEdit;
    lblCliFor: TCLabel;
    LookSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    DBEidSafra: TCDBEdit;
    CLabel23: TCLabel;
    DBEvlContratoFrete: TCDBEdit;
    CLabel2: TCLabel;
    CGroupBox2: TCGroupBox;
    DBMobsContratoFrete: TCDBMemo;
    DBRGtpContratoFrete: TCDBRadioGroup;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidContratoFreteExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidContratoFreteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actNovoExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadContratoFrete: TFrmCadContratoFrete;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao, uDmFind,
  uFrmPesContratoFrete;

{$R *.dfm}

procedure TFrmCadContratoFrete.actExcluirExecute(Sender: TObject);
begin
  inherited;
  DBEidContratoFreteExit(DBEidContratoFrete);
end;

procedure TFrmCadContratoFrete.actNovoExecute(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdtEmissao, DBEvlContratoFrete, DBEidFornecedor, DBEidSafra,
                         DBRGtpContratoFrete, DBMobsContratoFrete], false);
end;

procedure TFrmCadContratoFrete.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesContratoFrete, FrmPesContratoFrete);
  FrmPesContratoFrete.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesContratoFrete.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesContratoFrete.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesContratoFrete.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesContratoFrete.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesContratoFrete.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesContratoFrete.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesContratoFrete.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idContratoFrete').Value := FrmPesContratoFrete.cdsGrid.FieldByName('idContratoFrete').Value;
      DBEidContratoFrete.SetFocus;
      DBEidContratoFreteExit(DBEidContratoFrete);
    end;
  end;

end;

procedure TFrmCadContratoFrete.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
begin
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  if trim(DBEdtEncerramento.Text) <> '' then
    if messagedlg('Deseja realmente encerrar este contrato de frete?', mtconfirmation, [mbyes,mbno], 0) = mryes then
      cdsPadrao.FieldByName('stContratoFrete').AsString := 'ENCERRADO'
    else
      cdsPadrao.FieldByName('dtEncerramento').Clear;

  //marca a transação
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
  begin
    dmPadrao.dbConexao.CommitFreeAndNil(t);
    DBEidContratoFreteExit(DBEidContratoFrete);
  end
  else
    dmPadrao.dbConexao.RollbackFreeAndNil(t);
end;

procedure TFrmCadContratoFrete.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    DataSet.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
    DataSet.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
    DataSet.FieldByName('tpContratoFrete').AsString := 'T';
  end;

end;

procedure TFrmCadContratoFrete.DBEidContratoFreteExit(Sender: TObject);
begin
  inherited;
  if not (BuscaChave(tabelas[0], chave)) then
    if trim(DBEidContratoFrete.Text) <> '' then
    begin
      messagedlg('Contrato não encontrado! Deixe em branco para novo!', mtwarning, [mbok], 0);
      DBEidContratoFrete.Clear;
      DBEidContratoFrete.SetFocus;
      exit;
    end;

  funcao.SomenteLeitura([DBEdtEncerramento], (cdsPadrao.State in [dsInsert]) or
                        (cdsPadrao.FieldByName('stContratoFrete').AsString <> 'ATIVO'));
  funcao.SomenteLeitura([DBEdtEmissao, DBEvlContratoFrete, DBEidFornecedor, DBEidSafra,
                         DBRGtpContratoFrete, DBMobsContratoFrete],
                         cdsPadrao.FieldByName('stContratoFrete').AsString <> 'ATIVO');

  BtnExcluir.Visible := cdsPadrao.FieldByName('stContratoFrete').AsString = 'ATIVO';
end;


procedure TFrmCadContratoFrete.DBEidContratoFreteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadContratoFrete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadContratoFrete := nil;
end;

procedure TFrmCadContratoFrete.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;

  chave[0] := DBEidContratoFrete;
  foco := DBEidContratoFrete;
  tab_chave := 'ContratoFrete';
  situacao := 'stContratoFrete';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadContratoFrete.FormShow(Sender: TObject);
begin
  inherited;
  Height := 480;
  Width := 595;
  funcao.SomenteLeitura([DBEdtEncerramento], true);
end;

end.
