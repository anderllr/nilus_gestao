unit uFrmCadPadraoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadrao, ActnList, ImgList, DB, Provider, DBClient, StdCtrls,
  Buttons, CBitBtn, ComCtrls, CPageControl, CStatusBar, ExtCtrls, EditAlign,
  CEdit, CLookUp, CLabel, Mask, DBCtrls, CDBEdit, CFind, CPanelGradient;

type
  TFrmCadPadraoEmpresa = class(TFrmCadPadrao)
    Bevel3: TBevel;
    LookRazao: TCLookUp;
    LookFantasia: TCLookUp;
    CLabel1: TCLabel;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    FindEmpresa: TCFind;
    cd_empresa: TCEdit;
    procedure cdsPadraoAfterEdit(DataSet: TDataSet);
    procedure cd_empresaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPadraoEmpresa: TFrmCadPadraoEmpresa;

implementation

uses uDmPadrao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmCadPadraoEmpresa.cdsPadraoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Tabelas[0].FieldByName('cd_empresa').AsString := (Formulario.FindComponent('cd_empresa') as TCustomEdit).Text;
end;

procedure TFrmCadPadraoEmpresa.cd_empresaExit(Sender: TObject);
begin
  inherited;
  with (Formulario.FindComponent('cdsEmpresa') as TClientDataset) do
  begin
    Active := false;
    IndexFieldNames := 'cd_empresa';
    Active := true;
//    Locate('cd_empresa', (Formulario.FindComponent('cd_empresa') as TCEdit).Value, []);
    if not findkey([(Formulario.FindComponent('cd_empresa') as TCEdit).Text]) then
    begin
      messagedlg('Código não encontrado!', mtwarning, [mbok], 0);
      (Formulario.FindComponent('cd_empresa') as TCEdit).SetFocus;
    end;
  end;
end;

procedure TFrmCadPadraoEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  (Formulario.FindComponent('cd_empresa') as TCEdit).Value := strtofloat(FrmPrincipal.cd_empresa);
  cd_empresaexit(Formulario.FindComponent('cd_empresa'));
end;

end.
