unit uFrmManutencaoFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, FMTBcd, CFind, DB, SqlExpr, DBClient, Provider, StdCtrls,
  DBCtrls, CDBCheckBox, CLookUp, Mask, CDBEdit, CLabel, Grids, DBGrids, CDBGrid,
  CGroupBox, ActnList, ImgList, Buttons, CBitBtn, ExtCtrls, CPanelGradient,
  ComCtrls, CPageControl, EditAlign, CEdit, CDBRadioGroup, System.Actions,
  System.ImageList;

type
  TFrmManutencaoFrete = class(TFrmPadrao)
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
    ImageList1: TImageList;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
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
    cdsPadraoidContratoIni: TIntegerField;
    cdsPadraoidContratoFim: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    dsPadrao: TDataSource;
    cdsGrid: TClientDataSet;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TIntegerField;
    cdsGrididRomaneio: TIntegerField;
    cdsGriddescMotorista: TStringField;
    cdsGriddtRomaneio: TSQLTimeStampField;
    cdsGrididCliente: TIntegerField;
    cdsGrididMotorista: TIntegerField;
    cdsGrididProduto: TIntegerField;
    cdsGrididSafra: TIntegerField;
    cdsGrididContratoFrete: TIntegerField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGridvlContratoFrete: TFMTBCDField;
    cdsGridstContratoFrete: TStringField;
    cdsGridtpContratoFrete: TStringField;
    cdsGridvlFrete: TFMTBCDField;
    dsGrid: TDataSource;
    dspGrid: TDataSetProvider;
    sdsPadrao: TSQLDataSet;
    sdsGrid: TSQLDataSet;
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    FindEmpresa: TCFind;
    cdsGrididUsuario: TIntegerField;
    cdsGridsel: TStringField;
    DBEidUsuario: TCDBEdit;
    cdsPadraoidUsuario: TIntegerField;
    DBRGtpFinanceiro: TCDBRadioGroup;
    CLabel34: TCLabel;
    EdSaldoFinal: TCEdit;
    cdsPadraotpFinanceiro: TStringField;
    BtnGerar: TCBitBtn;
    cdsGridvlTotal: TAggregateField;
    cdsGridfator: TIntegerField;
    cdsGridqtPesoBruto: TIntegerField;
    procedure BtnExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure GravaFinanceiro;
    procedure BtnGerarClick(Sender: TObject);
    procedure GeraFinRomaneio(tpCob, idFinanc : string);

  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;
    Inseriu : Boolean;
    idCadGeral, idCadEmpresa, idCadEmpresaMin : integer;
  public
    { Public declarations }
  end;

var
  FrmManutencaoFrete: TFrmManutencaoFrete;

implementation

uses uFuncao, uDmPadrao, uDmFind, uFrmPrincipal, uCadTituloRec, uFrmCadMovCaixa,
  uFrmCadMovConta, uCadTituloPag;

{$R *.dfm}

procedure TFrmManutencaoFrete.BtnExecutarClick(Sender: TObject);
var
  sql : string;
begin
  if DBEidCliente.Text = '' then
  begin
    MessageDlg('O Motorista deve ser informado', mtWarning, [mbOK], 0);
    DBEidCliente.SetFocus;
    Exit;
  end;

  EdSaldoFinal.Value := 0;
//  inherited;
 { sql := 'EXEC spCalcFrete ' + DBEidEmpresa.Text + ', ' +
                               DBEidCadEmpresa.Text + ', ' +
                               funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidContratoIni, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidContratoFim, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidCliente, 3) + ', ' +
                               funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                               funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                               funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                               funcao.RetornaValorEField(DBCKconsolidafilial, 3) + ', ' +
                               funcao.RetornaValorEField(DBEidUsuario, 3);}

 funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa, DBEidSafra, DBEidContratoIni,
                     DBEidContratoFim, DBEidCliente, DBEdtInicial, DBEdtFinal,
                     DBCKconsolidaemp, DBCKconsolidafilial, DBEidUsuario], 'spCalcFrete');
  cdsGrid.Active := false;
  cdsGrid.CommandText := 'SELECT * FROM tmpContratoFrete WHERE idUsuario = ' + QuotedStr(frmPrincipal.idUsuario);
  cdsGrid.Active := true;
end;

procedure TFrmManutencaoFrete.BtnGerarClick(Sender: TObject);
begin
  inherited;
  GravaFinanceiro;
end;

procedure TFrmManutencaoFrete.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('tpFinanceiro').AsString := 'T';
  DataSet.FieldByName('consolidaemp').AsString := 'N';
  DataSet.FieldByName('consolidafilial').AsString := 'N';
end;

procedure TFrmManutencaoFrete.DBGridCellClick(Column: TColumn);
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
        vlSel := EDSaldoFinal.Value;
        FieldByName('fator').AsInteger := 1;
        vlSomar := vlSel + FieldByName('vlFrete').AsFloat;
      end
      else
      begin
        vlSel := EDSaldoFinal.Value;
        FieldByName('fator').AsInteger := -1;
        vlSomar := vlSel - FieldByName('vlFrete').AsFloat;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
    EDSaldoFinal.Value := vlSomar;
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmManutencaoFrete.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmManutencaoFrete.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmManutencaoFrete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmManutencaoFrete := Nil;
end;

procedure TFrmManutencaoFrete.FormCreate(Sender: TObject);
begin
  inherited;
  cdsPadrao.CreateDataSet;
end;

procedure TFrmManutencaoFrete.FormShow(Sender: TObject);
begin
  inherited;
  Height := 534;
  Width := 900;
//  cdsGrid.Active := true;
  cdsPadrao.Append;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
  cdsPadrao.FieldByName('idUsuario').AsString := frmPrincipal.idUsuario;
//  cdsPadrao.FieldByName('consolida').AsBoolean := false;
  Self.FOriginalOptions := Self.DBGrid.Options;
  Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
end;

procedure TFrmManutencaoFrete.GeraFinRomaneio(tpCob, idFinanc : string);
var
  sql : String;
Begin
  //Após Gerar o Financeiro faz Vinculo com os Romaneio
  if tpCob = 'TPAG' then
  begin
    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if cdsGrid.FieldByName('sel').AsString = 'S' then
      begin
        sql := 'INSERT INTO RomaneioFinancFrete (idEmpresa, idCadEmpresa, idRomaneio, idTituloPag) ' +
               'VALUES (' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                        cdsGrididRomaneio.AsString + ', ' + idFinanc + ')';
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      cdsGrid.Next;
    end;
  end
  else
    if tpCob = 'CXA' then
    begin
      cdsGrid.First;
      while not cdsGrid.Eof do
      begin
        if cdsGrid.FieldByName('sel').AsString = 'S' then
        begin
          sql := 'INSERT INTO RomaneioFinancFrete (idEmpresa, idCadEmpresa, idRomaneio, idMovCaixa) ' +
                 'VALUES (' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                            cdsGrididRomaneio.AsString + ', ' + idFinanc + ')';
          dmPadrao.dbConexao.ExecuteDirect(sql);
        end;
        cdsGrid.Next;
      end;
    end
    else
      if tpCob = 'CTA' then
      begin
        cdsGrid.First;
        while not cdsGrid.Eof do
        begin
          if cdsGrid.FieldByName('sel').AsString = 'S' then
          begin
            sql := 'INSERT INTO RomaneioFinancFrete (idEmpresa, idCadEmpresa, idRomaneio, idMovConta) ' +
                   'VALUES (' + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text + ', ' +
                              cdsGrididRomaneio.AsString + ', ' + idFinanc + ')';
            dmPadrao.dbConexao.ExecuteDirect(sql);
          end;
          cdsGrid.Next;
        end;
      end;
end;

procedure TFrmManutencaoFrete.GravaFinanceiro;
var
  sql : String;
  id : Integer;
begin
  begin
    if cdsPadrao.FieldByName('tpFinanceiro').AsString = '' then
    begin
      MessageDlg('Favor selecionar um modo de cobrança!', mtError, [mbOK], 0);
      exit;
    end;
    if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'T' then
    begin
      if not Assigned(FrmCadTituloPag) then
        sql := 'SELECT MAX(idTituloPag) As Id FROM TituloPag WHERE idEmpresa = ' + DBEidEmpresa.Text +
               ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND idFornecedor = ' + cdsGrididMotorista.AsString +
               ' AND idDocSerie = ' + QuotedStr('TPAG');
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if FieldByName('Id').IsNull then
           id := 1
          else
           id := FieldByName('Id').AsInteger +1;
        end;
        FrmCadTituloPag := TFrmCadTituloPag.create(Self, ['CONTRATO FRETE', cdsGrid.FieldByName('idContratoFrete').AsString]);
        FrmCadTituloPag.cdsPadraoidFornecedor.AsInteger := cdsGrididMotorista.AsInteger;
        FrmCadTituloPag.cdsPadraonrTituloPag.AsInteger := id;
        FrmCadTituloPag.DBEtpDocumento.SetFocus;
        FrmCadTituloPag.Show;
//        GeraFinRomaneio;
    end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
    else
      if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'C' then
      begin
        if not Assigned(FrmCadMovCaixa) then
          FrmCadMovCaixa := TFrmCadMovCaixa.create(Self, ['CONTRATO FRETE', cdsGrid.FieldByName('idContratoFrete').AsString]);
          FrmCadMovCaixa.Show;
//          GeraFinRomaneio;
      end //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
      else
        if cdsPadrao.FieldByName('tpFinanceiro').AsString = 'B' then
        begin
          if not Assigned(FrmCadMovConta) then
            FrmCadMovConta := TFrmCadMovConta.create(Self, ['CONTRATO FRETE', cdsGrid.FieldByName('idContratoFrete').AsString]);
            FrmCadMovConta.Show;
//            GeraFinRomaneio;
        end; //if cdsPadrao.FieldByName('tpCobranca').AsString = 'A' then
  end;
end;

end.
