unit uCadConfigCTe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CDBMemo, CLookUp, CFind, CDBComboBox, CDBRadioGroup, CPanelGradient,
  CDBCheckBox, uFrmCadPadraoGrid, uFrmCadPadrao, cxShellBrowserDialog;

type
  TfrmCadConfigCTe = class(TFrmCadPadrao)
    sdsDocSerie: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel58: TCLabel;
    DBEcaminho_pedido: TCDBEdit;
    CPanelGradient1: TCPanelGradient;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBEidEmpresa: TCDBEdit;
    lblEmpresa: TCLabel;
    BtnRelatorios: TCBitBtn;
    AbrePasta: TcxShellBrowserDialog;
    DBCKgeraNFRecepcao: TCDBCheckBox;
    procedure PagAbasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure BtnRelatoriosClick(Sender: TObject);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConfigCTe: TfrmCadConfigCTe;

implementation

uses uDmPadrao, uDmFind, uFrmPesEmpContabil, uFrmPrincipal;

{$R *.dfm}

procedure TfrmCadConfigCTe.PagAbasChange(Sender: TObject);
begin
  inherited;
end;

//****************************************************************************************//
procedure TfrmCadConfigCTe.actPesquisarExecute(Sender: TObject);
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

procedure TfrmCadConfigCTe.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TfrmCadConfigCTe.BtnRelatoriosClick(Sender: TObject);
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

procedure TfrmCadConfigCTe.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  BuscaChave(cdsPadrao, chave);
end;

procedure TfrmCadConfigCTe.DBEidEmpresaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    actPesquisar.Execute;
  end; // fim do VK_F4
end;

procedure TfrmCadConfigCTe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadConfigCompras := nil;
end;

procedure TfrmCadConfigCTe.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidEmpresa;
  foco := DBEidEmpresa;
  tab_chave := 'ConfigCompras';
end;

procedure TfrmCadConfigCTe.FormShow(Sender: TObject);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Append;

  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  DBEidEmpresaExit(DBEidEmpresa);
end;

end.
