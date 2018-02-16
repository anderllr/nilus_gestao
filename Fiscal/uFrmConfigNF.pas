unit uFrmConfigNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadPadraoEmpFiscal, FMTBcd, StdCtrls, CGroupBox, CFind, SqlExpr,
  DB, Provider, DBClient, ActnList, ImgList, CLookUp, Mask, DBCtrls, CDBEdit,
  CLabel, Buttons, CBitBtn, ExtCtrls, CPanelGradient, ComCtrls, CPageControl,
  Grids, DBGrids, CDBGrid, DBXCommon, CDBCheckBox, AppEvnts, System.Actions,
  System.ImageList;

type
  TFrmConfigNF = class(TFrmCadPadraoEmpFiscal)
    FindSerie: TCFind;
    CGroupBox1: TCGroupBox;
    LookDocSerie: TCLookUp;
    DBEidDocSerie: TCDBEdit;
    CLabel4: TCLabel;
    CBitBtn1: TCBitBtn;
    CGroupBox2: TCGroupBox;
    DBEidConfigNF: TCDBEdit;
    dsGrid: TDataSource;
    cdsGrid: TClientDataSet;
    dspGrid: TDataSetProvider;
    sdsGrid: TSQLDataSet;
    DBGrid: TCDBGrid;
    FindConfigNF: TCFind;
    procedure FindSerieClose(Sender: TObject);
    procedure FindConfigNFClose(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridColEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEidDocSerieExit(Sender: TObject);
  private
    { Private declarations }
    FOriginalOptions : TDBGridOptions;
  public
    { Public declarations }
  end;

var
  FrmConfigNF: TFrmConfigNF;

implementation

uses uFrmPrincipal, uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmConfigNF.actSalvarExecute(Sender: TObject);
begin
  GravaChave(0, '', nil);
  inherited;
end;

procedure TFrmConfigNF.DBEidDocSerieExit(Sender: TObject);
var
DocSerie : string;
begin
  inherited;
  if ( (DBEidDocSerie.Text = '%') or (DBEidDocSerie.Text = ',') ) then
    DBEidDocSerie.SetFocus
  else
    if (trim(DBEidDocSerie.Text) <> '') then
    begin
      DocSerie := DBEidDocSerie.Text;
      with (FrmPrincipal.ExecutaSQLRet([DBEidEmpresa,DBEidCadEmpresa,DBEidDocSerie],'spRetConfigNF',''))do
      begin
        if (trim(FieldByName('msg').AsString) = 'OK') then
        begin
          // Adicionar o relacionamento com as outras chaves da table


            cdsPadrao.Active := false;
            cdsPadrao.CommandText := 'SELECT * FROM ConfigNF WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                     '   AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                                     '   AND idDocSerie = ' + quotedstr(DocSerie) +
                                     '   AND idConfigNF = ' + FieldByName('idConfigNF').AsString;
            cdsPadrao.Active :=true;

          // Adicionar o relacionamento com as outras chaves da table menos com a descCampo
          cdsGrid.Active:=False;
          cdsGrid.CommandText:='SELECT * FROM ConfigNFItem WHERE idEmpresa = ' + DBEidEmpresa.Text +
                                   '   AND idCadEmpresa = ' + DBEidCadEmpresa.Text +
                                   '   AND idDocSerie = ' + quotedstr(DocSerie) +
                                   '   AND idConfigNF = ' + FieldByName('idConfigNF').AsString;
          cdsGrid.Active:=True;

        end;
      end;
    end;
    if not (cdsPadrao.IsEmpty) then
    begin
       if not (cdsPadrao.State in [dsInsert,dsEdit]) then
          cdsPadrao.Edit;
    end;
end;

procedure TFrmConfigNF.DBGridCellClick(Column: TColumn);
begin
  inherited;
  try
    if Column.Index = 0 then
    begin
      with cdsGrid do
      begin
        if IsEmpty then
          exit;
        Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
        Edit;
        if FieldByName('imprime').AsString = 'S' then
          FieldByName('imprime').AsString := 'N'
        else
          FieldByName('imprime').AsString := 'S';
        Post;
        DBGrid.Refresh;
      end; //fim do with cdsGrid do
    end //fim do if Column.Index = 0 then
    else
    begin
      Self.DBGrid.Options := Self.FOriginalOptions;
      if (Column.Index in [2,3]) then
        Self.DBGrid.Options := Self.DBGrid.Options + [dgEditing];
    end;
    except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      frmPrincipal.erro := 1;
    end;
  end;
end;


procedure TFrmConfigNF.DBGridColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid.SelectedIndex > 0 then
    Self.DBGrid.Options := Self.FOriginalOptions;
end;

procedure TFrmConfigNF.DBGridDrawColumnCell(Sender: TObject;
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
  if cdsGrid.FieldByName('imprime').Value = 'S' then
    marca := true;

  if (Column.Index = 0) then
  begin
    //CheckBox
    Self.DBGrid.Canvas.FillRect(Rect);
    CheckBoxRectangle.Left := Rect.Left + 2;
    CheckBoxRectangle.Right := Rect.Right - 2;
    CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Self.DBGrid.Canvas.Handle, CheckBoxRectangle, DFC_BUTTON, CtrlState[marca]);
  end;
end;

procedure TFrmConfigNF.FindConfigNFClose(Sender: TObject);
begin
  inherited;
  if trim(FindConfigNF.Value) <> '' then
  begin
    cdsPadrao.Edit;
    cdsPadrao.FieldByName('idDocSerie').AsString := FindConfigNF.Value;
    DBEidDocSerieExit(DBEidDocSerie);
  end;
end;

procedure TFrmConfigNF.FindSerieClose(Sender: TObject);
begin
  inherited;
  if trim(FindSerie.Value) <> '' then
  begin
    cdsPadrao.Edit;
    cdsPadrao.FieldByName('idDocSerie').AsString := FindSerie.Value;
    DBEidDocSerieExit(DBEidDocSerie);
  end;
end;

procedure TFrmConfigNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmConfigNF := nil;
end;

procedure TFrmConfigNF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLength(Tabelas, 2);
  Tabelas[0] := cdsPadrao;
  Tabelas[1] := cdsGrid;
  tab_chave := 'ConfigNF';

  SetLength(chave, 3);
  chave[0] := DBEidConfigNF;
  chave[1] := DBEidEmpresa;
  chave[2] := DBEidCadEmpresa;
  chave[3] := DBEidDocSerie;

  foco := DBEidDocSerie;
  width := 575;
  height := 457;
  FindPesquisa := FindConfigNF;
end;

procedure TFrmConfigNF.FormShow(Sender: TObject);
begin
  inherited;
  Self.FOriginalOptions := Self.DBGrid.Options;
  Self.DBGrid.Options := Self.DBGrid.Options - [dgEditing];
end;

end.
