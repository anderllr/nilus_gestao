unit uFrmRelRentContratoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, CFind, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, CDBRadioGroup, CDBCheckBox,
  System.Actions, System.ImageList, frxExportXLSX;

type
  TFrmRelRentContratoVenda = class(TFrmPadraoRelEmpresa)
    FrxRel: TfrxReport;
    DBEidCliente: TCDBEdit;
    LookCliente: TCLookUp;
    DBEdtContratoIni: TCDBEdit;
    DBEdtContratoFim: TCDBEdit;
    DBEidContrato: TCDBEdit;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    lblCliFor: TCLabel;
    CLabel3: TCLabel;
    CLabel6: TCLabel;
    CLabel1: TCLabel;
    CLabel5: TCLabel;
    CLabel4: TCLabel;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidContratoVenda: TStringField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraodtContratoIni: TDateTimeField;
    cdsPadraodtContratoFim: TDateTimeField;
    cdsPadraotpCalcNaoEmb: TStringField;
    DBRGtpCalcNaoEmb: TCDBRadioGroup;
    DBRGtpDespesa: TCDBRadioGroup;
    cdsPadraotpDespesa: TStringField;
    DBCKAFixar: TCDBCheckBox;
    cdsPadraoAFixar: TStringField;
    cdsPadraoconsolidaEmp: TStringField;
    cdsPadraoconsolidaFilial: TStringField;
    DBCKconsolidaemp: TCDBCheckBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBRGtpCusto: TCDBRadioGroup;
    cdsPadraotpCusto: TStringField;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    par : integer;
  end;

var
  FrmRelRentContratoVenda: TFrmRelRentContratoVenda;

implementation

uses uDmPadrao, uFrmCadFuncao, uFuncao, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmRelRentContratoVenda.actGerarExecute(Sender: TObject);
var
  sql, caminho_rel, tp_relatorio, msg: string;
begin
//  inherited;
  msg := '';
  if ((DBEdtContratoIni.Text = '') or (DBEdtContratoFim.Text = '')) then
    msg := 'O intervalo de data deve ser informado!' + #13;

  if ((DBEidProduto.Text = '')) then
    msg := msg + 'O produto deve ser informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  sql := 'EXEC spRelRentabilidadeContrato ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidCliente, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidContrato, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidProduto, 3) + ', '
                                 + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtContratoIni, 3) + ', '
                                 + funcao.RetornaValorEField(DBEdtContratoFim, 3) + ', '
                                 + funcao.RetornaValorEField(DBRGtpCalcNaoEmb, 3) + ', '
                                 + funcao.RetornaValorEField(DBRGtpDespesa, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKAFixar, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', '
                                 + funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', '
                                 + funcao.RetornaValorEField(DBRGtpCusto, 3);


    //configura o padrão da empresa
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresa.FieldByName('idEmpresa').AsString + ', ' + cdsEmpresa.FieldByName('idCadEmpresa').AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  cdsRelatorio.Active := false;
  cdsRelatorio.CommandText := sql;

  caminho_rel := frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM CadConfig').FieldByName('caminho_rel').AsString;
  caminho_rel := caminho_rel + relatorio;
  if not FileExists(caminho_rel) then
  begin
    messagedlg('Arquivo de relatório não encontrado!', mtwarning, [mbok], 0);
    exit;
  end;
  frxRel.LoadFromFile(caminho_rel);

  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_CLIENTE') as TfrxMemoview).Text := trim(LookCliente.Caption);

  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MCONTRATO') as TfrxMemoview).Text := trim(DBEidContrato.Text);

  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_INICIAL') as TfrxMemoview).Text := DBEdtContratoIni.Text;

  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDT_FINAL') as TfrxMemoview).Text := DBEdtContratoFim.Text;

  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_SAFRA') as TfrxMemoview).Text := trim(LookSafra.Caption);

  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).clear;
  (frxRel.FindComponent('MDESC_PRODUTO') as TfrxMemoview).Text := trim(LookProduto.Caption);

  (frxRel.FindComponent('MNAO_CALCULA') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MMEDIA') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MULTIMA') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MCOTACAO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MESTIMADA') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MREALIZADA') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MCUSTOMEDIO') as TfrxMemoview).Clear;
  (frxRel.FindComponent('MALOCADO') as TfrxMemoview).Clear;

  if cdsPadraotpCalcNaoEmb.AsString = 'N' then
    (frxRel.FindComponent('MNAO_CALCULA') as TfrxMemoview).Text := 'X'
  else
    if cdsPadraotpCalcNaoEmb.AsString = 'M' then
      (frxRel.FindComponent('MMEDIA') as TfrxMemoview).Text := 'X'
    else
      if cdsPadraotpCalcNaoEmb.AsString = 'U' then
        (frxRel.FindComponent('MULTIMA') as TfrxMemoview).Text := 'X'
      else
        if cdsPadraotpCalcNaoEmb.AsString = 'C' then
          (frxRel.FindComponent('MCOTACAO') as TfrxMemoview).Text := 'X';

  if cdsPadraotpDespesa.AsString = 'E' then
    (frxRel.FindComponent('MESTIMADA') as TfrxMemoview).Text := 'X'
  else
    (frxRel.FindComponent('MREALIZADA') as TfrxMemoview).Text := 'X';

  if cdsPadraotpCusto.AsString = 'C' then
    (frxRel.FindComponent('MALOCADO') as TfrxMemoview).Text := 'X'
  else
    (frxRel.FindComponent('MCUSTOMEDIO') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).clear;
  if DBCKAFixar.Checked then
    (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).clear;
  if DBCKconsolidaemp.Checked then
    (frxRel.FindComponent('MCONSOLIDAEMP') as TfrxMemoview).Text := 'X';

  (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).clear;
  if DBCKconsolidafilial.Checked then
    (frxRel.FindComponent('MCONSOLIDAFILIAL') as TfrxMemoview).Text := 'X';

  frxRel.ShowReport;

end;

procedure TFrmRelRentContratoVenda.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraotpCalcNaoEmb.AsString := 'N';
  cdsPadraotpDespesa.AsString := 'E';
  cdsPadraoAFixar.AsString := 'N';
  cdsPadraoconsolidaEmp.AsString := 'N';
  cdsPadraoconsolidaFilial.AsString := 'N';
  cdsPadraotpCusto.AsString := 'C';
end;

procedure TFrmRelRentContratoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelRentContratoVenda := nil;
end;

procedure TFrmRelRentContratoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelRentContratoVenda.fr3';
  par := 0;
  Height := 400;
  Width :=  550;
  foco := DBEidCliente;
end;

procedure TFrmRelRentContratoVenda.FrxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.
