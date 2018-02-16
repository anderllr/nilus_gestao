unit uFrmRelContratoPrevisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadraoRelEmpresa, CFind, Data.DB,
  frxExportMail, frxExportXLS, frxClass, frxDBSet, frxExportCSV, frxExportPDF,
  frxExportHTML, frxExportText, frxExportRTF, frxExportImage, Datasnap.DBClient,
  Datasnap.Provider, System.Actions, Vcl.ActnList, Vcl.ImgList, CLookUp,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit, Vcl.Buttons, CBitBtn,
  Vcl.ExtCtrls, CPanelGradient, CLabel, CGroupBox, CDBCheckBox, System.ImageList,
  CDBRadioGroup;

type
  TFrmRelContratoPrevisao = class(TFrmPadraoRelEmpresa)
    CGroupBox4: TCGroupBox;
    CLabel23: TCLabel;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    DBCKcompra: TCDBCheckBox;
    DBCKvenda: TCDBCheckBox;
    FrxRel: TfrxReport;
    cdsPadraoidContratoVenda: TStringField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraovenda: TStringField;
    cdsPadraocompra: TStringField;
    DBCKAFixar: TCDBCheckBox;
    cdsPadraoativos: TStringField;
    DBRGstContrato: TCDBRadioGroup;
    cdsPadraotpMercado: TStringField;
    cdsPadraomercado: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelContratoPrevisao: TFrmRelContratoPrevisao;

implementation

{$R *.dfm}

uses uDmPadrao, uFuncao, uFrmPrincipal;

procedure TFrmRelContratoPrevisao.actGerarExecute(Sender: TObject);
var
  sql, msg, caminho_rel, idPrevisao, tpMercado : String;
begin
//  inherited;
  if cdsPadraotpMercado.AsString = 'TODOS' then
    tpMercado := '%'
  else
    tpMercado := '%' + cdsPadraotpMercado.AsString + '%';

  if DBCKcompra.Checked then
  begin
    //Executa Busca das Previsões de compras
    sql := 'EXEC spRelContratoPrevisao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' +
            funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
            + funcao.RetornaValorEField(DBEidSafra, 3) + ', ' + Quotedstr('COMPRA')+ ', '
            + funcao.RetornaValorEField(DBCKAFixar, 3) + ', ' + QuotedStr(tpMercado);
    cdsRelatorio.Active := False;
    cdsRelatorio.CommandText := sql;
    cdsRelatorio.Active := True;
  end
  else
  if DBCkVenda.Checked then
  begin
        //Executa Busca das Previsões de compras
    sql := 'EXEC spRelContratoPrevisao ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', '
            + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', '
            + funcao.RetornaValorEField(DBEidSafra, 3) + ', '
            + Quotedstr('VENDA')  + ', '
            + funcao.RetornaValorEField(DBCKAFixar, 3)
            + ', ' + QuotedStr(tpMercado);
    cdsRelatorio.Active := False;
    cdsRelatorio.CommandText := sql;
    cdsRelatorio.Active := True;
  end;

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

  (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).clear;
  if DBCKAFixar.Checked then
    (frxRel.FindComponent('MAFIXAR') as TfrxMemoview).Text := 'X';

  frxRel.ShowReport;
end;

procedure TFrmRelContratoPrevisao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraotpMercado.AsString := 'TODOS';
  cdsPadraoativos.AsString := 'N';
  cdsPadraocompra.AsString := 'N';
  cdsPadraovenda.AsString := 'S';
end;

procedure TFrmRelContratoPrevisao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmRelContratoPrevisao := nil;
end;

procedure TFrmRelContratoPrevisao.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := True;
  relatorio := 'RelContratoPrevisao.fr3';
  foco := DBEidSafra;
end;

procedure TFrmRelContratoPrevisao.FormShow(Sender: TObject);
begin
  inherited;
  cdsPadrao.FieldByName('idEmpresa').AsInteger := cdsEmpresaidEmpresa.AsInteger;
  cdsPadrao.FieldByName('idCadEmpresa').AsInteger := cdsEmpresaidCadEmpresa.AsInteger;
//  cdsPadrao.FieldByName('compra').AsString := 'N';
//  cdsPadrao.FieldByName('venda').AsString := 'N';
  Height := 220;
  Width := 554;
end;

end.
