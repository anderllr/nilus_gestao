unit uFrmRecalcRateio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, Buttons, FMTBcd, DB,
  SqlExpr, Grids, ComCtrls, DBXCommon,
  CBitBtn, CEdit, Provider, DBClient, CLabel, Mask, DBCtrls, CDBEdit, CLookUp,
  CGroupBox, CDBCheckBox;

type
  TFrmRecalcRateio = class(TForm)
    Bevel3: TBevel;
    BtnRecalc: TBitBtn;
    BtnSair: TBitBtn;
    cdsPadrao: TClientDataSet;
    dsPadrao: TDataSource;
    cdsLookUp: TClientDataSet;
    dspLookUp: TDataSetProvider;
    cdsPadraodtInicial: TDateField;
    cdsPadraodtFinal: TDateField;
    cdsPadraoidRateio: TIntegerField;
    cdsPadraoidSafra: TIntegerField;
    cdsPadraoconsolidaemp: TStringField;
    cdsPadraoconsolidafilial: TStringField;
    cdsPadraomovCaixa: TStringField;
    cdsPadraomovConta: TStringField;
    cdsPadraonfe: TStringField;
    cdsPadraoprevisaoPag: TStringField;
    cdsPadraoprevisaoRec: TStringField;
    cdsPadraotituloPag: TStringField;
    cdsPadraotituloRec: TStringField;
    cdsPadraomaqManutencao: TStringField;
    cdsPadraomaqOperacao: TStringField;
    cdsPadraoidEmpresa: TIntegerField;
    cdsPadraoidCadEmpresa: TIntegerField;
    LookdescAbreviada: TCLookUp;
    LookdescCadEmpresa: TCLookUp;
    DBEidCadEmpresa: TCDBEdit;
    DBEidEmpresa: TCDBEdit;
    CLabel2: TCLabel;
    Bevel1: TBevel;
    Bevel5: TBevel;
    CGroupBox1: TCGroupBox;
    CLabel3: TCLabel;
    CLabel4: TCLabel;
    DBEdtInicial: TCDBEdit;
    DBEdtFinal: TCDBEdit;
    LookRateio: TCLookUp;
    DBEidRateio: TCDBEdit;
    CLabel12: TCLabel;
    LookSafra: TCLookUp;
    DBEidSafra: TCDBEdit;
    CLabel23: TCLabel;
    DBCKconsolidafilial: TCDBCheckBox;
    DBCKconsolidaemp: TCDBCheckBox;
    CGroupBox2: TCGroupBox;
    DBCKmovCaixa: TCDBCheckBox;
    DBCKmovConta: TCDBCheckBox;
    DBCKnfe: TCDBCheckBox;
    DBCKprevisaoRec: TCDBCheckBox;
    DBCKprevisaoPag: TCDBCheckBox;
    DBCKtituloRec: TCDBCheckBox;
    DBCKmaqOperacao: TCDBCheckBox;
    DBCKmaqManutencao: TCDBCheckBox;
    DBCKtituloPag: TCDBCheckBox;
    CLabel1: TCLabel;
    CLabel5: TCLabel;
    CLabel6: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecalcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    atualiza, arquivo : TStrings;
    nome, caminho : string;
  end;

var
  FrmRecalcRateio: TFrmRecalcRateio;

implementation

uses uDmPadrao, uFrmPrincipal, uFuncao, uDmFind;

{$R *.dfm}

procedure TFrmRecalcRateio.FormCreate(Sender: TObject);
begin

  Height := 482;
  Width := 616;
end;

procedure TFrmRecalcRateio.FormShow(Sender: TObject);
begin
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
  cdsPadraoidEmpresa.AsString := frmPrincipal.idEmpresa;
  cdsPadraoidCadEmpresa.AsString := frmPrincipal.idCadEmpresa;
  cdsPadraoconsolidaemp.AsString := 'N';
  cdsPadraoconsolidafilial.AsString := 'N';
  cdsPadraomovCaixa.AsString := 'N';
  cdsPadraomovConta.AsString := 'N';
  cdsPadraonfe.AsString := 'N';
  cdsPadraoprevisaoPag.AsString := 'N';
  cdsPadraoprevisaoRec.AsString := 'N';
  cdsPadraotituloPag.AsString := 'N';
  cdsPadraotituloRec.AsString := 'N';
  cdsPadraomaqManutencao.AsString := 'N';
  cdsPadraomaqOperacao.AsString := 'N';
end;

procedure TFrmRecalcRateio.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmRecalcRateio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmRecalcRateio.BtnRecalcClick(Sender: TObject);
var
  msg, sql : string;
  erro : byte;
begin
  msg := '';
  if trim(DBEidSafra.Text) = '' then
    msg := 'Você deve informar a safra!' + #13;

  if trim(DBEidRateio.Text) = '' then
    msg := msg + 'Você deve informar o rateio!' + #13;

  if (cdsPadraomovCaixa.AsString = 'N') and
     (cdsPadraomovConta.AsString = 'N') and
     (cdsPadraonfe.AsString = 'N') and
     (cdsPadraoprevisaoPag.AsString = 'N') and
     (cdsPadraoprevisaoRec.AsString = 'N') and
     (cdsPadraotituloPag.AsString = 'N') and
     (cdsPadraotituloRec.AsString = 'N') and
     (cdsPadraomaqManutencao.AsString = 'N') and
     (cdsPadraomaqOperacao.AsString = 'N') then
     msg := msg + 'Nenhuma opção selecionada!';

  if trim(msg) <> '' then
  begin
    messagedlg(msg, mtwarning, [mbok], 0);
    exit;
  end;

  if messagedlg('Deseja realmente continuar?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    exit;

  screen.Cursor := crSqlWait;
  erro := 0;
  try
    sql := 'EXEC spGeraRateio ' + cdsPadraoidEmpresa.AsString + ', ' +
                                  cdsPadraoidCadEmpresa.AsString + ', ' +
                                  funcao.RetornaValorEField(DBEdtInicial, 3) + ', ' +
                                  funcao.RetornaValorEField(DBEdtFinal, 3) + ', ' +
                                  funcao.RetornaValorEField(DBEidSafra, 3) + ', ' +
                                  funcao.RetornaValorEField(DBEidRateio, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKmovCaixa, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKmovConta, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKnfe, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKprevisaoPag, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKprevisaoRec, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKtituloPag, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKtituloRec, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKmaqManutencao, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKmaqOperacao, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKconsolidaemp, 3) + ', ' +
                                  funcao.RetornaValorEField(DBCKconsolidafilial, 3);
    dmPadrao.dbConexao.ExecuteDirect(sql);
{    funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa, DBEdtInicial, DBEdtFinal,
                       DBEidSafra, DBEidRateio, DBCKmovCaixa, DBCKmovConta, DBCKnfe, DBCKprevisaoPag, DBCKprevisaoRec,
                       DBCKtituloPag, DBCKtituloRec, DBCKmaqManutencao, DBCKmaqOperacao, DBCKconsolidaemp,
                       DBCKconsolidafilial], 'spGeraRateio');}
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], 0);
      erro := 1;
    end;
  end;
  screen.Cursor := crDefault;
  if erro <= 0 then
  begin
    messagedlg('Processo finalizado sem erros!', mtinformation, [mbok], 0);
  end
  else
  begin
    messagedlg('Processo finalizado com erros! Abortado!', mterror,  [mbok], 0);
  end;

end;

end.
