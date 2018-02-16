unit uFrmCadRequisicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CCheckBox, CDBCheckBox,
  CDBRadioGroup, uFrmCadPadraoEmpFiscal, System.Actions;

type
  TFrmCadRequisicao = class(TFrmCadPadraoEmpFiscal)
    sdsTabPreco: TSQLDataSet;
    actCadCidade: TAction;
    sdsRequisicaoProd: TSQLDataSet;
    dspRequisicaoProd: TDataSetProvider;
    cdsRequisicaoProd: TClientDataSet;
    dsRequisicaoProd: TDataSource;
    CGroupBox13: TCGroupBox;
    CLabel2: TCLabel;
    DBEdtRequisicao: TCDBEdit;
    DBEidRequisicao: TCDBEdit;
    CLabel14: TCLabel;
    CGroupBox1: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox2: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox4: TCGroupBox;
    DBEstRequisicao: TCDBEdit;
    CLabel25: TCLabel;
    DBEqtProduto: TCDBEdit;
    CLabel3: TCLabel;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel5: TCLabel;
    DBMobsRequisicao: TCDBMemo;
    CLabel4: TCLabel;
    CLabel7: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    DBMobsProduto: TCDBMemo;
    CLabel1: TCLabel;
    cdsProduto: TClientDataSet;
    cdsRequisicaoProddescProduto: TStringField;
    cdsMaquina: TClientDataSet;
    cdsRequisicaoProdidEmpresa: TIntegerField;
    cdsRequisicaoProdidCadEmpresa: TSmallintField;
    cdsRequisicaoProdidRequisicao: TIntegerField;
    cdsRequisicaoProdidRequisicaoProd: TSmallintField;
    cdsRequisicaoProdidProduto: TIntegerField;
    cdsRequisicaoProdqtProduto: TFMTBCDField;
    cdsRequisicaoProdqtAtendido: TFMTBCDField;
    cdsRequisicaoProdqtSolicitada: TFMTBCDField;
    cdsRequisicaoProdqtCancelada: TFMTBCDField;
    cdsRequisicaoProdobsProduto: TStringField;
    LookProdMedida: TCLookUp;
    cdsRequisicaoProdcodFabricante: TStringField;
    CBitBtn8: TCBitBtn;
    BtnImprimir: TCBitBtn;
    cdsRequisicaoProdidMaquina: TIntegerField;
    cdsRequisicaoProddescMaquina: TStringField;
    BtnExcluirReq: TCBitBtn;
    procedure cdsRequisicaoProdAfterEdit(DataSet: TDataSet);
    procedure dspRequisicaoProdBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsRequisicaoProdAfterInsert(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidRequisicaoExit(Sender: TObject);
    procedure dsRequisicaoProdStateChange(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure DBEidMaquinaExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidRequisicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnExcluirReqClick(Sender: TObject);
    procedure DBEidProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadRequisicao: TFrmCadRequisicao;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesProduto,
  uFrmPesRequisicao, uFrmRelRequisicao, uFrmPesEmpFiscal,
  uFrmPadraoPesqEmpContabil;

{$R *.dfm}

procedure TFrmCadRequisicao.actNovoExecute(Sender: TObject);
begin
  funcao.SomenteLeitura([DBEdtRequisicao, DBMobsRequisicao, DBEidProduto, DBEidMaquina, DBEqtProduto,
         DBMobsProduto], false );
  inherited;                     
end;

procedure TFrmCadRequisicao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesRequisicao, FrmPesRequisicao);
  FrmPesRequisicao.ShowModal;
  if FrmPesRequisicao.idRequisicao <> 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;
    cdsEmpresaidEmpresa.AsInteger := FrmPesRequisicao.cdsGrididEmpresa.AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := FrmPesRequisicao.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmPesRequisicao.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmPesRequisicao.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idRequisicao').AsInteger := FrmPesRequisicao.idRequisicao;
    DBEidRequisicao.SetFocus;
    DBEidRequisicaoExit(DBEidRequisicao);
  end;
end;

procedure TFrmCadRequisicao.actSalvarExecute(Sender: TObject);
begin
  if cdsRequisicaoProd.State in [dsInsert, dsEdit] then
    cdsRequisicaoProd.Cancel;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadRequisicao.BtnAdicionarProdClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsRequisicaoProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), 'idRequisicaoProd');
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
    BtnNovoProd.Click;
  
  DBEidProduto.SetFocus;
end;

procedure TFrmCadRequisicao.BtnExcluirReqClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if messagedlg('Tem certeza que deseja excluir essa Requisição?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

  Screen.Cursor := crSqlWait;
  sql := 'SELECT * FROM RequisicaoProdCot WHERE idRequisicao = ' + DBEidRequisicao.Text;
  with FrmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      MessageDlg('Essa requisição esta vinculada a uma cotação, não podera ser excluida!', mtInformation, [mbOK], 0);
      exit;
    end
    else
    begin
      sql := 'DELETE FROM RequisicaoProd WHERE idEmpresa = ' + frmPrincipal.idEmpresa + ' AND idCadEmpresa = ' + frmPrincipal.idCadEmpresa +
             ' AND idRequisicao = ' + DBEidRequisicao.Text;
      dmPadrao.dbConexao.ExecuteDirect(sql);
      sql := 'DELETE FROM Requisicao WHERE idEmpresa = ' + frmPrincipal.idEmpresa + ' AND idCadEmpresa = ' + frmPrincipal.idCadEmpresa +
             ' AND idRequisicao = ' + DBEidRequisicao.Text;
      dmPadrao.dbConexao.ExecuteDirect(sql);
      cdsPadrao.Refresh;
      DBEidRequisicao.SetFocus;
      BtnNovo.Click;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TFrmCadRequisicao.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if trim(DBEidRequisicao.Text) = '' then
    exit;
  funcao.AbreFrm(TfrmRelRequisicao, TForm(frmRelRequisicao));
  frmRelRequisicao.cdsEmpresa.FieldByName('idEmpresa').AsInteger := cdsPadrao.FieldByName('idEmpresa').AsInteger;
  frmRelRequisicao.cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
  frmRelRequisicao.cdsPadraoidRequisicaoIni.AsInteger := cdsPadrao.FieldByName('idRequisicao').AsInteger;
  frmRelRequisicao.cdsPadraoidRequisicaoFim.AsInteger := cdsPadrao.FieldByName('idRequisicao').AsInteger;
  frmRelRequisicao.par := 2;
  frmRelRequisicao.actGerar.Execute;
end;

procedure TFrmCadRequisicao.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State = dsInsert then
    Dataset.FieldByName('idUsuario').AsString := frmPrincipal.idUsuario;
end;

procedure TFrmCadRequisicao.cdsRequisicaoProdAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadRequisicao.cdsRequisicaoProdAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
  cdsRequisicaoProdqtAtendido.AsInteger := 0;
  cdsRequisicaoProdqtSolicitada.AsInteger := 0;
  cdsRequisicaoProdqtCancelada.AsInteger := 0;

end;

procedure TFrmCadRequisicao.DBEidMaquinaExit(Sender: TObject);
var
  idProd, idMaquina, idCadProd : integer;
  tem : boolean;
begin
  inherited;
{  if not (BuscaChaveSec(cdsRequisicaoProd, [DBEidProduto, DBEidMaquina])) then
    if (trim(DBEidMaquina.Text) = '') and (trim(DBEidProduto.Text) <> '') then
    begin
      idProd := DBEidProduto.Text;
      with cdsRequisicaoProd do
      begin
        if State in [dsEdit, dsInsert] then
          Cancel;
        IndexFieldNames := 'idProduto';
        First;
        while not Eof do
        begin
          if (FieldByName('idProduto').AsString = idProd) and (FieldByName('idMaquina').AsString = '') then
            exit;
          Next;
        end; // fim do while not Eof do
        Append;
        FieldByName('idProduto').AsString := idProd;
      end; //fim do with cdsRequisicaoProd
    end;}
  idProd := cdsRequisicaoProdidProduto.AsInteger;
  idMaquina := cdsRequisicaoProdidMaquina.AsInteger;
  if cdsRequisicaoProd.State in [dsInsert, dsEdit] then
    cdsRequisicaoProd.Cancel;

  tem := true;
  cdsRequisicaoProd.IndexFieldNames := 'idProduto;idMaquina';
  if not cdsRequisicaoProd.FindKey([idProd,idMaquina]) then
  begin
    cdsRequisicaoProd.IndexFieldNames := 'idProduto';
    if not (idMaquina > 0) then
    begin
      if cdsRequisicaoProd.FindKey([idProd]) then
      begin
        if cdsRequisicaoProdidMaquina.AsInteger > 0 then //não é o correto
        begin
          cdsRequisicaoProd.Filtered := false;
          cdsRequisicaoProd.Filter := 'idProduto = ' + IntToStr(idProd) + ' AND idMaquina IS NULL';
          cdsRequisicaoProd.Filtered := true;
          if cdsRequisicaoProd.IsEmpty then
            tem := false
          else
          begin
            idCadProd := cdsRequisicaoProdidRequisicaoProd.AsInteger;
            cdsRequisicaoProd.IndexFieldNames := 'idRequisicaoProd';
            if not cdsRequisicaoProd.FindKey([idCadProd]) then
              tem := false;
          end;
          cdsRequisicaoProd.Filtered := false;
        end; //  fim do if cdsRequisicaoProdidMaquina.AsInteger > 0 then //não é o correto
      end
      else
        tem := false;
    end
    else
      tem := false;
  end;
  if not tem then
  begin
    cdsRequisicaoProd.Append;
    cdsRequisicaoProdidProduto.AsInteger := idProd;
    if idMaquina > 0 then
       cdsRequisicaoProdidMaquina.AsInteger := idMaquina;
  end;
end;

procedure TFrmCadRequisicao.DBEidProdutoExit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if Trim(DBEidProduto.Text) <> '' then
  begin
    sql := 'SELECT * FROM Produto WHERE idProduto = ' + DBEidProduto.Text;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if FieldByName('stProduto').AsString = 'CANCELADO' then
      begin
        MessageDlg('Produto Cancelado, favor verificar!', mtWarning, [mbOK], 0);
        DBEidProduto.SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure TFrmCadRequisicao.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsRequisicaoProd.State in [dsEdit, dsInsert]) then
        cdsRequisicaoProd.Edit;
      cdsRequisicaoProd.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;
  end
  else
  if Key = VK_F2 then
    frmPrincipal.actCadProduto.Execute; }
end;

procedure TFrmCadRequisicao.DBEidRequisicaoExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
  funcao.SomenteLeitura([DBEdtRequisicao, DBMobsRequisicao, DBEidProduto, DBEidMaquina, DBEqtProduto,
         DBMobsProduto], (cdsPadrao.FieldByName('stRequisicao').AsString = 'TOTAL') OR (cdsPadrao.FieldByName('stRequisicao').AsString = 'CANCELADO') );
  if (cdsPadrao.FieldByName('stRequisicao').AsString = 'TOTAL') OR (cdsPadrao.FieldByName('stRequisicao').AsString = 'CANCELADO') then
  begin
    actSalvar.Enabled := false;
    actExcluir.Enabled := false;
    BtnAdicionarProd.Enabled := false;
    BtnCancelarProd.Enabled := false;
    BtnRetirarProd.Enabled := false;
    BtnNovoProd.Enabled := false;
  end;
end;

procedure TFrmCadRequisicao.DBEidRequisicaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadRequisicao.dspRequisicaoProdBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspRequisicaoProd' then
    begin
      GeraAutoInc(DeltaDS, 'RequisicaoProd', 'idRequisicaoProd', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then  
end;

procedure TFrmCadRequisicao.dsRequisicaoProdStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsRequisicaoProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadRequisicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadRequisicao := nil;
end;

procedure TFrmCadRequisicao.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsRequisicaoProd;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidRequisicao;
  foco := DBEidRequisicao;
  tab_chave := 'Requisicao';

  situacao := 'stRequisicao';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
end;

procedure TFrmCadRequisicao.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actLanRequisicao';
  inherited;
  Height := 600;
  Width := 673;

  BtnExcluirReq.Visible := excluir;
end;

end.
