unit uFrmRelContratoDetalhado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, uFrmPadraoRelEmpFiscal, System.Actions, CDBCheckBox,
  System.ImageList;

type
  TFrmRelContratoDetalhado = class(TFrmPadraoRelEmpresa)
    CGroupBox4: TCGroupBox;
    CLabel12: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    frxRel: TfrxReport;
    cdsPadraoidContratoVenda: TStringField;
    FindContrato: TCFind;
    FrxDatasetTitulos: TfrxDBDataset;
    cdsRelTitulos: TClientDataSet;
    dspRelTitulos: TDataSetProvider;
    FrxDatasetRomaneios: TfrxDBDataset;
    cdsRomaneios: TClientDataSet;
    dspRomaneios: TDataSetProvider;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    LookCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    lblCliFor: TCLabel;
    cdsPadraoRomAConfirmar: TStringField;
    DBCKRomAConfirmar: TCDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure DBEidEmpresaExit(Sender: TObject);
    procedure DBEidContratoVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelContratoDetalhado: TFrmRelContratoDetalhado;

implementation

uses uDmPadrao, uDmFind, uFrmPrincipal, uFrmPesContratoVenda, uFuncao;

{$R *.dfm}

procedure TFrmRelContratoDetalhado.actGerarExecute(Sender: TObject);
var
  sql, msg, caminho_rel : String;
begin
//  inherited;
  if Trim(DBEidContratoVenda.Text) = '' then
    msg := 'O Numero do Contrato Tem que ser Informado!';

  if Trim(DBEidCliente.Text) = '' then
    msg := msg + #13 + 'O Cliente Tem que ser Informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    DBEidContratoVenda.SetFocus;
    exit;
  end;

  //Executa a Procedure de Cabeçalho
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  //Executa Prodedure de Busca Principal
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := 'EXEC spRelContratoDetalhado ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                               cdsPadraoidCliente.AsString + ', ' + QuotedStr(DBEidContratoVenda.Text);
  cdsRelatorio.Active := True;

  //Executa Prodedure de Busca Titulos
  cdsRelTitulos.Active := False;
  cdsRelTitulos.CommandText := 'EXEC spRelContDetTitulos ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                                cdsPadraoidCliente.AsString + ', ' + QuotedStr(DBEidContratoVenda.Text);
  cdsRelTitulos.Active := True;

  //Executa Prodedure de Busca Romaneios
  cdsRomaneios.Active := False;
  cdsRomaneios.CommandText := 'EXEC spRelContDetRomaneio ' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                              cdsPadraoidCliente.AsString + ', ' + QuotedStr(DBEidContratoVenda.Text) + ', ' +
                              funcao.RetornaValorEField(DBCKRomAConfirmar, 3);
  cdsRomaneios.Active := True;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString + relatorio;
  frxRel.LoadFromFile(caminho_rel);
  if cdsRelTitulos.FieldByName('temMov').AsString = 'N' then
  begin
    (frxRel.FindComponent('Shape3') as TfrxShapeView).Visible := False;
    (frxRel.FindComponent('Memo73') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo74') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo69') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo56') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo55') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo57') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('Memo58') as TfrxMemoView).Visible := False;
    (frxRel.FindComponent('MasterData2') as TfrxMasterData).Height := 0.70;
  end;
  frxRel.ShowReport;
end;

procedure TFrmRelContratoDetalhado.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoRomAConfirmar.AsString := 'S';
end;

procedure TFrmRelContratoDetalhado.DBEidContratoVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesContratoVenda, FrmPesContratoVenda);
    FrmPesContratoVenda.idEmpresa := StrToInt(DBEidEmpresa.Text);
    FrmPesContratoVenda.idCadEmpresa := StrToInt(DBEidCadEmpresa.Text);
    FrmPesContratoVenda.idCliente := cdsPadraoidCliente.AsInteger;
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

procedure TFrmRelContratoDetalhado.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmRelContratoDetalhado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoDetalhado := nil;
end;

procedure TFrmRelContratoDetalhado.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoDetalhado.fr3';
  par := 0;
  foco := DBEidCliente;
end;

procedure TFrmRelContratoDetalhado.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  Height := 300;
  Width := 717;
end;

procedure TFrmRelContratoDetalhado.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
