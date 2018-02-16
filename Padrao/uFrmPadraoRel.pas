unit uFrmPadraoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CLabel, ImgList, StdActns,
  CActionList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ComCtrls, CStatusBar,
  EditAlign, CDBEdit, CBitBtn, CDBCheckBox, ActnList, DB, DBClient, Provider, Buttons,
  uClasses, CPanelGradient, frxClass, frxDBSet, CLookUp,
  ClipBrd, CEdit,
  System.Actions, System.ImageList, frxExportText, frxExportRTF, frxExportImage,
  frxExportHTML, frxExportCSV, frxExportXLSX, frxExportPDF;

type
  TFrmPadraoRel = class(TForm)
    imgIcones: TImageList;
    Bevel1: TBevel;
    Acao: TActionList;
    actFechar: TAction;
    actGerar: TAction;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    PanBotoes: TCPanelGradient;
    BtnPesquisar: TCBitBtn;
    BtnGerar: TCBitBtn;
    BtnFechar: TCBitBtn;
    frxDataset: TfrxDBDataset;
    dsPadrao: TDataSource;
    cdsPadrao: TClientDataSet;
    frxHTMLExport1: TfrxHTMLExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRTFExport1: TfrxRTFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    procedure FormShow(Sender: TObject);
    procedure parametrorel;
    procedure GeraRelatorio(rel : string);
    procedure actGerarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Formulario : TForm;
    proc, tabela, relatorio, ordem : string;
    parametro : array of TObject;
    foco : TCDBEdit;
  end;

var
  FrmPadraoRel: TFrmPadraoRel;

implementation

uses uDmPadrao, uFuncao;

{$R *.dfm}

procedure TFrmPadraoRel.GeraRelatorio(rel : string);
var
  caminho : string;
begin
  with (Formulario.FindComponent('frxRel') as TfrxReport) do
  begin
//    ShowMessage(DmPadrao.RetornaConfig('caminho_rel') + rel);
//    exit;
    if not FileExists(DmPadrao.RetornaConfig('caminho_rel') + rel) then
      exit;
    caminho := DmPadrao.RetornaConfig('caminho_rel') + rel;
//    ShowMessage(caminho);
//    caminho := 'C:\Nilus\Relatorios\' + rel;
    LoadFromFile(caminho);
//    LoadFromFile('c:\RelLivroEntrada.fr3');
    if high(parametro) > 0 then
      parametrorel;
    ShowReport;
  end;
end;

procedure TFrmPadraoRel.parametrorel;
var
  i : integer;
  valor, nome : string;
begin
  //direciona os parametros para serem usados no relatório
  for i := 0 to high(parametro) do
  begin
    valor := '';
    if (parametro[i] is TCDBEdit) then
    begin
      if (not (parametro[i] as TCDBEdit).ReadOnly) and (trim((parametro[i] as TCDBEdit).Text) <> '') then
      begin
         valor := trim((parametro[i] as TCDBEdit).Text);
         nome := (parametro[i] as TCDBEdit).Name;
      end;
    end // fim do  if (parametro[i] is TCDBEdit) then
    else
    if (parametro[i] is TCDBCheckBox) then
    begin
      if (not (parametro[i] as TCDBCheckBox).ReadOnly) and ((parametro[i] as TCDBCheckBox).Checked) then
      begin
         valor := 'X';
         nome := (parametro[i] as TCDBCheckBox).Name;
      end;
    end // fim do  if (parametro[i] is TCDBCheckBox) then
    else
    if (parametro[i] is TCLookUp) then
    begin
      if trim((parametro[i] as TCLookUp).Caption) <> '' then
      begin
         valor := trim((parametro[i] as TCLookUp).Caption);
         nome := (parametro[i] as TCLookUp).Name;
      end;
    end // fim do  if (parametro[i] is TCPanelGradient) then
    else
    if (parametro[i] is TCEdit) then
    begin
      if (not (parametro[i] as TCEdit).ReadOnly) and (trim((parametro[i] as TCEdit).Text) <> '') then
      begin
         valor := trim((parametro[i] as TCEdit).Text);
         nome := (parametro[i] as TCEdit).Name;
      end;
    end; // fim do  if (parametro[i] is TCDBEdit) then


    if (trim(valor) <> '') then
      with (Formulario.FindComponent('frxRel') as TfrxReport) do
      begin
        if Assigned(FindComponent(nome)) then
          if FindComponent(nome) is TFrxMemoView then
          begin
            (FindComponent(nome) as TFrxMemoView).Memo.Clear;
            (FindComponent(nome) as TFrxMemoView).Memo.Add(valor);
          end;
      end;
  end; // fim do for i := 0 to high(parametro) do
end;

procedure TFrmPadraoRel.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPadraoRel.actGerarExecute(Sender: TObject);
var
  i : integer;
  sql, valor : string;
begin
  //se for customizado deverá ser marcado como Tag = 1
  if (Sender as TAction).Tag > 0 then
    exit;
  screen.Cursor := crSqlWait;
  sql := '';
  valor := '';
  with (Formulario.FindComponent('cdsRelatorio') as TClientDataSet) do
  begin
    if proc <> '' then //é procedure
    begin
      sql := 'EXEC ' + proc + ' ';
      for i := 0 to high(parametro) do
      begin
        if not (parametro[i] is TCLookup) then
        begin
          valor := funcao.RetornaValorEField(parametro[i], 3);
          if trim(valor)= '' then
            valor := 'NULL';
          if i = 0 then
            sql := sql + valor
          else
            sql := sql + ', ' + valor;
        end; //fim do if not (parametro[i] is TCLookup) then
      end; //fim do for i := 0 to high(parametro) do
      CommandText := sql;
//      ClipBoard.AsText := sql;
 //     showmessage(sql);
      Active := false;
      Active := true;
      GeraRelatorio(relatorio);
      Active := false;
    end
    else
      if tabela <> '' then
      begin
        Active := false;
        sql := 'SELECT * FROM ' + tabela + ' WHERE 1=1 ';
        for i := 0 to high(parametro) do
        begin
          valor := funcao.RetornaValorEField(parametro[i], 3);
          if trim(funcao.RetornaValorEField(parametro[i], 1)) <> '' then
            sql := sql + ' AND ' + funcao.RetornaValorEField(parametro[i], 2) + ' LIKE ' + valor;
        end;
        CommandText := sql + ordem;
        Active := true;
        GeraRelatorio(relatorio);
//        Active := false;
      end //  fim do if tabela <> '' then
      else
      begin
        Active := false;
        Active := true;
        GeraRelatorio(relatorio);
      end;
  end; //with (Formulario.FindComponent('cdsRelatorio') as TClientDataSet) do
  screen.Cursor := crDefault;
  dmPadrao.dbConexao.CloseDataSets;
end;

procedure TFrmPadraoRel.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i : integer;
begin
  for i := 0 to Formulario.ComponentCount - 1 do
    if (Formulario.Components[i] is TClientDataSet) then
       (Formulario.Components[i] as TClientDataSet).Close;
  dmPadrao.dbConexao.CloseDataSets;
  Action := caFree;
end;

procedure TFrmPadraoRel.FormCreate(Sender: TObject);
begin
  Formulario := (Sender as TForm);
  proc := '';
  tabela := '';
  SetLength(parametro, 1);
  ordem := '';
  cdsPadrao.CreateDataSet;
  cdsPadrao.Append;
end;

procedure TFrmPadraoRel.FormShow(Sender: TObject);
var
  r : TRect;
begin
  //Centralizar formulário
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
//  Left := ((r.right - r.left) - Width) div 2;
//  Top := ((r.bottom - r.top) - Height) div 2;
  Left := r.Left + 10;
  Top := r.top + 10;
  if Assigned(foco) then
    foco.SetFocus;
end;

end.

