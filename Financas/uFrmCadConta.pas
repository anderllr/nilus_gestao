unit uFrmCadConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CPanelGradient, CLookUp, CFind, frxDesgn, frxClass, CDBCheckBox,
  frxDMPExport, System.Actions, frxDBSet, System.ImageList;

type
  TfrmCadConta = class(TFrmCadPadraoGrid)
    sdsConta: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidConta: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescConta: TCDBEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    DBEstConta: TCDBEdit;
    sdsContaEmpresa: TSQLDataSet;
    dspContaEmpresa: TDataSetProvider;
    cdsContaEmpresa: TClientDataSet;
    dsContaEmpresa: TDataSource;
    TabEmpresa: TTabSheet;
    CGroupBox3: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox4: TCGroupBox;
    CGroupBox5: TCGroupBox;
    BtnSalvarInd: TCBitBtn;
    BtnCancelarInd: TCBitBtn;
    BtnExcluirInd: TCBitBtn;
    BtnNovoInd: TCBitBtn;
    CLabel8: TCLabel;
    DBEidBanco: TCDBEdit;
    LookBanco: TCLookUp;
    CBitBtn1: TCBitBtn;
    CLabel6: TCLabel;
    DBEidAgencia: TCDBEdit;
    CLabel7: TCLabel;
    DBEidContaCorrente: TCDBEdit;
    CLabel9: TCLabel;
    DBEvlLimite: TCDBEdit;
    FindBanco: TCFind;
    CLabel3: TCLabel;
    DBEidBancoE: TCDBEdit;
    CLabel4: TCLabel;
    DBEidAgenciaE: TCDBEdit;
    CLabel5: TCLabel;
    DBEidContaCorrenteE: TCDBEdit;
    CGroupBox6: TCGroupBox;
    FindEmpresa: TCFind;
    CLabel10: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    cdsEmpresa: TClientDataSet;
    cdsContaEmpresaidEmpresa: TIntegerField;
    cdsContaEmpresadescEmpresa: TStringField;
    cdsContaEmpresaidConta: TIntegerField;
    FindPlanoContaGerencial: TCFind;
    FindPlanoContaFiscal: TCFind;
    cdsContaEmpresacdPlanoContaF: TIntegerField;
    cdsContaEmpresacdPlanoContaG: TIntegerField;
    CGroupBox8: TCGroupBox;
    BtnGravaConfig: TCBitBtn;
    frxReport1: TfrxReport;
    BtnConfigCopia: TCBitBtn;
    CGroupBox9: TCGroupBox;
    DBCKgeradoSeq: TCDBCheckBox;
    DBEultidCheque: TCDBEdit;
    CLabel11: TCLabel;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    rptCheque: TfrxDBDataset;
    cdsCheque: TClientDataSet;
    dsCheque: TDataSource;
    dspCheque: TDataSetProvider;
    sdsCheque: TSQLDataSet;
    BtnConfigLista: TCBitBtn;
    FindPlanoContaDeb: TCFind;
    FindPlanoContaCre: TCFind;
    CGroupBox7: TCGroupBox;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    DBEcdPlanoContaG: TCDBEdit;
    DBEcdPlanoContaF: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    LookdescPlanoContaCre: TCLookUp;
    frxDesigner1: TfrxDesigner;
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidContaExit(Sender: TObject);
    procedure cdsContaEmpresaAfterInsert(DataSet: TDataSet);
    procedure dsContaEmpresaStateChange(Sender: TObject);
    procedure dspContaEmpresaBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnSalvarIndClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure BtnGravaConfigClick(Sender: TObject);
    procedure BtnConfigCopiaClick(Sender: TObject);
    procedure VerificaGeracao;
    procedure dsPadraoStateChange(Sender: TObject);
    procedure DBCKgeradoSeqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnConfigListaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConta: TfrmCadConta;

implementation

uses uDmPadrao, uFrmCadPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TfrmCadConta.actSalvarExecute(Sender: TObject);
begin
  if cdsContaEmpresa.State in [dsInsert, dsEdit]  then
    cdsContaEmpresa.Cancel;
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadConta.BtnConfigCopiaClick(Sender: TObject);
begin
  inherited;
 //
  If Not(FileExists(dmPadrao.RetornaConfig('caminho_rel') + Format('RelCopia_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger]))) Then
     CopyFile(PChar(dmPadrao.RetornaConfig('caminho_rel') + 'RelCopia_Padrao.fr3'), PChar(dmPadrao.RetornaConfig('caminho_rel') + Format('RelCopia_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger])), False);
  //
  frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + Format('RelCopia_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger]));
  frxReport1.DesignReport;
  //
end;

procedure TfrmCadConta.BtnConfigListaClick(Sender: TObject);
begin
  inherited;
  //
  If Not(FileExists(dmPadrao.RetornaConfig('caminho_rel') + Format('RelChequeLista_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger]))) Then
     CopyFile(PChar(dmPadrao.RetornaConfig('caminho_rel') + 'RelChequeLista_Padrao.fr3'), PChar(dmPadrao.RetornaConfig('caminho_rel') + Format('RelChequeLista_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger])), False);
  //
  frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + Format('RelChequeLista_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger]));
  frxReport1.DesignReport;
  //
end;

procedure TfrmCadConta.BtnGravaConfigClick(Sender: TObject);
begin
  inherited;
  //
  If Not(FileExists(dmPadrao.RetornaConfig('caminho_rel') + Format('RelCheque_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger]))) Then
     CopyFile(PChar(dmPadrao.RetornaConfig('caminho_rel') + 'RelCheque_Padrao.fr3'), PChar(dmPadrao.RetornaConfig('caminho_rel') + Format('RelCheque_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger])), False);
  //
  frxReport1.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + Format('RelCheque_%d.fr3', [dsPadrao.DataSet.FieldByName('idConta').asInteger]));
  frxReport1.DesignReport;
  //
end;

procedure TfrmCadConta.BtnSalvarIndClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsContaEmpresa, BtnSalvarInd, BtnCancelarInd, BtnExcluirInd, BtnNovoInd, (Sender as TCBitBtn), '');
  DBEidEmpresa.SetFocus;
end;

procedure TfrmCadConta.cdsContaEmpresaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TfrmCadConta.DBCKgeradoSeqClick(Sender: TObject);
begin
  inherited;
  VerificaGeracao;
end;

procedure TfrmCadConta.DBEidContaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  AbreTabSecundaria;
  VerificaGeracao;
  if Trim(cdsPadrao.FieldByName('geradoSeq').AsString) = 'S' then
    DBCKgeradoSeq.Checked := True
  else
    DBCKgeradoSeq.Checked := False;
end;

procedure TfrmCadConta.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsContaEmpresa, [DBEidEmpresa]);
end;

procedure TfrmCadConta.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
  if Trim(cdsPadrao.FieldByName('geradoSeq').AsString) = 'S' then
    DBCKgeradoSeq.Checked := True
  else
    DBCKgeradoSeq.Checked := False;
end;

procedure TfrmCadConta.dsContaEmpresaStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarInd, BtnCancelarInd, BtnExcluirInd, BtnNovoInd);
end;

procedure TfrmCadConta.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  VerificaGeracao;
end;

procedure TfrmCadConta.dspContaEmpresaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TfrmCadConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadConta := nil;
end;

procedure TfrmCadConta.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsContaEmpresa;
  chave[0] := DBEidConta;
  foco := DBEidConta;
  tab_chave := 'Conta';
  situacao := 'stConta';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Width := 470;
  Height := 515;
end;

procedure TfrmCadConta.FormShow(Sender: TObject);
begin
  inherited;
  if Trim(cdsPadrao.FieldByName('geradoSeq').AsString) = 'S' then
    DBCKgeradoSeq.Checked := True
  else
    DBCKgeradoSeq.Checked := False;
end;

procedure TfrmCadConta.VerificaGeracao;
begin
  if DBCKgeradoSeq.Checked then
    funcao.SomenteLeitura([DBEultidCheque], False)
  else
    funcao.SomenteLeitura([DBEultidCheque], True);
end;

end.
