unit uFrmGeraTituloPRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, System.Actions, CPanel, CDBRadioGroup;

type
  TFrmGeraTituloPRec = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    PanFornecedor: TCPanelGradient;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    CLabel18: TCLabel;
    CLabel19: TCLabel;
    CLabel20: TCLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadFornecedor: TCLookUp;
    LookDescAbreviadaFornecedor: TCLookUp;
    LookidCnpjCpfFornecedor: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel11: TCLabel;
    DBEidPrevisaoRecIni: TCDBEdit;
    DBEidPrevisaoRecFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsGriddescAbreviada: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    FindFornecedor: TCFind;
    cdsGridsel: TStringField;
    cdsGridvlParcela: TFMTBCDField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsPadraodtVencimentoIni: TDateTimeField;
    cdsPadraodtVencimentoFim: TDateTimeField;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    cdsGrididParcela: TSmallintField;
    cdsGridfator: TByteField;
    CPanel1: TCPanel;
    CLabel42: TCLabel;
    CLabel51: TCLabel;
    DBEvlSomaTotal: TCDBEdit;
    DBEvlSomaSel: TCDBEdit;
    PanOpcoes: TCPanelGradient;
    cdsGridvlSomaTotal: TAggregateField;
    cdsGridvlSomaSel: TAggregateField;
    DBRGopGeracao: TCDBRadioGroup;
    DBCKbaixaPrevisao: TCDBCheckBox;
    DBEidClienteTit: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    CLabel3: TCLabel;
    DBEidDocSerieTit: TCDBEdit;
    DBEdtBase: TCDBEdit;
    lblDataBase: TCLabel;
    DBEnrTituloRec: TCDBEdit;
    CLabel12: TCLabel;
    CLookUp3: TCLookUp;
    CLabel13: TCLabel;
    CLabel21: TCLabel;
    CLookUp4: TCLookUp;
    BtnGerarTitulo: TCBitBtn;
    dsGeracao: TDataSource;
    cdsGeracao: TClientDataSet;
    cdsGeracaoopGeracao: TStringField;
    cdsGeracaobaixaPrevisao: TStringField;
    cdsGeracaodtBase: TDateTimeField;
    cdsGeracaoidDocSerieTit: TStringField;
    DBEidUsuario: TCDBEdit;
    cdsGeracaoidUsuario: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidPrevisaoRecIni: TIntegerField;
    cdsPadraoidPrevisaoRecFim: TIntegerField;
    cdsGrididCliente: TIntegerField;
    cdsGrididPrevisaoRec: TIntegerField;
    cdsGridnrPrevisaoRec: TStringField;
    cdsGridvlPrevisaoRec: TFMTBCDField;
    cdsGridstPrevisaoRec: TStringField;
    cdsGridstPrevisaoRecParc: TStringField;
    cdsGeracaoidClienteTit: TIntegerField;
    cdsGeracaonrTituloRec: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure cdsGridselGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BtnGerarTituloClick(Sender: TObject);
    procedure DBRGopGeracaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsGeracaoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;
  public
    { Public declarations }
    idEmpresa, idCadEmpresa : integer;
  end;

var
  FrmGeraTituloPRec: TFrmGeraTituloPRec;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uCadTituloRec;

{$R *.dfm}

procedure TFrmGeraTituloPRec.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT CONVERT(CHAR(1), ' + QuotedStr('N') + ') sel, p.idCliente, cad.descAbreviada, p.idPrevisaoRec, ' +
         ' p.nrPrevisaoRec, p.idDocSerie, p.dtEmissao, p.vlPrevisaoRec, p.stPrevisaoRec, pp.vlParcela, pp.dtVencimento, ' +
         ' pp.stPrevisaoRecParc, pp.idParcela, CONVERT(TINYINT, 0) fator FROM PrevisaoRec p INNER JOIN vCadClienteContabil cad ON p.idCliente = cad.idCliente ' +
         ' INNER JOIN PrevisaoRecParc pp ON p.idPrevisaoRec = pp.idPrevisaoRec WHERE 1=1';
  sql := sql + ' AND p.idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND p.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
  begin
    sql := sql + ' AND p.idCliente = ' + cdsPadrao.FieldByName('idCliente').AsString;
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsGeracaoidClienteTit.AsInteger := cdsPadraoidCliente.AsInteger;
  end;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND p.dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND p.dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoIni').AsString) <> '' then
    sql := sql + ' AND pp.dtVencimento >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoFim').AsString) <> '' then
    sql := sql + ' AND pp.dtVencimento <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoFim').AsDateTime);
  if trim(cdsPadrao.FieldByName('idPrevisaoRecIni').AsString) <> '' then
    sql := sql + ' AND p.nrPrevisaoRec >= ' + cdsPadrao.FieldByName('idPrevisaoRecIni').AsString;
  if trim(cdsPadrao.FieldByName('idPrevisaoRecFim').AsString) <> '' then
    sql := sql + ' AND p.nrPrevisaoRec <= ' + cdsPadrao.FieldByName('idPrevisaoRecFim').AsString;

  status := QuotedStr('ATIVO');

  sql := sql + ' AND p.stPrevisaoRec IN (' + status + ')';
  sql := sql + ' AND pp.stPrevisaoRecParc IN (' + status + ')';
//  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidCliente.SetFocus;
  inherited;
end;

procedure TFrmGeraTituloPRec.BtnGerarTituloClick(Sender: TObject);
var
  msg, sql : string;
begin
  inherited;
  msg := '';
  if qtSel = 0 then
    msg := 'Nenhum registro selecionado!' + #13;

  if trim(DBEidClienteTit.Text) = '' then
    msg := msg + 'Cliente não selecionado!' + #13;

  if trim(DBEidDocSerieTit.Text) = '' then
    msg := msg + 'Série não selecionada!' + #13;

  if trim(DBEnrTituloRec.Text) = '' then
    msg := msg + 'Número do novo título não informado!' + #13
  else
    //Verifica se o título já não existe
    if (trim(DBEidClienteTit.Text) <> '') and (trim(DBEidDocSerieTit.Text) <> '') then
    begin
      sql := 'SELECT * FROM TituloRec WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
             ' AND idCadEmpresa = ' + cdsEmpresaidCadEmpresa.AsString +
             ' AND idDocSerie = ' + QuotedStr(cdsGeracaoidDocSerieTit.AsString) +
             ' AND idCliente = ' + cdsGeracaoidClienteTit.AsString +
             ' AND nrTituloRec = ' + QuotedStr(cdsGeracaonrTituloRec.AsString);
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
        if RecordCount > 0 then
          msg := msg + 'Título já existente para o cliente informado!' + #13
    end;

  if (trim(DBEdtBase.Text) = '') and (cdsGeracaoopGeracao.AsString <> 'M') then
  begin
    if cdsGeracaoopGeracao.AsString = 'N' then
      msg := msg + 'Data base não informada!' + #13
    else
      msg := msg + 'Vencimento do Título não informado!' + #13;
  end;

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  //limpa a tabela temporária
  sql := 'DELETE FROM tmpGeraTituloPRec WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
         ' AND idCadEmpresa = ' + cdsEmpresaidCadEmpresa.AsString +
         ' AND idUsuario = ' + frmPrincipal.idUsuario;
  dmPadrao.dbConexao.ExecuteDirect(sql);

  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsString = 'S' then
    begin
      sql := 'INSERT INTO tmpGeraTituloPRec (idEmpresa, idCadEmpresa, idPrevisaoRec, idParcela, idUsuario)' +
             ' VALUES (' + cdsEmpresaidEmpresa.AsString + ', ' +
                           cdsEmpresaidCadEmpresa.AsString + ', ' +
                           cdsGrididPrevisaoRec.AsString + ', ' +
                           cdsGrididParcela.AsString + ', ' +
                           frmPrincipal.idUsuario + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    cdsGrid.Next;
  end;

  cdsGrid.First;

  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidClienteTit, DBEidDocSerieTit, DBEnrTituloRec,
                                   DBEdtBase, DBRGopGeracao, DBCKbaixaPrevisao, DBEidUsuario], 'spGeraTituloPRec', '') do
  begin
    if FieldByName('msg').AsString = 'OK' then
    begin
      if not Assigned(FrmCadTituloRec) then
        FrmCadTituloRec := TFrmCadTituloRec.create(frmPrincipal, [FieldByName('idTituloRec').AsString]);
      FrmCadTituloRec.Show;
    end;
  end;
  close;
end;

procedure TFrmGeraTituloPRec.cdsGeracaoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsGeracaoopGeracao.AsString := 'M';
  cdsGeracaoidDocSerieTit.AsString := 'TRE';
  cdsGeracaobaixaPrevisao.AsString := 'S';
  DBRGopGeracaoExit(DBRGopGeracao);
  cdsGeracaoidUsuario.AsString := frmPrincipal.idUsuario;
end;

procedure TFrmGeraTituloPRec.cdsGridselGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := '';
end;

procedure TFrmGeraTituloPRec.DBGridCellClick(Column: TColumn);
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
        FieldByName('fator').AsInteger := 0;
      end
      else
      begin
        qtSel := qtSel + 1;
        FieldByName('sel').AsString := 'S';
        FieldByName('fator').AsInteger := 1;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmGeraTituloPRec.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmGeraTituloPRec.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmGeraTituloPRec.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmGeraTituloPRec.DBRGopGeracaoExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdtBase], cdsGeracaoopGeracao.AsString = 'M');

  if cdsGeracaoopGeracao.AsString = 'N' then
    lblDataBase.Caption := 'Data Base'
  else
    if cdsGeracaoopGeracao.AsString = 'A' then
      lblDataBase.Caption := 'Vencto.';
end;

procedure TFrmGeraTituloPRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmGeraTituloPRec := nil;
end;

procedure TFrmGeraTituloPRec.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
  Height := 515;
  Width := 900;
end;

procedure TFrmGeraTituloPRec.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idEmpresa;

  cdsGeracao.CreateDataSet;
  cdsGeracao.Append;
end;

end.
