unit uFrmRelContratoCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, CFind, DB, SqlExpr, frxClass,
  frxDBSet, frxExportCSV, frxExportMail, frxExportODF, frxExportPDF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportText, frxExportRTF,
  frxExportImage, DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, uFrmPadraoRelEmpFiscal, System.Actions, CDBCheckBox,
  System.ImageList, CDBRadioGroup, frxExportXLSX;

type
  TFrmRelContratoCusto = class(TFrmPadraoRelEmpresa)
    CGroupBox4: TCGroupBox;
    CLabel12: TCLabel;
    DBEidContratoVenda: TCDBEdit;
    LookEmissaoVenda: TCLookUp;
    LookContratoVenda: TCLookUp;
    LookNrOriginal: TCLookUp;
    frxRel: TfrxReport;
    cdsPadraoidContratoVenda: TStringField;
    FindContrato: TCFind;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    LookCliente: TCLookUp;
    DBEidCliente: TCDBEdit;
    lblCliFor: TCLabel;
    cdsPadraoRomAConfirmar: TStringField;
    DBCKRomAConfirmar: TCDBCheckBox;
    DBCKAFixar: TCDBCheckBox;
    cdsPadraoAFixar: TStringField;
    DBRGtpCusto: TCDBRadioGroup;
    cdsPadraotpCusto: TStringField;
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
  FrmRelContratoCusto: TFrmRelContratoCusto;

implementation

uses uDmPadrao, uDmFind, uFrmPrincipal, uFrmPesContratoVenda, uFuncao;

{$R *.dfm}

procedure TFrmRelContratoCusto.actGerarExecute(Sender: TObject);
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

  //Executa a Procedure de Cabe�alho
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;

  //Executa Prodedure de Busca Principal
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := 'EXEC spRelContratoCusto ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBEidCliente, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBEidContratoVenda, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBCKRomAConfirmar, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBCKAFixar, 3) + ', ' +
                                                           funcao.RetornaValorEField(DBRGtpCusto, 3);
  cdsRelatorio.Active := True;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relat�rio n�o encontrado!', mtwarning, [mbok], 0);
    exit;
  end;

  frxRel.LoadFromFile(caminho_rel);

//  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).clear;
  //  (frxRel.FindComponent('MEMTITULO') as TfrxMemoview).Text := 'RESUMO DE CONTRATO' + #13 + '(VENDA)';

  (frxRel.FindComponent('MEMCLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MEMCLIENTE') as TfrxMemoview).Text := 'CLIENTE :';

  (frxRel.FindComponent('MEMEMBARQUE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MEMEMBARQUE') as TfrxMemoview).Text := 'DESCARGA :';

  (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).clear;
  if DBCKAFixar.Checked then
    (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MCUSTOMEDIO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MALOCADO') as TfrxMemoview).Clear;

  if cdsPadraotpCusto.AsString = 'C' then
    (frxRel.FindComponent('MALOCADO') as TfrxMemoview).Text := 'X'
  else
    (frxRel.FindComponent('MCUSTOMEDIO') as TfrxMemoview).Text := 'X';

  frxRel.ShowReport;
end;

procedure TFrmRelContratoCusto.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoRomAConfirmar.AsString := 'S';
  cdsPadraoAFixar.AsString := 'N';
  cdsPadraotpCusto.AsString := 'C';
end;

procedure TFrmRelContratoCusto.DBEidContratoVendaKeyDown(Sender: TObject;
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

procedure TFrmRelContratoCusto.DBEidEmpresaExit(Sender: TObject);
begin
  inherited;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
end;

procedure TFrmRelContratoCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoCusto := nil;
end;

procedure TFrmRelContratoCusto.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoCusto.fr3';
  par := 0;
  foco := DBEidCliente;
end;

procedure TFrmRelContratoCusto.FormShow(Sender: TObject);
begin
  inherited;
  if not (cdsPadrao.State = dsInsert) then
    cdsPadrao.Append;
  cdsPadraoidEmpresa.AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadraoidCadEmpresa.AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
  Height := 300;
  Width := 717;
end;

procedure TFrmRelContratoCusto.frxRelAfterPrint(
  Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
