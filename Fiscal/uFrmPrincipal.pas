unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, DB, DBClient, ImgList, XPMan, ComCtrls, CStatusBar, StdCtrls,
  CComboBox, Provider, CLabel, Buttons, CBitBtn, ExtCtrls, CPanel, Menus,
  CPanelGradient, CSpeedButton, CFind, MidasLib, DBXCommon, ClipBrd, jpeg;

type
  TfrmPrincipal = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    XPManifest1: TXPManifest;
    Barra: TCStatusBar;
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    PanPrincipal: TCPanel;
    LstPrincipal: TCPanelGradient;
    BtnFechar: TCBitBtn;
    BtnPrincipal: TCBitBtn;
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
    BtnNf: TCSpeedButton;
    actCadUsuario: TAction;
    actCadDocSerie: TAction;
    actCadProdDeposito: TAction;
    actCadCfop: TAction;
    actCadNatureza: TAction;
    actCadProduto: TAction;
    actCadProdMedida: TAction;
    actCadProdSubGrupo: TAction;
    actCadProdGrupo: TAction;
    actNfEntrada: TAction;
    actCadImpostoOutro: TAction;
    actCadTab: TAction;
    actCadSafra: TAction;
    actCadResultado: TAction;
    actCadGerencial: TAction;
    actRelFichaEstoque: TAction;
    actMovEstoque: TAction;
    actCadIndice: TAction;
    actLivroEntrada: TAction;
    actLivroSaidas: TAction;
    actRelProdEstoque: TAction;
    actCadCultura: TAction;
    actSintegra: TAction;
    actCadBanco: TAction;
    actCadCaixa: TAction;
    actCadBem: TAction;
    actBackup: TAction;
    actRelApuracaoIcms: TAction;
    actCadTributoDetalhe: TAction;
    actNfLayout: TAction;
    CSpeedButton1: TCSpeedButton;
    actSaldoCredor: TAction;
    actCadGeral: TAction;
    actCadConfigLivro: TAction;
    actConfigNF: TAction;
    actCidade: TAction;
    ActSelEmpresas: TAction;
    actRelEstoque: TAction;
    lblEmpresa: TCLabel;
    Image1: TImage;
    actCadFabricante: TAction;
    actSpedFiscal: TAction;
    procedure actCidadeExecute(Sender: TObject);
    procedure actConfigNFExecute(Sender: TObject);
    procedure actCadConfigLivroExecute(Sender: TObject);
    procedure actCadGeralExecute(Sender: TObject);
    procedure actSaldoCredorExecute(Sender: TObject);
    procedure actNfLayoutExecute(Sender: TObject);
    procedure actCadTributoDetalheExecute(Sender: TObject);
    procedure actRelApuracaoIcmsExecute(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actCadBemExecute(Sender: TObject);
    procedure actCadCaixaExecute(Sender: TObject);
    procedure actCadBancoExecute(Sender: TObject);
    procedure actSintegraExecute(Sender: TObject);
    procedure actCadCulturaExecute(Sender: TObject);
    procedure actRelProdEstoqueExecute(Sender: TObject);
    procedure actLivroSaidasExecute(Sender: TObject);
    procedure actLivroEntradaExecute(Sender: TObject);
    procedure actCadIndiceExecute(Sender: TObject);
    procedure actMovEstoqueExecute(Sender: TObject);
    procedure actRelFichaEstoqueExecute(Sender: TObject);
    procedure actNfEntradaExecute(Sender: TObject);
    procedure actCadGerencialExecute(Sender: TObject);
    procedure actCadResultadoExecute(Sender: TObject);
    procedure actCadSafraExecute(Sender: TObject);
    procedure actCadTabExecute(Sender: TObject);
    procedure actCadProdGrupoExecute(Sender: TObject);
    procedure actCadImpostoOutroExecute(Sender: TObject);
    procedure actCadProdSubGrupoExecute(Sender: TObject);
    procedure actCadProdMedidaExecute(Sender: TObject);
    procedure actCadProdutoExecute(Sender: TObject);
    procedure actCadNaturezaExecute(Sender: TObject);
    procedure actCadCfopExecute(Sender: TObject);
    procedure actCadProdDepositoExecute(Sender: TObject);
    procedure actCadDocSerieExecute(Sender: TObject);
    procedure actNfSaidaExecute(Sender: TObject);
    function ExecutaSQLRet(par: array of TObject; proc, tab: string): TClientDataSet;
    procedure actCadUsuarioExecute(Sender: TObject);
    procedure actCadEmpresaExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure fecharExecute(Sender: TObject);
    procedure BtnPrincipalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AbrePainel(Sender: TCBitBtn);
    procedure ActSelEmpresasExecute(Sender: TObject);
    procedure actRelEstoqueExecute(Sender: TObject);
    procedure actCadFabricanteExecute(Sender: TObject);
    procedure actSpedFiscalExecute(Sender: TObject);
    procedure ConfigBarra;
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idCadEmpresaFin, idUsuario, descUsuario, modulo : string;
    idUsuarioGrupo, idModulo : integer;
    filial : boolean;
    erro : byte;

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFuncao, uDmPadrao, uFrmSobre, uFrmCadUsuario, uCadGeral,
  uFrmNotaFiscal, uFrmCadProdDeposito, uCadDocSerie, uFrmCadCfop,
  uFrmCadNatureza, uFrmCadProduto, uFrmCadProdMedida, uFrmCadProdSubGrupo,
  uFrmCadImpostoOutro, uFrmCadProdGrupo, uFrmCadSafra, uFrmCadTab,
  uFrmCadGerencial, uCadResultado, uFrmNFE, uFrmRelFichaEstoque, uFrmMovEstoque,
  uCadIndice, uFrmRelLivroEntrada, uFrmRelLivroSaida, uFrmRelProdEstoque, uFrmCadCultura,
  uFrmGeraSintegra, uCadBanco, uFrmCadCaixa, uFrmCadBem,
  uFrmRelApuracaoIcms, uCadTributoDetalhe, uFrmBackup, uFrmLayout,
  uFrmNFETransito, uFrmCadSaldoCredor, uFrmCadConfigLivros, uFrmConfigNF,uCadCidade,
  uFrmSelEmpresas, uFrmRelEstoque, uCadFabricante, uFrmGeraSPED;

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
  dmPadrao.dbConexao.CloseDataSets;
  frmPrincipal.erro := 0;
  //marca a transação
//  if tr = 0 then
//  begin
//    t.TransactionID := 9950;
//    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
//  end;
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
      ClipBoard.AsText := CommandText;
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
//  if (frmPrincipal.erro = 0) then
//  begin
//    if tr = 0 then
//      dmPadrao.dbConexao.CommitFreeAndNil(t)
//  end
//  else
//  begin
//    if tr = 0 then
//      dmPadrao.dbConexao.RollbackFreeAndNil(t);
    if trim(msg) <> 'OK' then
      raise Exception.Create(msg);
//  end;
end;
//************************************************************************************

procedure TfrmPrincipal.AbrePainel(Sender: TCBitBtn);
var
  List : string;
  i : integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TCPanelGradient) then
    begin
      if ((Components[i] as TCPanelGradient).Name <> List) then
        (Components[i] as TCPanelGradient).Visible := false;
    end
    else
      if (Components[i] is TCBitBtn) then
        if ((Components[i] as TCBitBtn) <> Sender) and ((Components[i] as TCBitBtn).Tag = 1)then
          (Components[i] as TCBitBtn).Align := alBottom;
  end;
  List := 'Lst' + trim(copy(Sender.Name, 4, length(Sender.Name)));
  //atribui os valores a lista
  (FindComponent(List) as TCPanelGradient).Visible := true;
  (FindComponent(List) as TCPanelGradient).Align := alClient;
  Sender.Align := alTop;

end;

procedure TfrmPrincipal.actCadEmpresaExecute(Sender: TObject);
begin
{  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['EMPRESA']);
  frmCadGeral.Show;
  }
end;

procedure TfrmPrincipal.actCadFabricanteExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadFabricante, TForm(frmCadFabricante));
end;

procedure TfrmPrincipal.actCadGeralExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['CLIENTE']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadGerencialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadGerencial, TForm(frmCadGerencial));
end;

procedure TfrmPrincipal.actCadImpostoOutroExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadImpostoOutro, TForm(FrmCadImpostoOutro));
end;

procedure TfrmPrincipal.actCadIndiceExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadIndice, TForm(FrmCadIndice));
end;

procedure TfrmPrincipal.actCadNaturezaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadNatureza, TForm(FrmCadNatureza));
end;

procedure TfrmPrincipal.actCadProdDepositoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadProdDeposito, TForm(FrmCadProdDeposito));
end;

procedure TfrmPrincipal.actCadProdGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProdGrupo, TForm(frmCadProdGrupo));
end;

procedure TfrmPrincipal.actCadProdMedidaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProdMedida, TForm(frmCadProdMedida));
end;

procedure TfrmPrincipal.actCadProdSubGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProdSubGrupo, TForm(frmCadProdSubGrupo));
end;

procedure TfrmPrincipal.actCadProdutoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProduto, TForm(frmCadProduto));
end;

procedure TfrmPrincipal.actCadResultadoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadResultado, TForm(frmCadResultado));
end;

procedure TfrmPrincipal.actCadSafraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadSafra, TForm(frmCadSafra));
end;

procedure TfrmPrincipal.actCadTabExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTab, TForm(frmCadTab));
end;

procedure TfrmPrincipal.actCadTributoDetalheExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTributoDetalhe, TForm(frmCadTributoDetalhe));
end;

procedure TfrmPrincipal.actBackupExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmBackup, FrmBackup);
  frmBackup.ShowModal;
end;

procedure TfrmPrincipal.actCadBancoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadBanco, TForm(frmCadBanco));
end;

procedure TfrmPrincipal.actCadBemExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadBem, TForm(frmCadBem));
end;

procedure TfrmPrincipal.actCadCaixaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCaixa, TForm(frmCadCaixa));
end;

procedure TfrmPrincipal.actCadCfopExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCfop, TForm(frmCadCfop));
end;

procedure TfrmPrincipal.actCadConfigLivroExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigLivro, TForm(frmCadConfigLivro));
end;

procedure TfrmPrincipal.actCadCulturaExecute(Sender: TObject);
begin
   funcao.AbreFrm(TfrmCadCultura, TForm(frmCadCultura));
end;

procedure TfrmPrincipal.actCadDocSerieExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadDocSerie, TForm(frmCadDocSerie));
end;

procedure TfrmPrincipal.actSaldoCredorExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadSaldoCredor, TForm(frmCadSaldoCredor));
end;

procedure TfrmPrincipal.ActSelEmpresasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSelEmpresas, FrmSelEmpresas);
  FrmSelEmpresas.ShowModal;
end;

procedure TfrmPrincipal.actSintegraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmSintegra, TForm(FrmSintegra));
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSobre, FrmSobre);
  FrmSobre.ShowModal;
end;

procedure TfrmPrincipal.actSpedFiscalExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmSPED, TForm(FrmSPED));
end;

procedure TfrmPrincipal.actCadUsuarioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadUsuario, TForm(frmCadUsuario));
end;

procedure TfrmPrincipal.actCidadeExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadCidade, TForm(FrmCadCidade));
end;

procedure TfrmPrincipal.actConfigNFExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmConfigNF, TForm(FrmConfigNF));
end;

procedure TfrmPrincipal.actLivroEntradaExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmRelLivroEntrada, TForm(FrmRelLivroEntrada));
end;

procedure TfrmPrincipal.actLivroSaidasExecute(Sender: TObject);
begin
   funcao.AbreFrm(TFrmRelLivroSaida, TForm(FrmRelLivroSaida));
end;

procedure TfrmPrincipal.actMovEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmMovEstoque, TForm(frmMovEstoque));
end;

procedure TfrmPrincipal.actNfEntradaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmNfE, TForm(FrmNfE));
end;

procedure TfrmPrincipal.actNfLayoutExecute(Sender: TObject);
begin
//  funcao.AbreFrm(TFrmLayout, TForm(FrmLayout));
end;

procedure TfrmPrincipal.actNfSaidaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmNotaFiscal, TForm(frmNotaFiscal));
end;

procedure TfrmPrincipal.actRelApuracaoIcmsExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelApuracaoIcms, TForm(frmRelApuracaoIcms));
end;

procedure TfrmPrincipal.actRelEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelEstoque, TForm(frmRelEstoque));
end;

procedure TfrmPrincipal.actRelFichaEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelFichaEstoque, TForm(frmRelFichaEstoque));
end;

procedure TfrmPrincipal.actRelProdEstoqueExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelProdEstoque, TForm(FrmRelProdEstoque));
end;

procedure TfrmPrincipal.BtnPrincipalClick(Sender: TObject);
begin
  AbrePainel(Sender as TCBitBtn);
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

procedure TfrmPrincipal.fecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmPadrao.dbConexao.CloseDataSets;
  dmPadrao.dbConexao.Close;  
  Action := caFree;
  Application.Terminate;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  par : byte;
begin
  WindowState := wsmaximized;
  Application.OnMessage := funcao.AppMessage;
  idModulo := 6;
  modulo := 'FIS';

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
  //funcao.Atualizacao('FISCAL');

  AbrePainel(BtnPrincipal);
  // Busca Filial
  with frmPrincipal.ExecutaSQLRet([], '', 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + idEmpresa) do
    filial := FieldByName('lancafilial').AsString = 'S';

  if not filial then
    idCadEmpresaFin := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;

  ConfigBarra;
  //Executa rotina de permissão do cadastro
  funcao.VerPermissao(idUsuarioGrupo, idModulo, dmPadrao.cdsTmp, frmPrincipal);
end;

end.
