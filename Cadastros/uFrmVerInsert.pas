unit uFrmVerInsert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CMemo, ExtCtrls, CPanelGradient, CLabel;

type
  TFrmVerInsert = class(TForm)
    MemInsert: TCMemo;
    PanBotoes: TCPanelGradient;
    CLabel1: TCLabel;
    CPanelGradient1: TCPanelGradient;
    CLabel2: TCLabel;
    MemUpdate: TCMemo;
    MemDelete: TCMemo;
    CPanelGradient2: TCPanelGradient;
    CLabel3: TCLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVerInsert: TFrmVerInsert;

implementation

{$R *.dfm}

procedure TFrmVerInsert.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
