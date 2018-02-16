unit uFrmPesRequisicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil;

type
  TFrmPesRequisicao = class(TFrmPadraoPesqEmpFiscal)
    Bevel1: TBevel;
    PanFornecedor: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CGroupBox1: TCGroupBox;
    DBCKstFechada: TCDBCheckBox;
    DBCKstParcial: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    FindFornecedor: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel1: TCLabel;
    DBCKstCancelado: TCDBCheckBox;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidRequisicaoIni: TIntegerField;
    cdsPadraoidRequisicaoFim: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraostAtivo: TStringField;
    cdsPadraostParcial: TStringField;
    cdsPadraostFechada: TStringField;
    cdsPadraostCancelado: TStringField;
    cdsGrididRequisicao: TIntegerField;
    cdsGriddtRequisicao: TSQLTimeStampField;
    cdsGridobsRequisicao: TStringField;
    cdsGridstRequisicao: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    LookMaquina: TCLookUp;
    DBEidMaquina: TCDBEdit;
    DBEidRequisicaoFim: TCDBEdit;
    DBEidRequisicaoIni: TCDBEdit;
    Bevel2: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa : integer;
    idCadEmpresa : integer;
    idRequisicao : integer;
  end;

var
  FrmPesRequisicao: TFrmPesRequisicao;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind;

{$R *.dfm}

procedure TFrmPesRequisicao.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  idRequisicao := 0;
  status := '';
  sql := 'SELECT DISTINCT r.idEmpresa, r.idCadEmpresa, r.idRequisicao, r.dtRequisicao, r.obsRequisicao, r.stRequisicao FROM Requisicao r';
  if (trim(DBEidProduto.Text) <> '') or (trim(DBEidMaquina.Text) <> '') then
  begin
    sql := sql + ' INNER JOIN RequisicaoProd rp ON r.idEmpresa = rp.idEmpresa AND r.idCadEmpresa = rp.idCadEmpresa ' +
          ' AND r.idRequisicao = rp.idRequisicao WHERE 1=1';
    if trim(DBEidProduto.Text) <> '' then
      sql := sql + ' AND rp.idProduto = ' + DBEidProduto.Text;
    if trim(DBEidMaquina.Text) <> '' then
      sql := sql + ' AND rp.idMaquina = ' + DBEidMaquina.Text;
  end
  else
    sql := sql +  ' WHERE 1=1';

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND r.idEmpresa = ' + DBEidEmpresa.Text;
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND r.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND r.dtRequisicao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND r.dtRequisicao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idRequisicaoIni').AsString) <> '' then
    sql := sql + ' AND r.idRequisicao >= ' + QuotedStr(cdsPadrao.FieldByName('idRequisicaoIni').AsString);
  if trim(cdsPadrao.FieldByName('idRequisicaoFim').AsString) <> '' then
    sql := sql + ' AND r.idRequisicao <= ' + QuotedStr(cdsPadrao.FieldByName('idRequisicaoFim').AsString);
  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stParcial').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('PARCIAL')
    else
      status := status + ',' + QuotedStr('PARCIAL');
  if cdsPadrao.FieldByName('stFechada').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('TOTAL')
    else
      status := status + ',' + QuotedStr('TOTAL');
  if cdsPadrao.FieldByName('stCancelado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND r.stRequisicao IN (' + status + ')';
  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidProduto.SetFocus;
  inherited;
end;

procedure TFrmPesRequisicao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  if filial then
    DataSet.FieldByName('consolidafilial').AsString := 'N'
  else
    DataSet.FieldByName('consolidafilial').AsString := 'S';

  Dataset.FieldByName('stAtivo').AsBoolean := true;
  Dataset.FieldByName('stParcial').AsBoolean := true;
end;

procedure TFrmPesRequisicao.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;
  end;}
end;

procedure TFrmPesRequisicao.DBGridDblClick(Sender: TObject);
begin
  if (not cdsGrid.IsEmpty) then
    idRequisicao := cdsGrididRequisicao.AsInteger;
  inherited;
end;

procedure TFrmPesRequisicao.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not cdsGrid.IsEmpty) then
    idRequisicao := cdsGrididRequisicao.AsInteger;
  inherited;
end;

procedure TFrmPesRequisicao.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidProduto;
end;

procedure TFrmPesRequisicao.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stParcial').AsBoolean := True;
  cdsPadrao.FieldByName('stFechada').AsBoolean := False;
  cdsPadrao.FieldByName('stCancelado').AsBoolean := False;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  DBGrid.Columns[1].Visible := filial;
  DBCKconsolidafilial.Visible := filial;
  idRequisicao := 0;
end;

end.
