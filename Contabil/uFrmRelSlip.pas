unit uFrmRelSlip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, DB, frxClass, frxDBSet, frxExportCSV,
  frxExportMail, frxExportODF, frxExportPDF, frxExportXML, frxExportXLS,
  frxExportHTML, CFind, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  EditAlign, CEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel, DBCtrls,
  CDBRadioGroup, Mask, CDBEdit, FMTBcd, SqlExpr, CRadioButton, CRadioGroup,
  CCheckBox, CGroupBox, CDBCheckBox, System.Actions, System.ImageList;

type
  TFrmRelSlip = class(TFrmPadraoRelEmpresa)
    CGroupBox1: TCGroupBox;
    DBRGtpPlanoConta: TCDBRadioGroup;
    GPPeriodo: TCGroupBox;
    frxRel: TfrxReport;
    CRadioGroup1: TCRadioGroup;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraotpPlanoConta: TStringField;
    CLabel6: TCLabel;
    DBEdtEmissaoIni: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtEmissaoFim: TCDBEdit;
    CLabel11: TCLabel;
    DBEidLancamento: TCDBEdit;
    FindConta: TCFind;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    CLabel8: TCLabel;
    cdsPadraoidConta: TIntegerField;
    cdsPadraodtEmissaoIni: TDateTimeField;
    cdsPadraodtEmissaoFim: TDateTimeField;
    cdsPadraoidCodLancamento: TIntegerField;
    procedure actGerarExecute(Sender: TObject);
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSlip: TFrmRelSlip;
implementation

uses uFrmPadraoRel, uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmRelSlip.actGerarExecute(Sender: TObject);
Var sSql, sWhere, sWhereEmpresa, sWhereOrigem, sWhereLancamento, sWhereConta, sWhereEmissaoIni, sWhereEmissaoFim: String;
begin
  //inherited;
  if DBRGtpPlanoConta.value ='' then
  begin
    messagedlg('Informe a Origem!', mtWarning, [mbOK], 0);
    DBRGtpPlanoConta.SetFocus;
    exit;
  end;

  cdsRelatorio.Active := false;
  {cdsRelatorio.CommandText := 'select cl.idEmpresa, cl.idLote, cl.idContLancamento, cl.idContHistorico, cl.dtContLancamento, ' +
  '(case when cl.cdPlanoContaDeb > 0 then ' +
  'cl.cdPlanoContaDeb ' +
  'end) cdPlanoContaDeb, ' +
  '(case when cl.cdPlanoContaDeb > 0 then ' +
  '( ' +
  'substring(rtrim(cl.cdPlanoContaDeb), 1, len(rtrim(cl.cdPlanoContaDeb)) -1) + '-' + substring(rtrim(cl.cdPlanoContaDeb), len(rtrim(cl.cdPlanoContaDeb)), 1) ' +
  ') end) ContaRedDeb, ' +
  'pcd.descPlanoConta DescricaoContaDebito, pcd.Classificacao classContaDeb, ' +
  '(case when cl.cdPlanoContaCre > 0 then ' +
  'cl.cdPlanoContaCre ' +
  'end) cdPlanoContaCre, ' +
  '(case when cl.cdPlanoContaCre > 0 then ' +
  '( ' +
  'substring(rtrim(cl.cdPlanoContaCre), 1, len(rtrim(cl.cdPlanoContaCre)) -1) + '-' + substring(rtrim(cl.cdPlanoContaCre), len(rtrim(cl.cdPlanoContaCre)), 1) ' +
  ') end) ContaRedCre, ' +
  'pcc.descPlanoConta DescricaoContaCredito, pcc.Classificacao classContaCred, ' +
  'cl.vlContLancamento, cl.obsContLancamento, cl.idAgrupador ' +
  'from contLancamento cl ' +
  'left join planoConta pcd ' +
  'on pcd.idEmpresa = cl.idEmpresa and ' +
  'pcd.cdPlanoConta = cl.cdPlanoContaDeb ' +
  'left join planoConta pcc ' +
  'on pcc.idEmpresa = cl.idEmpresa and ' +
  'pcc.cdPlanoConta = cl.cdPlanoContaCre ' +
  'where cl.idEmpresa = 1 ' +
  'order by idContLancamento ';}
  //
  sWhereEmpresa := Format('idEmpresa = %s', [funcao.RetornaValorEField(DBEidEmpresa, 3)]);
  sWhereOrigem := Format('tpPlanoConta = %s', [QuotedStr(dsPadrao.DataSet.FieldByName('tpPlanoConta').asString)]);
  //
  If Not(dsPadrao.DataSet.FieldByName('idCodLancamento').IsNull) Then
     sWhereLancamento := Format('idAgrupador = %d', [dsPadrao.DataSet.FieldByName('idCodLancamento').asInteger])
  Else
     sWhereLancamento := '';
  //
  {If Not(dsPadrao.DataSet.FieldByName('idConta').IsNull) Then
     sWhereConta := Format('idContLancamento = %d', [dsPadrao.DataSet.FieldByName('idCodLancamento').asInteger])
  Else}
     sWhereConta := '';
  //
  //
  If Not(dsPadrao.DataSet.FieldByName('dtEmissaoIni').IsNull) Then
     sWhereEmissaoIni := Format('dtContLancamento >= %s', [funcao.RetornaValorEField(DBEdtEmissaoIni, 3)])
  Else
     sWhereEmissaoIni := '';
  //
  If Not(dsPadrao.DataSet.FieldByName('dtEmissaoFim').IsNull) Then
     sWhereEmissaoFim := Format('dtContLancamento <= %s', [funcao.RetornaValorEField(DBEdtEmissaoFim, 3)])
  Else
     sWhereEmissaoFim := '';
  //
  sWhere := funcao.SepararValores([sWhereEmpresa, sWhereOrigem, sWhereLancamento, sWhereConta, sWhereEmissaoIni, sWhereEmissaoFim], ' AND ');
  //
  If (Trim(sWhere) <> '') Then
     sWhere := 'WHERE ' + sWhere
  Else
     sWhere := '';
  //
  sSql := 'SELECT [idEmpresa]' +
                ',[idLote]' +
                ',[idContLancamento]' +
                ',[idContHistorico]' +
                ',[dtContLancamento]' +
                ',[cdPlanoContaDeb]' +
                ',[ContaRedDeb]' +
                ',[DescricaoContaDebito]' +
                ',[classContaDeb]' +
                ',[cdPlanoContaCre]' +
                ',[ContaRedCre]'+
                ',[DescricaoContaCredito]' +
                ',[classContaCred]' +
                ',[vlContLancamentoDeb]' +
                ',[vlContLancamentoCre]' +
                ',[obsContLancamento]' +
                ',[idAgrupador] ' +
                'FROM vRelSlip ' +
                sWhere +
                ' ORDER BY [idContLancamento]';
  //
  //ShowMessage(sSql);
  cdsRelatorio.CommandText := sSql;
  //
  {'EXEC spContRelBalancete '+ DBEidEmpresa.Text + ',';// +
  {funcao.RetornaValorEField(DBRGtpPlanoConta,3) +  ',' +
  funcao.RetornaValorEField(DBEmesAnoIni,3) + ',' +
  funcao.RetornaValorEField(DBEmesAnoFim,3) + ',' +
  funcao.RetornaValorEField(DBEnrGrau,3) + ',' +
  funcao.RetornaValorEField(DBEclassificacaoIni,3) + ',' +
  funcao.RetornaValorEField(DBEclassificacaoFim,3) + ',' +
  funcao.RetornaValorEField(DBEListarSaldoZero,3);}

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + 'RelSlip.fr3');
  //(frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Clear;
  //(frxRel.FindComponent('MemnrGrau') as TFrxMemoView).Memo.Add(DBEnrGrau.Text);
  //(frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Clear;
  //(frxRel.FindComponent('MemdtEmissao') as TFrxMemoView).Memo.Add(EDdtEmissao.Text);
  //(frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Clear;
  //(frxRel.FindComponent('MemPeriodo') as TFrxMemoView).Memo.Add(DBEmesAnoIni.Text + ' à '  + DBEmesAnoFim.text);
  //(frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Clear;
  //(frxRel.FindComponent('MemdescEmpresa') as TFrxMemoView).Memo.Add(LookdescCadEmpresa.caption);}
  frxRel.ShowReport;
  dmPadrao.dbConexao.CloseDataSets;
  //
end;

procedure TFrmRelSlip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelSlip:= nil;
end;

procedure TFrmRelSlip.FormCreate(Sender: TObject);
begin
  inherited;
  {proc := 'spContRelBalancete';
  relatorio := 'contRelBalancete.fr3'; //Arquivo de Relatorio
  SetLength(parametro, 8);
  parametro[0] := DBEidEmpresa;
  parametro[1] := DBRGtpPlanoConta;
  parametro[2] := DBEmesAnoIni;
  parametro[3] := DBEmesAnoFim;
  parametro[4] := DBEnrGrau;
  parametro[5] := DBEclassificacaoIni;
  parametro[6] := DBEclassificacaoFim;
  parametro[7] := DBEListarSaldoZero;}
  //  ordem := ' ORDER BY classificacao'; --Verificar com o mario o funcionamento
  cdsPadrao.FieldByName('tpPlanoConta').asString := 'F';
  //
  Height := 315;
  Width := 488;
  //
end;

procedure TFrmRelSlip.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

end.

