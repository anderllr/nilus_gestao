unit uFrmSobreBoutin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CGroupBox, jpeg, ExtCtrls, CLabel, DB, DBClient, Provider;

type
  TFrmSobreBoutin = class(TForm)
    Image1: TImage;
    CGroupBox1: TCGroupBox;
    CLabel1: TCLabel;
    CLabel2: TCLabel;
    CLabel3: TCLabel;
    LblSpID: TCLabel;
    dspSPID: TDataSetProvider;
    cdsSPID: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobreBoutin: TFrmSobreBoutin;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmSobreBoutin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmSobreBoutin.FormShow(Sender: TObject);
begin
  cdsSPID.Active := false;
  cdsSPID.Active := True;
  LblSPID.Caption := cdsSPID.FieldByName('SPID').AsString;
  cdsSPID.Active := false;  
end;

end.
