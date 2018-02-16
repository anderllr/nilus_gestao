unit uFrmCadSerContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, DB, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, CGroupBox,
  CDBCheckBox, CDBMemo, Grids, DBGrids, CDBGrid, DBXCommon, CFind, EditAlign,
  CEdit, CDBRadioGroup, Math, System.Actions;

type
  TFrmCadSerContrato = class(TFrmCadPadraoEmpFiscal)
    CGroupBox1: TCGroupBox;
    sdsContratoVenda: TSQLDataSet;
    CLabel7: TCLabel;
    DBEdtSerContrato: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtVencimento: TCDBEdit;
    DBEstSerContrato: TCDBEdit;
    CLabel14: TCLabel;
    DBEidSerContrato: TCDBEdit;
    CLabel5: TCLabel;
    CBitBtn3: TCBitBtn;
    DBEidFornecedor: TCDBEdit;
    lblCliFor: TCLabel;
    DBEvlContratoVenda: TCDBEdit;
    CLabel2: TCLabel;
    CGroupBox2: TCGroupBox;
    DBMobsSerContrato: TCDBMemo;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel11: TCLabel;
    CLabel12: TCLabel;
    DBEidSerTpContrato: TCDBEdit;
    CLabel13: TCLabel;
    DBEidComissionado: TCDBEdit;
    CLabel15: TCLabel;
    DBEvlComissao: TCDBEdit;
    LookSerTpContrato: TCLookUp;
    LookRepresen: TCLookUp;
    CBitBtn2: TCBitBtn;
    LookLancamento: TCLookUp;
    CLabel16: TCLabel;
    LookIndice: TCLookUp;
    DBEidIndice: TCDBEdit;
    CLabel17: TCLabel;
    DBEdiaBase: TCDBEdit;
    CLabel30: TCLabel;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidSerContrato: TIntegerField;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraodtSerContrato: TSQLTimeStampField;
    cdsPadraoidSerTpContrato: TSmallintField;
    cdsPadraodtVencimento: TSQLTimeStampField;
    cdsPadraodiaBase: TByteField;
    cdsPadraovlSerContrato: TFMTBCDField;
    cdsPadraoidIndice: TSmallintField;
    cdsPadraoidComissionado: TIntegerField;
    cdsPadraoprComissao: TFMTBCDField;
    cdsPadraovlComissao: TFMTBCDField;
    cdsPadraogeraNFSe: TStringField;
    cdsPadraoidServico: TIntegerField;
    cdsPadraogeraNFe: TStringField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraostSerContrato: TStringField;
    CLabel10: TCLabel;
    DBEprComissao: TCDBEdit;
    cdsPadraoobsSerContrato: TStringField;
    DBCKmostraContas: TCDBCheckBox;
    DBEidServico: TCDBEdit;
    LookProdMedidaSer: TCLookUp;
    LookServico: TCLookUp;
    CLabel3: TCLabel;
    CDBCheckBox1: TCDBCheckBox;
    LookFornecedor: TCLookUp;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidSerContratoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidSerContratoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vlAnterior : string;
  public
    { Public declarations }
  end;

var
  FrmCadSerContrato: TFrmCadSerContrato;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmCadPadrao, uDmFind,
  uFrmPesSerContrato;

{$R *.dfm}

procedure TFrmCadSerContrato.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesSerContrato, FrmPesSerContrato);
  FrmPesSerContrato.idEmpresa := StrToInt(DBEidEmpresa.Text);
  FrmPesSerContrato.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
  FrmPesSerContrato.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesSerContrato.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;

      //modifica a empresa se for o caso
      if (DBEidEmpresa.Text <> FrmPesSerContrato.cdsGrid.FieldByName('idEmpresa').AsString) or
         (DBEidCadEmpresa.Text <> FrmPesSerContrato.cdsGrid.FieldByName('idCadEmpresa').AsString) then
      begin
        if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
          Edit;
        cdsEmpresa.FieldByName('idEmpresa').Value := FrmPesSerContrato.cdsGrid.FieldByName('idEmpresa').Value;
        cdsEmpresa.FieldByName('idCadEmpresa').Value := FrmPesSerContrato.cdsGrid.FieldByName('idCadEmpresa').Value;
      end;

      FieldByName('idFornecedor').Value := FrmPesSerContrato.cdsGrid.FieldByName('idFornecedor').Value;
      FieldByName('idSerContrato').Value := FrmPesSerContrato.cdsGrid.FieldByName('idSerContrato').Value;
      DBEidSerContrato.SetFocus;
      DBEidSerContratoExit(DBEidSerContrato);
    end;
  end;
end;

procedure TFrmCadSerContrato.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadSerContrato.DBEidSerContratoExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEidSerContrato.Text) <> '' then
    BuscaChave(tabelas[0], chave);
// AbreTabSecundaria;
end;


procedure TFrmCadSerContrato.DBEidSerContratoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadSerContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadSerContrato := nil;
end;

procedure TFrmCadSerContrato.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;

  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidSerContrato;

 // foco := DBEidFornecedor;
  foco := DBEidSerContrato;
  tab_chave := 'SerContrato';
  situacao := 'stSerContrato';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadSerContrato.FormShow(Sender: TObject);
begin
  inherited;
  Height := 440;
  Width := 725;
end;

end.
