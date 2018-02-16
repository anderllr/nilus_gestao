unit uCadGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, XPMan, Menus, CPanelGradient, DBXCommon,
  CDBCheckBox, EditAlign, CEdit;

type
  TfrmCadGeral = class(TFrmCadPadrao)
    CLabel1: TCLabel;
    DBEidCadGeral: TCDBEdit;
    CLabel14: TCLabel;
    f: TBevel;
    Bevel3: TBevel;
    DBEstCadGeral: TCDBEdit;
    sdsCadGeral: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    DBEdescAbreviada: TCDBEdit;
    CLabel6: TCLabel;
    DBEdescCadAdicional: TCDBEdit;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    DBEidCnpjCpf: TCDBEdit;
    sdsCadAdicional: TSQLDataSet;
    dspCadAdicional: TDataSetProvider;
    cdsCadAdicional: TClientDataSet;
    dsCadAdicional: TDataSource;
    cdsCidade: TClientDataSet;
    FindCidade: TCFind;
    FindEndereco: TCFind;
    CGroupBox8: TCGroupBox;
    CLabel28: TCLabel;
    CLabel29: TCLabel;
    CLabel32: TCLabel;
    CLabel34: TCLabel;
    CLabel35: TCLabel;
    CLabel36: TCLabel;
    CLabel37: TCLabel;
    CLabel38: TCLabel;
    CLabel39: TCLabel;
    CLabel40: TCLabel;
    DBEcomplemento: TCDBEdit;
    DBEbairro: TCDBEdit;
    DBEendereco: TCDBEdit;
    DBEcep: TCDBEdit;
    DBEnumero: TCDBEdit;
    DBEidCidade: TCDBEdit;
    LookCidade: TCLookUp;
    DBEfone: TCDBEdit;
    LookDDD: TCLookUp;
    DBEfax: TCDBEdit;
    DBEcelular: TCDBEdit;
    DBEemail: TCDBEdit;
    CLabel7: TCLabel;
    DBEweb: TCDBEdit;
    DBEidInscEstadual: TCDBEdit;
    CLabel31: TCLabel;
    CLabel8: TCLabel;
    DBEdtAtualizacao: TCDBEdit;
    BtnCadCidade: TCBitBtn;
    CGroupBox9: TCGroupBox;
    DBMobsCadGeral: TCDBMemo;
    sdsCadAdicional2: TSQLDataSet;
    dspCadAdicional2: TDataSetProvider;
    cdsCadAdicional2: TClientDataSet;
    dsCadAdicional2: TDataSource;
    LookEstado2: TCLookUp;
    TabAdicional: TTabSheet;
    CGroupBox14: TCGroupBox;
    CDBGrid4: TCDBGrid;
    CGroupBox2: TCGroupBox;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    CLabel21: TCLabel;
    DBEcomplemento2: TCDBEdit;
    DBEbairro2: TCDBEdit;
    DBEendereco2: TCDBEdit;
    DBEcep2: TCDBEdit;
    DBEnumero2: TCDBEdit;
    DBEidCidade2: TCDBEdit;
    LookCidade2: TCLookUp;
    DBEfone2: TCDBEdit;
    LookDDD2: TCLookUp;
    DBEfax2: TCDBEdit;
    DBEcelular2: TCDBEdit;
    DBEemail2: TCDBEdit;
    LookEstado: TCLookUp;
    CGroupBox10: TCGroupBox;
    CLabel41: TCLabel;
    CLabel46: TCLabel;
    CLabel47: TCLabel;
    CLabel42: TCLabel;
    CLabel43: TCLabel;
    DBEidInscEstadual2: TCDBEdit;
    DBEidCnpjCpf2: TCDBEdit;
    DBEidCadAdicional: TCDBEdit;
    DBEdescCadAdicional2: TCDBEdit;
    DBEdescAbreviadaAd: TCDBEdit;
    CLabel11: TCLabel;
    DBEstCadAdicional: TCDBEdit;
    CLabel23: TCLabel;
    DBEidInscMunicipal: TCDBEdit;
    CGroupBox12: TCGroupBox;
    BtnSalvarCli: TCBitBtn;
    BtnCancelarCli: TCBitBtn;
    BtnExcluirCli: TCBitBtn;
    BtnNovoCli: TCBitBtn;
    FindCadGeral: TCFind;
    CLabel13: TCLabel;
    DBEidInscMunicipal2: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtCadastro: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtAlteracao: TCDBEdit;
    btnValidaInscricao: TCBitBtn;
    TabContabil: TTabSheet;
    sdsEmpresaContabil: TSQLDataSet;
    dspEmpresaContabil: TDataSetProvider;
    cdsEmpresaContabil: TClientDataSet;
    dsEmpresaContabil: TDataSource;
    sdsConfigContabil: TSQLDataSet;
    dspConfigContabil: TDataSetProvider;
    cdsConfigContabil: TClientDataSet;
    dsConfigContabil: TDataSource;
    CGroupBox6: TCGroupBox;
    CGroupBox4: TCGroupBox;
    CLabel33: TCLabel;
    CLabel44: TCLabel;
    CLabel49: TCLabel;
    DBEidCnpjCpfContador: TCDBEdit;
    DBEdescContador: TCDBEdit;
    DBEcrcContador: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CLabel24: TCLabel;
    CLabel25: TCLabel;
    CLabel26: TCLabel;
    DBEidCnpjCpfRepresentante: TCDBEdit;
    DBEdescRepresentante: TCDBEdit;
    DBEcargo: TCDBEdit;
    CGroupBox5: TCGroupBox;
    CLabel52: TCLabel;
    CLabel53: TCLabel;
    CLabel55: TCLabel;
    DBEperiodoInicial: TCDBEdit;
    DBEmascaraContabil: TCDBEdit;
    DBEperiodoFinal: TCDBEdit;
    CLabel22: TCLabel;
    DBErodapeContabil: TCDBEdit;
    DBCBalteraFechado: TCDBCheckBox;
    idEmpresa: TCEdit;
    BtnValidaInscricao2: TCBitBtn;
    CLabel27: TCLabel;
    DBEmascaraFiscal: TCDBEdit;
    TabContGerencial: TTabSheet;
    CGroupBox7: TCGroupBox;
    CLabel30: TCLabel;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaDeb: TCLookUp;
    CLabel45: TCLabel;
    DBEcdPlanoContaCre: TCDBEdit;
    LookdescPlanoContaCre: TCLookUp;
    FindPlanoContaCre: TCFind;
    FindPlanoContaDeb: TCFind;
    sdsContaCliente: TSQLDataSet;
    dspContaCliente: TDataSetProvider;
    cdsContaCliente: TClientDataSet;
    dsContaCliente: TDataSource;
    cdsContaClienteidCadGeral: TIntegerField;
    cdsContaClientecdPlanoContaCre: TIntegerField;
    cdsContaClientecdPlanoContaDeb: TIntegerField;
    FindEmpresaOri: TCFind;
    TabImportar: TTabSheet;
    CGroupBox11: TCGroupBox;
    CLabel48: TCLabel;
    CGroupBox13: TCGroupBox;
    CBitBtn1: TCBitBtn;
    BtnExcluir2: TCBitBtn;
    CBitBtn2: TCBitBtn;
    CGroupBox15: TCGroupBox;
    CBitBtn3: TCBitBtn;
    CBitBtn4: TCBitBtn;
    EDpar: TCEdit;
    EDidEmpresaOri: TCEdit;
    LookdescEmpresa: TCEdit;
    CGroupBox16: TCGroupBox;
    DBGridEmpresa: TCDBGrid;
    CGroupBox17: TCGroupBox;
    BtnSalvarCCli: TCBitBtn;
    BtnCancelarCCli: TCBitBtn;
    BtnExcluirCCli: TCBitBtn;
    BtnNovoCCli: TCBitBtn;
    CLabel50: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    FindEmpresa: TCFind;
    cdsContaClienteidEmpresa: TIntegerField;
    cdsPlanoConta: TClientDataSet;
    cdsContaClientedescContaCredito: TStringField;
    cdsContaClientedescContaDebito: TStringField;
    BtnPesquisaCCli: TCBitBtn;
    procedure BtnPesquisaCCliClick(Sender: TObject);
    procedure dsContaClienteStateChange(Sender: TObject);
    procedure BtnSalvarCCliClick(Sender: TObject);
    procedure EDidEmpresaOriExit(Sender: TObject);
    procedure CBitBtn4Click(Sender: TObject);
    procedure CBitBtn2Click(Sender: TObject);
    procedure BtnExcluir2Click(Sender: TObject);
    procedure DBEmascaraContabilKeyPress(Sender: TObject; var Key: Char);
    procedure DBEmascaraContabilExit(Sender: TObject);
    procedure dspEmpresaContabilBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspConfigContabilBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnValidaInscricaoClick(Sender: TObject);
    procedure GravaNivel;
    procedure DBEcep2Exit(Sender: TObject);
    procedure DBEcepExit(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure cdsCadAdicional2AfterEdit(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidCnpjCpf2Exit(Sender: TObject);
    procedure DBEidCadAdicionalExit(Sender: TObject);
    procedure BtnSalvarCliClick(Sender: TObject);
    procedure cdsCadAdicionalAfterScroll(DataSet: TDataSet);
    procedure PagAbasChange(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure dsCadAdicionalStateChange(Sender: TObject);
    procedure DBEidCnpjCpfExit(Sender: TObject);
    procedure cdsCadAdicionalAfterInsert(DataSet: TDataSet);
    procedure dspCadAdicionalBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBEidCadGeralExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    constructor create (Formulario: TComponent; Parametro: Array of String);
  private
    { Private declarations }
  public
    { Public declarations }
    cliente, empresa, contabil : boolean;

  end;
var
  frmCadGeral: TfrmCadGeral;

implementation

uses uFuncao, uCadCidade, uFrmPrincipal, uFrmPesCnpj, uDmPadrao,
  uFrmPesContaCliente;

{$R *.dfm}

procedure TfrmCadGeral.actCancelarExecute(Sender: TObject);
begin
  inherited;
  if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    cdsCadAdicional2.Cancel;
end;

procedure TfrmCadGeral.actExcluirExecute(Sender: TObject);
begin
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('dtAlteracao').AsDateTime := date;
  inherited;
end;

procedure TfrmCadGeral.actNovoExecute(Sender: TObject);
begin
  cdsCadAdicional2.Append;
  inherited;
end;

procedure TfrmCadGeral.actSalvarExecute(Sender: TObject);
var
  t : TDBXTransaction;
begin
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    if cdsCadAdicional.State in [dsInsert, dsEdit] then
      cdsCadAdicional.Cancel;
    //se estiver inserindo promove as mudanças no cadastro geral
    if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    begin
      if trim(cdsCadAdicional2.FieldByName('idCadAdicional').AsString) = '' then
        cdsCadAdicional2.FieldByName('idCadAdicional').AsString := '1';
      if trim(cdsCadAdicional2.FieldByName('stCadAdicional').AsString) = '' then
        cdsCadAdicional2.FieldByName('stCadAdicional').AsString := cdsPadrao.FieldByName('stCadGeral').AsString;

      cdsPadrao.FieldByName('idCnpjCpf').AsString := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
    end;
    if Trim(cdsPadrao.FieldByName('dtCadastro').AsString) = '' then
      cdsPadrao.FieldByName('dtCadastro').AsDateTime := date;
    cdsPadrao.FieldByName('dtAlteracao').AsDateTime := date;

    if cdsConfigContabil.State in [dsInsert, dsEdit] then
    begin
      if not DBEmascaraContabil.ReadOnly then
        GravaNivel;
      cdsConfigContabil.Post;
    end;

    if empresa then
      cdsPadrao.FieldByName('Empresa').AsString := 'S'
    else
      if trim(cdsPadrao.FieldByName('Empresa').AsString) = '' then
        cdsPadrao.FieldByName('Empresa').AsString := 'N';

    GravaChave(1, '', nil);

    if cdsCadAdicional2.FieldByName('idCadGeral').AsInteger = 0 then
      cdsCadAdicional2.FieldByName('idCadGeral').AsInteger := StrToInt(DBEidCadGeral.Text);
    if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    begin
      cdsCadAdicional2.FieldByName('stCadAdicional').AsString := cdsPadrao.FieldByName('stCadGeral').AsString;
      cdsCadAdicional2.Post;
    end;

    if cdsContaCliente.State in [dsInsert, dsEdit] then
    begin
      if cdsContaCliente.FieldByName('idCadGeral').AsInteger = 0 then
        cdsContaCliente.FieldByName('idCadGeral').AsInteger := StrToInt(DBEidCadGeral.Text);
      cdsContaCliente.Post;
    end;

    inherited;
    DBEidCadGeralExit(DBEidCadGeral);
    DBEidCnpjCpfExit(DBEidCnpjCpf);
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
    dmPadrao.dbConexao.RollbackFreeAndNil(t);

  if cdsCadAdicional.State in [dsInsert, dsEdit] then
    cdsCadAdicional.Cancel;
  if cdsCadAdicional2.State in [dsInsert, dsEdit] then
    cdsCadAdicional2.Cancel;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.Post;

end;

procedure TfrmCadGeral.BtnExcluir2Click(Sender: TObject);
var
  msg : string;
begin
  EDpar.text:='PG';

  if trim(EDidEmpresaOri.Text) <> '' then
  begin
    msg := FrmPrincipal.ExecutaSQLRet([EDidEmpresaOri,DBEidCadGeral,EDpar],'spImportaDados','').FieldByName('msg').AsString;
    if msg = 'OK' then
       messagedlg('Dados Importados com sucesso !',mtConfirmation, [mbOk], 0)
    else
      messagedlg(msg, mtWarning, [mbOk], 0);
  end
  else
  begin
    messagedlg('É necessario que se informe a Empresa de Origem !',mtConfirmation, [mbOk], 0);
    EDidEmpresaOri.SetFocus;
    exit;
  end;

end;

procedure TfrmCadGeral.BtnPesquisaCCliClick(Sender: TObject);
begin
  inherited;
  funcao.AbreFrm(TfrmPesContaCliente, TForm(frmPesContaCliente));
end;

procedure TfrmCadGeral.BtnSalvarCCliClick(Sender: TObject);
begin
  inherited;
  cdsContaCliente.ReadOnly := false;
  //se for o botão excluir é para cancelar
  if (Sender as TCBitBtn).Name = 'BtnExcluirCli' then
  begin
    if not (cdsContaCliente.State in [dsInsert, dsEdit]) then
      cdsContaCliente.Edit;
    funcao.UpdateChave(cdsContaCliente, chave);
    exit;
  end;
  funcao.GravaSec(chave, cdsContaCliente, BtnSalvarCCli, BtnCancelarCCli, BtnExcluirCCli, BtnNovoCCli, (Sender as TCBitBtn), '');
  DBEidEmpresa.SetFocus;
end;

procedure TfrmCadGeral.BtnSalvarCliClick(Sender: TObject);
begin
  inherited;
  cdsCadAdicional.ReadOnly := false;
  //se for o botão excluir é para cancelar
  if (Sender as TCBitBtn).Name = 'BtnExcluirCli' then
  begin
    if not (cdsCadAdicional.State in [dsInsert, dsEdit]) then
      cdsCadAdicional.Edit;
    cdsCadAdicional.FieldByName('stCadAdicional').AsString := situacaoX;
    funcao.UpdateChave(cdsCadAdicional, chave);
    exit;
  end
  else
    if ((Sender as TCBitBtn).Name = 'BtnSalvarCli') then
    begin
      if cdsCadAdicional.FieldByName('stCadAdicional').AsString = situacaoX then
        if messagedlg('Deseja reativar o cadastro!', mtconfirmation, [mbyes, mbno], 0) = mryes then
          cdsCadAdicional.FieldByName('stCadAdicional').AsString := situacaoA;
      if trim(cdsCadAdicional.FieldByName('stCadAdicional').AsString) = '' then
        cdsCadAdicional.FieldByName('stCadAdicional').AsString := situacaoA;
//      cdsCadAdicional.FieldByName('idCnpjCpf').AsString := funcao.TiraMascara(cdsCadAdicional.FieldByName('idCnpjCpf').AsString);        
    end; //fim do if ((Sender as TCBitBtn).Name = 'BtnSalvarCli') then

  funcao.GravaSec(chave, cdsCadAdicional, BtnSalvarCli, BtnCancelarCli, BtnExcluirCli, BtnNovoCli, (Sender as TCBitBtn), 'idCadAdicional');
  DBEidCadAdicional.SetFocus;
end;

procedure TfrmCadGeral.btnValidaInscricaoClick(Sender: TObject);
var
  insc, estado : string;
begin
  inherited;
  if (sender as TBitBtn).Name = 'btnValidaInscricao' then
  begin
    insc := DBEidInscEstadual.Text;
    estado := trim(LookEstado2.Caption);
  end
  else
  begin
    insc := DBEidInscEstadual2.Text;
    estado := trim(LookEstado.Caption);
  end;
  if (trim(insc) = '') or (trim(estado) = '') then
  begin
    messagedlg('Você deve informar a inscrição e o estado!', mtwarning, [mbok], 0);
    exit;
  end;
  if not funcao.ChkInscEstadual(funcao.TiraMascara(trim(insc)), estado) then
    ShowMessage('Inscrição Estadual Inválida!!')
  else
    ShowMessage('Inscrição Estadual OK !!');
end;


procedure TfrmCadGeral.CBitBtn2Click(Sender: TObject);
var
msg : string;
begin
  EDpar.text:='PF';

   if trim(EDidEmpresaOri.Text) <> '' then
  begin
    msg := FrmPrincipal.ExecutaSQLRet([EDidEmpresaOri,DBEidCadGeral,EDpar],'spImportaDados','').FieldByName('msg').AsString;
    if msg = 'OK' then
       messagedlg('Dados Importados com sucesso !',mtConfirmation, [mbOk], 0)
    else
      messagedlg(msg, mtWarning, [mbOk], 0);
  end
  else
  begin
    messagedlg('É necessario que se informe a Empresa de Origem !',mtConfirmation, [mbOk], 0);
    EDidEmpresaOri.SetFocus;
    exit;
  end;

end;

procedure TfrmCadGeral.CBitBtn4Click(Sender: TObject);
var
msg : string;
begin
  EDpar.text:= 'CG';

  if trim(EDidEmpresaOri.Text) <> '' then
  begin
    msg := FrmPrincipal.ExecutaSQLRet([EDidEmpresaOri,DBEidCadGeral,EDpar],'spImportaDados','').FieldByName('msg').AsString;
    if (msg = 'OK') then
       messagedlg('Dados Importados com sucesso !',mtConfirmation, [mbOk], 0)
    else
      messagedlg(msg, mtWarning, [mbOk], 0);
  end
  else
  begin
    messagedlg('É necessario que se informe a Empresa de Origem !',mtConfirmation, [mbOk], 0);
    EDidEmpresaOri.SetFocus;
    exit;
  end;

end;

procedure TfrmCadGeral.cdsCadAdicional2AfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TfrmCadGeral.cdsCadAdicionalAfterInsert(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  //solução para sugerir os dados do cadastro principal
  if DataSet.Name = 'cdsCadAdicional' then
  begin
    for i := 0 to cdsCadAdicional.FieldDefs.Count - 1 do
      cdsCadAdicional.FieldByName(cdsCadAdicional.FieldDefs[i].DisplayName).ReadOnly := false;

    cdsCadAdicional.FieldByName('descCadAdicional').AsString := cdsCadAdicional2.FieldByName('descCadAdicional').AsString;
    cdsCadAdicional.FieldByName('descAbreviada').AsString := cdsCadAdicional2.FieldByName('descAbreviada').AsString;
    cdsCadAdicional.FieldByName('idCnpjCpf').AsString := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
    cdsCadAdicional.FieldByName('idCidade').AsString := cdsCadAdicional2.FieldByName('idCidade').AsString;
    cdsCadAdicional.FieldByName('fone').AsString := cdsCadAdicional2.FieldByName('fone').AsString;
    cdsCadAdicional.FieldByName('fax').AsString := cdsCadAdicional2.FieldByName('fax').AsString;
    cdsCadAdicional.FieldByName('celular').AsString := cdsCadAdicional2.FieldByName('celular').AsString;
    cdsCadAdicional.FieldByName('email').AsString := cdsCadAdicional2.FieldByName('email').AsString;

  end;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  if not (cdsCadAdicional2.State in [dsInsert, dsEdit]) then
    cdsCadAdicional2.Edit;

end;

procedure TfrmCadGeral.cdsCadAdicionalAfterScroll(DataSet: TDataSet);
var
  i : integer;
  read : boolean;
begin
  inherited;
  with cdsCadAdicional do
  begin
    if FieldByName('idCadAdicional').AsInteger = 1 then
      read := true
    else
      read := false;
    //para atribuir somente aos campos
    for i := 0 to FieldDefs.Count - 1 do
    if FieldDefs[i].DisplayName <> 'idCadAdicional' then
       FieldByName(FieldDefs[i].DisplayName).ReadOnly := read;
  end;
end;

constructor TfrmCadGeral.create(Formulario: TComponent;
  Parametro: array of String);
var
  i : integer;
begin
  inherited create(formulario);
  empresa := false;
  cliente := false;
  contabil := false;

  for i := 0 to high(Parametro) do
  begin
    if Parametro[i] = 'EMPRESA' then
      empresa := true;
    if Parametro[i] = 'CLIENTE' then
      cliente := true;
    if Parametro[i] = 'CONTABIL' then
      contabil := true;
  end;

  if empresa then
  begin
    TabAdicional.Caption := 'Dados da Empresa';
    Caption := 'Cadastro de Empresas';
  end;
  if cliente then
  begin
    TabAdicional.Caption := 'Dados do Cliente/Fornecedor';
    Caption := 'Cadastro de Clientes/Fornecedores';
//    TabAdicional.TabVisible := false;
  end;
  TabContabil.TabVisible := contabil;
  TabImportar.TabVisible := empresa;
  TabContGerencial.TabVisible := cliente;
end;

procedure TfrmCadGeral.DBEcep2Exit(Sender: TObject);
begin
  inherited;
  if cdsCadAdicional.state in [dsInsert, dsEdit] then
    cdsCadAdicional.FieldByName('cep').AsString := funcao.Mascara(cdsCadAdicional.FieldByName('cep').AsString, 0, '');
end;

procedure TfrmCadGeral.DBEcepExit(Sender: TObject);
begin
  inherited;
  if cdsCadAdicional2.state in [dsInsert, dsEdit] then
    cdsCadAdicional2.FieldByName('cep').AsString := funcao.Mascara(cdsCadAdicional2.FieldByName('cep').AsString, 0, '');
end;

procedure TfrmCadGeral.DBEidCadAdicionalExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsCadAdicional, [DBEidCadAdicional]);
end;

procedure TfrmCadGeral.DBEidCadGeralExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  //regra criada para o funcionamento dos cadastros centralizados
  if trim(DBEidCadGeral.Text) = '' then
  begin
    with cdsCadAdicional2 do
    begin
      Active := false;
      CommandText := 'SELECT * FROM CadAdicional WHERE 1 = 2';
      Active := True;
      Append;
      FieldByName('idCadGeral').AsInteger := 0;
      FieldByName('idCadAdicional').AsInteger := 1;
    end;
  end
  else
  with cdsCadAdicional2 do
  begin
    Active := false;
    CommandText := 'SELECT * FROM CadAdicional WHERE idCadGeral = ' + trim(DBEidCadGeral.Text) +
                   ' AND idCadAdicional = 1';
    Active := True;
    if IsEmpty then
    begin
      Append;
      FieldByName('idCadGeral').AsInteger := StrToInt(DBEidCadGeral.Text);
      FieldByName('idCadAdicional').AsInteger := 1;
    end;
  end;

  AbreTabSecundaria;
end;

procedure TfrmCadGeral.DBEidCnpjCpf2Exit(Sender: TObject);
begin
  inherited;
  if (BtnCancelar.Focused) or (BtnFechar.Focused) or (BtnPesquisar.Focused) then
    exit;

  if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
    exit
  else
    if cdsEmpresaContabil.State in [dsEdit, dsInsert] then
    begin
      cdsEmpresaContabil.FieldByName('idCnpjCpfContador').AsString := funcao.Mascara(cdsEmpresaContabil.FieldByName('idCnpjCpfContador').AsString, 1, '');
      cdsEmpresaContabil.FieldByName('idCnpjCpfRepresentante').AsString := funcao.Mascara(cdsEmpresaContabil.FieldByName('idCnpjCpfRepresentante').AsString, 1, '');      
    end;
end;

procedure TfrmCadGeral.DBEidCnpjCpfExit(Sender: TObject);
var
  sql, prefixo, idCnpjCpf : string;
begin
  inherited;
  if (BtnCancelar.Focused) or (BtnFechar.Focused) or (BtnPesquisar.Focused) then
    exit;

  if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
    exit
  else
  begin //se existe verifica se já existe cadastro
    idCnpjCpf := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
    if not (cdsCadAdicional2.State in [dsInsert, dsEdit]) then
      cdsCadAdicional2.Edit;
    cdsCadAdicional2.FieldByName('idCnpjCpf').AsString := funcao.Mascara(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString, 1, '');
//    cdsLookUp.Active := false;
//    cdsLookUp.CommandText :=
    with frmPrincipal.ExecutaSQLRet([DBEidCnpjCpf], '', 'CadGeral') do
      if not IsEmpty then
      begin
        if (cdsPadrao.State = dsInsert) then
        begin
          Application.CreateForm(TFrmPesCnpj, FrmPesCnpj);
          //passa os parâmetros
          FrmPesCnpj.prefixo := cdsCadAdicional2.FieldByName('idCnpjCpf').AsString;
          FrmPesCnpj.idCadGeral := DBEidCadGeral.Text;
          FrmPesCnpj.tem := true;
          //abre o form
          FrmPesCnpj.ShowModal;
          //busca o parâmetro de retorno
          if trim(FrmPesCnpj.idCadGeral) <> trim(DBEidCadGeral.Text) then
          begin
            cdsPadrao.FieldByName('idCadGeral').AsString := FrmPesCnpj.idCadGeral;
            DBEidCadGeralExit(DBEidCadGeral);
          end;
        end;
      end
      else //já que não encontrou faz nova busca com o cnpj
      if empresa then
      begin
        //busca se não existe outro cnpj cadastrado com o mesmo prefixo
        if length(trim(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString)) = 18 then
        begin
          prefixo := copy(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString, 1, 10);
          sql := 'SELECT COUNT(*) conta FROM vCadClienteContabil WHERE idCliente <> ' + QuotedStr(DBEidCadGeral.Text) +
                 ' AND idCnpjCpf LIKE ' + QuotedStr('%' + prefixo + '%');
          if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('conta').AsInteger > 0 then
          begin
            Application.CreateForm(TFrmPesCnpj, FrmPesCnpj);
            //passa os parâmetros
            FrmPesCnpj.prefixo := prefixo;
            FrmPesCnpj.idCadGeral := DBEidCadGeral.Text;
            FrmPesCnpj.tem := false;            
            //abre o form
            FrmPesCnpj.ShowModal;
            //busca o parâmetro de retorno
            if trim(FrmPesCnpj.idCadGeral) <> trim(DBEidCadGeral.Text) then
            begin
              cdsPadrao.FieldByName('idCadGeral').AsString := FrmPesCnpj.idCadGeral;
              DBEidCadGeralExit(DBEidCadGeral);
              PagAbas.ActivePageIndex := 1;
              BtnNovoCli.Click;
              cdsCadAdicional.FieldByName('idCnpjCpf').AsString := idCnpjCpf;
              DBEidCnpjCpf2.SetFocus;
            end;
          end; // if ExecutaSQLRet([], '', sql).FieldByName('conta').AsInteger > 0 then
        end; //fim do if length(trim(cdsCadAdicional2.FieldByName('idCnpjCpf').AsString)) = 18 then CNPJ
      end; //else do is empty
    end; // else da validação de cnpj if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
end;

procedure TfrmCadGeral.DBEmascaraContabilExit(Sender: TObject);
var
  i : integer;
  mascara, mascara1 : string;
  ant : boolean; //variável que irá determinar se o anterior é ponto
begin
  inherited;
  if (trim(DBEmascaraContabil.Text) <> '') and (cdsConfigContabil.State in [dsEdit, dsInsert]) then
  begin
    mascara := trim(DBEmascaraContabil.Text);
    if copy(mascara, Length(mascara), 1) = '.' then
      mascara := copy(mascara, 1, Length(mascara)-1);
    if copy(mascara, 1, 1) = '.' then
      mascara := copy(mascara, 2, Length(mascara));
    ant := false;
    mascara1 := '';
    for i := 1 to length(mascara) do
      if mascara[i] = '.' then
      begin
        if not ant then
          mascara1 := mascara1 + mascara[i];
        ant := true;
      end
      else
      begin
        mascara1 := mascara1 + mascara[i];
        ant := false;
      end;
    cdsConfigContabil.FieldByName('mascaraContabil').AsString := mascara1;
  end;
   
end;

procedure TfrmCadGeral.DBEmascaraContabilKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #27 then
    (Sender as TCustomEdit).Clear
  else
    if not (Key in ['*', '.', #8]) then
      Key := #0;
end;

procedure TFrmCadGeral.GravaNivel;
//Grava os níveis gerados pela máscara
var
  mascara, Nivel : string;
  nr_grau, i : integer;
begin
  idEmpresa.Text := DBEidCadGeral.Text;
  if (trim(DBEmascaraContabil.Text) <> '') then
  begin
    with frmPrincipal.ExecutaSQLRet([idEmpresa], '', 'PlanoContaNivel ') do
      if not IsEmpty then
      begin
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'DELETE FROM PlanoContaNivel WHERE tpPlanoConta = '+ quotedstr('G') + ' AND idEmpresa = ' + DBEidCadGeral.Text;
        cdsLookup.Execute;
      end;
    mascara := Trim(cdsConfigContabil.FieldByName('mascaraContabil').AsString);
    nr_grau := 0;
    for i := 0 to length(mascara) do
      if (mascara[i] = '.') or (i = length(mascara)) then
      begin
        nr_grau := nr_grau + 1;
        if i <> length(mascara) then
          Nivel := copy(mascara, 1, i-1)
        else
          Nivel := mascara;
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'INSERT INTO PlanoContaNivel VALUES(' + DBEidCadGeral.Text + ', ' +
                                  inttostr(nr_grau) + ', ' + quotedstr('G') + ', ' + quotedstr(Nivel) + ')';
        cdsLookup.Execute;
      end;
  end;

  if (trim(DBEmascaraFiscal.Text) <> '') then
  begin
    with frmPrincipal.ExecutaSQLRet([idEmpresa], '', 'PlanoContaNivel ') do
      if not IsEmpty then
      begin
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'DELETE FROM PlanoContaNivel WHERE tpPlanoConta = '+ quotedstr('F') + ' AND idEmpresa = ' + DBEidCadGeral.Text;
        cdsLookup.Execute;
      end;
    mascara := Trim(cdsConfigContabil.FieldByName('mascaraFiscal').AsString);
    nr_grau := 0;
    for i := 0 to length(mascara) do
      if (mascara[i] = '.') or (i = length(mascara)) then
      begin
        nr_grau := nr_grau + 1;
        if i <> length(mascara) then
          Nivel := copy(mascara, 1, i-1)
        else
          Nivel := mascara;
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'INSERT INTO PlanoContaNivel VALUES(' + DBEidCadGeral.Text + ', ' +
                                  inttostr(nr_grau) + ', ' + quotedstr('F') + ', ' + quotedstr(Nivel) + ')';
        cdsLookup.Execute;
      end;
  end;

end;

procedure TfrmCadGeral.dsCadAdicionalStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarCli, BtnCancelarCli, BtnExcluirCli, BtnNovoCli);
end;

procedure TfrmCadGeral.dsContaClienteStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsContaCliente,BtnSalvarCCli, BtnCancelarCCli, BtnExcluirCCli, BtnNovoCCli);
end;

procedure TfrmCadGeral.dspCadAdicionalBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
//  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspCadAdicional' then
      GeraAutoInc(DeltaDS, 'CadAdicional', 'idCadAdicional', chave);
  end;
end;

procedure TfrmCadGeral.dspConfigContabilBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TfrmCadGeral.dspEmpresaContabilBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
end;

procedure TfrmCadGeral.EDidEmpresaOriExit(Sender: TObject);
var
sql : string;
begin
  inherited;
  sql := 'SELECT descCadEmpresa FROM vCadEmpresaContabil WHERE idEmpresa = ' + EDidEmpresaOri.Text;
  LookdescEmpresa.Text := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('descCadEmpresa').AsString;
end;

procedure TfrmCadGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadGeral := nil;
end;

procedure TfrmCadGeral.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 6);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsCadAdicional;
  Tabelas[2] := cdsCadAdicional2;
  Tabelas[3] := cdsEmpresaContabil;
  Tabelas[4] := cdsConfigContabil;
  Tabelas[5] := cdsContaCliente;
  chave[0] := DBEidCadGeral;
  foco := DBEidCadGeral;
  tab_chave := 'CadGeral';
  situacao := 'stCadGeral';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  FindPesquisa := FindCadGeral;
  Height := 484;
  Width := 634;
end;

procedure TfrmCadGeral.FormShow(Sender: TObject);
begin
  inherited;
  PagAbas.ActivePageIndex := 0;
  Width := 641;
end;

procedure TfrmCadGeral.PagAbasChange(Sender: TObject);
begin
  inherited;
  if ((cdsPadrao.State in [dsInsert]) or (trim(DBEidCadGeral.Text) = '')) and (PagAbas.ActivePageIndex <> 0) then
  begin
    PagAbas.ActivePageIndex := 0;
    messagedlg('Voce deve primeiro gravar o cadastro principal!', mtinformation, [mbok], 0);
    exit;
  end;
  //definição do foco por aba
  if PagAbas.ActivePage = TabAbas then DBEidCnpjCpf.SetFocus;
  if PagAbas.ActivePage = TabAdicional then DBEidCadAdicional.SetFocus;

  if PagAbas.ActivePageIndex = 2 then
    FrmCadGeral.Height := 424
  else
     FrmCadGeral.Height := 484;

  if PagAbas.ActivePage = TabContGerencial then
    FrmCadGeral.Height :=  370
  else
     FrmCadGeral.Height := 484;

  if PagAbas.ActivePage = TabContabil then
    FrmCadGeral.Height :=  425
  else
     FrmCadGeral.Height := 484;

  if PagAbas.ActivePage = TabImportar then
    FrmCadGeral.Height :=  302
  else
     FrmCadGeral.Height := 484;

end;

end.
