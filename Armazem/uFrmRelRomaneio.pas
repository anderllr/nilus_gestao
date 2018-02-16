unit uFrmRelRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, DBXCommon;

type
  TFrmRelRomaneio = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    DBEidCadEmpresa: TCDBEdit;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    CGroupBox1: TCGroupBox;
    DBEidProduto: TCDBEdit;
    CLabel7: TCLabel;
    LookdescProduto: TCLookUp;
    CBitBtn1: TCBitBtn;
    CLabel30: TCLabel;
    DBEidSafra: TCDBEdit;
    LookdescSafra: TCLookUp;
    CBitBtn7: TCBitBtn;
    CLabel3: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtFinal: TCDBEdit;
    LookidCnpjCpf: TCLookUp;
    CLabel1: TCLabel;
    CLabel5: TCLabel;
    LookidInscEstadual: TCLookUp;
    FindProduto: TCFind;
    FindCliente: TCFind;
    FindSafra: TCFind;
    CLabel6: TCLabel;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    cdsPadraoidCadCliente: TIntegerField;
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelRomaneio: TFrmRelRomaneio;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal, uFrmPesClienteFiscal;
{$R *.dfm}

procedure TFrmRelRomaneio.actGerarExecute(Sender: TObject);
var
sql : string;
begin
  cdsRelatorio.Active := false;
  // Montando o Select para o Relatório =================================================================================
  sql := 'SELECT * FROM vImpRomaneio ';
  if ((trim(DBEidProduto.Text) <> '' )) then
  begin
    sql := sql + ' WHERE idProduto = ' + funcao.RetornaValorEField(DBEidProduto, 3);
  end;
  if ((trim(DBEidSafra.Text) <> '' )) then
  begin
    if ((trim(DBEidProduto.Text) <> '' )) then
      sql := sql + ' AND idSafra = ' + funcao.RetornaValorEField(DBEidSafra, 3)
    else
      sql := sql + ' WHERE idSafra = ' + funcao.RetornaValorEField(DBEidSafra, 3);
  end;
  if ((trim(DBEidCliente.Text) <> '' )) then
  begin
    if ((trim(DBEidProduto.Text) <> '' ) AND (trim(DBEidSafra.Text) <> '' )) then
      sql := sql + ' AND idCliente = ' + funcao.RetornaValorEField(DBEidCliente, 3)
                 + ' AND idCadCliente = ' + funcao.RetornaValorEField(DBEidCadCliente, 3)
    else
      sql := sql + ' WHERE idCliente = ' + funcao.RetornaValorEField(DBEidCliente, 3)
                 + '   AND idCadCliente = ' + funcao.RetornaValorEField(DBEidCadCliente, 3);
  end;
  if ((trim(DBEdtInicial.Text) <> '' )) then
  begin
    if ((trim(DBEidProduto.Text) <> '' ) AND (trim(DBEidSafra.Text) <> '' ) AND (trim(DBEidCliente.Text) <> '' )) then
      sql := sql + ' AND dtRomaneio BETWEEN ' + QuotedStr(DBEdtInicial.Text) +  ' AND ' + QuotedStr(DBEdtFinal.Text)
    else
      sql := sql + ' WHERE dtRomaneio BETWEEN ' + QuotedStr(DBEdtInicial.Text) +  ' AND ' + QuotedStr(DBEdtFinal.Text)
  end;

  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := true;

  //=======================================================================================================================

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelRomaneios.fr3');
  (frxRel.FindComponent('LookdescCadEmpresa') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookdescCadEmpresa') as TfrxMemoView).Memo.Add(LookdescCadEmpresa.Caption);
  (frxRel.FindComponent('LookidCnpjCpf') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookidCnpjCpf') as TfrxMemoView).Memo.Add(LookidCnpjCpf.Caption);
  (frxRel.FindComponent('LookidInscEstadual') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookidInscEstadual') as TfrxMemoView).Memo.Add(LookidInscEstadual.Caption);
  (frxRel.FindComponent('LookdescProduto') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookdescProduto') as TfrxMemoView).Memo.Add(LookdescProduto.Caption);
  (frxRel.FindComponent('LookdescSafra') as TFrxMemoView).Memo.Clear;
  (frxRel.FindComponent('LookdescSafra') as TfrxMemoView).Memo.Add(LookdescSafra.Caption);
  
   frxRel.ShowReport;
end;

procedure TFrmRelRomaneio.DBEidClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
        FieldByName('idCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadCliente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmRelRomaneio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelRomaneio := nil;
end;

procedure TFrmRelRomaneio.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio := 'RelRomaneios.fr3';
  Width := 527;
  Height := 252 ;
  fiscal := true;
end;

procedure TFrmRelRomaneio.FormShow(Sender: TObject);
begin
  inherited;
  DBEidProduto.SetFocus;
end;

procedure TFrmRelRomaneio.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
