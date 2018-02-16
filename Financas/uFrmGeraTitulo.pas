unit uFrmGeraTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, ActnList, ImgList, StdCtrls, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, ComCtrls, CPageControl, CGroupBox, CLookUp, Mask, DBCtrls,
  CDBEdit, CLabel, CDBCheckBox, FMTBcd, DB, DBClient, Provider, SqlExpr,
  System.Actions;

type
  TFrmGeraTitulo = class(TFrmPadrao)
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    DBEidDocSerie: TCDBEdit;
    LookDocSerie: TCLookUp;
    DBEnrTitulo: TCDBEdit;
    CLabel1: TCLabel;
    DBEdtEmissao: TCDBEdit;
    CLabel6: TCLabel;
    chkbaixa: TCDBCheckBox;
    sdsPadrao: TSQLDataSet;
    dspPadrao: TDataSetProvider;
    cdsPadrao: TClientDataSet;
    dsPadrao: TDataSource;
    sdsTituloParc: TSQLDataSet;
    dspTituloParc: TDataSetProvider;
    cdsTituloParc: TClientDataSet;
    dsTituloParc: TDataSource;
    sdsTituloRat: TSQLDataSet;
    dspTituloRat: TDataSetProvider;
    cdsTituloRat: TClientDataSet;
    dsTituloRat: TDataSource;
    cdsTituloRateio: TClientDataSet;
    cdsTituloRateioidTitulo: TIntegerField;
    cdsTituloRateioidEmpresa: TIntegerField;
    cdsTituloRateioidResultado: TIntegerField;
    cdsTituloRateioidGerencial: TIntegerField;
    cdsTituloRateioprRateio: TFloatField;
    cdsTituloRateiovlRateio: TCurrencyField;
    cdsTituloRateiodescResultado: TStringField;
    cdsTituloRateioidCadEmpresa: TIntegerField;
    dsTituloRateio: TDataSource;
    dspTituloMov: TDataSetProvider;
    sdsTituloMov: TSQLDataSet;
    cdsTituloMov: TClientDataSet;
    dsTituloMov: TDataSource;
    cdsTemp: TClientDataSet;
    dsTemp: TDataSource;
    cdsTempidDocSerie: TStringField;
    cdsTempnrTitulo: TStringField;
    cdsTempdtBase: TDateField;
    cdsTempbaixa: TStringField;
    dspLookup: TDataSetProvider;
    cdsLookup: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure AtribuiValor;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipo : Byte;
  end;

var
  FrmGeraTitulo: TFrmGeraTitulo;

implementation

uses uCadPrevisaoPag, uCadPrevisaoRec, uFrmPrincipal, uDmPadrao;

{$R *.dfm}

procedure TFrmGeraTitulo.AtribuiValor;
var
  sql : string;
  idTitulo, idTituloMov : Integer;
  dtParcela : TDateTime;
begin
  if tipo = 0 then
  begin
    //Gera o Titulo
    sql := 'SELECT MAX(idTituloPag)+1 AS id FROM TituloPag';
    idTitulo := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('id').AsInteger;
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Append;
    cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idEmpresa').AsInteger;
    cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
    cdsPadrao.FieldByName('idTituloPag').AsInteger := idTitulo;
    cdsPadrao.FieldByName('idDocSerie').AsString := DBEidDocSerie.Text;
    cdsPadrao.FieldByName('idFornecedor').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idFornecedor').AsInteger;
    if Trim(DBEnrTitulo.Text) <> '' then
      cdsPadrao.FieldByName('nrTituloPag').AsString := DBEnrTitulo.Text
    else
      cdsPadrao.FieldByName('nrTituloPag').AsString := IntToStr(idTitulo);
    cdsPadrao.FieldByName('idSafra').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idSafra').AsInteger;
    cdsPadrao.FieldByName('idBanco').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idBanco').AsInteger;
    cdsPadrao.FieldByName('idIndice').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idIndice').AsInteger;
    cdsPadrao.FieldByName('idMovFinanceira').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idMovFinanceira').AsInteger;
    if FrmCadPrevisaoPag.cdsPadrao.FieldByName('idResultado').AsInteger > 0 then
      cdsPadrao.FieldByName('idResultado').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idResultado').AsInteger
    else
      if FrmCadPrevisaoPag.cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
        cdsPadrao.FieldByName('idRateio').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idRateio').AsInteger;
    cdsPadrao.FieldByName('idGerencial').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('idGerencial').AsInteger;
    cdsPadrao.FieldByName('qtParcelas').AsInteger := FrmCadPrevisaoPag.cdsPadrao.FieldByName('qtParcelas').AsInteger;
    if ((FrmCadPrevisaoPag.cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime < date) or ((DBEdtEmissao.Text)<> '')) then
      cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime := cdsTempdtBase.AsDateTime
    else
      cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime := FrmCadPrevisaoPag.cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime;
    cdsPadrao.FieldByName('incMes').AsString := FrmCadPrevisaoPag.cdsPadrao.FieldByName('incMes').AsString;
    cdsPadrao.FieldByName('diasVencimento').AsString := FrmCadPrevisaoPag.cdsPadrao.FieldByName('diasVencimento').AsString;
    cdsPadrao.FieldByName('prMulta').AsString := FrmCadPrevisaoPag.cdsPadrao.FieldByName('prMulta').AsString;
    cdsPadrao.FieldByName('prJuros').AsString := FrmCadPrevisaoPag.cdsPadrao.FieldByName('prJuros').AsString;
    cdsPadrao.FieldByName('dtEmissao').AsDateTime := date;
    cdsPadrao.FieldByName('prDesconto').AsString := FrmCadPrevisaoPag.cdsPadrao.FieldByName('prDesconto').AsString;
    cdsPadrao.FieldByName('obsTituloPag').AsString := FrmCadPrevisaoPag.cdsPadrao.FieldByName('obsPrevisaoPag').AsString;
    cdsPadrao.FieldByName('vlTituloPag').AsFloat := FrmCadPrevisaoPag.cdsPadrao.FieldByName('vlPrevisaoPag').AsFloat;
    cdsPadrao.FieldByName('stTituloPag').AsString := 'ATIVO';
    cdsPadrao.Post;
    cdsPadrao.ApplyUpdates(0);

    //Gera Parcelas
    with FrmCadPrevisaoPag.cdsPrevisaoPagParc do
    begin
      First;
      dtParcela := cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime;
      while not eof do
      begin
        if not (cdsTituloParc.State in [dsEdit, dsInsert]) then
          cdsTituloParc.Append;
        cdsTituloParc.FieldByName('idTituloPag').AsInteger := idTitulo;
        cdsTituloParc.FieldByName('idParcela').AsInteger := FieldByName('idParcela').AsInteger;
        cdsTituloParc.FieldByName('vlParcela').AsFloat := FieldByName('vlParcela').AsFloat;
        cdsTituloParc.FieldByName('dtVencimento').Value := dtParcela;
        if cdsPadrao.FieldByName('incMes').AsString = 'S' then
          dtParcela := IncMonth(cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime, FieldByName('idParcela').AsInteger)
        else
          dtParcela := dtParcela + cdsPadrao.FieldByName('diasVencimento').Value;
        cdsTituloParc.FieldByName('stTituloPagParc').AsString := FieldByName('stPrevisaoPagParc').AsString;
        cdsTituloParc.Post;
        cdsTituloParc.ApplyUpdates(0);
        Next;
      end;
    end;

    with FrmCadPrevisaoPag.cdsPrevisaoPagRat do
    begin
      First;
      while not Eof do
      begin
        if not (cdsTituloRat.State in [dsEdit, dsInsert]) then
          cdsTituloRat.Append;
        cdsTituloRat.FieldByName('idEmpresa').AsInteger := FieldByName('idEmpresa').AsInteger;
        cdsTituloRat.FieldByName('idCadEmpresa').AsInteger := FieldByName('idCadEmpresa').AsInteger;
        cdsTituloRat.FieldByName('idTituloPag').AsInteger := idTitulo;
        cdsTituloRat.FieldByName('idParcela').AsInteger := FieldByName('idParcela').AsInteger;
        cdsTituloRat.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
        cdsTituloRat.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
        cdsTituloRat.FieldByName('prRateio').AsFloat := FieldByName('prRateio').AsInteger;
        cdsTituloRat.FieldByName('vlRateio').AsFloat := FieldByName('vlRateio').AsInteger;
        cdsTituloRat.Post;
        cdsTituloRat.ApplyUpdates(0);
        Next;
      end;
    end;

    with cdsTituloMov do
    begin
      if not Active then
        Active := true;
      cdsTituloParc.First;
      while not cdsTituloParc.Eof do
      begin
        if cdsTituloParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
        begin
          //se a movimentação nao estiver limpa ele limpa a tabela
          Filtered := false;
          Filter := 'idParcela = ' + cdsTituloParc.FieldByName('idParcela').AsString;
          Filtered := true;
          if RecordCount > 0 then
          begin
            Delete;
            if (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) then
              ApplyUpdates(0);
          end;
          Filtered := false;

          Append;
          sql := 'SELECT MAX(idTituloPagMov)+1 AS id FROM TituloPagMov';
          idTituloMov := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('id').AsInteger;
          FieldByName('idTituloPagMov').Value := idTituloMov;
          if trim(cdsPadrao.FieldByName('idTituloPag').AsString) <> '' then
            FieldByName('idTituloPag').Value := cdsPadrao.FieldByName('idTituloPag').Value
          else
            FieldByName('idTituloPag').Value := 0;
          FieldByName('idEmpresa').AsString := cdsPadrao.FieldByName('idEmpresa').AsString;
          FieldByName('idCadEmpresa').AsString := cdsPadrao.FieldByName('idCadEmpresa').AsString;
          FieldByName('idFornecedor').Value := cdsPadrao.FieldByName('idFornecedor').Value;
          FieldByName('idParcela').Value := cdsTituloParc.FieldByName('idParcela').Value;
          FieldByName('idMovFinanceira').Value := cdsPadrao.FieldByName('idMovFinanceira').Value;
          FieldByName('dtTituloPagMov').Value := cdsPadrao.FieldByName('dtEmissao').Value;
          FieldByName('vlTituloPagMov').Value := cdsTituloParc.FieldByName('vlParcela').Value;

          sql := 'SELECT * FROM MovFinanceira WHERE idMovFinanceira = ' + cdsPadrao.FieldByName('idMovFinanceira').AsString;
          if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('sinal').AsString = '+' then
            FieldByName('fator').Value := 1
          else
            FieldByName('fator').Value := -1;
          Post;
          ApplyUpdates(0);
        end; // fim do if cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
        cdsTituloParc.Next;
      end;
      cdsTituloParc.First;
    end;
    if cdsTempbaixa.AsString = 'S' then
      FrmCadPrevisaoPag.Baixa := True;
    FrmCadPrevisaoPag.idTitulo := cdsPadrao.FieldByName('idTituloPag').AsInteger;
    FrmCadPrevisaoPag.idFornecedor := cdsPadrao.FieldByName('idFornecedor').AsInteger;
    FrmCadPrevisaoPag.idDocSerie := cdsPadrao.FieldByName('idDocSerie').AsString;
    FrmCadPrevisaoPag.nrTitulo := cdsPadrao.FieldByName('nrTituloPag').AsString;
  end
  else
    if tipo = 1 then
    begin
      //Gera o Titulo
      sql := 'SELECT MAX(idTituloRec)+1 AS id FROM TituloRec';
      idTitulo := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('id').AsInteger;
      if not (cdsPadrao.State in [dsEdit, dsInsert]) then
        cdsPadrao.Append;
      cdsPadrao.FieldByName('idEmpresa').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idEmpresa').AsInteger;
      cdsPadrao.FieldByName('idCadEmpresa').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idCadEmpresa').AsInteger;
      cdsPadrao.FieldByName('idTituloRec').AsInteger := idTitulo;
      cdsPadrao.FieldByName('idDocSerie').AsString := DBEidDocSerie.Text;
      cdsPadrao.FieldByName('idCliente').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idCliente').AsInteger;
      if Trim(DBEnrTitulo.Text) <> '' then
        cdsPadrao.FieldByName('nrTituloRec').AsString := DBEnrTitulo.Text
      else
        cdsPadrao.FieldByName('nrTituloRec').AsString := IntToStr(idTitulo);
      cdsPadrao.FieldByName('idSafra').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idSafra').AsInteger;
      cdsPadrao.FieldByName('idBanco').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idBanco').AsInteger;
      cdsPadrao.FieldByName('idIndice').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idIndice').AsInteger;
      cdsPadrao.FieldByName('idMovFinanceira').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idMovFinanceira').AsInteger;
      if FrmCadPrevisaoRec.cdsPadrao.FieldByName('idResultado').AsInteger > 0 then
        cdsPadrao.FieldByName('idResultado').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idResultado').AsInteger
      else
        if FrmCadPrevisaoRec.cdsPadrao.FieldByName('idRateio').AsInteger > 0 then
          cdsPadrao.FieldByName('idRateio').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idRateio').AsInteger;
      cdsPadrao.FieldByName('idGerencial').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('idGerencial').AsInteger;
      cdsPadrao.FieldByName('qtParcelas').AsInteger := FrmCadPrevisaoRec.cdsPadrao.FieldByName('qtParcelas').AsInteger;
      if ((FrmCadPrevisaoRec.cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime < date) or ((DBEdtEmissao.Text)<> '')) then
        cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime := cdsTempdtBase.AsDateTime
      else
        cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime := FrmCadPrevisaoRec.cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime;
      cdsPadrao.FieldByName('incMes').AsString := FrmCadPrevisaoRec.cdsPadrao.FieldByName('incMes').AsString;
      cdsPadrao.FieldByName('diasVencimento').AsString := FrmCadPrevisaoRec.cdsPadrao.FieldByName('diasVencimento').AsString;
      cdsPadrao.FieldByName('prMulta').AsString := FrmCadPrevisaoRec.cdsPadrao.FieldByName('prMulta').AsString;
      cdsPadrao.FieldByName('dtEmissao').AsDateTime := date;
      cdsPadrao.FieldByName('prJuros').AsString := FrmCadPrevisaoRec.cdsPadrao.FieldByName('prJuros').AsString;
      cdsPadrao.FieldByName('prDesconto').AsString := FrmCadPrevisaoRec.cdsPadrao.FieldByName('prDesconto').AsString;
      cdsPadrao.FieldByName('obsTituloRec').AsString := FrmCadPrevisaoRec.cdsPadrao.FieldByName('obsPrevisaoRec').AsString;
      cdsPadrao.FieldByName('vlTituloRec').AsFloat := FrmCadPrevisaoRec.cdsPadrao.FieldByName('vlPrevisaoRec').AsFloat;
      cdsPadrao.FieldByName('stTituloRec').AsString := 'ATIVO';
      cdsPadrao.Post;
      cdsPadrao.ApplyUpdates(0);

      with FrmCadPrevisaoRec.cdsPrevisaoRecParc do
      begin
        First;
        dtParcela := cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime;
        while not eof do
        begin
          if not (cdsTituloParc.State in [dsEdit, dsInsert]) then
            cdsTituloParc.Append;
          cdsTituloParc.FieldByName('idTituloRec').AsInteger := idTitulo;
          cdsTituloParc.FieldByName('idParcela').AsInteger := FieldByName('idParcela').AsInteger;
          cdsTituloParc.FieldByName('vlParcela').AsFloat := FieldByName('vlParcela').AsFloat;
          cdsTituloParc.FieldByName('dtVencimento').Value := dtParcela;
          if cdsPadrao.FieldByName('incMes').AsString = 'S' then
            dtParcela := IncMonth(cdsPadrao.FieldByName('dtVencimentoIni').AsDateTime, FieldByName('idParcela').AsInteger)
          else
            dtParcela := dtParcela + cdsPadrao.FieldByName('diasVencimento').Value;
          cdsTituloParc.FieldByName('stTituloRecParc').AsString := FieldByName('stPrevisaoRecParc').AsString;
          cdsTituloParc.Post;
          cdsTituloParc.ApplyUpdates(0);
          Next;
        end;
      end;

      with FrmCadPrevisaoRec.cdsPrevisaoRecRat do
      begin
        First;
        while not Eof do
        begin
          if not (cdsTituloRat.State in [dsEdit, dsInsert]) then
            cdsTituloRat.Append;
          cdsTituloRat.FieldByName('idEmpresa').AsInteger := FieldByName('idEmpresa').AsInteger;
          cdsTituloRat.FieldByName('idCadEmpresa').AsInteger := FieldByName('idCadEmpresa').AsInteger;
          cdsTituloRat.FieldByName('idTituloRec').AsInteger := idTitulo;
          cdsTituloRat.FieldByName('idParcela').AsInteger := FieldByName('idParcela').AsInteger;
          cdsTituloRat.FieldByName('idResultado').AsInteger := FieldByName('idResultado').AsInteger;
          cdsTituloRat.FieldByName('idGerencial').AsInteger := FieldByName('idGerencial').AsInteger;
          cdsTituloRat.FieldByName('prRateio').AsFloat := FieldByName('prRateio').AsInteger;
          cdsTituloRat.FieldByName('vlRateio').AsFloat := FieldByName('vlRateio').AsInteger;
          cdsTituloRat.Post;
          cdsTituloRat.ApplyUpdates(0);
          Next;
        end;
      end;

      with cdsTituloMov do
      begin
        if not Active then
          Active := true;
        cdsTituloParc.First;
        while not cdsTituloParc.Eof do
        begin
          if cdsTituloParc.FieldByName('stTituloRecParc').AsString = 'ATIVO' then
          begin
            //se a movimentação nao estiver limpa ele limpa a tabela
            Filtered := false;
            Filter := 'idParcela = ' + cdsTituloParc.FieldByName('idParcela').AsString;
            Filtered := true;
            if RecordCount > 0 then
            begin
              Delete;
              if (ChangeCount > 0) and (not (cdsPadrao.State = dsInsert)) then
                ApplyUpdates(0);
            end;
            Filtered := false;

            Append;
            sql := 'SELECT MAX(idTituloRecMov)+1 AS id FROM TituloRecMov';
            idTituloMov := frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('id').AsInteger;
            FieldByName('idTituloRecMov').Value := idTituloMov;
            if trim(cdsPadrao.FieldByName('idTituloRec').AsString) <> '' then
              FieldByName('idTituloRec').Value := cdsPadrao.FieldByName('idTituloRec').Value
            else
              FieldByName('idTituloRec').Value := 0;
            FieldByName('idEmpresa').AsString := cdsPadrao.FieldByName('idEmpresa').AsString;
            FieldByName('idCadEmpresa').AsString := cdsPadrao.FieldByName('idCadEmpresa').AsString;
            FieldByName('idCliente').Value := cdsPadrao.FieldByName('idCliente').Value;
            FieldByName('idParcela').Value := cdsTituloParc.FieldByName('idParcela').Value;
            FieldByName('idMovFinanceira').Value := cdsPadrao.FieldByName('idMovFinanceira').Value;
            FieldByName('dtTituloRecMov').Value := cdsPadrao.FieldByName('dtEmissao').Value;
            FieldByName('vlTituloRecMov').Value := cdsTituloParc.FieldByName('vlParcela').Value;

            sql := 'SELECT * FROM MovFinanceira WHERE idMovFinanceira = ' + cdsPadrao.FieldByName('idMovFinanceira').AsString;
            if frmPrincipal.ExecutaSQLRet([], '', sql).FieldByName('sinal').AsString = '+' then
              FieldByName('fator').Value := 1
            else
              FieldByName('fator').Value := -1;
            Post;
            ApplyUpdates(0);
          end; // fim do if cdsTituloPagParc.FieldByName('stTituloPagParc').AsString = 'ATIVO' then
          cdsTituloParc.Next;
        end;
        cdsTituloParc.First;
      end;
      if cdsTempbaixa.AsString = 'S' then
        FrmCadPrevisaoRec.Baixa := True;
      FrmCadPrevisaoRec.idTitulo := cdsPadrao.FieldByName('idTituloRec').AsInteger;
      FrmCadPrevisaoRec.idFornecedor := cdsPadrao.FieldByName('idCliente').AsInteger;
      FrmCadPrevisaoRec.idDocSerie := cdsPadrao.FieldByName('idDocSerie').AsString;
      FrmCadPrevisaoRec.nrTitulo := cdsPadrao.FieldByName('nrTituloRec').AsString;
    end;
    BtnFechar.Click;
end;

procedure TFrmGeraTitulo.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  AtribuiValor;
end;

procedure TFrmGeraTitulo.FormCreate(Sender: TObject);
begin
  inherited;
  cdsTemp.CreateDataSet;
  Height := 217;
  Width := 378;
end;

procedure TFrmGeraTitulo.FormShow(Sender: TObject);
begin
  inherited;
  if tipo = 0 then
  begin
    cdsPadrao.Active := False;
    cdsPadrao.CommandText := 'SELECT * FROM TituloPag WHERE 1=2';
    cdsPadrao.Active := True;

    cdsTituloParc.Active := False;
    cdsTituloParc.CommandText := 'SELECT * FROM TituloPagParc WHERE 1=2';
    cdsTituloParc.Active := True;

    cdsTituloRat.Active := False;
    cdsTituloRat.CommandText := 'SELECT * FROM TituloPagRateio WHERE 1=2';
    cdsTituloRat.Active := True;

    cdsTituloMov.Active := False;
    cdsTituloMov.CommandText := 'SELECT * FROM TituloPagMov WHERE 1=2';
    cdsTituloMov.Active := True;
  end
  else
    if tipo = 1 then
    begin
      cdsPadrao.Active := False;
      cdsPadrao.CommandText := 'SELECT * FROM TituloRec WHERE 1=2';
      cdsPadrao.Active := True;

      cdsTituloParc.Active := False;
      cdsTituloParc.CommandText := 'SELECT * FROM TituloRecParc WHERE 1=2';
      cdsTituloParc.Active := True;

      cdsTituloRat.Active := False;
      cdsTituloRat.CommandText := 'SELECT * FROM TituloRecRateio WHERE 1=2';
      cdsTituloRat.Active := True;

      cdsTituloMov.Active := False;
      cdsTituloMov.CommandText := 'SELECT * FROM TituloRecMov WHERE 1=2';
      cdsTituloMov.Active := True;
    end;
end;

end.
