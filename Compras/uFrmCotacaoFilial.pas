unit uFrmCotacaoFilial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, FMTBcd, StdCtrls, EditAlign, CEdit, CLabel,
  CLookUp, DB, SqlExpr, DBClient, Provider, ActnList, ImgList, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, Mask, DBCtrls,
  CDBEdit;

type
  TFrmCotacaoFilial = class(TFrmPadraoPesquisa)
    CLabel1: TCLabel;
    CLabel3: TCLabel;
    CLabel5: TCLabel;
    lblEmpresa: TCLabel;
    LookdescCadEmpresa: TCLookUp;
    CLabel2: TCLabel;
    DBEidCadEmpresa: TCDBEdit;
    DBEidEmpresa: TCDBEdit;
    btnConfirmar: TCBitBtn;
    DBEdescProduto: TCDBEdit;
    DBEdescMaquina: TCDBEdit;
    DBEqtProduto: TCDBEdit;
    DBEqtde: TCDBEdit;
    DBEsomaqtde: TCDBEdit;
    CLabel4: TCLabel;
    BtnExcluir: TCBitBtn;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraodescCadEmpresa: TStringField;
    cdsPadraodescFantasia: TStringField;
    cdsPadraoidCotacaoProd: TIntegerField;
    cdsPadraoqtProduto: TFloatField;
    cdsPadraoidCotacao: TIntegerField;
    dsCotacaoFilial: TDataSource;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEidCadEmpresaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConfigLookEmpresa;
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsCotacaoFilialStateChange(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmCotacaoFilial: TFrmCotacaoFilial;
implementation

uses uFrmCadCotacao, uDmPadrao, uFuncao, uFrmPrincipal, uFrmCadPadrao,
  uFrmCadRequisicao, uFrmPesEmpFiscal;

{$R *.dfm}
procedure TFrmCotacaoFilial.actFecharExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmCotacaoFilial.btnConfirmarClick(Sender: TObject);
var
  msg : string;
begin
  inherited;
  msg := '';

  if trim(DBEidCAdEmpresa.Text) = '' then
    msg := 'Você deve informar a filial!' + #13; //esse #13 dá um Enter na mensagem pula a linha

  if trim(DBEqtde.Text) = '' then
    msg := msg + 'Você deve informar a quantidade!' + #13; //esse #13 dá um Enter na mensagem pula a linha

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;
  //primeiro salva...
  FrmCadCotacao.cdsCotacaoFilialidCotacaoProd.AsInteger := FrmCadCotacao.cdsCotacaoFechaidCotacaoProd.AsInteger;
  FrmCadCotacao.cdsCotacaoFilial.Post;
  DBEidCadEmpresa.SetFocus;
end;procedure TFrmCotacaoFilial.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if not frmCadCotacao.cdsCotacaoFilial.IsEmpty then
    frmCadCotacao.cdsCotacaoFilial.Delete;
end;

procedure TFrmCotacaoFilial.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                               ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                               ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                               QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
end;

//procedure TFrmCotacaoFilial.btnConfirmarClick(Sender: TObject);

procedure TFrmCotacaoFilial.DBEidCadEmpresaExit(Sender: TObject);
begin
//  inherited;
  funcao.BuscaChaveSec(frmCadCotacao.cdsCotacaoFilial, [DBEidEmpresa, DBEidCadEmpresa]);
end;

procedure TFrmCotacaoFilial.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
    FrmPesEmpFiscal.ShowModal;
    with FrmCadCotacao.cdsCotacaoFilial do
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
  end;
end;

procedure TFrmCotacaoFilial.dsCotacaoFilialStateChange(Sender: TObject);
begin
  inherited;
  btnConfirmar.Enabled := dsCotacaoFilial.DataSet.State in [dsInsert, dsEdit];
  BtnExcluir.Enabled := (dsCotacaoFilial.DataSet.State in [dsBrowse]) and (dsCotacaoFilial.DataSet.RecordCount > 0);
end;

procedure TFrmCotacaoFilial.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  qtSoma, qtProduto : double;
begin
  inherited;
  qtSoma := FrmCadCotacao.cdsCotacaoFilialsomaqtde.Value;
  qtProduto := FrmCadCotacao.cdsCotacaoFechaqtProduto.AsFloat;
  if qtSoma <> qtProduto  then
  begin
    messagedlg('Quantidade diferente da quantidade cotada do produto', mtwarning, [mbok],0);
    Action := canone;
  end
  else
  begin
    frmCadCotacao.cdsCotacaoFilial.Filtered := false;
    Action := caFree;
  end;
end;

procedure TFrmCotacaoFilial.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  inherited;
  Height := 397;
  Width  := 750;
  DBGrid.DataSource := FrmCadCotacao.dsCotacaoFilial;
end;
procedure TFrmCotacaoFilial.FormShow(Sender: TObject);
begin
  inherited;
    with FrmCadCotacao.cdsCotacaoFilial do
  begin
    Filtered := false;
    Filter := 'idCotacaoProd = ' + FrmCadCotacao.cdsCotacaoFechaidCotacaoProd.AsString;
    Filtered := true;
  end;
  DBEidCadEmpresa.SetFocus;
end;

end.
