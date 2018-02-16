unit uFrmCadComprador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox;

type
  TfrmCadComprador = class(TFrmCadPadraoEmpFiscal)
    sdsDocSerie: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel2: TCLabel;
    DBEstComprador: TCDBEdit;
    CLabel16: TCLabel;
    DBEidUsuario: TCDBEdit;
    Lookusuario: TCLookUp;
    DBCKliberado: TCDBCheckBox;
    CGroupBox3: TCGroupBox;
    CLabel1: TCLabel;
    DBEvlPorCompra: TCDBEdit;
    DBEvlTotalCompra: TCDBEdit;
    CLabel3: TCLabel;
    DBEdiasCompra: TCDBEdit;
    CLabel4: TCLabel;
    cdsUsuario: TClientDataSet;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidUsuario: TSmallintField;
    cdsPadraovlPorCompra: TFMTBCDField;
    cdsPadraovlTotalCompra: TFMTBCDField;
    cdsPadraodiasCompra: TSmallintField;
    cdsPadraoliberado: TStringField;
    cdsPadraostComprador: TStringField;
    cdsPadraodescUsuario: TStringField;
    CGroupBox2: TCGroupBox;
    DBGrid: TCDBGrid;
    cdsPadraoidCadEmpresa: TSmallintField;
    procedure DBEidUsuarioExit(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadComprador: TfrmCadComprador;

implementation

uses uDmPadrao, uFrmCadPadrao, uDmFind;

{$R *.dfm}

procedure TfrmCadComprador.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadComprador.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TfrmCadComprador.DBEidUsuarioExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);end;

procedure TfrmCadComprador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadComprador := nil;
end;

procedure TfrmCadComprador.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidUsuario;
  foco := DBEidUsuario;
  tab_chave := 'Comprador';
  situacao := 'stComprador';
  situacaoA := 'ATIVO';
  situacaoX := 'INATIVO';
  FindPesquisa := dmFind.FindUsuario;
  Grid := true;
end;

procedure TfrmCadComprador.FormShow(Sender: TObject);
begin
  inherited;
  Height := 489;
  Width := 567;
end;

end.
