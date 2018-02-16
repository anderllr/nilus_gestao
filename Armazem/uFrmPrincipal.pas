unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, DB, DBClient, ImgList, XPMan, ComCtrls, CStatusBar, StdCtrls,
  CComboBox, Provider, CLabel, Buttons, CBitBtn, ExtCtrls, CPanel, Menus,
  CPanelGradient, CSpeedButton, CFind, DBXCommon, MidasLib;

type
  TfrmPrincipal = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    Acao: TActionManager;
    fechar: TAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    ActionToolBar1: TActionToolBar;
    ImageList1: TImageList;
    XPManifest1: TXPManifest;
    Barra: TCStatusBar;
    LblGesys: TCLabel;
    actSobre: TAction;
    actCadDesconto: TAction;
    XPManifest2: TXPManifest;
    actCadCliente: TAction;
    actCadCidade: TAction;
    PanPrincipal: TCPanel;
    actCadProdMedida: TAction;
    LstCadastros: TCPanelGradient;
    LstLancamentos: TCPanelGradient;
    BtnFechar: TCBitBtn;
    BtnLancamentos: TCBitBtn;
    BtnCadastros: TCBitBtn;
    actCadProdGrupo: TAction;
    actCadProdSubGrupo: TAction;
    actCadCultura: TAction;
    actCadProduto: TAction;
    CSpeedButton1: TCSpeedButton;
    actCadProdDeposito: TAction;
    actConfigArmazem: TAction;
    CSpeedButton2: TCSpeedButton;
    actCadEmpresa: TAction;
    actCadMotorista: TAction;
    actCadContratoArm: TAction;
    BtnCadRomaneio: TCSpeedButton;
    actCadRomaneio: TAction;
    BtnCadContrato: TCSpeedButton;
    actCadTab: TAction;
    actCadBalanca: TAction;
    actCadNatureza: TAction;
    actCadResultado: TAction;
    actCadSafra: TAction;
    actCadNf: TAction;
    actCadNfE: TAction;
    btnCadNf: TCSpeedButton;
    actCadBem: TAction;
    CSpeedButton3: TCSpeedButton;
    CSpeedButton4: TCSpeedButton;
    actBackup: TAction;
    actRelTabDesconto: TAction;
    actRelRomaneios: TAction;
    actRelTransporte: TAction;
    actNfGlobal: TAction;
    CSpeedButton5: TCSpeedButton;
    actNfETransito: TAction;
    btnCadNfETransito: TCSpeedButton;
    actRelExtEntrada: TAction;
    actRelContrato: TAction;
    actRelExtSaida: TAction;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    ActSelEmpresas: TAction;
    procedure actRelExtSaidaExecute(Sender: TObject);
    procedure actRelContratoExecute(Sender: TObject);
    procedure actRelExtEntradaExecute(Sender: TObject);
    procedure actNfETransitoExecute(Sender: TObject);
    procedure actNfGlobalExecute(Sender: TObject);
    procedure actRelTransporteExecute(Sender: TObject);
    procedure actRelRomaneiosExecute(Sender: TObject);
    procedure actTabDescontoExecute(Sender: TObject);
    procedure actRelTabDescontoExecute(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actCadMotoristaExecute(Sender: TObject);
    procedure actCadBemExecute(Sender: TObject);
    procedure actCadSafraExecute(Sender: TObject);
    procedure actCadNfEExecute(Sender: TObject);
    procedure actCadNfExecute(Sender: TObject);
    procedure actCadResultadoExecute(Sender: TObject);
    procedure actCadNaturezaExecute(Sender: TObject);
    procedure actCadBalancaExecute(Sender: TObject);
    function ExecutaSQLRet(par: array of TObject; proc, tab: string): TClientDataSet;
    procedure actCadTabExecute(Sender: TObject);
    procedure actCadRomaneioExecute(Sender: TObject);
    procedure actCadContratoArmExecute(Sender: TObject);
    procedure actCadEmpresaExecute(Sender: TObject);
    procedure actConfigArmazemExecute(Sender: TObject);
    procedure actCadProdDepositoExecute(Sender: TObject);
    procedure actCadProdutoExecute(Sender: TObject);
    procedure actCadTalhaoExecute(Sender: TObject);
    procedure actCadCulturaExecute(Sender: TObject);
    procedure actCadProdSubGrupoExecute(Sender: TObject);
    procedure actCadProdGrupoExecute(Sender: TObject);
    procedure actCadProdMedidaExecute(Sender: TObject);
    procedure BtnCadastrosClick(Sender: TObject);
    procedure actCadCidadeExecute(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actCadDescontoExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fecharExecute(Sender: TObject);
    procedure AbrePainel(Sender: TCBitBtn);
    procedure ActSelEmpresasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa, idUsuario, descUsuario : string;
    idUsuarioGrupo : integer;
    erro : byte;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFuncao, uDmPadrao, uFrmSobre, uFrmCadDesconto, uCadGeral,
  uCadCidade, uFrmCadProdMedida, uFrmCadProdGrupo, uFrmCadProdSubGrupo,
  uFrmCadCultura, uFrmCadTalhao, uFrmCadProduto, uFrmCadProdDeposito,
  uFrmPesCadFiscal, uFrmCadMotorista, uFrmCadContratoArm,
  uFrmCadRomaneio, uFrmConfigArmazem, uFrmCadTab, uFrmCadBalanca, uFrmCadNatureza,
  uCadResultado, uFrmNFE, uFrmNotaFiscal, uFrmCadSafra, uFrmCadBem, uFrmBackup,
  uFrmRelTabDesconto, uFrmTabDesconto, uFrmRelRomaneio, uFrmRelTransporte,
  uFrmNotaGlogal, uFrmNFETransito, uFrmRelExtEntrada, uFrmRelContrato,
  uFrmExtSaida, uFrmSelEmpresas;

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
procedure TfrmPrincipal.AbrePainel(Sender: TCBitBtn);
var
  List : string;
  i : integer;
begin
//  showmessage(List);

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

procedure TfrmPrincipal.actConfigArmazemExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmConfigArmazem, TForm(FrmConfigArmazem));
end;

procedure TfrmPrincipal.actNfETransitoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmNFETransito, TForm(FrmNFETransito));
end;

procedure TfrmPrincipal.actNfGlobalExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmNotaGlobal, TForm(FrmNotaGlobal));
end;

procedure TfrmPrincipal.actTabDescontoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelTabDesconto, TForm(FrmRelTabDesconto));
end;

procedure TfrmPrincipal.actRelContratoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmRelContrato, TForm(FrmRelContrato));
end;

procedure TfrmPrincipal.actRelExtEntradaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmRelExtEntrada, TForm(frmRelExtEntrada));
end;

procedure TfrmPrincipal.actRelExtSaidaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelExtSaida, Tform(FrmRelExtSaida));
end;

procedure TfrmPrincipal.actRelRomaneiosExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelRomaneio, TForm(FrmRelRomaneio));
end;

procedure TfrmPrincipal.actRelTabDescontoExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelTabDesconto, TForm(FrmRelTabDesconto));
end;

procedure TfrmPrincipal.actRelTransporteExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TFrmRelTransporte, TForm(FrmRelTransporte));
end;

procedure TfrmPrincipal.ActSelEmpresasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSelEmpresas, FrmSelEmpresas);
  FrmSelEmpresas.ShowModal;
end;

procedure TfrmPrincipal.actBackupExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmBackup, FrmBackup);
  frmBackup.ShowModal;
end;

procedure TfrmPrincipal.actCadBalancaExecute(Sender: TObject);
begin
  Funcao.AbreFrm(TfrmCadBalanca, TForm(frmCadBalanca));
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

procedure TfrmPrincipal.actCadContratoArmExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadContratoArm, TForm(frmCadContratoArm));
end;

procedure TfrmPrincipal.actCadCulturaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadCultura, TForm(frmCadCultura));
end;

procedure TfrmPrincipal.actCadDescontoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TfrmCadDesconto, TForm(frmCadDesconto));
end;

procedure TfrmPrincipal.actCadEmpresaExecute(Sender: TObject);
begin
  if not Assigned(frmCadGeral) then
    frmCadGeral := TfrmCadGeral.create(Self, ['EMPRESA']);
  frmCadGeral.Show;
end;

procedure TfrmPrincipal.actCadMotoristaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadMotorista, TForm(FrmCadMotorista));
end;

procedure TfrmPrincipal.actCadNaturezaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadNatureza, TForm(FrmCadNatureza));
end;

procedure TfrmPrincipal.actCadNfEExecute(Sender: TObject);
begin
  if not Assigned(frmNfE) then
    frmNfE := TfrmNfE.create(Self, ['ARMAZEM']);
  frmNfE.Show;
end;

procedure TfrmPrincipal.actCadNfExecute(Sender: TObject);
begin
  if not Assigned(frmNotaFiscal) then
    frmNotaFiscal := TfrmNotaFiscal.create(Self, ['ARMAZEM']);
  frmNotaFiscal.Show;
end;

procedure TfrmPrincipal.actCadProdDepositoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadProdDeposito, TForm(FrmCadProdDeposito));
end;

procedure TfrmPrincipal.actCadProdGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadProdGrupo, TForm(FrmCadProdGrupo));
end;

procedure TfrmPrincipal.actCadProdMedidaExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadProdMedida, TForm(FrmCadProdMedida));
end;

procedure TfrmPrincipal.actCadProdSubGrupoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadProdSubGrupo, TForm(FrmCadProdSubGrupo));
end;

procedure TfrmPrincipal.actCadProdutoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadProduto, TForm(FrmCadProduto));
end;

procedure TfrmPrincipal.actCadResultadoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadResultado, TForm(FrmCadResultado));
end;

procedure TfrmPrincipal.actCadRomaneioExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadRomaneio, TForm(FrmCadRomaneio));
end;

procedure TfrmPrincipal.actCadSafraExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadSafra, TForm(FrmCadSafra));
end;

procedure TfrmPrincipal.actCadTabExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadTab, TForm(FrmCadTab));
end;

procedure TfrmPrincipal.actCadTalhaoExecute(Sender: TObject);
begin
  funcao.AbreFrm(TFrmCadTalhao, TForm(FrmCadTalhao));
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSobre, FrmSobre);
  FrmSobre.ShowModal;
end;

procedure TfrmPrincipal.BtnCadastrosClick(Sender: TObject);
begin
  AbrePainel(Sender as TCBitBtn);
end;

procedure TfrmPrincipal.fecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
  Action := caFree;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  par : byte;
begin
  WindowState := wsmaximized;
  Application.OnMessage := funcao.AppMessage;
  BtnLancamentos.Click;

//  par := 0; //em desenvolvimento
  par := 1; //distribuição cliente
  if par = 1 then
  begin
    if ParamCount <= 0 then
      erro := 1
    else
      if (ParamStr(1) = 'Nilus') and (ParamStr(2) = 'Vita') then
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

procedure TfrmPrincipal.FormPaint(Sender: TObject);
begin
  LblGesys.Top := frmPrincipal.Height - 88;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //funcao.Atualizacao('ARMAZEM');

  Barra.Panels[0].Text := ' ' + descUsuario;
  AbrePainel(BtnLancamentos);
//  Application.CreateForm(TdmPadrao, dmPadrao);
end;


end.
