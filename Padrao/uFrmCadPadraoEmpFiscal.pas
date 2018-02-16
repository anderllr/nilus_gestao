unit uFrmCadPadraoEmpFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, FMTBcd,
  SqlExpr, CPanelGradient, CLabel, Mask, DBCtrls, CDBEdit, CLookUp, CFind,
  System.Actions, System.ImageList;

type
  TFrmCadPadraoEmpFiscal = class(TFrmCadPadrao)
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    PanEmpresa: TCPanelGradient;
    DBEidEmpresa: TCDBEdit;
    lblEmpresa: TCLabel;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lblCNPJ: TCLabel;
    lookidCnpjCpf: TCLookUp;
    lblInscricao: TCLabel;
    LookidInscEstadual: TCLookUp;
    Bevel2: TBevel;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    FindEmpresa: TCFind;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure cdsEmpresaidEmpresaValidate(Sender: TField);
    procedure TrataEmpresa;
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa : string;
    filial : boolean;

  end;

var
  FrmCadPadraoEmpFiscal: TFrmCadPadraoEmpFiscal;

implementation

uses uDmPadrao, uFrmPesEmpFiscal, uFrmPrincipal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TFrmCadPadraoEmpFiscal.cdsEmpresaidEmpresaValidate(Sender: TField);
begin
  inherited;
  if (trim(cdsEmpresaidEmpresa.AsString) <> '') then
  begin
    if not filial then
    begin
      cdsEmpresa.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsEmpresaidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsEmpresa.FieldByName('idCadEmpresa').AsString) = '' then
         cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := 1;

    end;
  end;
end;

procedure TFrmCadPadraoEmpFiscal.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookidInscEstadual.AlternateSQL.Clear;
  LookidInscEstadual.AlternateSQL.Add('SELECT idInscEstadual FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TFrmCadPadraoEmpFiscal.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  idEmpresa := DBEidEmpresa.Text;
  idCadEmpresa := DBEidCadEmpresa.Text;  
end;

procedure TFrmCadPadraoEmpFiscal.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if (DBEidEmpresa.Text <> idEmpresa) or (DBEidCadEmpresa.Text <> idCadEmpresa) then
  begin
    if not filial then
    begin
      cdsEmpresa.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsEmpresaidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsEmpresa.FieldByName('idCadEmpresa').AsString) = '' then
         cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := 1;
    end;
    if Grid then
      IniciaTabela
    else
      SqlInicial(0);
    (formulario.FindComponent('PagAbas') as TCPageControl).ActivePageIndex := 0;
    if Assigned(foco) then
      foco.SetFocus
  end;
end;

procedure TFrmCadPadraoEmpFiscal.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    if filial then
    begin
      Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
      FrmPesEmpFiscal.ShowModal;
      with (Formulario.FindComponent('cdsEmpresa') as TClientDataset) do
      begin
        if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
          FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
          (Formulario.FindComponent('DBEidCadEmpresa') as TCustomEdit).SetFocus;
        end;
      end;
    end; // fim do filial
{    else
    begin
      Application.CreateForm(TFrmPesEmpContabil, FrmPesEmpContabil);
      FrmPesEmpContabil.ShowModal;
      with (Formulario.FindComponent('cdsEmpresa') as TClientDataset) do
      begin
        if not (FrmPesEmpContabil.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpContabil.cdsGrid.FieldByName('idEmpresa').Value;
          (Formulario.FindComponent('DBEidEmpresa') as TCustomEdit).SetFocus;
        end;
      end;
    end;} // fim do else
  end; // fim do VK_F4

end;

procedure TFrmCadPadraoEmpFiscal.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  cdsEmpresa.CreateDataSet;
end;

procedure TFrmCadPadraoEmpFiscal.FormShow(Sender: TObject);
begin
  inherited;
  TrataEmpresa;
end;

procedure TFrmCadPadraoEmpFiscal.TrataEmpresa;
begin
  DBEidEmpresa.Find := nil;
  with cdsEmpresa do
  begin
    filial := true;
    Append;
    //AQUI DEVERÁ SER MUDADO PEGANDO A EMPRESA QUE ESTÁ PADRÃO NO SISTEMA
    FieldByName('idEmpresa').Value := FrmPrincipal.idEmpresa;
    if frmPrincipal.modulo = 'FIN' then //verificação se está vindo do financeiro para a possibilidade de lançar por filial
    begin
      filial := false;
      cdsLookup.Active := false;
      cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
      cdsLookup.Active := true;
      filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
      if not filial then
      begin
        FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
        DBEidCadEmpresa.Visible := false;
        LookdescCadEmpresa.Left := 111;
        LookdescCadEmpresa.Width := 278;
        lookidCnpjCpf.Visible := false;
        LookidInscEstadual.Visible := false;
        PanEmpresa.Height := 32;
      end;
    end;
    if filial then
      FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa
    else
    begin
      FindEmpresa.JoinClause.Clear;
      FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                 ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                                 ' AND acessa = ' + QuotedStr('S') + ')');

      DBEidEmpresa.Find := FindEmpresa;
    end;
  end;

end;

end.
