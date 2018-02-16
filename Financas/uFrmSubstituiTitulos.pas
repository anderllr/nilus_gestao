unit uFrmSubstituiTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, CFind, DB, SqlExpr, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, CDBCheckBox, CDBRadioGroup;

type
  TFrmSubstituiTitulos = class(TFrmPadraoPesqEmpFiscal)
    CGroupBox1: TCGroupBox;
    DBGridSel: TCDBGrid;
    CPanelGradient1: TCPanelGradient;
    CLabel3: TCLabel;
    BtnSubstituir: TCBitBtn;
    DBEnrTitulo: TCDBEdit;
    PanCliente: TCPanelGradient;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    CLabel8: TCLabel;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    CLabel12: TCLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    CLabel7: TCLabel;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookDocSerie: TCLookUp;
    CLabel11: TCLabel;
    DBEidDocSerie: TCDBEdit;
    CLookUp1: TCLookUp;
    CLabel13: TCLabel;
    CLookUp2: TCLookUp;
    Label1: TLabel;
    DBEnrTituloIni: TCDBEdit;
    DBEnrTituloFim: TCDBEdit;
    Label2: TLabel;
    CLabel14: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    CLabel15: TCLabel;
    DBEdtEmissaoFim: TCDBEdit;
    CLabel16: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    CLabel17: TCLabel;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKrec: TCDBCheckBox;
    DBCKpag: TCDBCheckBox;
    CLookUp3: TCLookUp;
    DBEidDocSerie1: TCDBEdit;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    DBCKAtivo: TCDBCheckBox;
    DBCKAberto: TCDBCheckBox;
    CPanelGradient2: TCPanelGradient;
    BtnAdicionar: TCBitBtn;
    BtnLimpaSelecao: TCBitBtn;
    dsGridSel: TDataSource;
    cdsGridSel: TClientDataSet;
    cdsGridsel2: TStringField;
    cdsGridSelsel: TStringField;
    cdsGridSelidTitulo: TIntegerField;
    cdsGridSelidEmpresa: TIntegerField;
    cdsGridSelidCadEmpresa: TSmallintField;
    cdsGridSelnrTitulo: TStringField;
    cdsGridSelidDocSerie: TStringField;
    cdsGridSelidCliente: TIntegerField;
    cdsGridSelstTitulo: TStringField;
    cdsGridSeldtEmissao: TSQLTimeStampField;
    cdsGridSelvlTitulo: TFMTBCDField;
    cdsGridSeldescCliente: TStringField;
    DBEdtBase: TCDBEdit;
    CLabel18: TCLabel;
    BtnRetirar: TCBitBtn;
    cdsGrididTitulo: TIntegerField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGridnrTitulo: TStringField;
    cdsGrididDocSerie: TStringField;
    cdsGrididCliente: TIntegerField;
    cdsGridstTitulo: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridvlTitulo: TFMTBCDField;
    cdsGriddescCliente: TStringField;
    cdsGridSelvlTotal: TAggregateField;
    DBEvlTotal: TCDBEdit;
    cdsTmp: TClientDataSet;
    cdsTmpidDocSerie: TStringField;
    cdsTmpnrTitulo: TStringField;
    cdsTmpdtBase: TDateField;
    cdsTmpvlTotal: TCurrencyField;
    dsTmp: TDataSource;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidDocSerie: TStringField;
    cdsPadraonrTituloIni: TStringField;
    cdsPadraonrTituloFim: TStringField;
    cdsPadraodtEmissaoIni: TDateField;
    cdsPadraodtEmissaoFim: TDateField;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    cdsPadraoAtivo: TStringField;
    cdsPadraoAberto: TStringField;
    cdsPadraorec: TStringField;
    cdsPadraopag: TStringField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsGridSelfator: TIntegerField;
    FindSerie: TCFind;
    FindCliente: TCFind;
    FindSeriePag: TCFind;
    procedure actExecutarExecute(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AdicionaGrid;
    procedure BtnRetirarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridSelCellClick(Column: TColumn);
    procedure DBGridSelColEnter(Sender: TObject);
    procedure DBGridSelDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnLimpaSelecaoClick(Sender: TObject);
    procedure BtnSubstituirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBEdtBaseExit(Sender: TObject);
    procedure DBEidClienteEnter(Sender: TObject);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;
  public
    { Public declarations }
    pag, rec : Boolean;
  end;

var
  FrmSubstituiTitulos: TFrmSubstituiTitulos;

implementation

uses uDmFind, uDmPadrao, uFrmPrincipal, uFuncao, uCadTituloPag, uCadTituloRec;

{$R *.dfm}

procedure TFrmSubstituiTitulos.actExecutarExecute(Sender: TObject);
var
  sql, msg, status : string;
begin
//  inherited;
  if Trim(DBEidCliente.Text) = '' then
  begin
    msg := 'Cliente/Fornecedor deve ser informado!';
  end;
  if Trim(msg) <> '' then
  begin
    MessageDlg(msg, mtWarning, [mbOK], 0);
    Exit;
  end;
  if DBCKAtivo.Checked then
    status := QuotedStr('ATIVO');
  if DBCKAberto.Checked then
    if status <> '' then
      status := status + ', ' + QuotedStr('ABERTO')
    else
      status := QuotedStr('ABERTO');
  if pag then
  begin
    sql := 'SELECT ' + QuotedStr('N') + ' AS sel, t.idTituloPag idTitulo, t.idEmpresa, t.idCadEmpresa, t.nrTituloPag nrTitulo, t.idDocSerie, ' +
           ' t.idFornecedor idCliente, t.stTituloPag stTitulo, t.dtEmissao, t.vlTituloPag vlTitulo, ' +
           ' f.descCadFornecedor descCliente FROM TituloPag t INNER JOIN vCadFornecedorContabil f ' +
           ' ON t.idFornecedor = f.idFornecedor WHERE 1=1';
    if Trim(cdsPadraoconsolidaEmp.AsString) = 'N' then
      sql := sql + ' AND idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
    if Trim(cdsPadraoconsolidaFilial.AsString) = 'N' then
      sql := sql + ' AND idCadEmpresa = ' + cdsEmpresaidCadEmpresa.AsString;
    if Trim(cdsPadraoidCliente.AsString) <> '' then
      sql := sql + ' AND t.idFornecedor = ' + cdsPadraoidCliente.AsString;
    if Trim(cdsPadraoidDocSerie.AsString) <> '' then
      sql := sql + ' AND idDocSerie = ' + cdsPadraoidDocSerie.AsString;
    if Trim(cdsPadraonrTituloIni.AsString) <> '' then
      sql := sql + ' AND nrTituloPag >= ' + cdsPadraonrTituloIni.AsString;
    if Trim(cdsPadraonrTituloFim.AsString) <> '' then
      sql := sql + ' AND nrTituloPag <= ' + cdsPadraonrTituloFim.AsString;
    if Trim(cdsPadraodtEmissaoIni.AsString) <> '' then
      sql := sql + ' AND dtEmissao >= ' + cdsPadraodtEmissaoIni.AsString;
    if Trim(cdsPadraodtEmissaoFim.AsString) <> '' then
      sql := sql + ' AND dtEmissao <= ' + cdsPadraodtEmissaoFim.AsString;
    if Trim(cdsPadraodtVencimentoIni.AsString) <> '' then
      sql := sql + ' AND dtVencimento >= ' + cdsPadraodtVencimentoIni.AsString;
    if Trim(cdsPadraodtVencimentoFim.AsString) <> '' then
      sql := sql + ' AND dtVencimento <= ' + cdsPadraodtVencimentoFim.AsString;
    if Trim(status) <> '' then
      sql := sql + ' AND stTituloPag IN (' + status + ')';

    sql := sql + ' AND stTituloPag NOT IN (' + QuotedStr('LIQUIDADO') + ', ' + QuotedStr('SUBSTITUIDO') + ')';
  end
  else
  begin
    sql := 'SELECT ' + QuotedStr('N') + ' AS sel, t.idTituloRec idTitulo, t.idEmpresa, t.idCadEmpresa, t.nrTituloRec nrTitulo, t.idDocSerie, ' +
           ' t.idCliente idCliente, t.stTituloRec stTitulo, t.dtEmissao, t.vlTituloRec vlTitulo, ' +
           ' f.descCadFornecedor descCliente FROM TituloRec t INNER JOIN vCadFornecedorContabil f ' +
           ' ON t.idCliente = f.idFornecedor WHERE 1=1';
    if Trim(cdsPadraoconsolidaEmp.AsString) = 'N' then
      sql := sql + ' AND idEmpresa = ' + cdsEmpresaidEmpresa.AsString;
    if Trim(cdsPadraoconsolidaFilial.AsString) = 'N' then
      sql := sql + ' AND idCadEmpresa = ' + cdsEmpresaidCadEmpresa.AsString;
    if Trim(cdsPadraoidCliente.AsString) <> '' then
      sql := sql + ' AND idFornecedor = ' + cdsPadraoidCliente.AsString;
    if Trim(cdsPadraoidDocSerie.AsString) <> '' then
      sql := sql + ' AND idDocSerie = ' + cdsPadraoidDocSerie.AsString;
    if Trim(cdsPadraonrTituloIni.AsString) <> '' then
      sql := sql + ' AND nrTituloRec >= ' + cdsPadraonrTituloIni.AsString;
    if Trim(cdsPadraonrTituloFim.AsString) <> '' then
      sql := sql + ' AND nrTituloRec <= ' + cdsPadraonrTituloFim.AsString;
    if Trim(cdsPadraodtEmissaoIni.AsString) <> '' then
      sql := sql + ' AND dtEmissao >= ' + cdsPadraodtEmissaoIni.AsString;
    if Trim(cdsPadraodtEmissaoFim.AsString) <> '' then
      sql := sql + ' AND dtEmissao <= ' + cdsPadraodtEmissaoFim.AsString;
    if Trim(cdsPadraodtVencimentoIni.AsString) <> '' then
      sql := sql + ' AND dtVencimento >= ' + cdsPadraodtVencimentoIni.AsString;
    if Trim(cdsPadraodtVencimentoFim.AsString) <> '' then
      sql := sql + ' AND dtVencimento <= ' + cdsPadraodtVencimentoFim.AsString;
    if Trim(status) <> '' then
      sql := sql + ' AND stTituloRec IN (' + status + ')';
    sql := sql + ' AND stTituloRec NOT IN (' + QuotedStr('LIQUIDADO') + ', ' + QuotedStr('SUBSTITUIDO') + ')';
  end;
  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;
  if cdsGrid.RecordCount > 0  then
  begin
    BtnLimpaSelecao.Enabled := True;
    BtnAdicionar.Enabled := True;
    BtnRetirar.Enabled := True;
  end;
end;

procedure TFrmSubstituiTitulos.AdicionaGrid;
begin
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel2.AsString = 'S' then
    begin
      if not(cdsGridSel.Active) then
        cdsGridSel.Open;
      cdsGridSel.IndexFieldNames := 'idTitulo';
      if cdsGridSel.FindKey([cdsGrididTitulo.AsInteger]) then
      begin
        if not(cdsGridSel.State IN [dsEdit, dsInsert]) then
          cdsGridSel.Edit;
        cdsGridSelidTitulo.AsInteger := cdsGrididTitulo.AsInteger;
        cdsGridSelidCliente.AsInteger := cdsGrididCliente.AsInteger;
        cdsGridSeldtEmissao.AsDateTime := cdsGriddtEmissao.AsDateTime;
        cdsGridSelidEmpresa.AsInteger := cdsGrididEmpresa.AsInteger;
        cdsGridSelidCadEmpresa.AsInteger := cdsGrididCadEmpresa.AsInteger;
        cdsGridSelidDocSerie.AsString := cdsGrididDocSerie.AsString;
        cdsGridSelnrTitulo.AsString := cdsGridnrTitulo.AsString;
        cdsGridSeldescCliente.AsString := cdsGriddescCliente.AsString;
        cdsGridSelstTitulo.AsString := cdsGridstTitulo.AsString;
        cdsGridSelvlTitulo.AsCurrency := cdsGridvlTitulo.AsCurrency;
        cdsGridSelsel.AsString := 'S';
        cdsGridSel.Post;
      end
      else
      begin
        if not(cdsGridSel.State IN [dsEdit, dsInsert]) then
          cdsGridSel.Append;
        cdsGridSelidTitulo.AsInteger := cdsGrididTitulo.AsInteger;
        cdsGridSelidCliente.AsInteger := cdsGrididCliente.AsInteger;
        cdsGridSeldtEmissao.AsDateTime := cdsGriddtEmissao.AsDateTime;
        cdsGridSelidEmpresa.AsInteger := cdsGrididEmpresa.AsInteger;
        cdsGridSelidCadEmpresa.AsInteger := cdsGrididCadEmpresa.AsInteger;
        cdsGridSelidDocSerie.AsString := cdsGrididDocSerie.AsString;
        cdsGridSelnrTitulo.AsString := cdsGridnrTitulo.AsString;
        cdsGridSeldescCliente.AsString := cdsGriddescCliente.AsString;
        cdsGridSelstTitulo.AsString := cdsGridstTitulo.AsString;
        cdsGridSelvlTitulo.AsCurrency := cdsGridvlTitulo.AsCurrency;
        cdsGridSelfator.AsInteger := 1;
        cdsGridSelsel.AsString := 'S';
        cdsGridSel.Post;
      end;
    end;
    cdsGrid.Next;
  end;
//  cdsGridSel.Refresh;
end;

procedure TFrmSubstituiTitulos.BtnAdicionarClick(Sender: TObject);
begin
  inherited;
  AdicionaGrid;
  if not(cdsTmp.Active) then
    cdsTmp.CreateDataSet;
  cdsTmp.Append;
  cdsTmpvlTotal.Value := cdsGridSelvlTotal.Value;
end;

procedure TFrmSubstituiTitulos.BtnSubstituirClick(Sender: TObject);
var
  idTitulo : string;
begin
  inherited;
  cdsGridsel.First;
  while not cdsGridsel.Eof do
  begin
    if idTitulo <> '' then
      idTitulo := idTitulo + ', ' + cdsGridSelidTitulo.AsString
    else
      idTitulo := cdsGridSelidTitulo.AsString;
    cdsGridsel.Next;
  end;
  if rec then
  begin
    Application.CreateForm(TFrmCadTituloRec, FrmCadTituloRec);
    FrmCadTituloRec.BtnNovo.Click;
    FrmCadTituloRec.cdsPadrao.FieldByName('idDocSerie').AsString := cdsTmpidDocSerie.AsString;
    if cdsTmpnrTitulo.AsString = '' then
      FrmCadTituloRec.cdsPadrao.FieldByName('nrTituloRec').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idTituloRec)+1 nrTituloRec FROM TituloRec').FieldByName('nrTituloRec').AsString
    else
      FrmCadTituloRec.cdsPadrao.FieldByName('nrTituloRec').AsString := cdsTmpnrTitulo.AsString;
    FrmCadTituloRec.cdsPadrao.FieldByName('dtEmissao').AsDateTime := cdsTmpdtBase.AsDateTime;
    FrmCadTituloRec.cdsPadrao.FieldByName('vlTituloRec').AsCurrency := cdsTmpvlTotal.AsCurrency;
    FrmCadTituloRec.cdsPadrao.FieldByName('idCliente').AsInteger := cdsPadraoidCliente.AsInteger;
    FrmCadTituloRec.cdsPadrao.FieldByName('obsTituloRec').AsString := 'Titulo(s) gerado apartir da substituição dos seguintes títulos: '+ idTitulo;
    FrmCadTituloRec.idTitulo := idTitulo;
    FrmCadTituloRec.DBEidSafra.SetFocus;
    FrmCadTituloRec.Show;
  end
  else
    if pag then
    begin
      Application.CreateForm(TFrmCadTituloPag, FrmCadTituloPag);
      FrmCadTituloPag.BtnNovo.Click;
      FrmCadTituloPag.cdsPadrao.FieldByName('idDocSerie').AsString := cdsTmpidDocSerie.AsString;
      if cdsTmpnrTitulo.AsString = '' then
        FrmCadTituloPag.cdsPadrao.FieldByName('nrTituloPag').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MAX(idTituloPag)+1 nrTituloPag FROM TituloPag').FieldByName('nrTituloPag').AsString
      else
        FrmCadTituloPag.cdsPadrao.FieldByName('nrTituloPag').AsString := cdsTmpnrTitulo.AsString;
      FrmCadTituloPag.cdsPadrao.FieldByName('dtEmissao').AsDateTime := cdsTmpdtBase.AsDateTime;
      FrmCadTituloPag.cdsPadrao.FieldByName('vlTituloPag').AsCurrency := cdsTmpvlTotal.AsCurrency;
      FrmCadTituloPag.cdsPadrao.FieldByName('idFornecedor').AsInteger := cdsPadraoidCliente.AsInteger;
      FrmCadTituloPag.cdsPadrao.FieldByName('obsTituloPag').AsString := 'Titulo(s) gerado apartir da substituição dos seguintes títulos: '+ idTitulo;
      FrmCadTituloPag.idTitulo := idTitulo;
      FrmCadTituloPag.DBEidDocumento.SetFocus;
      FrmCadTituloPag.Show;
    end;
end;

procedure TFrmSubstituiTitulos.BtnRetirarClick(Sender: TObject);
begin
  inherited;
  cdsGridSel.Delete;
  if not(cdsTmp.Active) then
    cdsTmp.CreateDataSet;
  cdsTmp.Append;
  cdsTmpvlTotal.Value := cdsGridSelvlTotal.Value;
end;

procedure TFrmSubstituiTitulos.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoativo.AsString := 'S';
  cdsPadraoAberto.AsString := 'N';
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'S';
end;

procedure TFrmSubstituiTitulos.BtnLimpaSelecaoClick(Sender: TObject);
begin
  inherited;
  with cdsGridSel do
  begin
    First;
    while not eof do
    begin
      First;
      Delete;
    end;
  end;
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    cdsGrid.Edit;
    cdsGridsel2.AsString := 'N';
    cdsGrid.Post;
    cdsGrid.Next;
  end;
  if not(cdsTmp.Active) then
    cdsTmp.CreateDataSet;
  cdsTmp.Append;
  cdsTmpvlTotal.Value := 0;
end;

procedure TFrmSubstituiTitulos.DBGridSelCellClick(Column: TColumn);
var
  vlSomar : Currency;
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGridSel do
    begin
      if IsEmpty then
        exit;
      Self.DBGridSel.Options := Self.DBGridSel.Options - [dgEditing];
      Edit;
      if FieldByName('sel').AsString = 'S' then
      begin
        FieldByName('sel').AsString := 'N';
        qtSel := qtSel - 1;
      end
      else
      begin
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
      end;
      Post;
      DBGridSel.Refresh;
    end; //fim do with cdsGrid do
    //Verifica adiantamento
  end //fim do if Column.Index = 0 then
  else
    Self.DBGridSel.Options := Self.FOriginalOptions;
end;

procedure TFrmSubstituiTitulos.DBGridSelColEnter(Sender: TObject);
begin
  inherited;
  if DBGridSel.SelectedIndex > 0 then
    Self.DBGridSel.Options := Self.FOriginalOptions;
end;

procedure TFrmSubstituiTitulos.DBGridSelDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
  cor : String;
begin
  inherited;
  Cor := 'clWhite';
  marca := false;
  if cdsGridSel.FieldByName('sel').Value = 'S' then
    marca := true;

  if (marca) and (Column.Index > 0) then
  begin
    if (trim(Cor) <> '') and (trim(Cor) <> 'clWhite') then
    begin
      DBGridSel.Canvas.Brush.Color := StringToColor(Cor); // coloque aqui a cor desejada
      DBGridSel.DefaultDrawDataCell(Rect, DBGridSel.columns[datacol].field, State);
    end;
  end;
  if (Column.Index = 0) then
  begin
    Self.DBGridSel.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGridSel.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
    DBGridSel.Canvas.Brush.Color := StringToColor(Cor);
  end;
end;

procedure TFrmSubstituiTitulos.DBEdtBaseExit(Sender: TObject);
begin
  inherited;
  if Trim(DBEdtBase.Text) <> '' then
    BtnSubstituir.Enabled := True;
end;

procedure TFrmSubstituiTitulos.DBEidClienteEnter(Sender: TObject);
begin
  inherited;
  if Tag = 0 then
  begin
    rec := true;
    pag := false;
  end
  else
    if Tag = 1 then
    begin
      pag := true;
      rec := false;
    end;
  if pag then
  begin
    DBEidDocSerie1.Find := FindSeriePag;
    DBEidDocSerie.Find := FindSeriePag;
  end
  else
    if rec then
    begin
      DBEidDocSerie1.Find := FindSerie;
      DBEidDocSerie.Find := FindSerie;
    end;
end;

procedure TFrmSubstituiTitulos.DBGridCellClick(Column: TColumn);
var
  vlSomar : Currency;
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
        FieldByName('sel').AsString := 'N';
        qtSel := qtSel - 1;
      end
      else
      begin
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
    //Verifica adiantamento
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmSubstituiTitulos.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmSubstituiTitulos.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
  cor : String;
begin
  inherited;
  Cor := 'clWhite';
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

  if (marca) and (Column.Index > 0) then
  begin
    if (trim(Cor) <> '') and (trim(Cor) <> 'clWhite') then
    begin
      DBGrid.Canvas.Brush.Color := StringToColor(Cor); // coloque aqui a cor desejada
      DBGrid.DefaultDrawDataCell(Rect, DBGrid.columns[datacol].field, State);
    end;
  end;
  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
    DBGrid.Canvas.Brush.Color := StringToColor(Cor);
  end;
end;

procedure TFrmSubstituiTitulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmSubstituiTitulos := nil;
end;

procedure TFrmSubstituiTitulos.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCliente;
end;

procedure TFrmSubstituiTitulos.FormShow(Sender: TObject);
begin
  inherited;
  Height := 595;
  Width := 860;
  cdsGridSel.CreateDataSet;
  BtnSubstituir.Enabled := False;
  BtnLimpaSelecao.Enabled := False;
  BtnAdicionar.Enabled := False;
  BtnRetirar.Enabled := False;
  cdsTmp.CreateDataSet;

end;

end.
