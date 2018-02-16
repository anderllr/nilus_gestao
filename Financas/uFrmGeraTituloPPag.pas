unit uFrmGeraTituloPPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, System.Actions, CPanel, CDBRadioGroup;

type
  TFrmGeraTituloPPag = class(TFrmPadraoPesqEmpFiscal)
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
    DBEidFornecedor: TCDBEdit;
    LookDescCadFornecedor: TCLookUp;
    LookDescAbreviadaFornecedor: TCLookUp;
    LookidCnpjCpfFornecedor: TCLookUp;
    PanRomaneio: TCPanelGradient;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel11: TCLabel;
    DBEidPrevisaoPagIni: TCDBEdit;
    DBEidPrevisaoPagFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidPrevisaoPagIni: TIntegerField;
    cdsPadraoidPrevisaoPagFim: TIntegerField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsGrididFornecedor: TIntegerField;
    cdsGriddescAbreviada: TStringField;
    cdsGridnrPrevisaoPag: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridstPrevisaoPag: TStringField;
    FindFornecedor: TCFind;
    cdsGridvlPrevisaoPag: TFMTBCDField;
    cdsGridsel: TStringField;
    cdsGrididPrevisaoPag: TIntegerField;
    cdsGridvlParcela: TFMTBCDField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGridstPrevisaoPagParc: TStringField;
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
    DBEidFornTit: TCDBEdit;
    CLookUp1: TCLookUp;
    CLookUp2: TCLookUp;
    CLabel3: TCLabel;
    DBEidDocSerieTit: TCDBEdit;
    DBEdtBase: TCDBEdit;
    lblDataBase: TCLabel;
    DBEnrTituloPag: TCDBEdit;
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
    cdsGeracaoidFornTit: TIntegerField;
    cdsGeracaonrTituloPag: TStringField;
    cdsGeracaodtBase: TDateTimeField;
    cdsGeracaoidDocSerieTit: TStringField;
    DBEidUsuario: TCDBEdit;
    cdsGeracaoidUsuario: TIntegerField;
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
  FrmGeraTituloPPag: TFrmGeraTituloPPag;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uCadTituloPag;

{$R *.dfm}

procedure TFrmGeraTituloPPag.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT CONVERT(CHAR(1), ' + QuotedStr('N') + ') sel, p.idFornecedor, cad.descAbreviada, p.idPrevisaoPag, ' +
         ' p.nrPrevisaoPag, p.idDocSerie, p.dtEmissao, p.vlPrevisaoPag, p.stPrevisaoPag, pp.vlParcela, pp.dtVencimento, ' +
         ' pp.stPrevisaoPagParc, pp.idParcela, CONVERT(TINYINT, 0) fator FROM PrevisaoPag p INNER JOIN vCadFornecedorContabil cad ON p.idFornecedor = cad.idFornecedor ' +
         ' INNER JOIN PrevisaoPagParc pp ON p.idPrevisaoPag = pp.idPrevisaoPag WHERE 1=1';
  sql := sql + ' AND p.idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND p.idCadEmpresa = ' + DBEidCadEmpresa.Text;
  if trim(cdsPadrao.FieldByName('idFornecedor').AsString) <> '' then
  begin
    sql := sql + ' AND p.idFornecedor = ' + cdsPadrao.FieldByName('idFornecedor').AsString;
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsGeracaoidFornTit.AsInteger := cdsPadraoidFornecedor.AsInteger;
  end;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND p.dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND p.dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoIni').AsString) <> '' then
    sql := sql + ' AND pp.dtVencimento >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtVencimentoFim').AsString) <> '' then
    sql := sql + ' AND pp.dtVencimento <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtVencimentoFim').AsDateTime);
  if trim(cdsPadrao.FieldByName('idPrevisaoPagIni').AsString) <> '' then
    sql := sql + ' AND p.nrPrevisaoPag >= ' + cdsPadrao.FieldByName('idPrevisaoPagIni').AsString;
  if trim(cdsPadrao.FieldByName('idPrevisaoPagFim').AsString) <> '' then
    sql := sql + ' AND p.nrPrevisaoPag <= ' + cdsPadrao.FieldByName('idPrevisaoPagFim').AsString;

  status := QuotedStr('ATIVO');

  sql := sql + ' AND p.stPrevisaoPag IN (' + status + ')';
  sql := sql + ' AND pp.stPrevisaoPagParc IN (' + status + ')';
//  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidFornecedor.SetFocus;
  qtSel := 0;
  inherited;
end;

procedure TFrmGeraTituloPPag.BtnGerarTituloClick(Sender: TObject);
var
  msg, sql : string;
begin
  inherited;
  msg := '';
  if qtSel = 0 then
    msg := 'Nenhum registro selecionado!' + #13;

  if trim(DBEidFornTit.Text) = '' then
    msg := msg + 'Fornecedor não selecionado!' + #13;

  if trim(DBEidDocSerieTit.Text) = '' then
    msg := msg + 'Série não selecionada!' + #13;

  if trim(DBEnrTituloPag.Text) = '' then
    msg := msg + 'Número do novo título não informado!' + #13
  else
    //Verifica se o título já não existe
    if (trim(DBEidFornTit.Text) <> '') and (trim(DBEidDocSerieTit.Text) <> '') then
    begin
      sql := 'SELECT * FROM TituloPag WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
             ' AND idCadEmpresa = ' + cdsEmpresaidCadEmpresa.AsString +
             ' AND idDocSerie = ' + QuotedStr(cdsGeracaoidDocSerieTit.AsString) +
             ' AND idFornecedor = ' + cdsGeracaoidFornTit.AsString +
             ' AND nrTituloPag = ' + QuotedStr(cdsGeracaonrTituloPag.AsString);
      with FrmPrincipal.ExecutaSQLRet([], '', sql) do
        if RecordCount > 0 then
          msg := msg + 'Título já existente para o fornecedor informado!' + #13
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
  sql := 'DELETE FROM tmpGeraTituloPPag WHERE idEmpresa = ' + cdsEmpresaidEmpresa.AsString +
         ' AND idCadEmpresa = ' + cdsEmpresaidCadEmpresa.AsString +
         ' AND idUsuario = ' + frmPrincipal.idUsuario;
  dmPadrao.dbConexao.ExecuteDirect(sql);

  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsString = 'S' then
    begin
      sql := 'INSERT INTO tmpGeraTituloPPag (idEmpresa, idCadEmpresa, idPrevisaoPag, idParcela, idUsuario)' +
             ' VALUES (' + cdsEmpresaidEmpresa.AsString + ', ' +
                           cdsEmpresaidCadEmpresa.AsString + ', ' +
                           cdsGrididPrevisaoPag.AsString + ', ' +
                           cdsGrididParcela.AsString + ', ' +
                           frmPrincipal.idUsuario + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    cdsGrid.Next;
  end;

  cdsGrid.First;

  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidFornTit, DBEidDocSerieTit, DBEnrTituloPag,
                                   DBEdtBase, DBRGopGeracao, DBCKbaixaPrevisao, DBEidUsuario], 'spGeraTituloPPag', '') do
  begin
    if FieldByName('msg').AsString = 'OK' then
    begin
      if not Assigned(FrmCadTituloPag) then
        FrmCadTituloPag := TFrmCadTituloPag.create(frmPrincipal, [FieldByName('idTituloPag').AsString]);
      FrmCadTituloPag.Show;
    end;
  end;
  close;
end;

procedure TFrmGeraTituloPPag.cdsGeracaoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsGeracaoopGeracao.AsString := 'M';
  cdsGeracaoidDocSerieTit.AsString := 'TPAG';
  cdsGeracaobaixaPrevisao.AsString := 'S';
  DBRGopGeracaoExit(DBRGopGeracao);
  cdsGeracaoidUsuario.AsString := frmPrincipal.idUsuario;
end;

procedure TFrmGeraTituloPPag.cdsGridselGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := '';
end;

procedure TFrmGeraTituloPPag.DBGridCellClick(Column: TColumn);
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

procedure TFrmGeraTituloPPag.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmGeraTituloPPag.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmGeraTituloPPag.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmGeraTituloPPag.DBRGopGeracaoExit(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEdtBase], cdsGeracaoopGeracao.AsString = 'M');

  if cdsGeracaoopGeracao.AsString = 'N' then
    lblDataBase.Caption := 'Data Base'
  else
    if cdsGeracaoopGeracao.AsString = 'A' then
      lblDataBase.Caption := 'Vencto.';
end;

procedure TFrmGeraTituloPPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmGeraTituloPPag := nil;
end;

procedure TFrmGeraTituloPPag.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
  Height := 515;
  Width := 900;
end;

procedure TFrmGeraTituloPPag.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idEmpresa;

  cdsGeracao.CreateDataSet;
  cdsGeracao.Append;
end;

end.
