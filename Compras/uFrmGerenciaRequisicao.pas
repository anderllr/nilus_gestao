unit uFrmGerenciaRequisicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, DBXCommon, System.Actions;

type
  TFrmGerenciaRequisicao = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    FindFornecedor: TCFind;
    CLabel3: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtEmissaoFim: TCDBEdit;
    PanRodape: TCPanelGradient;
    BtnConfirmar: TCBitBtn;
    actConfirmar: TAction;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    FindConta: TCFind;
    cdsPadraodtEmissaoIni: TDateField;
    cdsPadraodtEmissaoFim: TDateField;
    cdsGridsel: TStringField;
    Bevel6: TBevel;
    DBEidReqFim: TCDBEdit;
    CLabel1: TCLabel;
    DBEidReqIni: TCDBEdit;
    CLabel4: TCLabel;
    LookProduto: TCLookUp;
    DBEidProduto: TCDBEdit;
    CLabel5: TCLabel;
    LookMaquina: TCLookUp;
    DBEidMaquina: TCDBEdit;
    CLabel6: TCLabel;
    LookProdDeposito: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    lblDeposito: TCLabel;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidReqIni: TIntegerField;
    cdsPadraoidReqFim: TIntegerField;
    cdsPadraoidProdDeposito: TIntegerField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsGrididRequisicao: TIntegerField;
    cdsGrididProduto: TIntegerField;
    cdsGriddescProduto: TStringField;
    cdsGridqtProduto: TFloatField;
    cdsGridqtAtendido: TFloatField;
    cdsGridqtSolicitado: TFloatField;
    cdsGridqtCancelada: TFloatField;
    cdsGridqtDeposito: TFloatField;
    cdsGridqtEstoque: TFloatField;
    cdsGridqtAAtender: TFloatField;
    cdsGridqtASolicitar: TFloatField;
    cdsGridqtACancelar: TFloatField;
    DBEqtSaldo: TCDBEdit;
    CLabel26: TCLabel;
    DBEqtAAtender: TCDBEdit;
    CLabel2: TCLabel;
    DBEqtASolicitar: TCDBEdit;
    CLabel8: TCLabel;
    DBEqtACancelar: TCDBEdit;
    CLabel9: TCLabel;
    actAtender: TAction;
    Bevel7: TBevel;
    BtnAtender: TCBitBtn;
    BtnSolicitar: TCBitBtn;
    BtnCancelar: TCBitBtn;
    actSolicitar: TAction;
    actCancelar: TAction;
    cdsGridqtSaldo: TFloatField;
    cdsGrids_qtAAtender: TAggregateField;
    cdsGrids_qtASolicitar: TAggregateField;
    cdsGrids_qtACancelar: TAggregateField;
    DBEqtCancelada: TCDBEdit;
    cdsGrididEmpresa: TIntegerField;
    cdsGrididCadEmpresa: TIntegerField;
    DBEidEmpresaR: TCDBEdit;
    DBEidCadEmpresaR: TCDBEdit;
    DBEidRequisicao: TCDBEdit;
    cdsGrididRequisicaoProd: TIntegerField;
    DBEdtAtendimento: TCDBEdit;
    CLabel10: TCLabel;
    cdsPadraodtAtendimento: TDateField;
    dsClassificacao: TDataSource;
    cdsReqProdAtend: TClientDataSet;
    dspReqProdAtend: TDataSetProvider;
    sdsReqProdAtend: TSQLDataSet;
    DBEqtAtendido: TCDBEdit;
    dsReqProdCot: TDataSource;
    cdsReqProdCot: TClientDataSet;
    dspReqProdCot: TDataSetProvider;
    sdsReqProdCot: TSQLDataSet;
    DBEqtSolicitado: TCDBEdit;
    dsCotacaoProd: TDataSource;
    cdsCotacaoProd: TClientDataSet;
    dspCotacaoProd: TDataSetProvider;
    sdsCotacaoProd: TSQLDataSet;
    cdsGridcodFabricante: TStringField;
    cdsPadraoidMaquina: TIntegerField;
    cdsGrididMaquina: TIntegerField;
    cdsGriddescMaquina: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure cdsGridCalcFields(DataSet: TDataSet);
    procedure dsGridStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure actAtenderExecute(Sender: TObject);
    procedure actSolicitarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure cdsGridAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;
    qtAAtender: double;
    qtASolicitar: double;
    qtACancelar: double;

  public
    { Public declarations }
    idEmpresa : integer;
    idCotacao : integer;
  end;

var
  FrmGerenciaRequisicao: TFrmGerenciaRequisicao;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPadraoPesquisa,
  uDmFind, uFrmGeraCotacao, uFrmCadCotacao;

{$R *.dfm}

procedure TFrmGerenciaRequisicao.cdsGridAfterScroll(DataSet: TDataSet);
begin
  inherited;
  funcao.SomenteLeitura([DBEqtAAtender], (DataSet.FieldByName('sel').AsString <> 'S') or (trim(DBEidProdDeposito.Text) = ''));
  funcao.SomenteLeitura([DBEqtASolicitar, DBEqtACancelar], DataSet.FieldByName('sel').AsString <> 'S');
end;

procedure TFrmGerenciaRequisicao.cdsGridCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridqtSaldo.AsFloat := cdsGridqtProduto.AsFloat-(cdsGridqtAtendido.AsFloat+cdsGridqtSolicitado.AsFloat+cdsGridqtCancelada.AsFloat);
end;

procedure TFrmGerenciaRequisicao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'S';
end;


procedure TFrmGerenciaRequisicao.actAtenderExecute(Sender: TObject);
var
  sql : string;
  id : integer;
begin
  inherited;
  if trim(DBEidProdDeposito.Text) = '' then
  begin
    messagedlg('É preciso informar o depósito no qual será dado baixa dos produtos selecionados!', mtwarning, [mbok], 0);
    exit;
  end;
  if trim(DBEdtAtendimento.Text) = '' then
  begin
    messagedlg('É preciso informar a data do atendimento da Requisição!', mtwarning, [mbok], 0);
    exit;
  end;
  with cdsGrid do
  begin
    First;
    while not Eof do
    begin
      if (FieldByName('Sel').AsString = 'S') and (FieldByName('qtAAtender').AsFloat > 0) then
      begin
        sql := 'SELECT MAX(idRequisicaoProdAtend) AS id FROM RequisicaoProdAtend WHERE idEmpresa = ' + cdsGrididEmpresa.AsString + ' AND idCadEmpresa = ' +
               cdsGrididCadEmpresa.AsString + ' AND idRequisicao = ' + cdsGrididRequisicao.AsString;
        with frmPrincipal.ExecutaSQLRet([], '', sql) do
        begin
          if RecordCount = 0 then
            id := 1
          else
            id := FieldByName('id').AsInteger + 1;
        end;
        with cdsReqProdAtend do
        begin
          Active := false;
          CommandText := 'SELECT * FROM RequisicaoProdAtend WHERE idEmpresa = ' + cdsGrididEmpresa.AsString + ' AND idCadEmpresa = ' +
               cdsGrididCadEmpresa.AsString + ' AND idRequisicao = ' + cdsGrididRequisicao.AsString;
          Active := true;

          Append;
          FieldByName('idEmpresa').AsInteger := cdsGrididEmpresa.AsInteger;
          FieldByName('idCadEmpresa').AsInteger := cdsGrididCadEmpresa.AsInteger;
          FieldByName('idRequisicao').AsInteger := cdsGrididRequisicao.AsInteger;
          FieldByName('idRequisicaoProd').AsInteger := cdsGrididRequisicaoProd.AsInteger;
          FieldByName('idProdDeposito').AsInteger := cdsPadraoidProdDeposito.AsInteger;
          FieldByName('idRequisicaoProdAtend').AsInteger := id;
          FieldByName('dtRequisicaoProdAtend').AsDateTime := date;
          FieldByName('idProduto').AsInteger := cdsGrididProduto.AsInteger;
          FieldByName('qtAtendido').AsFloat := cdsGridqtAAtender.AsFloat;
          Post;
          ApplyUpdates(0);
        end;
        Edit;
        FieldByName('qtAtendido').AsFloat := FieldByName('qtAtendido').AsFloat + FieldByName('qtAAtender').AsFloat;
        FieldByName('qtAAtender').AsFloat := 0;
        Post;
        sql := 'UPDATE RequisicaoProd SET qtAtendido = ' + funcao.RetornaValorEField(DBEqtAtendido, 3) +
               ' WHERE idEmpresa = ' + cdsGrididEmpresa.AsString + ' AND idCadEmpresa = ' +
               cdsGrididCadEmpresa.AsString + ' AND idRequisicao = ' + cdsGrididRequisicao.AsString +
               ' AND idProduto = ' + cdsGrididProduto.AsString;
        if cdsGrididMaquina.AsInteger > 0 then
          sql := sql + ' AND idMaquina = ' + cdsGrididMaquina.AsString
        else
          sql := sql + ' AND idMaquina IS NULL';

        dmPadrao.dbConexao.ExecuteDirect(sql);
        frmPrincipal.ExecutaSQLRet([DBEidEmpresaR, DBEidCadEmpresaR, DBEidRequisicao], 'spMudaStatusReq', '');
      end; //if FieldByName('S').AsString = 'S' then
      Next;
    end; //while not Eof do
  end; // with cdsGrid do
end;

procedure TFrmGerenciaRequisicao.actCancelarExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;
  with cdsGrid do
  begin
    First;
    while not Eof do
    begin
      if (FieldByName('Sel').AsString = 'S') and (FieldByName('qtACancelar').AsFloat > 0) then
      begin
        Edit;
        FieldByName('qtCancelada').AsFloat := FieldByName('qtCancelada').AsFloat + FieldByName('qtACancelar').AsFloat;
        FieldByName('qtACancelar').AsFloat := 0;
        Post;
        sql := 'UPDATE RequisicaoProd SET qtCancelada = ' + funcao.RetornaValorEField(DBEqtCancelada, 3) +
               ' WHERE idEmpresa = ' + cdsGrididEmpresa.AsString + ' AND idCadEmpresa = ' +
               cdsGrididCadEmpresa.AsString + ' AND idRequisicao = ' + cdsGrididRequisicao.AsString +
               ' AND idProduto = ' + cdsGrididProduto.AsString;
        if cdsGrididMaquina.AsInteger > 0 then
          sql := sql + ' AND idMaquina = ' + cdsGrididMaquina.AsString
        else
          sql := sql + ' AND idMaquina IS NULL';

        dmPadrao.dbConexao.ExecuteDirect(sql);
        frmPrincipal.ExecutaSQLRet([DBEidEmpresaR, DBEidCadEmpresaR, DBEidRequisicao], 'spMudaStatusReq', '');
      end; //if FieldByName('S').AsString = 'S' then
      Next;
    end; //while not Eof do
  end; // with cdsGrid do
end;

procedure TFrmGerenciaRequisicao.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  if (cdsGridqtAAtender.AsFloat + cdsGridqtASolicitar.AsFloat + cdsGridqtACancelar.AsFloat) > cdsGridqtSaldo.AsFloat then
  begin
    messagedlg('As quantidades não podem ser maiores que o Saldo da Requisição!', mtwarning, [mbok], 0);
    exit;
  end;
  if (cdsGridqtAAtender.AsFloat > (cdsGridqtDeposito.AsFloat)) then
  begin
    messagedlg('Saldo em estoque insuficiente para atender essa quantidade!', mtwarning, [mbok], 0);
    exit;
  end;
  cdsGrid.Post;
  actSolicitar.Enabled := cdsGrids_qtASolicitar.Value  > 0;
  actAtender.Enabled := (cdsGrids_qtAAtender.Value > 0) and (trim(DBEidProdDeposito.Text) <> '');
  DBEdtAtendimento.Visible := actAtender.Enabled;
  actCancelar.Enabled := cdsGrids_qtACancelar.Value > 0;
end;

procedure TFrmGerenciaRequisicao.actExecutarExecute(Sender: TObject);
begin
  cdsGrid.EmptyDataSet;

  with frmPrincipal.ExecutaSQLRet([DBEidEmpresa, DBEidCadEmpresa, DBEidProduto, DBEidReqIni,
              DBEidReqFim, DBEidMaquina, DBEdtEmissaoIni, DBEdtEmissaoFim, DBEidProdDeposito,
              DBCKconsolidaemp, DBCKconsolidafilial], 'spRetDadosRequisicao', '') do
  begin
    if (RecordCount = 1) and (FieldByName('idRequisicao').IsNull) then
    begin
      messagedlg('Sem dados!', mtinformation, [mbok], 0);
      exit;
    end;

    if IsEmpty then
    begin
      messagedlg('Sem dados!', mtinformation, [mbok], 0);
      exit;
    end;
    First;
    while not Eof do
    begin
      cdsGrid.Append;
      cdsGridsel.AsString := 'N';
      cdsGrididEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
      cdsGrididCadEmpresa.AsInteger := FieldByName('idCadEmpresa').AsInteger;            
      cdsGrididRequisicao.AsInteger := FieldByName('idRequisicao').AsInteger;
      cdsGrididRequisicaoProd.AsInteger := FieldByName('idRequisicaoProd').AsInteger;
      cdsGrididProduto.AsInteger := FieldByName('idProduto').AsInteger;
      cdsGriddescProduto.AsString := FieldByName('descProduto').AsString;
      cdsGridqtProduto.AsFloat := FieldByName('qtProduto').AsFloat;
      cdsGridqtAtendido.AsFloat := FieldByName('qtAtendido').AsFloat;
      cdsGridqtSolicitado.AsFloat := FieldByName('qtSolicitada').AsFloat;
      cdsGridqtCancelada.AsFloat := FieldByName('qtCancelada').AsFloat;
      cdsGridqtAAtender.AsFloat := 0;
      cdsGridqtASolicitar.AsFloat := (FieldByName('qtProduto').AsFloat)-(FieldByName('qtAtendido').AsFloat+FieldByName('qtSolicitada').AsFloat+FieldByName('qtCancelada').AsFloat);
      cdsGridqtACancelar.AsFloat := 0;
      cdsGridqtDeposito.AsFloat := FieldByName('qtDeposito').AsFloat;
      cdsGridqtEstoque.AsFloat := FieldByName('qtEstoque').AsFloat;
      cdsGrididMaquina.AsInteger := FieldByName('idMaquina').AsInteger;
      cdsGriddescMaquina.AsString := FieldByName('descMaquina').AsString;
      cdsGridcodFabricante.AsString := FieldByName('codFabricante').AsString;
      cdsGrid.Post;
      Next;
    end;
  end;

  DBEidProduto.SetFocus;
  qtSel := 0;
  qtAAtender := 0;
  qtASolicitar := 0;
  qtACancelar := 0;
  funcao.SomenteLeitura([DBEqtAAtender, DBEqtASolicitar, DBEqtACancelar], true);

  actSolicitar.Enabled := cdsGrids_qtASolicitar.Value  > 0;
  actAtender.Enabled := (cdsGrids_qtAAtender.Value > 0)  and (trim(DBEidProdDeposito.Text) <> '');
  DBEdtAtendimento.Visible := actAtender.Enabled;  
  actCancelar.Enabled := cdsGrids_qtACancelar.Value > 0;
  inherited;
end;

procedure TFrmGerenciaRequisicao.actSolicitarExecute(Sender: TObject);
var
  vl_indBem : variant;
  tem : boolean;
  idProd, idMaquina, idRec : integer;
  sql : string;
begin
  inherited;
  vl_indBem := VarArrayCreate([0,2], VarOleStr);

  Application.CreateForm(TFrmGeraCotacao, FrmGeraCotacao);
  // Inicia o controle de transação

  try
    //inicia a geração dos produtos no grid de produtos
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      First;
      while not eof do
      begin
        if (FieldByName('Sel').AsString = 'S') and (FieldByName('qtASolicitar').AsFloat > 0) then
        begin
            //verifica se o bem é null para buscar pela chave dupla
///**********************************************************************************///
          idProd := FieldByName('idProduto').AsInteger;
          idMaquina := FieldByName('idMaquina').AsInteger;
          if FrmGeraCotacao.cdsProduto.State in [dsInsert, dsEdit] then
            FrmGeraCotacao.cdsProduto.Cancel;

          tem := true;
          FrmGeraCotacao.cdsProduto.IndexFieldNames := 'idProduto;idMaquina';
          if not FrmGeraCotacao.cdsProduto.FindKey([idProd,idMaquina]) then
          begin
            FrmGeraCotacao.cdsProduto.IndexFieldNames := 'idProduto';
            if not (idMaquina > 0) then
            begin
              if FrmGeraCotacao.cdsProduto.FindKey([idProd]) then
              begin
                if FrmGeraCotacao.cdsProdutoidMaquina.AsInteger > 0 then //não é o correto
                begin
                  FrmGeraCotacao.cdsProduto.Filtered := false;
                  FrmGeraCotacao.cdsProduto.Filter := 'idProduto = ' + IntToStr(idProd) + ' AND idMaquina IS NULL';
                  FrmGeraCotacao.cdsProduto.Filtered := true;
                  if FrmGeraCotacao.cdsProduto.IsEmpty then
                    tem := false
                  else
                  begin
                    idRec := FrmGeraCotacao.cdsProduto.RecNo;
                    FrmGeraCotacao.cdsProduto.First;
                    While FrmGeraCotacao.cdsProduto.Eof do
                    begin
                      if FrmGeraCotacao.cdsProduto.RecNo = idRec then
                        FrmGeraCotacao.cdsProduto.Last
                      else
                        FrmGeraCotacao.cdsProduto.Next;
                    end;
                  end;
                  FrmGeraCotacao.cdsProduto.Filtered := false;
                end; //  fim do if cdsRequisicaoProdidMaquina.AsInteger > 0 then //não é o correto
              end
              else
                tem := false;
            end
            else
              tem := false;
          end;
///**********************************************************************************///
          if not tem then
          begin
            FrmGeraCotacao.cdsProduto.Append;
            FrmGeraCotacao.cdsProdutoidEmpresa.AsInteger := FieldByName('idEmpresa').AsInteger;
            FrmGeraCotacao.cdsProdutoidProduto.AsInteger := FieldByName('idProduto').AsInteger;
            FrmGeraCotacao.cdsProdutocodFabricante.AsString := FieldByName('codFabricante').AsString;
            FrmGeraCotacao.cdsProdutoqtProduto.Value := FieldByName('qtASolicitar').Value;
            if FieldByName('idMaquina').AsInteger > 0 then
              FrmGeraCotacao.cdsProdutoidMaquina.AsInteger := FieldByName('idMaquina').AsInteger;
            FrmGeraCotacao.cdsProduto.Post;
          end
          else //abre para edição para incrementar a quantidade de produtos
          begin
            FrmGeraCotacao.cdsProduto.Edit;
            FrmGeraCotacao.cdsProdutoqtProduto.Value := FrmGeraCotacao.cdsProdutoqtProduto.Value + FieldByName('qtASolicitar').Value;
            FrmGeraCotacao.cdsProduto.Post;
          end;
        end; //if (FieldByName('Sel').AsString = 'S') and (FieldByName('qtACancelar').AsFloat > 0) then
        Next;
      end; // fim do while not do
    end; ///fim do with cdsGrid
    ///
    idCotacao := 0;
    FrmGeraCotacao.ShowModal;

    if idCotacao > 0 then //Abre cotação
    begin
      cdsCotacaoProd.Active := false;
      cdsCotacaoProd.CommandText := 'SELECT * FROM CotacaoProd WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND idCotacao = ' + IntToStr(idCotacao);
      cdsCotacaoProd.Active := true;
    //finaliza a parte da solicitação se foi gerado requisição
      with cdsGrid do
      begin
        First;
        while not Eof do
        begin
          if (FieldByName('Sel').AsString = 'S') and (FieldByName('qtASolicitar').AsFloat > 0) then
          begin
            with cdsReqProdCot do
            begin
              Active := false;
              CommandText := 'SELECT * FROM RequisicaoProdCot WHERE idEmpresa = ' + cdsGrididEmpresa.AsString + ' AND idCadEmpresa = ' +
                   cdsGrididCadEmpresa.AsString + ' AND idRequisicao = ' + cdsGrididRequisicao.AsString +
                   ' AND idRequisicaoProd = ' + cdsGrididRequisicaoProd.AsString;
              Active := true;
              cdsCotacaoProd.Filtered := false;
              cdsCotacaoProd.Filter := 'idProduto = ' + cdsGrididProduto.AsString;

              if cdsGrididMaquina.AsInteger > 0 then
                cdsCotacaoProd.Filter := cdsCotacaoProd.Filter + ' AND idMaquina = ' + cdsGrididMaquina.AsString;
              cdsCotacaoProd.Filtered := true;

              Append;
              FieldByName('idEmpresa').AsInteger := cdsGrididEmpresa.AsInteger;
              FieldByName('idCadEmpresa').AsInteger := cdsGrididCadEmpresa.AsInteger;
              FieldByName('idRequisicao').AsInteger := cdsGrididRequisicao.AsInteger;
              FieldByName('idRequisicaoProd').AsInteger := cdsGrididRequisicaoProd.AsInteger;
              FieldByName('idCotacaoProd').AsInteger := cdsCotacaoProd.FieldByName('idCotacaoProd').AsInteger;
              FieldByName('idCotacao').AsInteger := idCotacao;
              FieldByName('qtSolicitada').AsFloat := cdsGridqtASolicitar.AsFloat;
              Post;
              ApplyUpdates(0);
            end;
            Edit;
            FieldByName('qtSolicitado').AsFloat := FieldByName('qtSolicitado').AsFloat + FieldByName('qtASolicitar').AsFloat;
            FieldByName('qtASolicitar').AsFloat := 0;
            Post;
            sql := 'UPDATE RequisicaoProd SET qtSolicitada = ' + funcao.RetornaValorEField(DBEqtSolicitado, 3) +
                   ' WHERE idEmpresa = ' + cdsGrididEmpresa.AsString + ' AND idCadEmpresa = ' +
                   cdsGrididCadEmpresa.AsString + ' AND idRequisicao = ' + cdsGrididRequisicao.AsString +
                   ' AND idProduto = ' + cdsGrididProduto.AsString;
            if cdsGrididMaquina.AsInteger > 0 then
              sql := sql + ' AND idMaquina = ' + cdsGrididMaquina.AsString
            else
              sql := sql + ' AND idMaquina IS NULL';

            dmPadrao.dbConexao.ExecuteDirect(sql);
            frmPrincipal.ExecutaSQLRet([DBEidEmpresaR, DBEidCadEmpresaR, DBEidRequisicao], 'spMudaStatusReq', '');
          end; //if FieldByName('S').AsString = 'S' then
          Next;
        end; //while not Eof do
      end; // with cdsGrid do

      if not Assigned(frmCadCotacao) then
        frmCadCotacao := TfrmCadCotacao.create(frmPrincipal, [IntToStr(idCotacao)]);
      frmCadCotacao.Show;
    end;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
    end;
  end;

end;

procedure TFrmGerenciaRequisicao.DBGridCellClick(Column: TColumn);
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
        qtSel := qtSel - 1;      
        FieldByName('sel').AsString := 'N';
//        FieldByName('qtAAtender').AsFloat := 0;
//        FieldByName('qtASolicitar').AsFloat := 0;
//        FieldByName('qtACancelar').AsFloat := 0;
        funcao.SomenteLeitura([DBEqtAAtender, DBEqtASolicitar, DBEqtACancelar], true);
      end
      else
      begin
        qtSel := qtSel + 1;
        FieldByName('sel').AsString := 'S';
        funcao.SomenteLeitura([DBEqtAAtender], (trim(DBEidProdDeposito.Text) = ''));
        funcao.SomenteLeitura([DBEqtASolicitar, DBEqtACancelar], false);
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;

  actSolicitar.Enabled := cdsGrids_qtASolicitar.Value  > 0;
  actAtender.Enabled := (cdsGrids_qtAAtender.Value > 0) and (trim(DBEidProdDeposito.Text) <> '');
  DBEdtAtendimento.Visible := actAtender.Enabled;  
  actCancelar.Enabled := cdsGrids_qtACancelar.Value > 0;
   
end;

procedure TFrmGerenciaRequisicao.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmGerenciaRequisicao.DBGridDrawColumnCell(Sender: TObject;
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

{ if (marca) and (Column.Index > 0) then
  begin
    DBGrid.Canvas.Brush.Color := $00EFEFEF; // coloque aqui a cor desejada
    DBGrid.DefaultDrawDataCell(Rect, DBGrid.columns[datacol].field, State);
  end; }

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

procedure TFrmGerenciaRequisicao.dsGridStateChange(Sender: TObject);
begin
  inherited;
  actConfirmar.Enabled := cdsGrid.State in [dsInsert, dsEdit];
end;

procedure TFrmGerenciaRequisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmGerenciaRequisicao := nil;
end;

procedure TFrmGerenciaRequisicao.FormCreate(Sender: TObject);
begin
  inherited;
  cdsGrid.CreateDataSet;
  foco := DBEidProduto;
  Width := 750;
  Height := 480;
  qtSel := 0;
end;

procedure TFrmGerenciaRequisicao.FormShow(Sender: TObject);
begin
  inherited;
  funcao.SomenteLeitura([DBEqtAAtender, DBEqtASolicitar, DBEqtACancelar], true);
  actSolicitar.Enabled := false;
  actAtender.Enabled := false;
  DBEdtAtendimento.Visible := actAtender.Enabled;
  actCancelar.Enabled := false;
end;

end.


