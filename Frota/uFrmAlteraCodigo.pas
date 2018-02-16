unit uFrmAlteraCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CGroupBox, EditAlign, CEdit, Buttons, CBitBtn, DB,
  DBClient, Provider, CLabel;

type
  TFrmAlteraCodigo = class(TForm)
    Group: TCGroupBox;
    DBEnrNovo: TCEdit;
    BtnAlteraCod: TCBitBtn;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    dsEmpresa: TDataSource;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    lbl1: TCLabel;
    procedure BtnAlteraCodClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tab, key, id, tpForm : string;
    Alterou : Boolean;
  end;

var
  FrmAlteraCodigo: TFrmAlteraCodigo;

implementation

uses uFrmPrincipal, uFuncao, uDmPadrao, uFrmCadMaquina, uFrmCadContratoVenda;

{$R *.dfm}

procedure TFrmAlteraCodigo.BtnAlteraCodClick(Sender: TObject);
var
  sql : string;
begin
  if (DBEnrNovo.Text) = '' then
  begin
    MessageDlg('Favor informar novo codigo para ser alterado!', mtInformation, [mbOK], 0);
    Exit;
  end;
  if tpForm = 'MAQ' then
  begin
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM Maquina WHERE idMaquina = ' + QuotedStr(DBEnrNovo.Text)) do
    if RecordCount > 0 then
    begin
      MessageDlg('Esse codigo ja se encontra em uso, favor selecionar outro!', mtInformation, [mbOK], 0);
      Exit;
    end
    else
    begin
      Screen.Cursor := crSQLWait;
      sql := 'EXEC spAlterField ' + QuotedStr(tab) + ', ' + QuotedStr(key) + ', ' + id + ', ' + DBEnrNovo.Text;
      dmPadrao.dbConexao.ExecuteDirect(sql);
      Alterou := True;
      FrmCadMaquina.DBEidMaquina.SetFocus;
      FrmCadMaquina.id := DBEnrNovo.Text;
      FrmAlteraCodigo.Close;
      Screen.Cursor := crDefault;
    end;
  end;
  if tpForm = 'VEN' then
  begin
    with frmPrincipal.ExecutaSQLRet([], '', 'SELECT * FROM ContratoVenda WHERE idContratoVenda = ' + QuotedStr(DBEnrNovo.Text)) do
    if RecordCount > 0 then
    begin
      MessageDlg('Esse codigo ja se encontra em uso, favor selecionar outro!', mtInformation, [mbOK], 0);
      Exit;
    end
    else
    begin
      Screen.Cursor := crSQLWait;
      sql := 'EXEC spAlterField ' + QuotedStr(tab) + ', ' + QuotedStr(key) + ', ' + id + ', ' + QuotedStr(DBEnrNovo.Text);
      dmPadrao.dbConexao.ExecuteDirect(sql);
      Alterou := True;
      FrmCadContratoVenda.DBEidContratoVenda.SetFocus;
      FrmCadContratoVenda.id := DBEnrNovo.Text;
      FrmAlteraCodigo.Close;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFrmAlteraCodigo.FormShow(Sender: TObject);
begin
  Height := 115;
  Width := 175;
  Alterou := False;
end;

end.
