unit uFrmComissaoContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, FMTBcd, CFind, DB, SqlExpr, DBClient, Provider, StdCtrls,
  DBCtrls, CDBCheckBox, CLookUp, Mask, CDBEdit, CLabel, Grids, DBGrids, CDBGrid,
  CGroupBox, ActnList, ImgList, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  ComCtrls, CPageControl, EditAlign, CEdit, CDBRadioGroup, System.Actions;

type
  TFrmComissaoContrato = class(TFrmPadrao)
    CPageControl1: TCPageControl;
    TabSheet1: TTabSheet;
    GrupoGrid: TCGroupBox;
    DBGrid: TCDBGrid;
    CPanelGradient1: TCPanelGradient;
    BtnExecutar: TCBitBtn;
    CBitBtn1: TCBitBtn;
    PanTopo: TCPanelGradient;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    CLabel23: TCLabel;
    CLabel8: TCLabel;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    PanEmpresa: TCPanelGradient;
    lblEmpresa: TCLabel;
    lblCNPJ: TCLabel;
    lblInscricao: TCLabel;
    DBEidEmpresa: TCDBEdit;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    lookidCnpjCpf: TCLookUp;
    LookidInscEstadual: TCLookUp;
    DBEidCliente: TCDBEdit;
    LookDescCadCliente: TCLookUp;
    LookDescAbreviadaCliente: TCLookUp;
    LookidCnpjCpfCliente: TCLookUp;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    DBEidContratoIni: TCDBEdit;
    DBEidContratoFim: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    DBEidUsuario: TCDBEdit;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    dspPadrao: TDataSetProvider;
    cdsPadrao: TClientDataSet;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidCliente: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidUsuario: TIntegerField;
    cdsPadraotpFinanceiro: TStringField;
    dsPadrao: TDataSource;
    cdsGrid: TClientDataSet;
    cdsGridvlTotal: TAggregateField;
    dsGrid: TDataSource;
    dspGrid: TDataSetProvider;
    sdsPadrao: TSQLDataSet;
    sdsGrid: TSQLDataSet;
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    FindEmpresa: TCFind;
    DBRGtpFinanceiro: TCDBRadioGroup;
    CLabel34: TCLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    ImageList1: TImageList;
    BtnGerar: TCBitBtn;
    cdsPadraoidContratoIni: TStringField;
    cdsPadraoidContratoFim: TStringField;
    DBRGtpContrato: TCDBRadioGroup;
    cdsPadraotpContrato: TStringField;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TSmallintField;
    cdsGrididContrato: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGrididCadGeral: TIntegerField;
    cdsGriddescCadGeral: TStringField;
    cdsGriddescAbreviada: TStringField;
    cdsGridstContrato: TStringField;
    cdsGridvlComissao: TFMTBCDField;
    cdsGridsel: TStringField;
    cdsGridtpContrato: TStringField;
    DBEdtVencimento: TCDBEdit;
    CLabel1: TCLabel;
    cdsPadraodtVencimento: TDateTimeField;
    cdsPadraoobsTituloPag: TStringField;
    DBEobsTituloPag: TCDBEdit;
    cdsGrididCadAdicional: TSmallintField;
    cdsPadraovlSaldoFinal: TCurrencyField;
    DBEvlSaldoFinal: TCDBEdit;
    btnNenhum: TCBitBtn;
    BtnSelTodos: TCBitBtn;
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure BtnExecutarClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGerarClick(Sender: TObject);
    function ConfigFinancOK: boolean;
    procedure BtnSelTodosClick(Sender: TObject);
    procedure btnNenhumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     FOriginalOptions : TDBGridOptions;
    qtSel : integer;
    Inseriu, Sel : Boolean;
    idCadGeral, idCadEmpresa, idCadEmpresaMin : integer;
  end;

var
  FrmComissaoContrato: TFrmComissaoContrato;

implementation

uses uFrmPrincipal, uFrmCadMovCaixa, uCadTituloPag,  uFrmCadMovConta, uDmPadrao,
  uFuncao;

{$R *.dfm}

procedure TFrmComissaoContrato.BtnExecutarClick(Sender: TObject);
var
  sql : String;
begin
  inherited;
  cdsPadraovlSaldoFinal.AsCurrency := 0;
  if Trim(DBEidCliente.Text) = '' then
  begin
    MessageDlg('Representante deve ser informado', mtWarning, [mbOK], 0);
    exit;
  end;

  if Trim(DBEidSafra.Text) = '' then
  begin
    MessageDlg('A Safra deve ser informada', mtWarning, [mbOK], 0);
    exit;
  end;

  sql := 'EXEC spRetComissaoContrato ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) + ', ' +
         funcao.RetornaValorEField(DBEidCliente, 3) + ', ' + funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
         funcao.RetornaValorEField(DBEidContratoIni, 3) + ', ' + funcao.RetornaValorEField(DBEidContratoFim, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' + funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
         funcao.RetornaValorEField(DBRGtpContrato, 3) + ', ' + funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
         funcao.RetornaValorEField(DBCKconsolidaFilial, 3);

  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;

  BtnSelTodos.Enabled := cdsGrid.RecordCount > 0;
  btnNenhum.Enabled := false;
end;

procedure TFrmComissaoContrato.BtnGerarClick(Sender: TObject);
var
  sqlV, sqlC, obsV, obsC, idTituloPag : string;
begin
  inherited;
  if not ConfigFinancOK then
    exit;

  if trim(DBEdtVencimento.Text) = '' then
  begin
    messagedlg('A data de vencimento precisa ser informada!', mtwarning, [mbok], 0);
    exit;
  end;

  if Trim(DBEidSafra.Text) = '' then
  begin
    MessageDlg('A Safra deve ser informada', mtWarning, [mbOK], 0);
    exit;
  end;

  //Faz um loop para montar a observação
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsString = 'S' then
    begin
      if cdsGridtpContrato.AsString = 'VENDA' then
      begin
        if trim(obsV) <> '' then
          obsV := obsV + ', ' + cdsGrididContrato.AsString
        else
          obsV := cdsGrididContrato.AsString;
      end
      else
      begin
        if trim(obsC) <> '' then
          obsC := obsC + ', ' + cdsGrididContrato.AsString
        else
          obsC := cdsGrididContrato.AsString;
      end;
    end;// fim da verificação se está selecionado

    cdsGrid.Next;
  end;
  cdsPadraoobsTituloPag.AsString := copy('Ref.Comissão Contratos - Venda: ' + obsV + ' - Compra: ' + obsC, 1, 250);;
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidCliente, DBEidSafra,
                                   DBEvlSaldoFinal, DBEdtVencimento, DBEobsTituloPag], 'spGeraTituloComissao', '') do
  begin
    if FieldByName('msg').AsString <> 'OK' then
      exit;
      //Faz um loop para montar a observação
    cdsGrid.First;
    idTituloPag := FieldByName('idTituloPag').AsString;

    while not cdsGrid.Eof do
    begin
      if cdsGridsel.AsString = 'S' then
      begin
        if cdsGridtpContrato.AsString = 'COMPRA' then
        begin
          sqlC := 'INSERT INTO ContratoCompraComFinanc (idEmpresa, idCadEmpresa, idFornecedor, idCadFornecedor, idContratoCompra, idTituloPag) VALUES (' +
                  cdsGrididEmpresa.AsString + ', ' + cdsGrididCadEmpresa.AsString + ', ' + cdsGrididCadGeral.AsString + ', ' + cdsGrididCadAdicional.AsString +
                  ', ' + QuotedStr(cdsGrididContrato.AsString) + ', ' + idTituloPag + ' )';
          dmPadrao.dbConexao.ExecuteDirect(sqlC);
        end
        else
        begin
          sqlV := 'INSERT INTO ContratoVendaComFinanc (idEmpresa, idCadEmpresa, idCliente, idContratoVenda, idContratoVendaComissao, idTituloPag) VALUES (' +
                  cdsGrididEmpresa.AsString + ', ' + cdsGrididCadEmpresa.AsString + ', ' + cdsGrididCadGeral.AsString + ', ' + QuotedStr(cdsGrididContrato.AsString) +
                  ', 1, ' + idTituloPag + ' )';
          dmPadrao.dbConexao.ExecuteDirect(sqlV);
        end;
      end; //fim do if cdsGridsel.AsString = 'S' then
      cdsGrid.Next;
    end;
  end; //fim do with

  messagedlg('Título Gerado com sucesso!', mtInformation, [mbok], 0);
  BtnExecutar.Click;

  //Agora abre a tela do título
  if not Assigned(FrmCadTituloPag) then
    FrmCadTituloPag := TFrmCadTituloPag.create(Self, [idTituloPag]);
  FrmCadTituloPag.Show;
end;

procedure TFrmComissaoContrato.btnNenhumClick(Sender: TObject);
begin
  inherited;
  qtSel := 0;
  cdsPadraovlSaldoFinal.AsCurrency := 0;
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if not (cdsGrid.State in [dsEdit, dsInsert]) then
      cdsGrid.Edit;
    cdsGridsel.AsString := 'N';
    cdsGrid.Next;
  end;
  cdsGrid.First;

  btnNenhum.Enabled := false;
  btnSelTodos.Enabled := true;
  btnGerar.Enabled := false;
end;

procedure TFrmComissaoContrato.BtnSelTodosClick(Sender: TObject);
begin
  inherited;
  qtSel := cdsGrid.RecordCount;
  cdsGrid.First;
  cdsPadraovlSaldoFinal.AsCurrency := 0;
  while not cdsGrid.Eof do
  begin
    if not (cdsGrid.State in [dsEdit, dsInsert]) then
      cdsGrid.Edit;
    cdsGridsel.AsString := 'S';
    //agora atualiza o valor
    cdsPadraovlSaldoFinal.AsCurrency := cdsPadraovlSaldoFinal.AsCurrency + cdsGridvlComissao.AsCurrency;
    cdsGrid.Next;
  end;
  cdsGrid.First;

  btnNenhum.Enabled := true;
  btnSelTodos.Enabled := false;
  btnGerar.Enabled := true;
end;

procedure TFrmComissaoContrato.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('tpFinanceiro').AsString := 'T';
  DataSet.FieldByName('tpContrato').AsString := 'A';
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  DataSet.FieldByName('consolidafilial').AsString := 'N';
end;

function TFrmComissaoContrato.ConfigFinancOK: boolean;
//Função que verificará se as parametrizações foram antecipadamente informadas
//tpConsulta A: Adiantamento  -  S - Saldo
var
  msg : string;
begin
  msg := '';
  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa], '', 'ConfigProducao') do
  begin
    if trim(FieldByName('idDocSerieComissao').AsString) = '' then
      msg := msg + 'É preciso informar a série na configuração!' + #13;

    if FieldByName('idGerencialComissao').AsInteger = 0 then
      msg := msg + 'É preciso informar o gerencial na configuração!' + #13;

    if FieldByName('idResultadoComissao').AsInteger = 0 then
      msg := msg + 'É preciso informar o resultado na configuração!' + #13;
  end;
  if trim(msg) <> '' then
  begin
    Result := false;
    msg := msg + 'Tela: [Cadastros - Config. Produção]';
    messagedlg(msg, mtwarning, [mbok], 0);
  end
  else
    Result := true;
end;

procedure TFrmComissaoContrato.DBGridCellClick(Column: TColumn);
var
  vlSomar, vlSel : Currency;
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
        begin
          idCadGeral := 0;
          idCadEmpresa := 0;
          idCadEmpresaMin := 0;
        end;
      end
      else
      begin
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
        idCadGeral := FieldByName('idEmpresa').AsInteger;
        idCadEmpresa := FieldByName('idCadEmpresa').AsInteger;
        if idCadEmpresaMin = 0 then
          idCadEmpresaMin := idCadEmpresa
        else
          if idCadEmpresa < idCadEmpresaMin then
            idCadEmpresaMin := idCadEmpresa;
      end;
      if FieldByName('sel').AsString = 'S' then
      begin
        vlSel := cdsPadraovlSaldoFinal.AsCurrency;
        vlSomar := vlSel + FieldByName('vlComissao').AsFloat;
      end
      else
      begin
        vlSel := cdsPadraovlSaldoFinal.AsCurrency;
        vlSomar := vlSel - FieldByName('vlComissao').AsFloat;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
    cdsPadraovlSaldoFinal.AsCurrency := vlSomar;
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;

  btnNenhum.Enabled := qtSel > 0;
  btnGerar.Enabled := qtSel > 0;
  btnSelTodos.Enabled := cdsGrid.RecordCount > qtSel;
end;

procedure TFrmComissaoContrato.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmComissaoContrato.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
  cor : String;
begin
  inherited;
  Cor := 'clWhite';
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

  if (marca) and (Column.Index > 0) then
  begin
//    Cor := cdsConfigFinancCons.FieldByName('CorREC').AsString;
//    if (trim(Cor) <> '') and (trim(Cor) <> 'clWhite') then
//    begin
//      DBGrid.Canvas.Brush.Color := StringToColor(Cor); // coloque aqui a cor desejada
//      DBGrid.DefaultDrawDataCell(Rect, DBGrid.columns[datacol].field, State);
//    end;
  end;
//  if (Column = 1) and (ARow >= 1) then
  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
    DBGrid.Canvas.Brush.Color := StringToColor(Cor);
  end;
end;

procedure TFrmComissaoContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmComissaoContrato := nil;
end;

procedure TFrmComissaoContrato.FormCreate(Sender: TObject);
begin
  inherited;
  cdsPadrao.CreateDataSet;
end;

procedure TFrmComissaoContrato.FormShow(Sender: TObject);
begin
  inherited;
  Height := 570;
  Width := 870;
//  cdsGrid.Active := true;
  cdsPadrao.Append;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
  cdsPadrao.FieldByName('idUsuario').AsString := frmPrincipal.idUsuario;
//  cdsPadrao.FieldByName('consolida').AsBoolean := false;
  Self.FOriginalOptions := Self.DBGrid.Options;
  Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
  DBEidCliente.SetFocus;
end;

end.

