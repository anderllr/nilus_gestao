unit uCadResultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, FMTBcd, DB, SqlExpr, CFind, Provider, DBClient,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl, Grids, DBGrids,
  CDBGrid, CDBMemo, CGroupBox, CDBCheckBox, System.Actions;

type
  TFrmCadResultado = class(TFrmCadPadraoEmpCont)
    sdsResultado: TSQLDataSet;
    FindBem: TCFind;
    CGroupBox7: TCGroupBox;
    CLabel11: TCLabel;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    DBEidResultado: TCDBEdit;
    DBEstResultado: TCDBEdit;
    DBEdescResultado: TCDBEdit;
    DBCKTalhao: TCDBCheckBox;
    DBEidBem: TCDBEdit;
    LookBem: TCLookUp;
    CGroupBox8: TCGroupBox;
    CDBGrid2: TCDBGrid;
    FindResultado: TCFind;
    actExcluir2: TAction;
    BtnExcluir2: TCBitBtn;
    DBChkconsolidaEmp: TCDBCheckBox;
    cdsTemp: TClientDataSet;
    dsTemp: TDataSource;
    dspTemp: TDataSetProvider;
    sdsTemp: TSQLDataSet;
    cdsTempidEmpresa: TIntegerField;
    cdsTempidResultado: TIntegerField;
    cdsTempdescResultado: TStringField;
    cdsTempTalhao: TStringField;
    cdsTempidBem: TIntegerField;
    cdsTempstResultado: TStringField;
    cdsTempconsolidaEmp: TStringField;
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actExcluir2Execute(Sender: TObject);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEidResultadoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCKTalhaoExit(Sender: TObject);
    procedure cdsResultadoItemAfterScroll(DataSet: TDataSet);
    procedure actSalvarExecute(Sender: TObject);
    procedure HabilitaTalhao;
  private
    { Private declarations }   
  public
    { Public declarations }
  end;

var
  FrmCadResultado: TFrmCadResultado;

implementation

uses uFuncao, uFrmCadPadrao, uFrmPrincipal, uDmPadrao;

{$R *.dfm}

procedure TFrmCadResultado.actExcluir2Execute(Sender: TObject);
begin
  inherited;
  if messagedlg('Deseja realmente excluir?', mtwarning, [mbyes, mbno], 0) = mryes then
    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidResultado], 'spExcluiResultado') then
    begin
      cdsPadrao.Active := false;
      cdsPadrao.Active := true;
    end;
end;

procedure TFrmCadResultado.actSalvarExecute(Sender: TObject);
var
  //vlGerado : integer;
  sql : string;
begin
  GravaChave(1, '', nil);
  if DBChkconsolidaEmp.Checked then
  begin
    sql := 'SELECT * FROM cadGeral WHERE Empresa = ' + QuotedStr('S') +
           ' AND idCadGeral <> ' + DBEidEmpresa.Text;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      First;
      while not Eof do
      begin
        cdsTemp.Active := False;
        cdsTemp.CommandText := 'SELECT * FROM Resultado WHERE idResultado = ' + DBEidResultado.Text +
                               ' AND idEmpresa = ' + FieldByName('idCadGeral').AsString;
        cdsTemp.Active := True;
        if cdsTemp.RecordCount > 0  then
          Next
        else
        begin
          cdsTemp.Append;
          cdsTempidEmpresa.AsInteger := FieldByName('idCadGeral').AsInteger;
          cdsTempidResultado.AsInteger := cdsPadrao.FieldByName('idResultado').AsInteger;
          cdsTempdescResultado.AsString := cdsPadrao.FieldByName('descResultado').AsString;
          cdsTempTalhao.AsString := cdsPadrao.FieldByName('Talhao').AsString;
          cdsTempidBem.AsInteger := cdsPadrao.FieldByName('idBem').AsInteger;
          cdsTempstResultado.AsString := cdsPadrao.FieldByName('stResultado').AsString;
          cdsTempconsolidaEmp.AsString := cdsPadrao.FieldByName('consolidaEmp').AsString;
          cdsTemp.Post;
          cdsTemp.ApplyUpdates(0);
          Next;
        end;
      end;
    end;
  end;
  //inicia processo de geração do código com o 2 na frente
{  if (cdsPadrao.State = dsInsert) then
  begin
    vlGerado := cdsPadrao.FieldByName('idResultado').AsInteger -1;
    if vlGerado = 0 then
      vlGerado := 11
    else
    begin
      vlGerado := StrToInt(Copy(IntToStr(vlGerado), 2, length(IntToStr(vlGerado))-1)) + 1;
      vlGerado := StrToInt('1' + IntToStr(vlGerado));
    end;
    cdsPadrao.FieldByName('idResultado').AsInteger := vlGerado;
      //processo para colocar o 1 na frente do código
  end; //if (cdsPadrao.State = dsInsert) then}
  inherited;
end;

procedure TFrmCadResultado.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsPadrao.State = dsInsert then
    cdsPadrao.FieldByName('Talhao').AsString := 'N';
end;

procedure TFrmCadResultado.cdsResultadoItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  HabilitaTalhao;
end;

procedure TFrmCadResultado.DBCKTalhaoExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEidBem], cdsPadrao.FieldByName('Talhao').AsString = 'N');
  if not DBEidBem.ReadOnly then
    DBEidBem.SetFocus;
end;

procedure TFrmCadResultado.DBEidResultadoExit(Sender: TObject);
begin
  inherited;
{  if (not BuscaChaveGrid(cdsPadrao, chave)) and (trim(DBEidResultado.Text) <> '') then
  begin
    messagedlg('Código informado não existe!', mtwarning, [mbok], 0);
    DBEidResultado.SetFocus;
    exit;
  end; }
  BuscaChaveGrid(cdsPadrao, chave);
  HabilitaTalhao;
end;

procedure TFrmCadResultado.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  actExcluir2.Enabled := actExcluir.Enabled;
end;

procedure TFrmCadResultado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadResultado := nil;
end;

procedure TFrmCadResultado.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidResultado;
  foco := DBEidResultado;
  tab_chave := 'Resultado';
  situacao := 'stResultado';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := true;
  FindPesquisa := FindResultado;
  Height := 520;
  Width := 555;
end;

procedure TFrmCadResultado.FormShow(Sender: TObject);
begin
  inherited;
//  DBEidResultadoExit(DBEidResultado);

  BtnExcluir2.Visible := excluir;
end;

procedure TFrmCadResultado.HabilitaTalhao;
begin
  funcao.SomenteLeitura([DBEidBem], cdsPadrao.FieldByName('Talhao').AsString = 'N');
end;

end.
