unit uFrmCadConfigEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, CFind, DB, SqlExpr, Provider,
  DBClient, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl,
  CDBCheckBox, System.Actions, uFrmCadPadraoEmpCont, System.ImageList;

type
  TFrmCadConfigEstoque = class(TFrmCadPadraoEmpCont)
    DBCKusaEstoqueFilial: TCDBCheckBox;
    DBEfilialPadrao: TCDBEdit;
    CLabel1: TCLabel;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraousaEstoqueFilial: TStringField;
    cdsPadraofilialPadrao: TIntegerField;
    DBCKusaEstoqueSafra: TCDBCheckBox;
    cdsPadraousaEstoqueSafra: TStringField;
    DBCKusaFilialAplicacao: TCDBCheckBox;
    cdsPadraousaFilialAplicacao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadConfigEstoque: TFrmCadConfigEstoque;

implementation

uses uFrmPrincipal;

{$R *.dfm}

procedure TFrmCadConfigEstoque.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TFrmCadConfigEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadConfigEstoque := nil;
end;

procedure TFrmCadConfigEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidEmpresa;
  tab_chave := 'cadConfigEstoque';
end;

procedure TFrmCadConfigEstoque.FormShow(Sender: TObject);
begin
  //Ajuste para questão da segurança
  action := 'actCadConfigEst';
  inherited;
  cdsPadrao.Active := false;
  cdsPadrao.CommandText := 'SELECT * FROM cadConfigEstoque WHERE idEmpresa = ' + frmPrincipal.idEmpresa;
  cdsPadrao.Active := True;
end;

end.
