unit uFrmCadInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, Mask, DBCtrls,
  CDBEdit, CLabel, FMTBcd, SqlExpr, CGroupBox, CDBComboBox, CLookUp, Grids,
  DBGrids, CDBGrid, CFind, CDBMemo, CPanelGradient, CCheckBox, CDBCheckBox,
  CDBRadioGroup, uFrmCadPadraoEmpFiscal, System.Actions, System.ImageList;

type
  TFrmCadInventario = class(TFrmCadPadraoEmpFiscal)
    sdsInventario: TSQLDataSet;
    actCadCidade: TAction;
    sdsInventarioProd: TSQLDataSet;
    dspInventarioProd: TDataSetProvider;
    cdsInventarioProd: TClientDataSet;
    dsInventarioProd: TDataSource;
    CGroupBox13: TCGroupBox;
    CLabel2: TCLabel;
    DBEdtInventario: TCDBEdit;
    DBEidInventario: TCDBEdit;
    CLabel14: TCLabel;
    CGroupBox1: TCGroupBox;
    BtnAdicionarProd: TCBitBtn;
    BtnCancelarProd: TCBitBtn;
    BtnRetirarProd: TCBitBtn;
    BtnNovoProd: TCBitBtn;
    CGroupBox2: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox4: TCGroupBox;
    DBEstInventario: TCDBEdit;
    CLabel25: TCLabel;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel5: TCLabel;
    DBMdescInventario: TCDBMemo;
    CLabel4: TCLabel;
    cdsProduto: TClientDataSet;
    LookProdMedida: TCLookUp;
    LookProdDeposito: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    CLabel6: TCLabel;
    cdsInventarioProdidEmpresa: TIntegerField;
    cdsInventarioProdidCadEmpresa: TSmallintField;
    cdsInventarioProdidInventario: TIntegerField;
    cdsInventarioProdidProduto: TIntegerField;
    cdsInventarioProdqtEstoque: TFMTBCDField;
    cdsInventarioProdqtInventario: TFMTBCDField;
    cdsInventarioProdqtAjuste: TFMTBCDField;
    cdsInventarioProddescProduto: TStringField;
    BtnGrupos: TCBitBtn;
    TabContagem: TTabSheet;
    cdsInventarioProdordem: TSmallintField;
    CGroupBox5: TCGroupBox;
    BtnGeraSaldos: TCBitBtn;
    CGroupBox3: TCGroupBox;
    LookDeposito2: TCLookUp;
    DBEidProdDeposito2: TCDBEdit;
    CLabel1: TCLabel;
    CGroupBox6: TCGroupBox;
    CDBGrid2: TCDBGrid;
    CGroupBox7: TCGroupBox;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    DBEidProduto2: TCDBEdit;
    CLabel3: TCLabel;
    CGroupBox8: TCGroupBox;
    BtnConfirmar: TCBitBtn;
    btnFinalizar: TCBitBtn;
    DBEqtEstoque: TCDBEdit;
    CLabel7: TCLabel;
    DBEqtInventario: TCDBEdit;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    DBEqtAjuste: TCDBEdit;
    BtnImprimir: TCBitBtn;
    cdsInventarioProdvlCustoMedio: TFMTBCDField;
    DBEvlCustoMedio: TCDBEdit;
    CLabel10: TCLabel;
    BtnReabrir: TCBitBtn;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel11: TCLabel;
    DBCKsaldoSafra: TCDBCheckBox;
    procedure cdsInventarioProdAfterEdit(DataSet: TDataSet);
    procedure dspInventarioProdBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsInventarioProdAfterInsert(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidInventarioExit(Sender: TObject);
    procedure dsInventarioProdStateChange(Sender: TObject);
    procedure BtnAdicionarProdClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidInventarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGruposClick(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure LimpaProdutos;
    procedure DBEidProdutoExit(Sender: TObject);
    procedure BtnGeraSaldosClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure BtnReabrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadInventario: TFrmCadInventario;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uDmFind, uFrmPesProduto,
  uFrmPesInventario, uFrmPesProdutoGrupo, uFrmRelContagem;

{$R *.dfm}

procedure TFrmCadInventario.actExcluirExecute(Sender: TObject);
var
  sql : string;
begin
//  inherited;
  if messagedlg('Tem certeza que deseja excluir!', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
        DBEidInventario], 'spExcluiInventario') then
    begin
      //exclui os produtos
      with cdsInventarioProd do
      begin
        First;
        while not eof do
        begin
          Delete;
          ApplyUpdates(0);
          First;
        end;
      end;
      cdsPadrao.Delete;
      cdsPadrao.ApplyUpdates(0);
      actNovo.Execute;
    end;
end;

procedure TFrmCadInventario.actNovoExecute(Sender: TObject);
begin
  funcao.SomenteLeitura([DBEdtInventario, DBMdescInventario, DBEidProduto, DBEidProdDeposito], false );
  inherited;
end;

procedure TFrmCadInventario.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  PagAbas.ActivePageIndex := 0;
  Application.CreateForm(TFrmPesInventario, FrmPesInventario);
  FrmPesInventario.ShowModal;
  if FrmPesInventario.id <> 0 then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    if not (cdsEmpresa.State in [dsEdit, dsInsert]) then
      cdsEmpresa.Edit;
    cdsEmpresaidEmpresa.AsInteger := FrmPesInventario.cdsGrididEmpresa.AsInteger;
    cdsEmpresaidCadEmpresa.AsInteger := FrmPesInventario.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmPesInventario.cdsGrididEmpresa.AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmPesInventario.cdsGrididCadEmpresa.AsInteger;
    cdsPadrao.FieldByName('idInventario').AsInteger := FrmPesInventario.id;
    DBEidInventario.SetFocus;
    DBEidInventarioExit(DBEidInventario);
  end;
end;

procedure TFrmCadInventario.actSalvarExecute(Sender: TObject);
begin
  if cdsInventarioProd.State in [dsInsert, dsEdit] then
    cdsInventarioProd.Cancel;
  if cdsInventarioProd.RecordCount = 0 then
  begin
    messagedlg('Inventário sem itens!', mtwarning, [mbok],0);
    exit;
  end;

  if trim(DBMdescInventario.Text) = '' then
  begin
    messagedlg('Você precisa informar a descrição ou motivo do inventário!', mtwarning, [mbok], 0);
    exit;
  end;

  if trim(DBEidSafra.Text) = '' then
  begin
    messagedlg('Você precisa informar a safra!', mtwarning, [mbok], 0);
    exit;
  end;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadInventario.BtnAdicionarProdClick(Sender: TObject);
begin
  inherited;
  funcao.GravaSec(chave, cdsInventarioProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, BtnNovoProd, (Sender as TCBitBtn), 'ordem');
  if (sender as tcbitbtn).Name = 'BtnAdicionarProd' then
  begin
//    cdsInventarioProd.IndexFieldNames := 'ordem';
    BtnNovoProd.Click;
  end;

  DBEidProduto.SetFocus;
end;

procedure TFrmCadInventario.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  if cdsInventarioProd.State in [dsEdit] then
  begin
    if not cdsInventarioProdqtInventario.IsNull then
      cdsInventarioProdqtAjuste.AsFloat := cdsInventarioProdqtInventario.AsFloat - cdsInventarioProdqtEstoque.AsFloat;
    if cdsInventarioProdvlCustoMedio.AsFloat = 0 then
    begin
      messagedlg('Você deve informar um valor de custo!', mtwarning, [mbok], 0);
      DBEvlCustoMedio.SetFocus;
      Exit;
    end;
    cdsInventarioProd.Post;
  end;
  if not cdsInventarioProd.Eof then
    cdsInventarioProd.Next
  else
    cdsInventarioProd.First;
  cdsInventarioProd.Edit;
  DBEqtInventario.SetFocus;

end;

procedure TFrmCadInventario.btnFinalizarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if messagedlg('Esse procedimento irá gerar as alterações abaixo no estoque!' + #13 +
                'Tem certeza que deseja continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;
  if cdsPadrao.State = dsEdit then
    actSalvar.Execute;

  sql := Format('EXEC spFechaInventario  %s, %s, %s', [DBEidEmpresa.Text, DBEidCadEmpresa.Text, DBEidInventario.Text]);
  dmPadrao.dbConexao.ExecuteDirect(sql);
//  if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa, DBEidInventario], 'spFechaInventario') then
  PagAbas.ActivePageIndex := 0;
  actNovo.Execute;

end;

procedure TFrmCadInventario.BtnGeraSaldosClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if messagedlg('Esse processo irá gerar novamente os saldos!' + #13 +
     'Deseja continuar? ', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

  if (DBCKsaldoSafra.Checked) and (trim(DBEidSafra.Text) = '') then
  begin
    messagedlg('Você precisa informar a safra!', mtwarning, [mbok], 0);
    exit;
  end;

  with cdsInventarioProd do
  begin
    if IsEmpty then
      exit;

    First;
    while not Eof do
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;

//      cdsPadrao.FieldByName('dtInventario').AsDateTime := date;

      if DBCKsaldoSafra.Checked then
      begin

        sql := 'EXEC spRetCustoSaldo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                                         funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEdtInventario, 3) +
                                         ', 0, 0, 0, ' + QuotedStr('SEL') + ', ' +
                                         funcao.RetornaValorEField(DBEidSafra, 3);
      end
      else
        sql := 'EXEC spRetCustoSaldo ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                                         funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
                                         funcao.RetornaValorEField(DBEdtInventario, 3) +
                                         ', 0, 0, 0, ' + QuotedStr('SEL') + ', 0';

      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        cdsInventarioProd.FieldByName('qtEstoque').Value := FieldByName('qtProduto').Value;
        cdsInventarioProd.FieldByName('vlCustoMedio').Value := FieldByName('vlCustoMedio').Value;
      end;
      if not FieldByName('qtInventario').IsNull then
        FieldByName('qtAjuste').Value := FieldByName('qtInventario').Value - FieldByName('qtEstoque').Value;
      Post;
      Next;
    end; // fim do while not Eof do
  end;
  cdsInventarioProd.First;
  DBEqtInventario.SetFocus;
end;

procedure TFrmCadInventario.BtnGruposClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesProdutoGrupo, FrmPesProdutoGrupo);
  FrmPesProdutoGrupo.ShowModal;
  if FrmPesProdutoGrupo.id > 0 then
  begin
    //executa
    if FrmPesProdutoGrupo.id = 1 then
      LimpaProdutos;
    //inicia a inserção dos dados
    with FrmPesProdutoGrupo.cdsGrid do
    begin
      Filtered := false;
      Filter := 'SEL = 1';
      Filtered := true;

      if cdsInventarioProd.State in [dsInsert, dsEdit] then
        cdsInventarioProd.Cancel;

      BtnNovoProd.Click;
      First;
      while not Eof do
      begin
        cdsInventarioProdidProduto.AsInteger := FieldByName('idProduto').AsInteger;
        DBEidProdutoExit(DBEidProduto);
        if not (cdsInventarioProd.State in [dsEdit, dsInsert]) then
          cdsInventarioProd.Edit;
        BtnAdicionarProd.Click;
        Next;
      end; // while not Eof do
    end; //with FrmPesProdutoGrupo.cdsGrid do
  end; //if FrmPesProdutoGrupo.id > 0 then

end;

procedure TFrmCadInventario.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmRelContagem, FrmRelContagem);
  FrmRelContagem.cdsEmpresa.FieldByName('idEmpresa').AsInteger := cdsEmpresaidEmpresa.AsInteger;
  FrmRelContagem.cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  FrmRelContagem.cdsPadraoidIni.AsInteger := cdsPadrao.FieldByName('idInventario').AsInteger;
  FrmRelContagem.cdsPadraoidFim.AsInteger := cdsPadrao.FieldByName('idInventario').AsInteger;
  if (cdsPadrao.FieldByName('stInventario').AsString = 'ATIVO') or (cdsPadrao.FieldByName('stInventario').AsString = 'CANCELADO') then
    FrmRelContagem.cdsPadraoMostraSaldo.AsString := 'N'
  else
    FrmRelContagem.cdsPadraoMostraSaldo.AsString := 'S';
  FrmRelContagem.par := 2;
  FrmRelContagem.actGerar.Execute;
end;

procedure TFrmCadInventario.BtnReabrirClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if messagedlg('Tem certeza que deseja reabrir!', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

  sql := 'EXEC spExcluiInventario ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' + DBEidInventario.Text;
  dmPadrao.dbConexao.ExecuteDirect(sql);

  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('stInventario').AsString := 'ATIVO';
  cdsPadrao.Post;
  cdsPadrao.ApplyUpdates(0);
  DBEidInventarioExit(DBEidInventario);
end;

procedure TFrmCadInventario.cdsInventarioProdAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadInventario.cdsInventarioProdAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.Edit;
end;

procedure TFrmCadInventario.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
  begin
    cdsPadrao.FieldByName('stInventario').AsString := 'ATIVO';
    cdsPadrao.FieldByName('saldoSafra').AsString := 'N';
  end;
end;

procedure TFrmCadInventario.DBEidProdutoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsInventarioProd, [DBEidProduto]);
end;

procedure TFrmCadInventario.DBEidProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesProduto, FrmPesProduto);
    FrmPesProduto.ShowModal;
    if FrmPesProduto.idProduto <> 0 then
    begin
      if not (cdsInventarioProd.State in [dsEdit, dsInsert]) then
        cdsInventarioProd.Edit;
      cdsInventarioProd.FieldByName('idProduto').AsInteger := FrmPesProduto.idProduto;
      DBEidProduto.SetFocus;
    end;

  end
  else
    if Key = VK_F2 then
      frmPrincipal.actCadProduto.Execute;}
end;

procedure TFrmCadInventario.DBEidInventarioExit(Sender: TObject);
begin
  inherited;
  BuscaChave(tabelas[0], chave);
  AbreTabSecundaria;
  funcao.SomenteLeitura([DBEdtInventario, DBMdescInventario, DBEidProduto, DBEidProdDeposito,
                         DBEidProduto, DBEqtInventario, DBEvlCustoMedio],
                        (cdsPadrao.FieldByName('stInventario').AsString = 'FECHADO')
                         OR (cdsPadrao.FieldByName('stInventario').AsString = 'CANCELADO'));
  if (cdsPadrao.FieldByName('stInventario').AsString = 'FECHADO')
      OR (cdsPadrao.FieldByName('stInventario').AsString = 'CANCELADO') then
  begin
    actSalvar.Enabled := false;
    actExcluir.Enabled := true;
    BtnAdicionarProd.Enabled := false;
    BtnCancelarProd.Enabled := false;
    BtnRetirarProd.Enabled := false;
    BtnNovoProd.Enabled := false;
    BtnGeraSaldos.Enabled := false;
    BtnConfirmar.Enabled := false;
    BtnFinalizar.Enabled := false;
    BtnReabrir.Enabled := cdsPadrao.FieldByName('stInventario').AsString = 'FECHADO';
  end
  else
  begin
    BtnGeraSaldos.Enabled := true;
    BtnConfirmar.Enabled := true;
    BtnFinalizar.Enabled := true;
    BtnReabrir.Enabled := false;
  end;
end;

procedure TFrmCadInventario.DBEidInventarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    actPesquisar.Execute;
end;

procedure TFrmCadInventario.dspInventarioProdBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  GravaChaveSec(DeltaDS, chave);
  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspInventarioProd' then
    begin
      GeraAutoInc(DeltaDS, 'InventarioProd', 'ordem', chave);
    end; //fim do if (Sender as TDataSetProvider).Name = 'dspTituloPagMov' then
  end; //if (UpdateKind = ukInsert) then
end;

procedure TFrmCadInventario.dsInventarioProdStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec(cdsInventarioProd, BtnAdicionarProd, BtnCancelarProd, BtnRetirarProd, btnNovoProd);
end;

procedure TFrmCadInventario.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  btnGrupos.Enabled := cdsPadrao.State in [dsInsert, dsEdit];
  
end;

procedure TFrmCadInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmCadInventario := nil;
end;

procedure TFrmCadInventario.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsInventarioProd;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidInventario;
  foco := DBEidInventario;
  tab_chave := 'Inventario';
end;

procedure TFrmCadInventario.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actLanInventario';
  inherited;
  Height := 553;
  Width := 604;
end;

procedure TFrmCadInventario.LimpaProdutos;
begin
  with cdsInventarioProd do
  begin
    First;
    while not Eof do
    begin
      Delete;
      First;
    end;
  end;

end;

procedure TFrmCadInventario.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
    Width := 604
  else
    if PagAbas.ActivePageIndex = 1 then
    begin
      if cdsPadrao.State = dsInsert then
      begin
        messagedlg('Você deve salvar primeiramente o cadastro', mtwarning, [mbok], 0);
        PagAbas.ActivePageIndex := 0;
        exit;
      end;
      Width := 683;
    end;

end;

end.
