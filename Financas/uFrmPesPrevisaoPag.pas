unit uFrmPesPrevisaoPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, System.Actions, System.ImageList;

type
  TFrmPesPrevisaoPag = class(TFrmPadraoPesqEmpFiscal)
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
    CGroupBox1: TCGroupBox;
    DBCKstCancelada: TCDBCheckBox;
    DBCKstBaixada: TCDBCheckBox;
    DBCKstAtivo: TCDBCheckBox;
    cdsPadraostAtivo: TBooleanField;
    FindFornecedor: TCFind;
    cdsGridvlPrevisaoPag: TFMTBCDField;
    cdsPadraostBaixada: TBooleanField;
    cdsPadraostCancelada: TBooleanField;
    cdsGrididPrevisaoPag: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idEmpresa, idCadEmpresa : integer;
  end;

var
  FrmPesPrevisaoPag: TFrmPesPrevisaoPag;

implementation

uses uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesPrevisaoPag.actExecutarExecute(Sender: TObject);
var
  sql, status : string;
begin
  status := '';
  sql := 'SELECT tit.idFornecedor, cad.descAbreviada, nrPrevisaoPag, idDocSerie, dtEmissao, vlPrevisaoPag, ' +
         'stPrevisaoPag, idPrevisaoPag FROM PrevisaoPag tit, vCadFornecedorContabil cad WHERE tit.idFornecedor = cad.idFornecedor';
  sql := sql + ' AND idEmpresa = ' + DBEidEmpresa.Text;
  sql := sql + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;  
  if trim(cdsPadrao.FieldByName('idFornecedor').AsString) <> '' then
    sql := sql + ' AND tit.idFornecedor = ' + cdsPadrao.FieldByName('idFornecedor').AsString;
  if trim(cdsPadrao.FieldByName('dtInicial').AsString) <> '' then
    sql := sql + ' AND dtEmissao >= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtInicial').AsDateTime);
  if trim(cdsPadrao.FieldByName('dtFinal').AsString) <> '' then
    sql := sql + ' AND dtEmissao <= ' + funcao.ConverteData(cdsPadrao.FieldByName('dtFinal').AsDateTime);
  if trim(cdsPadrao.FieldByName('idPrevisaoPagIni').AsString) <> '' then
    sql := sql + ' AND nrPrevisaoPag >= ' + cdsPadrao.FieldByName('idPrevisaoPagIni').AsString;
  if trim(cdsPadrao.FieldByName('idPrevisaoPagFim').AsString) <> '' then
    sql := sql + ' AND nrPrevisaoPag <= ' + cdsPadrao.FieldByName('idPrevisaoPagFim').AsString;
  if cdsPadrao.FieldByName('stAtivo').AsBoolean then
    status := QuotedStr('ATIVO');
  if cdsPadraostBaixada.AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('BAIXADA')
    else
      status := status + ',' + QuotedStr('BAIXADA');
  if cdsPadraostCancelada.AsBoolean then
    if trim(status) = '' then
      status := QuotedStr('CANCELADO')
    else
      status := status + ',' + QuotedStr('CANCELADO');

  if trim(status) <> '' then
    sql := sql + ' AND stPrevisaoPag IN (' + status + ')';
//  showmessage(sql);
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidFornecedor.SetFocus;
  inherited;  
end;

procedure TFrmPesPrevisaoPag.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
end;

procedure TFrmPesPrevisaoPag.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := idEmpresa;  
  cdsPadrao.FieldByName('stAtivo').AsBoolean := True;
  cdsPadraostBaixada.AsBoolean := false;
  cdsPadraostCancelada.AsBoolean := False;

end;

end.
