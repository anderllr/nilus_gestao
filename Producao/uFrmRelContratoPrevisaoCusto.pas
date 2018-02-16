unit uFrmRelContratoPrevisaoCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoRelEmpresa, Vcl.StdCtrls,
  CGroupBox, CFind, Data.DB, frxExportMail, frxExportXLS, frxClass, frxDBSet,
  frxExportCSV, frxExportPDF, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, Datasnap.DBClient, Datasnap.Provider, System.Actions,
  Vcl.ActnList, Vcl.ImgList, CLookUp, Vcl.Mask, Vcl.DBCtrls, CDBEdit,
  Vcl.Buttons, CBitBtn, Vcl.ExtCtrls, CPanelGradient, CLabel, CDBCheckBox,
  Data.FMTBcd, Data.SqlExpr, System.ImageList, frxExportXLSX;

type
  TFrmRelContratoPrevisaoCusto = class(TFrmPadraoRelEmpresa)
    CGroupBox4: TCGroupBox;
    CLabel12: TCLabel;
    lblCliFor: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    LookCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    FrxRel: TfrxReport;
    DBCKRomAConfirmar: TCDBCheckBox;
    UniQryPadraoidContratoVenda: TStringField;
    UniQryPadraoidEmpresa: TIntegerField;
    UniQryPadraoidCadEmpresa: TIntegerField;
    UniQryPadraoidCliente: TIntegerField;
    UniQryPadraoRomAConfirmar: TStringField;
    UniQryPadraoAFixar: TStringField;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    CLabel23: TCLabel;
    cdsPadraoidSafra: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelContratoPrevisaoCusto: TFrmRelContratoPrevisaoCusto;

implementation

{$R *.dfm}

uses uFrmPrincipal, uFuncao, uDmPadrao, uDmFind, uFrmPesContratoProjecao,
  uFrmPesContratoVenda;

procedure TFrmRelContratoPrevisaoCusto.actGerarExecute(Sender: TObject);
var
  sql, msg, caminho_rel, idPrevisao : String;
begin
//  inherited;
 { if Trim(DBEidContratoVenda.Text) = '' then
    msg := 'O Numero do Contrato Tem que ser Informado!';

  if Trim(DBEidCliente.Text) = '' then
    msg := msg + #13 + 'O Cliente Tem que ser Informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidContratoVenda.SetFocus;
    exit;
  end;}

  //Busca id da Previsão
  if Trim(DBEidContratoVenda.Text) <> '' then
  begin
    idPrevisao := frmPrincipal.ExecutaSQLRet([], '', 'SELECT TOP 1 idContratoProjecao FROM ContratoProjecaoVenda WHERE idEmpresa = ' +
                                                      DBEidEmpresa.Text + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                                                      ' AND idContratoVenda = ' + QuotedStr(DBEidContratoVenda.Text)).FieldByName('idContratoProjecao').AsString;

  end
  else
    idPrevisao := '0';
  //Executa Busca das Previsões de compras
  sql := 'EXEC spRelCustoContratoPrevisao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
          funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' + idPrevisao + ', '
          + funcao.RetornaValorEField(DBEidSafra, 3);
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := True;

  //Executa a Procedure de Cabeçalho
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;

  frxRel.LoadFromFile(caminho_rel);

//  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).clear;
  //  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).Text := 'RESUMO DE CONTRATO' + #13 + '(VENDA)';

 { (frxRel.FindComponent('MEMCLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MEMCLIENTE') as TfrxMemoview).Text := 'CLIENTE :';

  (frxRel.FindComponent('MEMEMBARQUE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MEMEMBARQUE') as TfrxMemoview).Text := 'DESCARGA :';}

  frxRel.ShowReport;
end;

procedure TFrmRelContratoPrevisaoCusto.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadrao.FieldByName('RomAConfirmar').AsString := 'S';
  cdsPadrao.FieldByName('AFixar').AsString := 'N';
end;

procedure TFrmRelContratoPrevisaoCusto.DBEidContratoVendaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoPrevisao, FrmPesContratoPrevisao);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadrao.FieldByName('idCliente').AsInteger;
    FrmPesContratoVenda.Previsao := True;
    FrmPesContratoVenda.ShowModal;
    with cdsPadrao do
    begin
      if not (FrmPesContratoVenda.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;

        FieldByName('idCadEmpresa').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCadEmpresa').Value;
        FieldByName('idCliente').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idContratoVenda').Value := FrmPesContratoVenda.cdsGrid.FieldByName('idContratoVenda').Value;
        DBEidContratoVenda.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmRelContratoPrevisaoCusto.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmRelContratoPrevisaoCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoPrevisaoCusto := nil;
end;

procedure TFrmRelContratoPrevisaoCusto.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoPrevCustos.fr3';
  foco := DBEidCliente;
end;

procedure TFrmRelContratoPrevisaoCusto.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  Height := 212;
  Width := 717;
end;

end.

