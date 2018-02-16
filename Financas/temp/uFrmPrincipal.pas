unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls,
  ActnMenus, DB, DBClient, ImgList, XPMan, ComCtrls, CStatusBar, StdCtrls,
  CComboBox, Provider, CLabel, Buttons, CBitBtn;

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
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    LblGesys: TCLabel;
    actSobre: TAction;
    actIndice: TAction;
    actCadResultado: TAction;
    actCadGerencial: TAction;
    actCadMovFinanceira: TAction;
    actCadBanco: TAction;
    actCadDocSerie: TAction;
    procedure actCadDocSerieExecute(Sender: TObject);
    procedure actCadBancoExecute(Sender: TObject);
    procedure actCadMovFinanceiraExecute(Sender: TObject);
    procedure actCadGerencialExecute(Sender: TObject);
    procedure actCadResultadoExecute(Sender: TObject);
    procedure actIndiceExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AbreFrm(Classe: TFormClass; var Referencia: TForm);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cd_empresa : string;
    cd_usuario : string;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFuncao, uDmPadrao, uFrmLogin, uFrmSobre, uCadIndice, uCadResultado,
  uCadGerencial, uCadMovFinanceira, uCadBanco, uCadDocSerie; //, uFrmCadUsuario;

{$R *.dfm}

procedure TfrmPrincipal.AbreFrm(Classe: TFormClass; var Referencia: TForm);
begin
  if Assigned(Referencia) then
  begin
//    Referencia.Update;
    Referencia.WindowState := wsNormal;
    Referencia.Show;
  end
  else
  begin
    Application.CreateForm(Classe, Referencia);
//    Referencia. Update;
    Referencia.KeyPreview := True;
    Referencia.Show;
  end;
end;

procedure TfrmPrincipal.actCadResultadoExecute(Sender: TObject);
begin
  AbreFrm(TfrmCadResultado, TForm(frmCadResultado));
end;

procedure TfrmPrincipal.actCadDocSerieExecute(Sender: TObject);
begin
  AbreFrm(TfrmCadDocSerie, TForm(frmCadDocSerie));
end;

procedure TfrmPrincipal.actIndiceExecute(Sender: TObject);
begin
  AbreFrm(TfrmCadIndice, TForm(frmCadIndice));
end;

procedure TfrmPrincipal.actCadBancoExecute(Sender: TObject);
begin
  AbreFrm(TfrmCadBanco, TForm(frmCadBanco));
end;

procedure TfrmPrincipal.actCadGerencialExecute(Sender: TObject);
begin
  AbreFrm(TfrmCadGerencial, TForm(frmCadGerencial));
end;

procedure TfrmPrincipal.actCadMovFinanceiraExecute(Sender: TObject);
begin
  AbreFrm(TfrmCadMovFinanceira, TForm(frmCadMovFinanceira));
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmSobre, FrmSobre);
  FrmSobre.ShowModal;
end;

procedure TfrmPrincipal.fecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Application.Terminate;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
//var
//  par : byte;
//  login : string;
begin
  WindowState := wsmaximized;
  Application.OnMessage := funcao.AppMessage;
//  par := 0; //em desenvolvimento
{  par := 1; //distribuição cliente
  if Par = 1 then
  begin
    if ParamCount <= 0 then
    begin
      messagedlg('Esse aplicativo deve ser iniciado pelo Meu Everest!', mterror, [mbok], 0);
      close;
      exit;
    end;

    login := ParamStr(1);
    cd_usuario := ParamStr(5);
    cd_empresa := ParamStr(4);
  end
  else
  begin
    login := 'TI';
    cd_usuario := '62';
    cd_empresa := '1';
  end;
  cdsParametros.Active := false;
  cdsParametros.CommandText := 'SELECT * FROM usuario';
  cdsParametros.Active := true;
  if not cdsParametros.Locate('login', login, []) then
//  if not cdsParametros.Locate('login', 'TI', []) then
  begin
    messagedlg('Usuário inválido! Inicialize o sistema pelo Meu Everest!', mterror, [mbok], 0);
    close;
    exit;
  end;
  Barra.Panels.Items[0].Text := '  ' + cdsParametros.FieldByName('nome').AsString;
  cdsParametros.Active := false;
  //preenche os parametros

  cdsParametros.CommandText := 'SELECT * FROM vCadastroEmpresa';
  cdsParametros.Active := true;
  cdsParametros.Locate('cd_empresa', cd_empresa, []);
  Barra.Panels.Items[1].Text := '  ' + cdsParametros.FieldByName('fantasia').AsString;
  }
end;

procedure TfrmPrincipal.FormPaint(Sender: TObject);
begin
  LblGesys.Top := frmPrincipal.Height - 88;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
//  Application.CreateForm(TFrmLogin, FrmLogin);
//  FrmLogin.ShowModal;
end;

end.
