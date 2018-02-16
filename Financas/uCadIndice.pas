unit uCadIndice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CPanelGradient, System.Actions, ACBrCotacao, ACBrBase, ACBrSocket,
  System.ImageList, DateUtils;

type
  TfrmCadIndice = class(TFrmCadPadraoGrid)
    sdsIndice: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidIndice: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescIndice: TCDBEdit;
    CLabel1: TCLabel;
    DBEdescSimbolo: TCDBEdit;
    CLabel2: TCLabel;
    DBEstIndice: TCDBEdit;
    sdsIndiceLancamento: TSQLDataSet;
    dspIndiceLancamento: TDataSetProvider;
    cdsIndiceLancamento: TClientDataSet;
    dsIndiceLancamento: TDataSource;
    TabLancamentos: TTabSheet;
    CGroupBox3: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox4: TCGroupBox;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdescIndice2: TCDBEdit;
    DBEdtLancamento: TCDBEdit;
    CLabel3: TCLabel;
    DBEvlLancamento: TCDBEdit;
    CGroupBox5: TCGroupBox;
    BtnSalvarInd: TCBitBtn;
    BtnCancelarInd: TCBitBtn;
    BtnExcluirInd: TCBitBtn;
    BtnNovoInd: TCBitBtn;
    ACBrCotacao1: TACBrCotacao;
    BtnObterCotacao: TCBitBtn;
    aclCotacao: TAction;
    procedure DBGridCellClick(Column: TColumn);
    procedure DBEidIndiceExit(Sender: TObject);
    procedure cdsIndiceLancamentoAfterInsert(DataSet: TDataSet);
    procedure DBEdtLancamentoExit(Sender: TObject);
    procedure dsIndiceLancamentoStateChange(Sender: TObject);
    procedure dspIndiceLancamentoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnObterCotacaoClick(Sender: TObject);
    procedure ObtemCotacao;
    procedure BtnSalvarIndClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadIndice: TfrmCadIndice;

implementation

uses uDmPadrao, uFrmCadPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TfrmCadIndice.actSalvarExecute(Sender: TObject);
begin
  if cdsIndiceLancamento.State in [dsInsert, dsEdit]  then
    cdsIndiceLancamento.Cancel;
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadIndice.BtnObterCotacaoClick(Sender: TObject);
begin
  ObtemCotacao;
  inherited;

end;

procedure TfrmCadIndice.BtnSalvarIndClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsIndiceLancamento, BtnSalvarInd, BtnCancelarInd, BtnExcluirInd, BtnNovoInd, (Sender as TCBitBtn), '');
  DBEdtLancamento.SetFocus;
end;

procedure TfrmCadIndice.cdsIndiceLancamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TfrmCadIndice.DBEdtLancamentoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsIndiceLancamento, [DBEdtLancamento]);
end;

procedure TfrmCadIndice.DBEidIndiceExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
  AbreTabSecundaria;
end;

procedure TfrmCadIndice.DBGridCellClick(Column: TColumn);
begin
  inherited;
  AbreTabSecundaria;
end;

procedure TfrmCadIndice.dsIndiceLancamentoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarInd, BtnCancelarInd, BtnExcluirInd, BtnNovoInd);
end;

procedure TfrmCadIndice.dspIndiceLancamentoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
//  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
end;

procedure TfrmCadIndice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadIndice := nil;
end;

procedure TfrmCadIndice.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsIndiceLancamento;
  chave[0] := DBEidIndice;
  foco := DBEidIndice;
  tab_chave := 'Indice';
  situacao := 'stIndice';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TfrmCadIndice.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actIndice';
  inherited;

end;

procedure TfrmCadIndice.ObtemCotacao;
var
Simbolo, sql : string;
Item : TACBrCotacaoItem;
begin
  sql := 'SELECT * FROM IndiceLancamento WHERE idIndice = ' + cdsPadrao.FieldByName('idIndice').AsString + ' AND dtLancamento = ' + QuotedStr(DBEdtLancamento.Text);
  with FrmPrincipal.ExecutaSQLRet([], '', sql) do

  if RecordCount = 0 then
  begin
    if ACBrCotacao1.Tabela.Count = 0 then
    begin
      if Application.MessageBox('Deseja atualizar a tabela de cotações?', 'Atualizar', MB_ICONQUESTION + MB_YESNO) = ID_YES then
        ACBrCotacao1.AtualizarTabela(cdsIndiceLancamento.FieldByName('dtLancamento').AsDateTime)
      else
        raise Exception.Create('Antes de continuar atualize a tabela de cotações!');
    end;

    Simbolo := AnsiUpperCase(Trim(cdsPadrao.FieldByName('descSimbolo').AsString));
    if Simbolo <> '' then
    begin
      Item := ACBrCotacao1.Procurar(Simbolo);

      if Item <> nil then
        begin
          if not (cdsIndiceLancamento.State in [dsEdit, dsInsert]) then
            cdsIndiceLancamento.Append;
            cdsIndiceLancamento.FieldByName('idIndice').AsInteger := cdsPadrao.FieldByName('idIndice').AsInteger;
            cdsIndiceLancamento.FieldByName('dtLancamento').AsDateTime := Item.DataCotacao;
            cdsIndiceLancamento.FieldByName('vlLancamento').AsFloat := Item.TaxaVenda;
            cdsIndiceLancamento.Post;
            cdsIndiceLancamento.ApplyUpdates(0);
        end
        else
      raise Exception.Create('Não foi encontrado nenhuma cotação para a moeda informada!');
    end;
  end
  else
    Application.MessageBox('Cotação já existente para data informada!', 'Atenção', MB_OK + MB_ICONINFORMATION);

  inherited;

end;

end.
