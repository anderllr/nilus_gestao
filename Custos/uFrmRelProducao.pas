unit uFrmRelProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelEmpresa, FMTBcd, SqlExpr, CFind, DB, frxClass, frxDBSet,
  frxExportCSV, frxExportMail, frxExportODF, frxExportPDF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportText, frxExportRTF, frxExportImage,
  DBClient, Provider, ActnList, ImgList, CLookUp, StdCtrls,
  Mask, DBCtrls, CDBEdit, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CLabel,
  CGroupBox, CRadioGroup, CDBRadioGroup, CDBCheckBox, ClipBrd, CListBox,
  System.Actions, System.ImageList;

type
  TFrmRelProducao = class(TFrmPadraoRelEmpresa)
    frxRel: TfrxReport;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    cdsGrupo: TClientDataSet;
    cdsGrupoSELECIONADO: TStringField;
    cdsGrupoidProdGrupo: TSmallintField;
    cdsGrupodescProdGrupo: TStringField;
    cdsGrupostProdGrupo: TStringField;
    dsGrupo: TDataSource;
    dspGrupo: TDataSetProvider;
    sdsGrupo: TSQLQuery;
    cdsSubGrupo: TClientDataSet;
    StringField1: TStringField;
    cdsSubGrupoidProdSubGrupo: TSmallintField;
    cdsSubGrupodescProdSubGrupo: TStringField;
    cdsSubGrupostProdSubGrupo: TStringField;
    dsSubGrupo: TDataSource;
    dspSubGrupo: TDataSetProvider;
    sdsSubGrupo: TSQLQuery;
    DBEidArmOperacao: TCDBEdit;
    LookOperacao: TCLookUp;
    CLabel19: TCLabel;
    CLookUp2: TCLookUp;
    DBEidProdDeposito: TCDBEdit;
    LookProdDeposito: TCLookUp;
    CLabel10: TCLabel;
    lblCliFor: TCLabel;
    DBEidArmazem: TCDBEdit;
    LookArmazem: TCLookUp;
    CLabel23: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    CLabel11: TCLabel;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CLabel1: TCLabel;
    DBEidVariedade: TCDBEdit;
    CLabel5: TCLabel;
    DBEidResultado: TCDBEdit;
    LookVariedade: TCLookUp;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    cdsPadraoidArmOperacao: TIntegerField;
    cdsPadraoidRomaneioIni: TIntegerField;
    cdsPadraoidRomaneioFim: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidProdDeposito: TIntegerField;
    cdsPadraoidArmazem: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidVariedade: TIntegerField;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraoidMotorista: TIntegerField;
    DBEidMotorista: TCDBEdit;
    LookMotorista: TCLookUp;
    CLabel8: TCLabel;
    DBEidRomaneioIni: TCDBEdit;
    CLabel6: TCLabel;
    DBEidRomaneioFim: TCDBEdit;
    CLabel7: TCLabel;
    cdsPadraoidOrdem: TSmallintField;
    lstOrdem: TCListBox;
    CLabel9: TCLabel;
    BtnUp: TCBitBtn;
    BtnDown: TCBitBtn;
    CGroupBox2: TCGroupBox;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    DBEplaca: TCDBEdit;
    CLabel12: TCLabel;
    cdsPadraoplaca: TStringField;
    DBRGtpRelatorio: TCDBRadioGroup;
    cdsPadraotpRelatorio: TStringField;
    procedure frxRelAfterPrint(Sender: TfrxReportComponent);
    procedure actGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

    procedure lstOrdemClick(Sender: TObject);
    procedure BtnDownClick(Sender: TObject);
    procedure BtnUpClick(Sender: TObject);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelProducao: TFrmRelProducao;

implementation

uses uFrmPadraoRel, uDmPadrao, uFrmPrincipal, uFuncao, uDmFind;

{$R *.dfm}

procedure TFrmRelProducao.actGerarExecute(Sender: TObject);
var
  msg, sql, ordem, o : string;
  i : integer;
begin
  msg := '';

  if (trim(DBEdtInicial.Text) = '') or (trim(DBEdtFinal.Text) = '') then
    msg := 'O período deve ser informado!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  //como o gerar foi omitido chamaremos direto daqui
  dmPadrao.cdsEmpresaContabil.Active := false;
  dmPadrao.cdsEmpresaContabil.CommandText := ' EXEC spRelCabecalho ' +
           cdsEmpresaidEmpresa.AsString + ', ' + cdsEmpresaidCadEmpresa.AsString;
  dmPadrao.cdsEmpresaContabil.Active := true;


  //Atribui o valor ao DBEgrupos e DBEsubGrupos
  if not (cdsPadrao.State in [dsEdit, dsInsert]) then
    cdsPadrao.Edit;

  cdsRelatorio.Active := false;
  sql := 'EXEC spRelProducao ';
  if cdsPadraoconsolidaemp.AsString = 'S' then
    sql := sql + '0'
  else
    sql := sql + DBEidEmpresa.Text;

  if cdsPadraoconsolidafilial.AsString = 'S' then
    sql := sql + ', 0'
  else
    sql := sql + ', ' + DBEidCadEmpresa.Text;

  sql := sql + ', ' + funcao.RetornaValorEField(DBEidArmOperacao, 3) + ', ' +
         funcao.RetornaValorEField(DBEidRomaneioIni, 3) + ', ' +
         funcao.RetornaValorEField(DBEidRomaneioFim, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
         funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
         funcao.RetornaValorEField(DBEidProdDeposito, 3) + ', ' +
         funcao.RetornaValorEField(DBEidArmazem, 3) + ', ' +
         funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
         funcao.RetornaValorEField(DBEidProduto, 3) + ', ' +
         funcao.RetornaValorEField(DBEidVariedade, 3) + ', ' +
         funcao.RetornaValorEField(DBEidResultado, 3) + ', ' +
         funcao.RetornaValorEField(DBEidMotorista, 3) + ', ' +
         funcao.RetornaValorEField(DBEPlaca, 3) + ', ';

  ordem := '';
  for i := 0 to lstOrdem.Count - 2 do
  begin
    if lstOrdem.Items.Strings[i] = 'Armazém' then
      o := 'A'
    else
      if lstOrdem.Items.Strings[i] = 'Motorista' then
        o := 'M'
      else
        if lstOrdem.Items.Strings[i] = 'Produto' then
          o := 'P'
        else
          if lstOrdem.Items.Strings[i] = 'Propriedade' then
            o := 'F'
          else
            if lstOrdem.Items.Strings[i] = 'Talhão/Resultado' then
              o := 'T'
            else
              if lstOrdem.Items.Strings[i] = 'Romaneio' then
                o := 'R';


    if trim(ordem) = '' then
      ordem := o
    else
      ordem := ordem + ', ' + o;
  end;

  sql := sql + QuotedStr(ordem);
  dmPadrao.dbConexao.ExecuteDirect(sql);
  cdsRelatorio.CommandText := 'SELECT * FROM tmpRelProducao ORDER BY idGrupo1, idGrupo2, idGrupo3, idGrupo4';
  //
//  ClipBoard.asText := cdsRelatorio.CommandText;
  cdsRelatorio.Active := true;
  cdsRelatorio.First;
  while not cdsRelatorio.Eof do
  begin
    if (not (cdsRelatorio.FieldByName('qtPesoDesconto').isNull) and (cdsRelatorio.FieldByName('qtPesoDesconto').AsFloat > 0)) then
    begin
      cdsRelatorio.Edit;
      cdsRelatorio.FieldByName('prDesconto').AsFloat :=  ((cdsRelatorio.FieldByName('qtPesoDesconto').AsFloat
                                                        /cdsRelatorio.FieldByName('qtPesoProduto').AsFloat)*100);
      cdsRelatorio.Post;
      sql := 'UPDATE tmpRelProducao SET prDesconto = '+ QuotedStr(funcao.TiraVirgula(cdsRelatorio.FieldByName('prDesconto').AsString)) +
             ' WHERE idEmpresa = ' + cdsRelatorio.FieldByName('idEmpresa').AsString +
             '   AND idCadEmpresa = ' + cdsRelatorio.FieldByName('idCadEmpresa').AsString +
             '   AND idRomaneio = ' + cdsRelatorio.FieldByName('idRomaneio').AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);
    end;
    cdsRelatorio.Next;
  end;
  cdsRelatorio.Active := False;
  cdsRelatorio.CommandText := 'SELECT * FROM tmpRelProducao ORDER BY idGrupo1, idGrupo2, idGrupo3, idGrupo4';
  cdsRelatorio.Active := true;
  if cdsPadraotpRelatorio.AsString = 'Retrato' then
    relatorio := 'RelProducao.fr3'
  else
    if cdsPadraotpRelatorio.AsString = 'Paisagem' then
      relatorio := 'RelProducaoPaisagem.fr3';
  //
  inherited;
  sql := 'DROP TABLE tmpRelProducao';
  dmPadrao.dbConexao.ExecuteDirect(sql);
end;

procedure TFrmRelProducao.BtnDownClick(Sender: TObject);
var
  vlAnterior, vlLocal : string;
begin
  inherited;
  vlLocal := lstOrdem.Items.Strings[lstOrdem.ItemIndex+1];
  vlAnterior := lstOrdem.Items.Strings[lstOrdem.ItemIndex];
  lstOrdem.Items.Strings[lstOrdem.ItemIndex] := vlLocal;
  lstOrdem.Items.Strings[lstOrdem.ItemIndex+1] := vlAnterior;
  lstOrdem.ItemIndex := lstOrdem.ItemIndex + 1;
  lstOrdemClick(lstOrdem);
end;

procedure TFrmRelProducao.BtnUpClick(Sender: TObject);
var
  vlAnterior, vlLocal : string;
begin
  inherited;
  vlLocal := lstOrdem.Items.Strings[lstOrdem.ItemIndex];
  vlAnterior := lstOrdem.Items.Strings[lstOrdem.ItemIndex-1];
  lstOrdem.Items.Strings[lstOrdem.ItemIndex-1] := vlLocal;
  lstOrdem.Items.Strings[lstOrdem.ItemIndex] := vlAnterior;
  lstOrdem.ItemIndex := lstOrdem.ItemIndex - 1;
  lstOrdemClick(lstOrdem);
end;

procedure TFrmRelProducao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'S';
  cdsPadraotpRelatorio.AsString := 'Retrato';
end;

procedure TFrmRelProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmRelProducao := nil;
end;

procedure TFrmRelProducao.FormCreate(Sender: TObject);
begin
  inherited;
  fiscal := true;
  BtnUp.Enabled := false;
  BtnDown.Enabled := false;
//  proc := 'spRelCustos';
  relatorio := 'RelProducao.fr3';
  SetLength(parametro, 17);
  parametro[0] := LookdescCadEmpresa;
  parametro[1] := LookdescAbreviada;
  parametro[2] := DBEdtInicial;
  parametro[3] := DBEdtFinal;
  parametro[4] := LookOperacao;
  parametro[5] := DBEidProdDeposito;
  parametro[6] := LookProdDeposito;
  parametro[7] := DBEidArmazem;
  parametro[8] := LookArmazem;
  parametro[9] := DBEidSafra;
  parametro[10] := LookSafra;
  parametro[11] := DBEidProduto;
  parametro[12] := LookProduto;
  parametro[13] := LookVariedade;
  parametro[14] := DBEidResultado;
  parametro[15] := DBEidMotorista;
  parametro[16] := LookMotorista;
  Width := 615;
  Height := 455;

end;

procedure TFrmRelProducao.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtInicial.SetFocus;

end;

procedure TFrmRelProducao.frxRelAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmRelProducao.lstOrdemClick(Sender: TObject);
begin
  inherited;
  if lstOrdem.ItemIndex = 0 then
  begin
    BtnUp.Enabled := false;
    BtnDown.Enabled := true;
  end
  else
    if lstOrdem.ItemIndex = (lstOrdem.Items.Count -1) then
    begin
      BtnUp.Enabled := true;
      BtnDown.Enabled := false;
    end
    else
    begin
      BtnUp.Enabled := true;
      BtnDown.Enabled := true;
    end;


end;

end.
