unit uFrmBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, Buttons, FMTBcd, DB,
  SqlExpr, Grids, ComCtrls, DBXCommon,
  CBitBtn, EditAlign, CEdit, cxShellBrowserDialog, AbBase, AbBrowse,
  AbZBrows, AbZipper, cxClasses;

type
  TfrmBackup = class(TForm)
    ImgFaixa: TImage;
    Bevel3: TBevel;
    Bevel1: TBevel;
    BtnBackup: TBitBtn;
    BtnSair: TBitBtn;
    Label1: TLabel;
    lblNome: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    EDCaminho: TCEdit;
    BtnCaminho: TCBitBtn;
    AbrePasta: TcxShellBrowserDialog;
    Bevel2: TBevel;
    lbl1: TLabel;
    Label5: TLabel;
    btnEnviarEmail: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    AbZipper1: TAbZipper;
    procedure BtnCaminhoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnBackupClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    atualiza, arquivo : TStrings;
    nome, anexo, caminho, arqDest, arqZip, Empresa : string;
  end;

var
  frmBackup: TfrmBackup;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TfrmBackup.FormCreate(Sender: TObject);
begin
  Empresa := frmPrincipal.ExecutaSQLRet([], '', 'SELECT descAbreviada FROM vCadEmpresaContabil WHERE idEmpresa = ' + frmPrincipal.idEmpresa).FieldByName('descAbreviada').AsString;
  BtnBackup.Enabled := false;
  nome := 'DBNilus-' + formatdatetime('dd', date) + '-' + formatdatetime('mm', date) + '-' + formatdatetime('yyyy', date) + '.bak';
  anexo := Empresa + '-' + formatdatetime('dd', date) + '-' + formatdatetime('mm', date) + '-' + formatdatetime('yyyy', date);
  lblNome.Caption := nome;
end;

procedure TfrmBackup.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmBackup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmBackup.BtnCaminhoClick(Sender: TObject);
begin
  AbrePasta.Execute;
  if AbrePasta.Path <> '' then
  begin
    EDCaminho.Text := AbrePasta.Path;
    BtnBackup.Enabled := true;
  end
  else
  begin
    EDCaminho.Text := '';
    BtnBackup.Enabled := false;
  end;
end;

procedure TfrmBackup.btnEnviarEmailClick(Sender: TObject);
var
  assunto: string;
  msg, arquivo  : TStrings;
  erro : byte;
begin
  erro := 0;
  if trim(EDCaminho.Text) <> '' then
  begin
    frmPrincipal.AbreStatus('Compactando e enviando arquivo para o email!');
    arqDest := caminho + nome;
    //Copia o arquivo para a pasta local
    CopyFile(pChar(EDCaminho.Text), pChar(arqDest), True);
    //Compacta o Arquivo
    with ABZipper1 do
    begin
      arqZip := anexo + '.zip';
      FileName := arqZip;

      // Create a new archive file
      OpenArchive(arqZip);
      // Set path to folder with some text files to BaseDir
      BaseDirectory := ExtractFileDir(arqDest);
      // Add all files and directories from 'C:\SOURCE_FOLDER' to the archive
      AddFiles(ExtractFileName(arqDest), 0);
      // Close the archive
      CloseArchive;
    end;
    //Apaga o arquivo que foi copiado para q só fique o zip
    DeleteFile(arqDest);
    arquivo := TStringList.Create;
    arquivo.Clear;
    arquivo.Add(arqZip);
    assunto := 'Arquivo de Backup ';
    msg := TStringList.Create;
    msg.Clear;
    msg.Add('Segue em Anexo Backup da Base de dados ');
    msg.Add('');
    msg.Add('');
    msg.Add('**** ATENÇÃO:  NÃO RESPONDA ESSE EMAIL - ALTERAÇÕES SOMENTE PELO PROGRAMA  ****');
    try
      funcao.EnviarEmail('smtp.gmail.com', '465', 'backupnilus@gmail.com', 'n1lus4gr0', 'backupnilus@gmail.com',
                        'backup@nilus.com.br', assunto, msg, true, nil, arquivo, false, false, 'Sistema de Backup Nilus');
    except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], 0);
      erro := 1;
    end;
    end;
    if erro <= 0 then
    begin
      messagedlg('Backup Realizado Com Sucesso!', mtinformation, [mbok], 0);
    end
    else
    begin
      messagedlg('Processo finalizado com erros! Abortado!', mterror,  [mbok], 0);
    end;
    frmPrincipal.FechaStatus;
  end;
end;

procedure TfrmBackup.BtnBackupClick(Sender: TObject);
var
//  t : TDBXTransaction;
  sql : string;
  erro : byte;
begin
  //  t.IsolationLevel := xilREADCOMMITTED;
  caminho := EDCaminho.Text + '\';
  if FileExists(caminho+nome) then
    if messagedlg('Arquivo de backup já existente deseja sobrepor?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      DeleteFile(caminho+nome)
    else
      exit;
  erro := 0;

//  dmPadrao.dbConexao.BeginTransaction(TDBXIsolations.ReadCommitted);
  screen.Cursor := crSqlWait;
  sql := 'BACKUP DATABASE ' + dmPadrao.dbConexao.Params.Values['DataBase'] + ' TO DISK= ' + quotedstr(caminho + nome);
  try
    dmPadrao.dbConexao.ExecuteDirect(sql);
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], 0);
      erro := 1;
    end;
  end;
  if erro <= 0 then
  begin
//    dmPadrao.dbConexao.CommitFreeAndNil(t);
    btnEnviarEmail.Enabled := True;
    messagedlg('Processo finalizado sem erros!', mtinformation, [mbok], 0);
  end
  else
  begin
    messagedlg('Processo finalizado com erros! Abortado!', mterror,  [mbok], 0);
//    dmPadrao.dbConexao.RollbackFreeAndNil(t);
  end;
  screen.Cursor := crDefault;
end;

end.

