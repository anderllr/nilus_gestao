unit uFrmPesCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, uFrmPadraoPesqEmpContabil, uFrmPadraoPesqEmpFiscal,
  System.Actions, System.ImageList;

type
  TFrmPesCotacao = class(TFrmPadraoPesqEmpContabil)
    Bevel2: TBevel;
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
    FindFornecedor: TCFind;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel1: TCLabel;
    LookMaquina: TCLookUp;
    DBEidMaquina: TCDBEdit;
    CLabel7: TCLabel;
    DBEidCotacaoFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEidCotacaoIni: TCDBEdit;
    CLabel8: TCLabel;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidMaquina: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraostAtivo: TStringField;
    cdsPadraostParcial: TStringField;
    cdsPadraostFechada: TStringField;
    cdsPadraostCancelado: TStringField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCotacao: TIntegerField;
    cdsGriddtCotacao: TSQLTimeStampField;
    cdsGridobsCotacao: TStringField;
    cdsGridstCotacao: TStringField;
    cdsPadraoidCotacaoIni: TIntegerField;
    cdsPadraoidCotacaoFim: TIntegerField;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CGroupBox1: TCGroupBox;
    DBCKstFechada: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    DBCKstCancelado: TCDBCheckBox;
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
    idCotacao : integer;
  end;

var
  FrmPesCotacao: TFrmPesCotacao;

implementation

uses uFuncao, uFrmPrincipal, uFrmPesProduto, uDmFind;

{$R *.dfm}

procedure TFrmPesCotacao.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  idCotacao := 0;
  status := '';
  sql := 'SELECT DISTINCT c.idEmpresa, c.idCotacao, c.dtCotacao, c.obsCotacao, c.stCotacao FROM Cotacao c';
  if (trim(DBEidProduto.Text) <> '') or (trim(DBEidMaquina.Text) <> '') then
  begin
    sql := sql + ' INNER JOIN CotacaoProd cp ON c.idEmpresa = cp.idEmpresa ' +
          ' AND c.idCotacao = cp.idCotacao WHERE 1=1';
    if trim(DBEidProduto.Text) <> '' then
      sql := sql + ' AND cp.idProduto = ' + DBEidProduto.Text;
    if trim(DBEidMaquina.Text) <> '' then
      sql := sql + ' AND cp.idMaquina = ' + DBEidMaquina.Text;
  end
  else
    sql := sql +  ' WHERE 1=1';

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND c.idEmpresa = ' + DBEidEmpresa.Text;
  end;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND c.dtCotacao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND c.dtCotacao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idCotacaoIni').AsString) <> '' then
    sql := sql + ' AND c.idCotacao >= ' + QuotedStr(cdsPadrao.FieldByName('idCotacaoIni').AsString);
  if trim(cdsPadrao.FieldByName('idCotacaoFim').AsString) <> '' then
    sql := sql + ' AND c.idCotacao <= ' + QuotedStr(cdsPadrao.FieldByName('idCotacaoFim').AsString);
  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadrao.FieldByName('stFechada').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('FECHADO')
    else
      status := status + ',' + QuotedStr('FECHADO');
  if cdsPadrao.FieldByName('stCancelado').AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND c.stCotacao IN (' + status + ')';
  //  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidProduto.SetFocus;
  inherited;
end;

procedure TFrmPesCotacao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  Dataset.FieldByName('stAtivo').AsBoolean := true;
  Dataset.FieldByName('stFechada').AsBoolean := true;
  Dataset.FieldByName('stCancelado').AsBoolean := true;
end;

procedure TFrmPesCotacao.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmPesCotacao.DBGridDblClick(Sender: TObject);
begin
  if (not cdsGrid.IsEmpty) then
    idCotacao := cdsGrididCotacao.AsInteger;
  inherited;
end;

procedure TFrmPesCotacao.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not cdsGrid.IsEmpty) then
    idCotacao := cdsGrididCotacao.AsInteger;
  inherited;
end;

procedure TFrmPesCotacao.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidProduto;
end;

procedure TFrmPesCotacao.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadrao.FieldByName('stFechada').AsBoolean := False;
  cdsPadrao.FieldByName('stCancelado').AsBoolean := False;
  //mostra coluna de filial somente se a opção do programa for de controlar por filial
  idCotacao := 0;
end;

end.
