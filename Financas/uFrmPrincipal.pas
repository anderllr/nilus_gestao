unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, DB, DBClient, ImgList, XPMan, ComCtrls, CStatusBar, StdCtrls,
  CComboBox, Provider, CLabel, Buttons, CBitBtn, ExtCtrls, CPanel, Menus,
  CPanelGradient, CSpeedButton, CFind, DBXCommon, MidasLib, FMTBcd, SqlExpr,
  jpeg;

//  , WinHelpViewer, HTMLHelpViewer  ; para quando for usar o help
  
type
  TfrmPrincipal = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    XPManifest1: TXPManifest;
    Barra: TCStatusBar;
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    lblEmpresa: TCLabel;
    PanPrincipal: TCPanel;
    LstPagar: TCPanelGradient;
    LstReceber: TCPanelGradient;
    BtnFechar: TCBitBtn;
    BtnReceber: TCBitBtn;
    BtnPagar: TCBitBtn;
    BtnCadPrevisaoPag: TCSpeedButton;
    BtnCadTituloRec: TCSpeedButton;
    BtnCadContrato: TCSpeedButton;
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
    actIndice: TAction;
    actCadResultado: TAction;
    actCadGerencial: TAction;
    actCadMovFinanceira: TAction;
    actCadBanco: TAction;
    actCadDocSerie: TAction;
    actCadTitulos: TAction;
    actCadRateioTalhao: TAction;
    actCadCliente: TAction;
    actCadProduto: TAction;
    actCadSafra: TAction;
    actCadConfigFinanc: TAction;
    actCadCidade: TAction;
    actCadPrevisaoRec: TAction;
    actCadTituloPag: TAction;
    actPesTitulos: TAction;
    actCadCaixa: TAction;
    actCadMovCaixa: TAction;
    BtnCaixa: TCBitBtn;
    LstCaixa: TCPanelGradient;
    BtnMovCaixa: TCSpeedButton;
    BtnCadCaixa: TCSpeedButton;
    BtnRecTitulo: TCSpeedButton;
    actCadConta: TAction;
    LstBanco: TCPanelGradient;
    BtnCadConta: TCSpeedButton;
    BtnBanco: TCBitBtn;
    BtnMovConta: TCSpeedButton;
    actCadMovConta: TAction;
    actRecTitulo: TAction;
    BtnCadPrevisaoRec: TCSpeedButton;
    actCadPrevisaoPag: TAction;
    BtnCadTituloPag: TCSpeedButton;
    CSpeedButton1: TCSpeedButton;
    actCadUsuario: TAction;
    BtnPagTitulo: TCSpeedButton;
    actPagTitulo: TAction;
    actCadBem: TAction;
    actCompensacao: TAction;
    actExtratoConta: TAction;
    actRelMovCaixa: TAction;
    actCadMovTransf: TAction;
    BtnMovTransf: TCSpeedButton;
    CSpeedButton2: TCSpeedButton;
    actRelGerencial: TAction;
    actRelResultado: TAction;
    actRelRateio: TAction;
    actFichaGerencial: TAction;
    actRelConfResultado: TAction;
    actFluxoCaixa: TAction;
    actRelExtrato: TAction;
    actContasPagar: TAction;
    actContasRec: TAction;
    actCadCultura: TAction;
    actRelExtratoCaixa: TAction;
    actPesGerencial: TAction;
    actBackup: TAction;
    actRelFluxoMensal: TAction;
    actRelExtratoFornecedor: TAction;
    actRelExtratoCliente: TAction;
    actCadTalhao: TAction;
    actCadPlanoConta: TAction;
    ActSelEmpresas: TAction;
    Action1: TAction;
    Image1: TImage;
    actCadSegmento: TAction;
    actCadGrupoCad: TAction;
    actAlteraPortador: TAction;
    actRelContasPagarPortador: TAction;
    actRelMovimentacao: TAction;
    sdsLookup: TSQLDataSet;
    dspLookup: TDataSetProvider;
    cdsLookup: TClientDataSet;
    actCadGrupoGerencial: TAction;
    procedure actCadPlanoContaExecute(Sender: TObject);
    procedure actCadTalhaoExecute(Sender: TObject);
    procedure actRelExtratoClienteExecute(Sender: TObject);
    procedure actRelExtratoFornecedorExecute(Sender: TObject);
    procedure actRelFluxoMensalExecute(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actPesGerencialExecute(Sender: TObject);
    procedure actRelExtratoCaixaExecute(Sender: TObject);
    procedure actCadCulturaExecute(Sender: TObject);
    procedure actContasRecExecute(Sender: TObject);
    procedure actContasPagarExecute(Sender: TObject);
    procedure actRelExtratoExecute(Sender: TObject);
    procedure actFluxoCaixaExecute(Sender: TObject);
    procedure actRelConfResultadoExecute(Sender: TObject);
    procedure actFichaGerencialExecute(Sender: TObject);
    procedure actRelRateioExecute(Sender: TObject);
    procedure actRelResultadoExecute(Sender: TObject);
    procedure actRelGerencialExecute(Sender: TObject);
    procedure actCadMovTransfExecute(Sender: TObject);
    procedure actRelMovCaixaExecute(Sender: TObject);
    procedure actExtratoContaExecute(Sender: TObject);
    procedure actCompensacaoExecute(Sender: TObject);
    procedure actCadBemExecute(Sender: TObject);
    procedure actPagTituloExecute(Sender: TObject);
    function ExecutaSQLRet(par: array of TObject; proc, tab: string): TClientDataSet;    
    procedure actCadUsuarioExecute(Sender: TObject);
    procedure actCadPrevisaoPagExecute(Sender: TObject);
    procedure actRecTituloExecute(Sender: TObject);
    procedure actCadMovContaExecute(Sender: TObject);
    procedure actCadContaExecute(Sender: TObject);
    procedure actCadMovCaixaExecute(Sender: TObject);
    procedure actCadCaixaExecute(Sender: TObject);
    procedure actPesTitulosExecute(Sender: TObject);
    procedure actCadTituloPagExecute(Sender: TObject);
    procedure actCadPrevisaoRecExecute(Sender: TObject);
    procedure actCadCidadeExecute(Sender: TObject);
    procedure actCadConfigFinancExecute(Sender: TObject);
    procedure actCadSafraExecute(Sender: TObject);
    procedure actCadProdutoExecute(Sender: TObject);
    procedure actCadEmpresaExecute(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actCadRateioTalhaoExecute(Sender: TObject);
    procedure actCadTitulosExecute(Sender: TObject);
    procedure actCadDocSerieExecute(Sender: TObject);
    procedure actCadBancoExecute(Sender: TObject);
    procedure actCadMovFinanceiraExecute(Sender: TObject);
    procedure actCadGerencialExecute(Sender: TObject);
    procedure actCadResultadoExecute(Sender: TObject);
    procedure actIndiceExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure fecharExecute(Sender: TObject);
    procedure BtnPagarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AbrePainel(Sender: TCBitBtn);
    procedure ActSelEmpresasExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actCadSegmentoExecute(Sender: TObject);
    procedure actCadGrupoCadExecute(Sender: TObject);
    procedure actAlteraPortadorExecute(Sender: TObject);
    procedure actRelContasPagarPortadorExecute(Sender: TObject);
    procedure actRelMovimentacaoExecute(Sender: TObject);
    procedure ConfigBarra;
    procedure Image1DblClick(Sender: TObject);
    procedure actCadGrupoGerencialExecute(Sender: TObject);

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

uses uFuncao, uDmPadrao, uFrmSobre, uCadBanco, uCadDocSerie,
  uFrmCadGerencial, uCadMovFinanceira, uCadResultado, uCadIndice, uCadTituloRec,
  uFrmCadRateio, uCadGeral, uFrmCadProduto, uFrmCadSafra,
  uFrmCadConfigFinanc, uCadCidade, uCadPrevisaoRec, uCadTituloPag,
  uFrmPesTitulos, uFrmCadCaixa, uFrmCadMovCaixa, uFrmCadConta, uFrmCadMovConta,
  uFrmRecTitulo, uCadPrevisaoPag, uFrmCadPadrao, uFrmCadUsuario, uFrmPagTitulo,
  uFrmCadBem, uFrmPesCompensacao, uFrmRelExtratoConta, uFrmRelMovCaixa,
  uFrmCadMovTransf, uFrmRelGerencial, uFrmRelResultado, uFrmRelRateio,
  uFrmRelFaturamento, uFrmRelFichaGerencial, uFrmRelConfResultados,
  uFrmRelFluxoCaixa, uFrmRelExtratoBancario, uFrmRelContasPagar,
  uFrmRelContasReceber, uFrmCadCultura, uFrmRelExtratoCaixa, uFrmPesGerencial,
  uFrmRelFluxoCaixaMensal, uFrmBackup, uFrmRelExtratoCliente,
  uFrmRelExtratoFornecedor, ufrmCadTalhao, uFrmCadPlanoConta, uFrmSelEmpresas,
  uFrmCadRateioTalhao, uFrmCadSegmento, uFrmCadGrupoCad, uFrmAlteraPortador,
  uFrmRelContasPagarPortador, uFrmRelMovimentacao, uFrmAutorizacao,
  uFrmProcessa, uFrmCadGrupoGerencial;

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
  DmPadrao.dbConexao.CloseDataSets;

  if (dmPadrao.dbConexao.InTransaction) or (DmPadrao.dbConexao.HasTransaction(t)) then
    tr := 1; //significa q já está em transação
  Result := TClientDataSet.Create(Self);
  Result.SetProvider(dspLookup);

  screen.Cursor := crSqlWait;
  frmPrincipal.erro := 0;
  //marca a transação
  if tr = 0 then
//  begin
//    t.TransactionID := 9950;
    dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
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
      //showmessage(CommandText);
      dmPadrao.dbConexao.CloseDataSets;
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

procedure TfrmPrincipal.actAlteraPortadorExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmAlteraPortador, TForm(frmAlteraPortador));
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

procedure TfrmPrincipal.actCadDocSerieExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadDocSerie, TForm(frmCadDocSerie));
end;

procedure TfrmPrincipal.actCadEmpresaExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['EMPRESA']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadGerencialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadGerencial, TForm(frmCadGerencial));
end;

procedure TfrmPrincipal.actCadGrupoCadExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadGrupoCad, TForm(frmCadGrupoCad));
end;

procedure TfrmPrincipal.actCadGrupoGerencialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadGrupoGerencial, TForm(frmCadGrupoGerencial));
end;

procedure TfrmPrincipal.actCadMovContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMovConta, TForm(frmCadMovConta));
end;

procedure TfrmPrincipal.actCadMovCaixaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMovCaixa, TForm(frmCadMovCaixa));
end;

procedure TfrmPrincipal.actCadMovFinanceiraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMovFinanceira, TForm(frmCadMovFinanceira));
end;

procedure TfrmPrincipal.actCadMovTransfExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadMovTransf, TForm(frmCadMovTransf));
end;

procedure TfrmPrincipal.actCadPlanoContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadPlanoConta, TForm(frmCadPlanoConta));
end;

procedure TfrmPrincipal.actCadPrevisaoPagExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadPrevisaoPag, TForm(frmCadPrevisaoPag));
end;

procedure TfrmPrincipal.actCadPrevisaoRecExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadPrevisaoRec, TForm(frmCadPrevisaoRec));
end;

procedure TfrmPrincipal.actCadProdutoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadProduto, TForm(frmCadProduto));
end;

procedure TfrmPrincipal.actCadRateioTalhaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadRateioTalhao, TForm(frmCadRateioTalhao));
end;

procedure TfrmPrincipal.actCadResultadoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadResultado, TForm(frmCadResultado));
end;

procedure TfrmPrincipal.actIndiceExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadIndice, TForm(frmCadIndice));
end;

procedure TfrmPrincipal.Action1Execute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadRateio, TForm(frmCadRateio));
end;

procedure TfrmPrincipal.actPagTituloExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmPagTitulo, TForm(frmPagTitulo));
end;

procedure TfrmPrincipal.actPesGerencialExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TfrmPesGerencial, TForm(frmPesGerencial));
end;

procedure TfrmPrincipal.actPesTitulosExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmPesTitulos, TForm(frmPesTitulos));
end;

procedure TfrmPrincipal.actRecTituloExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRecTitulo, TForm(frmRecTitulo));
end;

procedure TfrmPrincipal.actRelConfResultadoExecute(Sender: TObject);
begin
    Funcao.AbreFrm(TFrmRelConfResultado, TForm(FrmRelConfResultado));
end;

procedure TfrmPrincipal.actRelContasPagarPortadorExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelContasPagarPortador, TForm(frmRelContasPagarPortador));
end;

procedure TfrmPrincipal.actRelExtratoCaixaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelExtratoCaixa, TForm(frmRelExtratoCaixa));
end;

procedure TfrmPrincipal.actRelExtratoClienteExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelExtratoCliente, TForm(FrmRelExtratoCliente));
end;

procedure TfrmPrincipal.actRelExtratoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelExtratoBancario, TForm(frmRelExtratoBancario));
end;

procedure TfrmPrincipal.actRelExtratoFornecedorExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TFrmRelExtratoFornecedor, TForm(FrmRelExtratoFornecedor));
end;

procedure TfrmPrincipal.actRelFluxoMensalExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelFluxoCaixaMensal, TForm(FrmRelFluxoCaixaMensal));
end;

procedure TfrmPrincipal.actRelGerencialExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelGerencial, TForm(frmRelGerencial));
end;

procedure TfrmPrincipal.actRelMovCaixaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelMovCaixa, TForm(frmRelMovCaixa));
end;

procedure TfrmPrincipal.actRelMovimentacaoExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TfrmRelMovimentacao, TForm(frmRelMovimentacao));
end;

procedure TfrmPrincipal.actRelRateioExecute(Sender: TObject);
begin
   Funcao.AbreFrm(TfrmRelRateio, TForm(frmRelRateio));
end;

procedure TfrmPrincipal.actRelResultadoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelResultado, TForm(frmRelResultado));
end;

procedure TfrmPrincipal.ActSelEmpresasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSelEmpresas, FrmSelEmpresas);
  FrmSelEmpresas.ShowModal;
end;

procedure TfrmPrincipal.actCadCaixaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmCadCaixa, TForm(frmCadCaixa));
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

procedure TfrmPrincipal.actCadConfigFinancExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConfigFinanc, TForm(frmCadConfigFinanc));
end;

procedure TfrmPrincipal.actCadContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadConta, TForm(frmCadConta));
end;

procedure TfrmPrincipal.actCadCulturaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCultura, TForm(frmCadCultura));
end;

procedure TfrmPrincipal.actCadSafraExecute(Sender: TObject);
begin
//  funcao.AbreFrm(TfrmAutorizacao, TForm(frmAutorizacao));
  funcao.AbreFrm(TfrmCadSafra, TForm(frmCadSafra));
end;

procedure TfrmPrincipal.actCadSegmentoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadSegmento, TForm(frmCadSegmento));
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSobre, FrmSobre);
  FrmSobre.ShowModal;
end;

procedure TfrmPrincipal.actCadTalhaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTalhao, TForm(frmCadTalhao));
end;

procedure TfrmPrincipal.actCadTituloPagExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTituloPag, TForm(frmCadTituloPag));
end;

procedure TfrmPrincipal.actCadTitulosExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadTituloRec, TForm(frmCadTituloRec));
end;

procedure TfrmPrincipal.actCadUsuarioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadUsuario, TForm(frmCadUsuario));
end;

procedure TfrmPrincipal.actCompensacaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmPesCompensacao, TForm(frmPesCompensacao));
end;

procedure TfrmPrincipal.actContasPagarExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContasPagar, TForm(frmRelContasPagar));
end;

procedure TfrmPrincipal.actContasRecExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContasReceber, TForm(frmRelContasReceber));
end;

procedure TfrmPrincipal.actExtratoContaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelExtratoConta, TForm(frmRelExtratoConta));
end;

procedure TfrmPrincipal.actFichaGerencialExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelFichaGerencial, TForm(frmRelFichaGerencial));
end;

procedure TfrmPrincipal.actFluxoCaixaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelFluxoCaixa, TForm(frmRelFluxoCaixa));
end;

procedure TfrmPrincipal.BtnPagarClick(Sender: TObject);
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
  idModulo := 2;
  modulo := 'FIN';

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
  //funcao.Atualizacao('FINANCAS');

  Barra.Panels[0].Text := ' ' + descUsuario;
  AbrePainel(BtnReceber);

  //Executa rotina de permissão do cadastro
  funcao.VerPermissao(idUsuarioGrupo, idModulo, dmPadrao.cdsTmp, frmPrincipal);

  ConfigBarra;
end;

procedure TfrmPrincipal.Image1DblClick(Sender: TObject);
begin
  Application.CreateForm(TFrmProcessa, FrmProcessa);
  FrmProcessa.ShowModal;
end;

end.
