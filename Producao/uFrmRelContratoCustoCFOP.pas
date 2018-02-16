unit uFrmRelContratoCustoCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoRelEmpresa, CFind, Data.DB,
  frxExportMail, frxExportXLS, frxClass, frxDBSet, frxExportCSV, frxExportPDF,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, Datasnap.DBClient,
  Datasnap.Provider, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, CLookUp, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit,
  Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient, CLabel, CGroupBox;

type
  TFrmRelContratoCustoCFOP = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel1: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEpar: TCDBEdit;
    LookCfop: TCLookUp;
    DBEidCfop: TCDBEdit;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraopar: TStringField;
    cdsPadraoidLivro: TIntegerField;
    cdsPadraomesAno: TStringField;
    cdsPadraonrPagina: TIntegerField;
    cdsPadraoidCfop: TIntegerField;
    frxRel: TfrxReport;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidEmpresaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelContratoCustoCFOP: TFrmRelContratoCustoCFOP;

implementation

{$R *.dfm}

uses uDmPadrao, uFrmPrincipal, uFuncao;

procedure TFrmRelContratoCustoCFOP.actGerarExecute(Sender: TObject);
var
  msg, caminho_rel : string;
begin
//  inherited;
  if Trim(DBEidCfop.Text) = '' then
    msg := 'O Código do CFOP Tem que ser Informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidCfop.SetFocus;
    exit;
  end;

  //Executa a Procedure de Cabeçalho
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := 'EXEC spRelContratoCustoCFOP ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                           funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                           funcao.RetornaValorEField(DBEidCfop, 3) + ', ' + funcao.RetornaValorEField(DBEdtInicial, 3) +
                           ', ' + funcao.RetornaValorEField(DBEdtFinal, 3);
  cdsRelatorio.Active := true;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;

  frxRel.LoadFromFile(caminho_rel);

//  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).clear;
  //  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).Text := 'RESUMO DE CONTRATO' + #13 + '(VENDA)';

  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Text := LookCfop.Caption;

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtInicial.Text;

  (frxRel.FindComponent('Memo17') as TfrxMemoview).clear;
  (frxRel.FindComponent('Memo17') as TfrxMemoview).Text := DBEdtFinal.Text;

//  (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).clear;
//  if DBCKAFixar.Checked then
//    (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).Text := 'X';

  frxRel.ShowReport;
end;

procedure TFrmRelContratoCustoCFOP.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmRelContratoCustoCFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoCustoCFOP := nil;
end;

procedure TFrmRelContratoCustoCFOP.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoCustoCFOP.fr3';
  par := 0;
  foco := DBEdtInicial;
end;

procedure TFrmRelContratoCustoCFOP.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  Height := 200;
  Width := 640;
end;

end.
