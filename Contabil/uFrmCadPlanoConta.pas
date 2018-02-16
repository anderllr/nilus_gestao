unit uFrmCadPlanoConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpCont, EditAlign, CEdit, ExtCtrls, DBCtrls,
  CDBRadioGroup, StdCtrls, CGroupBox, CFind, DB, Provider, DBClient, ActnList,
  ImgList, CLookUp, Mask, CDBEdit, CLabel, Buttons, CBitBtn, CPanelGradient,
  ComCtrls, CPageControl, Grids, DBGrids, CDBGrid, FMTBcd, SqlExpr, CDBCheckBox,
  System.Actions, System.ImageList;

type
  TfrmCadPlanoConta = class(TFrmCadPadraoEmpCont)
    CGroupBox7: TCGroupBox;
    CLabel14: TCLabel;
    CLabel15: TCLabel;
    CLabel24: TCLabel;
    CLabel1: TCLabel;
    CLabel11: TCLabel;
    CLabel13: TCLabel;
    DBEclassificacao: TCDBEdit;
    DBEstPlanoConta: TCDBEdit;
    DBEdescPlanoConta: TCDBEdit;
    DBEnrGrau: TCDBEdit;
    DBRGnaturezaPlanoConta: TCDBRadioGroup;
    DBEcdPlanoConta: TCEdit;
    DBEidPlanoContaGrupo: TCDBEdit;
    LookdescPlanoContaGrupo: TCLookUp;
    DBEdigito: TCEdit;
    FindPlanoConta: TCFind;
    FindPlanoContaGrupo: TCFind;
    CGroupBox1: TCGroupBox;
    DBEParametro: TCEdit;
    DBENulo: TCEdit;
    DBGrid: TCDBGrid;
    DBRGtpPlanoConta: TCDBRadioGroup;
    CLabel3: TCLabel;
    BtnExcluir2: TCBitBtn;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoclassificacao: TStringField;
    cdsPadraotpPlanoConta: TStringField;
    cdsPadraocdPlanoConta: TIntegerField;
    cdsPadraonrGrau: TSmallintField;
    cdsPadraoidPlanoContaGrupo: TStringField;
    cdsPadraostPlanoConta: TStringField;
    cdsPadraonaturezaPlanoConta: TStringField;
    DBEcdPlanoConta2: TCDBEdit;
    DBEidCodAnterior: TCDBEdit;
    CLabel2: TCLabel;
    cdsPadraoidCodAnterior: TIntegerField;
    cdsPadraodescPlanoConta: TStringField;
    procedure BtnExcluir2Click(Sender: TObject);
    procedure DBEidPlanoContaGrupoExit(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure DBRGtpPlanoContaExit(Sender: TObject);
    procedure DBEclassificacaoEnter(Sender: TObject);
    procedure DBEcdPlanoContaExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEclassificacaoExit(Sender: TObject);
    procedure HabilitaCampos;
    procedure dspPadraoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
    mascara : string;
    nrGrau : integer;
  public
    { Public declarations }
  end;

var
  frmCadPlanoConta: TfrmCadPlanoConta;

implementation

{$R *.dfm}

uses uDmPadrao, uFrmPrincipal, uFuncao, uFrmCadPadrao, uFrmPadrao;

procedure TfrmCadPlanoConta.actNovoExecute(Sender: TObject);
var
  tpPlanoConta, classifica : string;
begin
  tpPlanoConta := cdsPadrao.FieldByName('tpPlanoConta').AsString;
  classifica := cdsPadrao.FieldByName('classificacao').AsString;
//  cdsPadrao.IndexFieldNames := 'classificacao';
  inherited;
  cdsPadrao.FieldByName('tpPlanoConta').AsString := tpPlanoConta;
  cdsPadrao.FieldByName('classificacao').AsString := classifica;
end;

procedure TfrmCadPlanoConta.actSalvarExecute(Sender: TObject);
var
  sql, classificacao : string;
  nrGrau : Integer;
begin
  sql := ' SELECT MAX(nrGrau) AS nrGrau FROM PlanoContaNivel WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND tpPlanoConta = ' + quotedstr(cdsPadrao.FieldByName('tpPlanoConta').AsString); // + '  GROUP BY tpPlanoConta';
  nrGrau := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('nrGrau').AsInteger;
  if (cdsPadrao.FieldByName('nrGrau').AsInteger = nrGrau) then
  begin
    if (trim(DBEcdPlanoConta.Text) = '') then
    begin
      messagedlg('Informe o código !',mtInformation,[mbOk],0);
      exit;
    end;
  end;

  classificacao := Copy(cdsPadraoclassificacao.AsString, 1, 6);
  if cdsPadraoidPlanoContaGrupo.OldValue = cdsPadraoidPlanoContaGrupo.NewValue then
  begin
    sql := 'SELECT idPlanoContaGrupo FROM PlanoConta ' +
           ' WHERE nrGrau = ' + cdsPadraonrGrau.AsString + ' AND idPlanoContaGrupo IS NOT NULL ' +
           ' AND SUBSTRING(classificacao, 1, LEN(' + QuotedStr(cdsPadraoclassificacao.AsString) + ')) = ' + QuotedStr(cdsPadraoclassificacao.AsString);
    with frmPrincipal.ExecutaSQLRet([], '', sql) do
    begin
      if RecordCount > 0 then
      begin
        cdsPadraoidPlanoContaGrupo.AsString := FieldByName('idPlanoContaGrupo').AsString;
  //      cdsPadrao.Refresh;
      end;
    end;
  end;


{  if Trim(DBEcdPlanoConta.Text) <> '' then
    cdsPadraocdPlanoConta.AsString := DBEcdPlanoConta.Text;

  if cdsPadraocdPlanoConta.IsNull then
    cdsPadraocdPlanoConta.AsString := cdsPadraoidCodAnterior.AsString;}



  GravaChave(1, '', nil);
  inherited;
//  cdsPadrao.Refresh;
{  classificacao := Copy(cdsPadraoclassificacao.AsString, 1, 6);
  sql := 'SELECT idPlanoContaGrupo FROM PlanoConta ' +
				 ' WHERE nrGrau = ' + cdsPadraonrGrau.AsString + ' AND idPlanoContaGrupo IS NOT NULL ' +
         ' AND SUBSTRING(classificacao, 1, LEN(' + QuotedStr(cdsPadraoclassificacao.AsString) + ')) = ' + QuotedStr(cdsPadraoclassificacao.AsString);
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      sql := 'UPDATE PlanoConta SET idPlanoContaGrupo = ' + QuotedStr(FieldByName('idPlanoContaGrupo').AsString) +
             ' WHERE idEmpresa = ' + cdsPadraoidEmpresa.AsString +
             '   AND tpPlanoConta = ' + QuotedStr(cdsPadraotpPlanoConta.AsString) +
             ' AND SUBSTRING(classificacao, 1, LEN(' + QuotedStr(cdsPadraoclassificacao.AsString) + ')) = ' + QuotedStr(cdsPadraoclassificacao.AsString) +
             ' AND classificacao <> ' + QuotedStr(cdsPadraoclassificacao.AsString);
      dmPadrao.dbConexao.ExecuteDirect(sql);
//      cdsPadrao.Refresh;
    end;
  end;       }
  classificacao := cdsPadraoclassificacao.AsString;
  cdsPadrao.IndexFieldNames := 'classificacao';
  cdsPadrao.Edit;
  cdsPadraoclassificacao.AsString := classificacao;
  DBEclassificacaoExit(DBEclassificacao);
end;

procedure TfrmCadPlanoConta.BtnExcluir2Click(Sender: TObject);
var
  classificacao : string;
begin
  inherited;
  if (Trim(DBEcdPlanoConta.Text) = '') then
    DBEcdPlanoConta.Text := '0';

  if messagedlg('Deseja realmente excluir?', mtwarning, [mbyes, mbno], 0) = mryes then
  begin

    //manobra para voltar o registro ao registro que parou na exclusão
    classificacao := '';
    if (not (cdsPadrao.Bof)) and (cdsPadrao.RecordCount > 1) then
    begin
      cdsPadrao.Prior;
      classificacao := cdsPadraoclassificacao.AsString;
      cdsPadrao.Next;
    end;

    if funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEcdPlanoConta2, DBEclassificacao,DBRGtpPlanoConta], 'spExcluiPlanoConta') then
    begin
      cdsPadrao.Active := false;
      cdsPadrao.Active := true;
    end;
    if trim(classificacao) <> '' then
    begin
      cdsPadrao.IndexFieldNames := 'classificacao';
      cdsPadrao.Edit;
      cdsPadraoclassificacao.AsString := classificacao;
      DBEclassificacaoExit(DBEclassificacao);
    end;
  end;
end;

procedure TfrmCadPlanoConta.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  HabilitaCampos;
end;

procedure TfrmCadPlanoConta.DBEcdPlanoContaExit(Sender: TObject);
begin
  inherited;
  DBENulo.Text:='NULL';
  DBEParametro.Text := 'SEL';
  cdsLookUp.Active := False;
  if (trim(DBEcdPlanoConta.Text) <> '') then
  begin
    with (frmPrincipal.ExecutaSQLRet([DBEcdPlanoConta,DBENulo, DBEParametro],'spCalcDigitoContabil','')) do
    begin
      if (trim(FieldByName('msg').AsString) = 'OK') then
      begin
        DBEdigito.Text := FieldByName('digito').AsString;
        cdsPadrao.FieldByName('cdPlanoConta').AsString := DBEcdPlanoConta.Text + DBEdigito.Text;
      end;
    end;

    cdsLookUp.CommandText := 'SELECT * FROM PlanoConta ' +
                             ' WHERE cdPlanoConta = '+ DBEcdPlanoConta.Text + DBEdigito.Text +
                             '   AND classificacao <> ' + QuotedStr(DBEclassificacao.Text) +
                             '   AND idEmpresa = ' + DBEidEmpresa.Text +
                             '   AND tpPlanoConta = ' + QuotedStr(DBRGtpPlanoConta.Value);
    cdsLookUp.Active := True;

    if not(cdsPadrao.State in [dsInsert,dsEdit])  then
      cdsPadrao.Edit;

    if not (cdsLookUp.IsEmpty) then
    begin
      if (cdsPadrao.State in [dsInsert]) then
      begin
        messagedlg(' Código já cadastrado ! Informe outro !', mtInformation, [mbOk],0);
        DBEdigito.Text := '';
        DBEcdPlanoConta.SetFocus;
        exit;
      end;
    end;
    
  end;
end;

procedure TfrmCadPlanoConta.DBEclassificacaoEnter(Sender: TObject);
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
  begin
    cdsPadrao.FieldByName('tpPlanoConta').AsString := DBRGtpPlanoConta.Value;
    if trim(cdsPadrao.FieldByName('classificacao').AsString) <> '' then
      cdsPadrao.FieldByName('classificacao').AsString := funcao.TiraMascara(cdsPadrao.FieldByName('classificacao').AsString);
  end;
end;

procedure TfrmCadPlanoConta.DBEclassificacaoExit(Sender: TObject);
var
  tpPlano:string;
begin
  inherited;
  if cdsPadrao.State in [dsInsert, dsEdit] then
    cdsPadrao.FieldByName('classificacao').AsString := funcao.Mascara(cdsPadrao.FieldByName('classificacao').AsString, 99, mascara);

  tpPlano := cdsPadrao.FieldByName('tpPlanoConta').AsString;

  try
    //se não existir a classificação cadastrada o sistema irá efetuar a validação
    if not BuscaChaveSec(cdsPadrao, [DBEclassificacao]) then
      if trim(DBEclassificacao.Text) <> '' then
      begin
        cdsPadrao.FieldByName('tpPlanoConta').Value := tpPlano;
        with frmPrincipal.ExecutaSqlRet([DBEidEmpresa, DBEclassificacao, DBRGtpPlanoConta], 'spValidaNivelPC', '') do
        begin
          if FieldByName('msg').AsString <> 'OK' then
          begin
            messagedlg(FieldByName('msg').AsString, mtwarning, [mbok], 0);
            DBEclassificacao.SetFocus;
            exit;
          end
          else
            if cdsPadrao.State in [dsEdit, dsInsert] then
            begin
              cdsPadrao.FieldByName('nrGrau').Value := FieldByName('nrGrau').Value;
            end;
        end; //fim do with ExecutaSqlRet([DBEidEmpresa, DBEidGerencial, DBEclassificacao], 'spValidaNivelPC', '') do
    end; // fim do if trim(DBEclassificacao.Text) <> '' then
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      DBEclassificacao.SetFocus;
      exit;
    end;
  end;
  HabilitaCampos;
end;

procedure TfrmCadPlanoConta.DBEidPlanoContaGrupoExit(Sender: TObject);
begin
  inherited;
  if (trim(DBEidPlanoContaGrupo.Text) <> '') then
  begin
    with FrmPrincipal.ExecutaSQLRet([DBEidPlanoContaGrupo],'','PlanoContaGrupo') do
    begin
      if IsEmpty then
      begin
        messagedlg('Grupo de DRE não cadastrado ! Por favor verifique o código informado !', mtInformation,[mbOK],0);
        DBEidPlanoContaGrupo.Text := '';
        DBEidPlanoContaGrupo.SetFocus;
        exit;
      end;
    end;
  end;
end;

procedure TfrmCadPlanoConta.DBRGtpPlanoContaExit(Sender: TObject);
var
  tpPC: string;
  sql : string;
begin
  if DBRGtpPlanoConta.ItemIndex = 0 then
    tpPC := 'G'
  else
    tpPC := 'F';

  if (trim(tpPC) <> '') then
  begin
    //Definição da variável mascara
    if tpPC = 'G' then
    begin
      sql  := 'SELECT mascaraContabil FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
      mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraContabil').AsString;
    end
    else
    begin
      sql  := 'SELECT mascaraFiscal FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
      mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraFiscal').AsString;
    end;

    if trim(mascara) = '' then
    begin
      messagedlg('Empresa sem máscara cadastrada! Entre no cadastro e informe a máscara!', mtwarning, [mbok], 0);
      close;
      exit;
    end;
  end;

  cdsPadrao.Filtered := false;
  cdsPadrao.Filter := 'tpPlanoConta = ' + quotedstr(tpPC);
  cdsPadrao.Filtered := true;

  if cdsPadrao.IsEmpty then
    cdsPadrao.Edit;

  DBRGtpPlanoConta.Value := tpPC;

  DBEclassificacao.SetFocus;

end;

procedure TfrmCadPlanoConta.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  DBRGtpPlanoConta.Enabled := not (cdsPadrao.State = dsInsert);
end;

procedure TfrmCadPlanoConta.dspPadraoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  //
  If (DeltaDS.FieldByName('idPlanoContaGrupo').NewValue = '') Then
     DeltaDS.FieldByName('idPlanoContaGrupo').NewValue := Null;
  //
end;

procedure TfrmCadPlanoConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsPadrao.IndexFieldNames := '';
  FrmCadPlanoConta := nil;
end;

procedure TfrmCadPlanoConta.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  SetLength(chave, 2);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEclassificacao;
  chave[2] := DBRGtpPlanoConta;
  tab_chave := 'PlanoConta';
  situacao := 'stPlanoConta';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  Grid := true;
  FindPesquisa := FindPlanoConta;
  Height := 493;
  Width := 621;
  foco := DBEclassificacao;
end;

procedure TfrmCadPlanoConta.FormShow(Sender: TObject);
var
sql : string;
begin
  inherited;
  sql  := 'SELECT mascaraContabil FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
  mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraContabil').AsString;

  sql := ' SELECT MAX(nrGrau) AS nrGrau, tpPlanoConta FROM PlanoContaNivel WHERE idEmpresa = ' + DBEidEmpresa.Text + ' AND tpPlanoConta = ' + quotedstr(cdsPadrao.FieldByName('tpPlanoConta').AsString) + '  GROUP BY tpPlanoConta';
  nrGrau := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('nrGrau').AsInteger;
  if trim(mascara) = '' then
  begin
    sql  := 'SELECT mascaraFiscal FROM ConfigContabil WHERE idCadGeral = ' + DBEidEmpresa.Text;
    mascara := FrmPrincipal.ExecutaSQLRet([],'',sql).FieldByName('mascaraFiscal').AsString;
    if trim(mascara) = '' then
    begin
      messagedlg('Empresa sem máscara cadastrada! Entre no cadastro e informe a máscara!', mtwarning, [mbok], 0);
      close;
      exit;
    end;
  end;
  DBRGtpPlanoConta.SetFocus;
  DBRGtpPlanoContaExit(DBRGtpPlanoConta);

  BtnExcluir2.Visible := excluir;
end;

procedure TfrmCadPlanoConta.HabilitaCampos;
var
  sql, mask : String;
begin
  if trim(cdsPadrao.FieldByName('classificacao').AsString) <> '' then
  begin
    mask := cdsPadrao.FieldByName('classificacao').AsString;
    {$REGION 'Verifica se é de grau minimo para habilitar ou desabilitar os campos'}
    sql := ' SELECT pn.tpPlanoConta, pn.naturezaPLanoConta FROM PlanoConta pn ' +
           '  WHERE pn.nrGrau = (SELECT MIN(p.nrGrau) FROM PlanoContaNivel p  ' +
           '                      WHERE p.idEmpresa = pn.idEmpresa            ' +
           '                        AND p.tpPlanoConta = pn.tpPlanoConta      ' +
           '                        AND p.idEmpresa = ' + DBEidEmpresa.Text +
 	  			 ' 		                    AND p.tpPlanoConta = ' + quotedstr(cdsPadrao.FieldByName('tpPlanoConta').AsString) + ') ' +
           '     AND pn.classificacao = ' + quotedstr(mask[1]);

    with FrmPrincipal.ExecutaSQLRet([],'',sql) do
    begin
      if (cdsPadrao.FieldByName('nrGrau').Value = 1) then
      begin
        DBRGnaturezaPlanoConta.Enabled := true;
      end
      else
      begin
        if trim(FieldByName('naturezaPlanoConta').AsString) <> '' then
        begin
          if cdsPadrao.State in [dsInsert,dsEdit] then
            cdsPadrao.FieldByName('naturezaPlanoConta').AsString := FieldByName('naturezaPlanoConta').AsString;
          DBRGnaturezaPlanoConta.Enabled := false;
        end;
      end;
     {$ENDREGION 'Verifica se é de grau minimo para habilitar ou desabilitar os campos'}

    // verifica se é uma conta de Resultado ============================
    if (StrToInt(mask[1]) >= 3) then
    begin
      funcao.SomenteLeitura([DBEidPlanoContaGrupo],false);
      DBEidPlanoContaGrupo.SetFocus;
    end
    else
      begin
        funcao.SomenteLeitura([DBEidPlanoContaGrupo],true);
        DBEdescPlanoConta.SetFocus;
      end;
    // =================================================================
    end;
  end;
  {$REGION 'Verifica se é de grau maximo para habilitar ou desabilitar os campos'}


  if trim(cdsPadrao.FieldByName('nrGrau').AsString) <> '' then
  begin
    DBEcdPlanoConta.Text := Copy(cdsPadrao.FieldByName('cdPlanoConta').AsString, 1, length(cdsPadrao.FieldByName('cdPlanoConta').AsString)-1) ;
    DBEdigito.Text := Copy(cdsPadrao.FieldByName('cdPlanoConta').AsString, length(cdsPadrao.FieldByName('cdPlanoConta').AsString), 1) ;
    if (cdsPadrao.FieldByName('nrGrau').Value = nrGrau) and (cdsPadrao.State in [dsInsert]) then
    begin
      funcao.SomenteLeitura([DBEcdPlanoConta],false);
      DBEcdPlanoConta.SetFocus;
    end
    else
    begin
      funcao.SomenteLeitura([DBEcdPlanoConta],true);
    end;
  end;

  {$ENDREGION 'Verifica se é de grau maximo para habilitar ou desabilitar os campos'}
end;

end.
