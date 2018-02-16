unit uFrmAlteraPortador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, DBXCommon, uFrmPadraoPesqEmpContabil, System.Actions,
  System.ImageList;

type
  TFrmAlteraPortador = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    FindFornecedor: TCFind;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    CLabel3: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtEmissaoFim: TCDBEdit;
    CPanelGradient1: TCPanelGradient;
    BtnCompensar: TCBitBtn;
    CBitBtn2: TCBitBtn;
    actMudar: TAction;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DBEidUsuario: TCDBEdit;
    cdsPadraoidUsuario: TIntegerField;
    cdsPortador: TClientDataSet;
    dsPortador: TDataSource;
    cdsPortadoridUsuario: TIntegerField;
    LookFornecedor: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLabel9: TCLabel;
    CGroupBox1: TCGroupBox;
    DBCKstEstornado: TCDBCheckBox;
    DBCKstLiquidado: TCDBCheckBox;
    DBCKstAberto: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    Bevel5: TBevel;
    FindConta: TCFind;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    DBEidConta: TCDBEdit;
    CLabel2: TCLabel;
    LookPortador: TCLookUp;
    DBEidPortador: TCDBEdit;
    CLabel8: TCLabel;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraodtEmissaoIni: TDateField;
    cdsPadraodtEmissaoFim: TDateField;
    cdsPortadoridPortador: TIntegerField;
    cdsPortadoridConta: TIntegerField;
    cdsGridsel: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGridnrTitulo: TStringField;
    cdsGriddtEmissao: TDateField;
    cdsGridstTitulo: TStringField;
    cdsGriddescPortador: TStringField;
    Bevel6: TBevel;
    cdsPadraostAtivo: TBooleanField;
    cdsPadraostAberto: TBooleanField;
    cdsPadraostLiquidado: TBooleanField;
    cdsPadraostCancelado: TBooleanField;
    cdsPortadoridFornecedor: TIntegerField;
    cdsGridvlTitulo: TCurrencyField;
    cdsGridobsTitulo: TStringField;
    cdsGrididTituloPag: TIntegerField;
    procedure actMudarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPortadoridPortadorValidate(Sender: TField);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure cdsPadraoidFornecedorValidate(Sender: TField);
    procedure cdsPortadorAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;        
  public
    { Public declarations }
    idEmpresa : integer;
  end;

var
  FrmAlteraPortador: TFrmAlteraPortador;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPagTitulo, uFrmPadraoPesquisa,
  uDmFind;

{$R *.dfm}

procedure TFrmAlteraPortador.actMudarExecute(Sender: TObject);
var
  msg : string;
  sql : string;
begin
  inherited;
  screen.Cursor := crSqlWait;
  msg := '';
  if qtSel <= 0 then
    msg := 'Nenhum registro selecionado!' + #13;
  if trim(DBEidPortador.Text) = '' then
    msg := 'Informe o portador!';
  if (cdsPortadoridPortador.AsInteger = 1) and (trim(DBEidConta.Text) = '') then
    msg := 'Para o portador DEPÓSITO / TRANSFERÊNCIA deve ser informada a conta!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  with cdsGrid do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('sel').AsString = 'S' then
      begin
        sql := 'UPDATE TituloPag SET idPortador = ' + DBEidPortador.Text;
        if trim(DBEidConta.Text) <> '' then
          sql := sql + ', idConta = ' + DBEidConta.Text
        else
          sql := sql + ', idConta = NULL';
        sql := sql + ' WHERE idTituloPag = ' + FieldByName('idTituloPag').AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end; // fim do if FieldByName('sel').AsString = 'S' then
      Next;
    end; //fim do laço para as alterações
  end; // fim do with cdsGrid do
  Screen.Cursor := crDefault;
  cdsGrid.EmptyDataSet;
  cdsPortador.Cancel;
  cdsPortador.Append;
  DBEidFornecedor.SetFocus;
end;

procedure TFrmAlteraPortador.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraostAtivo.Value := true;
  cdsPadraostAberto.Value := true;
  cdsPadraostCancelado.Value := false;
  cdsPadraostLiquidado.Value := false;
end;


procedure TFrmAlteraPortador.cdsPadraoidFornecedorValidate(Sender: TField);
begin
  inherited;
  if not cdsPadraoidFornecedor.IsNull then
    cdsPortadoridFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
end;

procedure TFrmAlteraPortador.cdsPortadorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DBEidFornecedor.Text <> '' then 
    cdsPortadoridFornecedor.AsInteger := cdsPadraoidFornecedor.AsInteger;
end;

procedure TFrmAlteraPortador.cdsPortadoridPortadorValidate(Sender: TField);
begin
  inherited;
  if Sender.Value = 1 then
  begin
    funcao.SomenteLeitura([DBEidConta], false);
    if trim(DBEidFornecedor.Text) <> '' then   
      with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadGeralConta WHERE idCadGeral = ' + DBEidFornecedor.Text + ' AND padrao = ' + QuotedStr('S')) do
      begin
        if not IsEmpty then       
          cdsPortadoridConta.AsInteger := FieldByName('idConta').AsInteger;
      end;
  end
  else
  begin
    cdsPortadoridConta.Clear;
    funcao.SomenteLeitura([DBEidConta], true);
  end;
end;

procedure TFrmAlteraPortador.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  cdsPortador.Cancel;
  cdsPortador.Append;
  if trim(DBEidFornecedor.Text) = '' then
  begin
    messagedlg('O Fornecedor precisa ser informado!', mtwarning, [mbok], 0);
    DBEidConta.SetFocus;
    exit;
  end;
  funcao.SomenteLeitura([DBEidConta], true);  
  cdsGrid.EmptyDataSet;
  sql := 'SELECT * FROM vTituloPortador ';
  sql := sql + ' WHERE idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND idFornecedor = ' + DBEidFornecedor.Text;
  if filial then
    sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(DBEdtEmissaoIni.Text) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.RetornaValorEField(DBEdtEmissaoIni, 3);
  if trim(DBEdtEmissaoFim.Text) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.RetornaValorEField(DBEdtEmissaoFim, 3);
  status := '';
  if DBCKstAtivo.Checked then
    status := QuotedStr('ATIVO');
  if DBCKstAberto.Checked then
    if trim(status) = '' then
      status := QuotedStr('ATIVO')
    else
      status := status + ',' + QuotedStr('ATIVO');
  if DBCKstEstornado.Checked then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');
  if DBCKstLiquidado.Checked then
    if trim(status) = '' then
      status := QuotedStr('LIQUIDADO')
    else
      status := status + ',' + QuotedStr('LIQUIDADO');

  if trim(status) <> ''  then
    sql := sql + ' AND stTituloPag IN (' + status + ')';

  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    First;
    while not Eof do
    begin
      cdsGrid.Append;
      cdsGridsel.AsString := 'N';
      cdsGrididDocSerie.AsString := FieldByName('idDocSerie').AsString;
      cdsGridnrTitulo.AsString := FieldByName('nrTituloPag').AsString;
      cdsGrididTituloPag.AsInteger := FieldByName('idTituloPag').AsInteger;      
      cdsGridobsTitulo.AsString := FieldByName('obsTituloPag').AsString;
      cdsGridvlTitulo.AsFloat := FieldByName('vlTituloPag').AsFloat;
      cdsGriddtEmissao.AsDateTime := FieldByName('dtEmissao').AsDateTime;
      cdsGridstTitulo.AsString := FieldByName('stTituloPag').AsString;
      cdsGriddescPortador.AsString := FieldByName('descPortador').AsString;
      cdsGrid.Post;
      Next;
    end;
  end;

  DBEidPortador.SetFocus;
  qtSel := 0;
  actMudar.Enabled := qtSel > 0;

  inherited;
end;

procedure TFrmAlteraPortador.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
      Edit;
      if FieldByName('sel').AsString = 'S' then
      begin
        qtSel := qtSel - 1;      
        FieldByName('sel').AsString := 'N';
      end
      else
      begin
        qtSel := qtSel + 1;      
        FieldByName('sel').AsString := 'S';
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
  actMudar.Enabled := qtSel > 0;
end;

procedure TFrmAlteraPortador.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmAlteraPortador.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
begin
  inherited;
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
  end;
end;

procedure TFrmAlteraPortador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmAlteraPortador := nil;
end;

procedure TFrmAlteraPortador.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
  Width := 700;
  Height := 480;
  cdsPortador.CreateDataSet;
  cdsPortador.Append;
  cdsGrid.CreateDataSet;
  qtSel := 0;
end;

procedure TFrmAlteraPortador.FormShow(Sender: TObject);
begin
  inherited;
  actMudar.Enabled := qtSel > 0;
  funcao.SomenteLeitura([DBEidConta], true);  
end;

end.
