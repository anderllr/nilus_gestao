unit uFrmGeraCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, ComCtrls, CPageControl, DB, DBClient, Mask, DBCtrls, CDBEdit,
  CLookUp, CLabel, Provider, Grids, DBGrids, CDBGrid, FMTBcd, SqlExpr,
  System.Actions;

type
  TFrmGeraCotacao = class(TFrmPadrao)
    dsFornecedor: TDataSource;
    cdsFornecedor: TClientDataSet;
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    cdsConsFornecedor: TClientDataSet;
    dsConsFornecedor: TDataSource;
    CPanelGradient1: TCPanelGradient;
    Bevel3: TBevel;
    CLabel11: TCLabel;
    LookRazao: TCLookUp;
    DBEidFornecedor: TCDBEdit;
    CLookUp1: TCLookUp;
    BtnNovoItem: TCBitBtn;
    GridFornecedor: TCDBGrid;
    CPanelGradient2: TCPanelGradient;
    CLabel1: TCLabel;
    GridCotacaoFornecedor: TCDBGrid;
    cdsFornecedoridFornecedor: TIntegerField;
    cdsFornecedordescFornecedor: TStringField;
    cdsFornecedordescAbreviada: TStringField;
    cdsProdutoidProduto: TIntegerField;
    dsConsProduto: TDataSource;
    cdsConsProduto: TClientDataSet;
    cdsProdutodescProduto: TStringField;
    cdsProdutoqtProduto: TFloatField;
    cdsProdutoidEmpresa: TIntegerField;
    DBEidCotacao2: TCDBEdit;
    CLabel6: TCLabel;
    dsCotacaoProd: TDataSource;
    cdsCotacaoProd: TClientDataSet;
    dspCotacaoProd: TDataSetProvider;
    sdsCotacaoProd: TSQLDataSet;
    dsCotacao: TDataSource;
    cdsCotacao: TClientDataSet;
    dspCotacao: TDataSetProvider;
    sdsCotacao: TSQLDataSet;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    cdsPadraoidCriterioCompra: TIntegerField;
    DBEidCotacao: TCDBEdit;
    DBEidEmpresa: TCDBEdit;
    BtnSugerirFor: TCBitBtn;
    cdsFornecedorbtnTemp: TIntegerField;
    CLookUp2: TCLookUp;
    DBEidCriterioCompra: TCDBEdit;
    CLabel2: TCLabel;
    cdsPadraoidCotacao: TIntegerField;
    CLabel3: TCLabel;
    cdsProdutocodFabricante: TStringField;
    dsCotacaoFornecedor: TDataSource;
    cdsCotacaoFornecedor: TClientDataSet;
    dspCotacaoFornecedor: TDataSetProvider;
    sdsCotacaoFornecedor: TSQLDataSet;
    cdsProdutoidMaquina: TIntegerField;
    cdsProdutodescMaquina: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidFornecedorExit(Sender: TObject);
    procedure BtnNovoItemClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure BtnSugerirForClick(Sender: TObject);
    procedure GridFornecedorCellClick(Column: TColumn);
    procedure cdsPadraoidCriterioCompraValidate(Sender: TField);
    procedure cdsPadraoidCotacaoValidate(Sender: TField);
    procedure DBEidCotacao2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGeraCotacao: TFrmGeraCotacao;

implementation

uses uDmPadrao, uDmFind, uFrmGerenciaRequisicao, uFrmPrincipal, uFuncao,
  uFrmPesCotacao;

{$R *.dfm}

procedure TFrmGeraCotacao.actFecharExecute(Sender: TObject);
begin
  inherited;
  frmGerenciaRequisicao.idCotacao := 0;
end;

procedure TFrmGeraCotacao.BtnNovoItemClick(Sender: TObject);
begin
  inherited;
  if trim(DBEidFornecedor.Text) = '' then
    exit;
  if not (cdsFornecedor.State in [dsEdit, dsInsert]) then
    cdsFornecedor.Edit;
  cdsFornecedor.Post;
  cdsFornecedor.Append;
  DBEidFornecedor.SetFocus;
end;

procedure TFrmGeraCotacao.BtnSalvarClick(Sender: TObject);
var
  tem : boolean;
  idProd, idMaquina, idCadProd : integer;
  sql : string;
begin
  inherited;

  if cdsProduto.RecordCount = 0 then
  begin
    messagedlg('Sem produtos para a cotação! A cotação não será gerada!', mtwarning, [mbok], 0);
    exit;
  end;
  if (trim(DBEidCriterioCompra.Text) = '') and (trim(DBEidCotacao2.Text) = '') then
  begin
    messagedlg('É necessário informar um critério de compra ou selecionar uma cotação existente!', mtwarning, [mbok], 0);
    exit;
  end;

  if trim(DBEidCotacao2.Text) = '' then //significa que n
    //gera a cotação
    with cdsCotacao do
    begin
      Active := false;
      CommandText := 'SELECT * FROM Cotacao WHERE 1=2';
      Active := true;
      Append;
      FieldByName('idEmpresa').AsInteger := cdsProdutoidEmpresa.AsInteger;
      FieldByName('idCotacao').AsInteger := frmPrincipal.ExecutaSQLRet([], '', 'SELECT ISNULL(MAX(idCotacao), 0) AS id FROM Cotacao WHERE idEmpresa = ' +
         cdsProdutoidEmpresa.AsString).FieldByName('id').AsInteger + 1;
      FieldByName('dtCotacao').AsDateTime := date;
      FieldByName('idCriterioCompra').AsInteger := cdsPadraoidCriterioCompra.AsInteger;
      FieldByName('stCotacao').AsString := 'ATIVO';
      Post;
      cdsCotacao.ApplyUpdates(0);
    end;
  //gera os produtos cotação
  with cdsCotacaoProd do
  begin
    Active := false;
    CommandText := 'SELECT * FROM CotacaoProd WHERE idEmpresa = ' + cdsCotacao.FieldByName('idEmpresa').AsString +
       ' AND idCotacao = ' + cdsCotacao.FieldByName('idCotacao').AsString;
    Active := true;
    cdsProduto.First;
    while not cdsProduto.eof do
    begin
      if trim(DBEidCotacao2.Text) = ''  then //não está adicionando a uma cotação existente
      begin
        Append;
        FieldByName('idEmpresa').AsInteger := cdsProdutoidEmpresa.AsInteger;
        FieldByName('idCotacao').AsInteger := cdsCotacao.FieldByName('idCotacao').AsInteger;
        FieldByName('idCotacaoProd').AsInteger := frmPrincipal.ExecutaSQLRet([], '', 'SELECT ISNULL(MAX(idCotacaoProd), 0) AS id FROM CotacaoProd WHERE idEmpresa = ' +
         cdsProdutoidEmpresa.AsString).FieldByName('id').AsInteger + 1;

        FieldByName('idProduto').AsInteger := cdsProdutoidProduto.AsInteger;
        if cdsProdutoidMaquina.AsInteger > 0 then
          FieldByName('idMaquina').AsInteger := cdsProdutoidMaquina.AsInteger;
        FieldByName('qtProduto').Value := cdsProdutoqtProduto.Value;
      end // fim do  if trim(DBEidCotacao2.Text) = ''  then //não está adicionando a uma cotação existente
      else
      begin
        tem := true;
        idProd := cdsProdutoidProduto.AsInteger;
        idMaquina := cdsProdutoidMaquina.AsInteger;
        if not FindKey([idProd,idMaquina]) then
        begin
          IndexFieldNames := 'idProduto';
          if not (idMaquina > 0) then
          begin
            if FindKey([idProd]) then
            begin
              if FieldByName('idMaquina').AsInteger > 0 then //não é o correto
              begin
                Filtered := false;
                Filter := 'idProduto = ' + IntToStr(idProd) + ' AND idMaquina IS NULL';
                Filtered := true;
                if IsEmpty then
                  tem := false
                else
                begin
                  idCadProd := FieldByName('idCotacaoProd').AsInteger;
                  IndexFieldNames := 'idRequisicaoProd';
                  if not FindKey([idCadProd]) then
                    tem := false;
                end;
                Filtered := false;
        end; //  fim do if cdsRequisicaoProdidMaquina.AsInteger > 0 then //não é o correto
      end
      else
        tem := false;
          end
          else
            tem := false;
        end;
        if tem then //se já existe vai só incrementar a quantidade
        begin
          Edit;
          FieldByName('qtProduto').Value := FieldByName('qtProduto').Value + cdsProdutoqtProduto.Value;
        end // fim do if tem then //se já existe vai só incrementar a quantidade
        else
        begin //não tem entào tem que adicionar
          Append;
          FieldByName('idEmpresa').AsInteger := cdsProdutoidEmpresa.AsInteger;
          FieldByName('idCotacao').AsInteger := cdsCotacao.FieldByName('idCotacao').AsInteger;
          FieldByName('idCotacaoProd').AsInteger := frmPrincipal.ExecutaSQLRet([], '', 'SELECT ISNULL(MAX(idCotacaoProd), 0) AS id FROM CotacaoProd WHERE idEmpresa = ' +
           cdsProdutoidEmpresa.AsString).FieldByName('id').AsInteger + 1;

          FieldByName('idProduto').AsInteger := cdsProdutoidProduto.AsInteger;
          if cdsProdutoidMaquina.AsInteger > 0 then
            FieldByName('idMaquina').AsInteger := cdsProdutoidMaquina.AsInteger;
          FieldByName('qtProduto').Value := cdsProdutoqtProduto.Value;
        end; //fim do else if tem then //se já existe vai só incrementar a quantidade
      end;
      Post;
      ApplyUpdates(0);
      cdsProduto.Next;
    end;
  end; // fim do with cdsCotacaoProd do

  // Lança as cotações para os fornecedores
  with cdsFornecedor do
  begin
    if IsEmpty then
      exit;
    First;
    while not Eof do
    begin
      sql := 'EXEC spGeraCotFornecedor ' + funcao.RetornaValorEField(DBEidEmpresa, 3) + ', ' + funcao.RetornaValorEField(DBEidCotacao, 3) + ', ' +
             funcao.RetornaValorEField(DBEidFornecedor, 3) + ', NULL';
      dmPadrao.dbConexao.ExecuteDirect(sql);
      Next;
    end;
  end;
  frmGerenciaRequisicao.idCotacao := cdsCotacao.FieldByName('idCotacao').AsInteger;
  close;
end;

procedure TFrmGeraCotacao.BtnSugerirForClick(Sender: TObject);
begin
  inherited;
  cdsProduto.First;
  while not cdsProduto.Eof do
  begin
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT idFornecedor FROM ProdutoFornecedor WHERE idProduto = ' + cdsProdutoidProduto.AsString) do
    begin
      if not IsEmpty then
      begin
        First;
        while not Eof do
        begin
          if (cdsFornecedor.State in [dsInsert, dsEdit]) then
            cdsFornecedor.Cancel;

          if cdsFornecedor.FindKey([FieldByName('idFornecedor').AsInteger]) then
            cdsFornecedor.Edit
          else
            cdsFornecedor.Append;

          cdsFornecedoridFornecedor.AsInteger := FieldByName('idFornecedor').AsInteger;
          BtnNovoItem.Click;
          Next;
        end; //fim do laço nos fornecedores
      end; //fim do is empty
    end;  // fim do with
    cdsProduto.Next;
  end; //fim do laço nos produtos
end;

procedure TFrmGeraCotacao.cdsPadraoidCotacaoValidate(Sender: TField);
begin
  inherited;
  funcao.SomenteLeitura([DBEidCriterioCompra], cdsPadraoidCotacao.AsInteger > 0);
end;

procedure TFrmGeraCotacao.cdsPadraoidCriterioCompraValidate(Sender: TField);
begin
  inherited;
  funcao.SomenteLeitura([DBEidCotacao2], cdsPadraoidCriterioCompra.AsInteger > 0);
end;

procedure TFrmGeraCotacao.DBEidCotacao2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesCotacao, FrmPesCotacao);
    FrmPesCotacao.idEmpresa := cdsProdutoidEmpresa.AsInteger;
    FrmPesCotacao.ShowModal;
    if FrmPesCotacao.idCotacao <> 0 then
    begin
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Edit;
      cdsPadraoidCotacao.AsString := IntToStr(FrmPesCotacao.idCotacao);
      cdsCotacao.Active := false;
      cdsCotacao.CommandText := 'SELECT * FROM Cotacao WHERE idEmpresa = ' +  FrmPesCotacao.cdsGrididEmpresa.AsString +
           ' AND idCotacao = ' + IntToStr(FrmPesCotacao.idCotacao);
      cdsCotacao.Active := true;
      cdsCotacaoProd.Active := false;
      cdsCotacaoProd.CommandText := 'SELECT * FROM CotacaoProd WHERE idEmpresa = ' +  FrmPesCotacao.cdsGrididEmpresa.AsString +
           ' AND idCotacao = ' + IntToStr(FrmPesCotacao.idCotacao);
      cdsCotacaoProd.Active := true;
      if messagedlg('Deseja utilizar os mesmos fornecedores da cotação?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        with cdsCotacaoFornecedor do
        begin
          Active := false;
          CommandText := 'SELECT * FROM CotacaoFornecedor WHERE idEmpresa = ' +  DBEidEmpresa.Text +
               ' AND idCotacao = ' + DBEidCotacao.Text;
          Active := true;

          cdsFornecedor.EmptyDataSet;
          if IsEmpty then
             exit;
          First;
          while not Eof do
          begin
            cdsFornecedor.Append;
            cdsFornecedoridFornecedor.AsInteger := FieldByName('idFornecedor').AsInteger;
            cdsFornecedor.Post;
            Next;
          end;
        end;
      end; // fim do if messagedlg('Deseja utilizar os mesmos fornecedores da cotação?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    end;
  end;
end;

procedure TFrmGeraCotacao.DBEidFornecedorExit(Sender: TObject);
var
  vl_indice : variant;
begin
  inherited;
  if trim(DBEidFornecedor.Text) <> '' then
  begin
    vl_indice := VarArrayCreate([0,1], VarOleStr);
    vl_indice[0] := DBEidFornecedor.Text;
    if not cdsFornecedor.Locate('idFornecedor', vl_indice, []) then
    begin
      cdsFornecedor.Append;
      DBEidFornecedor.Text := vl_indice[0];
    end;
  end;
end;

procedure TFrmGeraCotacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := caFree;
end;

procedure TFrmGeraCotacao.FormCreate(Sender: TObject);
begin
  inherited;
  cdsFornecedor.CreateDataSet;
  cdsFornecedor.Append;
  cdsProduto.CreateDataSet;
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
end;

procedure TFrmGeraCotacao.FormShow(Sender: TObject);
begin
  inherited;
  DBEidFornecedor.SetFocus;
end;

procedure TFrmGeraCotacao.GridFornecedorCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 3 then
    showmessage(cdsFornecedordescFornecedor.AsString);
end;

end.
