unit uFrmPortal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, jpeg, ExtCtrls, Buttons, CSpeedButton, StdCtrls,
  ActnList, CActionList, CPanel, EditAlign, CEdit, CLabel, ShellAPI, DB,
  DBClient, Provider, DBXCommon, CMemo, IdBaseComponent, IdComponent, IdIPWatch,
  ScktComp;

type
  TFrmPortal = class(TForm)
    imgPortal: TImageList;
    Image1: TImage;
    Image2: TImage;
    panAcesso: TCPanel;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    Shape1: TShape;
    EdtLogin: TCEdit;
    EdtSenha: TCEdit;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    cdsAtualizacao: TClientDataSet;
    cdsAtualizacaoidAtualizacao: TIntegerField;
    cdsAtualizacaodescAtualizacao: TMemoField;
    dsAtualizacao: TDataSource;
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    cdsUsuariologin: TStringField;
    cdsUsuariosenha: TStringField;
    cdsUsuariodescUsuario: TStringField;
    cdsUsuarioidUsuarioGrupo: TSmallintField;
    cdsUsuarioidUsuario: TSmallintField;
    dspTabela: TDataSetProvider;
    cdsUsuarioidEmpresa: TIntegerField;
    cdsUsuarioidCadEmpresa: TSmallintField;
    procedure EdtLoginExit(Sender: TObject);
    function VerificaUsuario: Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Ok : Boolean;
    idEmpresa, idCadEmpresa, idUsuario, descUsuario : string;
    idUsuarioGrupo : integer;
    erro : byte;
  end;

var
  FrmPortal: TFrmPortal;

implementation

uses uFuncao, uDmPadrao, uFrmPrincipal;

{$R *.dfm}

function TFrmPortal.VerificaUsuario: Boolean;
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

procedure TFrmPortal.EdtLoginExit(Sender: TObject);
begin
  if Trim(EdtLogin.Text) = '' then
    exit;
  if not btnCancelar.Focused then

  VerificaUsuario;
end;

procedure TFrmPortal.BtnCancelarClick(Sender: TObject);
begin
  //
  Close;
  //
end;

procedure TFrmPortal.BtnOkClick(Sender: TObject);
begin
  if not VerificaUsuario then
    exit;
  idEmpresa := '';
  if Trim(EdtSenha.Text) = Trim(funcao.Crypt('D', cdsUsuariosenha.AsString)) then
  begin
    idUsuario := cdsUsuario.FieldByName('idUsuario').AsString;
    descUsuario := cdsUsuario.FieldByName('descUsuario').AsString;
    idUsuarioGrupo := cdsUsuario.FieldByName('idUsuarioGrupo').AsInteger;
    if cdsUsuario.FieldByName('idEmpresa').AsInteger > 0 then
      idEmpresa := cdsUsuario.FieldByName('idEmpresa').AsString;
    if cdsUsuario.FieldByName('idCadEmpresa').AsInteger > 0 then
      idCadEmpresa := cdsUsuario.FieldByName('idCadEmpresa').AsString;
  end
  else
  begin
    messagedlg('Senha inválida!', mterror, [mbok], 0);
    EdtSenha.SetFocus;
    exit;
  end;
  if trim(idEmpresa) = '' then
  begin
    cdsParametros.Active := false;
    cdsParametros.CommandText := 'SELECT MIN(idEmpresa) idEmpresa FROM vCadEmpresaContabil';
    cdsParametros.Active := true;
    idEmpresa := cdsParametros.FieldByName('idEmpresa').AsString;
    if trim(idEmpresa) = '' then
    begin
      messagedlg('Empresa não cadastrada! Cadastre no módulo de cadastros!', mtwarning, [mbok], 0);
      close;
    end;
  if trim(idCadEmpresa) = '' then
    idCadEmpresa := '1';
  end;

  ok := true;
  //alterar para 1 quando estiver tudo pronto
  frmPrincipal.idModulo := 1; //Coloquei o id dos módulos nas tags dos Actions de Chamada
  frmPrincipal.idEmpresa := idEmpresa;
  frmPrincipal.idCadEmpresa := idCadEmpresa;
  frmPrincipal.idUsuario := idUsuario;
  frmPrincipal.idUsuarioGrupo := idUsuarioGrupo;
  close;
  //
end;

procedure TFrmPortal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if not ok then
    Application.Terminate;

end;

procedure TFrmPortal.FormCreate(Sender: TObject);
begin
  Width := 197;
  Height := 450;
  ok := false;
//  Width := 500;
end;

end.
