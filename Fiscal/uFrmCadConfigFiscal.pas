unit uFrmCadConfigFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox, uFrmCadPadraoGrid, uFrmCadPadrao, cxShellBrowserDialog,
  uFrmCadPadraoEmpFiscal, System.Actions, ACBrNFe, cxClasses, ACBrBase, ACBrDFe,
  System.ImageList;

type
  TfrmCadConfigFiscal = class(TFrmCadPadraoEmpFiscal)
    sdsConfigProducao: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    AbrePasta: TcxShellBrowserDialog;
    OpenDialog1: TOpenDialog;
    DBCKusaNFe: TCDBCheckBox;
    TabNFe: TTabSheet;
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
    CGroupBox12: TCGroupBox;
    CLabel53: TCLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    CLabel55: TCLabel;
    DBECAMINHO_LOGOMARCA: TCDBEdit;
    DBECAMINHO_ARQUIVOS: TCDBEdit;
    CGroupBox11: TCGroupBox;
    CLabel50: TCLabel;
    CLabel52: TCLabel;
    sbtnCaminhoCert: TSpeedButton;
    SpeedButton1: TSpeedButton;
    CLabel51: TCLabel;
    DBECAMINHO_CERTIFICADO: TCDBEdit;
    DBESENHA_CERTIFICADO: TCDBEdit;
    DBEserie_certificado: TCDBEdit;
    DBRGtpAmb: TCDBRadioGroup;
    DBRGtpImp: TCDBRadioGroup;
    ACBrNFe1: TACBrNFe;
    CLabel54: TCLabel;
    DBCBUF_WEBSERVICE: TCDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConfigFiscal: TfrmCadConfigFiscal;

implementation

uses uDmPadrao, uDmFind, uFrmPesEmpContabil, uFrmPrincipal;

{$R *.dfm}


//****************************************************************************************//
procedure TfrmCadConfigFiscal.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TfrmCadConfigFiscal.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
    cdsPadrao.FieldByName('usaNFe').AsString := 'N';
end;

procedure TfrmCadConfigFiscal.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidEmpresa.Text) <> '') and (trim(DBEidCadEmpresa.Text) <> '') then
    BuscaChave(cdsPadrao, chave);
end;

procedure TfrmCadConfigFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadConfigFiscal := nil;
end;

procedure TfrmCadConfigFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;

  tab_chave := 'ConfigFiscal';
  Height := 530;
  Width := 678;
end;

procedure TfrmCadConfigFiscal.FormShow(Sender: TObject);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Append;

  DBEidEmpresaExit(DBEidEmpresa);

  DBCKusaNFe.SetFocus;
end;

procedure TfrmCadConfigFiscal.sbtnCaminhoCertClick(Sender: TObject);
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

procedure TfrmCadConfigFiscal.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  {$IFNDEF ACBrNFeOpenSSL}
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;

    cdsPadrao.FieldByName('serie_certificado').AsString := ACBrNFe1.SSL.SelecionarCertificado;
  {$ENDIF}

end;

procedure TfrmCadConfigFiscal.SpeedButton2Click(Sender: TObject);
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

procedure TfrmCadConfigFiscal.SpeedButton3Click(Sender: TObject);
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

end.
