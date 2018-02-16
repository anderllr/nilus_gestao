unit uFrmImpCartaoPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoImpressao, FMTBcd, RDprint, ImgList, ActnList, SqlExpr, DB,
  DBClient, Provider, StdCtrls, CCheckBox, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, CRadioButton, CGroupBox;

type
  TFrmImpCartaoPonto = class(TFrmPadraoImpressao)
    sdsTabelaGrp: TSQLDataSet;
    dspTabelaGrp: TDataSetProvider;
    cdsTabelaGrp: TClientDataSet;
    procedure actImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImpCartaoPonto: TFrmImpCartaoPonto;

implementation

{$R *.dfm}

procedure TFrmImpCartaoPonto.actImprimirExecute(Sender: TObject);
begin
  inherited;
  if RBMatricial.Checked then
  begin
    RDPrint1.TitulodoRelatorio := 'Impressão do Romaneio';
    RDPrint1.OpcoesPreview.CaptionPreview := 'Impressão do Romaneio';
    RDPrint1.Fechar;
  end;
end;

procedure TFrmImpCartaoPonto.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(idRelMatricial, 4);
  idRelMatricial[0] := 1;
  idRelMatricial[1] := 2;
  idRelMatricial[2] := 3;
  idRelMatricial[3] := 4;
//  idRelMatricial[4] := 5;
  SetLength(Tabelas, 4);
  Tabelas[0] := cdsTabela;
  Tabelas[1] := cdsTabela;
  Tabelas[2] := cdsTabela;
  Tabelas[4] := cdsTabelaGrp;
end;

end.
