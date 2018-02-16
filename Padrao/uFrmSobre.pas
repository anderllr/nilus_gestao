unit uFrmSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CGroupBox, jpeg, ExtCtrls, CLabel, DB, DBClient, Provider;

type
  TFrmSobre = class(TForm)
    Image1: TImage;
    CGroupBox1: TCGroupBox;
    LblEmpresa: TCLabel;
    CLabel3: TCLabel;
    LblSpID: TCLabel;
    dspSPID: TDataSetProvider;
    cdsSPID: TClientDataSet;
    CLabel4: TCLabel;
    LblVersao: TCLabel;
    CLabel1: TCLabel;
    Image2: TImage;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobre: TFrmSobre;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmSobre.FormCreate(Sender: TObject);
begin
//  LblVersao.Caption := Funcao.GetBuildInfo;
end;

procedure TFrmSobre.FormShow(Sender: TObject);
begin
  cdsSPID.Active := false;
  cdsSPID.Active := True;
  LblSPID.Caption := cdsSPID.FieldByName('SPID').AsString;
  cdsSPID.Active := false;
end;

end.
