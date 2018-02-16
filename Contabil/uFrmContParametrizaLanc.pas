unit uFrmContParametrizaLanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, CGroupBox, DBCtrls, CDBMemo, ComCtrls,
  CPageControl, Buttons, CBitBtn, ExtCtrls, CLookUp, Mask, CDBEdit, CLabel,
  CPanelGradient, ActnList, ImgList, SqlExpr, CFind, Provider, DB, DBClient,
  System.Actions, System.ImageList, CDBRadioGroup, CDBCheckBox;

type
  TFrmContParametrizaLanc = class(TForm)
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    FindEmpresa: TCFind;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    dsParametro: TDataSource;
    cdsParametro: TClientDataSet;
    dspParametro: TDataSetProvider;
    sdsParametro: TSQLDataSet;
    ImgBotoes: TImageList;
    imgIcones: TImageList;
    Acao: TActionList;
    actFechar: TAction;
    actExecutar: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    actNovo: TAction;
    actExcluir2: TAction;
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    Bevel2: TBevel;
    PanBotoes: TCPanelGradient;
    BtnSalvar: TCBitBtn;
    BtnFechar: TCBitBtn;
    PagAbas: TCPageControl;
    TabApropriação: TTabSheet;
    CLabel35: TCLabel;
    DBEidMovFinanceiraCAP: TCDBEdit;
    LookMovFinanceira: TCLookUp;
    LookSinal: TCLookUp;
    cdsEmpresaidEmpresa: TIntegerField;
    CPanelGradient1: TCPanelGradient;
    cdsEmpresaidCadEmpresa: TIntegerField;
    DBEidCadEmpresa: TCDBEdit;
    CLabel1: TCLabel;
    DBEidGerencialCAP: TCDBEdit;
    LookGerencialP: TCLookUp;
    CLabel13: TCLabel;
    DBEidResultadoCAP: TCDBEdit;
    CLookUp1: TCLookUp;
    CLabel11: TCLabel;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEidHistorico: TCDBEdit;
    LookHistorico: TCLookUp;
    LookdescPlanoContaDeb: TCLookUp;
    DBEcdPlanoContaDeb: TCDBEdit;
    LookdescPlanoContaCre: TCLookUp;
    DBEcdPlanoContaCre: TCDBEdit;
    CPanelGradient2: TCPanelGradient;
    CLabel6: TCLabel;
    DBRGcontaGenerica: TCDBRadioGroup;
    DBCKtodosPlanos: TCDBCheckBox;
    cdsCfg: TClientDataSet;
    dsCfg: TDataSource;
    cdsCfgtodosPlanos: TStringField;
    cdsCfgcontaGenerica: TStringField;
    cdsParametroidEmpresa: TIntegerField;
    cdsParametroidCadEmpresa: TSmallintField;
    cdsParametrotpMovimento: TStringField;
    cdsParametroidDocSerie: TStringField;
    cdsParametroidNatureza: TSmallintField;
    cdsParametroidResultado: TIntegerField;
    cdsParametroidGerencial: TIntegerField;
    cdsParametroidMovFinanceira: TIntegerField;
    cdsParametroidContHistorico: TIntegerField;
    cdsParametrocdPlanoContaDeb: TIntegerField;
    cdsParametrocdPlanoContaCre: TIntegerField;
    procedure actFecharExecute(Sender: TObject);
    procedure cdsParametroAfterOpen(DataSet: TDataSet);
    procedure cdsMovCaixaAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsCfgtodosPlanosValidate(Sender: TField);
    procedure DBRGcontaGenericaChange(Sender: TObject);
    procedure cdsParametroAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vlAnterior : string;
    idEmpresa, idCadEmpresa : integer;
    filial : boolean;
    vlTituloPagMov : currency;
  end;

var
  FrmContParametrizaLanc: TFrmContParametrizaLanc;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao, uFrmPesEmpFiscal, uFrmPesEmpContabil,
  uDmFind, uFrmPesContIntegracao;

{$R *.dfm}

procedure TFrmContParametrizaLanc.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmContParametrizaLanc.actSalvarExecute(Sender: TObject);
var
  msg : string;
begin
  msg := '';
  if (trim(DBEidHistorico.Text) = '') or (trim(DBEidHistorico.Text) = '0') then
    msg := 'O Histórico deve ser selecionado!' + #13;
  if (trim(DBEcdPlanoContaDeb.Text) = '') or (trim(DBEcdPlanoContaDeb.Text) = '0') then
    msg := msg + 'A conta débito deve ser selecionada!' + #13;
  if (trim(DBEcdPlanoContaCre.Text) = '') or (trim(DBEcdPlanoContaCre.Text) = '0') then
    msg := msg + 'A conta crédito deve ser selecionada!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  cdsParametro.Post;
  cdsParametro.ApplyUpdates(0);

  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa, FrmPesContIntegracao.DBEdtInicial,
                        FrmPesContIntegracao.DBEdtFinal, FrmPesContIntegracao.DBRGtpPlanoConta, FrmPesContIntegracao.DBCKconsolidafilial],
                        'spContIntegracao') then
    Close;
end;

procedure TFrmContParametrizaLanc.cdsCfgtodosPlanosValidate(Sender: TField);
begin
  if cdsCfgtodosPlanos.AsString = 'S' then
  begin
    cdsParametroidResultado.Clear;
    funcao.SomenteLeitura([DBCKtodosPlanos], true);
  end;


end;

procedure TFrmContParametrizaLanc.cdsMovCaixaAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TFrmContParametrizaLanc.cdsParametroAfterEdit(DataSet: TDataSet);
begin
  btnSalvar.Enabled := true;
end;

procedure TFrmContParametrizaLanc.cdsParametroAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldDefs.Count - 1 do
      DataSet.FieldByName(DataSet.FieldDefs[i].Name).OnGetText := funcao.FieldGetText;
end;

procedure TFrmContParametrizaLanc.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F4 then
  begin
    if filial then
    begin
      Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
      FrmPesEmpFiscal.ShowModal;
      with cdsEmpresa do
      begin
        if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
          FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
          DBEidCadEmpresa.SetFocus;
        end;
      end;
    end  // FIM DO IF FILIAL
    else
    begin
      Application.CreateForm(TFrmPesEmpContabil, FrmPesEmpContabil);
      FrmPesEmpContabil.ShowModal;
      with cdsEmpresa do
      begin
        if not (FrmPesEmpContabil.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpContabil.cdsGrid.FieldByName('idEmpresa').Value;
          DBEidEmpresa.SetFocus;
        end;
      end;
    end; // fim do else
  end; // fim do VK_F4
end;

procedure TFrmContParametrizaLanc.DBRGcontaGenericaChange(Sender: TObject);
var
  campo : string;
begin
  //Se for Tag 0 é conta débito -- se for 1 conta crédito
  if DBRGcontaGenerica.Tag = 0 then
  begin
    campo := 'cdPlanoContaDeb';
    funcao.SomenteLeitura([DBEcdPlanoContaDeb], true);
  end
  else
  begin
    campo := 'cdPlanoContaCre';
    funcao.SomenteLeitura([DBEcdPlanoContaCre], true);
  end;

  case DBRGcontaGenerica.ItemIndex of
    0 : cdsParametro.FieldByName(campo).AsInteger := 99999994; //Banco
    1 : cdsParametro.FieldByName(campo).AsInteger := 99999993; //Caixa
    2 : cdsParametro.FieldByName(campo).AsInteger := 99999991; //Fornecedor
    3 : cdsParametro.FieldByName(campo).AsInteger := 99999992; //Cliente
    4 : begin
          cdsParametro.FieldByName(campo).Clear; //Nenhum
          if DBRGcontaGenerica.Tag = 0 then
            funcao.SomenteLeitura([DBEcdPlanoContaDeb], false)
          else
            funcao.SomenteLeitura([DBEcdPlanoContaCre], false);
        end;
  end;

end;

procedure TFrmContParametrizaLanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmContParametrizaLanc.FormCreate(Sender: TObject);
begin
  Height := 380;
  Width :=  680;

end;

procedure TFrmContParametrizaLanc.FormShow(Sender: TObject);
var
  sql : string;
  idMovConta, idMovCaixa : integer;
begin
  cdsEmpresa.CreateDataSet;
  cdsEmpresa.Append;
  cdsEmpresaidEmpresa.Value := idEmpresa;
  cdsEmpresaidCadEmpresa.Value := idCadEmpresa;

  cdsCfg.CreateDataSet;
  cdsCfg.Append;
  cdsCfgtodosPlanos.AsString := 'N';
  cdsCfgcontaGenerica.AsString := 'N'; //Nenhum
  funcao.SomenteLeitura([DBCKtodosPlanos], true);
end;

end.
