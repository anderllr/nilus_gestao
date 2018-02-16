unit uFrmNotaGlogal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpContabil, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, DBXCommon, CDBComboBox;

type
  TFrmNotaGlobal = class(TFrmPadraoPesqEmpContabil)
    Bevel2: TBevel;
    Bevel1: TBevel;
    CLabel3: TCLabel;
    DBEdtInicial: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtFinal: TCDBEdit;
    CPanelGradient1: TCPanelGradient;
    BtnGerarNota: TCBitBtn;
    CBitBtn2: TCBitBtn;
    actGeraNota: TAction;
    cdsNota: TClientDataSet;
    dsNota: TDataSource;
    cdsNotadtCompensacao: TDateTimeField;
    DBEidCadEmpresa: TCDBEdit;
    DBCBtpNota: TCDBComboBox;
    CLabel4: TCLabel;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraotpNota: TStringField;
    LblCad: TCLabel;
    DBEidCliente: TCDBEdit;
    DBEidCadCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    cdsGridsel: TStringField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TIntegerField;
    cdsGrididRomaneio: TIntegerField;
    cdsGrididCliente: TIntegerField;
    cdsGrididCadCliente: TIntegerField;
    cdsGrididProdDeposito: TIntegerField;
    cdsGrididResultado: TIntegerField;
    cdsGrididProduto: TIntegerField;
    cdsGrididSafra: TIntegerField;
    cdsGrididMotorista: TSmallintField;
    cdsGriddescCliente: TStringField;
    cdsGriddescSafra: TStringField;
    cdsGriddtRomaneio: TSQLTimeStampField;
    cdsGriddescProdDeposito: TStringField;
    cdsGriddescResultado: TStringField;
    cdsGriddescProduto: TStringField;
    cdsGridqtPesoBruto: TBCDField;
    cdsGridqtPesoTara: TBCDField;
    cdsGridqtProdDesconto: TBCDField;
    cdsGridqtPesoLiquido: TBCDField;
    cdsGrididNfET: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraoidCadCliente: TIntegerField;
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actGeraNotaExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel, idCliente : integer;        
  public
    { Public declarations }
    idEmpresa : integer;
  end;

var
  FrmNotaGlobal: TFrmNotaGlobal;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoPesquisa, uFrmNfE,
     uFrmNotaFiscal, uFrmPesClienteFiscal;

{$R *.dfm}

procedure TFrmNotaGlobal.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  sql :=  'EXEC spGeraTmpNfGlobal ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ',' +
                                      funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ',' +
                                      funcao.RetornaValorEField(DBEidCliente, 3) + ',' +
                                      funcao.RetornaValorEField(DBEidCadCliente, 3) + ',' +
                                      funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                                      funcao.RetornaValorEField(DBEdtFinal,3) + ',' +
                                      funcao.RetornaValorEField(DBCBtpNota,3);

  dmPadrao.dbConexao.ExecuteDirect(sql);

  sql := 'SELECT * FROM tmpNfGlobal';
  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  qtSel := 0;
  actGeraNota.Enabled := qtSel > 0;
  inherited;
end;

procedure TFrmNotaGlobal.actGeraNotaExecute(Sender: TObject);
begin
  inherited;
  if (trim(cdsPadrao.FieldByName('tpNota').AsString) = 'DEPOSITO') then
  begin
    if not Assigned(frmNfE) then
      frmNfE := TfrmNfE.create(Self, ['GLOBAL']);
      frmNfE.Show;
  end
  else
  begin
    if not Assigned(frmNotaFiscal) then
      frmNotaFiscal := frmNotaFiscal.create(Self, ['GLOBAL']);
      frmNotaFiscal.Show;
  end;

  //Limpa Grid para não ficar sujeira
  cdsGrid.Active := false;
  cdsGrid.CommandText := 'SELECT * FROM tmpNfGlobal WHERE 1=2';
  cdsGrid.Active := true;

end;

procedure TFrmNotaGlobal.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Rotina para inicializar o tipo do Romaneio
  if (Dataset.Name = 'cdsPadrao') and (DataSet.State = dsInsert) then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
    cdsPadrao.FieldByName('tpNota').AsString := 'DEPOSITO';
  end;
end;

procedure TFrmNotaGlobal.DBEidClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmNotaGlobal.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
      Edit;
      if FieldByName('sel').AsString = 'S' then
      begin
        FieldByName('sel').AsString := 'N';
        qtSel := qtSel - 1;
        if qtSel = 0 then
          idCliente := 0;
      end
      else
      begin
        if idCliente <> 0 then
          if idCliente <> FieldByName('idCliente').AsInteger then
          begin
            messagedlg('Não é possível selecionar Romaneios de dois fornecedores diferentes!', mtinformation, [mbok], 0);
            exit;
          end;
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
        idCliente := FieldByName('idCliente').AsInteger;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
  actGeraNota.Enabled := qtSel > 0;
  cdsGrid.ApplyUpdates(0);
end;

procedure TFrmNotaGlobal.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmNotaGlobal.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
begin
  inherited;
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
  end;
end;

procedure TFrmNotaGlobal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmNotaGlobal := nil;
end;

procedure TFrmNotaGlobal.FormCreate(Sender: TObject);
begin
  inherited;
  Width := 780;
  Height := 471;
end;

procedure TFrmNotaGlobal.FormShow(Sender: TObject);
begin
  inherited;
  DBCBtpNota.SetFocus;
  actGeraNota.Enabled := qtSel > 0;
  cdsNota.CreateDataSet;
  cdsNota.Append;
  idCliente := 0;
end;

end.
