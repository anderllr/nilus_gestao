unit uFrmImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CGroupBox, CRadioButton, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, DB, DBClient, Provider, FMTBcd, SqlExpr, ImgList, ActnList,
  RDprint;

type
  TFrmImpressao = class(TForm)
    CGroupBox1: TCGroupBox;
    RBMatricial: TCRadioButton;
    RBLaser: TCRadioButton;
    PanBotoes: TCPanelGradient;
    BtnSalvar: TCBitBtn;
    BtnFechar: TCBitBtn;
    Bevel1: TBevel;
    dspTabela: TDataSetProvider;
    cdsTabela: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    sdsRelatorio: TSQLDataSet;
    sdsTabela: TSQLDataSet;
    Acao: TActionList;
    actFechar: TAction;
    ImgBotoes: TImageList;
    actImprimir: TAction;
    Print: TRDprint;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    idRelMatricial : integer;    
  end;

var
  FrmImpressao: TFrmImpressao;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmImpressao.BtnSalvarClick(Sender: TObject);
begin
//  Print.im
end;

procedure TFrmImpressao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmImpressao.FormCreate(Sender: TObject);
begin
  idRelMatricial := 0;
end;

procedure TFrmImpressao.FormShow(Sender: TObject);
begin
  if idRelMatricial = 0 then
    RBMatricial.Enabled := false
  else
  begin
    with cdsRelatorio do
    begin
      Active := false;
      CommandText := 'SELECT * FROM RelMatricialCampo WHERE idRelMatricial = ' + IntToStr(idRelMatricial) +
                     ' ORDER BY linha, coluna';
      Active := true;
    end;
  end;
end;

end.
