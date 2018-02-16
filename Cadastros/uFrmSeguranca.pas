unit uFrmSeguranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CLabel, EditAlign, CEdit, Buttons, CBitBtn;

type
  TFrmSeguranca = class(TForm)
    EDSenha: TCEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    BtnOK: TCBitBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeguranca: TFrmSeguranca;

implementation

uses uFrmPrincipal;

{$R *.dfm}

procedure TFrmSeguranca.BtnOKClick(Sender: TObject);
begin
  if not (EDSenha.Text = 'd3s3nv0lv1m3nt0') then
  begin
    messagedlg('Senha inválido!', mtwarning, [mbok], 0);
    exit;
  end;

  frmPrincipal.actCadSegModulo.Enabled := not frmPrincipal.actCadSegModulo.Enabled;
  frmPrincipal.actCadSegGrupoMenu.Enabled := not frmPrincipal.actCadSegGrupoMenu.Enabled;
  frmPrincipal.actCadSegMenu.Enabled := not frmPrincipal.actCadSegMenu.Enabled;
  frmPrincipal.actCadSegGrupoPermissao.Enabled := not frmPrincipal.actCadSegGrupoPermissao.Enabled;
end;

procedure TFrmSeguranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmSeguranca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    close;
end;

end.
