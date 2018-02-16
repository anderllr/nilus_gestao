unit uFrmManutencaoPedido2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadPadraoEmpFiscal, Data.FMTBcd,
  CFind, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, CLookUp,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, CDBEdit, CLabel, Vcl.Buttons, CBitBtn,
  Vcl.ExtCtrls, CPanelGradient, Vcl.ComCtrls, CPageControl, Vcl.Grids,
  Vcl.DBGrids, CDBGrid, CGroupBox, CDBMemo, uDmPadrao;

type
  TFrmManutencaoPedido2 = class(TFrmCadPadraoEmpFiscal)
    TabPedido: TTabSheet;
    CGroupBox1: TCGroupBox;
    lbl1: TCLabel;
    lbl2: TCLabel;
    lbl3: TCLabel;
    lbl6: TCLabel;
    lbl7: TCLabel;
    lbl19: TCLabel;
    CLookUp1: TCLookUp;
    DBEdtFinal: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    DBEidFornecedor: TCDBEdit;
    DBEidPedidoFim: TCDBEdit;
    DBEidPedidoIni: TCDBEdit;
    LookRazao: TCLookUp;
    DBEidProduto: TCDBEdit;
    LookProduto: TCLookUp;
    LookProdMedida: TCLookUp;
    CGroupBox2: TCGroupBox;
    DBGridConsulta: TCDBGrid;
    dsGridConsulta: TDataSource;
    cdsGridConsulta: TClientDataSet;
    dspGridConsulta: TDataSetProvider;
    sdsGridConsulta: TSQLDataSet;
    sdsGridPedido: TSQLDataSet;
    dspGridPedido: TDataSetProvider;
    cdsGridPedido: TClientDataSet;
    dsGridPedido: TDataSource;
    dsPedidoProd: TDataSource;
    cdsPedidoProd: TClientDataSet;
    dspGridPedidoProd: TDataSetProvider;
    sdsPedidoProd: TSQLDataSet;
    cdsProduto: TClientDataSet;
    cdsProdutoidProduto: TIntegerField;
    cdsProdutodescProduto: TStringField;
    cdsProdutoidProdCategoria: TSmallintField;
    cdsProdutoidProdMedida: TSmallintField;
    cdsProdutoidProdGrupo: TSmallintField;
    cdsProdutoidProdSubGrupo: TSmallintField;
    cdsProdutodtCadastro: TSQLTimeStampField;
    cdsProdutoobsProduto: TStringField;
    cdsProdutostProduto: TStringField;
    cdsProdutoidIndice: TSmallintField;
    cdsProdutoidCultura: TSmallintField;
    cdsProdutoidFabricante: TIntegerField;
    cdsProdutocodFabricante: TStringField;
    cdsProdutodescAplicacao: TStringField;
    cdsProdutoNcm: TStringField;
    cdsProdutoqtSacas: TFMTBCDField;
    cdsProdutoqtArrobas: TFMTBCDField;
    cdsProdutoCombustivel: TStringField;
    cdsProdutolocacao: TStringField;
    cdsProdutoproducao: TStringField;
    cdsProdutoidProdOrigem: TSmallintField;
    CGroupBox3: TCGroupBox;
    lbl4: TCLabel;
    lbl5: TCLabel;
    lbl10: TCLabel;
    lbl11: TCLabel;
    lbl18: TCLabel;
    DBEdtPedido: TCDBEdit;
    DBEidPedidoCompra: TCDBEdit;
    CLookUp2: TCLookUp;
    CDBEdit1: TCDBEdit;
    DBEvlPedido: TCDBEdit;
    CLookUp3: TCLookUp;
    DBEdtVencimento: TCDBEdit;
    CGroupBox4: TCGroupBox;
    DBGridPedido: TCDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure DBGridPedidoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridPedidoCellClick(Column: TColumn);
    procedure DBGridPedidoEditButtonClick(Sender: TObject);
    procedure BtnAlterar2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    BtnAlterar : TButton;
//    DadosDBGrid : String;
  end;

var
  FrmManutencaoPedido2: TFrmManutencaoPedido2;

implementation

uses
  uFrmAlteraProdPedido, uFrmPrincipal, uDmFind;

{$R *.dfm}

procedure TFrmManutencaoPedido2.BtnAlterar2Click(Sender: TObject);
begin
  inherited;
//  Application.CreateForm(TFrmAlteraProdPedido, FrmAlteraProdPedido);
//  FrmAlteraProdPedido.ShowModal;
end;

procedure TFrmManutencaoPedido2.DBGridPedidoCellClick(Column: TColumn);
begin
{   if DBGridPedido.SelectedField.FieldName = 'Alterar' then
  begin
   FrmAlteraProdPedido.Show;
   FrmAlteraProdPedido.DBEidProduto.Text := DadosDBGrid; //Variavel global mandando os dados para o FrmAlteraProdPedido
  end;}
end;

procedure TFrmManutencaoPedido2.DBGridPedidoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
//var
//  BUTTON: Integer;
//  R: TRect;
//  SCapt : string;
begin
{  if Column.FieldName = 'Alterar' then
  begin
    DBGridPedido.Canvas.FillRect(Rect);
    BUTTON := 0;
    R      := Rect;
    SCapt  := 'Alterar';
    InflateRect(R,-2,-2); //Diminue o tamanho do Botão
    DrawFrameControl(DBGridPedido.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    with DBGridPedido.Canvas do
    begin
      Brush.Style := bsClear;
      Font.Color  := clBtnText;
      TextRect(Rect, (Rect.Left + Rect.Right - TextWidth(SCapt)) div 2, (Rect.Top + Rect.Bottom - TextHeight(SCapt)) div 2, SCapt);
    end;
  end;

    if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = 'Temporario') then
    with BtnAlterar do
    begin
      Left    := Rect.Left + DBGridPedido.Left + 1;
      Top     := Rect.Top + DBGridPedido.Top + 1;
      Width   := Rect.Right - Rect.Left + 2;
      Width   := Rect.Right - Rect.Left + 2;
      Height  := Rect.Bottom - Rect.Top + 2;
      Caption := 'Del';
      Visible := True;
    end;
  end }
end;

procedure TFrmManutencaoPedido2.DBGridPedidoEditButtonClick(Sender: TObject);
begin
{  if DBGridPedido.SelectedField.FieldName = 'Alterar' then
  begin
   FrmAlteraProdPedido.Show;
   FrmAlteraProdPedido.DBEidProduto.Text := DadosDBGrid; //Variavel global mandando os dados para o FrmAlteraProdPedido
  end;}
end;

procedure TFrmManutencaoPedido2.FormCreate(Sender: TObject);
begin
  inherited;
{  BtnAlterar       := TButton.Create(Self);
  BtnAlterar.Parent := FrmManutencaoPedido;}
end;

procedure TFrmManutencaoPedido2.FormShow(Sender: TObject);
begin
  inherited;
  Height := 549;
  Width  := 675;
end;

end.
