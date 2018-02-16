unit uFrmSelNfE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CDBGrid, ComCtrls, CPageControl, DB, DBClient,
  StdCtrls, Buttons, CBitBtn;

type
  TFrmSelNfE = class(TForm)
    cdsGrid: TClientDataSet;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TIntegerField;
    cdsGrididPedido: TIntegerField;
    cdsGridqtde: TFloatField;
    cdsGriddescFornecedor: TStringField;
    cdsGriddescProd: TStringField;
    cdsGrididNfE: TIntegerField;
    dsGrid: TDataSource;
    PagAbas: TCPageControl;
    TabAbas: TTabSheet;
    DBGrid: TCDBGrid;
    cdsGrididFornecedor: TIntegerField;
    cdsGrididProduto: TIntegerField;
    cdsGrididDocSerie: TStringField;
    cdsGrididPedidoProd: TIntegerField;
    cdsGrididMaquina: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelNfE: TFrmSelNfE;

implementation

uses uFrmPrincipal, uFrmNFE, uFrmPesRecepcao, uFuncao;

{$R *.dfm}



procedure TFrmSelNfE.DBGridDblClick(Sender: TObject);
var
  msg, obs, sql, sqlPed, sqlSta, sqlRec, sql2 : string;
  idRecepcao : integer;
begin
  inherited;
  if cdsGrid.RecordCount = 0 then
    msg := 'Sem dados para executar!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  Application.CreateForm(TFrmNfE, FrmNfE);

  frmNfe.Posiciona;
  frmNfe.IniciaTela;
  frmNfe.TrataEmpresa;

  FrmNfE.actNovo.Execute;
  if not (frmNfE.cdsEmpresa.State in [dsInsert, dsEdit]) then
    frmNfE.cdsEmpresa.Edit;
  frmNfe.origem := 'Recepção';
  frmNfE.cdsEmpresaidEmpresa.AsInteger := cdsGrididEmpresa.AsInteger;
  frmNfE.cdsEmpresaidCadEmpresa.AsInteger := cdsGrididCadEmpresa.AsInteger;
  FrmNfE.cdsPadraoidEmpresa.AsInteger := cdsGrididEmpresa.AsInteger;
  FrmNfE.cdsPadraoidCadEmpresa.AsInteger := cdsGrididCadEmpresa.AsInteger;
  FrmNfE.cdsPadraoidFornecedor.AsInteger := cdsGrididFornecedor.AsInteger;
  FrmNfE.cdsPadraoidCadFornecedor.AsInteger := 1;
  FrmNfE.cdsPadraoidNfE.AsInteger := cdsGrididNfE.AsInteger;
  FrmNfE.cdsPadraoidDocSerie.AsString := cdsGrididDocSerie.AsString;
  FrmNfE.DBEidNfEExit(FrmNfE.DBEidNfE);
  if not (FrmNfE.cdsPadrao.State in [dsInsert, dsEdit]) then
    FrmNfE.cdsPadrao.Edit;
  obs := 'Pedido(s): ';
  sql := '';
  sqlPed := '';
  sqlSta := '';
  if pos(cdsGrididPedido.AsString, obs) <= 0 then
  begin
    obs := obs + cdsGrididPedido.AsString + ',';
    sql := sql + 'INSERT INTO PedidoCompraNfE VALUES(' + cdsGrididEmpresa.AsString + ', ' + cdsGrididCadEmpresa.AsString +
       ',' + cdsGrididPedido.AsString + ',' + cdsGrididFornecedor.AsString + ',1,' + QuotedStr(cdsGrididDocSerie.AsString) +
       ',' + cdsGrididNfE.AsString + ');'
  end;

      sql2 := 'SELECT ISNULL(MAX(idRecepcao), 0) idRecepcao FROM PedidoCompraRec WHERE idEmpresa = ' + cdsGrididEmpresa.AsString +
                                                  ' AND idCadEmpresa = ' + cdsGrididCadEmpresa.AsString +
                                                  ' AND idPedidoCompra = ' + cdsGrididPedido.AsString +
                                                  ' AND idPedidoProd = ' + cdsGrididPedidoProd.AsString;
      idRecepcao := frmPrincipal.ExecutaSQLRet([],'', sql2).FieldByName('idRecepcao').AsInteger + 1;

  sqlRec := ' INSERT INTO PedidoCompraRec (idEmpresa, idCadEmpresa, idPedidoCompra, ' +
                     ' idPedidoProd, idRecepcao, dtRecepcao, qtRecepcao, idDocSerie, idNfe, idCadEmpresaOri) VALUES(' +
                     cdsGrididEmpresa.AsString + ', ' + cdsGrididCadEmpresa.AsString + ', ' +
                     cdsGrididPedido.AsString + ', ' + cdsGrididPedidoProd.AsString + ', ' + IntToStr(idRecepcao) +
                     ', ' + funcao.ConverteData(FrmPesRecepcao.cdsGriddtRecebida.AsDateTime) + ', ' + funcao.TiraVirgula(cdsGridqtde.AsString) + ', ' +
                     QuotedStr(cdsGrididDocSerie.AsString) + ',' + cdsGrididNfE.AsString + ', ' + cdsGrididCadEmpresa.AsString +   ');';

  sqlPed := sqlPed + 'UPDATE PedidoCompraProd SET qtAtendida = qtAtendida + ' + funcao.TiraVirgula(cdsGridqtde.AsString) +
            ' WHERE idEmpresa = ' + cdsGrididEmpresa.AsString +
            ' AND idCadEmpresa = ' + cdsGrididCadEmpresa.AsString +
            ' AND idPedidoCompra = ' + cdsGrididPedido.AsString +
            ' AND idPedidoProd = ' + cdsGrididPedidoProd.AsString + '; ';


  sqlSta := sqlSta + 'EXEC spVerStatusPedidoCompra ' + cdsGrididEmpresa.AsString+ ', ' + cdsGrididCadEmpresa.AsString + ', ' +
              cdsGrididPedido.AsString + ';';

  if Trim(frmNfE.DBEidProduto.Text) = '' then  ///Produto novo
  begin
    frmNfe.BtnNovoProd.Click;
    FrmNfE.cdsNfeProduto.FieldByName('idProduto').AsInteger := cdsGrididProduto.AsInteger;
    if cdsGrididMaquina.AsInteger > 0 then
      FrmNfE.cdsNfeProduto.FieldByName('idMaquina').AsInteger := cdsGrididMaquina.AsInteger;

    frmNfe.DBEidMaquinaExit(frmNfe.DBEidMaquina);
    frmNfE.cdsNfEProdutoqtProduto.AsFloat := frmPrincipal.ExecutaSQLRet([], '', 'SELECT qtde FROM tmpGeraNfE WHERE idFornecedor = '+ cdsGrididFornecedor.AsString +
                                           ' AND idPedido =' + cdsGrididPedido.AsString + ' AND idNfE = ' + cdsGrididNfE.AsString).FieldByName('qtde').AsFloat;
    frmNfE.DBEqtProdutoExit(frmNfE.DBEqtProduto);
    FrmNfE.cdsNfEProdutovlBruto.AsFloat := frmPrincipal.ExecutaSQLRet([], '', 'SELECT pro.vlProduto FROM tmpGeraNfE tgn INNER JOIN PedidoCompraProd pro ' +
                                         ' ON tgn.idPedido = pro.idPedidoCompra AND tgn.idProduto = pro.idProduto WHERE tgn.idPedido = ' + cdsGrididPedido.AsString +
                                         ' AND tgn.idProduto = ' + cdsGrididProduto.AsString + ' AND tgn.idNfE = '+ cdsGrididNfE.AsString).FieldByName('vlProduto').AsFloat;
    FrmNfE.cdsNfEProdutoprDesconto.AsFloat := 0;
    FrmNfE.cdsNfEProdutovlDesconto.AsFloat := 0;
    FrmNfE.cdsNfEProdutovlLiquido.AsFloat := frmPrincipal.ExecutaSQLRet([], '', 'SELECT pro.vlProduto FROM tmpGeraNfE tgn INNER JOIN PedidoCompraProd pro ' +
                                           ' ON tgn.idPedido = pro.idPedidoCompra AND tgn.idProduto = pro.idProduto WHERE tgn.idPedido = ' + cdsGrididPedido.AsString +
                                           ' AND tgn.idProduto = ' + cdsGrididProduto.AsString + ' AND tgn.idNfE = '+ cdsGrididNfE.AsString).FieldByName('vlProduto').AsFloat;
    frmNfE.DBEqtProdutoExit(frmNfE.DBEvlLiquido);
  end;
  if not (FrmNfE.cdsNfEProduto.State in [dsEdit, dsInsert]) then
    FrmNfE.cdsNfEProduto.Edit;
  frmNfE.cdsNfEProdutovlTotal.AsFloat := FrmNfE.cdsNfEProdutovlLiquido.AsFloat*frmNfE.cdsNfEProdutoqtProduto.AsFloat;
  frmNfE.cdsNfEProdutovlOutrasIcms.AsFloat := frmNfE.cdsNfEProdutovlTotal.AsFloat;
  frmNfE.DBEqtProdutoExit(frmNfE.DBEqtProduto);
  FrmNfE.Recepcao := True;
  frmNfE.BtnSalvarProd.Click;

  frmNfE.sql := sql;
  frmNfE.sqlPed := sqlPed;
  frmNfE.sqlSta := sqlSta;
  frmNfE.sqlRec := sqlRec;
  //desabilita os campos caso a nota tenha sido originada da recepção do pedido
  funcao.SomenteLeitura([frmNfE.DBEidNfE, frmNfE.DBEqtProduto], true);


  FrmNfE.ShowModal;
  cdsGrid.Delete;
  if cdsGrid.RecordCount = 0 then
    close;
end;

procedure TFrmSelNfE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmSelNfE := nil;
end;

procedure TFrmSelNfE.FormCreate(Sender: TObject);
begin
  Height := 421;
  Width := 760;
  cdsGrid.CreateDataSet;
end;

procedure TFrmSelNfE.FormShow(Sender: TObject);
var
 sql : string;
begin
  inherited;
  sql := 'SELECT tgn.idEmpresa, tgn.idCadEmpresa, tgn.idPedido, tgn.qtde, tgn.idNfE, tgn.idDocSerie, ' +
         ' con.descCadFornecedor, pro.descProduto, tgn.idFornecedor, tgn.idProduto, tgn.idPedidoProd, ' +
         ' tgn.idMaquina FROM tmpGeraNfE tgn INNER JOIN vCadFornecedorContabil con ON tgn.idFornecedor = con.idFornecedor ' +
         ' INNER JOIN Produto pro ON tgn.idProduto = pro.idProduto';
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    First;
    while not eof do
    begin
      if not (cdsGrid.Active) then
        cdsGrid.Open;
      cdsGrid.Append;
      cdsGrididEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
      cdsGrididCadEmpresa.AsInteger := FieldByName('idCadEmpresa').AsInteger;
      cdsGrididPedido.AsInteger := FieldByName('idPedido').AsInteger;
      cdsGrididNfE.AsInteger := FieldByName('idNfE').AsInteger;
      cdsGriddescFornecedor.AsString := FieldByName('descCadFornecedor').AsString;
      cdsGriddescProd.AsString := FieldByName('descProduto').AsString;
      cdsGrididFornecedor.AsInteger := FieldByName('idFornecedor').AsInteger;
      cdsGrididProduto.AsInteger := FieldByName('idProduto').AsInteger;
      cdsGrididDocSerie.AsString := FieldByName('idDocSerie').AsString;
      cdsGridqtde.AsFloat := FieldByName('qtde').AsFloat;
      cdsGrididPedidoProd.AsInteger := FieldByName('idPedidoProd').AsInteger;
      if FieldByName('idMaquina').AsInteger > 0 then
        cdsGrididMaquina.AsInteger := FieldByName('idMaquina').AsInteger;
      cdsGrid.Post;
      Next;
    end;
  end;
end;

end.
