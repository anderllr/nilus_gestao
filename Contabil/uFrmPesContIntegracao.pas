unit uFrmPesContIntegracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, DBXCommon, uFrmPadraoPesqEmpContabil, System.Actions,
  System.ImageList, CDBRadioGroup;

type
  TFrmPesContIntegracao = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    FindFornecedor: TCFind;
    CLabel3: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtFinal: TCDBEdit;
    CPanelGradient1: TCPanelGradient;
    actCompensar: TAction;
    Bevel3: TBevel;
    Bevel4: TBevel;
    FindConta: TCFind;
    cdsPadraoidUsuario: TIntegerField;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidafilial: TStringField;
    DBRGtpPlanoConta: TCDBRadioGroup;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraoopCAP: TStringField;
    cdsPadraoopCAR: TStringField;
    cdsPadraoopCTA: TStringField;
    cdsPadraoopCXA: TStringField;
    cdsPadraoopNFS: TStringField;
    cdsPadraoopNFE: TStringField;
    DBCKopCAP: TCDBCheckBox;
    cdsPadraoopADT: TStringField;
    DBCKopCAR: TCDBCheckBox;
    DBCKopCTA: TCDBCheckBox;
    DBCKopCXA: TCDBCheckBox;
    DBCKopADT: TCDBCheckBox;
    DBCKopNFS: TCDBCheckBox;
    DBCKopNFE: TCDBCheckBox;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGridtpMovimento: TStringField;
    cdsGriddescMovimento: TStringField;
    cdsGriddtMovimento: TSQLTimeStampField;
    cdsGrididDocSerie: TStringField;
    cdsGridnrDocumento: TStringField;
    cdsGrididCadGeral: TIntegerField;
    cdsGrididCadAdicional: TSmallintField;
    cdsGrididNatureza: TSmallintField;
    cdsGrididResultado: TIntegerField;
    cdsGriddescResultado: TStringField;
    cdsGrididGerencial: TIntegerField;
    cdsGriddescGerencial: TStringField;
    cdsGriddescLancamento: TStringField;
    cdsGridvlLancamento: TFMTBCDField;
    cdsGridvlMovimento: TFMTBCDField;
    cdsGrididMovFinanceira: TIntegerField;
    cdsGriddescMovFinanceira: TStringField;
    cdsGrididTituloMov: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    idEmpresa : integer;
  end;

var
  FrmPesContIntegracao: TFrmPesContIntegracao;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoPesquisa,
  uFrmContParametrizaLanc;

{$R *.dfm}

procedure TFrmPesContIntegracao.actExecutarExecute(Sender: TObject);
var
  sql, tpMovimento : string;
begin
  if (trim(DBEdtInicial.Text) = '') or (trim(DBEdtFinal.Text) = '') then
  begin
    messagedlg('A data inicial e final devem ser informadas!', mtwarning, [mbok], 0);
    DBEdtInicial.SetFocus;
    exit;
  end;

  tpMovimento := '';

  if DBCKopCAP.Checked then
    tpMovimento := tpMovimento + 'CAP,';

  if DBCKopCAR.Checked then
    tpMovimento := tpMovimento + 'CAR,';

  if DBCKopCTA.Checked then
    tpMovimento := tpMovimento + 'CTA,';

  if DBCKopCXA.Checked then
    tpMovimento := tpMovimento + 'CXA,';

  if DBCKopADT.Checked then
    tpMovimento := tpMovimento + 'ADT,';

  if DBCKopNFS.Checked then
    tpMovimento := tpMovimento + 'NFS,';

  if DBCKopNFE.Checked then
    tpMovimento := tpMovimento + 'NFE';

  if trim(tpMovimento) = '' then
  begin
    messagedlg('Deve ser selecionado pelo menos uma opção!', mtwarning, [mbok], 0);
    DBCKopCAP.SetFocus;
    exit;
  end;

  //Monta o sql da proc
  sql := 'EXEC spContNaoIntegrado ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ' ,' +
                                      funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ' ,' +
                                      funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                      funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                                      funcao.RetornaValorEField(DBRGtpPlanoConta, 3) + ', ' +
                                      QuotedStr(tpMovimento) + ', ' +
                                      funcao.RetornaValorEField(DBCKconsolidafilial, 3);


  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEdtInicial.SetFocus;
  inherited;
end;

procedure TFrmPesContIntegracao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidafilial.AsString := 'S';
  cdsPadraotpPlanoConta.AsString := 'G';
  cdsPadraoopCAP.AsString := 'S';
  cdsPadraoopCAR.AsString := 'S';
  cdsPadraoopCTA.AsString := 'S';
  cdsPadraoopCXA.AsString := 'S';
  cdsPadraoopNFS.AsString := 'S';
  cdsPadraoopNFE.AsString := 'S';
  cdsPadraoopADT.AsString := 'S';
  cdsPadraoidUsuario.AsString := frmPrincipal.idUsuario;
end;

procedure TFrmPesContIntegracao.DBGridDblClick(Sender: TObject);
var
  sql, idCadEmpresa : string;
begin
  inherited;
  //vai abrir o formulário com o detalhe do lançamento para integrar na contabilidade
  Application.CreateForm(TFrmContParametrizaLanc, FrmContParametrizaLanc);

  if DBCKconsolidafilial.Checked then //Se estiver consolidando filial vai lançar tudo na filial 1
    idCadEmpresa := '1'
  else
    idCadEmpresa := cdsEmpresaidCadEmpresa.AsString;

  if cdsGridtpMovimento.AsString = 'CAP' then
  begin
    sql := 'SELECT * FROM ContParametro WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                        ' AND idCadEmpresa = ' + idCadEmpresa +
                                        ' AND tpMovimento = ' + QuotedStr(cdsGridtpMovimento.AsString) +
                                        ' AND idMovFinanceira = ' + cdsGrididMovFinanceira.AsString +
                                        ' AND idGerencial = ' + cdsGrididGerencial.AsString +
                                        ' AND idResultado = ' + cdsGrididResultado.AsString;
    FrmContParametrizaLanc.cdsParametro.Active := false;
    FrmContParametrizaLanc.cdsParametro.CommandText := sql;
    FrmContParametrizaLanc.cdsParametro.Active := true;

    //Se não encontrou registro parecido irá inserir
    if FrmContParametrizaLanc.cdsParametro.RecordCount = 0 then
    begin
      FrmContParametrizaLanc.cdsParametro.Append;
      FrmContParametrizaLanc.cdsParametroidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
      FrmContParametrizaLanc.cdsParametroidCadEmpresa.AsString := idCadEmpresa;
      FrmContParametrizaLanc.cdsParametrotpMovimento.AsString := cdsGridtpMovimento.AsString;
      FrmContParametrizaLanc.cdsParametroidMovFinanceira.AsInteger := cdsGrididMovFinanceira.AsInteger;
      FrmContParametrizaLanc.cdsParametroidGerencial.AsInteger := cdsGrididGerencial.AsInteger;
      FrmContParametrizaLanc.cdsParametroidResultado.AsInteger := cdsGrididResultado.AsInteger;
    end
    else
      FrmContParametrizaLanc.cdsParametro.Edit;
  end;
  FrmContParametrizaLanc.ShowModal;
end;

procedure TFrmPesContIntegracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmPesContIntegracao := nil;
end;

procedure TFrmPesContIntegracao.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEdtInicial;
  Width := 1150;
  Height := 650;
end;

end.
