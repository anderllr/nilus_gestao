unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, DB, DBClient, ImgList, XPMan, ComCtrls, CStatusBar, StdCtrls,
  CComboBox, Provider, CLabel, Buttons, CBitBtn, ExtCtrls, CPanel, Menus,
  CPanelGradient, CSpeedButton, CFind, DBXCommon, MidasLib, jpeg,
  JvComponentBase, JvNavigationPane, JvExComCtrls, JvComCtrls, JvPageList,
  JvExControls;

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
    actNfSaida: TAction;
    actCadUsuario: TAction;
    actCadDocSerie: TAction;
    actCadBemGrupo: TAction;
    actCadBemSubGrupo: TAction;
    actCadBem: TAction;
    actCadCidade: TAction;
    ActSelEmpresas: TAction;
    lblEmpresa: TCLabel;
    Image1: TImage;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    SmallImages: TImageList;
    LargeImages: TImageList;
    NavPanel: TJvNavigationPane;
    PanLancamento: TJvNavPanelPage;
    TreeLancamento: TJvTreeView;
    PanCadastro: TJvNavPanelPage;
    TreeCadastro: TJvTreeView;
    PanUtilitarios: TJvNavPanelPage;
    TreeUtilitarios: TJvTreeView;
    PanRelatorio: TJvNavPanelPage;
    TreeRelatorio: TJvTreeView;
    actCadTipoMaquina: TAction;
    actCadMaquinaMarca: TAction;
    actCadMaquina: TAction;
    procedure actUpdateExecute(Sender: TObject);
    procedure actCadCidadeExecute(Sender: TObject);
    procedure actCadBemExecute(Sender: TObject);
    procedure actCadBemSubGrupoExecute(Sender: TObject);
    procedure actCadBemGrupoExecute(Sender: TObject);
    procedure actCadDocSerieExecute(Sender: TObject);
    function ExecutaSQLRet(par: array of TObject; proc, tab: string): TClientDataSet;
    procedure actCadUsuarioExecute(Sender: TObject);
    procedure actCadEmpresaExecute(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure fecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSelEmpresasExecute(Sender: TObject);
    //Rotinas do TreeView
    procedure ConfigTreeView;
    procedure ConfigTreeView2(Tree : TJvTreeView; radical: string);
    procedure ClicaTreeView(indice: integer);
    procedure TreeLancamentoClick(Sender: TObject);
    procedure ConfigBarra;
    procedure actCadTipoMaquinaExecute(Sender: TObject);
    procedure actCadMaquinaMarcaExecute(Sender: TObject);
    procedure actCadMaquinaExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idUsuario, descUsuario, modulo : string;
    idUsuarioGrupo, idModulo : integer;
    erro : byte;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFuncao, uDmPadrao, uFrmSobre, uFrmCadUsuario, uCadGeral,
  uCadDocSerie, uFrmCadBem, uFrmCadBemGrupo, uFrmCadBemSubGrupo, uCadCidade,
  uFrmSelEmpresas, uFrmCadTipoMaquina, uFrmCadMaquinaMarca, uFrmCadMaquina;

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
      dmPadrao.dbConexao.RollbackFreeAndNil(t);
    if trim(msg) <> 'OK' then
      raise Exception.Create(msg);
  end;
end;
//************************************************************************************

procedure TfrmPrincipal.actCadEmpresaExecute(Sender: TObject);
begin
{  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['EMPRESA']);
  frmCadGeral.Show;
  }
end;

procedure TfrmPrincipal.actCadMaquinaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadMaquina, TForm(FrmCadMaquina));
end;

procedure TfrmPrincipal.actCadMaquinaMarcaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadMaquinaMarca, TForm(FrmCadMaquinaMarca));
end;

procedure TfrmPrincipal.actCadTipoMaquinaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadTipoMaquina, TForm(FrmCadTipoMaquina));
end;

procedure TfrmPrincipal.actCadBemExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadBem, TForm(FrmCadBem));
end;

procedure TfrmPrincipal.actCadBemGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadBemGrupo, TForm(FrmCadBemGrupo));
end;

procedure TfrmPrincipal.actCadBemSubGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadBemSubGrupo, TForm(FrmCadBemSubGrupo));
end;

procedure TfrmPrincipal.actCadCidadeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCidade, TForm(frmCadCidade));
end;

procedure TfrmPrincipal.actCadClienteExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['CLIENTE']);
  frmCadGeral.Show;
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

procedure TfrmPrincipal.actUpdateExecute(Sender: TObject);
begin
  if messagedlg('O programa de Update automático do Nilus Gestão do Agronegócio será aberto!' + #13 +
                'O programa será fechado! Deseja continuar?', mtinformation, [mbyes,mbno], 0) = mryes then
  begin
    WinExec('update.exe', SW_SHOWNORMAL);
    dmPadrao.dbConexao.CloseDataSets;
    dmPadrao.dbConexao.Connected := false;
    close;
  end;

end;

procedure TfrmPrincipal.actCadUsuarioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadUsuario, TForm(frmCadUsuario));
end;

procedure TfrmPrincipal.ActSelEmpresasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSelEmpresas, FrmSelEmpresas);
  FrmSelEmpresas.ShowModal;
end;

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
  idModulo := 5;
  modulo := 'PAT';
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
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //funcao.Atualizacao('PATRIMONIO');

  //Executa rotina de permissão do cadastro
  funcao.VerPermissao(idUsuarioGrupo, idModulo, dmPadrao.cdsTmp, frmPrincipal);

  ConfigTreeView;
  NavPanel.ActivePage := PanLancamento;

  ConfigBarra;
end;

procedure TfrmPrincipal.TreeLancamentoClick(Sender: TObject);
begin
  if (Sender as TJvTreeView).Items.Count > 0 then
    ClicaTreeView((Sender as TJvTreeView).Items[(Sender as TJvTreeView).ItemIndex].StateIndex);
end;

end.
