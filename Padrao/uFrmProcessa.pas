unit uFrmProcessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ExtCtrls, StdCtrls, EditAlign, CEdit, CLabel, Buttons,
  Mask, DBCtrls, CDBEdit, ComCtrls, JvExComCtrls, JvProgressBar, CBitBtn;

type
  TFrmProcessa = class(TForm)
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    Aba: TNotebook;
    BtnOk: TBitBtn;
    CLabel2: TCLabel;
    EDSenha: TCEdit;
    prog: TJvProgressBar;
    DBEdtInicial: TCDBEdit;
    CLabel6: TCLabel;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    CLabel1: TCLabel;
    DBEdtFinal: TCDBEdit;
    BtnProcessar: TCBitBtn;
    CLabel3: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcessa: TFrmProcessa;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmProcessa.BtnOkClick(Sender: TObject);
begin
  if trim(EDSenha.Text) = 'cyber' then
    Aba.PageIndex := 0;
end;

procedure TFrmProcessa.BtnProcessarClick(Sender: TObject);
var
  sql : string;
begin
  with dmPadrao.cdsTmp do
  begin
    Active := false;
    CommandText := 'SELECT * FROM TituloPag WHERE dtEmissao BETWEEN ' + funcao.ConverteData(cdsPadraodtInicial.AsDateTime) +
                   ' AND ' + funcao.ConverteData(cdsPadraodtFinal.AsDateTime);
    Active := True;

    First;
    prog.Position := 0;
    Prog.Max := RecordCount;
    while not Eof do
    begin
      Prog.Position := Prog.Position + 1;
      Application.ProcessMessages;
      FrmProcessa.Refresh;
      sql := 'EXEC spGeraRateioTituloPag ' + FieldByName('idTituloPag').AsString;
      dmPadrao.dbConexao.ExecuteDirect(sql);
      Next;
    end;
  end;
  ShowMessage('Processo Terminado com sucesso');
end;

procedure TFrmProcessa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmProcessa.FormCreate(Sender: TObject);
begin
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
  Height := 300;
  Width := 500;
end;

procedure TFrmProcessa.FormShow(Sender: TObject);
begin
  Aba.PageIndex := 1;
end;

end.
