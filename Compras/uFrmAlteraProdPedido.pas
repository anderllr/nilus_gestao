unit uFrmAlteraProdPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, CLookUp, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, CDBEdit, CLabel, CGroupBox, CDBMemo, Vcl.Buttons,
  CBitBtn, CPanelGradient, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, System.StrUtils;

type
  TFrmAlteraProdPedido = class(TForm)
    pan1: TPanel;
    CGroupBox4: TCGroupBox;
    lbl1: TCLabel;
    lbl2: TCLabel;
    DBEqtPedida: TCDBEdit;
    DBEidProduto: TCDBEdit;
    lbl3: TCLabel;
    DBEqtAtendida: TCDBEdit;
    lbl7: TCLabel;
    DBEqtSaldo: TCDBEdit;
    CGroupBox1: TCGroupBox;
    lbl10: TCLabel;
    lbl11: TCLabel;
    DBEqtPedida2: TCDBEdit;
    DBEidProduto2: TCDBEdit;
    BtnAlterar: TCBitBtn;
    BtnNovo: TCBitBtn;
    CPanelGradient1: TCPanelGradient;
    BtnFechar: TCBitBtn;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    Look1: TCLookUp;
    Look2: TCLookUp;
    dsProdAnterior: TDataSource;
    cdsProdAnterior: TClientDataSet;
    dspProdAnterior: TDataSetProvider;
    sdsProdAnterior: TSQLDataSet;
    cdsProdAnterioridEmpresa: TIntegerField;
    cdsProdAnterioridCadEmpresa: TSmallintField;
    cdsProdAnterioridPedidoCompra: TIntegerField;
    cdsProdAnterioridPedidoProd: TSmallintField;
    cdsProdAnterioridProduto: TIntegerField;
    cdsProdAnterioridMaquina: TIntegerField;
    cdsProdAnteriorqtPedida: TFMTBCDField;
    cdsProdAnteriorqtAtendida: TFMTBCDField;
    cdsProdAnteriorvlProduto: TFMTBCDField;
    cdsProdAnteriorvlTotal: TFMTBCDField;
    cdsProdAnteriorobsProduto: TStringField;
    cdsProdAnteriormarca: TStringField;
    cdsProdAnteriorqtDiasEntrega: TSmallintField;
    cdsProdAnteriordtEntrega: TSQLTimeStampField;
    cdsProdAnteriorstPedidoProd: TStringField;
    lbl4: TCLabel;
    DBEqtAtendida2: TCDBEdit;
    lbl5: TCLabel;
    DBEqtSaldo2: TCDBEdit;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    cdsPadraoidProduto: TIntegerField;
    lbl6: TCLabel;
    DBEidMaquina2: TCDBEdit;
    LookMaquina2: TCLookUp;
    lbl8: TCLabel;
    DBEvlProduto2: TCDBEdit;
    lbl9: TCLabel;
    DBEvlTotal2: TCDBEdit;
    lbl12: TCLabel;
    DBEmarca2: TCDBEdit;
    lbl13: TCLabel;
    DBEqtDiasEntrega2: TCDBEdit;
    lbl14: TCLabel;
    DBEdtEntrega2: TCDBEdit;
    lbl15: TCLabel;
    DBEstPedidoProd2: TCDBEdit;
    lbl16: TCLabel;
    DBMobsProduto2: TCDBMemo;
    lbl17: TCLabel;
    DBEidMaquina: TCDBEdit;
    LookMaquina: TCLookUp;
    lbl18: TCLabel;
    DBEvlProduto: TCDBEdit;
    lbl19: TCLabel;
    DBEvlTotal: TCDBEdit;
    lbl20: TCLabel;
    DBEmarca: TCDBEdit;
    lbl21: TCLabel;
    DBEqtDiasEntrega: TCDBEdit;
    lbl22: TCLabel;
    DBEdtEntrega: TCDBEdit;
    lbl23: TCLabel;
    DBEstPedidoProd: TCDBEdit;
    lbl24: TCLabel;
    DBMobsProduto: TCDBMemo;
    dsProdNovo: TDataSource;
    cdsProdNovo: TClientDataSet;
    dspProdNovo: TDataSetProvider;
    sdsProdNovo: TSQLDataSet;
    cdsPadraoidProduto2: TIntegerField;
    cdsProdNovoidEmpresa: TIntegerField;
    cdsProdNovoidCadEmpresa: TSmallintField;
    cdsProdNovoidPedidoCompra: TIntegerField;
    cdsProdNovoidPedidoProd: TSmallintField;
    cdsProdNovoidProduto: TIntegerField;
    cdsProdNovoidMaquina: TIntegerField;
    cdsProdNovoqtPedida: TFMTBCDField;
    cdsProdNovoqtAtendida: TFMTBCDField;
    cdsProdNovovlProduto: TFMTBCDField;
    cdsProdNovovlTotal: TFMTBCDField;
    cdsProdNovoobsProduto: TStringField;
    cdsProdNovomarca: TStringField;
    cdsProdNovoqtDiasEntrega: TSmallintField;
    cdsProdNovodtEntrega: TSQLTimeStampField;
    cdsProdNovostPedidoProd: TStringField;
    lbl25: TCLabel;
    DBEqtRetirada2: TCDBEdit;
    lbl26: TCLabel;
    DBEqtRetirada: TCDBEdit;
    cdsProdAnteriorqtRetirada: TFMTBCDField;
    cdsProdNovoqtRetirada: TFMTBCDField;
    cdsPadraoqtSaldo: TFMTBCDField;
    cdsPadraoqtSaldo2: TFMTBCDField;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure DBEidProduto2Exit(Sender: TObject);
    procedure DBEqtDiasEntrega2Exit(Sender: TObject);
    procedure DBEdtEntrega2Exit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DBEvlProduto2Exit(Sender: TObject);
    procedure DBMobsProduto2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEqtRetirada2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlteraProdPedido: TFrmAlteraProdPedido;

implementation

uses
  uFrmManutencaoPedido, uFuncao,uDmPadrao, uDmFind, uFrmPrincipal, uFrmCadPedidoCompra;

{$R *.dfm}

procedure TFrmAlteraProdPedido.BtnAlterarClick(Sender: TObject);
var
sql : string;
vlTotal : Currency;
begin
  // Verifica se o produto anterior é igual ao novo
  if cdsPadraoidProduto.Text = cdsPadraoidProduto2.Text then
  begin
    if MessageDlg('Deseja alterar o produto anterior?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        begin
          cdsProdAnterior.Close;
          cdsProdAnterior.CommandText := 'SELECT * FROM PedidoCompraProd WHERE idEmpresa = ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString +
                                                                         ' AND idCadEmpresa = ' + FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString +
                                                                         ' AND idPedidoCompra = ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString +
                                                                         ' AND idProduto = ' + funcao.RetornaValorEField(DBEidProduto2, 3);
          cdsProdAnterior.Open;

          cdsProdNovoidEmpresa.AsInteger      := FrmManutencaoPedido.cdsPadraoidEmpresa.AsInteger;
          cdsProdNovoidCadEmpresa.AsInteger   := FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsInteger;
          cdsProdNovoidPedidoCompra.AsInteger := FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsInteger;
          cdsProdNovoidPedidoProd.AsInteger   := cdsProdAnterioridPedidoProd.AsInteger;
          cdsProdNovoidProduto.AsInteger      := StrToInt(DBEidProduto2.Text);
          cdsProdNovoidMaquina.AsString       := DBEidMaquina2.Text;
          cdsProdNovoqtPedida.AsCurrency      := funcao.TiraPontoValor(DBEqtPedida2.Text);
          cdsProdNovoqtAtendida.AsCurrency    := funcao.TiraPontoValor(DBEqtAtendida2.Text);
          cdsProdNovoqtRetirada.AsCurrency    := funcao.TiraPontoValor(DBEqtRetirada2.Text);
          cdsProdNovovlProduto.AsString       := DBEvlProduto2.Text;
          cdsProdNovovlTotal.AsCurrency       := funcao.TiraPontoValor(DBEvlTotal2.Text);
          cdsProdNovoobsProduto.AsString      := DBMobsProduto2.Text;
          cdsProdNovomarca.AsString           := DBEmarca2.Text;
          cdsProdNovoqtDiasEntrega.AsString   := DBEqtDiasEntrega2.Text;
          cdsProdNovodtEntrega.AsString       := DBEdtEntrega2.Text;
          cdsProdNovostPedidoProd.AsString    := DBEstPedidoProd2.Text;
          cdsProdNovo.Post;

          cdsProdAnterior.Edit;
          cdsProdAnterioridEmpresa.AsInteger      := cdsProdNovoidEmpresa.AsInteger;
          cdsProdAnterioridCadEmpresa.AsInteger   := cdsProdNovoidCadEmpresa.AsInteger;
          cdsProdAnterioridPedidoCompra.AsInteger := cdsProdNovoidPedidoCompra.AsInteger;
          cdsProdAnterioridPedidoProd.AsInteger   := cdsProdNovoidPedidoProd.AsInteger;
          cdsProdAnterioridProduto.AsInteger      := cdsProdNovoidProduto.AsInteger;
          cdsProdAnterioridMaquina.AsString       := cdsProdNovoidMaquina.AsString;
          cdsProdAnteriorqtPedida.AsString        := cdsProdNovoqtPedida.AsString;
          cdsProdAnteriorqtAtendida.AsString      := cdsProdNovoqtAtendida.AsString;
          cdsProdAnteriorqtRetirada.AsString      := cdsProdNovoqtRetirada.AsString;
          cdsProdAnteriorvlProduto.AsString       := cdsProdNovovlProduto.AsString;
          cdsProdAnteriorvlTotal.AsString         := cdsProdNovovlTotal.AsString;
          cdsProdAnteriorobsProduto.AsString      := cdsProdNovoobsProduto.AsString;
          cdsProdAnteriormarca.AsString           := cdsProdNovomarca.AsString;
          cdsProdAnteriorqtDiasEntrega.AsString   := cdsProdNovoqtDiasEntrega.AsString;
          cdsProdAnteriordtEntrega.AsString       := cdsProdNovodtEntrega.AsString;
          cdsProdAnteriorstPedidoProd.AsString    := cdsProdNovostPedidoProd.AsString;
          cdsProdAnterior.Post;
          cdsProdAnterior.ApplyUpdates(0);

          // Faz um update na tabela PedidoCompra do campo vlPedido
          sql := 'UPDATE PedidoCompra SET vlPedido = ' + CurrToStr(vlTotal) +
                 ' WHERE idEmpresa = ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString +
                   ' AND idCadEmpresa = ' + FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString +
                   ' AND idPedidoCompra = ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString;
          dmPadrao.dbConexao.ExecuteDirect(sql);

          //Verifica o status do pedido
          dmPadrao.dbConexao.ExecuteDirect('EXEC spVerStatusPedidoCompra ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString + ', ' +
                                         FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString + ', ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString);

          FrmManutencaoPedido.cdsGridPedidoProd.Refresh;
          MessageDlg('Produto anterior alterado com sucesso!',  mtInformation, [mbOK], 0);
          FrmAlteraProdPedido.Close;
        end;

      except
        on E : Exception do
        MessageDlg('Erro ao alterar produto anterior,' +E.Message,  mtError, [mbOK], 0);
      end;
    end
    else
      begin
        Abort;
        DBEidProduto2.SetFocus;
      end;
  end
  else
    begin
      // É porque vai alterar apenas algumas informações, não o produto por completo
      MessageDlg('Para criar um novo produto, clicar no botão NOVO!', mtInformation, [mbOK], 0);
      Abort;
      DBEidProduto2.SetFocus;
    end;
end;

procedure TFrmAlteraProdPedido.BtnFecharClick(Sender: TObject);
begin
  FrmAlteraProdPedido := nil;
  Close;
end;

procedure TFrmAlteraProdPedido.BtnNovoClick(Sender: TObject);
var
sql : string;
vlTotal : Currency;
idPedidoProd : integer;
begin
  // Verifica se o produto anterir é diferente do novo
  if cdsPadraoidProduto.Text <> cdsPadraoidProduto2.Text then
  begin
    if MessageDlg('Deseja criar um novo produto no pedido?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        begin
          // Retorna o ultimo idPedidoProd e soma + 1 da tabela PedidoCompraProd
          sql := 'SELECT MAX(idPedidoProd) AS idPedidoProd FROM PedidoCompraProd ' +
                 ' WHERE idEmpresa = ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString +
                   ' AND  idCadEmpresa = ' + FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString +
                   ' AND idPedidoCompra = ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString;
          idPedidoProd := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('idPedidoProd').AsInteger + 1;

          cdsProdNovoidEmpresa.AsInteger      := FrmManutencaoPedido.cdsPadraoidEmpresa.AsInteger;
          cdsProdNovoidCadEmpresa.AsInteger   := FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsInteger;
          cdsProdNovoidPedidoCompra.AsInteger := FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsInteger;
          cdsProdNovoidPedidoProd.AsInteger   := idPedidoProd;
          cdsProdNovoidProduto.AsInteger      := StrToInt(DBEidProduto2.Text);
          cdsProdNovoidMaquina.AsString       := DBEidMaquina2.Text;
          cdsProdNovoqtPedida.AsCurrency      := funcao.TiraPontoValor(DBEqtPedida2.Text);
          cdsProdNovoqtAtendida.AsCurrency    := funcao.TiraPontoValor(DBEqtAtendida2.Text);
          cdsProdNovoqtRetirada.AsCurrency    := funcao.TiraPontoValor(DBEqtRetirada2.Text);
          cdsProdNovovlProduto.AsString       := DBEvlProduto2.Text;
          cdsProdNovovlTotal.AsCurrency       := funcao.TiraPontoValor(DBEvlTotal2.Text);
          cdsProdNovoobsProduto.AsString      := DBMobsProduto2.Text;
          cdsProdNovomarca.AsString           := DBEmarca2.Text;
          cdsProdNovoqtDiasEntrega.AsString   := DBEqtDiasEntrega2.Text;
          cdsProdNovodtEntrega.AsString       := DBEdtEntrega2.Text;
          cdsProdNovostPedidoProd.AsString    := DBEstPedidoProd2.Text;
          cdsProdNovo.Post;

          cdsProdAnterior.Close;
          cdsProdAnterior.CommandText := 'SELECT * FROM PedidoCompraProd WHERE idEmpresa = ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString +
                                                                         ' AND idCadEmpresa = ' + FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString +
                                                                         ' AND idPedidoCompra = ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString +
                                                                         ' AND idPedidoProd = ' + IntToStr(idPedidoProd) +
                                                                         ' AND idProduto = ' + funcao.RetornaValorEField(DBEidProduto2, 3);
          cdsProdAnterior.Open;

          cdsProdAnterior.Append;
          cdsProdAnterioridEmpresa.AsInteger      := cdsProdNovoidEmpresa.AsInteger;
          cdsProdAnterioridCadEmpresa.AsInteger   := cdsProdNovoidCadEmpresa.AsInteger;
          cdsProdAnterioridPedidoCompra.AsInteger := cdsProdNovoidPedidoCompra.AsInteger;
          cdsProdAnterioridPedidoProd.AsInteger   := cdsProdNovoidPedidoProd.AsInteger;
          cdsProdAnterioridProduto.AsInteger      := cdsProdNovoidProduto.AsInteger;
          cdsProdAnterioridMaquina.AsString       := cdsProdNovoidMaquina.AsString;
          cdsProdAnteriorqtPedida.AsString        := cdsProdNovoqtPedida.AsString;
          cdsProdAnteriorqtAtendida.AsString      := cdsProdNovoqtAtendida.AsString;
          cdsProdAnteriorqtRetirada.AsString      := cdsProdNovoqtRetirada.AsString;
          cdsProdAnteriorvlProduto.AsString       := cdsProdNovovlProduto.AsString;
          cdsProdAnteriorvlTotal.AsString         := cdsProdNovovlTotal.AsString;
          cdsProdAnteriorobsProduto.AsString      := cdsProdNovoobsProduto.AsString;
          cdsProdAnteriormarca.AsString           := cdsProdNovomarca.AsString;
          cdsProdAnteriorqtDiasEntrega.AsString   := cdsProdNovoqtDiasEntrega.AsString;
          cdsProdAnteriordtEntrega.AsString       := cdsProdNovodtEntrega.AsString;
          cdsProdAnteriorstPedidoProd.AsString    := cdsProdNovostPedidoProd.AsString;
          cdsProdAnterior.Post;
          cdsProdAnterior.ApplyUpdates(0);

          // Retorna o valor total do pedido depois de inserido o produto novo
          sql := 'SELECT SUM(vlTotal) AS vlTotal FROM PedidoCompraProd ' +
                  'WHERE idEmpresa = ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString +
                    'AND idCadEmpresa = ' + FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString +
                    'AND idPedidoCompra = ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString;
          vlTotal := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('vlTotal').AsCurrency;

          // Atualiza o valor total do pedido de compra
          sql := 'UPDATE PedidoCompra SET vlPedido = ' + QuotedStr(CurrToStr(vlTotal)) +
                 ' WHERE idEmpresa = ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString +
                   ' AND idCadEmpresa = ' + FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString +
                   ' AND idPedidoCompra = ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString;
          dmPadrao.dbConexao.ExecuteDirect(sql);

          // Verifica o status do pedido novamente
          dmPadrao.dbConexao.ExecuteDirect('EXEC spVerStatusPedidoCompra ' + FrmManutencaoPedido.cdsPadraoidEmpresa.AsString + ', ' +
                                         FrmManutencaoPedido.cdsPadraoidCadEmpresa.AsString + ', ' + FrmManutencaoPedido.cdsPedidoidPedidoCompra.AsString);

          FrmManutencaoPedido.cdsGridPedidoProd.Refresh;
          MessageDlg('Produto criado com sucesso!',  mtInformation, [mbOK], 0);
          FrmAlteraProdPedido.Close;
        end;

      except
        on E : Exception do
        MessageDlg('Erro ao criar novo produto no pedido, '+E.Message,  mtError, [mbOK], 0);
      end;
    end
    else
      begin
        Abort;
      end;
  end
  else
    begin
      // Aviso para o cliente caso ele não queira substituir o produto por completo e sim alterar apenas algumas informações
      MessageDlg('Para alterar o produto anterior, clicar no botão ALTERAR!', mtInformation, [mbOK], 0);
      Abort;
    end;
end;

procedure TFrmAlteraProdPedido.DBEdtEntrega2Exit(Sender: TObject);
begin
  // Rotina para retornar os dias de Entrega conforme a data inserida
  if DBEdtEntrega2.Text <> '' then
  begin
    if cdsProdNovo.State in [dsEdit, dsInsert] then
      cdsProdNovoqtDiasEntrega.AsString := funcao.DifDias(FrmManutencaoPedido.cdsGridConsultadtPedido.AsDateTime, cdsProdNovodtEntrega.AsDateTime);
  end;
end;

procedure TFrmAlteraProdPedido.DBEidProduto2Exit(Sender: TObject);
var
  sql : string;
begin
  inherited;
  // Verifica se o produto não esta cancelado
  if Trim(DBEidProduto2.Text) <> '' then
  begin
    sql := 'SELECT * FROM Produto WHERE idProduto = ' + DBEidProduto2.Text;
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if FieldByName('stProduto').AsString = 'CANCELADO' then
      begin
        MessageDlg('Produto Cancelado, favor verificar!', mtWarning, [mbOK], 0);
        DBEidProduto2.SetFocus;
        Exit;
      end;
    end;
  end;

  cdsProdNovostPedidoProd.AsString := cdsProdAnteriorstPedidoProd.AsString;
end;

procedure TFrmAlteraProdPedido.DBEqtDiasEntrega2Exit(Sender: TObject);
begin
  if DBEqtDiasEntrega2.Text <> '' then
  begin
    if cdsProdNovo.State in [dsEdit, dsInsert] then
      cdsProdNovodtEntrega.AsDateTime := FrmManutencaoPedido.cdsGridConsultadtPedido.AsDateTime + cdsProdNovoqtDiasEntrega.AsInteger;
  end;
end;

procedure TFrmAlteraProdPedido.DBEqtRetirada2Exit(Sender: TObject);
var
qtAtendida, qtPedida, qtRetirada, qtResultado : Currency;
begin
  qtPedida    := cdsProdNovoqtPedida.AsCurrency;
  qtAtendida  := cdsProdNovoqtAtendida.AsCurrency;
  qtRetirada  := cdsProdNovoqtRetirada.AsCurrency;
  qtResultado := qtPedida - qtAtendida;
  cdsPadraoqtSaldo2.AsCurrency := qtResultado - qtRetirada;
end;

procedure TFrmAlteraProdPedido.DBEvlProduto2Exit(Sender: TObject);
begin
  if (cdsProdNovoqtPedida.AsFloat > 0) and (cdsProdNovovlProduto.AsFloat > 0) then
      cdsProdNovovlTotal.AsFloat := cdsProdNovoqtPedida.AsFloat * cdsProdNovovlProduto.AsFloat
  else
    cdsProdNovovlTotal.AsFloat := 0;
end;

procedure TFrmAlteraProdPedido.DBMobsProduto2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase( Key )[1];
end;

procedure TFrmAlteraProdPedido.FormCreate(Sender: TObject);
begin
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
  cdsProdAnterior.CreateDataSet;
  cdsProdAnterior.Append;
  cdsProdNovo.CreateDataSet;
  cdsProdNovo.Append;
end;

procedure TFrmAlteraProdPedido.FormShow(Sender: TObject);
begin
  Height := 495;
  Width  := 498;
  DBEidProduto2.SetFocus;
end;
end.
