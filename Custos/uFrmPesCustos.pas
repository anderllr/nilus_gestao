unit uFrmPesCustos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoPesquisaDevExpress, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, cxLookAndFeels,
  cxGridCustomPopupMenu, cxGridPopupMenu, SqlExpr, Provider, DBClient, ActnList,
  ImgList, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, CFind, DBCtrls,
  CDBCheckBox, CLookUp, Mask, CDBEdit, cxCurrencyEdit, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, cxShellBrowserDialog, ExtDlgs,
  RzShellDialogs, cxNavigator, System.Actions, System.ImageList;

type
  TFrmPesCustos = class(TFrmPadraoPesquisaDevExpress)
    Bevel1: TBevel;
    PanEmpresa: TCPanelGradient;
    CLabel2: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    CLabel3: TCLabel;
    CLabel1: TCLabel;
    DBEidProdGrupoIni: TCDBEdit;
    CLabel8: TCLabel;
    CLabel11: TCLabel;
    CLabel13: TCLabel;
    CLabel5: TCLabel;
    DBEidBem: TCDBEdit;
    DBEdtInicial: TCDBEdit;
    CLabel4: TCLabel;
    DBEdtFinal: TCDBEdit;
    CLabel6: TCLabel;
    DBEidCultura: TCDBEdit;
    LookCultura: TCLookUp;
    CLabel7: TCLabel;
    DBEidSafra: TCDBEdit;
    LookSafra: TCLookUp;
    LookProdMedida: TCLookUp;
    LookProduto: TCLookUp;
    LookPropriedade: TCLookUp;
    DBEidProduto: TCDBEdit;
    DBEidGerencial: TCDBEdit;
    DBEidResultado: TCDBEdit;
    LookResultado: TCLookUp;
    LookGerenciaR: TCLookUp;
    DBEidProdGrupoFim: TCDBEdit;
    CLabel9: TCLabel;
    CLabel10: TCLabel;
    DBEidProdSubGrupoIni: TCDBEdit;
    CLabel12: TCLabel;
    DBEidProdSubGrupoFim: TCDBEdit;
    FindSafra: TCFind;
    FindResultado: TCFind;
    FindBem: TCFind;
    FindCultura: TCFind;
    FindGerencial: TCFind;
    FindProduto: TCFind;
    FindEmpresa: TCFind;
    cdsPadraoidResultado: TIntegerField;
    cdsPadraodtInicial: TDateTimeField;
    cdsPadraodtFinal: TDateTimeField;
    cdsPadraoidCultura: TIntegerField;
    cdsPadraoidBem: TIntegerField;
    cdsPadraoidProduto: TIntegerField;
    cdsPadraoidGerencial: TIntegerField;
    cdsPadraoidProdGrupoIni: TSmallintField;
    cdsPadraoidProdGrupoFim: TSmallintField;
    cdsPadraoidProdSubGrupoIni: TSmallintField;
    cdsPadraoidProdSubGrupoFim: TSmallintField;
    cdsPadraoagrupCultura: TStringField;
    cdsPadraoidSafra: TIntegerField;
    cxStyle1: TcxStyle;
    DBCBagrupCultura: TCDBCheckBox;
    DBViewdescCultura: TcxGridDBColumn;
    DBViewdescTalhao: TcxGridDBColumn;
    DBViewarea: TcxGridDBColumn;
    DBViewdescGrupo: TcxGridDBColumn;
    DBViewdescItem: TcxGridDBColumn;
    DBViewqtItem: TcxGridDBColumn;
    DBViewvlMedio: TcxGridDBColumn;
    DBViewvlTotal: TcxGridDBColumn;
    DBViewvlCustoHA: TcxGridDBColumn;
    DBViewprRepresentacao: TcxGridDBColumn;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesCustos: TFrmPesCustos;

implementation

uses uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TFrmPesCustos.actPesquisarExecute(Sender: TObject);
var
grupos, subgrupos : string;
begin
  if trim(DBEidEmpresa.Text) = '' then
  begin
    messagedlg('A empresa deve ser informada!', mtwarning, [mbok], 0);
    DBEidEmpresa.SetFocus;
    exit;
  end;
  if DBCBagrupCultura.checked then
  begin
    DBViewdescTalhao.Caption := 'Cultura';
    DBViewdescTalhao.DataBinding.FieldName := 'descCultura';
    DBViewdescCultura.Caption := 'Talhão';
    DBViewdescCultura.DataBinding.FieldName := 'descTalhao';
  end
  else
  begin
    DBViewdescTalhao.Caption := 'Talhão';
    DBViewdesctalhao.DataBinding.FieldName := 'descTalhao';
    DBViewdescCultura.Caption := 'Cultura';
    DBViewdescCultura.DataBinding.FieldName := 'descCultura';
  end;
  grupos := 'NULL';
  subgrupos := 'NULL';
  cdsGrid.Active := False;
  cdsGrid.CommandText := 'EXEC spRelCustos ' + DBEidEmpresa.text + ',' +
                               funcao.RetornaValorEField(DBEdtInicial, 3) + ',' +
                               funcao.RetornaValorEField(DBEdtFinal, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidCultura, 3) + ',' +
                               funcao.RetornaValorEField(DBEidBem, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidSafra, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidProduto, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidResultado, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidGerencial, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidProdGrupoIni, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidProdGrupoFim, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidProdSubGrupoIni, 3)+ ',' +
                               funcao.RetornaValorEField(DBEidProdSubGrupoFim, 3)+ ',' +
                               funcao.RetornaValorEField(DBCBagrupCultura, 3)+ ',' +
                               grupos + ',' +
                               subgrupos + ', ' +
                               'D' + ', ' +
                               'N' + ', '+
                               'N';

  cdsGrid.Active := true;
  screen.Cursor := crDefault;
  DBView.DataController.Groups.FullExpand;
  DBView.Controller.GoToFirst;
  //
end;

procedure TFrmPesCustos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmPesCustos := nil;
end;

procedure TFrmPesCustos.FormCreate(Sender: TObject);
begin
  inherited;
  empresa := true;
  foco := DBEidEmpresa;
end;

procedure TFrmPesCustos.FormShow(Sender: TObject);
begin
  inherited;
  DBEdtInicial.SetFocus;
  WindowState := wsMaximized;
end;

end.
