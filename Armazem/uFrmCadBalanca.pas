unit uFrmCadBalanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CLookUp, CFind, CPanelGradient, CDBComboBox, CMemo, CComboBox,
  ACBrBase, ACBrBAL, cxTextEdit, cxCurrencyEdit, cxControls, cxContainer,
  cxEdit, cxCheckBox;

type
  TfrmCadBalanca = class(TFrmCadPadraoGrid)
    sdsCidade: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidBalanca: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescBalanca: TCDBEdit;
    TabConfig: TTabSheet;
    CLabel2: TCLabel;
    DBEcapacidade: TCDBEdit;
    cdsPais2: TClientDataSet;
    FindBalanca: TCFind;
    CLabel14: TCLabel;
    DBEstBalanca: TCDBEdit;
    CLabel1: TCLabel;
    DBEtamString: TCDBEdit;
    CLabel8: TCLabel;
    DBEposIni: TCDBEdit;
    CLabel10: TCLabel;
    DBEposFim: TCDBEdit;
    CGroupBox3: TCGroupBox;
    CLabel3: TCLabel;
    CGroupBox4: TCGroupBox;
    btnAbrir: TCBitBtn;
    btnParar: TCBitBtn;
    memoBalanca: TCMemo;
    CGroupBox5: TCGroupBox;
    BtnGravaConfig: TCBitBtn;
    actAbrirCom: TAction;
    cmbPortaSerial: TCComboBox;
    actPararCom: TAction;
    actGravaConfig: TAction;
    cmbBaudRate: TCComboBox;
    CLabel4: TCLabel;
    Balanca: TACBrBAL;
    CLabel5: TCLabel;
    cmbDataBits: TCComboBox;
    CLabel6: TCLabel;
    cmbStopBits: TCComboBox;
    CLabel7: TCLabel;
    cmbParity: TCComboBox;
    CLabel9: TCLabel;
    cmbHandShaking: TCComboBox;
    CLabel11: TCLabel;
    CLabel12: TCLabel;
    cbCopiarStr: TcxCheckBox;
    edPosIni: TcxCurrencyEdit;
    edQtdade: TcxCurrencyEdit;
    procedure actGravaConfigExecute(Sender: TObject);
    procedure actPararComExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAbrirComExecute(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
    procedure DBEidBalancaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure BalancaLePeso(Peso: Double; Resposta: string);
    procedure cbCopiarStrPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    lendo, peso : string;    
  public
    { Public declarations }
  end;

var
  frmCadBalanca: TfrmCadBalanca;

implementation

uses uDmPadrao, uFrmCadPadrao, uFuncao;

{$R *.dfm}

procedure TfrmCadBalanca.actAbrirComExecute(Sender: TObject);
begin
  inherited;
  // se houver conecção aberta, Fecha a conecção
  If Balanca.Ativo Then
     Balanca.Desativar;
  // configura porta de comunicação
  Balanca.Device.HandShake := TACBrHandShake( cmbHandShaking.ItemIndex );
  Balanca.Device.Parity    := TACBrSerialParity( cmbParity.ItemIndex );
  Balanca.Device.Stop      := TACBrSerialStop( cmbStopBits.ItemIndex );
  Balanca.Device.Data      := StrToInt( cmbDataBits.text );
  Balanca.Device.Baud      := StrToInt( cmbBaudRate.Text );
  Balanca.Device.Porta     := cmbPortaSerial.Text;
  Balanca.MonitorarBalanca := True;
  // Conecta com a balança
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
  ActAbrirCom.Enabled := False;
  ActPararCom.Enabled := True;
  //
end;

procedure TfrmCadBalanca.actGravaConfigExecute(Sender: TObject);
begin
  inherited;
  //
  funcao.ConfigIni('BALANCA', 'UsaBalanca'  , 'S'                               , 2);
  funcao.ConfigIni('BALANCA', 'Porta'       , CmbPortaSerial.Text               , 2);
  funcao.ConfigIni('BALANCA', 'Velocidade'  , cmbBaudRate.Text                  , 2);
  funcao.ConfigIni('BALANCA', 'DataBits'    , cmbDataBits.Text                  , 2);
  funcao.ConfigIni('BALANCA', 'Parity'      , IntToStr(cmbParity.ItemIndex)     , 2);
  funcao.ConfigIni('BALANCA', 'StopBits'    , IntToStr(cmbStopBits.ItemIndex)   , 2);
  funcao.ConfigIni('BALANCA', 'HandShaking' , IntToStr(cmbHandShaking.ItemIndex), 2);
  funcao.ConfigIni('BALANCA', 'CopiarString', IIf(cbCopiarStr.Checked, 'S', 'N'), 2);
  funcao.ConfigIni('BALANCA', 'PosInicial'  , edPosIni.Text                     , 2);
  funcao.ConfigIni('BALANCA', 'QtdadeCar'   , edQtdade.Text                     , 2);
  //
end;

procedure TfrmCadBalanca.actPararComExecute(Sender: TObject);
begin
  inherited;
  //
  Balanca.Desativar;
  //
  actPararCom.Enabled := False;
  actAbrirCom.Enabled := True;
  //
end;

procedure TfrmCadBalanca.actSalvarExecute(Sender: TObject);
begin
  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadBalanca.BalancaLePeso(Peso: Double; Resposta: string);
begin
  inherited;
  //
  memoBalanca.Lines.Add(Resposta);
  //
end;

procedure TfrmCadBalanca.cbCopiarStrPropertiesChange(Sender: TObject);
begin
  inherited;
  //
  If (tCxCheckBox(Sender).Checked) And
     (memoBalanca.SelLength > 0) Then
     Begin
       //
       edPosIni.Value := memoBalanca.SelStart + 1;
       edQtdade.Value := memoBalanca.SelLength;
       //
     End;
  //
end;

procedure TfrmCadBalanca.DBEidBalancaExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadBalanca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  {RDBalanca.AbortAllIO;
  if RDBalanca.Connected then
    RDBalanca.Close;
  timer1.Enabled := false;
  frmCadBalanca := nil;}
end;

procedure TfrmCadBalanca.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidBalanca;
  foco := DBEidBalanca;
  tab_chave := 'Balanca';
  FindPesquisa := FindBalanca;
  situacao := 'stBalanca';
  situacaoA := 'ATIVO';
end;

procedure TfrmCadBalanca.FormShow(Sender: TObject);
begin
  inherited;
  Width := 522;
  Height := 425;
end;

procedure TfrmCadBalanca.PagAbasChange(Sender: TObject);
begin
  inherited;
  //
  if (PagAbas.ActivePageIndex <> 0) and ((btnSalvar.Enabled) or (DBEstBalanca.Text <> 'ATIVO')) then
     begin
       messagedlg('O cadastro precisa estar salvo e ATIVO, para realizar a configuração/teste!', mtwarning, [mbok], 0);
       PagAbas.ActivePageIndex := 0;
       exit;
     end;
  //
  If PagAbas.ActivePageIndex = 0 Then
     Begin
       //
       If Balanca.Ativo Then
          ActPararCom.Execute;
       //
     End
  Else
     Begin
       //
       memoBalanca.Lines.Clear;
       //
       cmbPortaSerial.Text      :=          funcao.ConfigIni('BALANCA', 'Porta'       , 'COM1',   1);
       cmbBaudRate.Text         :=          funcao.ConfigIni('BALANCA', 'Velocidade'  , '9600',   1);
       cmbDataBits.Text         :=          funcao.ConfigIni('BALANCA', 'DataBits'    , '8',      1);
       cmbParity.ItemIndex      := StrToInt(funcao.ConfigIni('BALANCA', 'Parity'      , '0',      1));
       cmbStopBits.ItemIndex    := StrToInt(funcao.ConfigIni('BALANCA', 'StopBits'    , '2',      1));
       cmbHandShaking.ItemIndex := StrToInt(funcao.ConfigIni('BALANCA', 'HandShaking' , '0',      1));
       //
       cbCopiarStr.Checked      :=          funcao.ConfigIni('BALANCA', 'CopiarString', 'N',      1) = 'S';
       edPosIni.Text            :=          funcao.ConfigIni('BALANCA', 'PosInicial'  , '0',      1);
       edQtdade.Text            :=          funcao.ConfigIni('BALANCA', 'QtdadeCar'   , '0',      1);
       //
     end;
  //
end;

end.
