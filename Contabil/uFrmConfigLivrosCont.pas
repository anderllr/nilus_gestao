unit uFrmConfigLivrosCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, FMTBcd, DB, SqlExpr, Provider, DBClient, ActnList,
  ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls,
  CPageControl, CGroupBox, CListBox, Mask, DBCtrls, CDBEdit, CLabel,
  uFrmCadPadrao, CLookUp, Grids, DBGrids, CDBGrid, CFind, CDBRadioGroup,
  System.Actions;

type
  TFrmCadConfigLivrosCont = class(TFrmPadrao)
    CGroupBox2: TCGroupBox;
    BtnDown: TCBitBtn;
    BtnUp: TCBitBtn;
    LstAgrupado: TCListBox;
    CLabel3: TCLabel;
    ImgBotoes: TImageList;
    cdsPadrao: TClientDataSet;
    dsPadrao: TDataSource;
    dspPadrao: TDataSetProvider;
    CGroupBox19: TCGroupBox;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEmEsquerda: TCDBEdit;
    DBEmDireita: TCDBEdit;
    DBEmTopo: TCDBEdit;
    DBEmRodape: TCDBEdit;
    BtnCancelarConfig: TCBitBtn;
    BtnSalvarConfig: TCBitBtn;
    CGroupBox1: TCGroupBox;
    LstIndividual: TCListBox;
    cdsPadraoidLivro: TIntegerField;
    cdsPadraodescLivro: TStringField;
    cdsPadraoordem: TIntegerField;
    cdsPadraomEsquerda: TFMTBCDField;
    cdsPadraomDireita: TFMTBCDField;
    cdsPadraomTopo: TFMTBCDField;
    cdsPadraomRodape: TFMTBCDField;
    TabPaginacao: TTabSheet;
    CGroupBox7: TCGroupBox;
    CLabel50: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    ImageIcones: TImageList;
    CGroupBox3: TCGroupBox;
    DBGrid: TCDBGrid;
    DBEano: TCDBEdit;
    CLabel6: TCLabel;
    BtnAbrir: TCBitBtn;
    dsConsulta: TDataSource;
    cdsConsulta: TClientDataSet;
    dspConsulta: TDataSetProvider;
    sdsConsulta: TSQLDataSet;
    cdsConsultadescLivro: TStringField;
    cdsConsultaidLivro: TIntegerField;
    cdsConsultaordem: TIntegerField;
    cdsConsultaidEmpresa: TIntegerField;
    cdsConsultaano: TSmallintField;
    cdsConsultapagInicial: TSmallintField;
    cdsConsultapagFinal: TSmallintField;
    FindEmpresa: TCFind;
    cdsLookup: TClientDataSet;
    dspLookup: TDataSetProvider;
    cdsTmp: TClientDataSet;
    cdsTmpidEmpresa: TIntegerField;
    cdsTmpano: TSmallintField;
    dsTmp: TDataSource;
    DBRGTipo: TCDBRadioGroup;
    cdsTmptipo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LstIndividualClick(Sender: TObject);
    procedure LstAgrupadoClick(Sender: TObject);
    procedure BtnDownClick(Sender: TObject);
    procedure BtnUpClick(Sender: TObject);
    procedure LimpaSelecao;
    procedure BtnSalvarConfigClick(Sender: TObject);
    procedure MontaOrdem(tipo: Byte);
    procedure BtnCancelarConfigClick(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure BtnAbrirClick(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridColEnter(Sender: TObject);
    procedure cdsTmpAfterInsert(DataSet: TDataSet);
    procedure DBEanoExit(Sender: TObject);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
  public
    { Public declarations }
  end;

var
  FrmCadConfigLivrosCont: TFrmCadConfigLivrosCont;

implementation

uses uDmPadrao, uDmFind, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmCadConfigLivrosCont.BtnAbrirClick(Sender: TObject);
var
  sql, tipo : string;
begin
  inherited;
  if (Trim(DBEano.Text) <> '') and (Trim(DBEidEmpresa.Text) <> '') then
  Begin
    if DBRGTipo.ItemIndex = 0 then
      tipo := '1'
    else
      if DBRGTipo.ItemIndex = 1 then
        tipo := '2';

    sql := 'SELECT L.descLivro, L.idLivro, L.ordem, P.idEmpresa, P.ano, P.pagInicial, ' +
           ' P.pagFinal FROM contPagina P INNER JOIN ContLivro L ON P.idLivro = L.idLivro ' +
           ' WHERE P.idEmpresa = ' + cdsTmpidEmpresa.AsString +
           ' AND P.ano = ' + cdsTmpano.AsString +
           ' AND P.tipo = ' + tipo +
           ' ORDER BY L.ordem';
    cdsConsulta.Active := False;
    cdsConsulta.CommandText := sql;
    cdsConsulta.Active := True;
  End
  else
  Begin
    MessageDlg('Empresa e Ano devem ser Informados!', mtWarning, [mbOK], 0);
    DBEidEmpresa.SetFocus;
    Exit;
  End;
end;

procedure TFrmCadConfigLivrosCont.BtnCancelarConfigClick(Sender: TObject);
begin
  inherited;
  cdsPadrao.Cancel;
end;

procedure TFrmCadConfigLivrosCont.BtnDownClick(Sender: TObject);
var
  vlAnterior, vlLocal : string;
begin
  inherited;
  vlLocal := LstAgrupado.Items.Strings[LstAgrupado.ItemIndex+1];
  vlAnterior := LstAgrupado.Items.Strings[LstAgrupado.ItemIndex];
  LstAgrupado.Items.Strings[LstAgrupado.ItemIndex] := vlLocal;
  LstAgrupado.Items.Strings[LstAgrupado.ItemIndex+1] := vlAnterior;
  LstAgrupado.ItemIndex := LstAgrupado.ItemIndex + 1;
  LstAgrupadoClick(LstAgrupado);
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadConfigLivrosCont.BtnUpClick(Sender: TObject);
var
  vlAnterior, vlLocal : string;
begin
  inherited;
  vlLocal := LstAgrupado.Items.Strings[LstAgrupado.ItemIndex];
  vlAnterior := LstAgrupado.Items.Strings[LstAgrupado.ItemIndex-1];
  LstAgrupado.Items.Strings[LstAgrupado.ItemIndex-1] := vlLocal;
  LstAgrupado.Items.Strings[LstAgrupado.ItemIndex] := vlAnterior;
  LstAgrupado.ItemIndex := LstAgrupado.ItemIndex - 1;
  LstAgrupadoClick(LstAgrupado);
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadConfigLivrosCont.cdsTmpAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsTmptipo.AsString := 'Díario';
end;

procedure TFrmCadConfigLivrosCont.DBEanoExit(Sender: TObject);
begin
  inherited;
//  if (Trim(DBEano.Text) <> '') and (Trim(DBEidEmpresa.Text) <> '') then
//    BtnAbrir.Enabled := True;
end;

procedure TFrmCadConfigLivrosCont.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid.SelectedIndex in [5, 6]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmCadConfigLivrosCont.DBGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  inherited;
end;


procedure TFrmCadConfigLivrosCont.DBGridKeyPress(Sender: TObject;
  var Key: Char);
  var
  sql : string;
begin
  inherited;
  if key = #13 then
  begin
    if cdsConsulta.State in [dsInsert, dsEdit] then
    begin
      cdsConsulta.Post;
      sql := 'UPDATE ContPagina SET pagInicial = ' + cdsConsultapagInicial.AsString + ', ' +
             'pagFinal = ' + cdsConsultapagFinal.AsString +
             ' WHERE idEmpresa = ' + cdsConsultaidEmpresa.AsString +
             ' AND idlivro = ' + cdsConsultaidLivro.AsString +
             ' AND ano = ' + cdsConsultaano.AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
  end;
end;

procedure TFrmCadConfigLivrosCont.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsEdit, dsInsert] then
  begin
    BtnSalvarConfig.Enabled := True;
    BtnCancelarConfig.Enabled := True;
  end
  else
  begin
    BtnSalvarConfig.Enabled := False;
    BtnCancelarConfig.Enabled := False;
  end;
end;

procedure TFrmCadConfigLivrosCont.BtnSalvarConfigClick(Sender: TObject);
var
  sql : String;
  id : Integer;
begin
  inherited;
  if LstIndividual.SelCount > 0 then
    sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(LstIndividual.Items.Strings[LstIndividual.ItemIndex])
  else
    sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(LstAgrupado.Items.Strings[LstAgrupado.ItemIndex]);
  with FrmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      if not (cdsPadrao.State = dsEdit) then
        cdsPadrao.Edit;
      if LstIndividual.SelCount > 0 then
        cdsPadraoordem.AsInteger := LstIndividual.ItemIndex+1
      else
        cdsPadraoordem.AsInteger := LstAgrupado.ItemIndex+1;
      cdsPadraomEsquerda.AsFloat := cdsPadraomEsquerda.AsFloat;
      cdsPadraomDireita.AsFloat := cdsPadraomDireita.AsFloat;
      cdsPadraomTopo.AsFloat := cdsPadraomTopo.AsFloat;
      cdsPadraomRodape.AsFloat := cdsPadraomRodape.AsFloat;
      cdsPadrao.Post;
      cdsPadrao.ApplyUpdates(0);
      MontaOrdem(1);
    end
    else
    begin
      sql := 'SELECT MAX(idLivro) id FROM ContLivro';
      id := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('id').AsInteger + 1;
      cdsPadraoidLivro.AsInteger := id;
      if LstIndividual.SelCount > 0 then
      begin
        cdsPadraodescLivro.AsString := LstIndividual.Items.Strings[LstIndividual.ItemIndex];
        cdsPadraoordem.AsInteger := LstIndividual.ItemIndex+1;
      end
      else
      begin
        cdsPadraodescLivro.AsString := LstAgrupado.Items.Strings[LstAgrupado.ItemIndex];
        cdsPadraoordem.AsInteger := LstAgrupado.ItemIndex+1;
      end;
      cdsPadraomEsquerda.AsFloat := cdsPadraomEsquerda.AsFloat;
      cdsPadraomDireita.AsFloat := cdsPadraomDireita.AsFloat;
      cdsPadraomTopo.AsFloat := cdsPadraomTopo.AsFloat;
      cdsPadraomRodape.AsFloat := cdsPadraomRodape.AsFloat;
      cdsPadrao.Post;
      cdsPadrao.ApplyUpdates(0);
    end;
  end;
end;

procedure TFrmCadConfigLivrosCont.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadConfigLivrosCont := nil;
end;

procedure TFrmCadConfigLivrosCont.FormCreate(Sender: TObject);
begin
  inherited;
  cdsPadrao.Active := False;
  cdsPadrao.CommandText := 'SELECT * FROM ContLivro WHERE 1=2';
  cdsPadrao.Active  := True;
  cdsPadrao.Close;
  MontaOrdem(0);
  Height := 334;
  Width := 577;
  BtnSalvarConfig.Enabled := False;
  BtnCancelarConfig.Enabled := False;
  cdsConsulta.Active := False;
  cdsConsulta.CommandText := 'SELECT L.descLivro, L.idLivro, L.ordem, P.idEmpresa, P.ano, P.pagInicial, P.pagFinal FROM contPagina P INNER JOIN ContLivro L ON P.idLivro = L.idLivro WHERE 1=2';
  cdsConsulta.Active := True;
  cdsTmp.CreateDataSet;
  BtnUp.Enabled := false;
  BtnDown.Enabled := false;
end;

procedure TFrmCadConfigLivrosCont.LimpaSelecao;
var
  i, id : Integer;
begin
  id := 0;
  for I := 0 to 6 do
  begin
    LstAgrupado.Selected[id] := False;
    id := id + 1;
  end;
end;

procedure TFrmCadConfigLivrosCont.LstAgrupadoClick(Sender: TObject);
var
   sql : string;
begin
  inherited;
  if LstIndividual.SelCount > 0 then
  begin
    LstIndividual.Selected[0] := False;
  end;

  if LstAgrupado.ItemIndex = 0 then
  begin
    BtnUp.Enabled := false;
    BtnDown.Enabled := False;
  end
  else
    if LstAgrupado.ItemIndex = 6 then
    begin
      BtnUp.Enabled := false;
      BtnDown.Enabled := False;
    end
    else
      if LstAgrupado.ItemIndex = 1 then
      begin
        BtnUp.Enabled := false;
        BtnDown.Enabled := True;
      end
      else
        if LstAgrupado.ItemIndex = 5 then
        begin
          BtnUp.Enabled := True;
          BtnDown.Enabled := False;
        end
        else
          if LstAgrupado.ItemIndex = (LstAgrupado.Items.Count -1) then
          begin
            BtnUp.Enabled := true;
            BtnDown.Enabled := false;
          end
          else
            begin
              BtnUp.Enabled := true;
              BtnDown.Enabled := true;
            end;
  sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(LstAgrupado.Items.Strings[LstAgrupado.ItemIndex]);
  cdsPadrao.Active := False;
  cdsPadrao.CommandText := sql;
  cdsPadrao.Active := True;
end;

procedure TFrmCadConfigLivrosCont.LstIndividualClick(Sender: TObject);
var
  sql : String;
begin
  inherited;
  LimpaSelecao;
  sql := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(LstIndividual.Items.Strings[LstIndividual.ItemIndex]);
  cdsPadrao.Active := False;
  cdsPadrao.CommandText := sql;
  cdsPadrao.Active := True;
end;

procedure TFrmCadConfigLivrosCont.MontaOrdem(tipo: Byte);
var
  sql, teste : String;
  id, i : integer;
begin
  id := 0;
  if tipo = 0 then
  begin
    sql := 'SELECT * FROM ContLivro WHERE descLivro <> ' + QuotedStr('Razão Analítico') + ' ORDER BY ordem';
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        LstAgrupado.Items.Clear;
        First;
        while not Eof do
        begin
          LstAgrupado.Items.Add(FieldByName('descLivro').AsString);
          Next;
        end;
      end;
    end;
  end
  else
    if tipo = 1 then
    begin
      with cdsPadrao do
      begin
        for I := 0 to 6 do
        begin
          LstAgrupado.Selected[id] := True;
          Active := False;
          CommandText := 'SELECT * FROM ContLivro WHERE descLivro = ' + QuotedStr(LstAgrupado.Items.Strings[LstAgrupado.ItemIndex]);
          Active  := True;
          if not (State = dsEdit) then
            Edit;
          FieldByName('ordem').AsInteger := LstAgrupado.ItemIndex+1;
          teste := FieldByName('descLivro').AsString;
          Post;
          ApplyUpdates(0);
          LstAgrupado.Selected[id] := False;
          id := id + 1;
        end;
      end;
    end;
end;

procedure TFrmCadConfigLivrosCont.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.TabIndex = 0 then
  begin
    Height := 334;
    Width := 577;
  end
  else
  if PagAbas.TabIndex = 1 then
  begin
    Height := 405;
    Width := 531;
  end;
end;

end.
