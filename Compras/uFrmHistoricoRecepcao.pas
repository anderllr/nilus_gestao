unit uFrmHistoricoRecepcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, CLabel, Mask,
  DBCtrls, CDBEdit, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid;

type
  TFrmHistoricoRecepcao = class(TForm)
    dsPedidoRec: TDataSource;
    cdsPedidoRec: TClientDataSet;
    dspPedidoRec: TDataSetProvider;
    sdsPedidoRec: TSQLDataSet;
    CPanelGradient2: TCPanelGradient;
    DBEdescProduto: TCDBEdit;
    CLabel25: TCLabel;
    CDBGrid1: TCDBGrid;
    cdsPedidoRecqtRecepcao: TFMTBCDField;
    cdsPedidoRecdtRecepcao: TSQLTimeStampField;
    cdsPedidoRecidDocSerie: TStringField;
    cdsPedidoRecidNfE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoricoRecepcao: TFrmHistoricoRecepcao;

implementation

uses uFrmPesConferencia;

{$R *.dfm}

procedure TFrmHistoricoRecepcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
