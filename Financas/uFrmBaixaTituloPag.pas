unit uFrmBaixaTituloPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoPesqEmpFiscal, Data.FMTBcd,
  CFind, Data.SqlExpr, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  System.Actions, Vcl.ActnList, Vcl.ImgList, CLookUp, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, CDBEdit, CLabel, Vcl.Buttons, CBitBtn, Vcl.ExtCtrls,
  CPanelGradient, Vcl.Grids, Vcl.DBGrids, CDBGrid, CGroupBox, System.ImageList,
  CDBCheckBox;

type
  TFrmBaixaTituloPag = class(TFrmPadraoPesqEmpFiscal)
    lblCliFor: TCLabel;
    CLookUp3: TCLookUp;
    CLookUp2: TCLookUp;
    DBEidCadFornecedor: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    BtnAnexar: TCBitBtn;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPadraoidCadFornecedor: TIntegerField;
    cdsPadraostAtivo: TStringField;
    cdsPadraostAberto: TStringField;
    cdsPadraostLiquidado: TStringField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraolistaTitContrato: TStringField;
    cdsGridsel: TBooleanField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGridid: TIntegerField;
    cdsGrididDocSerie: TStringField;
    cdsGridnrTitulo: TStringField;
    cdsGrididParcela: TSmallintField;
    cdsGriddescAbreviada: TStringField;
    cdsGridvlParcela: TFMTBCDField;
    cdsGridvlPago: TFMTBCDField;
    cdsGridSaldo: TFMTBCDField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGridstParcela: TStringField;
    cdsGridtpConsulta: TStringField;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    procedure actExecutarExecute(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEidFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEidFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    vlAnterior : string;
    qtSel : integer;
  end;

var
  FrmBaixaTituloPag: TFrmBaixaTituloPag;

implementation

{$R *.dfm}

uses uDmPadrao, uFuncao, uFrmPrincipal, uFrmPesClienteFiscal;

procedure TFrmBaixaTituloPag.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  if (trim(DBEidFornecedor.Text) = '') or (trim(DBEidCadFornecedor.Text) = '') then
  begin
    messagedlg('Você deve informar o Fornecedor!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := ' SELECT CONVERT(BIT, 0) sel, idEmpresa, idCadEmpresa, id, idDocSerie, nrTitulo, idParcela, ' +
         'descAbreviada, vlParcela, vlPago, Saldo, dtEmissao, dtVencimento, stParcela, tpConsulta ' +
         ' FROM vConsultaTitulos t WHERE t.tpConsulta = ' + QuotedStr('TPAG');
   if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
    sql := sql + ' AND idEmpresa = ' +  funcao.RetornaValorEField(DBEidEmpresa, 3);
    if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
      sql := sql + ' AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);
  end;
//  sql := sql + ' AND t.idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
//               ' AND t.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);

  sql := sql + ' AND t.idCadGeral = ' + cdsPadraoidFornecedor.AsString;

  sql := sql + ' AND t.stParcela IN (' + '''' + 'ATIVO' + '''' + ', '  + '''' + 'ABERTO' + '''' + ')';


  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  qtSel := 0;
  btnAnexar.Enabled := qtSel > 0;

//  inherited;
end;

procedure TFrmBaixaTituloPag.BtnAnexarClick(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if messagedlg('Deseja realmente estornar o saldo desses titulos selecionados!' +
                ' é um processo irreversível!', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if cdsGridsel.AsBoolean then
      begin
        sql := 'EXEC spEstornaSaldoTPag ' + cdsGridid.AsString + ', ' + cdsGrididParcela.AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      cdsGrid.Next;
    end;
    actPesquisar.Execute;
  end;
end;

procedure TFrmBaixaTituloPag.DBEidFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadFornecedor') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmBaixaTituloPag.DBEidFornecedorKeyPress(Sender: TObject;
  var Key: Char);
var
  pRect:TRect;
begin
  inherited;
  if ( not (Key in ['0'..'9', #13, #8, #27]) ) and ( not (Sender as TCustomEdit).ReadOnly ) then
    begin
      Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
      FrmPesClienteFiscal.busca := String(Key);
      Key := #0;
      GetWindowRect(Self.Handle,pRect);
      FrmPesClienteFiscal.Left := pRect.Left;
      FrmPesClienteFiscal.Top := pRect.Top + Self.Height;
      FrmPesClienteFiscal.ShowModal;
      if FrmPesClienteFiscal.cdsGrid.RecordCount = 0 then
        Exit;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('idFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
      cdsPadrao.FieldByName('idCadFornecedor').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
    end;
end;

procedure TFrmBaixaTituloPag.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      if FieldByName('sel').AsBoolean then
        qtSel := qtSel - 1
      else
        qtSel := qtSel + 1;
    end; //fim do with cdsGrid do
    btnAnexar.Enabled := qtSel > 0;
  end;

end;

procedure TFrmBaixaTituloPag.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmBaixaTituloPag.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TFrmBaixaTituloPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmBaixaTituloPag := nil;
end;

procedure TFrmBaixaTituloPag.FormShow(Sender: TObject);
var
  r : TRect;
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'S';
  DBEidFornecedor.SetFocus;

  Width := 780;
  Height := 635;

  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 10;
  Top := r.top + 10;
end;

end.
