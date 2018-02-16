unit uFrmSelEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CBitBtn, ActnList, ImgList, CFind, CLookUp, Mask,
  DBCtrls, CDBEdit, CLabel, ExtCtrls, CPanelGradient, Provider, DB, DBClient;

type
  TFrmSelEmpresas = class(TForm)
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    imgIcones: TImageList;
    ImgBotoes: TImageList;
    Acao: TActionList;
    actFechar: TAction;
    actExecutar: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    actNovo: TAction;
    actExcluir2: TAction;
    PanBotoes: TCPanelGradient;
    BtnSalvar: TCBitBtn;
    BtnFechar: TCBitBtn;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    cdsPadraoidEmpresa: TIntegerField;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    ActOk: TAction;
    cdsPadraoidCadEmpresa: TIntegerField;
    DBEidCadEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    LookidCnpjCpf: TCLookUp;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cdsPadraoidEmpresaValidate(Sender: TField);
    procedure ConfigLookEmpresa;
    procedure DBEidEmpresaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    filial : boolean;
  end;

var
  FrmSelEmpresas: TFrmSelEmpresas;

implementation

uses uFrmPrincipal, uFrmPesEmpFiscal, uFrmPesEmpContabil;

{$R *.dfm}

procedure TFrmSelEmpresas.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelEmpresas.ActOkExecute(Sender: TObject);
begin
  FrmPrincipal.idEmpresa := DBEidEmpresa.Text;
  FrmPrincipal.idCadEmpresa := DBEidCadEmpresa.Text;
  FrmPrincipal.ConfigBarra;
  Close;
end;

procedure TFrmSelEmpresas.cdsPadraoidEmpresaValidate(Sender: TField);
begin
  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
       cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmSelEmpresas.ConfigLookEmpresa;
begin
  LookdescCadEmpresa.AlternateSQL.Clear;
  LookdescCadEmpresa.AlternateSQL.Add('SELECT descCadEmpresa FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  LookdescAbreviada.AlternateSQL.Clear;
  LookdescAbreviada.AlternateSQL.Add('SELECT descAbreviada FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');
  lookidCnpjCpf.AlternateSQL.Clear;
  lookidCnpjCpf.AlternateSQL.Add('SELECT idCnpjCpf FROM vCadEmpresaFiscal fis WHERE idCadEmpresa IN ' +
                             ' (SELECT DISTINCT idCadEmpresa FROM UsuarioEmpresa usu WHERE fis.idEmpresa = ' +
                             ' usu.idEmpresa AND idUsuario = ' + frmPrincipal.idUsuario + '  AND acessa = ' +
                             QuotedStr('S') + ') AND idEmpresa = ? AND idCadEmpresa = ?');


end;

procedure TFrmSelEmpresas.DBEidEmpresaExit(Sender: TObject);
begin
  if not filial then
  begin
    cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + cdsPadraoidEmpresa.AsString).FieldByName('id').AsString;
    if trim(cdsPadrao.FieldByName('idCadEmpresa').AsString) = '' then
       cdsPadrao.FieldByName('idCadEmpresa').AsInteger := 1;
  end;
end;

procedure TFrmSelEmpresas.DBEidEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F4 then
  begin
    if filial then
    begin
      Application.CreateForm(TFrmPesEmpFiscal, FrmPesEmpFiscal);
      FrmPesEmpFiscal.ShowModal;
      with cdsPadrao do
      begin
        if not (FrmPesEmpFiscal.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idEmpresa').Value;
          FieldByName('idCadEmpresa').Value := FrmPesEmpFiscal.cdsGrid.FieldByName('idCadEmpresa').Value;
          DBEidCadEmpresa.SetFocus;
        end;
      end;
    end // fim do filial
    else
    begin
      Application.CreateForm(TFrmPesEmpContabil, FrmPesEmpContabil);
      FrmPesEmpContabil.ShowModal;
      with cdsPadrao do
      begin
        if not (FrmPesEmpContabil.cdsGrid.IsEmpty) then
        begin
          if not (State in [dsEdit, dsInsert]) then
            Edit;
          FieldByName('idEmpresa').Value := FrmPesEmpContabil.cdsGrid.FieldByName('idEmpresa').Value;
          DBEidEmpresa.SetFocus;
        end;
      end;
    end; // fim do else
  end; // fim do VK_F4
end;

procedure TFrmSelEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmSelEmpresas := Nil;
end;

procedure TFrmSelEmpresas.FormCreate(Sender: TObject);
begin
  ConfigLookEmpresa;
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
  cdsPadrao.FieldByName('idEmpresa').asInteger := StrToInt(FrmPrincipal.idEmpresa);
  cdsPadrao.FieldByName('idCadEmpresa').asInteger := StrToInt(FrmPrincipal.idCadEmpresa);
end;

procedure TFrmSelEmpresas.FormShow(Sender: TObject);
begin
    filial := true;

    if (frmPrincipal.modulo = 'FIN') or (frmPrincipal.modulo = 'CON') then //verificação se está vindo do financeiro para a possibilidade de lançar por filial
    begin
      filial := false;
      if (frmPrincipal.modulo <> 'CON') then
      begin
        cdsLookup.Active := false;
        cdsLookup.CommandText := 'SELECT lancafilial FROM ConfigFinanc WHERE idEmpresa = ' + FrmPrincipal.idEmpresa;
        cdsLookup.Active := true;
        filial := cdsLookup.FieldByName('lancafilial').AsString = 'S';
      end;
      if not filial then
      begin
//        cdsPadrao.FieldByName('idCadEmpresa').AsString := frmPrincipal.ExecutaSQLRet([], '', 'SELECT MIN(idCadAdicional) AS id FROM CadAdicional WHERE idCadGeral = ' + FrmPrincipal.idEmpresa).FieldByName('id').AsString;
        DBEidCadEmpresa.Visible := false;
        LookdescCadEmpresa.Left := 106;
        LookdescCadEmpresa.Width := 248;
      end;
    end;
    if filial then
      cdsPadrao.FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa;

end;

end.
