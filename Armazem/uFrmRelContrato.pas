unit uFrmRelContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox;

type
  TFrmRelContrato = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    CLabel13: TCLabel;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    frxRel: TfrxReport;
    cdsPadraoidContratoArm: TIntegerField;
    DBEidContratoArm: TCDBEdit;
    CLookUp1: TCLookUp;
    cdsPadraoidCadCliente: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadAdicional: TSmallintField;
    cdsPadraoidCadGeral: TIntegerField;
    FindCliente: TCFind;
    LookClienteFiscal: TCLookUp;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    procedure DBEidCadGeralKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoArmEnter(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelContrato: TFrmRelContrato;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal, uFrmPadraoRel, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmRelContrato.actGerarExecute(Sender: TObject);
begin
  if trim(DBEidCliente.Text) = '' then
    begin
      messagedlg('Você deve informar o código do cliente!', mtinformation, [mbok], 0);
      DBEidCliente.setfocus;
    end
   Else
     if (trim(DBEidContratoArm.Text) = '') then
        begin
          ShowMessage ('Digite o código do Contrato');
          DBEidContratoArm.setfocus;
        end
     else
       inherited;
{    cdsRelatorio.Active := false;
    cdsRelatorio.CommandText := 'EXEC spRelContrato ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ',' +
                               funcao.RetornaValorEField(DBEidCliente,3)+ ',' +
                               funcao.RetornaValorEField(DBEidCadCliente, 3) + ',' +
                               funcao.RetornaValorEField(DBEidContratoArm, 3);
  cdsRelatorio.Active := true;
  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + Relatorio);
  frxRel.ShowReport;
 }
end;
procedure TFrmRelContrato.DBEidCadGeralKeyDown(Sender: TObject;
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
        FieldByName('idCadGeral').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadAdicional').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadAdicional') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;


procedure TFrmRelContrato.DBEidClienteKeyDown(Sender: TObject;
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
        FieldByName('idCadGeral').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadAdicional').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadAdicional').Value;
        (Formulario.FindComponent('DBEidCadAdicional') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4

end;

procedure TFrmRelContrato.DBEidContratoArmEnter(Sender: TObject);
begin
  inherited;
  if trim(DBEidCliente.Text) = '' then
  begin
    messagedlg('Você deve informar o código do cliente!', mtinformation, [mbok], 0);
    DBEidCliente.setfocus;
    exit;
  end;
end;

procedure TFrmRelContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelContrato := nil;
end;

procedure TFrmRelContrato.FormCreate(Sender: TObject);
begin
  inherited;
  foco:=DBEidCliente;        //se fosse procedimento seria Proc:=('NomeProcedimento')
  tabela := 'vRelContratoArm'; //Recebe tanto View quanto Tabela
  relatorio := 'RelPlanoConta.fr3'; //Arquivo de Relatorio
  SetLength(parametro, 4);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBEidContratoArm;
  parametro[2] := DBEidCliente;
  parametro[3] := DBEidCadCliente;



  relatorio := 'RelContrato.fr3';
  Width := 527;
  Height := 177;
end;

procedure TFrmRelContrato.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
 dmPadrao.dbConexao.CloseDataSets;
end;

end.
