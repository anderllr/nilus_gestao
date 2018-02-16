unit uFrmRelCredencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoRelCrystal, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  CGroupBox, Provider, DB, DBClient, ActnList, ImgList, Buttons, CBitBtn,
  ExtCtrls, CPanelGradient;

type
  TFrmRelCredencial = class(TFrmPadraoRelCrystal)
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    DBEidCredencialIni: TCDBEdit;
    CLabel2: TCLabel;
    DBEidCredencialFim: TCDBEdit;
    CLabel3: TCLabel;
    cdsCamposidCredencialIni: TIntegerField;
    cdsCamposidCredencialFim: TIntegerField;
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCredencial: TFrmRelCredencial;

implementation

{$R *.dfm}

procedure TFrmRelCredencial.actGerarExecute(Sender: TObject);
begin
  if trim(DBEidCredencialIni.Text) = '' then
    cdsCampos.FieldByName('idCredencialIni').AsInteger := 1;
  if trim(DBEidCredencialFim.Text) = '' then
    cdsCampos.FieldByName('idCredencialFim').AsInteger := 999999;

  inherited;
end;

procedure TFrmRelCredencial.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidCredencialIni;
  SetLength(parametro, 2);
  parametro[0] := 'DBEidCredencialIni';
  parametro[1] := 'DBEidCredencialFim';
  relatorio := 'CredencialFrente.rpt';

end;

end.
