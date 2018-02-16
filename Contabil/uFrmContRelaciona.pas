unit uFrmContRelaciona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, EditAlign, CEdit, ExtCtrls, DBCtrls,
  CDBRadioGroup, StdCtrls, CGroupBox, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, Mask, CDBEdit, CLabel, Buttons, CBitBtn, CPanelGradient,
  ComCtrls, CPageControl, Grids, DBGrids, CDBGrid, FMTBcd, SqlExpr,ShellAPI,
  System.Actions;

type
  TFrmCadContRelaciona = class(TFrmCadPadraoEmpCont)
    DBRGtpPlanoConta: TCDBRadioGroup;
    FindMovFinanceira: TCFind;
    CGroupBox7: TCGroupBox;
    sdsPadrao: TSQLDataSet;
    CLabel10: TCLabel;
    DBEidMovFinanceira: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    CBitBtn3: TCBitBtn;
    CGroupBox1: TCGroupBox;
    FindGerenciaP: TCFind;
    CLabel13: TCLabel;
    DBEidGerencial: TCDBEdit;
    CBitBtn6: TCBitBtn;
    LookGerencial: TCLookUp;
    FindResultadoG: TCFind;
    CLabel11: TCLabel;
    DBEidResultado: TCDBEdit;
    CBitBtn4: TCBitBtn;
    LookResultado: TCLookUp;
    CLabel1: TCLabel;
    DBEidHistorico: TCDBEdit;
    CBitBtn1: TCBitBtn;
    LookHistorico: TCLookUp;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    FindPlanoContaCre: TCFind;
    EDtpPlanoConta: TCEdit;
    FindContHistorico: TCFind;
    FindPlanoContaDeb: TCFind;
    FindContRelaciona: TCFind;
    CBitBtn2: TCBitBtn;
    LookdescPlanoContaDeb: TCLookUp;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaCre: TCLookUp;
    DBEcdPlanoContaCre: TCDBEdit;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraoidMovFinanceira: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidContHistorico: TIntegerField;
    cdsPadraocdPlanoContaDeb: TIntegerField;
    cdsPadraocdPlanoContaCre: TIntegerField;
    FindResultadoF: TCFind;
    procedure DBEidMovFinanceiraChange(Sender: TObject);
    procedure DBEidResultadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBRGtpPlanoContaChange(Sender: TObject);
    procedure LookResultadoChange(Sender: TObject);
    procedure LookGerencialChange(Sender: TObject);
    procedure DBEidResultadoChange(Sender: TObject);
    procedure DBEidGerencialChange(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure DBEidGerencialExit(Sender: TObject);
    procedure DBEidMovFinanceiraExit(Sender: TObject);
    procedure FindContRelacionaClose(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadContRelaciona: TFrmCadContRelaciona;

implementation

{$R *.dfm}

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPadrao, uFrmPesRelaciona;

procedure TFrmCadContRelaciona.actNovoExecute(Sender: TObject);
begin
  inherited;
  DBEidMovFinanceira.SetFocus;
end;

procedure TFrmCadContRelaciona.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesRelaciona, FrmPesRelaciona);
  if DBRGtpPlanoConta.ItemIndex > 0 then  
    FrmPesRelaciona.tpPlano := cdsPadrao.FieldByName('tpPlanoConta').AsString
  else
    FrmPesRelaciona.tpPlano := 'F'; 
  FrmPesRelaciona.ShowModal;
//  BuscaChave(cdsPadrao, chave);
end;

procedure TFrmCadContRelaciona.actSalvarExecute(Sender: TObject);
var
  tpPlano : string;
begin
  tpPlano := DBRGtpPlanoConta.Value;
  if Trim(DBEidMovFinanceira.text) = '' then
  begin
    Application.MessageBox('Informe a Movimentação Financeira!','Origem',MB_OK);
    DBEidMovFinanceira.SetFocus;
    exit;
  end
  else
    if Trim(DBEidHistorico.text) = '' then
    begin
      Application.MessageBox('Informe o HISTORICO!','Origem',MB_OK);
      DBEidHistorico.SetFocus;
      exit;
    end
    else
      if (Trim(DBEcdPlanoContaDeb.text) = '') and (Trim(DBEcdPlanoContaCre.text) = '') then
      begin
        Application.MessageBox('Informações sobre o Plano Contábil são Necessárias.','Plano Contábil',MB_OK);
        DBEcdPlanoContaDeb.SetFocus;
        exit;
      end;

  if (trim(cdsPadrao.FieldByName('idGerencial').AsString) = '') then
    cdsPadrao.FieldByName('idGerencial').AsInteger:=0;

  if trim(cdsPadrao.FieldByName('idResultado').AsString)  = '' then
    cdsPadrao.FieldByName('idResultado').AsInteger:=0;

  GravaChave(0, '', nil);

  inherited;
  actNovo.Execute;
  cdsPadrao.FieldByName('tpPlanoConta').AsString := tpPlano;
end;

procedure TFrmCadContRelaciona.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State in [dsInsert] then
    cdsPadrao.FieldByName('tpPlanoConta').AsString := 'G';
end;

procedure TFrmCadContRelaciona.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave[0]);
end;

procedure TFrmCadContRelaciona.DBEidGerencialChange(Sender: TObject);
begin
  inherited;
  if DBEidGerencial.text = '0' then
  begin
    DBEidGerencial.text:= '';
    LookGerencial.caption:='';
  end;
end;

procedure TFrmCadContRelaciona.DBEidGerencialExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidGerencial.text) <> '') and (cdsPadrao.FieldByName('idGerencial').AsString <> '0') then
  begin
    BuscaChave(cdsPadrao,[DBRGtpPlanoConta,DBEidEmpresa,DBEidMovFinanceira,DBEidGerencial]);
    DBEidResultado.SetFocus;
  end;
end;

procedure TFrmCadContRelaciona.DBEidMovFinanceiraChange(Sender: TObject);
begin
  inherited;
if (trim(DBEidMovFinanceira.text) <> '') then
CGroupBox1.Enabled:=true
else
CGroupBox1.Enabled:=false;

end;

procedure TFrmCadContRelaciona.DBEidMovFinanceiraExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidMovFinanceira.text) <> '') then
    begin
      BuscaChave(cdsPadrao,[DBRGtpPlanoConta,DBEidEmpresa,DBEidMovFinanceira]);
      DBEidGerencial.SetFocus;
    end;
end;

procedure TFrmCadContRelaciona.DBEidResultadoChange(Sender: TObject);
begin
  inherited;
  if DBEidResultado.text = '0' then
  begin
    DBEidResultado.text:= '';
    LookResultado.caption:='';
  end;
end;

procedure TFrmCadContRelaciona.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidResultado.text) <> '') then
  begin
    BuscaChave(cdsPadrao,[DBRGtpPlanoConta,DBEidEmpresa,DBEidMovFinanceira,DBEidGerencial,DBEidResultado]);
    DBEidHistorico.SetFocus;
  end;
end;

procedure TFrmCadContRelaciona.DBEidResultadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if Key = VK_F4 then
      begin
      if EDtpPlanoConta.Text = 'G' then
        DBEidResultado.find := FindResultadoG
      else
        DBEidResultado.find := FindResultadoF
      end;
end;

procedure TFrmCadContRelaciona.DBRGtpPlanoContaChange(Sender: TObject);
begin
  inherited;
  EDtpPlanoConta.text:=DBRGtpPlanoConta.Value;
end;

procedure TFrmCadContRelaciona.FindContRelacionaClose(Sender: TObject);
begin
  inherited;
  DBEidEmpresaExit(DBEidEmpresa);
end;

procedure TFrmCadContRelaciona.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadContRelaciona := nil;
end;

procedure TFrmCadContRelaciona.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 1);
  Tabelas[0] := cdsPadrao;

  SetLength(chave, 5);
  chave[0] := DBEidEmpresa;
  chave[1] := DBRGtpPlanoConta;
  chave[2] := DBEidMovFinanceira;
  chave[3] := DBEidGerencial;
  chave[4] := DBEidResultado;

  tab_chave := 'ContRelaciona';

  Height := 368;
  Width := 588;
end;

procedure TFrmCadContRelaciona.FormShow(Sender: TObject);
begin
  action := 'actLanRelacionamento';
  inherited;
  DBRGtpPlanoConta.setfocus;
end;

procedure TFrmCadContRelaciona.LookGerencialChange(Sender: TObject);
begin
  inherited;
  if cdsPadrao.fieldByName('idGerencial').AsString = '0' then
    LookGerencial.caption:='';
end;

procedure TFrmCadContRelaciona.LookResultadoChange(Sender: TObject);
begin
  inherited;
  if cdsPadrao.fieldByName('idResultado').AsString = '0' then
    LookResultado.caption:='';
end;

end.
