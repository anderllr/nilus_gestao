unit uFrmPesContratoArm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisa, DB, DBClient, Provider, ActnList, ImgList,
  StdCtrls, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, Mask, DBCtrls, CDBEdit, CLabel, FMTBcd, SqlExpr, CLookUp, CFind;

type
  TFrmPesContratoArm = class(TFrmPadraoPesquisa)
    CLabel42: TCLabel;
    FindCliente: TCFind;
    CLabel3: TCLabel;
    DBEidCadGeral: TCDBEdit;
    DBEidCadAdicional: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    FindContrato: TCFind;
    CLookUp1: TCLookUp;
    DBEidContratoArm: TCDBEdit;
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    dspProtudo: TDataSetProvider;
    sdsProduto: TSQLDataSet;
    cdsGriddescProduto: TStringField;
    cdsGrididContratoArm: TIntegerField;
    cdsGrididCadGeral: TIntegerField;
    cdsGrididCadAdicional: TSmallintField;
    cdsGrididProduto: TIntegerField;
    cdsGriddescContratoArm: TStringField;
    cdsGriddtContratoArm: TSQLTimeStampField;
    cdsGridqtProduto: TFMTBCDField;
    cdsGridvlContratoArm: TFMTBCDField;
    cdsGridobsContratoArm: TStringField;
    cdsGridstContratoArm: TStringField;
    cdsGridnrContratoArm: TStringField;
    cdsGridtpContratoArm: TStringField;
    cdsGridvlFrete: TFMTBCDField;
    procedure DBEidContratoArmEnter(Sender: TObject);
    procedure DBEidCadGeralKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesContratoArm: TFrmPesContratoArm;

implementation

uses uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmPesContratoArm.actExecutarExecute(Sender: TObject);
begin
  if trim(DBEidCadGeral.Text) = '' then
  begin
    messagedlg('Você deve informar o código do cliente!', mtinformation, [mbok], 0);
    DBEidCadGeral.setfocus;
    exit;
  end;

  inherited;
end;

procedure TFrmPesContratoArm.DBEidCadGeralKeyDown(Sender: TObject;
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

procedure TFrmPesContratoArm.DBEidContratoArmEnter(Sender: TObject);
begin
  inherited;
  if trim(DBEidCadGeral.Text) = '' then
  begin
    messagedlg('Você deve informar o código do cliente!', mtinformation, [mbok], 0);
    DBEidCadGeral.setfocus;
    exit;
  end;
end;

end.
