unit uFrmPadraoRelCrystal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CLabel, ImgList, StdActns,
  CActionList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ComCtrls, CStatusBar,
  EditAlign, CEdit, CBitBtn, ActnList, Buttons, uClasses, CPanelGradient, DB,
  DBClient, CDBEdit, Provider, UCrpeClasses, UCrpe32;

type
  TFrmPadraoRelCrystal = class(TForm)
    imgIcones: TImageList;
    Bevel1: TBevel;
    Acao: TActionList;
    actFechar: TAction;
    actGerar: TAction;
    PanBotoes: TCPanelGradient;
    Bevel3: TBevel;
    BtnGerar: TCBitBtn;
    BtnFechar: TCBitBtn;
    cdsCampos: TClientDataSet;
    dsCampos: TDataSource;
    dspLookUp: TDataSetProvider;
    cdsLookUp: TClientDataSet;
    procedure FormShow(Sender: TObject);
    function RetornaValor(par : string): string;
    procedure GeraRelatorio(rel : string);
    procedure actGerarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Formulario : TForm;
    relatorio : string;
    parametro : array of string;
    foco : TCustomEdit;
  end;

var
  FrmPadraoRelCrystal: TFrmPadraoRelCrystal;

implementation

uses uDmPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

function TFrmPadraoRelCrystal.RetornaValor(par : string): string;
var
  valor : string;
begin
  valor := '';
  if (Formulario.FindComponent(par) is TCEdit) then
  begin
    if (Formulario.FindComponent(par) as TCEdit).KeyMode = kmDate then
    begin
      if Trim((Formulario.FindComponent(par) as TCEdit).Text) <> '' then
        valor := funcao.ConverteDataCrystal(strtodate(((Formulario.FindComponent(par) as TCEdit).Text)))
      else
        valor := '1900,01,01 00:00:00';
    end
    else
      if (Formulario.FindComponent(par) as TCEdit).KeyMode = kmInteger then
      begin
        valor := (Formulario.FindComponent(par) as TCustomEdit).text;
        if trim(valor) = '' then
          valor := '0';
      end
      else
        valor := quotedstr((Formulario.FindComponent(par) as TCustomEdit).text);
  end //if (Formulario.FindComponent(par) is TCEdit) then
  else
    if (Formulario.FindComponent(par) is TCDBEdit) then
    begin
      if (Formulario.FindComponent(par) as TCDBEdit).KeyMode = kmDate then
      begin
        if Trim((Formulario.FindComponent(par) as TCDBEdit).Text) <> '' then
          valor := funcao.ConverteDataCrystal(strtodate(((Formulario.FindComponent(par) as TCDBEdit).Text)))
        else
          valor := '1900,01,01 00:00:00';
      end
      else
        if (Formulario.FindComponent(par) as TCDBEdit).KeyMode = kmInteger then
        begin
          valor := (Formulario.FindComponent(par) as TCustomEdit).text;
          if trim(valor) = '' then
            valor := '0';
        end
        else
          valor := quotedstr((Formulario.FindComponent(par) as TCustomEdit).text);
    end //if (Formulario.FindComponent(par) is TCDBEdit) then
    else
      valor := quotedstr(par);
  Result := valor;
end;
procedure TFrmPadraoRelCrystal.GeraRelatorio(rel : string);
var
  i : integer;
begin
  With dmPadrao.CrystalRel do
  begin
    ReportName := DmPadrao.RetornaConfig('caminho_relCR') + rel;
//    Showmessage(ReportName);
//    exit;
    ParamFields.Clear;
    Refresh;
    for i := 0 to high(parametro) do
    begin
//      ShowMessage(RetornaValor(parametro[i]));
      ParamFields.Items[i].CurrentValue := RetornaValor(parametro[i]) ;
    end;
  end;
  try
    with dmPadrao.CrystalRel.Connect do
    begin
      DatabaseName := dmPadrao.dbConexao.Params.Values['Database'] ;//Base de dados no banco
      ServerName := dmPadrao.dbConexao.Params.Values['HostName'];  //Nome do Servidor de dados
      UserID := dmPadrao.dbConexao.Params.Values['User_Name'];     //usuário do banco
      Password := dmPadrao.dbConexao.Params.Values['Password'];    //Senha do usuario no banco
      Propagate := True;
      dmPadrao.CrystalRel.Execute;
    end;
  except
    raise Exception.Create(dmPadrao.CrystalRel.LastErrorString);;
  end;
end;

procedure TFrmPadraoRelCrystal.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPadraoRelCrystal.actGerarExecute(Sender: TObject);
begin
  GeraRelatorio(relatorio);
end;

procedure TFrmPadraoRelCrystal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsCampos.Active := false;
  Action := caFree;
end;

procedure TFrmPadraoRelCrystal.FormCreate(Sender: TObject);
begin
  Formulario := (Sender as TForm);
  SetLength(parametro, 1);
end;

procedure TFrmPadraoRelCrystal.FormShow(Sender: TObject);
begin
  with cdsCampos do
  begin
    Active := false;
    CreateDataSet;
    Active := true;
    Append;
  end;
  if Assigned(foco) then
    foco.SetFocus;
end;

end.
