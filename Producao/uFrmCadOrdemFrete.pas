unit uFrmCadOrdemFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CCheckBox, CDBCheckBox,
  CDBRadioGroup, uFrmCadPadraoEmpFiscal, System.Actions, Math, EditAlign, CEdit,
  System.ImageList;

type
  TFrmCadOrdemFrete = class(TFrmCadPadraoEmpFiscal)
    sdsOrdemFrete: TSQLDataSet;
    actCadCidade: TAction;
    sdsOrdemNf: TSQLDataSet;
    dspOrdemNf: TDataSetProvider;
    cdsOrdemNf: TClientDataSet;
    dsOrdemNf: TDataSource;
    CGroupBox13: TCGroupBox;
    CLabel2: TCLabel;
    DBEdtEmissao: TCDBEdit;
    DBEidOrdemFrete: TCDBEdit;
    CLabel14: TCLabel;
    cdsItem: TClientDataSet;
    cdsFornecedor: TClientDataSet;
    grpDadosFrete: TCGroupBox;
    DBEvlDescontoQuebra: TCDBEdit;
    CLabel15: TCLabel;
    DBEvlFreteBruto: TCDBEdit;
    CLabel1: TCLabel;
    DBEvlFreteTotal: TCDBEdit;
    CLabel16: TCLabel;
    DBEvlFreteEmpresaTotal: TCDBEdit;
    CLabel3: TCLabel;
    DBEvlFreteEmpresa: TCDBEdit;
    CLabel5: TCLabel;
    CLabel7: TCLabel;
    DBEvlSeguro: TCDBEdit;
    CLabel17: TCLabel;
    DBEvlFreteLiquido: TCDBEdit;
    CLabel18: TCLabel;
    DBEvlOutrasDespesas: TCDBEdit;
    CLabel21: TCLabel;
    DBEvlAdiantamento: TCDBEdit;
    DBEvlFreteSaldo: TCDBEdit;
    CLabel22: TCLabel;
    CLabel23: TCLabel;
    DBEvlSaldoAPagar: TCDBEdit;
    grpNf: TCGroupBox;
    grpBotoes: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CLabel6: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    CLabel4: TCLabel;
    DBEidNf: TCDBEdit;
    DBEvlNf: TCDBEdit;
    CLabel9: TCLabel;
    DBEvlProduto: TCDBEdit;
    CLabel20: TCLabel;
    CLabel8: TCLabel;
    DBEqtPesoSaida: TCDBEdit;
    CLabel13: TCLabel;
    DBEqtPesoChegada: TCDBEdit;
    CLabel10: TCLabel;
    DBEqtQuebra: TCDBEdit;
    CLabel19: TCLabel;
    DBEprQuebra: TCDBEdit;
    CLabel24: TCLabel;
    DBEvlDescontoQuebraN: TCDBEdit;
    CLabel11: TCLabel;
    DBEprTolerancia: TCDBEdit;
    CLabel12: TCLabel;
    DBEqtTolerancia: TCDBEdit;
    grpGradeNf: TCGroupBox;
    CDBGrid1: TCDBGrid;
    DBEidMotorista: TCDBEdit;
    LookMotorista: TCLookUp;
    CLabel25: TCLabel;
    DBEplaca: TCDBEdit;
    CLabel26: TCLabel;
    cdsOrdemNfidEmpresa: TIntegerField;
    cdsOrdemNfidCadEmpresa: TSmallintField;
    cdsOrdemNfidOrdemFrete: TIntegerField;
    cdsOrdemNfidDocSerie: TStringField;
    cdsOrdemNfidNf: TIntegerField;
    cdsOrdemNfidMotorista: TIntegerField;
    cdsOrdemNfplaca: TStringField;
    cdsOrdemNfvlNf: TFMTBCDField;
    cdsOrdemNfvlProduto: TFMTBCDField;
    cdsOrdemNfqtPesoSaida: TIntegerField;
    cdsOrdemNfprQuebra: TFMTBCDField;
    cdsOrdemNfqtQuebra: TIntegerField;
    cdsOrdemNfprTolerancia: TFMTBCDField;
    cdsOrdemNfqtTolerancia: TIntegerField;
    cdsOrdemNfqtPesoChegada: TIntegerField;
    cdsOrdemNfvlDescontoQuebra: TFMTBCDField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TSmallintField;
    cdsPadraoidOrdemFrete: TIntegerField;
    cdsPadraodtEmissao: TSQLTimeStampField;
    cdsPadraovlDescontoQuebra: TFMTBCDField;
    cdsPadraovlFreteTotal: TFMTBCDField;
    cdsPadraovlFreteBruto: TFMTBCDField;
    cdsPadraovlFreteEmpresa: TFMTBCDField;
    cdsPadraovlFreteEmpresaTotal: TFMTBCDField;
    cdsPadraovlSeguro: TFMTBCDField;
    cdsPadraovlFreteLiquido: TFMTBCDField;
    cdsPadraovlAdiantamento: TFMTBCDField;
    cdsPadraovlFreteSaldo: TFMTBCDField;
    cdsPadraovlSaldoAPagar: TFMTBCDField;
    cdsPadraovlOutrasDespesas: TFMTBCDField;
    cdsOrdemNfqtPesoSaidaTotal: TAggregateField;
    grpSoma: TCGroupBox;
    CLabel43: TCLabel;
    DBEqtPesoSaidaTotal: TCDBEdit;
    CLabel27: TCLabel;
    DBEqtPesoChegadaTotal: TCDBEdit;
    cdsOrdemNfqtPesoChegadaTotal: TAggregateField;
    cdsOrdemNfvlDescontoQuebraSoma: TAggregateField;
    grpFinanceiro: TCGroupBox;
    DBEidFornecedorAdto: TCDBEdit;
    LookFornecedor: TCLookUp;
    CLabel28: TCLabel;
    DBEidFornecedorSaldo: TCDBEdit;
    CLookUp1: TCLookUp;
    CLabel29: TCLabel;
    CLabel30: TCLabel;
    DBEstFinancAdto: TCDBEdit;
    CLabel31: TCLabel;
    DBEstFinancSaldo: TCDBEdit;
    BtnFinanceiroAdto: TCBitBtn;
    BtnFinanceiroSaldo: TCBitBtn;
    cdsPadraoidFornecedorAdto: TIntegerField;
    cdsPadraoidFornecedorSaldo: TIntegerField;
    cdsPadraostFinancAdto: TStringField;
    cdsPadraostFinancSaldo: TStringField;
    cdsPadraoidTituloPagAdto: TIntegerField;
    cdsPadraoidTituloPagSaldo: TIntegerField;
    DBEdtVencimentoAdto: TCDBEdit;
    CLabel32: TCLabel;
    DBEdtVencimentoSaldo: TCDBEdit;
    CLabel33: TCLabel;
    cdsPadraodtVencimentoAdto: TSQLTimeStampField;
    cdsPadraodtVencimentoSaldo: TSQLTimeStampField;
    cdsPadraonrFatura: TStringField;
    cdsPadraoidSafra: TIntegerField;
    DBEidSafra: TCDBEdit;
    EDtpTitulo: TCEdit;
    CLabel34: TCLabel;
    DBEnrFatura: TCDBEdit;
    cdsPadraovlTarifaClassif: TFMTBCDField;
    cdsPadraovlTotalClassif: TFMTBCDField;
    CLabel35: TCLabel;
    DBEvlTarifaClassif: TCDBEdit;
    CLabel36: TCLabel;
    DBEvlTotalClassif: TCDBEdit;
    CLabel37: TCLabel;
    DBEdtLancamento: TCDBEdit;
    cdsPadraodtLancamento: TSQLTimeStampField;
    DBCKabonaQuebra: TCDBCheckBox;
    cdsPadraoabonaQuebra: TStringField;
    cdsRomaneio: TClientDataSet;
    dsRomaneio: TDataSource;
    dspRomaneio: TDataSetProvider;
    sdsRomaneio: TSQLDataSet;
    cdsRomaneioidEmpresa: TIntegerField;
    cdsRomaneioidCadEmpresa: TSmallintField;
    cdsRomaneioidRomaneio: TIntegerField;
    cdsRomaneioidDocSerie: TStringField;
    cdsRomaneioidNf: TIntegerField;
    cdsRomaneioidDesconto: TSmallintField;
    cdsRomaneioprDesconto: TFMTBCDField;
    cdsRomaneioqtDesconto: TIntegerField;
    cdsRomaneioqtDescontoTotal: TAggregateField;
    cdsRomaneioqtPesoProduto: TIntegerField;
    cdsRomaneioqtPesoTotal: TAggregateField;
    constructor create (Formulario: TComponent; Parametro: array of String);
    procedure cdsOrdemNfAfterEdit(DataSet: TDataSet);
    procedure dspOrdemNfBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsOrdemNfAfterInsert(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidOrdemFreteExit(Sender: TObject);
    procedure dsOrdemNfStateChange(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidOrdemFreteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaDadosNf(Sender : TObject);
    procedure DBEqtQuebraEnter(Sender: TObject);
    procedure DBEqtQuebraExit(Sender: TObject);
    procedure DBEidNfExit(Sender: TObject);
    procedure CalcFrete(Sender: TObject);
    procedure DBEvlFreteBrutoExit(Sender: TObject);
    procedure DBEvlFreteBrutoEnter(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure VisualizaFinanceiro(ver : boolean);
    procedure BtnFinanceiroAdtoClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function ConfigFinancOK(tpConsulta : string): boolean;
    procedure GeraFinancAdto;
    procedure GeraFinancSaldo;
    procedure BtnFinanceiroSaldoClick(Sender: TObject);
    procedure DBEqtPesoChegadaExit(Sender: TObject);
    procedure DBEnrFaturaExit(Sender: TObject);
    procedure DBCKabonaQuebraEnter(Sender: TObject);
    procedure DBCKabonaQuebraExit(Sender: TObject);
  private
    { Private declarations }
    vlAnterior, idOrdemFrete, idEmpresa, idCadEmpresa : string;
  public
    { Public declarations }
  end;

var
  FrmCadOrdemFrete: TFrmCadOrdemFrete;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesEmpFiscal,
  uFrmPadraoPesqEmpContabil, uFrmPesOrdemFrete, uCadTituloPag,
  uFrmDistribuiQuebraRom;

{$R *.dfm}

procedure TFrmCadOrdemFrete.actCancelarExecute(Sender: TObject);
begin
  inherited;
  VisualizaFinanceiro(false);
end;

procedure TFrmCadOrdemFrete.actExcluirExecute(Sender: TObject);
begin
  if cdsPadraoidTituloPagAdto.AsInteger > 0 then
  begin
    messagedlg('Titulo de Adiantamento relacionado deve ser excluído primeiro!', mtwarning, [mbok], 0);
    exit;
  end;
  if cdsPadraoidTituloPagSaldo.AsInteger > 0 then
  begin
    messagedlg('Titulo de Saldo relacionado deve ser excluído primeiro!', mtwarning, [mbok], 0);
    exit;
  end;

  inherited;
end;

procedure TFrmCadOrdemFrete.actNovoExecute(Sender: TObject);
begin
  inherited;
  VisualizaFinanceiro(false);
end;

procedure TFrmCadOrdemFrete.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesOrdemFrete, FrmPesOrdemFrete);
  FrmPesOrdemFrete.ShowModal;
  if FrmPesOrdemFrete.idOrdemFrete <> 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;
    cdsEmpresaidEmpresa.AsInteger := FrmPesOrdemFrete.cdsGrididEmpresa.AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := FrmPesOrdemFrete.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmPesOrdemFrete.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmPesOrdemFrete.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idOrdemFrete').AsInteger := FrmPesOrdemFrete.idOrdemFrete;
    DBEidOrdemFrete.SetFocus;
    DBEidOrdemFreteExit(DBEidOrdemFrete);
  end;
end;

procedure TFrmCadOrdemFrete.actSalvarExecute(Sender: TObject);
var
  sql : string;
  qtDesconto, qtDescParcial, qtDescTotal, qtPesoTotal : integer;
  prRom : double; //irá pegar o percentual do romaneio em relação ao total
begin
  if cdsOrdemNf.State in [dsInsert, dsEdit] then
    cdsOrdemNf.Cancel;

  GravaChave(1, '', nil);
  inherited;
  {
  //executa proc que atualiza as pesagens
  if cdsOrdemNf.RecordCount > 0 then
  begin
    //Primeiro executa proc para atualizar romaneio no caso de não ter as pesagens
    sql := 'EXEC spInsereQuebraRom ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                       funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', 0, ' + //Romaneio 0
                                       funcao.RetornaValorEField(DBEidOrdemFrete, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);

    cdsOrdemNf.First;
    while not cdsOrdemNf.Eof do
    begin
      sql := 'SELECT * FROM vRomaneioClassNF WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
             ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
             ' AND idDocSerie = ' + funcao.RetornaValorEField(DBEidDocSerie, 3) +
             ' AND idNf = ' + funcao.RetornaValorEField(DBEidNf, 3) +
             ' AND idDesconto = 7';
      cdsRomaneio.Active := false;
      cdsRomaneio.CommandText := sql;
      cdsRomaneio.Active := true;
      if cdsRomaneio.RecordCount > 0 then
      begin
        qtDesconto := cdsRomaneioqtDescontoTotal.Value;

        if qtDesconto <> cdsOrdemNfqtQuebra.AsInteger then
        begin
          //agora verifica se tem somente um romaneio
          if (cdsRomaneio.RecordCount = 1) then //se for apenas um corrige pela procedure
          begin
            sql := 'EXEC spVerPesoChegada ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                   funcao.RetornaValorEField(DBEidDocSerie, 3) + ', ' + funcao.RetornaValorEField(DBEidNf, 3) + ', ' +
                   funcao.RetornaValorEField(DBEqtPesoChegada, 3);
            dmPadrao.dbConexao.ExecuteDirect(sql);
          end
          else //se for mais... abre a tela de correção
          begin
            //faz um laço para distribuir proporcionalmente os descontos

            cdsRomaneio.First;
            //pega o Peso Total e joga para a variável
            qtPesoTotal := cdsRomaneioqtPesoTotal.Value;
            qtDescTotal := 0;
            while not cdsRomaneio.Eof do
            begin
              prRom := cdsRomaneioqtPesoProduto.AsFloat/qtPesoTotal;
              qtDescParcial := trunc(cdsOrdemNfqtQuebra.AsInteger*prRom);
              qtDescTotal := qtDescTotal + qtDescParcial;
              cdsRomaneio.Edit;
              cdsRomaneioqtDesconto.AsInteger := qtDescParcial;
              cdsRomaneio.Post;
              cdsRomaneio.Next;
            end;
            //Agora ajusta caso houve diferença no ultimo mesmo
            if qtDesconto <> qtDescTotal then
            begin
              cdsRomaneio.Edit;
              cdsRomaneioqtDesconto.AsInteger := cdsRomaneioqtDesconto.AsInteger + (cdsOrdemNfqtQuebra.AsInteger-qtDescTotal);
              cdsRomaneio.Post;
            end;
            cdsRomaneio.First;
            Application.CreateForm(TFrmDistribuiQuebraRom, FrmDistribuiQuebraRom);
            FrmDistribuiQuebraRom.ShowModal;
            //Agora a partir daqui ajusta a quebra do Romaneio
            //Agora atualiza os Romaneios
            cdsRomaneio.First;
            while not cdsRomaneio.Eof do
            begin
              //PRIMEIRO EXCLUI PARA LANÇAR NOVAMENTE
              sql := 'DELETE FROM RomaneioClassificacao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                     ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                     ' AND idRomaneio = ' + cdsRomaneioidRomaneio.AsString +
                     ' AND idDesconto = 7';
              dmPadrao.dbConexao.ExecuteDirect(sql);

              //Agora insere na tabela de classificação
              sql := 'INSERT INTO RomaneioClassificacao (idEmpresa, idCadEmpresa, idRomaneio, idDesconto, prDesconto, qtDesconto, prMedido, qtDestino) ' +
                     ' VALUES(' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                     cdsRomaneioidRomaneio.AsString + ', 7, ' + 'ROUND((' + cdsRomaneioqtDesconto.AsString + '/' + cdsRomaneioqtPesoProduto.AsString + ')*100, 3),' +
                     cdsRomaneioqtDesconto.AsString + ', 0, ' + IntToStr(cdsRomaneioqtPesoProduto.AsInteger-cdsRomaneioqtDesconto.AsInteger) + ')';
              dmPadrao.dbConexao.ExecuteDirect(sql);

              sql := 'EXEC spAtualizaPesoRom ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                     cdsRomaneioidRomaneio.AsString;
              dmPadrao.dbConexao.ExecuteDirect(sql);
              cdsRomaneio.Next;
            end;
          end;
        end;
      end;
      cdsOrdemNf.Next;
    end;
  end; }
end;

procedure TFrmCadOrdemFrete.BtnAdicionarProdClick(Sender: TObject);
var
  vlDescontoSoma : double;
begin
  inherited;
  if (Sender = BtnAdicionarProd) then
  begin
    if trim(DBEqtQuebra.Text) = '' then
      cdsOrdemNfqtQuebra.AsInteger := 0;
    if trim(DBEprQuebra.Text) = '' then
      cdsOrdemNfprQuebra.AsFloat := 0;
    if trim(DBEvlDescontoQuebraN.Text) = '' then
      cdsOrdemNfvlDescontoQuebra.AsFloat := 0;
  end;

  funcao.GravaSec(chave, cdsOrdemNf, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), '');

  if (Sender = BtnAdicionarProd) or ( Sender = BtnRetirarProd) then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;

    if cdsOrdemNfvlDescontoQuebraSoma.Value > 0 then
      vlDescontoSoma := cdsOrdemNfvlDescontoQuebraSoma.Value;
    if cdsPadraoabonaQuebra.AsString = 'N' then
      cdsPadraovlDescontoQuebra.Value := vlDescontoSoma
    else
      cdsPadraovlDescontoQuebra.Value := 0;

//    if (Sender = BtnAdicionarProd) then
//      DBEvlFreteBruto.SetFocus;
  end;

  //Se entrou aqui alterou valores do frete
  vlAnterior := '000999'; //só para ser diferente e calcular
  DBEvlFreteBrutoExit(DBEvlFreteBruto);
end;

procedure TFrmCadOrdemFrete.BtnFinanceiroAdtoClick(Sender: TObject);
begin
  inherited;
  if cdsPadraoidTituloPagAdto.AsInteger > 0 then
  begin
    if not Assigned(FrmCadTituloPag) then
      FrmCadTituloPag := TFrmCadTituloPag.create(Self, [cdsPadraoidTituloPagAdto.AsString]);
    FrmCadTituloPag.Show;
  end
  else
    GeraFinancAdto;
end;

procedure TFrmCadOrdemFrete.BtnFinanceiroSaldoClick(Sender: TObject);
begin
  inherited;
  if cdsPadraoidTituloPagSaldo.AsInteger > 0 then
  begin
    if not Assigned(FrmCadTituloPag) then
      FrmCadTituloPag := TFrmCadTituloPag.create(Self, [cdsPadraoidTituloPagSaldo.AsString]);
    FrmCadTituloPag.Show;
  end
  else
    GeraFinancSaldo;
end;

procedure TFrmCadOrdemFrete.BuscaDadosNf(Sender : TObject);
var
  sql, group : string;
  idRom : integer;
  prTolerancia, vlTarifaFrete : double;
begin
  //procedure responsável por buscar as informações da carta frete pelo romaneio

  //Busca o % de tolerância
  sql := 'SELECT * FROM ConfigProducao WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);
  with FrmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if FieldByName('prTolFrete').AsFloat > 0 then
      prTolerancia := FieldByName('prTolFrete').AsFloat
    else
      prTolerancia := 0;

    vlTarifaFrete := FieldByName('vlTarifaFrete').AsFloat;
  end;

  //procura pela carta frete
  sql := 'SELECT r.idEmpresa, r.idCadEmpresa, r.idDocSerie, r.idNf, r.nrCartaFrete, MIN(r.vlUnitario) vlUnitario, MAX(r.dtRomaneio) dtEmissao, ' +
         ' SUM(r.qtPesoBruto) qtPesoBruto, ISNULL(n.vlNotaFiscal, 0) vlNotaFiscal, r.idMotorista, MAX(r.placa) placa, r.idSafra,  ' +
         ' SUM(rc.qtDesconto) qtDesconto, MAX(r.vlFrete) vlFrete, SUM(r.vlFreteTotal) vlFreteTotal, MAX(r.vlAdiantamento) vlAdiantamento, ' +
         ' MAX(r.vlSeguro) vlSeguro, MAX(r.vlTarifaClassif) vlTarifaClassif ' +
         ' FROM Romaneio r LEFT JOIN NfValor n ' +
         '   ON r.idEmpresa = n.idEmpresa ' +
         '  AND r.idCadEmpresa = n.idCadEmpresa ' +
         '  AND r.idDocSerie = n.idDocSerie ' +
         '  AND r.idNf = n.idNf LEFT JOIN RomaneioClassificacao rc ' +
         '   ON r.idEmpresa = rc.idEmpresa ' +
         '  AND r.idCadEmpresa = rc.idCadEmpresa ' +
         '  AND r.idRomaneio = rc.idRomaneio ' +
         '  AND rc.idDesconto = 7 ' + //Quebra de balança
         ' WHERE r.idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         '   AND r.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);

  group := ' GROUP BY r.idEmpresa, r.idCadEmpresa, r.idDocSerie, r.idNf, r.nrCartaFrete, r.vlUnitario, ' +
           ' n.vlNotaFiscal, r.idMotorista, r.placa, r.idSafra';

  if Sender = DBEidOrdemFrete then
    sql := sql + ' AND r.nrCartaFrete = ' + funcao.RetornaValorEField(DBEidOrdemFrete, 3) + group
  else
  begin
    sql := sql + ' AND r.idNf = ' + funcao.RetornaValorEField(DBEidNf, 3) + group;
    //verifica se existe pois do contrário terá que buscar os dados diretamente da Nf
    if frmPrincipal.ExecutaSQLRet([], '', sql).RecordCount = 0 then
      sql := 'SELECT TOP 1 n.idEmpresa, n.idCadEmpresa, n.idDocSerie, n.idNf, 0 nrCartaFrete, np.vlLiquido vlUnitario, n.dtEmissao, ' +
         ' np.qtProduto qtPesoBruto, ISNULL(nv.vlNotaFiscal, 0) vlNotaFiscal, m.idFornecedor idMotorista, nt.placa, n.idSafra, ' +
         ' 0 qtDesconto, 0 vlFrete, 0 vlFreteTotal, 0 vlAdiantamento, 0 vlSeguro, 0 vlTarifaClassif ' +
         ' FROM Nf n INNER JOIN NfProduto np' +
         '   ON n.idEmpresa = np.idEmpresa ' +
         '  AND n.idCadEmpresa = np.idCadEmpresa ' +
         '  AND n.idDocSerie = np.idDocSerie ' +
         '  AND n.idNf = np.idNf INNER JOIN NfValor nv ' +
         '   ON n.idEmpresa = nv.idEmpresa ' +
         '  AND n.idCadEmpresa = nv.idCadEmpresa ' +
         '  AND n.idDocSerie = nv.idDocSerie ' +
         '  AND n.idNf = nv.idNf LEFT JOIN NfTransporte nt ' +
         '   ON n.idEmpresa = nt.idEmpresa ' +
         '  AND n.idCadEmpresa = nt.idCadEmpresa ' +
         '  AND n.idDocSerie = nt.idDocSerie ' +
         '  AND n.idNf = nt.idNf LEFT JOIN vCadFornecedorContabil m ' +
         '   ON nt.idCnpjCpf = m.idCnpjCpf ' +
         'WHERE n.idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
         '  AND n.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
         '  AND n.idNf = ' + funcao.RetornaValorEField(DBEidNf, 3);
  end;

  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      First;
      while not Eof do
      begin
        if (Sender = DBEidOrdemFrete) then //se estiver vindo da ordem de frete é pq está adicionando
        begin
          BtnNovoProd.Click;
          if (trim(FieldByName('idDocSerie').AsString) <> '') then
            cdsOrdemNfidDocSerie.AsString := FieldByName('idDocSerie').AsString
          else
            cdsOrdemNfidDocSerie.AsString := 'NFS';

          if FieldByName('idNf').AsInteger > 0 then
            cdsOrdemNfidNf.AsInteger := FieldByName('idNf').AsInteger;
        end;

        //Adiciona a tolerancia
        cdsOrdemNfprTolerancia.AsFloat := prTolerancia;

        //Adiciona a tarifa
        if vlTarifaFrete > 0 then
          cdsPadraovlFreteEmpresa.AsFloat := vlTarifaFrete;

        if FieldByName('vlUnitario').AsFloat > 0 then
          cdsOrdemNfvlProduto.AsFloat := FieldByName('vlUnitario').AsFloat;

        if FieldByName('idMotorista').AsInteger > 0 then
          cdsOrdemNfidMotorista.AsInteger := FieldByName('idMotorista').AsInteger;

        if FieldByName('idSafra').AsInteger > 0 then
          cdsPadraoidSafra.AsInteger := FieldByName('idSafra').AsInteger;

        if trim(FieldByName('placa').AsString) <> '' then
          cdsOrdemNfplaca.AsString := FieldByName('placa').AsString;

        if FieldByName('qtPesoBruto').AsInteger > 0 then
        begin
          cdsOrdemNfqtPesoSaida.AsInteger := FieldByName('qtPesoBruto').AsInteger;
          if cdsOrdemNfprTolerancia.AsFloat > 0 then
            cdsOrdemNfqtTolerancia.AsInteger := Trunc((cdsOrdemNfqtPesoSaida.AsInteger*cdsOrdemNfprTolerancia.AsFloat)/100);
        end;

        if FieldByName('vlNotaFiscal').AsFloat > 0 then
          cdsOrdemNfvlNf.AsFloat := FieldByName('vlNotaFiscal').AsFloat
        else
          cdsOrdemNfvlNf.AsFloat := cdsOrdemNfqtPesoSaida.AsInteger * cdsOrdemNfvlProduto.AsFloat;

        cdsOrdemNfqtQuebra.AsInteger := 0;

        if FieldByName('qtDesconto').AsInteger > 0 then
           cdsOrdemNfqtQuebra.AsInteger := FieldByName('qtDesconto').AsInteger;

        if not FieldByName('dtEmissao').IsNull then
          cdsPadraodtEmissao.AsDateTime := FieldByName('dtEmissao').AsDateTime;

        cdsOrdemNfqtPesoChegada.AsInteger := cdsOrdemNfqtPesoSaida.AsInteger - cdsOrdemNfqtQuebra.AsInteger;

          if cdsOrdemNfqtQuebra.AsInteger > 0 then
          begin
            vlAnterior := '';
            DBEqtQuebraExit(DBEqtQuebra);
          end;
        //Registra o lançamento
        if (Sender = DBEidOrdemFrete) then
          BtnAdicionarProd.Click;

        if FieldByName('vlFreteTotal').AsFloat > 0 then
          cdsPadraovlFreteTotal.AsFloat := FieldByName('vlFreteTotal').AsFloat;

        if FieldByName('vlFrete').AsFloat > 0 then
        begin
          cdsPadraovlFreteBruto.AsFloat := FieldByName('vlFrete').AsFloat;
          CalcFrete(DBEvlFreteBruto);
        end;

        if FieldByName('vlAdiantamento').AsFloat > 0 then
        begin
          cdsPadraovlAdiantamento.AsFloat := FieldByName('vlAdiantamento').AsFloat;
          CalcFrete(DBEvlAdiantamento);
        end;

        if FieldByName('vlSeguro').AsFloat > 0 then
        begin
          cdsPadraovlSeguro.AsFloat := FieldByName('vlSeguro').AsFloat;
          CalcFrete(DBEvlSeguro);
        end;

        if FieldByName('vlTarifaClassif').AsFloat > 0 then
        begin
          cdsPadraovlTarifaClassif.AsFloat := FieldByName('vlTarifaClassif').AsFloat;
          CalcFrete(DBEvlTarifaClassif);
        end;

        Next;
      end;
    end;
  end;
end;

procedure TFrmCadOrdemFrete.CalcFrete(Sender: TObject);
var
  qtTonelada, qtTonSaida, qtDiferenca, qtPesoTotal : double;
begin
  if FrmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigProducao').FieldByName('tpCalcFrete').AsString = 'S' then //por peso de saída
    qtPesoTotal := cdsOrdemNfqtPesoSaidaTotal.Value
  else
    qtPesoTotal := cdsOrdemNfqtPesoChegadaTotal.Value;
  if cdsOrdemNfqtPesoSaidaTotal.Value > 0 then
    qtTonSaida := cdsOrdemNfqtPesoSaidaTotal.Value/1000;

  //Rotina dos cálculos do Frete
  if qtPesoTotal > 0 then
  begin
    qtTonelada := qtPesoTotal/1000;
    cdsPadraovlFreteTotal.Value := qtTonelada * cdsPadraovlFreteBruto.AsFloat;
    cdsPadraovlFreteEmpresaTotal.Value := qtTonSaida * cdsPadraovlFreteEmpresa.Value;
    qtDiferenca := cdsOrdemNfqtPesoChegadaTotal.Value - cdsOrdemNfqtPesoSaidaTotal.Value;
    if qtDiferenca > 0 then //significa que terá saldo a pagar do frete
      cdsPadraovlSaldoAPagar.Value := (qtDiferenca/1000)*
                                      (cdsPadraovlFreteBruto.Value);
    cdsPadraovlFreteLiquido.Value := cdsPadraovlFreteTotal.Value - //cdsPadraovlFreteEmpresaTotal.Value -
                                     cdsPadraovlSeguro.Value - cdsPadraovlDescontoQuebra.Value;
    cdsPadraovlFreteSaldo.Value := cdsPadraovlFreteLiquido.Value - cdsPadraovlOutrasDespesas.Value -
                                   cdsPadraovlAdiantamento.Value;// + cdsPadraovlSaldoAPagar.Value;

    //Tarifa de classificação
    if cdsPadraovlTarifaClassif.AsFloat > 0 then
      cdsPadraovlTotalClassif.AsFloat := RoundTo(qtTonSaida* cdsPadraovlTarifaClassif.AsFloat, -2);
  end;
end;

procedure TFrmCadOrdemFrete.cdsOrdemNfAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadOrdemFrete.cdsOrdemNfAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadOrdemFrete.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset = cdsPadrao then
    if cdsPadrao.State = dsInsert then
    begin
      cdsPadraostFinancAdto.AsString := 'PENDENTE';
      cdsPadraostFinancSaldo.AsString := 'PENDENTE';
      cdsPadraodtLancamento.AsDateTime := date;
      cdsPadraoabonaQuebra.AsString := 'N';
    end;
end;

function TFrmCadOrdemFrete.ConfigFinancOK(tpConsulta: string): boolean;
//Função que verificará se as parametrizações foram antecipadamente informadas
//tpConsulta A: Adiantamento  -  S - Saldo
var
  msg : string;
begin
  msg := '';
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigProducao') do
  begin
    if tpConsulta = 'A' then
    begin
      if trim(FieldByName('idDocSerieAdto').AsString) = '' then
        msg := msg + 'É preciso informar a série na configuração!' + #13;

      if FieldByName('idGerencialAdto').AsInteger = 0 then
        msg := msg + 'É preciso informar o gerencial na configuração!' + #13;

      if FieldByName('idResultadoAdto').AsInteger = 0 then
        msg := msg + 'É preciso informar o resultado na configuração!' + #13;
    end
    else //então é saldo
    begin
      if trim(FieldByName('idDocSerieSaldo').AsString) = '' then
        msg := msg + 'É preciso informar a série na configuração!' + #13;

      if FieldByName('idGerencialSaldo').AsInteger = 0 then
        msg := msg + 'É preciso informar o gerencial na configuração!' + #13;

      if FieldByName('idResultadoSaldo').AsInteger = 0 then
        msg := msg + 'É preciso informar o resultado na configuração!' + #13;
    end;
  end;
  if trim(msg) <> '' then
  begin
    Result := false;
    msg := msg + 'Tela: [Cadastros - Config. Produção]';
    messagedlg(msg, mtwarning, [mbok], 0);
  end
  else
    Result := true;
end;

constructor TFrmCadOrdemFrete.create(Formulario: TComponent;
  Parametro: array of String);
begin
  inherited create(formulario);
  idOrdemFrete := '';
  if high(Parametro) >= 0  then
  begin
    if Parametro[0] <> '' then
      idEmpresa := Parametro[0];

    if Parametro[1] <> '' then
      idCadEmpresa := Parametro[1];

    if Parametro[2] <> '' then
      idOrdemFrete := Parametro[2];
  end;
end;

procedure TFrmCadOrdemFrete.DBCKabonaQuebraEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := cdsPadraoabonaQuebra.AsString;
end;

procedure TFrmCadOrdemFrete.DBCKabonaQuebraExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> cdsPadraoabonaQuebra.AsString then
  begin
    if cdsPadraoabonaQuebra.AsString = 'S' then
    begin
      cdsPadraovlDescontoQuebra.Value := 0;
      CalcFrete(Sender);
    end;
  end;
end;

procedure TFrmCadOrdemFrete.DBEidNfExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (vlAnterior <> trim(DBEidNf.Text)) and (trim(DBEidNf.Text) <> '') then
  begin
    if trim(DBEidDocSerie.Text) = '' then
    begin
      messagedlg('Você precisa informar a série!', mtwarning, [mbok], 0);
      DBEidDocSerie.SetFocus;
      DBEidNf.Clear;
      exit;
    end;
    //Busca se a Nota já foi utilizada em outra Ordem de Frete
    sql := 'SELECT * FROM OrdemFreteNf WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString + ' AND idCadEmpresa = ' +
           cdsEmpresaidCadEmpresa.AsString + ' AND idDocSerie = ' + QuotedStr(cdsOrdemNfidDocSerie.AsString) +
           ' AND idNf = ' + cdsOrdemNfidNf.AsString + ' AND idOrdemFrete <> ' + cdsPadraoidOrdemFrete.AsString;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
      if RecordCount > 0 then
      begin
        messagedlg('Nota Fiscal já utilizada em outra carta frete!', mtwarning, [mbok], 0);
        DBEidDocSerie.SetFocus;
        DBEidNf.Clear;
        exit;
      end;
    BuscaChaveSec(cdsOrdemNf, [DBEidDocSerie, DBEidNf]);
    if cdsOrdemNf.State = dsInsert then
      BuscaDadosNf(Sender);
  end;
end;

procedure TFrmCadOrdemFrete.DBEidOrdemFreteExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if (trim(DBEidOrdemFrete.Text) = '') and (not BtnFechar.Focused) and (not BtnNovo.Focused) and
     (not BtnCancelar.Focused) and (not BtnPesquisar.Focused) then
  begin
    messagedlg('Você deve informar o número da ordem de frete!', mtwarning, [mbok], 0);
    DBEidOrdemFrete.SetFocus;
    exit;
  end;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;

  if cdsPadrao.State = dsInsert then
  begin
    BuscaDadosNf(Sender);
  end;

  VisualizaFinanceiro((cdsPadrao.State in [dsEdit, dsBrowse]) and (trim(DBEidOrdemFrete.Text) <> ''));

  if (cdsPadrao.State in [dsEdit, dsBrowse]) and (trim(DBEidOrdemFrete.Text) <> '') then //bloqueio a pedido da Tamara em 01/04/2015
    funcao.SomenteLeitura([DBEidDocSerie, DBEidNf, DBEqtPesoChegada, DBEqtQuebra, DBEvlDescontoQuebraN, DBEidMotorista,
                           DBEplaca, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd], true);

end;

procedure TFrmCadOrdemFrete.DBEidOrdemFreteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadOrdemFrete.DBEnrFaturaExit(Sender: TObject);
begin
  inherited;
  if not ((BtnSalvar.Focused) or (BtnCancelar.Focused) or (BtnExcluir.Focused) or (BtnPesquisar.Focused) or (BtnFechar.Focused)) then
    DBEvlFreteBruto.SetFocus;
end;

procedure TFrmCadOrdemFrete.DBEqtPesoChegadaExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEqtPesoChegada.Text then
  begin
    cdsOrdemNfqtQuebra.AsInteger := cdsOrdemNfqtPesoSaida.AsInteger - cdsOrdemNfqtPesoChegada.AsInteger;
    vlAnterior := '';
    DBEqtQuebraExit(DBEqtQuebra);
  end;
end;

procedure TFrmCadOrdemFrete.DBEqtQuebraEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TFrmCadOrdemFrete.DBEqtQuebraExit(Sender: TObject);
begin
  inherited;
  if vlAnterior <> DBEqtQuebra.Text then
  begin
    if cdsOrdemNfqtPesoSaida.AsInteger > 0 then
    begin
      cdsOrdemNfqtPesoChegada.AsInteger := cdsOrdemNfqtPesoSaida.AsInteger -
                                                          cdsOrdemNfqtQuebra.AsInteger;
      if cdsOrdemNfqtQuebra.AsInteger > 0 then
        cdsOrdemNfprQuebra.AsFloat := (cdsOrdemNfqtQuebra.AsInteger/cdsOrdemNfqtPesoSaida.AsInteger) * 100
      else
        cdsOrdemNfprQuebra.AsFloat := 0;

      if cdsOrdemNfqtQuebra.AsInteger > cdsOrdemNfqtTolerancia.AsInteger  then
        cdsOrdemNfvlDescontoQuebra.AsFloat := RoundTo((cdsOrdemNfqtQuebra.AsInteger - cdsOrdemNfqtTolerancia.AsInteger) *
                                                       (cdsOrdemNfvlProduto.AsFloat), -2);
    end;
  end;

end;

procedure TFrmCadOrdemFrete.DBEvlFreteBrutoEnter(Sender: TObject);
begin
  inherited;
  vlAnterior := (Sender as TCustomEdit).Text;
end;

procedure TFrmCadOrdemFrete.DBEvlFreteBrutoExit(Sender: TObject);
begin
  inherited;
  if (vlAnterior <> trim((Sender as TCustomEdit).Text)) and (trim((Sender as TCustomEdit).Text) <> '') then
     CalcFrete(Sender);
end;

procedure TFrmCadOrdemFrete.dspOrdemNfBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
{  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspRequisicaoProd' then
    begin
      GeraAutoInc(DeltaDS, 'RequisicaoProd', 'idRequisicaoProd', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then }
end;

procedure TFrmCadOrdemFrete.dsOrdemNfStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsOrdemNf, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadOrdemFrete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadOrdemFrete := nil;
end;

procedure TFrmCadOrdemFrete.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsOrdemNf;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidOrdemFrete;
  foco := DBEidOrdemFrete;
  tab_chave := 'OrdemFrete';
end;

procedure TFrmCadOrdemFrete.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F7) and (grpFinanceiro.Visible) then
    BtnFinanceiroAdto.Click;

  if (Key = VK_F8) and (grpFinanceiro.Visible) then
    BtnFinanceiroSaldo.Click;
end;

procedure TFrmCadOrdemFrete.FormShow(Sender: TObject);
begin
  inherited;
  Height := 565;
  Width := 680;
  VisualizaFinanceiro(false);

  if trim(idOrdemFrete) <> '' then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit])  then
      cdsPadrao.Append;

    if not (cdsEmpresa.State in [dsInsert, dsEdit])  then
      cdsEmpresa.Edit;

    cdsEmpresaidEmpresa.AsString := idEmpresa;
    cdsEmpresaidCadEmpresa.AsString := idCadEmpresa;

    cdsPadraoidEmpresa.AsString := idEmpresa;
    cdsPadraoidCadEmpresa.AsString := idCadEmpresa;
    cdsPadraoidOrdemFrete.AsString := idOrdemFrete;

    DBEidOrdemFreteExit(DBEidOrdemFrete);
  end;

end;

procedure TFrmCadOrdemFrete.GeraFinancAdto;
var
  msg : string;
  oks : boolean;
  idSafra : integer;
begin
  inherited;
  idSafra := 0;
  msg := '';
  if trim(DBEidFornecedorAdto.Text) = '' then
    msg := msg + 'O Fornecedor do adiantamento é obrigatório!' + #13;

  if trim(DBEdtVencimentoAdto.Text) = '' then
    msg := msg + 'O Vencimento do adiantamento é obrigatório!' + #13;

  if cdsPadraovlAdiantamento.AsFloat <= 0 then
    msg := msg + 'O valor do adiantamento deve ser maior que zero!' + #13;

  //verifica a safra
  if trim(DBEidSafra.Text) = '' then
  begin
    idSafra := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigProducao').FieldByName('idSafra').AsInteger;
    if idSafra = 0 then
      msg := msg + 'Safra não informada na Configuração!' + #13;
  end;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidFornecedorAdto.SetFocus;
    exit;
  end;

  if not ConfigFinancOK('A') then
    exit;

  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  if idSafra > 0 then //significa que puxou da configuração
    cdsPadraoidSafra.AsInteger := idSafra;

  EDtpTitulo.Text := 'A'; //Adiantamento
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidFornecedorAdto, DBEidOrdemFrete, DBEidSafra, DBEvlAdiantamento,
                                   DBEdtVencimentoAdto, EDtpTitulo], 'spGeraTituloFrete', '') do
  begin
    oks := false;

    if FieldByName('msg').AsString = 'OK' then
    begin
      cdsPadraoidTituloPagAdto.AsInteger := FieldByName('idTituloPag').AsInteger;
      cdsPadraostFinancAdto.AsString := 'GERADO';

      actSalvar.Execute;
      oks := true;
    end
    else
      messagedlg(FieldByName('msg').AsString, mtwarning, [mbok], 0);
  end;
  if oks then
  begin
    DBEidOrdemFreteExit(DBEidOrdemFrete);
    if not DBEidFornecedorSaldo.ReadOnly then
      DBEidFornecedorSaldo.SetFocus;
  end;
end;

procedure TFrmCadOrdemFrete.GeraFinancSaldo;
var
  msg : string;
  okS : boolean;
  idSafra : integer;
begin
  inherited;
  msg := '';
  idSafra := 0;
  if trim(DBEidFornecedorSaldo.Text) = '' then
    msg := msg + 'O Fornecedor do Saldo é obrigatório!' + #13;

  if trim(DBEdtVencimentoSaldo.Text) = '' then
    msg := msg + 'O Vencimento do Saldo é obrigatório!' + #13;

  if cdsPadraovlFreteSaldo.AsFloat <= 0 then
    msg := msg + 'O valor do saldo de frete deve ser maior que zero!' + #13;

  //verifica a safra
  if trim(DBEidSafra.Text) = '' then
  begin
    idSafra := frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigProducao').FieldByName('idSafra').AsInteger;
    if idSafra = 0 then
      msg := msg + 'Safra não informada na Configuração!' + #13;
  end;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidFornecedorSaldo.SetFocus;
    exit;
  end;

  if not ConfigFinancOK('S') then
    exit;

  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  if idSafra > 0 then //significa que puxou da configuração
    cdsPadraoidSafra.AsInteger := idSafra;

  EDtpTitulo.Text := 'S'; //Saldo
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidFornecedorSaldo, DBEidOrdemFrete, DBEidSafra, DBEvlFreteSaldo,
                                   DBEdtVencimentoSaldo, EDtpTitulo], 'spGeraTituloFrete', '') do
  begin
    oks := false;
    if FieldByName('msg').AsString = 'OK' then
    begin
      cdsPadraoidTituloPagSaldo.AsInteger := FieldByName('idTituloPag').AsInteger;
      cdsPadraostFinancSaldo.AsString := 'GERADO';
      BtnSalvar.Click;
      oks := true;
    end
    else
      messagedlg(FieldByName('msg').AsString, mtwarning, [mbok], 0);
  end;
  if oks then
    DBEidOrdemFreteExit(DBEidOrdemFrete);
end;

procedure TFrmCadOrdemFrete.VisualizaFinanceiro(ver: boolean);
begin
  //Procedure que regulará a altura da tela e a visibilidade do financeiro
  grpFinanceiro.Visible := ver;
  if ver then
  begin
    Height := 630;
    if cdsPadraostFinancAdto.AsString = 'GERADO' then
    begin
      BtnFinanceiroAdto.Caption := 'Ver [F7]';
      BtnFinanceiroAdto.TabStop := false;
    end
    else
    begin
      DBEidFornecedorAdto.SetFocus;
      BtnFinanceiroAdto.Caption := 'Gerar [F7]';
      BtnFinanceiroAdto.TabStop := true;
    end;

    if cdsPadraostFinancSaldo.AsString = 'GERADO' then
    begin
      BtnFinanceiroSaldo.Caption := 'Ver [F8]';
      BtnFinanceiroSaldo.TabStop := false;
    end
    else
    begin
      if DBEidFornecedorAdto.ReadOnly then
        DBEidFornecedorSaldo.SetFocus;
      BtnFinanceiroSaldo.Caption := 'Gerar [F8]';
      BtnFinanceiroSaldo.TabStop := true;
    end;

    //ajusta a altura dos agrupamentos
    grpDadosFrete.Top := 356;
    grpGradeNf.Top := 248;
    grpNf.Top := 135;
    grpBotoes.Top := 135;
    grpSoma.Top := 279;
  end
  else
  begin
    Height := 545;
    //ajusta a altura dos agrupamentos
    grpDadosFrete.Top := 276;
    grpGradeNf.Top := 168;
    grpNf.Top := 55;
    grpBotoes.Top := 55;
    grpSoma.Top := 199;
  end;

  funcao.SomenteLeitura([DBEidFornecedorSaldo, DBEdtVencimentoSaldo, DBEvlAdiantamento, DBEvlFreteBruto, DBEvlFreteEmpresa,
          DBEvlSeguro, DBEvlFreteLiquido, DBEvlOutrasDespesas, DBEqtPesoChegada, DBEqtQuebra, DBEvlDescontoQuebraN,
          DBEdtEmissao,  DBCKabonaQuebra], cdsPadraostFinancSaldo.AsString = 'GERADO');
  funcao.SomenteLeitura([DBEidFornecedorAdto, DBEdtVencimentoAdto, DBEvlAdiantamento], cdsPadraostFinancAdto.AsString = 'GERADO');


end;

end.
