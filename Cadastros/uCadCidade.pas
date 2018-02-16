unit uCadCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, ActnList, ImgList, DB, Provider, DBClient,
  StdCtrls, Buttons, CBitBtn, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls,
  CPageControl, CStatusBar, ExtCtrls, FMTBcd, SqlExpr, Mask, DBCtrls, CDBEdit,
  CLabel, CLookUp, CFind, CPanelGradient, System.Actions, System.ImageList;

type
  TfrmCadCidade = class(TFrmCadPadraoGrid)
    sdsCidade: TSQLDataSet;
    CGroupBox1: TCGroupBox;
    CLabel60: TCLabel;
    DBEidCidade: TCDBEdit;
    CLabel58: TCLabel;
    DBEdescCidade: TCDBEdit;
    CLabel1: TCLabel;
    DBEidEstado: TCDBEdit;
    sdsEstado: TSQLDataSet;
    dspEstado: TDataSetProvider;
    cdsEstado: TClientDataSet;
    dsEstado: TDataSource;
    TabEstados: TTabSheet;
    CGroupBox3: TCGroupBox;
    CDBGrid1: TCDBGrid;
    CGroupBox4: TCGroupBox;
    LookEstado: TCLookUp;
    CLabel2: TCLabel;
    DBEcodDDD: TCDBEdit;
    CLabel4: TCLabel;
    CLabel5: TCLabel;
    DBEdescEstado: TCDBEdit;
    CLabel3: TCLabel;
    DBEidPais: TCDBEdit;
    LookPais: TCLookUp;
    CGroupBox5: TCGroupBox;
    BtnSalvarEst: TCBitBtn;
    BtnCancelarEst: TCBitBtn;
    BtnExcluirEst: TCBitBtn;
    BtnNovoEst: TCBitBtn;
    TabPais: TTabSheet;
    CGroupBox6: TCGroupBox;
    CLabel6: TCLabel;
    CLabel7: TCLabel;
    DBEidPais2: TCDBEdit;
    DBEdescPais: TCDBEdit;
    CGroupBox7: TCGroupBox;
    CDBGrid2: TCDBGrid;
    CGroupBox8: TCGroupBox;
    BtnSalvarPais: TCBitBtn;
    BtnCancelarPais: TCBitBtn;
    BtnExcluirPais: TCBitBtn;
    BtnNovoPais: TCBitBtn;
    CLabel9: TCLabel;
    DBEcodArea: TCDBEdit;
    cdsEstadoidEstado: TStringField;
    cdsEstadodescEstado: TStringField;
    sdsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    dsPais: TDataSource;
    DBEidEstado2: TCDBEdit;
    FindEstado: TCFind;
    cdsPais2: TClientDataSet;
    cdsEstadoidPais: TSmallintField;
    cdsEstadodescPais: TStringField;
    FindPais: TCFind;
    FindCidade: TCFind;
    CLabel8: TCLabel;
    DBEcodIBGECidade: TCDBEdit;
    DBEcodBACENPais: TCDBEdit;
    CLabel10: TCLabel;
    cdsEstadocodIBGEEstado: TFMTBCDField;
    CLabel11: TCLabel;
    DBEcodIBGEEstado: TCDBEdit;
    procedure DBEidCidadeExit(Sender: TObject);
    procedure TabEstadosEnter(Sender: TObject);
    procedure TabAbasEnter(Sender: TObject);
    procedure TabPaisEnter(Sender: TObject);
    procedure DBEidPais2Exit(Sender: TObject);
    procedure dsPaisStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSalvarEstClick(Sender: TObject);
    procedure BtnSalvarPaisClick(Sender: TObject);
    procedure BtnCancelarPaisClick(Sender: TObject);
    procedure BtnCancelarEstClick(Sender: TObject);
    procedure DBEidEstado2Exit(Sender: TObject);
    procedure dsEstadoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSalvarExecute(Sender: TObject);
    procedure PagAbasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidade: TfrmCadCidade;

implementation

uses uDmPadrao, uFrmCadPadrao, uFuncao, uFrmPrincipal;

{$R *.dfm}

procedure TfrmCadCidade.actSalvarExecute(Sender: TObject);
begin
  if trim(DBEcodIBGECidade.Text) = '' then
  begin
    messagedlg('O Código do IBGE da cidade deve ser informado!', mtwarning, [mbok], 0);
    exit;
  end;

  GravaChave(1, '', nil);
  inherited;
end;

procedure TfrmCadCidade.BtnCancelarEstClick(Sender: TObject);
begin
  inherited;
  ExecSemChave(cdsEstado, BtnCancelarEst, BtnExcluirEst, BtnNovoEst, (Sender as TCBitBtn));
  DBEidEstado2.SetFocus;
end;

procedure TfrmCadCidade.BtnCancelarPaisClick(Sender: TObject);
begin
  inherited;
  ExecSemChave(cdsPais, BtnCancelarPais, BtnExcluirPais, BtnNovoPais, (Sender as TCBitBtn));
  DBEidPais2.SetFocus;  
end;

procedure TfrmCadCidade.BtnSalvarEstClick(Sender: TObject);
begin
  inherited;
  if trim(DBEcodIBGEEstado.Text) = '' then
  begin
    messagedlg('O Código do IBGE do Estado deve ser informado!', mtwarning, [mbok], 0);
    exit;
  end;

  GravaDireto(0, '', nil, [DBEidEstado2], 'Estado', cdsEstado);
  btnNovoEst.Click;
end;

procedure TfrmCadCidade.BtnSalvarPaisClick(Sender: TObject);
begin
  inherited;
  if trim(DBEcodBACENPais.Text) = '' then
  begin
    messagedlg('O Código do BACEN do País deve ser informado!', mtwarning, [mbok], 0);
    exit;
  end;

  GravaDireto(1, '', nil, [DBEidPais2], 'Pais', cdsPais);
  btnnovoPais.Click;
end;

procedure TfrmCadCidade.DBEidCidadeExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TfrmCadCidade.DBEidEstado2Exit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsEstado, [DBEidEstado2]);
end;

procedure TfrmCadCidade.DBEidPais2Exit(Sender: TObject);
begin
  inherited;
  BuscaChaveSec(cdsPais, [DBEidPais2]);
end;

procedure TfrmCadCidade.dsEstadoStateChange(Sender: TObject);
begin
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarEst, BtnCancelarEst, BtnExcluirEst, BtnNovoEst);
  inherited;
end;

procedure TfrmCadCidade.dsPaisStateChange(Sender: TObject);
begin
  inherited;
  funcao.HabilitaBotoesSec((Sender as TDataSource).DataSet, BtnSalvarPais, BtnCancelarPais, BtnExcluirPais, BtnNovoPais);
end;

procedure TfrmCadCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsEstado.Active := false;
  cdsPais.Active := false;
  frmCadCidade := nil;
end;

procedure TfrmCadCidade.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidCidade;
  foco := DBEidCidade;
  tab_chave := 'Cidade';
  FindPesquisa := FindCidade;
end;

procedure TfrmCadCidade.FormShow(Sender: TObject);
begin
  inherited;
  //tratamento individual das demais tabelas
  cdsEstado.Active := true;
  cdsPais.Active := true;
end;

procedure TfrmCadCidade.PagAbasChange(Sender: TObject);
begin
  inherited;
  panBotoes.Visible := PagAbas.ActivePageIndex = 0;

end;

procedure TfrmCadCidade.TabAbasEnter(Sender: TObject);
begin
  inherited;
  if cdsEstado.State in [dsInsert] then
    btnCancelarEst.Click;
  if cdsPais.State in [dsInsert] then
    btnCancelarPais.Click;
end;

procedure TfrmCadCidade.TabEstadosEnter(Sender: TObject);
begin
  inherited;
  if cdsPais.State in [dsInsert] then
    btnCancelarPais.Click;
end;

procedure TfrmCadCidade.TabPaisEnter(Sender: TObject);
begin
  inherited;
  if cdsEstado.State in [dsInsert] then
    btnCancelarEst.Click;
end;

end.
