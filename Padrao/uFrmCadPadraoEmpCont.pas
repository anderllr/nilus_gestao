unit uFrmCadPadraoEmpCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, EditAlign,
  CEdit, CLookUp, CLabel, Mask, DBCtrls, CDBEdit, CPanelGradient, FMTBcd,
  SqlExpr, CFind, System.Actions, System.ImageList;

type
  TFrmCadPadraoEmpCont = class(TFrmCadPadrao)
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    PanEmpresa: TCPanelGradient;
    lblEmpresa: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    Bevel2: TBevel;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    FindEmpresa: TCFind;
    procedure FormCreate(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure ConfigLookEmpresa;
  private
    { Private declarations }

  public
    { Public declarations }
    idEmpresa : string;
  end;

var
  FrmCadPadraoEmpCont: TFrmCadPadraoEmpCont;

implementation

uses uDmPadrao, uFrmPrincipal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TFrmCadPadraoEmpCont.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaContabil WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                      ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +  ' AND acessa = ' +
                                      QuotedStr('S') + ') AND idEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaContabil WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                      ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +  ' AND acessa = ' +
                                      QuotedStr('S') + ') AND idEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaContabil WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                 ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +  ' AND acessa = ' +
                                 QuotedStr('S') + ') AND idEmpresa = ?');
end;

procedure TFrmCadPadraoEmpCont.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  idEmpresa := (Sender as TCustomEdit).Text;
end;

procedure TFrmCadPadraoEmpCont.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if DBEidEmpresa.Text <> idEmpresa then
  begin
    if Grid then
      IniciaTabela
    else
      SqlInicial(0);
    (formulario.FindComponent('PagAbas') as TCPageControl).ActivePageIndex := 0;
    if Assigned(foco) then
      foco.SetFocus
  end;
end;

procedure TFrmCadPadraoEmpCont.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  empCont := true;
  Grid := true;
  cdsEmpresa.CreateDataSet;
  cdsEmpresa.Append;
  with cdsEmpresa do
  begin
    //AQUI DEVERÁ SER MUDADO PEGANDO A EMPRESA QUE ESTÁ PADRÃO NO SISTEMA
    if trim(FrmPrincipal.idEmpresa) = '' then
    begin
      messagedlg('Sem cadastro de empresa!', mterror, [mbok], 0);
      close;
    end;    

    FieldByName('idEmpresa').Value := FrmPrincipal.idEmpresa;


  end;
end;

end.
