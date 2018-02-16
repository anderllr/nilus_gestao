unit uFrmManutencaoPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons,
  CBitBtn, Vcl.ExtCtrls, CPanelGradient, Vcl.ComCtrls, CPageControl, CFind,
  Data.DB, Datasnap.DBClient, CLookUp, Vcl.Mask, Vcl.DBCtrls, CDBEdit, CLabel,
  Vcl.Grids, Vcl.DBGrids, CDBGrid, CGroupBox, Datasnap.Provider, Data.FMTBcd,
  Data.SqlExpr, CDBCheckBox, EditAlign, CEdit, CDBRadioGroup;

type
  TFrmManutencaoPedido = class(TFrmPadrao)
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
    cdsEmpresa: TClientDataSet;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    dsEmpresa: TDataSource;
    FindEmpresa: TCFind;
    TabAbas2: TTabSheet;
    CGroupBox1: TCGroupBox;
    lbl1: TCLabel;
    lbl2: TCLabel;
    lbl3: TCLabel;
    lbl6: TCLabel;
    lbl7: TCLabel;
    lbl19: TCLabel;
    CLookUp1: TCLookUp;
    DBEdtFinal: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    DBEidPedidoFim: TCDBEdit;
    DBEidPedidoIni: TCDBEdit;
    LookRazao: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CGroupBox2: TCGroupBox;
    DBGridConsulta: TCDBGrid;
    CGroupBox3: TCGroupBox;
    lbl4: TCLabel;
    lbl5: TCLabel;
    lbl10: TCLabel;
    DBEdtPedido: TCDBEdit;
    DBEidPedidoCompra: TCDBEdit;
    CGroupBox4: TCGroupBox;
    DBGridPedido: TCDBGrid;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidPedidoIni: TIntegerField;
    cdsPadraoidPedidoFim: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    dspPadrao: TDataSetProvider;
    sdsPadrao: TSQLDataSet;
    dsPedido: TDataSource;
    dspPedido: TDataSetProvider;
    sdsPedido: TSQLDataSet;
    sdsGridPedidoProd: TSQLDataSet;
    dspGridPedidoProd: TDataSetProvider;
    cdsGridPedidoProd: TClientDataSet;
    dsGridPedidoProd: TDataSource;
    dsGridConsulta: TDataSource;
    cdsGridConsulta: TClientDataSet;
    dspGridConsulta: TDataSetProvider;
    sdsGridConsulta: TSQLDataSet;
    BitBtnPesquisar: TCBitBtn;
    cdsGridConsultaidEmpresa: TIntegerField;
    cdsGridConsultaidCadEmpresa: TIntegerField;
    cdsGridConsultaidFornecedor: TIntegerField;
    cdsGridConsultaidPedidoCompra: TIntegerField;
    cdsGridConsultaidProduto: TIntegerField;
    cdsGridConsultadtPedido: TSQLTimeStampField;
    cdsGridConsultaobsPedido: TStringField;
    cdsGridConsultastPedido: TStringField;
    BitBtnFechar: TCBitBtn;
    LookRazao2: TCLookUp;
    DBEidFornecedor2: TCDBEdit;
    cdsPadraoidFornecedor: TIntegerField;
    cdsPedido: TClientDataSet;
    cdsGridConsultanrPedidoOriginal: TStringField;
    lbl8: TCLabel;
    DBEnrPedidoOriginal: TCDBEdit;
    cdsPedidoidFornecedor: TIntegerField;
    cdsPedidoidPedidoCompra: TIntegerField;
    cdsPedidonrPedidoOriginal: TStringField;
    cdsPedidodtPedido: TSQLTimeStampField;
    cdsGridPedidoProdidPedidoCompra: TIntegerField;
    cdsGridPedidoProdidProduto: TIntegerField;
    cdsGridPedidoProddescProduto: TStringField;
    cdsGridPedidoProddescAbreviada: TStringField;
    cdsGridPedidoProdqtPedida: TFMTBCDField;
    cdsGridPedidoProdqtAtendida: TFMTBCDField;
    cdsGridPedidoProdqtRetirada: TFMTBCDField;
    cdsGridPedidoProdvlProduto: TFMTBCDField;
    cdsGridPedidoProdvlTotal: TFMTBCDField;
    cdsGridPedidoProdqtSaldo: TFMTBCDField;
    cdsGridPedidoProdidMaquina: TIntegerField;
    cdsGridPedidoProdmarca: TStringField;
    cdsGridPedidoProdqtDiasEntrega: TSmallintField;
    cdsGridPedidoProddtEntrega: TSQLTimeStampField;
    cdsGridPedidoProdstPedidoProd: TStringField;
    cdsGridPedidoProdobsProduto: TStringField;
    procedure FormShow(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure DBGridPedidoDblClick(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure DadosPedidoCompra;
    procedure RetornaProdutos;
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
  FrmManutencaoPedido: TFrmManutencaoPedido;

implementation

uses
  uFrmPrincipal, uFuncao, uDmPadrao, uFrmAlteraProdPedido;

{$R *.dfm}

procedure TFrmManutencaoPedido.BitBtnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmManutencaoPedido.BitBtnPesquisarClick(Sender: TObject);
begin
  inherited;
  // Traz os pedidos na grid DBGridConsulta
  cdsGridConsulta.Active := false;
  cdsGridConsulta.CommandText := 'EXEC spConsPedido ' + DBEidEmpresa.text + ',' +
                                 DBEidCadEmpresa.text + ',' +
                                 funcao.RetornaValorEField(DBEidFornecedor, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEdtInicial, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEdtFinal, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEidPedidoIni, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEidPedidoFim, 3)+ ',' +
                                 funcao.RetornaValorEField(DBEidProduto, 3);
  cdsGridConsulta.Active := true;
end;

procedure TFrmManutencaoPedido.DadosPedidoCompra;
begin
  // Busca os dados do pedido de compra
  cdsPedido.Active := false;
  cdsPedido.CommandText := 'SELECT idFornecedor, idPedidoCompra, nrPedidoOriginal, dtPedido ' +
                            ' FROM PedidoCompra ' +
                           ' WHERE idEmpresa = ' + DBEidEmpresa.Text +
                             ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                             ' AND idPedidoCompra = ' + cdsGridConsultaidPedidoCompra.Text;
  cdsPedido.Active := true;
end;

procedure TFrmManutencaoPedido.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  TabAbas2.TabVisible := True;
  PagAbas.ActivePageIndex := 1;
  if PagAbas.ActivePageIndex = 1 then
  begin
    Height := 395;
    Width  := 878;
  end;

  DadosPedidoCompra; // consulta os dados do pedido
  DBEidFornecedor2.Text    := IntToStr(cdsPedidoidFornecedor.AsInteger);
  DBEdtPedido.Text         := DateToStr(cdsPedidodtPedido.AsDateTime);
  DBEidPedidoCompra.Text   := cdsPedidoidPedidoCompra.AsString;
  DBEnrPedidoOriginal.Text := IntToStr(cdsPedidonrPedidoOriginal.AsInteger);
  RetornaProdutos; // retorna os produtos do pedido de compra
end;

procedure TFrmManutencaoPedido.DBGridPedidoDblClick(Sender: TObject);
begin
  inherited;
  // Cria o form FrmAlteraProdPedido para já abrir com algumas informações carregadas
  Application.CreateForm(TFrmAlteraProdPedido, FrmAlteraProdPedido);
  with FrmAlteraProdPedido do
  begin
    cdsPadraoidProduto.AsInteger          := cdsGridPedidoProdidProduto.AsInteger;
    cdsProdAnteriorqtPedida.AsCurrency    := cdsGridPedidoProdqtPedida.AsCurrency;
    cdsProdAnteriorqtAtendida.AsCurrency  := cdsGridPedidoProdqtAtendida.AsCurrency;
    cdsProdAnteriorqtRetirada.AsCurrency  := cdsGridPedidoProdqtRetirada.AsCurrency;
    cdsPadraoqtSaldo.AsCurrency           := cdsGridPedidoProdqtSaldo.AsCurrency;
    cdsProdAnterioridMaquina.AsString     := cdsGridPedidoProdidMaquina.AsString;
    cdsProdAnteriorvlProduto.AsString     := cdsGridPedidoProdvlProduto.AsString;
    cdsProdAnteriorvlTotal.AsCurrency     := cdsGridPedidoProdvlTotal.AsCurrency;
    cdsProdAnteriormarca.AsString         := cdsGridPedidoProdmarca.AsString;
    cdsProdAnteriorqtDiasEntrega.AsString := cdsGridPedidoProdqtDiasEntrega.AsString;
    cdsProdAnteriordtEntrega.AsString     := cdsGridPedidoProddtEntrega.AsString;
    cdsProdAnteriorstPedidoProd.AsString  := cdsGridPedidoProdstPedidoProd.AsString;
    cdsProdAnteriorobsProduto.AsString    := cdsGridPedidoProdobsProduto.AsString;
    ShowModal;
  end;
end;

procedure TFrmManutencaoPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmManutencaoPedido := Nil;
end;

procedure TFrmManutencaoPedido.FormCreate(Sender: TObject);
begin
  inherited;
  cdsPadrao.CreateDataSet;
end;

procedure TFrmManutencaoPedido.FormShow(Sender: TObject);
begin
  Height := 560;
  Width  := 685;
  TabAbas2.TabVisible := False;
  inherited;
  cdsPadrao.Append;
  cdsPadrao.FieldByName('idEmpresa').AsString := frmPrincipal.idEmpresa;
  cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.idCadEmpresa;
end;

procedure TFrmManutencaoPedido.PagAbasChange(Sender: TObject);
begin
  inherited;
  if PagAbas.ActivePageIndex = 0 then
  begin
    Height := 560;
    Width  := 685;
  end
  else
    if PagAbas.ActivePageIndex = 1 then
    begin
      Height := 395;
      Width  := 878;
    end;
end;

procedure TFrmManutencaoPedido.RetornaProdutos;
begin
  // Busca os produtos referente ao pedido de compra
  cdsGridPedidoProd.Active := false;
  cdsGridPedidoProd.CommandText := 'SELECT p.idPedidoCompra, p.idProduto, prod.descProduto, pm.descAbreviada, p.qtPedida, ' +
                                          'p.qtAtendida, p.qtRetirada, p.vlProduto, p.vlTotal, (p.qtPedida-p.qtAtendida-p.qtRetirada) as qtSaldo, ' +
                                          'p.idMaquina, p.marca, p.qtDiasEntrega, p.dtEntrega, p.stPedidoProd, p.obsProduto ' +
                                     'FROM PedidoCompraProd p INNER JOIN Produto prod ' +
                                       'ON p.idProduto = prod.idProduto INNER JOIN ProdMedida pm ' +
	                                     'ON prod.idProdMedida = pm.idProdMedida ' +
                                    'WHERE idEmpresa = ' + funcao.RetornaValorEField(DBEidEmpresa, 3) +
                                      'AND idCadEmpresa = ' + funcao.RetornaValorEField(DBEidCadEmpresa, 3) +
                                      'AND idPedidoCompra = ' + cdsGridConsultaidPedidoCompra.Text +
                                    'ORDER BY p.idPedidoCompra';
  cdsGridPedidoProd.Active := true;
end;

end.
