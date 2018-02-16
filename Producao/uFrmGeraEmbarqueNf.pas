unit uFrmGeraEmbarqueNf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, ComCtrls, CPageControl, DB, DBClient, Mask, DBCtrls, CDBEdit,
  CLookUp, CLabel, Provider, Grids, DBGrids, CDBGrid, FMTBcd, SqlExpr,
  CDBRadioGroup, CDBCheckBox, System.Actions, System.ImageList;

type
  TFrmGeraEmbarqueNf = class(TFrmPadrao)
    dsCliente: TDataSource;
    cdsCliente: TClientDataSet;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    cdsConsCliente: TClientDataSet;
    dsConsCliente: TDataSource;
    CPanelGradient1: TCPanelGradient;
    Bevel3: TBevel;
    CLabel11: TCLabel;
    LookRazao: TCLookUp;
    DBEidCliente: TCDBEdit;
    CLookUp1: TCLookUp;
    BtnConsultar: TCBitBtn;
    GridFornecedor: TCDBGrid;
    CPanelGradient2: TCPanelGradient;
    CLabel1: TCLabel;
    GridCotacaoFornecedor: TCDBGrid;
    cdsClienteidCliente: TIntegerField;
    cdsClientedescCliente: TStringField;
    cdsClientedescAbreviada: TStringField;
    dsEmbarqueCli: TDataSource;
    cdsEmbarqueCli: TClientDataSet;
    dspEmbarqueCli: TDataSetProvider;
    sdsEmbarqueCli: TSQLDataSet;
    dsEmbarque: TDataSource;
    cdsEmbarque: TClientDataSet;
    dspEmbarque: TDataSetProvider;
    sdsEmbarque: TSQLDataSet;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    cdsClientebtnTemp: TIntegerField;
    cdsEmbarqueidEmpresa: TIntegerField;
    cdsEmbarqueidCadEmpresa: TSmallintField;
    cdsEmbarqueidEmbarque: TIntegerField;
    cdsEmbarquedtEmbarque: TSQLTimeStampField;
    cdsEmbarqueidContratoVenda: TStringField;
    cdsEmbarquedescCadCliente: TStringField;
    cdsEmbarqueidContratoCompra: TStringField;
    cdsEmbarquedescCadFornecedor: TStringField;
    cdsEmbarqueidClassificador: TIntegerField;
    cdsEmbarquedescClassificador: TStringField;
    cdsEmbarquedescLocalEmbarque: TStringField;
    cdsEmbarqueCliidCliente: TIntegerField;
    cdsEmbarqueClidescCadCliente: TStringField;
    cdsEmbarqueCliidCnpjCpf: TStringField;
    DBRGidFrete: TCDBRadioGroup;
    DBEidCnpjCpf: TCDBEdit;
    CLabel3: TCLabel;
    DBEdescCadAdicional: TCDBEdit;
    CLabel2: TCLabel;
    LookCidade: TCLookUp;
    DBEcep: TCDBEdit;
    CLabel34: TCLabel;
    LookEstado2: TCLookUp;
    DBEidCidade: TCDBEdit;
    CLabel36: TCLabel;
    DBEbairro: TCDBEdit;
    CLabel29: TCLabel;
    CLabel37: TCLabel;
    DBEfone: TCDBEdit;
    cdsPadraoidFrete: TSmallintField;
    cdsPadraoidCnpjCpf: TStringField;
    cdsPadraodescCadAdicional: TStringField;
    cdsPadraoidCidade: TIntegerField;
    cdsPadraocep: TStringField;
    cdsPadraobairro: TStringField;
    cdsPadraofone: TStringField;
    CLabel4: TCLabel;
    DBEplaca: TCDBEdit;
    cdsPadraoplaca: TStringField;
    CLabel5: TCLabel;
    DBEqtNf: TCDBEdit;
    CLabel6: TCLabel;
    DBEufPlaca: TCDBEdit;
    cdsPadraoufPlaca: TStringField;
    DBEidNf: TCDBEdit;
    CLabel7: TCLabel;
    LookDocSerie: TCLookUp;
    DBEidDocSerie: TCDBEdit;
    CLabel8: TCLabel;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraoidNf: TIntegerField;
    PanEmpresa: TCPanelGradient;
    CLabel9: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    DBEidCadEmpresa: TCDBEdit;
    Bevel2: TBevel;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsCadGeral: TClientDataSet;
    dspCadGeral: TDataSetProvider;
    sdsCadGeral: TSQLDataSet;
    cdsCadGeralidCadGeral: TIntegerField;
    cdsCadGeralidCnpjCpf: TStringField;
    cdsCadGeraldtCadastro: TSQLTimeStampField;
    cdsCadGeraldtAlteracao: TSQLTimeStampField;
    cdsCadGeraldtAtualizacao: TSQLTimeStampField;
    cdsCadGeralweb: TStringField;
    cdsCadGeralobsCadGeral: TStringField;
    cdsCadGeralEmpresa: TStringField;
    cdsCadGeralstCadGeral: TStringField;
    cdsCadGeralidGrupoCad: TSmallintField;
    cdsCadGeralsubsTributario: TStringField;
    cdsCadGeralPlanoContaDebSPED: TIntegerField;
    cdsCadGeralPlanoContaCredSPED: TIntegerField;
    cdsCadAdicional: TClientDataSet;
    dspCadAdicional: TDataSetProvider;
    sdsCadAdicional: TSQLDataSet;
    cdsCadAdicionalidCadGeral: TIntegerField;
    cdsCadAdicionalidCadAdicional: TSmallintField;
    cdsCadAdicionaldescCadAdicional: TStringField;
    cdsCadAdicionaldescAbreviada: TStringField;
    cdsCadAdicionalidInscEstadual: TStringField;
    cdsCadAdicionalidCnpjCpf: TStringField;
    cdsCadAdicionalidInscMunicipal: TStringField;
    cdsCadAdicionalendereco: TStringField;
    cdsCadAdicionalnumero: TIntegerField;
    cdsCadAdicionalcomplemento: TStringField;
    cdsCadAdicionalbairro: TStringField;
    cdsCadAdicionalcep: TStringField;
    cdsCadAdicionalidCidade: TIntegerField;
    cdsCadAdicionalfone: TStringField;
    cdsCadAdicionalfax: TStringField;
    cdsCadAdicionalcelular: TStringField;
    cdsCadAdicionalemail: TStringField;
    cdsCadAdicionalstCadAdicional: TStringField;
    cdsCadAdicionaltpAtividade: TStringField;
    cdsCadAdicionalperfilApresentacao: TStringField;
    cdsCadAdicionalsuframa: TStringField;
    DBEendereco: TCDBEdit;
    CLabel10: TCLabel;
    DBEnumero: TCDBEdit;
    CLabel12: TCLabel;
    cdsPadraoendereco: TStringField;
    cdsPadraonumero: TIntegerField;
    cdsPadraoidMotorista: TIntegerField;
    DBEidMotorista: TCDBEdit;
    DBEidEmbarque: TCDBEdit;
    cdsEmbarqueidCliente: TIntegerField;
    cdsEmbarqueidCnpjCpf: TStringField;
    cdsPadraonrCartaFrete: TIntegerField;
    DBEnrCartaFrete: TCDBEdit;
    CLabel13: TCLabel;
    cdsEmbarquedescCidade: TStringField;
    cdsEmbarqueClidescCidade: TStringField;
    BtnRetirar: TCBitBtn;
    cdsPadraoseloFiscal: TStringField;
    DBEseloFiscal: TCDBEdit;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    DBEvlFrete: TCDBEdit;
    cdsPadraovlFrete: TCurrencyField;
    cdsPadraovlAdiantamento: TCurrencyField;
    DBEvlAdiantamento: TCDBEdit;
    CLabel16: TCLabel;
    cdsPadraovlFreteTotal: TCurrencyField;
    CLabel17: TCLabel;
    DBEvlFreteTotal: TCDBEdit;
    cdsPadraovlSeguro: TCurrencyField;
    cdsPadraovlTarifaClassif: TCurrencyField;
    CLabel18: TCLabel;
    DBEvlSeguro: TCDBEdit;
    CLabel35: TCLabel;
    DBEvlTarifaClassif: TCDBEdit;
    cdsPadraoqtNf: TFloatField;
    cdsEmbarqueqtEmbarque: TFMTBCDField;
    cdsEmbarqueqtSaldo: TFMTBCDField;
    lookidCnpjCpf: TCLookUp;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridCotacaoFornecedorCellClick(Column: TColumn);
    procedure AbreCli(codigo: integer);
    procedure AbreEmbarqueCli(codigo: integer);
    procedure BtnConsultarClick(Sender: TObject);
    procedure HabilitaMotorista(hab : boolean);
    procedure DBEidCnpjCpfEnter(Sender: TObject);
    procedure DBEidCnpjCpfExit(Sender: TObject);
    procedure LimpaMotorista;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidDocSerieExit(Sender: TObject);
    procedure DBEidNfExit(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEcepExit(Sender: TObject);
    procedure cdsEmbarqueAfterOpen(DataSet: TDataSet);
    procedure BtnRetirarClick(Sender: TObject);
    procedure DBEvlFreteExit(Sender: TObject);
    procedure CalcFrete;
  private
    { Private declarations }
    vlAnterior : string;
  public
    { Public declarations }
  end;

var
  FrmGeraEmbarqueNf: TFrmGeraEmbarqueNf;

implementation

uses uDmPadrao, uDmFind, uFrmGerenciaRequisicao, uFrmPrincipal, uFuncao,
  uFrmPesCotacao, uFrmPesEmpFiscal, uFrmNotaFiscal, uFrmCadOrdemFrete;

{$R *.dfm}

procedure TFrmGeraEmbarqueNf.AbreCli(codigo: integer);
begin

  //Lista os clientes com saldo
  cdsEmbarqueCli.Active := false;
  cdsEmbarqueCli.CommandText := 'SELECT DISTINCT idCliente, descCadCliente, idCnpjCpf, descCidade FROM vEmbarqueSaldo ' +
                                ' WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCadEmpresa = ' +
                                DBEidCadEmpresa.Text + ' AND qtSaldo > 0';
  if codigo > 0 then
    cdsEmbarqueCli.CommandText := cdsEmbarqueCli.CommandText + ' AND idCliente = ' + IntToStr(codigo);
  cdsEmbarqueCli.Active := true;

  AbreEmbarqueCli(cdsEmbarqueCliidCliente.AsInteger);
end;

procedure TFrmGeraEmbarqueNf.AbreEmbarqueCli(codigo: integer);
begin
    cdsEmbarque.Active := false;
    if codigo > 0 then
      cdsEmbarque.CommandText := 'SELECT * FROM vEmbarqueSaldo WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                 ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idCliente = ' + IntToStr(codigo) +
                                 ' AND qtSaldo > 0'
    else
      cdsEmbarque.CommandText := 'SELECT * FROM vEmbarqueSaldo WHERE 1=2';
    cdsEmbarque.Active := true;
end;

procedure TFrmGeraEmbarqueNf.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  AbreCli(cdsClienteidCliente.AsInteger);
end;

procedure TFrmGeraEmbarqueNf.BtnRetirarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if cdsEmbarque.RecordCount > 0 then
    if messagedlg('Deseja realmente retirar o Embarque da lista?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      sql := 'INSERT INTO EmbarqueFora (idEmpresa, idCadEmpresa, idEmbarque) VALUES( ' + cdsEmbarqueidEmpresa.AsString +
             ', ' + cdsEmbarqueidCadEmpresa.AsString + ', ' + cdsEmbarqueidEmbarque.AsString + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
      //agora reabre o embarque
      AbreEmbarqueCli(cdsEmbarqueCliidCliente.AsInteger);
    end;
end;

procedure TFrmGeraEmbarqueNf.BtnSalvarClick(Sender: TObject);
var
  sql : string;
  idCadGeral, cdIni, cdFim : integer;
  usa_faixa : boolean;
begin
  inherited;
  if not funcao.VerCampoRequerido(cdsPadrao, '') then
    exit;
  //primeiro verifica se o motorista não está sendo cadastrado se sim cadastra um novo
  if not DBEdescCadAdicional.ReadOnly then //está cadastrando
  begin
    cdsCadGeral.Active := false;
    cdsCadGeral.CommandText := 'SELECT * FROM CadGeral WHERE 1=2';
    cdsCadGeral.Active := true;

    cdsCadAdicional.Active := false;
    cdsCadAdicional.CommandText := 'SELECT * FROM CadAdicional WHERE 1=2';
    cdsCadAdicional.Active := true;

    sql := 'SELECT * FROM ConfigFinanc WHERE idEmpresa = ' + frmPrincipal.idEmpresa; //SEMPRE VERIFICARÁ A FAIXA NA EMPRESA 1
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      usa_faixa := FieldByName('cadastroFaixa').AsString = 'S';
      cdIni := FieldByName('idCadIni').AsInteger;
      cdFim := FieldByName('idCadFim').AsInteger;

      if cdIni = 0 then
        cdIni := 1;

      if cdFim = 0 then
        cdFim := 99999999;
      if (usa_faixa) then //se está configurado para usar faixa vai atribuir o código conforme a faixa
      begin
        sql := 'SELECT MAX(idCadGeral) idCadGeral FROM CadGeral WHERE idCadGeral BETWEEN ' + IntToStr(cdIni) + ' AND ' + IntToStr(cdFim);
        idCadGeral := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idCadGeral').AsInteger;
        if idCadGeral = 0 then
          idCadGeral := cdIni
        else
          idCadGeral := idCadGeral + 1;
      end;
    end;

    if not usa_faixa then
    begin
      sql := 'SELECT MAX(idCadGeral) idCadGeral FROM CadGeral';
      idCadGeral := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idCadGeral').AsInteger + 1;
    end;
    cdsPadraoidMotorista.AsInteger := idCadGeral;
    //Insere o motorista na tabela CadGeral
    cdsCadGeral.Append;
    cdsCadGeralidCadGeral.AsInteger := idCadGeral;
    cdsCadGeralidCnpjCpf.AsString := funcao.Mascara(funcao.TiraMascara(cdsPadraoidCnpjCpf.AsString), 1, '');
    cdsCadGeraldtCadastro.AsDateTime := date;
    cdsCadGeraldtAlteracao.AsDateTime := date;
    cdsCadGeraldtAtualizacao.AsDateTime := date;
    cdsCadGeralEmpresa.AsString := 'N';
    cdsCadGeralstCadGeral.AsString := 'ATIVO';
    cdsCadGeral.Post;
    cdsCadGeral.ApplyUpdates(0);

    cdsCadAdicional.Append;
    cdsCadAdicionalidCadGeral.AsInteger := idCadGeral;
    cdsCadAdicionalidCadAdicional.AsInteger := 1;
    cdsCadAdicionaldescCadAdicional.AsString := cdsPadraodescCadAdicional.AsString;
    cdsCadAdicionaldescAbreviada.AsString := Copy(cdsPadraodescCadAdicional.AsString, 1, 30);
    cdsCadAdicionalidInscEstadual.AsString := 'ISENTO';
    cdsCadAdicionalidCnpjCpf.AsString := funcao.Mascara(funcao.TiraMascara(cdsPadraoidCnpjCpf.AsString), 1, '');
    cdsCadAdicionalendereco.AsString := cdsPadraoendereco.AsString;
    cdsCadAdicionalnumero.AsInteger := cdsPadraonumero.AsInteger;
    cdsCadAdicionalbairro.AsString := cdsPadraobairro.AsString;
    cdsCadAdicionalcep.AsString := cdsPadraocep.AsString;
    cdsCadAdicionalidCidade.AsInteger := cdsPadraoidCidade.AsInteger;
    cdsCadAdicionalfone.AsString := cdsPadraofone.AsString;
    cdsCadAdicionalstCadAdicional.AsString := 'ATIVO';
    cdsCadAdicional.Post;
    cdsCadAdicional.ApplyUpdates(0);
  end;
  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa, DBEidEmbarque, DBEidMotorista,
                        DBRGidFrete, DBEplaca, DBEufPlaca, DBEqtNf, DBEidDocSerie, DBEidNf, DBEnrCartaFrete, DBEseloFiscal,
                        DBEvlFrete, DBEvlFreteTotal, DBEvlAdiantamento, DBEvlSeguro, DBEvlTarifaClassif],
                        'spGeraNfEmbarque') then
  begin
    //gera a ordem de frete
    if trim(DBEnrCartaFrete.Text) <> '' then
    begin
      //primeiro precisa excluir caso ela já exista para agrupar as notas...
      sql := 'DELETE FROM OrdemFreteNf WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                       ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                                       ' AND idOrdemFrete = ' + funcao.RetornaValorEField(DBEnrCartaFrete, 3);
      dmPadrao.dbConexao.ExecuteDirect(sql);

      sql := 'DELETE FROM OrdemFrete WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                     ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                                     ' AND idOrdemFrete = ' + funcao.RetornaValorEField(DBEnrCartaFrete, 3);
      dmPadrao.dbConexao.ExecuteDirect(sql);

      Application.CreateForm(TFrmCadOrdemFrete, FrmCadOrdemFrete);
      with FrmCadOrdemFrete do
      begin
        Show;
        if not (cdsEmpresa.State in [dsEdit,dsInsert]) then
          cdsEmpresa.Append;
        cdsEmpresaidEmpresa.AsInteger := FrmGeraEmbarqueNf.cdsPadraoidEmpresa.AsInteger;
        cdsEmpresaidCadEmpresa.AsInteger := FrmGeraEmbarqueNf.cdsPadraoidCadEmpresa.AsInteger;

        if not (cdsPadrao.State in [dsEdit,dsInsert]) then
          cdsPadrao.Append;
        cdsPadraoidEmpresa.AsInteger := FrmGeraEmbarqueNf.cdsPadraoidEmpresa.AsInteger;
        cdsPadraoidCadEmpresa.AsInteger := FrmGeraEmbarqueNf.cdsPadraoidCadEmpresa.AsInteger;
        cdsPadraoidOrdemFrete.AsInteger := FrmGeraEmbarqueNf.cdsPadraonrCartaFrete.AsInteger;

        DBEidOrdemFreteExit(DBEidOrdemFrete);
        if not (cdsPadrao.State in [dsEdit,dsInsert]) then
          cdsPadrao.Edit;
        try
          try
            actSalvar.Execute;
          except
            close;
          end;
        finally
          close;
        end;
      end;
    end;

    //aqui trata o pós geração da nota... se correu tudo bem.. abrirá a tela da mesma
      if not Assigned(frmNotaFiscal) then
        frmNotaFiscal := TfrmNotaFiscal.create(frmPrincipal, ['EMBARQUE', DBEidEmpresa.Text, DBEidCadEmpresa.Text,
                                                              DBEidDocSerie.Text, DBEidNf.Text]);
      frmNotaFiscal.Show;
      close;
  end;

end;

procedure TFrmGeraEmbarqueNf.CalcFrete;
var
  qtTonelada, qtPesoTotal : double;
begin
    qtPesoTotal := cdsPadraoqtNf.Value;
    qtTonelada := qtPesoTotal/1000;
    cdsPadraovlFreteTotal.Value := qtTonelada * cdsPadraovlFrete.AsFloat;
end;

procedure TFrmGeraEmbarqueNf.cdsEmbarqueAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  inherited;
  for i := 0 to DataSet.FieldDefs.Count - 1 do
    DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TFrmGeraEmbarqueNf.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoidFrete.AsInteger := 0;
end;

procedure TFrmGeraEmbarqueNf.DBEcepExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> (Sender as TCustomEdit).Text) then
    cdsPadrao.FieldByName('cep').AsString := funcao.Mascara(cdsPadrao.FieldByName('cep').AsString, 0, '');
end;

procedure TFrmGeraEmbarqueNf.DBEidCnpjCpfEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TFrmGeraEmbarqueNf.DBEidCnpjCpfExit(Sender: TObject);
var
  cpf : string;
begin
  inherited;
  if (BtnFechar.Focused) then
    exit;

  if not Funcao.ValidaCnpj_Cpf(Sender as TCustomEdit) then
    exit;

  if (vlAnterior <> (Sender as TCustomEdit).Text) then
  begin
    LimpaMotorista;
    if (trim((Sender as TCustomEdit).Text) <> '') then
    begin
      cpf := funcao.Mascara(funcao.TiraMascara(DBEidCnpjCpf.Text), 1, '');
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteContabil WHERE idCnpjCpf = ' + QuotedStr(cpf)) do
      begin
        if RecordCount > 0 then
        begin
          HabilitaMotorista(false);
          if not (cdsPadrao.State in [dsEdit, dsInsert]) then
            cdsPadrao.Edit;
          cdsPadraodescCadAdicional.AsString := FieldByName('descCadCliente').AsString;
          cdsPadraoidCidade.AsString := FieldByName('idCidade').AsString;
          cdsPadraocep.AsString := FieldByName('cep').AsString;
          cdsPadraobairro.AsString := FieldByName('bairro').AsString;
          cdsPadraofone.AsString := FieldByName('fone').AsString;
          cdsPadraoendereco.AsString := FieldByName('endereco').AsString;
          cdsPadraonumero.AsString := FieldByName('numero').AsString;
          cdsPadraoidMotorista.AsInteger := FieldByName('idCliente').AsInteger;
        end
        else
        begin
          HabilitaMotorista(true);
          DBEdescCadAdicional.SetFocus;
        end;
      end; //with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteContabil WHERE idCnpjCpf = ' + QuotedStr(DBEidCnpjCpf.Text)) do
    end;
  end; //if (vlAnterior <> (Sender as TCustomEdit).Text) then
end;

procedure TFrmGeraEmbarqueNf.DBEidDocSerieExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (vlAnterior <> (Sender as TCustomEdit).Text) then
  begin
    cdsPadraoidNf.Clear;
    if (trim((Sender as TCustomEdit).Text) <> '') then
    begin
      if TRIM(lookidCnpjCpf.Caption) = '07.218.848/0001-30' then
      begin
        sql := 'SELECT (MAX(ISNULL(idNf, 0)) + 1) AS maximo FROM Nf WHERE idEmpresa = ' + DBEidEmpresa.Text +
             ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text) + ' AND idNf < 70000';
        cdsPadrao.FieldByName('idNf').AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('maximo').AsInteger;
      end
      else
      begin
        sql := 'SELECT MAX(idNf) idNf FROM Nf WHERE idEmpresa = ' + DBEidEmpresa.Text +
               ' AND idDocSerie = ' + QuotedStr(DBEidDocSerie.Text);
        cdsPadraoidNf.AsInteger := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idNf').AsInteger + 1;
      end;
    end;

  end; //fim do if (vlAnterior <> (Sender as TCustomEdit).Text) then
end;

procedure TFrmGeraEmbarqueNf.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
    FrmPesEmpFiscal.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
        FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
        (Formulario.FindComponent('DBEidCadEmpresa') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmGeraEmbarqueNf.DBEidNfExit(Sender: TObject);
begin
  inherited;
  //Verifica se já não existe Nf com esse número para quando for digitado
  if (vlAnterior <> (Sender as TCustomEdit).Text) then
    if (trim((Sender as TCustomEdit).Text) <> '') then
      if frmPrincipal.ExecutaSQLRet([], '', 'SELECT COUNT(*) Qtde FROM Nf WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                            ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idDocSerie = ' +
                                            QuotedStr(DBEidDocSerie.Text) + ' AND idNf = ' + DBEidNf.Text).FieldByName('Qtde').AsInteger > 0  then
      begin
        messagedlg('Nota já existente!', mtwarning, [mbok], 0);
        cdsPadraoidNf.Clear;
        DBEidNf.SetFocus;
      end;
end;

procedure TFrmGeraEmbarqueNf.DBEvlFreteExit(Sender: TObject);
begin
  inherited;
  if DBEvlFrete.Text <> vlAnterior then
    CalcFrete;
end;

procedure TFrmGeraEmbarqueNf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmGeraEmbarqueNf := nil;
  action := caFree;
end;

procedure TFrmGeraEmbarqueNf.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCliente.CreateDataSet;
  cdsCliente.Append;
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
end;

procedure TFrmGeraEmbarqueNf.FormShow(Sender: TObject);
begin
  inherited;
  DBEidCliente.SetFocus;
  Width := 860;
  HabilitaMotorista(false);
  cdsPadraoidEmpresa.AsString := frmPrincipal.idEmpresa;
  cdsPadraoidCadEmpresa.AsString := frmPrincipal.idCadEmpresa;
  Height := 575;

  AbreCli(0);
end;

procedure TFrmGeraEmbarqueNf.GridCotacaoFornecedorCellClick(Column: TColumn);
begin
  inherited;
  AbreEmbarqueCli(cdsEmbarqueCliidCliente.AsInteger);
end;

procedure TFrmGeraEmbarqueNf.HabilitaMotorista(hab: boolean);
begin
  funcao.SomenteLeitura([DBEdescCadAdicional, DBEidCidade, DBEcep, DBEbairro, DBEfone, DBEendereco, DBEnumero], not hab);
end;

procedure TFrmGeraEmbarqueNf.LimpaMotorista;
begin
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsPadraodescCadAdicional.Clear;
  cdsPadraoidCidade.Clear;
  cdsPadraocep.Clear;
  cdsPadraobairro.Clear;
  cdsPadraofone.Clear;
end;

end.
