unit uFrmBaixaTituloRec;

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
  TFrmBaixaTituloRec = class(TFrmPadraoPesqEmpFiscal)
    lblCliFor: TCLabel;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    cdsPadraostAtivo: TStringField;
    cdsPadraostAberto: TStringField;
    cdsPadraostLiquidado: TStringField;
    cdsPadraolistaTitContrato: TStringField;
    cdsPadraoidCliente: TIntegerField;
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
    BtnAnexar: TCBitBtn;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    procedure actExecutarExecute(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vlAnterior : string;
    qtSel : integer;
  end;

var
  FrmBaixaTituloRec: TFrmBaixaTituloRec;

implementation

{$R *.dfm}

uses uFuncao, uDmPadrao;

procedure TFrmBaixaTituloRec.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  if (trim(DBEidCliente.Text) = '') then
  begin
    messagedlg('Você deve informar o Cliente!', mtwarning, [mbok], 0);
    exit;
  end;

  sql := ' SELECT CONVERT(BIT, 0) sel, idEmpresa, idCadEmpresa, id, idDocSerie, nrTitulo, idParcela, ' +
         'descAbreviada, vlParcela, vlPago, Saldo, dtEmissao, dtVencimento, stParcela, tpConsulta ' +
         ' FROM vConsultaTitulos t WHERE t.tpConsulta = ' + QuotedStr('TREC');

  if not (cdsPadrao.FieldByName('consolidaemp').AsString = 'S') then
  begin
     sql := sql + ' AND t.idEmpresa = ' +  funcao.RetornaValorEField(DBEidEmpresa, 3);
     if not (cdsPadrao.FieldByName('consolidafilial').AsString = 'S') then
       sql := sql + ' AND t.idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3);
  end;

  sql := sql + ' AND t.idCadGeral = ' + cdsPadraoidCliente.AsString;

  sql := sql + ' AND t.stParcela IN (' + '''' + 'ATIVO' + '''' + ', '  + '''' + 'ABERTO' + '''' + ')';

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;

  qtSel := 0;
 // btnAnexar.Enabled := qtSel > 0;
//  inherited;
end;

procedure TFrmBaixaTituloRec.BtnAnexarClick(Sender: TObject);
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
        sql := 'EXEC spEstornaSaldoTit ' + cdsGridid.AsString + ', ' + cdsGrididParcela.AsString;
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      cdsGrid.Next;
    end;
    actPesquisar.Execute;
  end;
end;

procedure TFrmBaixaTituloRec.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'S';
end;

procedure TFrmBaixaTituloRec.DBGridCellClick(Column: TColumn);
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

procedure TFrmBaixaTituloRec.DBGridDblClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmBaixaTituloRec.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TFrmBaixaTituloRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmBaixaTituloRec := nil;
end;

procedure TFrmBaixaTituloRec.FormCreate(Sender: TObject);
begin
  inherited;
  Height := 635;
  Width := 780;
end;

procedure TFrmBaixaTituloRec.FormShow(Sender: TObject);
var
  r : TRect;
begin
  inherited;
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
