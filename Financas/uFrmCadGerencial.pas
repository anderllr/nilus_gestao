unit uFrmCadGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient, ComCtrls, CPageControl, FMTBcd, SqlExpr, CDBMemo,
  CGroupBox, CDBComboBox, Grids, DBGrids, CDBGrid, System.Actions;

type
  TFrmCadGerencial = class(TFrmCadPadraoEmpCont)
    sdsGerencial: TSQLDataSet;
    CGroupBox7: TCGroupBox;
    CLabel11: TCLabel;
    CLabel12: TCLabel;
    CLabel13: TCLabel;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel24: TCLabel;
    DBEidGerencial: TCDBEdit;
    DBEclassificacao: TCDBEdit;
    DBEnrGrau: TCDBEdit;
    DBEstGerencial: TCDBEdit;
    DBEdescGerencial: TCDBEdit;
    DBCBtpGerencial: TCDBComboBox;
    CGroupBox8: TCGroupBox;
    CDBGrid2: TCDBGrid;
    BtnExcluir2: TCBitBtn;
    actExcluir2: TAction;
    FindGerencial: TCFind;
    LookGerencialR: TCLookUp;
    DBEidGrupoGerencial: TCDBEdit;
    CLabel1: TCLabel;
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actExcluir2Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEidGerencialExit(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEclassificacaoExit(Sender: TObject);
    procedure DBEclassificacaoEnter(Sender: TObject);
  private
    { Private declarations }
    mascara : string;
  public
    { Public declarations }
  end;

var
  FrmCadGerencial: TFrmCadGerencial;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao, uDmFind;

{$R *.dfm}

procedure TFrmCadGerencial.actExcluir2Execute(Sender: TObject);
begin
  inherited;
  if messagedlg('Deseja realmente excluir?', mtwarning, [mbyes, mbno], 0) = mryes then
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidGerencial], 'spExcluiGerencial') then
    begin
      cdsPadrao.Active := false;
      cdsPadrao.Active := true;
    end;
end;

procedure TFrmCadGerencial.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TFrmCadGerencial.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.FieldByName('nrGrau').AsInteger > 1 then
    funcao.SomenteLeitura([DBCBtpGerencial], true)
  else
  begin
    if trim(DBEclassificacao.Text) <> '' then
    begin
      cdsLookUp.Active := false;
      cdsLookUp.CommandText := 'SELECT COUNT(*) qt FROM Gerencial WHERE idGerencial = ' + DBEidGerencial.Text +
                               ' AND SUBSTRING(classificacao, 1, ' + IntToStr(Length(DBEclassificacao.Text)) + ')' +
                               ' = ' + trim(DBEclassificacao.Text);
      cdsLookUp.Active := true;
      funcao.SomenteLeitura([DBCBtpGerencial], cdsLookUp.FieldByName('qt').AsInteger > 1);
    end
    else
      funcao.SomenteLeitura([DBCBtpGerencial], false);
  end;
end;

procedure TFrmCadGerencial.DBEclassificacaoEnter(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    if trim(cdsPadrao.FieldByName('classificacao').AsString) <> '' then
      cdsPadrao.FieldByName('classificacao').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacao').AsString);
end;

procedure TFrmCadGerencial.DBEclassificacaoExit(Sender: TObject);
var
  idGerencial : string;
begin
  inherited;
  idGerencial := '';
  //inclui a máscara
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('classificacao').AsString := funcao.Mascara(cdsPadrao.FieldByName('classificacao').AsString, 99, mascara);

  if (cdsPadrao.State in [dsInsert]) then
    idGerencial := DBEidGerencial.Text;
  //se não existir a classificação cadastrada o sistema irá efetuar a validação
  if not BuscaChaveSec(cdsPadrao, [DBEclassificacao]) then
    if trim(DBEclassificacao.Text) <> '' then
    begin
      with frmPrincipal.ExecutaSqlRet([DBEidEmpresa, DBEclassificacao], 'spValidaNivelCG', '') do
      begin
        if FieldByName('msg').AsString <> 'OK' then
        begin
          messagedlg(FieldByName('msg').AsString, mtwarning, [mbok], 0);
          DBEclassificacao.SetFocus;
        end
        else
          if cdsPadrao.State in [dsEdit, dsInsert] then
          begin
            cdsPadrao.FieldByName('nrGrau').Value := FieldByName('nrGrau').Value;
            if trim(FieldByName('tpGerencial').AsString) <> '' then
            begin
              cdsPadrao.FieldByName('tpGerencial').AsString := FieldByName('tpGerencial').AsString;
              funcao.SomenteLeitura([DBCBtpGerencial], true);
            end
            else
            begin
              funcao.SomenteLeitura([DBCBtpGerencial], false);
            end;
          end;
      end; //fim do with ExecutaSqlRet([DBEidEmpresa, DBEidGerencial, DBEclassificacao], 'spValidaNivelCG', '') do
    end; // fim do if trim(DBEclassificacao.Text) <> '' then
    if not DBCBtpGerencial.Enabled then
      DBEdescGerencial.SetFocus;

  if (cdsPadrao.State in [dsInsert]) and (trim(idGerencial) <> '') then
    cdsPadrao.FieldByName('idGerencial').AsString := idGerencial;

end;

procedure TFrmCadGerencial.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
  if trim(mascara) = '' then
  begin
    messagedlg('Empresa sem máscara cadastrada! Entre em configuração e informe a máscara!', mtwarning, [mbok], 0);
    close;
    exit;
  end;
end;

procedure TFrmCadGerencial.DBEidGerencialExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadGerencial.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  actExcluir2.Enabled := actExcluir.Enabled;
end;

procedure TFrmCadGerencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadGerencial := nil;
end;

procedure TFrmCadGerencial.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(tabelas, 1);
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidGerencial;
  foco := DBEidGerencial;
  tab_chave := 'Gerencial';
  situacao := 'stGerencial';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := true;
  FindPesquisa := FindGerencial;
end;

procedure TFrmCadGerencial.FormShow(Sender: TObject);
begin
  inherited;
  mascara := frmPrincipal.ExecutaSQLRet([DBEidEmpresa], '', 'ConfigFinanc').FieldByName('mascaraGer').AsString;
  if trim(mascara) = '' then
  begin
    messagedlg('Empresa sem máscara cadastrada! Entre em configuração e informe a máscara!', mtwarning, [mbok], 0);
    close;
    exit;
  end;
  Width := 620;
  Height := 505;

  BtnExcluir2.Visible := excluir;
end;

end.

