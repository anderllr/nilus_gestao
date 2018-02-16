unit uFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CLabel, EditAlign, CEdit, Buttons, CSpeedButton,
  jpeg, DB, DBClient, Provider, ComCtrls, CStatusBar, CPanelGradient;

type
  TFrmLogin = class(TForm)
    cdsUsuario: TClientDataSet;
    dspTabela: TDataSetProvider;
    Image1: TImage;
    cdsUsuariologin: TStringField;
    cdsUsuariosenha: TStringField;
    cdsUsuariodescUsuario: TStringField;
    cdsUsuarioidUsuarioGrupo: TSmallintField;
    cdsUsuarioidUsuario: TSmallintField;
    CPanelGradient1: TCPanelGradient;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    EdtLogin: TCEdit;
    EdtSenha: TCEdit;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    function VerificaUsuario: Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure EdtLoginExit(Sender: TObject);
  private
    { Private declarations }
    confirmou : boolean;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

function TFrmLogin.VerificaUsuario: Boolean;
begin
  cdsUsuario.Active := false;
//  cdsUsuario.CommandText := 'SELECT login, seg.senha FROM segusuariosenha seg, vConsUsuario ever WHERE seg.cd_usuario = ever.cd_usuario WHERE login = ' +
//                            quotedstr(trim(EdtLogin.Text));
  cdsUsuario.Params.ParamByName('login').AsString := trim(EdtLogin.Text);
  cdsUsuario.Active := true;

  {  cdsUsuario.IndexFieldNames := 'login';
  if not cdsUsuario.FindKey([Trim(EdtLogin.Text)]) then }
  if cdsUsuario.IsEmpty then
  begin
    messagedlg('Usuário não localizado!', mtwarning, [mbok], 0);
    EdtLogin.SetFocus;
    result := false;
  end
  else
  begin
    result := true;
//    BarLogin.Panels[0].Text := ' Usuário: ' + cdsUsuario.FieldByName('nome').AsString;
  end;
end;

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.BtnOkClick(Sender: TObject);
begin
  if not VerificaUsuario then
    exit;

  if Trim(EdtSenha.Text) = Trim(funcao.Crypt('D', cdsUsuariosenha.AsString)) then
  begin
    FrmPrincipal.idUsuario := cdsUsuario.FieldByName('idUsuario').AsString;
    FrmPrincipal.descUsuario := cdsUsuario.FieldByName('descUsuario').AsString;
    FrmPrincipal.idUsuarioGrupo := cdsUsuario.FieldByName('idUsuarioGrupo').AsInteger;
    confirmou := true;
    close;
  end
  else
  begin
    messagedlg('Senha inválida!', mterror, [mbok], 0);
    EdtSenha.SetFocus;
    exit;
  end;
end;

procedure TFrmLogin.EdtLoginExit(Sender: TObject);
begin
  if Trim(EdtLogin.Text) = '' then
    exit;
  if not btnCancelar.Focused then

  VerificaUsuario;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if not confirmou then
    Application.Terminate;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  confirmou := false;
end;

end.
