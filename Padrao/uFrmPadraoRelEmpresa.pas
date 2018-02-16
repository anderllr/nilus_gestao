unit uFrmPadraoRelEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRel, DB, DBClient, Provider, ActnList, ImgList, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CStatusBar, ExtCtrls, CFind, CLookUp, EditAlign, CEdit, CLabel,
  frxClass, frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, CPanelGradient, Mask, DBCtrls, CDBEdit,
  FMTBcd, SqlExpr, System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmPadraoRelEmpresa = class(TFrmPadraoRel)
    Bevel3: TBevel;
    Bevel5: TBevel;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    DBEidCadEmpresa: TCDBEdit;
    FindEmpresa: TCFind;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure cdsEmpresaidEmpresaValidate(Sender: TField);
    procedure ConfigLookEmpresa;
  private
    { Private declarations }
    idEmpresa, idCadEmpresa : string;
  public
    { Public declarations }
    fiscal, filial : boolean;
  end;

var
  FrmPadraoRelEmpresa: TFrmPadraoRelEmpresa;

implementation

uses uFrmPrincipal, uFrmPesEmpFiscal, uDmPadrao, uFrmPesEmpContabil;

{$R *.dfm}

procedure TFrmPadraoRelEmpresa.actGerarExecute(Sender: TObject);
begin
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;
  inherited;
end;

procedure TFrmPadraoRelEmpresa.cdsEmpresaidEmpresaValidate(Sender: TField);
var
  Empresa : string;
begin
  inherited;
  if (trim(cdsEmpresaidEmpresa.AsString) <> '') then
  begin
    Empresa := FrmPrincipal.ExecutaSQLRet([], '', 'SELECT Empresa FROM CadGeral WHERE idCadGeral = ' + cdsEmpresaidEmpresa.AsString).FieldByName('Empresa').AsString;
    if Empresa = 'S' then
      begin
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
        cdsLookup.Active := true;
        filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
      end;
//      filial := True;
    if not filial then
    begin
      cdsEmpresa.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsEmpresaidEmpresa.AsString).FieldByName('id').AsString;
      if trim(cdsEmpresa.FieldByName('idCadEmpresa').AsString) = '' then
         cdsEmpresa.FieldByName('idCadEmpresa').AsInteger := 1;

    end;
  end;
end;

procedure TFrmPadraoRelEmpresa.ConfigLookEmpresa;
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
end;

procedure TFrmPadraoRelEmpresa.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  idEmpresa := DBEidEmpresa.Text;
  idCadEmpresa := DBEidCadEmpresa.Text;
end;

procedure TFrmPadraoRelEmpresa.DBEidEmpresaExit(Sender: TObject);
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
    if Assigned(foco) then
      foco.SetFocus;
  end;
end;

procedure TFrmPadraoRelEmpresa.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    if (filial and fiscal) then
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
  end; // fim do VK_F4
end;

procedure TFrmPadraoRelEmpresa.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  fiscal := false;
  cdsEmpresa.CreateDataSet;
  cdsEmpresa.Append;  
  inherited;
end;

procedure TFrmPadraoRelEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  with cdsEmpresa do
  begin
    //AQUI DEVERÁ SER MUDADO PEGANDO A EMPRESA QUE ESTÁ PADRÃO NO SISTEMA
    if trim(FrmPrincipal.idEmpresa) = '' then
    begin
      messagedlg('Sem cadastro de empresa!', mterror, [mbok], 0);
      close;
    end;    
    FieldByName('idEmpresa').Value := FrmPrincipal.idEmpresa;
    FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa;
    filial := true;
    if (not fiscal)  then
    begin
      DBEidCadEmpresa.Visible := false;
      LookdescCadEmpresa.Left := 111;
      LookdescCadEmpresa.Width := 250;

      FindEmpresa.JoinClause.Clear;
      FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                 ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                                 ' AND acessa = ' + QuotedStr('S') + ')');

      DBEidEmpresa.Find := FindEmpresa;
    end
    else
      if frmPrincipal.modulo = 'FIN' then //verificação se está vindo do financeiro para a possibilidade de lançar por filial
      begin
        filial := false;
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
        cdsLookup.Active := true;
        filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
        if ((not filial) ) then
        begin
          FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
          DBEidCadEmpresa.Visible := false;
          LookdescCadEmpresa.Left := 111;
          LookdescCadEmpresa.Width := 250;

          FindEmpresa.JoinClause.Clear;
          FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                                     ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                                     ' AND acessa = ' + QuotedStr('S') + ')');

          DBEidEmpresa.Find := FindEmpresa;
        end;
      end;
  end;
end;

end.
