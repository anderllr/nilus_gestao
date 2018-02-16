unit uCadConfigTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox, uFrmCadPadraoGrid, uFrmCadPadrao, cxShellBrowserDialog, ACBrCTe,
  System.Actions, uFrmCadPadraoEmpFiscal, ACBrBase, ACBrDFe, cxClasses,
  System.ImageList;

type
  TfrmCadConfigTransporte = class(TFrmCadPadraoEmpFiscal)
    sdsDocSerie: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    AbrePasta: TcxShellBrowserDialog;
    TabGeral: TTabSheet;
    DBRGtpImp: TCDBRadioGroup;
    DBRGtpAmb: TCDBRadioGroup;
    CGroupBox11: TCGroupBox;
    CLabel50: TCLabel;
    CLabel52: TCLabel;
    sbtnCaminhoCert: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CLabel51: TCLabel;
    DBECAMINHO_CERTIFICADO: TCDBEdit;
    DBESENHA_CERTIFICADO: TCDBEdit;
    DBEserie_certificado: TCDBEdit;
    CGroupBox12: TCGroupBox;
    CLabel53: TCLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    CLabel55: TCLabel;
    DBECAMINHO_LOGOMARCA: TCDBEdit;
    DBECAMINHO_ARQUIVOS: TCDBEdit;
    CGroupBox10: TCGroupBox;
    CLabel46: TCLabel;
    CLabel42: TCLabel;
    CLabel47: TCLabel;
    CLabel48: TCLabel;
    CLabel49: TCLabel;
    CLabel84: TCLabel;
    DBESERVIDOR_SMTP: TCDBEdit;
    DBEPORTA: TCDBEdit;
    DBESERVIDOR_POP: TCDBEdit;
    DBEUSUARIO: TCDBEdit;
    DBESENHA: TCDBEdit;
    DBCKCONEXAO_SEGURA: TCDBCheckBox;
    DBEEMAIL_ORIGEM: TCDBEdit;
    DBEtpServ: TCDBEdit;
    LookNatureza: TCLookUp;
    DBEidNatureza: TCDBEdit;
    CLabel24: TCLabel;
    LookFormaPagto: TCLookUp;
    DBEforPag: TCDBEdit;
    CLabel28: TCLabel;
    LookTipoServico: TCLookUp;
    CLabel8: TCLabel;
    LookModal: TCLookUp;
    DBEmodal: TCDBEdit;
    CLabel26: TCLabel;
    LookTipoCTe: TCLookUp;
    DBEtpCTe: TCDBEdit;
    CLabel10: TCLabel;
    CLookUp19: TCLookUp;
    CLookUp20: TCLookUp;
    DBEidSeguradora: TCDBEdit;
    CLabel93: TCLabel;
    DBERNTRC: TCDBEdit;
    CLabel104: TCLabel;
    OpenDialog1: TOpenDialog;
    ACBrCTe1: TACBrCTe;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure BtnRelatoriosClick(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TrataEmpresaCTe;
    procedure configlookempresaCTe;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConfigTransporte: TfrmCadConfigTransporte;

implementation

uses uDmPadrao, uDmFind, uFrmPesEmpContabil, uFrmPrincipal, uFuncao;

{$R *.dfm}

procedure TfrmCadConfigTransporte.sbtnCaminhoCertClick(Sender: TObject);
begin
  inherited;
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
    if (trim(OpenDialog1.FileName) <> '') then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('caminho_certificado').AsString := OpenDialog1.FileName;
  end;

end;

procedure TfrmCadConfigTransporte.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 {$IFNDEF ACBrCTeOpenSSL}
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
  cdsPadrao.FieldByName('serie_certificado').AsString := ACBrCTe1.SSL.SelecionarCertificado;
 {$ENDIF}
end;

procedure TfrmCadConfigTransporte.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.jpg';
  OpenDialog1.Filter := 'Arquivos JPG (*.jpg)|*.jpg';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
    if (trim(OpenDialog1.FileName) <> '') then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('caminho_logomarca').AsString := OpenDialog1.FileName;
  end;
end;

procedure TfrmCadConfigTransporte.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  AbrePasta.Execute;
  if AbrePasta.Path <> '' then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert])then
      cdsPadrao.Edit;

    cdsPadrao.FieldByName('caminho_arquivos').AsString := AbrePasta.Path + '\';
  end;

end;

procedure TfrmCadConfigTransporte.TrataEmpresaCTe;
var
  sql : string;
begin
  sql := 'EXEC spRetEmpresaCTe ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text;
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if (DBEidEmpresa.Text <> FieldByName('idEmpresa').AsString) or
       (DBEidCadEmpresa.Text <> FieldByName('idCadEmpresa').AsString) then
    begin
      cdsEmpresa.Edit;
      cdsEmpresaidEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
      cdsEmpresaidCadEmpresa.AsInteger := FieldByName('idCadEmpresa').AsInteger;
      cdsEmpresa.Post;
    end;
  end;
end;

//****************************************************************************************//
procedure TfrmCadConfigTransporte.actPesquisarExecute(Sender: TObject);
begin
//  inherited;
  Application.CreateForm(TFrmPesEmpContabil, FrmPesEmpContabil);
  FrmPesEmpContabil.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesEmpContabil.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      FieldByName('idEmpresa').Value := FrmPesEmpContabil.cdsGrid.FieldByName('idEmpresa').Value;
      (Formulario.FindComponent('DBEidEmpresa') as TCustomEdit).SetFocus;
    end;
  end;
end;

procedure TfrmCadConfigTransporte.actSalvarExecute(Sender: TObject);
var
  sql : string;
begin
  GravaChave(0, '', nil);
  inherited;

  //Verifica se usa o CTe para ai então replicar os dados do emissor
  if trim(DBEserie_certificado.Text) <> '' then
  begin
//    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa], 'spTrpIntegraEmissor');
//    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidEmpresa, DBEidCadEmpresa], 'spTrpInsereConfig');
    sql := 'EXEC spTrpInsereConfig ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
end;

procedure TfrmCadConfigTransporte.BtnRelatoriosClick(Sender: TObject);
begin
  inherited;
  AbrePasta.Execute;
  if AbrePasta.Path <> '' then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('caminho_pedido').AsString := AbrePasta.Path;
    if copy(AbrePasta.Path, Length(AbrePasta.Path), 1) <> '\' then
      cdsPadrao.FieldByName('caminho_pedido').AsString := AbrePasta.Path + '\';
  end;
end;

procedure TfrmCadConfigTransporte.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State = dsInsert then
  begin
    DataSet.FieldByName('tpImp').AsInteger := 1;
    DataSet.FieldByName('tpAmb').AsInteger := 2;
  end;

end;

procedure TfrmCadConfigTransporte.configlookempresaCTe;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookidInscEstadual.AlternateSQL.Clear;
  LookidInscEstadual.AlternateSQL.Add('SELECT idInscEstadual FROM vCadEmpresaFiscalCTe fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

procedure TfrmCadConfigTransporte.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
end;

procedure TfrmCadConfigTransporte.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    actPesquisar.Execute;
  end; // fim do VK_F4
end;

procedure TfrmCadConfigTransporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadConfigTransporte := nil;
end;

procedure TfrmCadConfigTransporte.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave,2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  foco := DBEtpServ;
  tab_chave := 'ConfigTransporte';
  Height := 540;
  Width := 678;
end;

procedure TfrmCadConfigTransporte.FormShow(Sender: TObject);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Append;

  configlookempresaCTe;
  TrataEmpresaCTe;

  DBEidEmpresaExit(DBEidEmpresa);
end;

end.
