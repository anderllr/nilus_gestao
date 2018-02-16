unit uFrmPadraoRelEmpFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRel, DB, DBClient, Provider, ActnList, ImgList, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CStatusBar, ExtCtrls, CFind, CLookUp, EditAlign, CEdit, CLabel,
  frxClass, frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, CPanelGradient, Mask, DBCtrls, CDBEdit,
  FMTBcd, SqlExpr, System.Actions, frxExportXLSX, System.ImageList;

type
  TFrmPadraoRelEmpFiscal = class(TFrmPadraoRel)
    Bevel3: TBevel;
    Bevel5: TBevel;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    sdsEmpresa: TSQLDataSet;
    FindEmpresa: TCFind;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidEmpresaEnter(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure FormShow(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
    idEmpresa : string;    
  public
    { Public declarations }
    fiscal : boolean;
  end;

var
  FrmPadraoRelEmpFiscal: TFrmPadraoRelEmpFiscal;

implementation

uses uFrmPrincipal, uFrmPesEmpFiscal, uFrmPesEmpContabil, uDmPadrao;

{$R *.dfm}

procedure TFrmPadraoRelEmpFiscal.DBEidEmpresaEnter(Sender: TObject);
begin
  inherited;
  idEmpresa := (Sender as TCustomEdit).Text;
end;

procedure TFrmPadraoRelEmpFiscal.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if DBEidEmpresa.Text <> idEmpresa then
  begin
    if Assigned(foco) then
      foco.SetFocus
  end;
end;

procedure TFrmPadraoRelEmpFiscal.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    if (fiscal) then
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

procedure TFrmPadraoRelEmpFiscal.FormCreate(Sender: TObject);
begin
  fiscal := false;
  inherited;

end;

procedure TFrmPadraoRelEmpFiscal.FormShow(Sender: TObject);
begin
  inherited;

  ConfigLookEmpresa;

  with (Formulario.FindComponent('cdsEmpresa') as TClientDataset) do
  begin
    Active := false;
    if fiscal then
      CommandText := 'select * from vCadEmpresaFiscal where 1 = 2'
    else
      CommandText := 'select * from vCadEmpresaContabil where 1 = 2';
    Active := true;
    if not (State in [dsEdit, dsInsert]) then
      Edit;
    //AQUI DEVERÁ SER MUDADO PEGANDO A EMPRESA QUE ESTÁ PADRÃO NO SISTEMA
    if trim(FrmPrincipal.idEmpresa) = '' then
    begin
      messagedlg('Sem cadastro de empresa!', mterror, [mbok], 0);
      close;
    end;

    FieldByName('idEmpresa').Value := FrmPrincipal.idEmpresa;
    if fiscal then
    begin
      FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa;
    end
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

procedure TFrmPadraoRelEmpFiscal.actGerarExecute(Sender: TObject);
begin
  //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  if fiscal then
    dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
             cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString
  else
    dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
             cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + frmPrincipal.idCadEmpresa;

  dmPadrao.cdsEmpresaContabil.Active := true;
  inherited;
end;

procedure TFrmPadraoRelEmpFiscal.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.Key.Clear;
  LookdescCadEmpresa.LookUpKey.Clear;

  LookdescAbreviada.Key.Clear;
  LookdescAbreviada.LookUpKey.Clear;

  LookdescCadEmpresa.Key.Add('idEmpresa');
  LookdescCadEmpresa.LookUpKey.Add('idEmpresa');

  LookdescAbreviada.Key.Add('idEmpresa');
  LookdescAbreviada.LookUpKey.Add('idEmpresa');

  if fiscal then
  begin
    LookdescCadEmpresa.Key.Add('idCadEmpresa');
    LookdescCadEmpresa.LookUpKey.Add('idCadEmpresa');

    LookdescAbreviada.Key.Add('idCadEmpresa');
    LookdescAbreviada.LookUpKey.Add('idCadEmpresa');

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
  end
  else
  begin

    LookdescCadEmpresa.AlternateSQL.Clear;
    LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaContabil WHERE idEmpresa IN ' +
                               ' (SELECT DISTINCT idEmpresa FROM UsuarioEmpresa usu WHERE idUsuario = ' +
                               frmPrincipal.idUsuario + '  AND acessa = ' + QuotedStr('S') + ') AND idEmpresa = ?');
    LookdescAbreviada.AlternateSQL.Clear;
    LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaContabil WHERE idEmpresa IN ' +
                               ' (SELECT DISTINCT idEmpresa FROM UsuarioEmpresa usu WHERE idUsuario = ' +
                               frmPrincipal.idUsuario + '  AND acessa = ' + QuotedStr('S') + ') AND idEmpresa = ?');
  end;
end;
end.
