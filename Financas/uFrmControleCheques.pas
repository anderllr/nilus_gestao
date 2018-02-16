unit uFrmControleCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, CFind, DB, SqlExpr, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, CDBCheckBox, frxClass, frxDBSet, System.Actions;

type
  TFrmControleCheques = class(TFrmPadraoPesqEmpFiscal)
    CLabel5: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    CLabel10: TCLabel;
    CLabel8: TCLabel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    DBEidFornecedor: TCDBEdit;
    DBEidCheque: TCDBEdit;
    DBCKdevolucao: TCDBCheckBox;
    DBCKativo: TCDBCheckBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    LookCaixa: TCLookUp;
    DBEidCaixa: TCDBEdit;
    CLabel74: TCLabel;
    BtnPesquisar: TCBitBtn;
    FindCaixa: TCFind;
    Bevel4: TBevel;
    CPanelGradient1: TCPanelGradient;
    CBitBtn2: TCBitBtn;
    cdsPadraodescEmitente: TStringField;
    cdsPadraoidCheque: TIntegerField;
    CLabel82: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    DBEdtCompensacao: TCDBEdit;
    CLabel1: TCLabel;
    BtnDepositar: TCBitBtn;
    BtnImprimirBordero: TCBitBtn;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraoativo: TStringField;
    cdsPadraodevolucao: TStringField;
    cdsPadraoidConta: TIntegerField;
    cdsPadraodtCompensacao: TDateField;
    cdsMovConta: TClientDataSet;
    dsMovConta: TDataSource;
    dspMovConta: TDataSetProvider;
    sdsMovConta: TSQLDataSet;
    sdsChequeRecMov: TSQLDataSet;
    dspChequeRecMov: TDataSetProvider;
    cdsChequeRecMov: TClientDataSet;
    dsChequeRecMov: TDataSource;
    cdsChequeRecMovidChequeRec: TIntegerField;
    cdsChequeRecMovidCliente: TIntegerField;
    cdsChequeRecMovidBanco: TIntegerField;
    cdsChequeRecMovComp: TIntegerField;
    cdsChequeRecMovnrAgencia: TStringField;
    cdsChequeRecMovnrConta: TStringField;
    cdsChequeRecMovnrCheque: TIntegerField;
    cdsChequeRecMovemitente: TStringField;
    cdsChequeRecMovvlCheque: TFMTBCDField;
    cdsChequeRecMovdtLancamento: TSQLTimeStampField;
    cdsChequeRecMovdtVencimento: TSQLTimeStampField;
    cdsChequeRecMovstChequeRec: TStringField;
    cdsChequeRecMovdtEmissao: TSQLTimeStampField;
    cdsChequeRecMovidCaixa: TIntegerField;
    FindConta: TCFind;
    FrxDataset: TfrxDBDataset;
    cdsBordero: TClientDataSet;
    cdsBorderoidChequeRec: TIntegerField;
    cdsBorderoidCliente: TIntegerField;
    cdsBorderoidBanco: TIntegerField;
    cdsBorderoComp: TIntegerField;
    cdsBorderonrAgencia: TStringField;
    cdsBorderonrConta: TStringField;
    cdsBorderonrCheque: TIntegerField;
    cdsBorderoemitente: TStringField;
    cdsBorderovlCheque: TFMTBCDField;
    cdsBorderodtLancamento: TSQLTimeStampField;
    cdsBorderodtVencimento: TSQLTimeStampField;
    cdsBorderostChequeRec: TStringField;
    cdsBorderodtEmissao: TSQLTimeStampField;
    cdsBorderoidCaixa: TIntegerField;
    cdsGridvlTotal: TAggregateField;
    dsBordero: TDataSource;
    Report: TfrxReport;
    cdsTmp: TClientDataSet;
    dsTmp: TDataSource;
    cdsTmpvlTotalCheque: TCurrencyField;
    CPanelGradient2: TCPanelGradient;
    CLabel2: TCLabel;
    DBEvlCheque: TCDBEdit;
    cdsGrididChequeRec: TIntegerField;
    cdsGrididCliente: TIntegerField;
    cdsGrididBanco: TIntegerField;
    cdsGridemitente: TStringField;
    cdsGridvlCheque: TFMTBCDField;
    cdsGriddtLancamento: TSQLTimeStampField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGridstChequeRec: TStringField;
    cdsGriddtEmissao: TSQLTimeStampField;
    cdsGrididCaixa: TIntegerField;
    cdsGridsel: TStringField;
    cdsGrididMovConta: TIntegerField;
    cdsGrididConta: TIntegerField;
    cdsGriddtMovimento: TSQLTimeStampField;
    cdsGrididAlinea: TIntegerField;
    cdsGridstOcorrencia: TStringField;
    cdsGrididChequeRecMov: TIntegerField;
    cdsGridnrCheque: TIntegerField;
    cdsGridnrAgencia: TStringField;
    cdsGridnrConta: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure BtnDepositarClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure DBEdtCompensacaoExit(Sender: TObject);
    procedure AdicionaBordero;
    procedure BtnImprimirBorderoClick(Sender: TObject);
    procedure FinalizaDeposito;
  private
    { Private declarations }
    qtSel : integer;
    FOriginalOptions : TDBGridOptions;
    vlAnterior, nrConta : string;
    vlTotalCheques : Currency;
  public
    { Public declarations }
  end;

var
  FrmControleCheques: TFrmControleCheques;

implementation

uses uFrmPrincipal, uFrmCadMovConta, uDmPadrao, uFrmCadFuncao, uFuncao;

{$R *.dfm}

procedure TFrmControleCheques.AdicionaBordero;
begin
  if Not (cdsBordero.Active) then
    cdsBordero.CreateDataSet;
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsString = 'S' then
    begin
      cdsBordero.Append;
      cdsBorderoidChequeRec.AsInteger := cdsGrididChequeRec.AsInteger;
      cdsBorderoidCliente.AsInteger := cdsGrididCliente.AsInteger;
      cdsBorderoidBanco.AsInteger := cdsGrididBanco.AsInteger;
      cdsBorderoidCaixa.AsInteger := cdsGrididCaixa.AsInteger;
      cdsBorderonrAgencia.AsString := cdsGridnrAgencia.AsString;
      cdsBorderonrConta.AsString := cdsGridnrConta.AsString;
      cdsBorderonrCheque.AsString := cdsGridnrCheque.AsString;
      cdsBorderoemitente.AsString := cdsGridemitente.AsString;
      cdsBorderovlCheque.AsFloat := cdsGridvlCheque.AsFloat;
      cdsBorderodtLancamento.AsDateTime := cdsGriddtLancamento.AsDateTime;
      cdsBorderodtVencimento.AsDateTime := cdsGriddtVencimento.AsDateTime;
      cdsBorderodtEmissao.AsDateTime := cdsGriddtEmissao.AsDateTime;
      cdsBorderostChequeRec.AsString := cdsGridstChequeRec.AsString;
      cdsBordero.Post;
    end;
    cdsGrid.Next;
  end;
end;

procedure TFrmControleCheques.BtnDepositarClick(Sender: TObject);
var
  sql, obs, idAlinea, nrCheque : string;
  idMovConta, idMovCaixa, idChequeRecMov : Integer;
  Permite : Boolean;
begin
  inherited;
  nrCheque := '';
  Permite := True;
  sql := 'SELECT idAlinea FROM ChequeRecMov WHERE idChequeRec = ' + cdsGrididChequeRec.AsString;
  idAlinea := Frmprincipal.ExecutaSQLRet([], '', sql).FieldByName('idAlinea').AsString;
  if idAlinea <> '' then
  begin
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM Alineas WHERE idAlinea = ' + idAlinea) do
    if FieldByName('aceitaReapresentacao').AsString = 'N' then
    begin
      MessageDlg('Alinea não permite Representação', mtWarning, [mbOK], 0);
      Permite := False;
      Exit;
    end
  end
  else
  if Permite then
  begin
    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if cdsGridsel.AsString = 'S' then
      begin
        //Pega as numerações dos cheques
        if nrCheque <> '' then
          nrCheque := nrCheque + ', ' + cdsGridnrCheque.AsString
        else
          nrCheque := cdsGridnrCheque.AsString;
      end;
      cdsGrid.Next;
    end;


    obs := 'DEPOSITO DO CHEQUE NUMERO(s): ' + nrCheque + ' NA CONTA NUMERO : ' + LookContaCorrente.Caption;
    idMovCaixa := frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idMovCaixa) id FROM MovCaixa').FieldByName('id').AsInteger+1;
    idMovConta := frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idMovConta) id FROM MovConta').FieldByName('id').AsInteger+1;

    sql := 'INSERT INTO MovConta (idMovConta, idEmpresa, idCadEmpresa, idConta, dtMovConta, vlMovConta, fator, idMovFinanceira, descMovConta, dtCompensacao)';
    sql := sql + ' VALUES (' + IntToStr(idMovConta) + ', ' + cdsEmpresaidEmpresa.AsString + ', ' +
                 cdsEmpresaidCadEmpresa.AsString + ', ' + cdsPadraoidConta.AsString + ', ' +
                 QuotedStr(DateToStr(date)) + ', ' + QuotedStr(funcao.RetornaValorEField(DBEvlCheque, 3)) + ', ' + '1' + ', ' + '5' + ', ' + QuotedStr(obs) +
                 ', ' + QuotedStr(cdsPadraodtCompensacao.AsString)+')';
    dmPadrao.dbConexao.ExecuteDirect(sql);

    sql := 'INSERT INTO MovCaixa (idMovCaixa, idEmpresa, idCadEmpresa, idCaixa, dtMovCaixa, vlMovCaixa, fator, idMovFinanceira, descMovCaixa)';
    sql := sql + ' VALUES (' + IntToStr(idMovCaixa) + ', ' + cdsEmpresaidEmpresa.AsString + ', ' +
                 cdsEmpresaidCadEmpresa.AsString + ', ' + cdsPadraoidCaixa.AsString + ', ' +
                 QuotedStr(DateToStr(date)) + ', ' +  QuotedStr(funcao.RetornaValorEField(DBEvlCheque, 3)) + ', ' + '-1' + ', ' + '36' + ', ' + QuotedStr(obs) + ')';
    dmPadrao.dbConexao.ExecuteDirect(sql);

    //Inicia inserção individual para controle de Historico dos Cheques
    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if cdsGridsel.AsString = 'S' then
      begin
        sql := 'SELECT * FROM ChequeRec WHERE idChequeRec = ' + cdsGrididChequeRec.AsString;
        cdsChequeRecMov.Active := False;
        cdsChequeRecMov.CommandText := sql;
        cdsChequeRecMov.Active := True;

        if cdsChequeRecMov.RecordCount > 0 then
        begin
          if not(cdsChequeRecMov.State = dsEdit) then
            cdsChequeRecMov.Edit;
          if cdsChequeRecMovstChequeRec.AsString = 'ATIVO' then
            cdsChequeRecMovstChequeRec.AsString := '1 DEPOSITO'
          else
            if cdsChequeRecMovstChequeRec.AsString = '1 DEVOLUCAO' then
              cdsChequeRecMovstChequeRec.AsString := '2 DEPOSITO';
          cdsChequeRecMov.Post;
          cdsChequeRecMov.ApplyUpdates(0);
        end;
        idChequeRecMov := frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idChequeRecMov) id FROM ChequeRecMov').FieldByName('id').AsInteger+1;
        sql := 'INSERT INTO ChequeRecMov (idChequeRec, idMovConta, idConta, dtMovimento, stOcorrencia, idMovCaixa, idCaixa, idChequeRecMov) VALUES ( ' + cdsGrididChequeRec.AsString + ', ' + IntToStr(idMovConta) + ', ' + cdsPadraoidConta.AsString + ', ' +
                QuotedStr(cdsPadraodtCompensacao.AsString) + ', ' + QuotedStr(cdsChequeRecMovstChequeRec.AsString) + ', ' +
                IntToStr(idMovCaixa) + ', ' + cdsPadraoidCaixa.AsString + ', ' + IntToStr(idChequeRecMov) +')';
        dmPadrao.dbConexao.ExecuteDirect(sql);
      end;
      cdsGrid.Next;
    end;
    AdicionaBordero;
    BtnPesquisar.Click;
    FinalizaDeposito;
    if MessageDlg('Deseja Imprimir o Bordero?', mtInformation,[mbYes,mbNo],0) = mrYes then
      BtnImprimirBordero.Click;
  end;
end;

procedure TFrmControleCheques.BtnImprimirBorderoClick(Sender: TObject);
begin
  inherited;
  Report.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'Bordero.fr3');

  Report.Variables['valor']               := QuotedStr(FormatFloat('#,##0.00', cdsTmpvlTotalCheque.AsFloat));

  with FrmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM vCadClienteFiscal WHERE idCliente = ' + DBEidEmpresa.Text + ' AND idCadCliente = 1') do
  begin
    //
    Report.Variables['Nome-Empresa']        := QuotedStr(FieldByName('descCadCliente').asString);
    Report.Variables['Cnpj-Cpf-Empresa']    := QuotedStr(FieldByName('idCnpjCpf').asString);
    Report.Variables['IE-RG-Empresa']       := QuotedStr(FieldByName('idInscEstadual').asString);
    Report.Variables['Endereco']            := QuotedStr(FieldByName('endereco').asString);
    Report.Variables['Cidade']              := QuotedStr(trim(FieldByName('descCidade').asString) + '-' + FieldByName('idEstado').asString);
    Report.Variables['Fone']                := QuotedStr(FieldByName('fone').asString);

    Report.Variables['Nome-Assinatura']     := QuotedStr(trim(LookdescCadEmpresa.Caption));
    Report.Variables['Cnpj-Cpf-Assinatura'] := QuotedStr(trim(lookidCnpjCpf.Caption));
    Report.Variables['Nome']                := QuotedStr(FieldByName('descCadCliente').asString);
    Report.Variables['local-data']          := QuotedStr(trim(FieldByName('descCidade').asString) + '-' + FieldByName('idEstado').asString + ', ' + funcao.CDoW(cdsPadrao.FieldByName('dtCompensacao').AsDateTime, exdDMA));

    Report.Variables['Conta']                := QuotedStr(nrConta);
    Report.Variables['Data']                := QuotedStr(funcao.CDoW(cdsPadrao.FieldByName('dtCompensacao').AsDateTime, exdDMA));
  end;
  Report.ShowReport;
end;

procedure TFrmControleCheques.BtnPesquisarClick(Sender: TObject);
var
  sql, status : string;
begin
  if Trim(DBEidCaixa.Text) = '' then
  begin
    MessageDlg('O Caixa deve ser informado!', mtWarning, [mbOK], 0);
    DBEidCaixa.SetFocus;
    Exit;
  end;

  status := '';
  //Busca dados dos Cheques
  sql := 'SELECT * FROM vBuscaCheques WHERE 1=1';
  if Trim(cdsPadraodescEmitente.AsString) <> '' then
    sql := sql + ' AND emitente LIKE ' + QuotedStr(cdsPadraodescEmitente.AsString + '%');
  if cdsPadraoidCheque.AsInteger > 0 then
    sql := sql + ' AND nrCheque = ' + cdsPadraoidCheque.AsString;
  if Trim(cdsPadraodtInicial.AsString) <> '' then
    sql := sql + ' AND dtLancamento >= ' + QuotedStr(cdsPadraodtInicial.AsString);
  if Trim(cdsPadraodtFinal.AsString) <> '' then
    sql := sql + ' AND dtLancamento <= ' + QuotedStr(cdsPadraodtFinal.AsString);
  if Trim(cdsPadraodtVencimentoIni.AsString) <> '' then
    sql := sql + ' AND dtVencimento >= ' + QuotedStr(cdsPadraodtVencimentoIni.AsString);
  if Trim(cdsPadraodtVencimentoFim.AsString) <> '' then
    sql := sql + ' AND dtVencimento <= ' + QuotedStr(cdsPadraodtVencimentoFim.AsString);
  if cdsPadraoidCaixa.AsInteger > 0 then
    sql := sql + ' AND idCaixa = ' + cdsPadraoidCaixa.AsString;
  if DBCKativo.Checked then
    status := QuotedStr('ATIVO');
  if ((status <> '') AND (DBCKdevolucao.Checked)) then
    status := status + ', ' ;
  if DBCKdevolucao.Checked then
    status := status + QuotedStr('1 DEVOLUCAO');

  if status <> '' then
    sql := sql + ' AND stChequeRec IN (' + status + ')'
  else
    sql := sql + ' AND stChequeRec = ' +  QuotedStr('99');

  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;
end;

procedure TFrmControleCheques.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoativo.AsString := 'S';
  cdsPadraodevolucao.AsString := 'N';
end;

procedure TFrmControleCheques.DBEdtCompensacaoExit(Sender: TObject);
begin
  inherited;
  if (Trim(DBEidConta.Text) <> '') AND (Trim(DBEdtCompensacao.Text)<> '') then
  begin
    BtnDepositar.Enabled := True;
    BtnImprimirBordero.Enabled := True;
  end;
end;

procedure TFrmControleCheques.DBGridCellClick(Column: TColumn);
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
        //Faz a soma do valor total do cheque
        vlTotalCheques := vlTotalCheques - cdsGridvlCheque.AsCurrency;

        //Faz verificações de estado de Clientdataset em Memoria e em seguida atribui o valor total dos cheques
        if not(cdsTmp.Active) then
          cdsTmp.Open;
        if not(cdsTmp.State IN [dsEdit, dsInsert]) then
          cdsTmp.Edit;
        cdsTmpvlTotalCheque.AsCurrency := vlTotalCheques;
      end
      else
      begin
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
        //Faz a soma do valor total do cheque
        vlTotalCheques := vlTotalCheques + cdsGridvlCheque.AsCurrency;

        //Faz verificações de estado de Clientdataset em Memoria e em seguida atribui o valor total dos cheques
        if not(cdsTmp.Active) then
          cdsTmp.Open;
        if not(cdsTmp.State IN [dsEdit, dsInsert]) then
          cdsTmp.Edit;
        cdsTmpvlTotalCheque.AsCurrency := vlTotalCheques;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    if not (Column.Index in [9,10]) then
      Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmControleCheques.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid.SelectedIndex in [0,9, 10]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmControleCheques.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmControleCheques.FinalizaDeposito;
begin
  //Funcao para desabilitar botões e limpar campos após o Deposito
  nrConta := LookAgencia.Caption + '-' + LookContaCorrente.Caption + '-' + LookdescConta.Caption;
  BtnDepositar.Enabled := False;
  DBEidConta.Clear;
  DBEdtCompensacao.Clear;
  LookAgencia.Caption := '';
  LookContaCorrente.Caption := '';
  LookdescConta.Caption := '';
end;

procedure TFrmControleCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmControleCheques := nil;
end;

procedure TFrmControleCheques.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
end;

procedure TFrmControleCheques.FormShow(Sender: TObject);
begin
  inherited;
  Height := 510;
  Width := 790;
  if not(cdsMovConta.Active) then
    cdsMovConta.Open;
  BtnDepositar.Enabled := False;
  BtnImprimirBordero.Enabled := False;
  cdsTmp.CreateDataSet;
end;

end.
