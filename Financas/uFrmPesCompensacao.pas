unit uFrmPesCompensacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesqEmpFiscal, FMTBcd, SqlExpr, DB, DBClient, Provider,
  ActnList, ImgList, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel, Buttons,
  CBitBtn, ExtCtrls, CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, CFind,
  CDBCheckBox, DBXCommon, uFrmPadraoPesqEmpContabil, System.Actions,
  System.ImageList;

type
  TFrmPesCompensacao = class(TFrmPadraoPesqEmpFiscal)
    Bevel2: TBevel;
    Bevel1: TBevel;
    FindFornecedor: TCFind;
    cdsPadraodtMovContaIni: TDateField;
    cdsPadraodtMovContaFim: TDateField;
    cdsPadraodtVencimentoIni: TDateField;
    cdsPadraodtVencimentoFim: TDateField;
    CLabel3: TCLabel;
    DBEdtMovContaIni: TCDBEdit;
    CLabel7: TCLabel;
    DBEdtMovContaFim: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtVencimentoIni: TCDBEdit;
    CLabel5: TCLabel;
    DBEdtVencimentoFim: TCDBEdit;
    CPanelGradient1: TCPanelGradient;
    CLabel6: TCLabel;
    BtnCompensar: TCBitBtn;
    CBitBtn2: TCBitBtn;
    DBEdtCompensacao: TCDBEdit;
    cdsPadraodtCompensacao: TDateField;
    actCompensar: TAction;
    Bevel3: TBevel;
    cdsPadraoidConta: TIntegerField;
    CLabel48: TCLabel;
    DBEidConta: TCDBEdit;
    LookAgencia: TCLookUp;
    LookContaCorrente: TCLookUp;
    LookdescConta: TCLookUp;
    Bevel4: TBevel;
    FindConta: TCFind;
    DBEidUsuario: TCDBEdit;
    cdsPadraoidUsuario: TIntegerField;
    cdsGridsel: TStringField;
    cdsGrididMovConta: TIntegerField;
    cdsGriddescMovFinanceira: TStringField;
    cdsGriddescGerencial: TStringField;
    cdsGrididCheque: TStringField;
    cdsGriddtMovConta: TSQLTimeStampField;
    cdsGriddtVencimento: TSQLTimeStampField;
    cdsGriddescMovConta: TStringField;
    cdsGridvlMovConta: TFMTBCDField;
    cdsGrididUsuario: TIntegerField;
    cdsCompensacao: TClientDataSet;
    dsCompensacao: TDataSource;
    cdsCompensacaodtCompensacao: TDateTimeField;
    cdsCompensacaoidUsuario: TIntegerField;
    DBCKconsolidafilial: TCDBCheckBox;
    cdsPadraoconsolidafilial: TStringField;
    procedure actCompensarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsPadraoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
    qtSel : integer;        
  public
    { Public declarations }
    idEmpresa : integer;
  end;

var
  FrmPesCompensacao: TFrmPesCompensacao;

implementation

uses uFuncao, uFrmPrincipal, uDmPadrao, uFrmPagTitulo, uFrmPadraoPesquisa;

{$R *.dfm}

procedure TFrmPesCompensacao.actCompensarExecute(Sender: TObject);
var
    t : TDBXTransaction;
begin
  inherited;
  screen.Cursor := crSqlWait;  
  // Inicia o controle de transação
  frmPrincipal.erro := 0;
  //marca a transação
  cdsGrid.ApplyUpdates(0);
  funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookup, [DBEidUsuario, DBEdtCompensacao],'spCompensacao');
  actPesquisar.Execute;
end;

procedure TFrmPesCompensacao.actExecutarExecute(Sender: TObject);
var
  sql : string;
begin
  if trim(DBEidConta.Text) = '' then
  begin
    messagedlg('Informe o número da conta!', mtwarning, [mbok], 0);
    DBEidConta.SetFocus;
    exit;
  end;
  funcao.ExecutaProc(dmPadrao.dbConexao, cdsLookUp, [DBEidEmpresa, DBEidCadEmpresa,
                     DBEidConta, DBEdtMovContaIni, DBEdtMovContaFim, DBEdtVencimentoIni,
                     DBEdtVencimentoFim, DBEidUsuario, DBCKconsolidafilial],
                     'spGeraTmpCompensacao');
  sql := 'SELECT * FROM tmpCompensacao WHERE idUsuario = ' + DBEidUsuario.Text;

  cdsGrid.Active := false;
  cdsGrid.CommandText := sql;
  cdsGrid.Active := true;
  DBEidConta.SetFocus;
  qtSel := 0;
  actCompensar.Enabled := qtSel > 0;

  inherited;
end;

procedure TFrmPesCompensacao.cdsPadraoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCompensacao.FieldByName('dtCompensacao').AsDateTime := date;
  cdsPadraoconsolidafilial.AsString := 'S';
end;

procedure TFrmPesCompensacao.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    with cdsGrid do
    begin
      if IsEmpty then
        exit;
      Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
      Edit;
      if FieldByName('sel').AsString = 'S' then
      begin
        qtSel := qtSel - 1;      
        FieldByName('sel').AsString := 'N';
      end
      else
      begin
        qtSel := qtSel + 1;      
        FieldByName('sel').AsString := 'S';
      end;
      Post;
      DBGrid.Refresh;
    end; //fim do with cdsGrid do
  end //fim do if Column.Index = 0 then
  else
    Self.DBGrid.Options := Self.FOriginalOptions;
  actCompensar.Enabled := qtSel > 0;
end;

procedure TFrmPesCompensacao.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmPesCompensacao.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
     DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 CheckBoxRectangle : TRect;
 marca : boolean;
begin
  inherited;
  marca := false;
  if cdsGrid.FieldByName('sel').Value = 'S' then
    marca := true;

  if (Column.Index = 0) then
  begin
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
  end;
end;

procedure TFrmPesCompensacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmPesCompensacao := nil;
end;

procedure TFrmPesCompensacao.FormCreate(Sender: TObject);
begin
  inherited;
  foco := DBEidConta;
  Width := 700;
  Height := 480;
  cdsCompensacao.CreateDataSet;
  cdsCompensacao.Append;
  
end;

procedure TFrmPesCompensacao.FormShow(Sender: TObject);
begin
  inherited;
  actCompensar.Enabled := qtSel > 0;
  cdsCompensacao.FieldByName('dtCompensacao').AsDateTime := date;
  cdsCompensacao.FieldByName('idUsuario').AsString := frmPrincipal.idUsuario;    
end;

end.
