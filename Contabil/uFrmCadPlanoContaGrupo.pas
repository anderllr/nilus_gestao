unit uFrmCadPlanoContaGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoGrid, CLookUp, StdCtrls, Mask, DBCtrls, CDBEdit, CLabel,
  DB, Provider, DBClient, ActnList, ImgList, Buttons, CBitBtn, ExtCtrls,
  CPanelGradient, Grids, DBGrids, CDBGrid, CGroupBox, ComCtrls, CPageControl,
  CFind, FMTBcd, SqlExpr, System.Actions;

type
  TFrmCadPlanoContaGrupo = class(TFrmCadPadraoGrid)
    CGroupBox7: TCGroupBox;
    CLabel11: TCLabel;
    CLabel15: TCLabel;
    CLabel16: TCLabel;
    DBEidPlanoContaGrupo: TCDBEdit;
    DBEdescPlanoContaGrupo: TCDBEdit;
    DBEseqPlanoContaGrupo: TCDBEdit;
    FindPlanoContaGrupo: TCFind;
    CLabel1: TCLabel;
    CDBEdit1: TCDBEdit;
    procedure DBEidPlanoContaGrupoExit(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPlanoContaGrupo: TFrmCadPlanoContaGrupo;

implementation

 uses uDmPadrao, uFrmPrincipal, uFuncao;

{$R *.dfm}

procedure TFrmCadPlanoContaGrupo.actExcluirExecute(Sender: TObject);
var
  sql : String;
begin
  sql := 'SELECT * FROM PlanoConta WHERE idPlanoContaGrupo = ' + QuotedStr(cdsPadrao.FieldByName('idPlanoContaGrupo').AsString);
  with frmPrincipal.ExecutaSQLRet([], '', sql) do
  begin
    if RecordCount > 0 then
    begin
      MessageDlg('Grupo com lancamento ativos!', mtWarning, [mbOK], 0);
      DBEidPlanoContaGrupo.SetFocus;
      Exit;
    end
    else
    begin
      inherited;
    end;
  end;
end;

procedure TFrmCadPlanoContaGrupo.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;

end;

procedure TFrmCadPlanoContaGrupo.DBEidPlanoContaGrupoExit(Sender: TObject);
begin
  inherited;
  BuscaChaveGrid(cdsPadrao, chave);
end;

procedure TFrmCadPlanoContaGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmCadPlanoContaGrupo := nil;
end;

procedure TFrmCadPlanoContaGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabelas[0] := cdsPadrao;
  chave[0] := DBEidPlanoContaGrupo;
  foco := DBEidPlanoContaGrupo;
  tab_chave := 'PlanoContaGrupo';
//  situacao := 'stPlanoContaGrupo';
  Grid := true;
  FindPesquisa := FindPlanoContaGrupo;
end;

procedure TFrmCadPlanoContaGrupo.FormShow(Sender: TObject);
begin
  action := 'actCadTpPlanoConta';
  inherited;

end;

end.
