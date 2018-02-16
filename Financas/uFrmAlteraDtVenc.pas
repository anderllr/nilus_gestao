unit uFrmAlteraDtVenc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CGroupBox, Mask, DBCtrls, CDBEdit, Buttons, CBitBtn,
  EditAlign, CEdit;

type
  TFrmAlteraDtVenc = class(TForm)
    Group1: TCGroupBox;
    BtnSalvarParc: TCBitBtn;
    EdtdtVencimento: TCEdit;
    procedure BtnSalvarParcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    idTituloPag, idParcela : string;
  end;

var
  FrmAlteraDtVenc: TFrmAlteraDtVenc;

implementation

uses uDmPadrao;

{$R *.dfm}

procedure TFrmAlteraDtVenc.BtnSalvarParcClick(Sender: TObject);
var
  sql : string;
begin
  if Trim(EdtdtVencimento.Text) <> '' then
  begin
    sql := 'UPDATE TituloPagParc SET dtVencimento = ' + QuotedStr(EdtdtVencimento.Text) +
           ' WHERE idTituloPag = ' + idTituloPag +
           '   AND idParcela = ' + idParcela;
    dmPadrao.dbConexao.ExecuteDirect(sql);
  end;
  Close;
end;

procedure TFrmAlteraDtVenc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
