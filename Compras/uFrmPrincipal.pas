unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, DB, DBClient, ImgList, XPMan, ComCtrls, CStatusBar, StdCtrls,
  CComboBox, Provider, CLabel, Buttons, CBitBtn, ExtCtrls, CPanel, Menus,
  CPanelGradient, CSpeedButton, CFind, MidasLib, DBXCommon, jpeg, JvExComCtrls,
  JvComCtrls, JvPageList, JvNavigationPane, JvExControls, JvComponentBase,
  JvExExtCtrls, CButton;

type
  TfrmPrincipal = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    XPManifest1: TXPManifest;
    Barra: TCStatusBar;
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    ImageList1: TImageList;
    Acao: TActionManager;
    fechar: TAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    actSobre: TAction;
    actCadDocSerie: TAction;
    actCadFornecedor: TAction;
    actCadCidade: TAction;
    actBackup: TAction;
    ActSelEmpresas: TAction;
    lblEmpresa: TCLabel;
    Image1: TImage;
    actCadProduto: TAction;
    SmallImages: TImageList;
    LargeImages: TImageList;
    NavPanel: TJvNavigationPane;
    PanCadastro: TJvNavPanelPage;
    TreeCadastro: TJvTreeView;
    PanUtilitarios: TJvNavPanelPage;
    TreeUtilitarios: TJvTreeView;
    PanLancamento: TJvNavPanelPage;
    TreeLancamento: TJvTreeView;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    actCadBem: TAction;
    actLanRequisicao: TAction;
    NavSplitter: TJvOutlookSplitter;
    actCadComprador: TAction;
    actLanGerenciaRequisicao: TAction;
    actCadCriterioCompra: TAction;
    actCadCondicaoPgto: TAction;
    actLanCotacao: TAction;
    actLanPedidoCompra: TAction;
    actLanNfe: TAction;
    actCadFabricante: TAction;
    actLanPesRecepcao: TAction;
    PanRelatorio: TJvNavPanelPage;
    TreeRelatorio: TJvTreeView;
    actRelRequisicao: TAction;
    actRelCotacao: TAction;
    actRelPedidoCompra: TAction;
    actCadProdDeposito: TAction;
    actLanInventario: TAction;
    actLanMovEstoque: TAction;
    actRelContagem: TAction;
    actRelEstoque: TAction;
    actUtiConfigCompras: TAction;
    actLanPesConferencia: TAction;
    actRelConfPedidoCompra: TAction;
    actCadIndice: TAction;
    actCotFilial: TAction;
    procedure actBackupExecute(Sender: TObject);
    procedure actCadCidadeExecute(Sender: TObject);
    procedure actCadFornecedorExecute(Sender: TObject);
    procedure actCadDocSerieExecute(Sender: TObject);
    function ExecutaSQLRet(par: array of TObject; proc, tab: string): TClientDataSet;
    procedure actCadEmpresaExecute(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure fecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSelEmpresasExecute(Sender: TObject);
    procedure actCadProdutoExecute(Sender: TObject);
    //rotinas da treeview
    procedure ConfigTreeView;
    procedure ConfigTreeView2(Tree : TJvTreeView; radical: string);    
    procedure ClicaTreeView(indice: integer);
    procedure TreeLancamentoClick(Sender: TObject);
    procedure actCadBemExecute(Sender: TObject);
    procedure actLanRequisicaoExecute(Sender: TObject);
    procedure NavSplitterClick(Sender: TObject);
    procedure actCadCompradorExecute(Sender: TObject);
    procedure actLanGerenciaRequisicaoExecute(Sender: TObject);
    procedure actCadCriterioCompraExecute(Sender: TObject);
    procedure actCadCondicaoPgtoExecute(Sender: TObject);
    procedure actLanCotacaoExecute(Sender: TObject);
    procedure actLanPedidoCompraExecute(Sender: TObject);
    procedure actLanNfeExecute(Sender: TObject);
    procedure actCadFabricanteExecute(Sender: TObject);
    procedure actLanPesRecepcaoExecute(Sender: TObject);
    procedure actRelRequisicaoExecute(Sender: TObject);
    procedure actRelCotacaoExecute(Sender: TObject);
    procedure actRelPedidoCompraExecute(Sender: TObject);
    procedure actCadProdDepositoExecute(Sender: TObject);
    procedure actLanInventarioExecute(Sender: TObject);
    procedure actLanMovEstoqueExecute(Sender: TObject);
    procedure actRelContagemExecute(Sender: TObject);
    procedure actRelEstoqueExecute(Sender: TObject);
    procedure actUtiConfigComprasExecute(Sender: TObject);
    procedure actLanPesConferenciaExecute(Sender: TObject);
    procedure actRelConfPedidoCompraExecute(Sender: TObject);
    procedure actCadIndiceExecute(Sender: TObject);
    procedure actCotFilialExecute(Sender: TObject);
    procedure ConfigBarra;
    procedure TreeOnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idCadEmpresaFin, idUsuario, descUsuario,modulo : string;
    idUsuarioGrupo, idModulo : integer;
    erro : byte;
    filial : boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFuncao, uDmPadrao, uFrmSobre, uCadGeral,
  uCadDocSerie, uCadCidade, uFrmBackup, uFrmSelEmpresas, uFrmCadProduto,
  uFrmCadBem, uFrmCadRequisicao, uFrmCadComprador, uFrmGerenciaRequisicao,
  uFrmCadCondicaoPgto, uCadCriterioCompra, uFrmCadCotacao, uFrmCadPedidoCompra,
  uFrmNFE, uCadFabricante, uFrmPesRecepcao, uFrmRelRequisicao, uFrmRelCotacao,
  uFrmRelPedidoCompra, uFrmCadProdDeposito, uFrmCadInventario, uFrmMovEstoque,
  uFrmRelContagem, uFrmRelEstoque, uCadConfigCompras, uFrmPesConferencia,
  uFrmRelConfPedidoCompra, uCadIndice, uFrmCotacaoFilial;

{$R *.dfm}
//************************************************************************************
function TfrmPrincipal.ExecutaSQLRet(par: array of TObject; proc,
  tab: string): TClientDataSet;
var
  t : TDBXTransaction;
  i, tr : byte;
  where, msg, valor : string;
begin
  tr := 0;
  if dmPadrao.dbConexao.InTransaction then
    tr := 1; //significa q já está em transação
  Result := TClientDataSet.Create(dmPadrao);
  Result.ProviderName := 'dspLookUp';
  screen.Cursor := crSqlWait;
  frmPrincipal.erro := 0;
  //marca a transação
  if tr = 0 then
  begin
    //t.TransactionID := 9950;
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  end;
  try
    with Result do
    begin
      Active := false;
      //se o proc não está vazio é procedure senão é tabela
      if trim(proc) <> '' then
      begin
        CommandText := 'EXEC ' + proc + ' ';
        for i := 0 to high(par) do
        begin
          if Assigned(par[i]) then
            valor := Funcao.RetornaValorEField(par[i], 3)
          else
            valor := 'NULL';
          if trim(valor) = '' then
            valor := 'NULL';

          if i = 0 then
            CommandText := CommandText + valor
          else
            CommandText := CommandText + ', ' + valor;
        end;
      end
      else //senão é tabela
      begin
        if high(par) < 0 then //significa que o select veio pronto
          CommandText := tab
        else
        begin
          where := '';
          CommandText := tab;
          for i := 0 to high(par) do
            if (i = 0) and (pos('WHERE', UpperCase(CommandText)) <= 0) then
              where := 'WHERE ' + Funcao.RetornaValorEField(par[i], 2) + ' = ' + Funcao.RetornaValorEField(par[i], 3)
            else
              where := where + ' AND ' + Funcao.RetornaValorEField(par[i], 2) + ' = ' + Funcao.RetornaValorEField(par[i], 3);
          if (pos('SELECT', UpperCase(CommandText)) <= 0) then
            CommandText := ' SELECT * FROM ' + tab + ' ' + where
          else
            CommandText := CommandText + ' ' + where;
        end; //fim do else sem parâmetros
      end; //fim do senão é tabela
//      showmessage(CommandText);
      Active := true;
      msg := 'OK';
      //inicia procura pelo campo msg
      for i := 0 to Result.FieldDefs.Count - 1 do
        if Result.FieldDefs[i].DisplayName = 'msg' then
          if Result.FieldByName('msg').AsString <> 'OK' then
          begin
            msg := Result.FieldByName('msg').AsString;
            frmPrincipal.erro := 1;
          end;
    end;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if (frmPrincipal.erro = 0) then
  begin
    if tr = 0 then
      dmPadrao.dbConexao.CommitFreeAndNil(t)
  end
  else
  begin
    if tr = 0 then
      dmPadrao.dbConexao.RollBackFreeAndNil(t);
    if trim(msg) <> 'OK' then
      raise Exception.Create(msg);
  end;
end;
//************************************************************************************
//************************************************************************************
// ROTINAS DA TREEVIEW
//************************************************************************************
procedure TfrmPrincipal.ClicaTreeView(indice: integer);
begin
  acao.Actions[indice].Execute;
end;

procedure TfrmPrincipal.ConfigBarra;
var
  sql : string;
begin
  //Configura Barra de Status
  // [0] - 200 --Usuário
  // [1] - 240 --Razão Social da Empresa
  // [2] - 180 --Nome Fantasia da Filial
  // [3] - 200 --Use [F2] para cadastro E [F4] para consulta.

  //Nome do Usuário
  Barra.Panels[0].Text := ' ' + descUsuario;

  //Dados da empresa
  sql := 'SELECT * FROM vCadEmpresaFiscal WHERE idEmpresa = ' + idEmpresa + ' AND idCadEmpresa = ' + idCadEmpresa;
  with ExecutaSQLRet([], '', sql) do
  begin
    Barra.Panels[1].Text := ' ' + idEmpresa + '.' + FieldByName('descCadEmpresa').AsString;
    Barra.Panels[2].Text := ' ' + idCadEmpresa + '.' + FieldByName('descAbreviada').AsString;
  end;
end;

procedure TfrmPrincipal.ConfigTreeView;
//Procedure que irá configurar a treeview
begin
  ConfigTreeView2(TreeCadastro, 'actCad');
  ConfigTreeView2(TreeLancamento, 'actLan');
  ConfigTreeView2(TreeUtilitarios, 'actUti');
  ConfigTreeView2(TreeRelatorio, 'actRel');
end;

procedure TfrmPrincipal.ConfigTreeView2(Tree: TJvTreeView; radical: string);
var
  i : integer;
  nome : string;
begin
  for i := 0 to Acao.ActionCount - 1 do
    if (copy(acao.Actions[i].Name, 1, 6) = radical) and ((acao.Actions[i] as TAction).Enabled) then
    begin
      nome := (acao.Actions[i] as TAction).Caption;
      if copy(nome, 1, 1) = '&' then
        nome := copy(nome, 2, length(nome));

      Tree.Items.Add(nil, nome);
      Tree.Items[Tree.Items.Count-1].StateIndex := i;
      Tree.Items[Tree.Items.Count-1].ImageIndex := (acao.Actions[i] as TAction).ImageIndex;
      Tree.Items[Tree.Items.Count-1].SelectedIndex := (acao.Actions[i] as TAction).ImageIndex;
    end;
end;
//************************************************************************************
// FIM DAS ROTINAS DA TREEVIEW
//************************************************************************************

procedure TfrmPrincipal.actCadEmpresaExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['EMPRESA']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actBackupExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmBackup, FrmBackup);
  frmBackup.ShowModal;
end;

procedure TfrmPrincipal.actCadBemExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmCadBem, TForm(frmCadBem));
end;

procedure TfrmPrincipal.actCadCidadeExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmCadCidade, TForm(frmCadCidade));
end;

procedure TfrmPrincipal.actCadClienteExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['CLIENTE']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadCompradorExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadComprador, TForm(frmCadComprador));
end;

procedure TfrmPrincipal.actCadCondicaoPgtoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCondicaoPgto, TForm(frmCadCondicaoPgto));
end;

procedure TfrmPrincipal.actCadCriterioCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCriterioCompra, TForm(frmCadCriterioCompra));
end;

procedure TfrmPrincipal.actCadFabricanteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadFabricante, TForm(frmCadFabricante));
end;

procedure TfrmPrincipal.actCadFornecedorExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['CLIENTE']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadProdDepositoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProdDeposito, TForm(frmCadProdDeposito));
end;

procedure TfrmPrincipal.actCadProdutoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProduto, TForm(frmCadProduto));
end;

procedure TfrmPrincipal.actCotFilialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCotacaoFilial, TForm(FrmCotacaoFilial));
end;

procedure TfrmPrincipal.actCadIndiceExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadIndice, TForm(frmCadIndice));
end;

procedure TfrmPrincipal.actUtiConfigComprasExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigCompras, TForm(frmCadConfigCompras));
end;

procedure TfrmPrincipal.actLanCotacaoExecute(Sender: TObject);
begin
  if not Assigned(frmCadCotacao) then
    frmCadCotacao := TfrmCadCotacao.create(Self, ['0']);
  frmCadCotacao.Show;
end;

procedure TfrmPrincipal.actLanGerenciaRequisicaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmGerenciaRequisicao, TForm(frmGerenciaRequisicao));
end;

procedure TfrmPrincipal.actLanInventarioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadInventario, TForm(FrmCadInventario));
end;

procedure TfrmPrincipal.actLanMovEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmMovEstoque, TForm(FrmMovEstoque));
end;

procedure TfrmPrincipal.actLanNfeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmNfE, TForm(FrmNfE));
end;

procedure TfrmPrincipal.actLanPedidoCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadPedidoCompra, TForm(FrmCadPedidoCompra));
end;

procedure TfrmPrincipal.actLanPesConferenciaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmPesConferencia, TForm(frmPesConferencia));
end;

procedure TfrmPrincipal.actLanPesRecepcaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmPesRecepcao, TForm(frmPesRecepcao));
end;

procedure TfrmPrincipal.actLanRequisicaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadRequisicao, TForm(frmCadRequisicao));
end;

procedure TfrmPrincipal.actRelConfPedidoCompraExecute(Sender: TObject);
begin
 funcao.AbreFrm(TfrmRelConfPedidoCompra, TForm(frmRelConfPedidoCompra));
end;

procedure TfrmPrincipal.actRelContagemExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContagem, TForm(frmRelContagem));
end;

procedure TfrmPrincipal.actRelCotacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelCotacao, TForm(frmRelCotacao));
end;

procedure TfrmPrincipal.actRelEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelEstoque, TForm(frmRelEstoque));
end;

procedure TfrmPrincipal.actRelPedidoCompraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelPedidoCompra, TForm(frmRelPedidoCompra));
end;

procedure TfrmPrincipal.actRelRequisicaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelRequisicao, TForm(frmRelRequisicao));
end;

procedure TfrmPrincipal.actCadDocSerieExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadDocSerie, TForm(frmCadDocSerie));
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSobre, FrmSobre);
  FrmSobre.ShowModal;
end;

procedure TfrmPrincipal.ActSelEmpresasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSelEmpresas, FrmSelEmpresas);
  FrmSelEmpresas.ShowModal;
end;

procedure TfrmPrincipal.fecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  dmPadrao.dbConexao.CloseDataSets;
  dmPadrao.dbConexao.Close;
  Application.Terminate;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  par : byte;
begin
  WindowState := wsmaximized;
  Application.OnMessage := funcao.AppMessage;
  idModulo := 3;
  modulo := 'COM';
  erro := 0;
//  par := 0; //em desenvolvimento
  par := 1; //distribuição cliente
  if par = 1 then
  begin
    if ParamCount <= 0 then
      erro := 1
    else
      if (ParamStr(1) = 'Nilus') and (ParamStr(2) = 'G3sta0') then
      begin
        idEmpresa := ParamStr(3);
        idCadEmpresa := ParamStr(4);
        idUsuario := ParamStr(5);
        idUsuarioGrupo := StrToInt(ParamStr(6));
        cdsParametros.Active := false;
        cdsParametros.CommandText := 'SELECT * FROM Usuario WHERE idUsuario = ' + idUsuario;
        cdsParametros.Active := true;
        descUsuario := cdsParametros.FieldByName('descUsuario').AsString;
        cdsParametros.Active := false;
      end
      else
        erro := 1;
  end
  else
  begin
    descUsuario := 'TI';
    idUsuario := '1';
    idEmpresa := '1';
    idCadEmpresa := '1';
  end;
  if erro > 0 then
  begin
    messagedlg('Esse aplicativo deve ser iniciado pelo Portal Nilus!', mterror, [mbok], 0);
    close;
  end;
  filial := true;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //funcao.Atualizacao('CADASTRO');

  ConfigBarra;

  //Executa rotina de permissão do cadastro
  funcao.VerPermissao(idUsuarioGrupo, idModulo, dmPadrao.cdsTmp, frmPrincipal);

  ConfigTreeView;
  NavPanel.ActivePage := PanLancamento;

end;

procedure TfrmPrincipal.NavSplitterClick(Sender: TObject);
begin
  NavPanel.Visible := not NavPanel.Visible;
end;

procedure TfrmPrincipal.TreeLancamentoClick(Sender: TObject);
begin
  if (Sender as TJvTreeView).Items.Count > 0 then
    ClicaTreeView((Sender as TJvTreeView).Items[(Sender as TJvTreeView).ItemIndex].StateIndex);
end;

procedure TfrmPrincipal.TreeOnClick(Sender: TObject);
begin
  if (Sender as TJvTreeView).Items.Count > 0 then
    ClicaTreeView((Sender as TJvTreeView).Items[(Sender as TJvTreeView).ItemIndex].StateIndex);
end;

end.
