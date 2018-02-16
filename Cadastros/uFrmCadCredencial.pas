unit uFrmCadCredencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CDBCheckBox,
  CPanelGradient, ExtDlgs, jpeg, Clipbrd;

type
  TFrmCadCredencial = class(TFrmCadPadraoGrid)
    sdsGerencial: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidCredencial: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescCredencial: TCDBEdit;
    FindCredencial: TCFind;
    cdsPadraoidCredencial: TIntegerField;
    cdsPadraodescCredencial: TStringField;
    cdsPadraorg: TStringField;
    CLabel1: TCLabel;
    DBErg: TCDBEdit;
    cdsPadraofoto: TBlobField;
    DBImgFoto: TDBImage;
    BtnCarrega: TCBitBtn;
    actCarregaFoto: TAction;
    AbreFoto: TOpenPictureDialog;
    actImprimir: TAction;
    BtnImprimir: TCBitBtn;
    procedure actImprimirExecute(Sender: TObject);
    procedure actCarregaFotoExecute(Sender: TObject);
    procedure FindCredencialClose(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidCredencialExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCredencial: TFrmCadCredencial;

implementation

uses uDmPadrao, uFrmCadPadrao, uFrmRelCredencial, uFuncao;

{$R *.dfm}

procedure TFrmCadCredencial.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TFrmCadCredencial.actCarregaFotoExecute(Sender: TObject);
var
  ImgJpg : TJPEGImage;
begin
  inherited;
  AbreFoto.Execute;
  ImgJpg := TJPEGImage.Create;
  if trim(AbreFoto.FileName) <> '' then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    ImgJpg.LoadFromFile(AbreFoto.FileName);
    Clipboard.Assign(ImgJpg);
//    DBimgFoto.Picture.Assign(ImgJpg);
    DBimgFoto.PasteFromClipboard;
  end;
  ImgJpg.Free;
end;

procedure TFrmCadCredencial.actImprimirExecute(Sender: TObject);
begin
  inherited;
  funcao.AbreFrm(TfrmRelCredencial, TForm(frmRelCredencial));
end;

procedure TFrmCadCredencial.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadCredencial.DBEidCredencialExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadCredencial.FindCredencialClose(Sender: TObject);
begin
  inherited;
  DBEidCredencialExit(DBEidCredencial);
end;

procedure TFrmCadCredencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadCredencial := nil;
end;

procedure TFrmCadCredencial.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidCredencial;
  foco := DBEidCredencial;
  tab_chave := 'Credencial';
  FindPesquisa := FindCredencial;
end;

end.
