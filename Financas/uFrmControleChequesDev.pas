unit uFrmControleChequesDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, CFind, DB, SqlExpr, DBClient,
  Provider, ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid,
  CGroupBox, CDBCheckBox;

type
  TFrmControleChequesDev = class(TFrmPadraoPesqEmpFiscal)
    CLabel4: TCLabel;
    CLabel6: TCLabel;
    CLabel10: TCLabel;
    CLabel8: TCLabel;
    CLabel7: TCLabel;
    CLabel9: TCLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    DBEdtVencimentoIni: TCDBEdit;
    DBEdtVencimentoFim: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    DBEidCheque: TCDBEdit;
    DBCKdevolucao: TCDBCheckBox;
    DBCKDepositado: TCDBCheckBox;
    BtnPesquisar: TCBitBtn;
    LookdescConta: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookAgencia: TCLookUp;
    DBEidConta: TCDBEdit;
    CLabel82: TCLabel;
    CGroupBox1: TCGroupBox;
    CPanelGradient1: TCPanelGradient;
    BtnDevolver: TCBitBtn;
    CBitBtn3: TCBitBtn;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    CDBEdit1: TCDBEdit;
    CDBEdit2: TCDBEdit;
    Bevel1: TBevel;
    BtnAdicionar: TCBitBtn;
    BtnLimpaSelecao: TCBitBtn;
    cdsPadraodescEmitente: TStringField;
    cdsPadraoidCheque: TIntegerField;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    cdsPadraoidCaixa: TIntegerField;
    cdsPadraoativo: TStringField;
    cdsPadraodevolucao: TStringField;
    cdsPadraoidConta: TIntegerField;
    cdsPadraodtCompensacao: TDateField;
    DBGrid1: TCDBGrid;
    cdsGrid2: TClientDataSet;
    cdsGrid2sel: TStringField;
    dsGrid2: TDataSource;
    LookCaixa: TCLookUp;
    DBEidCaixa: TCDBEdit;
    CLabel74: TCLabel;
    CLabel3: TCLabel;
    DBEidAlinea: TCDBEdit;
    LookAlinea: TCLookUp;
    CLabel5: TCLabel;
    DBEdtDevolucao: TCDBEdit;
    cdsPadraoidAlinea: TIntegerField;
    cdsPadraodtDevolucao: TDateField;
    cdsGrid2idChequeRec: TIntegerField;
    cdsGrid2idCliente: TIntegerField;
    cdsGrid2idBanco: TIntegerField;
    cdsGrid2Comp: TIntegerField;
    cdsGrid2nrAgencia: TStringField;
    cdsGrid2nrConta: TStringField;
    cdsGrid2nrCheque: TIntegerField;
    cdsGrid2emitente: TStringField;
    cdsGrid2vlCheque: TFMTBCDField;
    cdsGrid2dtLancamento: TSQLTimeStampField;
    cdsGrid2dtVencimento: TSQLTimeStampField;
    cdsGrid2stChequeRec: TStringField;
    cdsGrid2dtEmissao: TSQLTimeStampField;
    cdsGrid2idCaixa: TIntegerField;
    dsChequeRecMov: TDataSource;
    cdsChequeRecMov: TClientDataSet;
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
    dspChequeRecMov: TDataSetProvider;
    sdsChequeRecMov: TSQLDataSet;
    FindConta: TCFind;
    FindCaixa: TCFind;
    FindAlinea: TCFind;
    cdsGrid2vlTotal: TAggregateField;
    CPanelGradient2: TCPanelGradient;
    CLabel11: TCLabel;
    DBEvlCheque: TCDBEdit;
    dsTmp: TDataSource;
    cdsTmp: TClientDataSet;
    cdsTmpvlTotalCheque: TCurrencyField;
    cdsGrid2idConta: TIntegerField;
    BtnRetirar: TCBitBtn;
    DBEvlTotalCheque: TCDBEdit;
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
    procedure actExecutarExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDblClick(Sender: TObject);
    procedure BtnDevolverClick(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure AdicionaGrid;
    procedure DBEdtDevolucaoExit(Sender: TObject);
    procedure BtnLimpaSelecaoClick(Sender: TObject);
    procedure FinalizaDevolucao;
    procedure BtnRetirarClick(Sender: TObject);
  private
    { Private declarations }
    qtSel : integer;
    FOriginalOptions : TDBGridOptions;
    vlAnterior : string;
    vlTotalCheques : Currency;
  public
    { Public declarations }
  end;

var
  FrmControleChequesDev: TFrmControleChequesDev;

implementation

uses uFrmCadMovCaixa, uDmFind, uFrmPrincipal, uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmControleChequesDev.actExecutarExecute(Sender: TObject);
var
  sql, status, idBanco : string;
begin
  if Trim(DBEidConta.Text) = '' then
  begin
    MessageDlg('A Conta deve ser informado!', mtWarning, [mbOK], 0);
    DBEidConta.SetFocus;
    Exit;
  end;
  status := '';
  //Busca dados dos Cheques
 // sql := 'SELECT C.*, ' + QuotedStr('N') + ' AS sel FROM ChequeRec C WHERE 1=1';
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
  if cdsPadraoidConta.AsInteger > 0 then
    sql := sql + ' AND idConta = ' + cdsPadraoidConta.AsString;

  if DBCKDepositado.Checked then
    status := QuotedStr('1 DEPOSITO') + ', ' + QuotedStr('2 DEPOSITO');
  if status <> '' then
    sql := sql + ' AND stChequeRec IN (' + status + ')'
  else
    sql := sql + 'AND stChequeRec = ' + QuotedStr('999');

  //  sql := sql + ' GROUP BY C.Comp, C.dtEmissao, C.dtLancamento, C.dtVencimento, C.emitente, C.idBanco, C.idCaixa, C.idChequeRec, C.idCliente, ' +
  //         		   ' C.nrAgencia, C.nrCheque, C.nrConta, C.stChequeRec, C.vlCheque';

  cdsGrid.Active := False;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := True;
  if cdsGrid.RecordCount > 0  then
  begin
    BtnLimpaSelecao.Enabled := True;
    BtnAdicionar.Enabled := True;
  end;
end;

procedure TFrmControleChequesDev.AdicionaGrid;
begin
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    if cdsGridsel.AsString = 'S' then
    begin
      if not(cdsGrid2.Active) then
        cdsGrid2.Open;
      cdsGrid2.IndexFieldNames := 'idChequeRec';
      if cdsGrid2.FindKey([cdsGrididChequeRec.AsInteger]) then
      begin
        if not(cdsGrid2.State IN [dsEdit, dsInsert]) then
          cdsGrid2.Edit;
        cdsGrid2idChequeRec.AsInteger := cdsGrididChequeRec.AsInteger;
        cdsGrid2idCliente.AsInteger := cdsGrididCliente.AsInteger;
        cdsGrid2idBanco.AsInteger := cdsGrididBanco.AsInteger;
//        cdsGrid2Comp.AsInteger := cdsGridComp.AsInteger;
        cdsGrid2nrAgencia.AsString := cdsGridnrAgencia.AsString;
        cdsGrid2nrConta.AsString := cdsGridnrConta.AsString;
        cdsGrid2nrCheque.AsString := cdsGridnrCheque.AsString;
        cdsGrid2emitente.AsString := cdsGridemitente.AsString;
        cdsGrid2vlCheque.AsFloat := cdsGridvlCheque.AsFloat;
        cdsGrid2dtLancamento.AsDateTime := cdsGriddtLancamento.AsDateTime;
        cdsGrid2dtVencimento.AsDateTime := cdsGriddtVencimento.AsDateTime;
        cdsGrid2stChequeRec.AsString := cdsGridstChequeRec.AsString;
        cdsGrid2dtEmissao.AsDateTime := cdsGriddtEmissao.AsDateTime;
        cdsGrid2idCaixa.AsInteger := cdsGrididCaixa.AsInteger;
        cdsGrid2idConta.AsInteger := cdsPadraoidConta.AsInteger;
        cdsGrid2sel.AsString := 'S';
        cdsGrid2.Post;
      end
      else
      begin
        if not(cdsGrid2.State IN [dsEdit, dsInsert]) then
          cdsGrid2.Append;
        cdsGrid2idChequeRec.AsInteger := cdsGrididChequeRec.AsInteger;
        cdsGrid2idCliente.AsInteger := cdsGrididCliente.AsInteger;
        cdsGrid2idBanco.AsInteger := cdsGrididBanco.AsInteger;
//        cdsGrid2Comp.AsInteger := cdsGridComp.AsInteger;
        cdsGrid2nrAgencia.AsString := cdsGridnrAgencia.AsString;
        cdsGrid2nrConta.AsString := cdsGridnrConta.AsString;
        cdsGrid2nrCheque.AsString := cdsGridnrCheque.AsString;
        cdsGrid2emitente.AsString := cdsGridemitente.AsString;
        cdsGrid2vlCheque.AsFloat := cdsGridvlCheque.AsFloat;
        cdsGrid2dtLancamento.AsDateTime := cdsGriddtLancamento.AsDateTime;
        cdsGrid2dtVencimento.AsDateTime := cdsGriddtVencimento.AsDateTime;
        cdsGrid2stChequeRec.AsString := cdsGridstChequeRec.AsString;
        cdsGrid2dtEmissao.AsDateTime := cdsGriddtEmissao.AsDateTime;
        cdsGrid2idCaixa.AsInteger := cdsGrididCaixa.AsInteger;
        cdsGrid2idConta.AsInteger := cdsPadraoidConta.AsInteger;
        cdsGrid2sel.AsString := 'S';
        cdsGrid2.Post;
      end;
    end;
    cdsGrid.Next;
  end;
//  cdsGrid2.Refresh;
end;

procedure TFrmControleChequesDev.BtnAdicionarClick(Sender: TObject);
begin
  inherited;
  AdicionaGrid;

  if not(cdsTmp.Active) then
    cdsTmp.Open;
  if not(cdsTmp.State IN [dsEdit, dsInsert]) then
    cdsTmp.Edit;
  cdsTmpvlTotalCheque.Value := cdsGrid2vlTotal.Value;
end;

procedure TFrmControleChequesDev.BtnDevolverClick(Sender: TObject);
var
  sql, obs, nrCheque : string;
  idMovConta, idMovCaixa, idChequeRecMov : Integer;
begin
  //Inicia inserção individual para controle de Historico dos Cheques
  cdsGrid2.First;
  while not cdsGrid2.Eof do
  begin
    if cdsGrid2sel.AsString = 'S' then
    begin
      if nrCheque <> '' then
        nrCheque := nrCheque + ', ' + cdsGrid2nrCheque.AsString
      else
        nrCheque := cdsGrid2nrCheque.AsString;

      obs := 'DEVOLUÇÂO DO CHEQUE NUMERO(s): ' + nrCheque + ' NA CONTA NUMERO : ' + LookContaCorrente.Caption;
      idMovCaixa := frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idMovCaixa) id FROM MovCaixa').FieldByName('id').AsInteger+1;
      idMovConta := frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idMovConta) id FROM MovConta').FieldByName('id').AsInteger+1;

      sql := 'INSERT INTO MovConta (idMovConta, idEmpresa, idCadEmpresa, idConta, dtMovConta, vlMovConta, fator, idMovFinanceira, descMovConta)';
      sql := sql + ' VALUES (' + IntToStr(idMovConta) + ', ' + cdsEmpresaidEmpresa.AsString + ', ' +
                   cdsEmpresaidCadEmpresa.AsString + ', ' + cdsGrid2idConta.AsString + ', ' +
                   QuotedStr(DateToStr(date)) + ', ' + QuotedStr(funcao.RetornaValorEField(DBEvlTotalCheque, 3)) + ', ' +
                   '-1' + ', ' + '40' + ', ' + QuotedStr(obs) + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);

      sql := 'INSERT INTO MovCaixa (idMovCaixa, idEmpresa, idCadEmpresa, idCaixa, dtMovCaixa, vlMovCaixa, fator, idMovFinanceira, descMovCaixa)';
      sql := sql + ' VALUES (' + IntToStr(idMovCaixa) + ', ' + cdsEmpresaidEmpresa.AsString + ', ' +
                   cdsEmpresaidCadEmpresa.AsString + ', ' + cdsPadraoidCaixa.AsString + ', ' +
                   QuotedStr(DateToStr(date)) + ', ' +  QuotedStr(funcao.RetornaValorEField(DBEvlTotalCheque, 3)) + ', ' + '1' + ', ' + '39' + ', ' + QuotedStr(obs) + ')';
      dmPadrao.dbConexao.ExecuteDirect(sql);

      sql := 'SELECT * FROM ChequeRec WHERE idChequeRec = ' + cdsGrid2idChequeRec.AsString;
      cdsChequeRecMov.Active := False;
      cdsChequeRecMov.CommandText := sql;
      cdsChequeRecMov.Active := True;

      if cdsChequeRecMov.RecordCount > 0 then
      begin
        if not(cdsChequeRecMov.State = dsEdit) then
          cdsChequeRecMov.Edit;
        if cdsChequeRecMovstChequeRec.AsString = '1 DEPOSITO' then
          cdsChequeRecMovstChequeRec.AsString := '1 DEVOLUCAO'
        else
          if cdsChequeRecMovstChequeRec.AsString = '2 DEPOSITO' then
            cdsChequeRecMovstChequeRec.AsString := '2 DEVOLUCAO';
        cdsChequeRecMov.Post;
        cdsChequeRecMov.ApplyUpdates(0);
      end;
      idChequeRecMov := frmprincipal.ExecutaSQLRet([], '', 'SELECT MAX(idChequeRecMov) id FROM ChequeRecMov').FieldByName('id').AsInteger+1;
        sql := 'INSERT INTO ChequeRecMov (idChequeRec, idMovConta, idConta, dtMovimento, stOcorrencia, idMovCaixa, idCaixa, idAlinea, idChequeRecMov) VALUES ( ' + cdsGrid2idChequeRec.AsString + ', ' + IntToStr(idMovConta) + ', ' + cdsGrid2idConta.AsString + ', ' +
                QuotedStr(cdsPadraodtDevolucao.AsString) + ', ' + QuotedStr(cdsChequeRecMovstChequeRec.AsString) + ', ' +
                IntToStr(idMovCaixa) + ', ' + cdsPadraoidCaixa.AsString + ', ' + cdsPadraoidAlinea.AsString + ', ' +
                IntToStr(idChequeRecMov) +')';
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    cdsGrid2.Next;
  end;
  BtnPesquisar.Click;
  FinalizaDevolucao;
end;

procedure TFrmControleChequesDev.BtnLimpaSelecaoClick(Sender: TObject);
begin
  inherited;
  with cdsGrid2 do
  begin
    First;
    while not eof do
    begin
      First;
      Delete;
    end;
  end;
  cdsGrid.First;
  while not cdsGrid.Eof do
  begin
    cdsGrid.Edit;
    cdsGridsel.AsString := 'N';
    cdsGrid.Post;
    cdsGrid.Next;
  end;
  cdsTmpvlTotalCheque.Value := 0;
end;

procedure TFrmControleChequesDev.BtnRetirarClick(Sender: TObject);
begin
  inherited;
  cdsGrid2.Delete;
  if not(cdsTmp.Active) then
    cdsTmp.Open;
  if not(cdsTmp.State IN [dsEdit, dsInsert]) then
    cdsTmp.Edit;
  cdsTmpvlTotalCheque.Value := cdsGrid2vlTotal.Value;
end;

procedure TFrmControleChequesDev.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoativo.AsString := 'N';
  cdsPadraodevolucao.AsString := 'N';
end;

procedure TFrmControleChequesDev.DBEdtDevolucaoExit(Sender: TObject);
begin
  inherited;
  if (Trim(DBEidCaixa.Text) <> '') AND (Trim(DBEdtDevolucao.Text)<> '') then
  begin
    BtnDevolver.Enabled := True;
    BtnDevolver.SetFocus;
  end;
end;

procedure TFrmControleChequesDev.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid2 do
    begin
      if IsEmpty then
        exit;
      Self.DBGrid1.Options := Self.DBGrid1.Options - [dgEditing];
      Edit;
      if FieldByName('sel').AsString = 'S' then
      begin
        FieldByName('sel').AsString := 'N';
        qtSel := qtSel - 1;
        {//Faz a soma do valor total do cheque
        vlTotalCheques := vlTotalCheques - cdsGrid2vlCheque.AsCurrency;

        //Faz verificações de estado de Clientdataset em Memoria e em seguida atribui o valor total dos cheques
        if not(cdsTmp.Active) then
          cdsTmp.Open;
        if not(cdsTmp.State IN [dsEdit, dsInsert]) then
          cdsTmp.Edit;
        cdsTmpvlTotalCheque.AsCurrency := vlTotalCheques;   }
         cdsTmpvlTotalCheque.Value := cdsGrid2vlTotal.Value;
      end
      else
      begin
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
       { //Faz a soma do valor total do cheque
        vlTotalCheques := vlTotalCheques + cdsGrid2vlCheque.AsCurrency;

        //Faz verificações de estado de Clientdataset em Memoria e em seguida atribui o valor total dos cheques
        if not(cdsTmp.Active) then
          cdsTmp.Open;
        if not(cdsTmp.State IN [dsEdit, dsInsert]) then
          cdsTmp.Edit;
        cdsTmpvlTotalCheque.AsCurrency := vlTotalCheques;  }
        cdsTmpvlTotalCheque.Value := cdsGrid2vlTotal.Value;
      end;
      Post;
      DBGrid1.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    if not (Column.Index in [9,10]) then
      Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmControleChequesDev.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid1.SelectedIndex in [0,9, 10]) then
    Self.DBGrid1.Options := Self.DBGrid1.Options + [dgEditing]
  else
    Self.DBGrid1.Options := Self.FOriginalOptions;
end;

procedure TFrmControleChequesDev.DBGrid1DrawColumnCell(Sender: TObject;
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
  if cdsGrid2.FieldByName('sel').Value = 'S' then
    marca := true;

//  if (Column = 1) and (ARow >= 1) then
  if (Column.Index = 0) then
  begin
    Self.DBGrid1.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid1.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
    DBGrid1.Canvas.Brush.Color := StringToColor(Cor);
  end;
end;

procedure TFrmControleChequesDev.DBGridCellClick(Column: TColumn);
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
      end
      else
      begin
        FieldByName('sel').AsString := 'S';
        qtSel := qtSel + 1;
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    if not (Column.Index in [9,10]) then
      Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmControleChequesDev.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if (DBGrid.SelectedIndex in [0,9, 10]) then
    Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing]
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmControleChequesDev.DBGridDblClick(Sender: TObject);
begin
  inherited;
  AdicionaGrid;
end;

procedure TFrmControleChequesDev.DBGridDrawColumnCell(Sender: TObject;
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

procedure TFrmControleChequesDev.FinalizaDevolucao;
begin
  BtnDevolver.Enabled := False;
  DBEidCaixa.Clear;
  DBEdtDevolucao.Clear;
  LookCaixa.Caption := '';
  DBEidAlinea.Clear;
  LookAlinea.Caption := '';
  BtnLimpaSelecao.Click;
  cdsTmpvlTotalCheque.Clear;
end;

procedure TFrmControleChequesDev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmControleChequesDev := nil;
end;

procedure TFrmControleChequesDev.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidFornecedor;
end;

procedure TFrmControleChequesDev.FormShow(Sender: TObject);
begin
  inherited;
  Height := 595;
  Width := 820;
  cdsGrid2.CreateDataSet;
  BtnDevolver.Enabled := False;
  BtnLimpaSelecao.Enabled := False;
  BtnAdicionar.Enabled := False;
  cdsTmp.CreateDataSet;
end;

end.
