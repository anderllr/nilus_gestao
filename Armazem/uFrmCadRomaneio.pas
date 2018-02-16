unit uFrmCadRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, SqlExpr, ActnList, ImgList, DB,
  Provider, DBClient, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  ExtCtrls, CPanelGradient, Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar,
  CGroupBox, CDBRadioGroup, CFind, Grids, DBGrids, CDBGrid, CDBMemo,
  CDBComboBox, frxExportMail, frxExportCSV, frxExportODF, frxExportHTML,
  frxExportXLS, frxExportXML, frxExportPDF, frxExportText, frxExportRTF,
  frxExportImage, frxClass, frxDBSet, frxDMPExport, Math, ACBrBase, ACBrBAL,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit;

type
  TFrmCadRomaneio = class(TFrmCadPadraoEmpFiscal)
    CPanelGradient1: TCPanelGradient;
    Bevel5: TBevel;
    sdsRomaneio: TSQLDataSet;
    Bevel6: TBevel;
    CLabel8: TCLabel;
    DBEidRomaneio: TCDBEdit;
    CGroupBox2: TCGroupBox;
    CLabel10: TCLabel;
    DBEqtPesoBruto: TCDBEdit;
    DBRtpRomaneio: TCDBRadioGroup;
    TabDescontos: TTabSheet;
    CLabel11: TCLabel;
    DBEqtPesoTara: TCDBEdit;
    CLabel14: TCLabel;
    DBEqtPesoLiquido: TCDBEdit;
    CLabel18: TCLabel;
    DBEstRomaneio: TCDBEdit;
    CLabel19: TCLabel;
    BtnAbertos: TCBitBtn;
    CGroupBox4: TCGroupBox;
    CLabel9: TCLabel;
    DBEidMotorista: TCDBEdit;
    LookdescMotorista: TCLookUp;
    CGroupBox3: TCGroupBox;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    CLabel17: TCLabel;
    DBEqtProdBruto: TCDBEdit;
    DBEqtProdDesconto: TCDBEdit;
    DBEqtProdLiquido: TCDBEdit;
    actPesagem: TActionList;
    actPesar: TAction;
    FindProduto: TCFind;
    FindProdDeposito: TCFind;
    FindResultado: TCFind;
    FindMotorista: TCFind;
    imgConsulta: TImageList;
    actConsulta: TActionList;
    actAbertos: TAction;
    FindContrato: TCFind;
    CPanelGradient2: TCPanelGradient;
    BtnImpRomaneio: TCBitBtn;
    actPrnRomaneio: TAction;
    actPrnClassificacao: TAction;
    BtnFinalizar: TCBitBtn;
    actFinalizar: TAction;
    ImgPesagem: TImageList;
    CGroupBox7: TCGroupBox;
    DBEqtProdBruto2: TCDBEdit;
    CLabel25: TCLabel;
    CGroupBox8: TCGroupBox;
    CLabel27: TCLabel;
    DBEidCadDesconto: TCDBEdit;
    LookCadDesconto: TCLookUp;
    sdsRomaneioDesconto: TSQLDataSet;
    dspRomaneioDesconto: TDataSetProvider;
    cdsRomaneioDesconto: TClientDataSet;
    dsRomaneioDesconto: TDataSource;
    CGroupBox9: TCGroupBox;
    BtnSalvarDesc: TCBitBtn;
    BtnCancelarDesc: TCBitBtn;
    BtnExcluirDesc: TCBitBtn;
    BtnNovoDesc: TCBitBtn;
    BtnCadDesconto: TCBitBtn;
    CLabel21: TCLabel;
    DBEprMedido: TCDBEdit;
    CLabel22: TCLabel;
    DBEprDesconto: TCDBEdit;
    CLabel23: TCLabel;
    DBEqtDesconto: TCDBEdit;
    CGroupBox10: TCGroupBox;
    DBGrid: TCDBGrid;
    cdsCadDesconto: TClientDataSet;
    cdsRomaneioDescontodescCadDesconto: TStringField;
    FindCadDesconto: TCFind;
    CLabel24: TCLabel;
    DBEqtProdDesconto2: TCDBEdit;
    CLabel26: TCLabel;
    DBEqtProdLiquido2: TCDBEdit;
    CLabel28: TCLabel;
    DBEdtRomaneio: TCDBEdit;
    cdsConfigRomaneio: TClientDataSet;
    cdsConfigRomDesc: TClientDataSet;
    sdsNf: TSQLDataSet;
    dspNf: TDataSetProvider;
    cdsNf: TClientDataSet;
    dsNf: TDataSource;
    sdsNfProduto: TSQLDataSet;
    dspNfProduto: TDataSetProvider;
    cdsNfProduto: TClientDataSet;
    dsNfProduto: TDataSource;
    FindCfop: TCFind;
    cdsConfigArmazem: TClientDataSet;
    CLabel13: TCLabel;
    DBEidContratoArm: TCDBEdit;
    CLabel12: TCLabel;
    DBEidResultado: TCDBEdit;
    LookDescResultado: TCLookUp;
    CLabel20: TCLabel;
    DBEidProdDeposito: TCDBEdit;
    LookDescProdDeposito: TCLookUp;
    CLabel7: TCLabel;
    DBEidProduto: TCDBEdit;
    LookdescProduto: TCLookUp;
    BtnCadMotorista: TCBitBtn;
    CBitBtn1: TCBitBtn;
    BtnCadDeposito: TCBitBtn;
    BtnCadContrato: TCBitBtn;
    LblCad: TCLabel;
    DBEidCliente: TCDBEdit;
    LookClienteFiscal: TCLookUp;
    BtnPesar: TCBitBtn;
    lblPeso: TCLabel;
    lblLendo: TCLabel;
    FindNatureza: TCFind;
    dspProc: TDataSetProvider;
    cdsProc: TClientDataSet;
    CLabel4: TCLabel;
    DBEPlaca: TCDBEdit;
    DBEdescVeiculo: TCDBEdit;
    CLabel5: TCLabel;
    DBEidBem: TCDBEdit;
    LookBem: TCLookUp;
    CBitBtn4: TCBitBtn;
    CLabel29: TCLabel;
    FindBem: TCFind;
    CLabel30: TCLabel;
    DBEidSafra: TCDBEdit;
    CBitBtn7: TCBitBtn;
    LookSafra: TCLookUp;
    FindSafra: TCFind;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    frxRel: TfrxReport;
    frxDataset: TfrxDBDataset;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxPDFExport1: TfrxPDFExport;
    frxXMLExport1: TfrxXMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    LookContrato: TCLookUp;
    frxDotMatrixExport: TfrxDotMatrixExport;
    FindPlaca: TCFind;
    FindTabDesconto: TCFind;
    DBEidCadCliente: TCDBEdit;
    BtnNfETransito: TCBitBtn;
    actNfTransito: TAction;
    sdsNfETransito: TSQLDataSet;
    dspNfETransito: TDataSetProvider;
    cdsNfETransito: TClientDataSet;
    dsNfETransito: TDataSource;
    FindRomAtivo: TCFind;
    btnClassificacao: TCBitBtn;
    dspClassificar: TDataSetProvider;
    cdsClassificar: TClientDataSet;
    frxDBClassificar: TfrxDBDataset;
    frxClassificar: TfrxReport;
    cdsRomaneioDescontoidEmpresa: TIntegerField;
    cdsRomaneioDescontoidCadEmpresa: TSmallintField;
    cdsRomaneioDescontoidRomaneio: TIntegerField;
    cdsRomaneioDescontoidCadDesconto: TSmallintField;
    cdsRomaneioDescontoprMedido: TFMTBCDField;
    cdsRomaneioDescontoprDesconto: TFMTBCDField;
    cdsRomaneioDescontoqtDesconto: TFMTBCDField;
    Balanca: TACBrBAL;
    edPeso: TcxCurrencyEdit;
    procedure actPrnClassificacaoExecute(Sender: TObject);
    procedure DBEdtRomaneioExit(Sender: TObject);
    procedure FindRomAtivoClose(Sender: TObject);
    procedure dsPadraoStateChange(Sender: TObject);
    procedure actNfTransitoExecute(Sender: TObject);
    procedure DBEidClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidContratoArmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEidBemEnter(Sender: TObject);
    procedure DBEidCadEmpresaMouseActivate(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure DBEPlacaExit(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure BtnCancelarDescMouseActivate(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure BtnFecharMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure actFecharExecute(Sender: TObject);
    procedure BtnCancelarMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEqtPesoBrutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actFinalizarExecute(Sender: TObject);
    procedure DBRtpRomaneioExit(Sender: TObject);
    procedure DBEidRomaneioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actAbertosExecute(Sender: TObject);
    procedure DBEqtPesoTaraEnter(Sender: TObject);
    procedure DBEidCadDescontoExit(Sender: TObject);
    procedure DBEprMedidoExit(Sender: TObject);
    procedure dsRomaneioDescontoStateChange(Sender: TObject);
    procedure cdsRomaneioDescontoAfterInsert(DataSet: TDataSet);
    procedure dspRomaneioDescontoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BtnSalvarDescClick(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HabilitaBotoes;
    procedure DBEqtPesoBrutoExit(Sender: TObject);
    procedure DBRtpRomaneioChange(Sender: TObject);
    procedure DefinePesagem;
    procedure ExecutaProc(Proc: String);
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure actPesarExecute(Sender: TObject);
    procedure actPrnRomaneioExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEidRomaneioExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure DBEidClienteExit(Sender: TObject);
    procedure cdsPadraoAfterScroll(DataSet: TDataSet);
    procedure AtualizaLookups;
    procedure ConfiguraRomaneio;
    procedure BalancaLePeso(Peso: Double; Resposta: string);
{    procedure AbreNota;}
  private
    { Private declarations }
    UsaNotaFiscal, UsaDesconto, PesagemManual, Fecha, CopiarStr: Boolean;
    FocoPeso : TCustomEdit;
    posIni, posFim, tamString : integer;
    lendo, peso : string;
  public
    { Public declarations }
  end;

var
  FrmCadRomaneio: TFrmCadRomaneio;

implementation

uses uFrmPrincipal, uFuncao, uFrmPesCadFiscal, uFrmPesRomaneio, uDmPadrao,
     uFrmPadrao, uFrmPesClienteFiscal, uFrmPesNfETransito, uFrmCadPadrao;

{$R *.dfm}

procedure TFrmCadRomaneio.ExecutaProc(Proc: String);
//Procedimento criado para centralizar a execução de procedures na tela de romaneio
begin
  //inicializa o clientdataset  cdsLookup
  with cdsLookUp do
  begin
    Active := false;
    CommandText := 'EXEC ' + Proc + ' ';
    if Proc = 'spRetCodRomaneio' then
    begin
      CommandText := CommandText + DBEidEmpresa.Text + ', ' + DBEidCadEmpresa.Text;
      Active := true;
      cdsPadrao.FieldByName('idRomaneio').AsInteger := FieldByName('idRomaneio').AsInteger;
    end
    else
      if Proc = 'spRetDescRomaneio' then
      begin
        CommandText := CommandText + DBEidProduto.Text + ', ' + DBEidCadDesconto.Text + ', ' +
                       funcao.TiraVirgula(DBEqtProdBruto.Text) + ', ' + funcao.TiraVirgula(DBEprMedido.Text);
        Active := true;
        if Trim(FieldByName('msg').AsString) <> 'OK' then
        begin
          messagedlg(FieldByName('msg').AsString, mtwarning, [mbok], 0);
          cdsRomaneioDesconto.FieldByName('prDesconto').Value := 0;
          cdsRomaneioDesconto.FieldByName('qtDesconto').Value := 0;
          DBEprMedido.SetFocus;
        end
        else
        begin
          //verifica antes se o desconto que está sendo aplicado é menor que o saldo liquido do produto
          if FieldByName('qtDesconto').Value > cdsPadrao.FieldByName('qtProdLiquido').Value then
          begin
            messagedlg('Valor de desconto acima do saldo líquido do produto!', mtwarning, [mbok], 0);
            cdsRomaneioDesconto.FieldByName('prDesconto').Value := 0;
            cdsRomaneioDesconto.FieldByName('qtDesconto').Value := 0;
            DBEprMedido.SetFocus;
            exit;
          end;

          cdsRomaneioDesconto.FieldByName('prDesconto').Value := FieldByName('prDesconto').Value;
          cdsRomaneioDesconto.FieldByName('qtDesconto').Value := FieldByName('qtDesconto').Value;
        end;
      end;//fim do if Proc = 'spRetDescRomaneio' then
    Active := false;
    CommandText := '';
  end;

end;

procedure TFrmCadRomaneio.actAbertosExecute(Sender: TObject);
begin
  inherited;
  FindRomAtivo.ShowModal;
end;

procedure TFrmCadRomaneio.actFecharExecute(Sender: TObject);
begin
  inherited;
  fecha := false;
end;

procedure TFrmCadRomaneio.actFinalizarExecute(Sender: TObject);
begin
  inherited;
  if Funcao.ExecutaProc(dmPadrao.dbConexao, cdsProc, [DBEidEmpresa, DBEidCadEmpresa, DBEidRomaneio], 'spFinalizaRomaneio') then
  begin
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('stRomaneio').AsString := 'FINALIZADO';
    actSalvar.Execute;
    DBEidRomaneioExit(DBEidRomaneio);
 end;
end;

procedure TFrmCadRomaneio.actNfTransitoExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesNfETransito, FrmPesNfETransito);
  FrmPesNfETransito.Show;
end;

procedure TFrmCadRomaneio.actNovoExecute(Sender: TObject);
var
sql : string;
begin
  inherited;
  // Auto - Incremento ==================================================================
  sql := 'SELECT MAX(idRomaneio) AS idRomaneio FROM Romaneio ';
  With FrmPrincipal.ExecutaSQLRet([],'',sql) do
  begin
  if (cdsPadrao.State in [dsInsert]) then
    cdsPadrao.FieldByName('idRomaneio').AsInteger :=  (FieldByName('idRomaneio').AsInteger + 1);
  end;
  //=====================================================================================
end;

procedure TFrmCadRomaneio.actPesarExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(FocoPeso) then
    exit;
  // Fecha comnunicaçao com a porta serial...
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
  FocoPeso.ReadOnly := false;
  if FocoPeso.Name = 'DBEqtPesoBruto' then
    FocoPeso.Text := peso;
  if FocoPeso.Name = 'DBEqtPesoTara' then
    FocoPeso.Text := peso;
  FocoPeso.ReadOnly := true;    
  FocoPeso.SetFocus;
end;

procedure TFrmCadRomaneio.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmPesRomaneio, FrmPesRomaneio);
  FrmPesRomaneio.ShowModal;
  with cdsPadrao do
  begin
    if not (FrmPesRomaneio.cdsGrid.IsEmpty) then
    begin
      if not (State in [dsEdit, dsInsert]) then
        Edit;
      FieldByName('idEmpresa').Value := FrmPesRomaneio.cdsPadrao.FieldByName('idEmpresa').Value;
      FieldByName('idCadEmpresa').Value := FrmPesRomaneio.cdsPadrao.FieldByName('idCadEmpresa').Value;
      FieldByName('idRomaneio').Value := FrmPesRomaneio.cdsGrid.FieldByName('idRomaneio').Value;
      DBEidRomaneioExit(DBEidRomaneio);
      DBEidRomaneio.SetFocus;
    end;
  end;
end;

procedure TFrmCadRomaneio.actPrnClassificacaoExecute(Sender: TObject);
var
sql , rel: string;
begin
  cdsClassificar.Active := false;
  sql := 'EXEC spRelClassificar ' + DBEidEmpresa.Text +
         ', ' + DBEidCadEmpresa.Text+ ', ' +
         DBEidRomaneio.Text;

  cdsClassificar.CommandText := sql;
  cdsClassificar.Active := true;
  if messagedlg('Deseja realizar uma Impressão Matricial ?', mtConfirmation, [mbYes,mbNo],0) = mrYes then
     rel := 'RelClassificarMat.fr3'
     else
       rel := 'RelClassificar.fr3';

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + rel);
  frxRel.ShowReport;

end;

procedure TFrmCadRomaneio.actPrnRomaneioExecute(Sender: TObject);
var
sql , rel: string;
begin
  cdsRelatorio.Active := false;
  sql := 'SELECT * FROM vImpRomaneio WHERE idEmpresa = ' + DBEidEmpresa.Text +
         ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text+ ' AND idRomaneio = ' +
         DBEidRomaneio.Text;

  cdsRelatorio.CommandText := sql;
  cdsRelatorio.Active := true;
  if messagedlg('Deseja realizar uma Impressão Matricial ?', mtConfirmation, [mbYes,mbNo],0) = mrYes then
     rel := 'RelRomaneioMat.fr3'
     else
       rel := 'RelRomaneio.fr3';

  frxRel.LoadFromFile(dmPadrao.RetornaConfig('caminho_rel') + rel);
  frxRel.ShowReport;
end;

procedure TFrmCadRomaneio.actSalvarExecute(Sender: TObject);
var
  sql : string;
begin
  //Cancela o registro que pode estar perdido
  if cdsRomaneioDesconto.State in [dsInsert] then
    cdsRomaneioDesconto.Cancel;
  if (cdsPadrao.State in [dsInsert]) and (UsaDesconto) then
  begin
    //Busca os dados da tabela de Descontos // para inserir os pré cadastrados na tabela de configuração
    if cdsRomaneioDesconto.IsEmpty then
    begin
      sql := 'SELECT DISTINCT ct.idCadDesconto FROM CadDescontoTab ct, CadDesconto cd '+
             ' WHERE ct.idCadDesconto = cd.idCadDesconto ' +
             ' AND cd.ImpObrigatoria = '+ QuotedStr('S') +
             ' AND ct.idProduto = ' + DBEidProduto.Text;

      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        First;
        if not cdsRomaneioDesconto.Active then
          cdsRomaneioDesconto.Active := true;
        while not eof do
        begin
          cdsRomaneioDesconto.Append;
          cdsRomaneioDesconto.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
          cdsRomaneioDesconto.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
          cdsRomaneioDesconto.FieldByName('idRomaneio').AsString := DBEidRomaneio.Text;
          cdsRomaneioDesconto.FieldByName('idCadDesconto').AsString := FieldByName('idCadDesconto').AsString;
          cdsRomaneioDesconto.FieldByName('prMedido').Value := 0;
          cdsRomaneioDesconto.FieldByName('prDesconto').Value := 0;
          cdsRomaneioDesconto.FieldByName('qtDesconto').Value := 0;
          cdsRomaneioDesconto.Post;
          Next;
        end; //fim do while not eof do
      end; //fim do with cdsConfigRomDesc do
    end;// fim do if cdsRomaneioDesconto.IsEmpty then
  end;

  //Grava o código da empresa, se o mesmo estiver vazio
  if trim(cdsPadrao.FieldByName('idEmpresa').AsString) = '' then
    cdsPadrao.FieldByName('idEmpresa').AsString := cdsEmpresa.FieldByName('idEmpresa').AsString;
  if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
    cdsPadrao.FieldByName('idCadEmpresa').AsString := cdsEmpresa.FieldByName('idCadEmpresa').AsString;

  //Busca o código através da procedure spRetCodRomaneio
  if (trim(DBEidRomaneio.Text) = '') and (cdsPadrao.State = dsInsert) then
    ExecutaProc('spRetCodRomaneio');

  //verifica se o romaneio já foi pesado e deixa ele na situação de Liberado para lançar os descontos
  if (cdsPadrao.FieldByName('qtPesoBruto').Value > 0) and (cdsPadrao.FieldByName('qtPesoTara').Value > 0) then
    if cdsPadrao.FieldByName('stRomaneio').AsString = 'ATIVO' then
      cdsPadrao.FieldByName('stRomaneio').AsString := 'LIBERADO';

  //Atribui os valores padrões -- ou seja 0 onde está nulo
  if (cdsPadrao.FieldByName('qtPesoLiquido').IsNull)  then
     cdsPadrao.FieldByName('qtPesoLiquido').Value := 0;
  if (cdsPadrao.FieldByName('qtPesoBruto').IsNull)  then
     cdsPadrao.FieldByName('qtPesoBruto').Value := 0;
  if (cdsPadrao.FieldByName('qtPesoTara').IsNull)  then
     cdsPadrao.FieldByName('qtPesoTara').Value := 0;
  if (cdsPadrao.FieldByName('qtProdBruto').IsNull)  then
     cdsPadrao.FieldByName('qtProdBruto').Value := 0;
  if (cdsPadrao.FieldByName('qtProdDesconto').IsNull)  then
     cdsPadrao.FieldByName('qtProdDesconto').Value := 0;
  if (cdsPadrao.FieldByName('qtProdLiquido').IsNull)  then
     cdsPadrao.FieldByName('qtProdLiquido').Value := 0;

  cdsPadrao.FieldByName('Placa').AsString := trim(cdsPadrao.FieldByName('Placa').AsString);

  if cdsNfETransito.Active then //se estiver ativa significa que foi aberta e gerada
    if cdsNfETransito.State in [dsEdit, dsInsert] then
    begin
      cdsNfETransito.Post;
    end;
  cdsNfETransito.ApplyUpdates(0);

  if cdsNf.Active then //se estiver ativa significa que foi aberta e gerada
    if cdsNf.State in [dsEdit, dsInsert] then
    begin
      cdsNf.Post;
      cdsNf.ApplyUpdates(0);
    end;
  GravaChave(1, '', nil);

  inherited;

  DBEidRomaneioExit(DBEidRomaneio);
end;

procedure TFrmCadRomaneio.AtualizaLookups;
var
  sql : string;
begin
  inherited;
  sql := 'SELECT ' + QuotedStr('Nr.: ') + ' + nrContratoArm + '  + QuotedStr(' - ') + ' + descContratoArm FROM ContratoArm ';
  //faz o tratamento do lookup do contrato se houver
  if trim(cdsPadrao.FieldByName('idCliente').AsString) <> '' then
    sql := sql + ' WHERE idCadGeral = ' + cdsPadrao.FieldByName('idCliente').AsString +
           ' AND idContratoArm = ?'
  else
    sql := sql + ' WHERE 1 = 2 AND idContratoArm = ?';

  LookContrato.AlternateSQL.Clear;
  LookContrato.AlternateSQL.Add(sql);
end;
procedure TFrmCadRomaneio.BalancaLePeso(Peso: Double; Resposta: string);
begin
   //
   If (CopiarStr) Then
      Begin
        //
        Try
          //
          edPeso.Value := StrToFloat(Copy(Resposta, posIni, tamString));
          //
        Except
          //
        End;
        //
      End
   Else
      edPeso.Value := Peso;
   //
end;

procedure TFrmCadRomaneio.BtnCancelarDescMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inherited;
  fecha := false;
end;

procedure TFrmCadRomaneio.BtnCancelarMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inherited;
  fecha := false;
end;

procedure TFrmCadRomaneio.BtnFecharMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inherited;
  fecha := false;
  if ( ((trim(DBEidRomaneio.text)) = '') AND (cdsPadrao.State in [dsInsert])) then
    CdsPadrao.Cancel;
end;

procedure TFrmCadRomaneio.BtnSalvarDescClick(Sender: TObject);
var
  qtDesconto : Double;
begin
  inherited;
  if (trim(DBEidCadDesconto.Text) = '') and ((Sender as TCBitBtn).Name = 'BtnSalvarDesc') then
  begin
    messagedlg('Você não selecionou o Tipo de Desconto!', mtwarning, [mbok], 0);
    exit;
  end;
  if (trim(DBEprMedido.Text) = '') then
  begin
    cdsRomaneioDesconto.FieldByName('prDesconto').Value := 0;
    cdsRomaneioDesconto.FieldByName('qtDesconto').Value := 0;
    cdsRomaneioDesconto.FieldByName('prMedido').Value := 0;
  end;
  funcao.GravaSec(chave, cdsRomaneioDesconto, BtnSalvarDesc, BtnCancelarDesc, BtnExcluirDesc, BtnNovoDesc, (Sender as TCBitBtn), '');
  DBEidCadDesconto.SetFocus;
  //Refaz o cálculo dos descontos
  if ((Sender as TCBitBtn).Name = 'BtnSalvarDesc') or ((Sender as TCBitBtn).Name = 'BtnExcluirDesc') then
  begin
    qtDesconto := 0;
    With cdsRomaneioDesconto do
    begin
      first;
      while not eof do
      begin
        qtDesconto := qtDesconto + FieldByName('qtDesconto').Value;
        next;
      end;
      if not (cdsPadrao.State in [dsInsert, dsEdit]) then
        cdsPadrao.Edit;
      cdsPadrao.FieldByName('qtProdDesconto').Value := qtDesconto;
      cdsPadrao.FieldByName('qtProdLiquido').Value := funcao.ArrendDecimal(cdsPadrao.FieldByName('qtProdBruto').Value - qtDesconto);
    end;
    //abre para um novo
    BtnNovoDesc.Click;
  end; //fim do recálculo dos descontos
end;

procedure TFrmCadRomaneio.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  //Rotina para inicializar o tipo do Romaneio
  if (Dataset.Name = 'cdsPadrao') and (DataSet.State = dsInsert) then
  begin
    cdsPadrao.FieldByName('tpRomaneio').AsString := 'DEPOSITO';
  end;

end;

procedure TFrmCadRomaneio.cdsPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AtualizaLookups;
{  AbreNota;}
end;

procedure TFrmCadRomaneio.cdsRomaneioDescontoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;
end;

procedure TFrmCadRomaneio.ConfiguraRomaneio;
begin
  //Busca as Configurações para o Romaneio
  if (trim(DBEidRomaneio.Text) = '') or  (DBRtpRomaneio.ItemIndex < 0) then
  begin
    UsaNotaFiscal := false;
    UsaDesconto := false;
  end
  else
  with cdsConfigRomaneio do
  begin
    Active := false;
    CommandText := 'SELECT * FROM ConfigRomaneio WHERE idEmpresa = ' + DBEidEmpresa.Text +
                   ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text + ' AND tpRomaneio = ' +
                   QuotedStr(DBRtpRomaneio.Values.Strings[DBRtpRomaneio.itemindex]);
    Active := true;
    //Verifica se Usa Talhao
    if cdsPadrao.FieldByName('stRomaneio').AsString <> 'FINALIZADO' then
    begin
      funcao.SomenteLeitura([DBEidResultado], FieldByName('UsaTalhao').AsString = 'N');
      //Verifica se Usa Contrato
      funcao.SomenteLeitura([DBEidContratoArm], FieldByName('UsaContrato').AsString = 'N');
      //Atribui se usa nota
      UsaNotaFiscal := FieldByName('UsaNota').AsString = 'S';
      UsaDesconto := FieldByName('UsaDesconto').AsString = 'S';
    end
    else
    begin
      UsaNotaFiscal := True;
      UsaDesconto := True;
    end;
 //    TabDescontos.Visible := FieldByName('UsaDesconto').AsString = 'S'
  end;
  with cdsConfigArmazem do
  begin
    Active := false;
    CommandText := 'SELECT * FROM ConfigArmazem WHERE idEmpresa = ' + DBEidEmpresa.Text +
                   ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text;
    Active := true;
    if cdsPadrao.State in [dsInsert, dsEdit] then
      cdsPadrao.FieldByName('idProdDeposito').Value := FieldByName('idProdDeposito').Value;
    PesagemManual := FieldByName('PesagemManual').Value = 'S';
  end;
  HabilitaBotoes;
end;

procedure TFrmCadRomaneio.DBEdtRomaneioExit(Sender: TObject);
begin
  inherited;
 if trim(DBEidProduto.Text) <> '' then
  begin
    cdsNfETransito.Active := false;
    cdsNfETransito.CommandText := 'SELECT * FROM NfETransito '
                                 +' WHERE idEmpresa = '+ DBEidEmpresa.Text
                                + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text
                                + ' AND idFornecedor = ' + DBEidCliente.Text
                                + ' AND idCadFornecedor = ' + DBEidCadCliente.Text
                                + ' AND idRomaneio IS NULL ' ;
    cdsNfETransito.Active := true;
    if cdsNfETransito.RecordCount > 0 then
    begin
      cdsNfETransito.Edit;
      cdsNfETransito.FieldByName('idRomaneio').AsString := trim(DBEidRomaneio.Text);
      cdsNfeTransito.Post;
    end;
  end;

end;

procedure TFrmCadRomaneio.DBEidBemEnter(Sender: TObject);
begin
  inherited;
  fecha := true;
end;

procedure TFrmCadRomaneio.DBEidCadDescontoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsRomaneioDesconto, [DBEidCadDesconto]);
end;

procedure TFrmCadRomaneio.DBEidCadEmpresaMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inherited;
  fecha := false;
end;

procedure TFrmCadRomaneio.DBEidClienteExit(Sender: TObject);
begin
  inherited;
  AtualizaLookups;
end;

procedure TFrmCadRomaneio.DBEidClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
  begin
    Application.CreateForm(TFrmPesClienteFiscal, FrmPesClienteFiscal);
    FrmPesClienteFiscal.ShowModal;
    with (Formulario.FindComponent('cdsPadrao') as TClientDataset) do
    begin
      if not (FrmPesClienteFiscal.cdsGrid.IsEmpty) then
      begin
        if not (State in [dsEdit, dsInsert]) then
          Edit;
        FieldByName('idCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCliente').Value;
        FieldByName('idCadCliente').Value := FrmPesClienteFiscal.cdsGrid.FieldByName('idCadCliente').Value;
        (Formulario.FindComponent('DBEidCadCliente') as TCustomEdit).SetFocus;
      end;
    end;
  end; // fim do VK_F4
end;

procedure TFrmCadRomaneio.DBEidContratoArmKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
  begin
    if (trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'DEPOSITO') then
    begin
       FindContrato.JoinClause.Text := 'WHERE idCadGeral = [DBEidCliente] AND stContratoArm =' + quotedstr('ATIVO')+
                                 ' AND tpContratoArm = ' + quotedstr('ENTRADA');
    end
    else
      if (trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'RETIRADA') then
      begin
         FindContrato.JoinClause.Text := 'WHERE idCadGeral = [DBEidCliente] AND stContratoArm =' + quotedstr('ATIVO')+
                                 ' AND tpContratoArm = ' + quotedstr('SAIDA');
      end
      else
        begin
          FindContrato.JoinClause.Text := 'WHERE idCadGeral = [DBEidCliente] AND stContratoArm =' + quotedstr('ATIVO');
        end;
    end;
    DBEidContratoArm.Find := FindContrato;
end;

procedure TFrmCadRomaneio.DBEidRomaneioExit(Sender: TObject);
begin
  //libera os campos
 if ((trim(DBEidRomaneio.text)) <> '') then
 begin
   funcao.SomenteLeitura([DBEidCliente, DBEidMotorista, DBEidProduto, DBEidProdDeposito,DBEidBem, DBEidSafra, DBEPlaca,DBEdescVeiculo,
                           DBEidResultado, DBEidContratoArm, DBEqtPesoBruto, DBEqtPesoTara, DBEdtRomaneio], false);
 end
 else
   begin
     cdsPadrao.CancelUpdates;
   end;

  inherited;
  BuscaChave(tabelas[0], chave);
  actPrnClassificacao.Enabled := true;  
  //bloqueia o tipo do romaneio pois ele não pode mais ser mudado depois
  //que fora efetuada a primeira pesagem
  if not (cdsPadrao.State = dsInsert) then
  begin
    cdsPadrao.FieldByName('tpRomaneio').ReadOnly := true;
    DefinePesagem;
    if ( (cdsPadrao.FieldByName('stRomaneio').AsString = 'ATIVO') AND (PagAbas.ActivePageIndex = 0) )then
      DBEqtPesoTara.SetFocus;
  end
  else
  begin
    //se não está consultando é pq está inserindo
    cdsPadrao.FieldByName('tpRomaneio').ReadOnly := false;
    cdsPadrao.FieldByName('dtRomaneio').AsDateTime := date;
    actPrnClassificacao.Enabled := false;    
  end;

  HabilitaBotoes;
  AbreTabSecundaria;
  //busca nf transito
  //
  If (Trim(DBEidRomaneio.Text) <> '') Then
     Begin
       //
       cdsNfETransito.Active := false;
       cdsNfETransito.CommandText := 'SELECT * FROM NfETransito '
                                   + ' WHERE idEmpresa = '+ DBEidEmpresa.Text
                                   + ' AND idCadEmpresa = ' + DBEidCadEmpresa.Text
                                   + ' AND idRomaneio = ' + DBEidRomaneio.Text;
       cdsNfETransito.Active := true;
       //
       if cdsNfETransito.RecordCount > 0 then
          BtnNfETransito.Enabled := false
       else
          BtnNfETransito.Enabled :=true;
       //
     End;
  //
  ConfiguraRomaneio;
end;

procedure TFrmCadRomaneio.DBEidRomaneioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
    actPesquisar.Execute
  else
    if key = VK_F5 then
      FindRomAtivo.ShowModal
    else
      if key = VK_F6 then
        actNfTransito.Execute;
end;

procedure TFrmCadRomaneio.DBEPlacaExit(Sender: TObject);
var
Placa, sql :string;
begin
  inherited;
  if ( ((trim(DBEPlaca.Text)) = '' ) AND (fecha = true)) then
  begin
    messagedlg('Informe a Placa do Veiculo ! ',mtInformation, [mbOK],0);
    DBEPlaca.SetFocus;
    exit;
  end
  else
  begin //se existe verifica se já existe cadastro
    Placa := trim(cdsPadrao.FieldByName('Placa').AsString);
    if not (cdsPadrao.State in [dsInsert, dsEdit]) then
      cdsPadrao.Edit;

    sql := 'SELECT * FROM Romaneio WHERE LTRIM(RTRIM(REPLACE((REPLACE((Placa),'+ quotedstr('-') + ',' + quotedstr('') + ' )),' + quotedstr(' ')+','+quotedstr('')+'))) = LTRIM(RTRIM(REPLACE((REPLACE(('
           + quotedstr(cdsPadrao.FieldByName('Placa').AsString)+'),' + quotedstr('-') + ',' + quotedstr('') + ' )),' + quotedstr(' ')+','+quotedstr('')+')))';
    with frmPrincipal.ExecutaSQLRet([DBEPlaca], '', sql) do
    if ((FieldByName('idMotorista').AsInteger > 0 ) AND ( (trim(FieldByName('descVeiculo').AsString)) <> '')) then
    begin
      cdsPadrao.FieldByName('Placa').AsString := trim(Placa);
      cdsPadrao.FieldByName('descVeiculo').AsString := FieldByName('descVeiculo').AsString;
      cdsPadrao.FieldByName('idMotorista').AsInteger := FieldByName('idMotorista').AsInteger;
      DBEidProduto.SetFocus;
    end
    else
    cdsPadrao.FieldByName('Placa').AsString := trim(Placa);
    DBEdescVeiculo.SetFocus;
  end;

  if not (cdsPadrao.State in [dsInsert, dsEdit]) then
    cdsPadrao.Edit;

  cdsPadrao.FieldByName('Placa').AsString := trim(Placa);
end;

procedure TFrmCadRomaneio.DBEprMedidoExit(Sender: TObject);
begin
  inherited;
 if fecha then
 begin
  if (trim(DBEidCadDesconto.Text) <> '') and (trim(DBEprMedido.Text) <> '') then
    if StrToFloat(DBEprMedido.Text) = 0 then
    begin
      cdsRomaneioDesconto.FieldByName('prDesconto').Value := 0;
      cdsRomaneioDesconto.FieldByName('qtDesconto').Value := 0;
    end
    else
    begin
      if not (cdsRomaneioDesconto.State in [dsEdit, dsInsert]) then
        cdsRomaneioDesconto.Edit;
      ExecutaProc('spRetDescRomaneio');
    end;
 end;
end;

procedure TFrmCadRomaneio.DBEqtPesoBrutoExit(Sender: TObject);
begin
  inherited;
  if ((cdsPadrao.FieldByName('qtPesoTara').Value > cdsPadrao.FieldByName('qtPesoBruto').Value ))
      and (cdsPadrao.FieldByName('tpRomaneio').AsString <> 'RETIRADA') then
  begin
    messagedlg(' Erro ao informar a pesagem ! Verifique se o Peso Bruto é maior que a Tara !', mtInformation, [mbOk], 0);
    DBEqtPesoTara.setfocus;
    exit;

  end;
  
  //preenche o peso liquido e o peso bruto de produtos
  if (cdsPadrao.FieldByName('qtPesoBruto').Value > 0) and (cdsPadrao.FieldByName('qtPesoTara').Value > 0) then
    if cdsPadrao.State in [dsEdit, dsInsert] then
    begin
      cdsPadrao.FieldByName('qtPesoLiquido').Value := funcao.ArrendDecimal(cdsPadrao.FieldByName('qtPesoBruto').Value - cdsPadrao.FieldByName('qtPesoTara').Value);
      if cdsPadrao.FieldByName('qtPesoLiquido').Value < 0 then
        cdsPadrao.FieldByName('qtPesoLiquido').Value := cdsPadrao.FieldByName('qtPesoLiquido').Value *-1; //para não ficar negativo nunca

      cdsPadrao.FieldByName('qtProdBruto').Value := funcao.ArrendDecimal(cdsPadrao.FieldByName('qtPesoLiquido').Value);
      cdsPadrao.FieldByName('qtProdLiquido').Value := funcao.ArrendDecimal(cdsPadrao.FieldByName('qtProdBruto').Value - cdsPadrao.FieldByName('qtProdDesconto').Value);
    end;
  if not BtnPesar.Focused then
    BtnPesar.Enabled := false;
end;

procedure TFrmCadRomaneio.DBEqtPesoBrutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_F9) and (BtnPesar.Enabled) then
    actPesar.Execute;
end;

procedure TFrmCadRomaneio.DBEqtPesoTaraEnter(Sender: TObject);
begin
  inherited;
  if not PesagemManual then
  begin
    BtnPesar.Enabled := true;
    lblLendo.Visible := true;
    lblPeso.Visible := true;
  end;
  if BtnPesar.Enabled then  
    FocoPeso := (Sender as TCustomEdit);    
end;

procedure TFrmCadRomaneio.DBRtpRomaneioChange(Sender: TObject);
begin
  inherited;
  DefinePesagem;
end;

procedure TFrmCadRomaneio.DBRtpRomaneioExit(Sender: TObject);
begin
  inherited;
  ConfiguraRomaneio;
end;

procedure TFrmCadRomaneio.DefinePesagem;
begin
  if (cdsPadrao.FieldByName('stRomaneio').AsString = 'ATIVO') then
  begin
    //quando o comando abaixo estiver falso significa que está inserindo
    if cdsPadrao.FieldByName('tpRomaneio').ReadOnly then
    begin
      //inicia o tratamento para definir qual a pesagem a ser efetuada agora
//      if trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'DEPOSITO' then
      if DBRtpRomaneio.ItemIndex = 0 then

      begin
        funcao.SomenteLeitura([DBEqtPesoBruto], true);
        funcao.SomenteLeitura([DBEqtPesoTara], false);
        if not PesagemManual then
          DBEqtPesoTara.ReadOnly := true; //somente readonly para que ele ainda fique branco
      end
      else
        if DBRtpRomaneio.ItemIndex = 1 then
//        if trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'RETIRADA' then
        begin
          funcao.SomenteLeitura([DBEqtPesoBruto], false);
          funcao.SomenteLeitura([DBEqtPesoTara], true);
          if not PesagemManual then
            DBEqtPesoBruto.ReadOnly := true;
        end
        else
          if DBRtpRomaneio.ItemIndex = 2 then
//          if trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'AVULSA' then
          begin
            funcao.SomenteLeitura([DBEqtPesoBruto, DBEqtPesoTara], false);
            if not PesagemManual then
            begin
              DBEqtPesoBruto.ReadOnly := true;
              DBEqtPesoTara.ReadOnly := true;
            end;

          end;
    end //fim do if cdsPadrao.FieldByName('tpRomaneio').ReadOnly then
    else
    begin
      if DBRtpRomaneio.ItemIndex = 0 then
//      if trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'DEPOSITO' then
      begin
        funcao.SomenteLeitura([DBEqtPesoBruto], false);
        funcao.SomenteLeitura([DBEqtPesoTara], true);
        if not PesagemManual then
          DBEqtPesoBruto.ReadOnly := true; //somente readonly para que ele ainda fique branco
      end
      else
        if DBRtpRomaneio.ItemIndex = 1 then
//        if trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'RETIRADA' then
        begin
          funcao.SomenteLeitura([DBEqtPesoBruto], true);
          funcao.SomenteLeitura([DBEqtPesoTara], false);
          if not PesagemManual then
            DBEqtPesoTara.ReadOnly := true; //somente readonly para que ele ainda fique branco
        end
        else
          if DBRtpRomaneio.ItemIndex = 2 then
//          if trim(cdsPadrao.FieldByName('tpRomaneio').AsString) = 'AVULSA' then
          begin
            funcao.SomenteLeitura([DBEqtPesoBruto, DBEqtPesoTara], false);
            if not PesagemManual then
            begin
              DBEqtPesoBruto.ReadOnly := true;
              DBEqtPesoTara.ReadOnly := true;
            end;
          end;
    end; //fim do else do if cdsPadrao.FieldByName('tpRomaneio').ReadOnly then
  end; //fim do if (cdsPadrao.FieldByName('stRomaneio').AsString = 'ATIVO') then
  if (cdsPadrao.FieldByName('stRomaneio').AsString = 'LIBERADO') then
    funcao.SomenteLeitura([DBEqtPesoBruto, DBEqtPesoTara], true);
  if (cdsPadrao.FieldByName('stRomaneio').AsString = 'FINALIZADO') OR (cdsPadrao.FieldByName('stRomaneio').AsString = 'CANCELADO') then
    //caso o status não seja ativo ou liberado bloqueia todos os campos
    funcao.SomenteLeitura([DBEidCliente, DBEidMotorista, DBEidProduto, DBEidProdDeposito,DBEidBem, DBEidSafra, DBEPlaca,DBEdescVeiculo,
                           DBEidResultado, DBEidContratoArm, DBEqtPesoBruto, DBEqtPesoTara, DBEdtRomaneio], true);
end;

procedure TFrmCadRomaneio.dsPadraoStateChange(Sender: TObject);
begin
  inherited;
  BtnExcluir.Enabled := cdsPadrao.State = dsBrowse;
end;

procedure TFrmCadRomaneio.dspRomaneioDescontoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if DeltaDS.State in [dsEdit, dsInsert] then
    GravaChaveSec(DeltaDS, chave);
{  if (UpdateKind = ukInsert) then
  begin
    if (Sender as TDataSetProvider).Name = 'dspPadrao' then
      GeraAutoInc(DeltaDS, 'Romaneio', 'idRomaneio', chave);
  end;}
end;

procedure TFrmCadRomaneio.dsRomaneioDescontoStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarDesc, BtnCancelarDesc, BtnExcluirDesc, BtnNovoDesc);
end;

procedure TFrmCadRomaneio.FindRomAtivoClose(Sender: TObject);
begin
  inherited;
  if (trim(FindRomAtivo.Value) <> '')  then
  begin
    if not (cdsPadrao.State in [dsEdit, dsInsert]) then
      cdsPadrao.Edit;
    cdsPadrao.FieldByName('idRomaneio').AsString := FindRomAtivo.Value;
    DBEidRomaneioExit(DBEidRomaneio);
  end;
end;

procedure TFrmCadRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //
  If (Balanca.Ativo) Then
     Balanca.Desativar;
  //
  frmCadRomaneio := nil;
  //
end;

procedure TFrmCadRomaneio.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 3);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsRomaneioDesconto;
  Tabelas[2] := cdsNfETransito;

  SetLength(Chave, 3);
  chave[0] := DBEidEmpresa;
  chave[1] := DBEidCadEmpresa;
  chave[2] := DBEidRomaneio;
  foco := DBEidRomaneio;
  tab_chave := 'Romaneio';
  situacao := 'stRomaneio';
  situacaoA := 'ATIVO';
  situacaoX := 'CANCELADO';
  fecha := true;

  //pega o sql inicial da nota
end;

procedure TFrmCadRomaneio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_F5) and actAbertos.Enabled then
    actAbertos.Execute;
end;

procedure TFrmCadRomaneio.FormShow(Sender: TObject);
var sql : string;
begin
  inherited;
  //
  Width := 717;
  Height := 527;
  //
  ConfiguraRomaneio;
  //
  If Not(PesagemManual) Then
     If funcao.ConfigIni('BALANCA', 'UsaBalanca', '', 1) = 'S' Then
        Begin
          //
          Balanca.Modelo           := TACBrBALModelo( 2 );
          Balanca.Device.HandShake := TACBrHandShake( StrToInt(funcao.ConfigIni('BALANCA', 'HandShaking', '0', 1)) );
          Balanca.Device.Parity    := TACBrSerialParity( StrToInt(funcao.ConfigIni('BALANCA', 'Parity', '0', 1)) );
          Balanca.Device.Stop      := TACBrSerialStop( StrToInt(funcao.ConfigIni('BALANCA', 'StopBits', '2', 1)) );
          Balanca.Device.Data      := StrToInt( funcao.ConfigIni('BALANCA', 'DataBits', '8', 1) );
          Balanca.Device.Baud      := StrToInt( funcao.ConfigIni('BALANCA', 'Velocidade', '9600', 1) );
          Balanca.Device.Porta     := funcao.ConfigIni('BALANCA', 'Porta', 'COM1', 1);
          //
          CopiarStr := IIf(funcao.ConfigIni('BALANCA', 'CopiarString', 'N', 1) = 'S', True, False);
          posIni    := StrToInt( funcao.ConfigIni('BALANCA', 'PosInicial', '0', 1) );
          tamString := StrToInt( funcao.ConfigIni('BALANCA', 'QtdadeCar', '0', 1) );
          //
          Try
            //
            Balanca.Ativar;
            //
          Except
            On E: Exception Do
               Begin
                 //
                 Messagedlg('Erro ao conectar-se com a balança !' + #13+#10 + E.Message, mterror, [mbok], 0);
                 Exit;
                 //
               End;
          End;
          //
        End;
  // Auto - Incremento ==================================================================
  sql := 'SELECT MAX(idRomaneio) AS idRomaneio FROM Romaneio ';
  With FrmPrincipal.ExecutaSQLRet([],'',sql) do
  begin
  if (cdsPadrao.State in [dsInsert]) then
    cdsPadrao.FieldByName('idRomaneio').AsInteger :=  (FieldByName('idRomaneio').AsInteger + 1);
  end;
  //=====================================================================================
end;

procedure TFrmCadRomaneio.HabilitaBotoes;
begin
  BtnPesar.Enabled := false;
  BtnFinalizar.Enabled := false;
  BtnImpRomaneio.Enabled := false;
  actExcluir.Enabled := true;

  if cdsPadrao.FieldByName('stRomaneio').AsString = 'LIBERADO' then
    BtnFinalizar.Enabled := true
  else
    if cdsPadrao.FieldByName('stRomaneio').AsString = 'FINALIZADO' then
    begin
      BtnImpRomaneio.Enabled := true;
      actExcluir.Enabled := false;
    end;
end;

procedure TFrmCadRomaneio.PagAbasChange(Sender: TObject);
var
  sql : string;
begin
  inherited;
  if not (cdsPadrao.FieldByName('qtProdBruto').AsFloat > 0) then
  begin
    PagAbas.ActivePageIndex := 0;
    messagedlg('Voce deve primeiro gravar as pesagens!', mtinformation, [mbok], 0);
    exit;
  end;
  if (PagAbas.ActivePageIndex = 1)then
  begin
    if not UsaDesconto then
    begin
      messagedlg('Tipo de Romaneio configurado para não usar descontos!', mtwarning, [mbok], 0);
      exit;
    end;

    //Busca os dados da tabela de Descontos // para inserir os pré cadastrados na tabela de configuração
    if cdsRomaneioDesconto.IsEmpty then
    begin
      sql := 'SELECT DISTINCT ct.idCadDesconto FROM CadDescontoTab ct, CadDesconto cd '+
             ' WHERE ct.idCadDesconto = cd.idCadDesconto ' +
             ' AND cd.ImpObrigatoria = '+ QuotedStr('S') +
             ' AND ct.idProduto = ' + DBEidProduto.Text;

      with frmPrincipal.ExecutaSQLRet([], '', sql) do
      begin
        First;
        if not cdsRomaneioDesconto.Active then
          cdsRomaneioDesconto.Active := true;
        while not eof do
        begin
          cdsRomaneioDesconto.Append;
          cdsRomaneioDesconto.FieldByName('idEmpresa').AsString := DBEidEmpresa.Text;
          cdsRomaneioDesconto.FieldByName('idCadEmpresa').AsString := DBEidCadEmpresa.Text;
          cdsRomaneioDesconto.FieldByName('idRomaneio').AsString := DBEidRomaneio.Text;
          cdsRomaneioDesconto.FieldByName('idCadDesconto').AsString := FieldByName('idCadDesconto').AsString;
          cdsRomaneioDesconto.FieldByName('prMedido').Value := 0;
          cdsRomaneioDesconto.FieldByName('prDesconto').Value := 0;
          cdsRomaneioDesconto.FieldByName('qtDesconto').Value := 0;
          cdsRomaneioDesconto.Post;
          Next;
        end; //fim do while not eof do
      end; //fim do with cdsConfigRomDesc do
    end;// fim do if cdsRomaneioDesconto.IsEmpty then

   if (DBEidCadDesconto.Enabled) then
     DBEidCadDesconto.SetFocus;

  end; // fim do if (PagAbas.ActivePageIndex = 1)then

  if cdsPadrao.State in [dsInsert, dsEdit] then
    fecha := true;

end;

end.
