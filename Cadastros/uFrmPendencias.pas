unit uFrmPendencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CLookUp, Vcl.Mask, Vcl.DBCtrls, CDBEdit,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, CBitBtn, CLabel, EditAlign, CEdit,
  CGroupBox, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB, CFind,
  Datasnap.DBClient, Vcl.ExtDlgs, cxClasses, cxShellBrowserDialog,
  System.Actions, Vcl.ActnList, Datasnap.Provider, System.StrUtils, AbBase,
  AbBrowse, AbZBrows, AbZipper, FileCtrl;

type
  TFrmImp_Exp_Pendencias = class(TForm)
    Pnl1: TPanel;
    PgControl1: TPageControl;
    Pnl2: TPanel;
    btImportar: TCBitBtn;
    btExportar: TCBitBtn;
    btFechar: TCBitBtn;
    CGroupBox2: TCGroupBox;
    pbProgresso: TProgressBar;
    lblProg: TCLabel;
    lblEmpresa: TCLabel;
    DBEidEmpresa: TCDBEdit;
    LookdescCadEmpresa: TCLookUp;
    LookdescAbreviada: TCLookUp;
    LookCnpjCpf: TCLookUp;
    imgIcones: TImageList;
    imgImgBotoes: TImageList;
    alAcao: TActionList;
    actFechar: TAction;
    actExecutar: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    actNovo: TAction;
    actPesLancamento: TAction;
    actImportar: TAction;
    actExportar: TAction;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaidEmpresa: TIntegerField;
    cdsEmpresaidCadEmpresa: TIntegerField;
    FindEmpresa: TCFind;
    dsEmpresa: TDataSource;
    AbreArq: TOpenTextFileDialog;
    SaveDialog: TSaveDialog;
    dspTmp: TDataSetProvider;
    cdsLookup: TClientDataSet;
    dspLookup: TDataSetProvider;
    AbZipper1: TAbZipper;
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
    procedure TrataEmpresa;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure CompactaArquivos;
    procedure DeletaArquivos(DirName : string);
    procedure btExportarClick(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure ImportaClientes;
    procedure ImportaContaBanco;
    procedure ImportaSafra;
    procedure ImportaProduto;
    procedure ImportaMotorista;
    procedure ImportaRomaneio;
    procedure ImportaRomaneioClassificacao;
    procedure ImportaContratoCompra;
    procedure ImportaContratoCompraParc;
    function ExportaClientes : TStringList;
    function ExportaContaBanco : TStringList;
    function ExportaSafra : TStringList;
    function ExportaProduto : TStringList;
    function ExportaContratoVenda : TStringList;
    function RetornaMedida(Unidade: string): Integer;
    function RetornaUnidade(Unidade: Integer): string;
    function CriarClientDataset: TClientdataset;

  private
    { Private declarations }
  public
    { Public declarations }
    caminho, arqDest, nome, arqZip, DadosNilus : string;
  end;

var
  FrmImp_Exp_Pendencias: TFrmImp_Exp_Pendencias;

implementation

uses
  uFrmPrincipal, uDmPadrao;

{$R *.dfm}

{ TFrmImp_Exp_Pendencias }

procedure TFrmImp_Exp_Pendencias.btExportarClick(Sender: TObject);
begin
  try
    ExportaClientes;
    ExportaContaBanco;
//    ExportaSafra;
//    ExportaProduto;
    ExportaContratoVenda;
    CompactaArquivos;
    DeletaArquivos(ExtractFilePath(Application.ExeName) + 'Pendencias\');

    Application.MessageBox('Exportação finalizada com sucesso!',
   'Application.Title', MB_OK + MB_ICONINFORMATION);
  except
    on E : Exception do
      MessageDlg('Erro ao exportar dados,' +E.Message,  mtError, [mbOK], 0);
  end;
end;

procedure TFrmImp_Exp_Pendencias.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmImp_Exp_Pendencias.btImportarClick(Sender: TObject);
begin
  try
    ImportaClientes;
    ImportaContaBanco;
//    ImportaSafra;
//    ImportaProduto;
    ImportaMotorista;
//    ImportaContratoCompra;
//    ImportaContratoCompraParc;
    ImportaRomaneio;
    ImportaRomaneioClassificacao;
    DeletaArquivos(ExtractFilePath(Application.ExeName) + 'Pendencias\');

    Application.MessageBox('Importação finalizada com sucesso!',
   'Application.Title', MB_OK + MB_ICONINFORMATION);
  except
    on E : Exception do
      MessageDlg('Erro ao importar dados,' +E.Message,  mtError, [mbOK], 0);
  end;
end;

procedure TFrmImp_Exp_Pendencias.CompactaArquivos;
var
  arquivo  : TStrings;
  erro     : byte;
begin
  // Procedure criada para compactar os arquivos exportados
    erro := 0;
  begin
    caminho := ExtractFilePath(Application.ExeName) + 'Pendencias\';
    arqDest := caminho;
    //Compacta o Arquivo
    with ABZipper1 do
    begin
      arqZip := 'DadosNilus' +  formatdatetime('dd', date) + '-' + formatdatetime('mm', date) + '-' + formatdatetime('yyyy', date) + '.zip';
      FileName := arqZip;

      // Create a new archive file
      OpenArchive(arqZip);
      // Set path to folder with some text files to BaseDir
      BaseDirectory := ExtractFileDir(arqDest);
      // Add all files and directories from 'C:\SOURCE_FOLDER' to the archive
      AddFiles('*.*', 0);
      // Close the archive
      CloseArchive;
    end;
  end;
end;

function TFrmImp_Exp_Pendencias.CriarClientDataset: TClientdataset;
begin
  Result := TClientDataset.Create(Self);
  Result.ProviderName := 'dspTmp';
end;

procedure TFrmImp_Exp_Pendencias.DeletaArquivos(DirName: string);
var
FileSearch: TSearchRec;
begin
  try
    FindFirst(DirName +'\*.*', faAnyFile, FileSearch);
    repeat
      DeleteFile(Pchar(DirName +'\' + FileSearch.name));
    until FindNext(FileSearch) <> 0;
    finally
    FindClose(FileSearch);
  end;
end;

function TFrmImp_Exp_Pendencias.ExportaClientes : TStringList;
var
  cdsPendencias, cdsCadGeral, cdsCadAdicional : TClientDataSet;
  expDados                                    : TStringList;
begin
  try
    Result          := TStringList.Create;
    expDados        := TStringList.Create;
    cdsPendencias   := CriarClientDataset;
    cdsCadGeral     := CriarClientDataset;
    cdsCadAdicional := CriarClientDataset;

    cdsPendencias.Close;
    cdsPendencias.CommandText := 'SELECT * FROM int_pendencias WHERE STATUS <> ' + QuotedStr('INTEGRADO') +
                                                               ' AND TABLENAME = ' + QuotedStr('CadAdicional');
    cdsPendencias.Open;

    cdsPendencias.First;
    while not cdsPendencias.Eof do
    begin
      cdsCadGeral.Close;
      cdsCadGeral.CommandText := 'SELECT * FROM CadGeral WHERE idCadGeral = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[0];
      cdsCadGeral.Open;

      cdsCadAdicional.Close;
      cdsCadAdicional.CommandText := 'SELECT * FROM CadAdicional WHERE idCadGeral     = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[0] +
                                                                 ' AND idCadAdicional = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[1];
      cdsCadAdicional.Open;
      cdsCadAdicional.First;
      while not cdsCadAdicional.Eof do
      begin
        //Caminho de exportação
        expDados.Add(cdsCadAdicional.FieldByName('idCadGeral').AsString + ';' +
                     cdsCadAdicional.FieldByName('idCadAdicional').AsString + ';' +
                     cdsCadAdicional.FieldByName('descCadAdicional').AsString + ';' +
                     cdsCadAdicional.FieldByName('descAbreviada').AsString + ';' +
                     cdsCadAdicional.FieldByName('idCnpjCpf').AsString + ';' +
                     cdsCadAdicional.FieldByName('idInscEstadual').AsString + ';' +
                     cdsCadAdicional.FieldByName('idInscMunicipal').AsString + ';' +
                     cdsCadGeral.FieldByName('dtCadastro').AsString + ';' +
                     cdsCadAdicional.FieldByName('endereco').AsString + ';' +
                     cdsCadAdicional.FieldByName('numero').AsString + ';' +
                     cdsCadAdicional.FieldByName('complemento').AsString + ';' +
                     cdsCadAdicional.FieldByName('bairro').AsString + ';' +
                     cdsCadAdicional.FieldByName('idCidade').AsString + ';' +
                     cdsCadAdicional.FieldByName('cep').AsString + ';' +
                     cdsCadAdicional.FieldByName('fone').AsString + ';' +
                     cdsCadAdicional.FieldByName('celular').AsString + ';' +
                     cdsCadAdicional.FieldByName('endereco').AsString + ';' +
                     cdsCadAdicional.FieldByName('numero').AsString + ';' +
                     cdsCadAdicional.FieldByName('complemento').AsString + ';' +
                     cdsCadAdicional.FieldByName('bairro').AsString + ';' +
                     cdsCadAdicional.FieldByName('idCidade').AsString + ';' +
                     cdsCadAdicional.FieldByName('cep').AsString + ';' +
                     cdsCadAdicional.FieldByName('fone').AsString + ';' +
                     cdsCadAdicional.FieldByName('email').AsString
                    );

        dmPadrao.dbConexao.ExecuteDirect('UPDATE int_pendencias SET STATUS = ' + QuotedStr('INTEGRADO') +
                                                            ' WHERE ID     = ' + cdsPendencias.FieldByName('ID').AsString);

        cdsCadAdicional.Next;
      end;

      cdsPendencias.Next;
     end;

    if not (DirectoryExists(ExtractFilePath(Application.ExeName) + '\Pendencias')) then
      forceDirectories(ExtractFilePath(Application.ExeName) + '\Pendencias');

    expDados.SaveToFile(ExtractFilePath(Application.ExeName) + '\Pendencias\Nilus_Clientes.csv');

  finally
    FreeAndNil(expDados);
  end;
end;

function TFrmImp_Exp_Pendencias.ExportaContaBanco: TStringList;
var
  cdsPendencias, cdsContaBanco : TClientDataSet;
  expDados                     : TStringList;
begin
  try
    Result        := TStringList.Create;
    expDados      := TStringList.Create;
    cdsPendencias := CriarClientDataset;
    cdsContaBanco := CriarClientDataset;

    cdsPendencias.Close;
    cdsPendencias.CommandText := 'SELECT * FROM int_pendencias WHERE STATUS <> ' + QuotedStr('INTEGRADO') +
                                                               ' AND TABLENAME = ' + QuotedStr('CadGeralConta');
    cdsPendencias.Open;

    cdsPendencias.First;
    while not cdsPendencias.Eof do
    begin
      cdsContaBanco.Close;
      cdsContaBanco.CommandText := 'SELECT * FROM CadGeralConta WHERE idCadGeral = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[0] +
                                                                ' AND idConta    = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[1];
      cdsContaBanco.Open;
      cdsContaBanco.First;
      while not cdsContaBanco.Eof do
      begin
        //Caminho de exportação
        expDados.Add(cdsContaBanco.FieldByName('idCadGeral').AsString + ';' +
                     cdsContaBanco.FieldByName('idConta').AsString + ';' +
                     cdsContaBanco.FieldByName('descConta').AsString + ';' +
                     cdsContaBanco.FieldByName('idBanco').AsString+ ';' +
                     cdsContaBanco.FieldByName('idAgencia').AsString + ';' +
                     cdsContaBanco.FieldByName('idContaCorrente').AsString + ';' +
                     cdsContaBanco.FieldByName('padrao').AsString
                    );

        dmPadrao.dbConexao.ExecuteDirect('UPDATE int_pendencias SET STATUS = ' + QuotedStr('INTEGRADO') +
                                                            ' WHERE ID     = ' + cdsPendencias.FieldByName('ID').AsString);

        cdsContaBanco.Next;
      end;

      cdsPendencias.Next;
    end;

    if not (DirectoryExists(ExtractFilePath(Application.ExeName) + '\Pendencias')) then
      forceDirectories(ExtractFilePath(Application.ExeName) + '\Pendencias');

    expDados.SaveToFile(ExtractFilePath(Application.ExeName) + '\Pendencias\Nilus_ContaBanco.csv');

  finally
    FreeAndNil(expDados);
  end;
end;

function TFrmImp_Exp_Pendencias.ExportaContratoVenda: TStringList;
var
  cdsPendencias, cdsContratoVenda : TClientDataSet;
  expDados                        : TStringList;
begin
  try
    Result           := TStringList.Create;
    expDados         := TStringList.Create;
    cdsPendencias    := CriarClientDataset;
    cdsContratoVenda := CriarClientDataset;

    cdsPendencias.Close;
    cdsPendencias.CommandText := 'SELECT * FROM int_pendencias WHERE STATUS <> ' + QuotedStr('INTEGRADO') +
                                                               ' AND TABLENAME = ' + QuotedStr('ContratoVenda');
    cdsPendencias.Open;

    cdsPendencias.First;
    while not cdsPendencias.Eof do
    begin
      cdsContratoVenda.Close;
      cdsContratoVenda.CommandText := 'SELECT * FROM ContratoVenda WHERE idEmpresa       = 1 ' +
                                                                   ' AND idCadEmpresa    = 1 ' +
                                                                   ' AND idCliente       = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[2] +
                                                                   ' AND idContratoVenda = ' + QuotedStr(SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[3]);
      cdsContratoVenda.Open;
      cdsContratoVenda.First;
      while not cdsContratoVenda.Eof do
      begin
        //Caminho de exportação
        expDados.Add(cdsContratoVenda.FieldByName('idEmpresa').AsString + ';' +
                     cdsContratoVenda.FieldByName('idCadEmpresa').AsString + ';' +
                     cdsContratoVenda.FieldByName('idCliente').AsString + ';' +
                     cdsContratoVenda.FieldByName('idContratoVenda').AsString + ';' +
                     cdsContratoVenda.FieldByName('dtEmissao').AsString + ';' +
                     cdsContratoVenda.FieldByName('dtEncerramento').AsString + ';' +
                     cdsContratoVenda.FieldByName('idSafra').AsString + ';' +
                     cdsContratoVenda.FieldByName('idProduto').AsString + ';' +
                     cdsContratoVenda.FieldByName('qtProduto').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlProduto').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlTotalProduto').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlImposto').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlFrete').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlContratoVenda').AsString + ';' +
                     cdsContratoVenda.FieldByName('tpCobranca').AsString + ';' +
                     cdsContratoVenda.FieldByName('tpFinanceiro').AsString + ';' +
                     cdsContratoVenda.FieldByName('obsContratoVenda').AsString + ';' +
                     cdsContratoVenda.FieldByName('stContratoVenda').AsString + ';' +
                     cdsContratoVenda.FieldByName('nrOriginal').AsString + ';' +
                     cdsContratoVenda.FieldByName('idProdutor').AsString + ';' +
                     cdsContratoVenda.FieldByName('idRepresentante').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlComissao').AsString + ';' +
                     cdsContratoVenda.FieldByName('tpCalculo').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlContribSocial').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlOutrosImp').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlIcmsFrete').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlIcms').AsString + ';' +
                     cdsContratoVenda.FieldByName('idIndice').AsString + ';' +
                     cdsContratoVenda.FieldByName('qtSacas').AsString + ';' +
                     cdsContratoVenda.FieldByName('qtArrobas').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlSaca').AsString + ';' +
                     cdsContratoVenda.FieldByName('idDescarga').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlIcmsSaca').AsString + ';' +
                     cdsContratoVenda.FieldByName('prIcmsSaca').AsString + ';' +
                     cdsContratoVenda.FieldByName('descEntrega').AsString + ';' +
                     cdsContratoVenda.FieldByName('AFixar').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlFundersulSC').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlTotalFundersul').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlFundemsSC').AsString + ';' +
                     cdsContratoVenda.FieldByName('vlTotalFundems').AsString + ';' +
                     cdsContratoVenda.FieldByName('tpMercado').AsString + ';' +
                     cdsContratoVenda.FieldByName('nrPedido').AsString + ';' +
                     cdsContratoVenda.FieldByName('nrItemPed').AsString
                    );

        dmPadrao.dbConexao.ExecuteDirect('UPDATE int_pendencias SET STATUS = ' + QuotedStr('INTEGRADO') +
                                                            ' WHERE ID     = ' + cdsPendencias.FieldByName('ID').AsString);

        cdsContratoVenda.Next;
      end;

      cdsPendencias.Next;
    end;

    if not (DirectoryExists(ExtractFilePath(Application.ExeName) + '\Pendencias')) then
      forceDirectories(ExtractFilePath(Application.ExeName) + '\Pendencias');

    expDados.SaveToFile(ExtractFilePath(Application.ExeName) + '\Pendencias\Nilus_ContratoVenda.csv');

  finally
    FreeAndNil(expDados);
  end;
end;

function TFrmImp_Exp_Pendencias.ExportaProduto: TStringList;
var
  cdsPendencias, cdsProduto : TClientDataSet;
  expDados                  : TStringList;
begin
  try
    Result        := TStringList.Create;
    expDados      := TStringList.Create;
    cdsPendencias := CriarClientDataset;
    cdsProduto    := CriarClientDataset;

    cdsPendencias.Close;
    cdsPendencias.CommandText := 'SELECT * FROM int_pendencias WHERE STATUS <> ' + QuotedStr('INTEGRADO') +
                                                               ' AND TABLENAME = ' + QuotedStr('Produto');
    cdsPendencias.Open;

    cdsPendencias.First;
    while not cdsPendencias.Eof do
    begin
      cdsProduto.Close;
      cdsProduto.CommandText := 'SELECT * FROM Produto WHERE idProduto = ' + cdsPendencias.FieldByName('VALUESFIELDS').AsString;
      cdsProduto.Open;
      cdsProduto.First;
      while not cdsProduto.Eof do
      begin
        //Caminho de exportação
        expDados.Add(cdsProduto.FieldByName('idProduto').AsString + ';' +
                     cdsProduto.FieldByName('descProduto').AsString + ';' +
                     cdsProduto.FieldByName('descProduto').AsString + ';' +
                     cdsProduto.FieldByName('descProduto').AsString + ';' +
                     cdsProduto.FieldByName('qtSacas').AsString + ';' +
                     RetornaUnidade(cdsProduto.FieldByName('idProdMedida').AsInteger) + ';' +
                     cdsProduto.FieldByName('idProdGrupo').AsString + ';' +
                     cdsProduto.FieldByName('idProdSubGrupo').AsString + ';' +
                     cdsProduto.FieldByName('Ncm').AsString + ';' +
                     cdsProduto.FieldByName('idProdOrigem').AsString + ';' +
                     cdsProduto.FieldByName('stProduto').AsString
                    );

        dmPadrao.dbConexao.ExecuteDirect('UPDATE int_pendencias SET STATUS = ' + QuotedStr('INTEGRADO') +
                                                            ' WHERE ID     = ' + cdsPendencias.FieldByName('ID').AsString);

        cdsProduto.Next;
      end;

      cdsPendencias.Next;
    end;

    if not (DirectoryExists(ExtractFilePath(Application.ExeName) + '\Pendencias')) then
      forceDirectories(ExtractFilePath(Application.ExeName) + '\Pendencias');

    expDados.SaveToFile(ExtractFilePath(Application.ExeName) + '\Pendencias\Nilus_Produto.csv');

  finally
    FreeAndNil(expDados);
  end;
end;

function TFrmImp_Exp_Pendencias.ExportaSafra: TStringList;
var
  cdsPendencias, cdsSafra : TClientDataSet;
  expDados                : TStringList;
begin
  try
    Result        := TStringList.Create;
    expDados      := TStringList.Create;
    cdsPendencias := CriarClientDataset;
    cdsSafra      := CriarClientDataset;

    cdsPendencias.Close;
    cdsPendencias.CommandText := 'SELECT * FROM int_pendencias WHERE STATUS <> ' + QuotedStr('INTEGRADO') +
                                                               ' AND TABLENAME = ' + QuotedStr('Safra');
    cdsPendencias.Open;

    cdsPendencias.First;
    while not cdsPendencias.Eof do
    begin
      cdsSafra.Close;
      cdsSafra.CommandText := 'SELECT * FROM Safra WHERE idEmpresa = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[0] +
                                                   ' AND idSafra   = ' + SplitString(cdsPendencias.FieldByName('VALUESFIELDS').AsString, ';')[1];
      cdsSafra.Open;
      cdsSafra.First;
      while not cdsSafra.Eof do
      begin
        //Caminho de exportação
        expDados.Add(cdsSafra.FieldByName('idSafra').AsString + ';' +
                     cdsSafra.FieldByName('descSafra').AsString + ';' +
                     cdsSafra.FieldByName('dtInicial').AsString + ';' +
                     cdsSafra.FieldByName('stSafra').AsString
                    );

        dmPadrao.dbConexao.ExecuteDirect('UPDATE int_pendencias SET STATUS = ' + QuotedStr('INTEGRADO') +
                                                            ' WHERE ID     = ' + cdsPendencias.FieldByName('ID').AsString);

        cdsSafra.Next;
      end;

      cdsPendencias.Next;
    end;

    if not (DirectoryExists(ExtractFilePath(Application.ExeName) + '\Pendencias')) then
      forceDirectories(ExtractFilePath(Application.ExeName) + '\Pendencias');

    expDados.SaveToFile(ExtractFilePath(Application.ExeName) + '\Pendencias\Nilus_Safra.csv');

  finally
    FreeAndNil(expDados);
  end;
end;

procedure TFrmImp_Exp_Pendencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmImp_Exp_Pendencias.FormShow(Sender: TObject);
begin
  Height := 280;
  Width  := 620;
  TrataEmpresa;
end;

procedure TFrmImp_Exp_Pendencias.ImportaClientes;
var
 arq, colunm                  : TStringList;
 i                            : integer;
 sql, linha                   : string;
 cdsClientes, cdsCadAdicional : TClientDataSet;
begin
  arq             := TStringList.Create;
  colunm          := TStringList.Create;
  cdsClientes     := CriarClientDataset;
  cdsCadAdicional := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_CLIENTES.csv');
{  sql := '';
  pbProgresso.Position := 0;
  pbProgresso.Max := arq.Count -1;}

  for i := 0 to arq.Count -1 do
  begin
{    pbProgresso.Position := i;
    pbProgresso.Refresh;
    lblProg.Caption := 'Importando Dados : ' + IntToStr(i+1) + '/' + IntToStr(arq.Count);
    lblProg.Refresh;  }
    linha := arq.Strings[i];

    cdsClientes.Close;
    cdsClientes.CommandText := 'SELECT * FROM CadGeral WHERE idCadGeral = ' + SplitString(linha, ';')[0];
    cdsClientes.Open;

    if cdsClientes.RecordCount > 0 then
        cdsClientes.Edit
    else
    cdsClientes.Append;

    cdsClientes.FieldByName('idCadGeral').AsString    := SplitString(linha, ';')[0];
    cdsClientes.FieldByName('idCnpjCpf').AsString     := SplitString(linha, ';')[1];
    cdsClientes.FieldByName('dtCadastro').AsString    := SplitString(linha, ';')[2];
    cdsClientes.FieldByName('dtAlteracao').AsString   := SplitString(linha, ';')[3];
    cdsClientes.FieldByName('dtAtualizacao').AsString := SplitString(linha, ';')[4];
    cdsClientes.FieldByName('stCadGeral').AsString    := SplitString(linha, ';')[5];
    cdsClientes.Post;
    cdsClientes.ApplyUpdates(0);

    cdsCadAdicional.Close;
    cdsCadAdicional.CommandText := 'SELECT * FROM CadAdicional WHERE idCadGeral     = ' + SplitString(linha, ';')[0] +
                                                               ' AND idCadAdicional = 1';
    cdsCadAdicional.Open;

    if cdsCadAdicional.RecordCount > 0 then
        cdsCadAdicional.Edit
    else
    cdsCadAdicional.Append;

    cdsCadAdicional.FieldByName('idCadGeral').AsString       := SplitString(linha, ';')[0];
    cdsCadAdicional.FieldByName('idCadAdicional').AsString   := '1';
    cdsCadAdicional.FieldByName('descCadAdicional').AsString := SplitString(linha, ';')[8];
    cdsCadAdicional.FieldByName('descAbreviada').AsString    := SplitString(linha, ';')[9];
    cdsCadAdicional.FieldByName('idCnpjCpf').AsString        := SplitString(linha, ';')[10];
    cdsCadAdicional.FieldByName('idInscEstadual').AsString   := SplitString(linha, ';')[11];
    cdsCadAdicional.FieldByName('endereco').AsString         := SplitString(linha, ';')[12];
    cdsCadAdicional.FieldByName('numero').AsString           := SplitString(linha, ';')[13];
    cdsCadAdicional.FieldByName('complemento').AsString      := SplitString(linha, ';')[14];
    cdsCadAdicional.FieldByName('bairro').AsString           := SplitString(linha, ';')[15];
    cdsCadAdicional.FieldByName('cep').AsString              := SplitString(linha, ';')[16];
    cdsCadAdicional.FieldByName('idCidade').AsString         := SplitString(linha, ';')[17];
    cdsCadAdicional.FieldByName('fone').AsString             := SplitString(linha, ';')[18];
    cdsCadAdicional.FieldByName('fax').AsString              := SplitString(linha, ';')[19];
    cdsCadAdicional.FieldByName('celular').AsString          := SplitString(linha, ';')[20];
    cdsCadAdicional.FieldByName('email').AsString            := SplitString(linha, ';')[21];
    cdsCadAdicional.FieldByName('stCadAdicional').AsString   := SplitString(linha, ';')[22];
    cdsCadAdicional.Post;
    cdsCadAdicional.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaContaBanco;
var
 arq, colunm : TStringList;
 i           : integer;
 sql, linha  : string;
 cdsBanco    : TClientDataSet;
begin
  arq      := TStringList.Create;
  colunm   := TStringList.Create;
  cdsBanco := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_CONTABANCO.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsBanco.Close;
    cdsBanco.CommandText := 'SELECT * FROM CadGeralConta WHERE idCadGeral = ' + SplitString(linha, ';')[0] +
                                                         ' AND idConta    = ' + SplitString(linha, ';')[1];
    cdsBanco.Open;

    if cdsBanco.RecordCount > 0 then
        cdsBanco.Edit
      else
    cdsBanco.Append;

    cdsBanco.FieldByName('idCadGeral').AsString      := SplitString(linha, ';')[0];
    cdsBanco.FieldByName('idConta').AsString         := SplitString(linha, ';')[1];
    cdsBanco.FieldByName('descConta').AsString       := SplitString(linha, ';')[2];
    cdsBanco.FieldByName('idBanco').AsString         := SplitString(linha, ';')[3];
    cdsBanco.FieldByName('idAgencia').AsString       := SplitString(linha, ';')[4];
    cdsBanco.FieldByName('idContaCorrente').AsString := SplitString(linha, ';')[5];
    cdsBanco.FieldByName('stConta').AsString         := SplitString(linha, ';')[6];
    cdsBanco.FieldByName('padrao').AsString          := SplitString(linha, ';')[7];
    cdsBanco.FieldByName('tpConta').AsString         := 'C';
    cdsBanco.Post;
    cdsBanco.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaContratoCompra;
var
 arq, colunm                             : TStringList;
 i                                       : integer;
 sql, linha                              : string;
 cdsContratoCompra, cdsContratoCompraEst : TClientDataSet;
begin
  arq                  := TStringList.Create;
  colunm               := TStringList.Create;
  cdsContratoCompra    := CriarClientDataset;
  cdsContratoCompraEst := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_CONTRATOCOMPRA.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsContratoCompra.Close;
    cdsContratoCompra.CommandText := 'SELECT * FROM ContratoCompra WHERE idEmpresa        = 1' +
                                                                   ' AND idCadEmpresa     = 1' +
                                                                   ' AND idContratoCompra = ' + QuotedStr(SplitString(linha, ';')[2]) +
                                                                   ' AND idFornecedor     = ' + SplitString(linha, ';')[3];
    cdsContratoCompra.Open;

    if cdsContratoCompra.RecordCount > 0 then
        cdsContratoCompra.Edit
      else
    cdsContratoCompra.Append;

    cdsContratoCompra.FieldByName('idEmpresa').AsString         := SplitString(linha, ';')[0];
    cdsContratoCompra.FieldByName('idCadEmpresa').AsString      := SplitString(linha, ';')[1];
    cdsContratoCompra.FieldByName('idContratoCompra').AsString  := SplitString(linha, ';')[2];
    cdsContratoCompra.FieldByName('idFornecedor').AsString      := SplitString(linha, ';')[3];
    cdsContratoCompra.FieldByName('idCadFornecedor').AsString   := SplitString(linha, ';')[4];
    cdsContratoCompra.FieldByName('idSafra').AsString           := SplitString(linha, ';')[5];
    cdsContratoCompra.FieldByName('idProduto').AsString         := SplitString(linha, ';')[6];
    cdsContratoCompra.FieldByName('idTrangenia').AsString       := SplitString(linha, ';')[7];
    cdsContratoCompra.FieldByName('qtSacas').AsString           := SplitString(linha, ';')[8];
    cdsContratoCompra.FieldByName('qtProduto').AsString         := SplitString(linha, ';')[9];
    cdsContratoCompra.FieldByName('dtEmissao').AsString         := SplitString(linha, ';')[10];
    cdsContratoCompra.FieldByName('vlProduto').AsString         := SplitString(linha, ';')[11];
    cdsContratoCompra.FieldByName('vlImposto').AsString         := ifThen(Trim(SplitString(linha, ';')[12]) <> '', SplitString(linha, ';')[12], '0');
    cdsContratoCompra.FieldByName('vlFrete').AsString           := ifThen(Trim(SplitString(linha, ';')[13]) <> '', SplitString(linha, ';')[13], '0');
    cdsContratoCompra.FieldByName('vlTotalProduto').AsString    := SplitString(linha, ';')[14];
    cdsContratoCompra.FieldByName('vlContratoCompra').AsString  := SplitString(linha, ';')[15];
    cdsContratoCompra.FieldByName('tpCobranca').AsString        := SplitString(linha, ';')[16];
    cdsContratoCompra.FieldByName('tpFinanceiro').AsString      := SplitString(linha, ';')[17];
    cdsContratoCompra.FieldByName('stContratoCompra').AsString  := SplitString(linha, ';')[18];
    cdsContratoCompra.FieldByName('idIndice').AsString          := SplitString(linha, ';')[19];
    cdsContratoCompra.FieldByName('obsContratoCompra').AsString := SplitString(linha, ';')[20];
    cdsContratoCompra.FieldByName('idConta').AsString           := SplitString(linha, ';')[21];
    cdsContratoCompra.Post;
    cdsContratoCompra.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaContratoCompraParc;
var
 arq, colunm           : TStringList;
 i                     : integer;
 sql, linha            : string;
 cdsContratoCompraParc : TClientDataSet;
begin
  arq                   := TStringList.Create;
  colunm                := TStringList.Create;
  cdsContratoCompraParc := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_CONTRATOCOMPRAPARC.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsContratoCompraParc.Close;
    cdsContratoCompraParc.CommandText := 'SELECT * FROM ContratoCompraParc WHERE idEmpresa        = 1' +
                                                                           ' AND idCadEmpresa     = 1'+
                                                                           ' AND idContratoCompra = ' + QuotedStr(SplitString(linha, ';')[4]);
    cdsContratoCompraParc.Open;

    if cdsContratoCompraParc.RecordCount > 0 then
        cdsContratoCompraParc.Edit
      else
    cdsContratoCompraParc.Append;

    cdsContratoCompraParc.FieldByName('idEmpresa').AsString        := '1';
    cdsContratoCompraParc.FieldByName('idCadEmpresa').AsString     := '1';
    cdsContratoCompraParc.FieldByName('idFornecedor').AsString     := SplitString(linha, ';')[2];
    cdsContratoCompraParc.FieldByName('idCadFornecedor').AsString  := SplitString(linha, ';')[3];
    cdsContratoCompraParc.FieldByName('idContratoCompra').AsString := SplitString(linha, ';')[4];
    cdsContratoCompraParc.FieldByName('idParcela').AsString        := SplitString(linha, ';')[5];
    cdsContratoCompraParc.FieldByName('dtVencimento').AsString     := SplitString(linha, ';')[6];
    cdsContratoCompraParc.FieldByName('vlParcela').AsString        := SplitString(linha, ';')[7];
    cdsContratoCompraParc.Post;
    cdsContratoCompraParc.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaMotorista;
var
 arq, colunm  : TStringList;
 i            : integer;
 sql, linha   : string;
 cdsCliente, cdsAdicional : TClientDataSet;
begin
  arq          := TStringList.Create;
  colunm       := TStringList.Create;
  cdsCliente   := CriarClientDataset;
  cdsAdicional := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_MOTORISTA.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsCliente.Close;
    cdsCliente.CommandText := 'SELECT * FROM CadGeral WHERE idCadGeral = ' + SplitString(linha, ';')[0]; //CD_MOTORISTA
    cdsCliente.Open;

    if cdsCliente.RecordCount > 0 then
        cdsCliente.Edit
      else
    cdsCliente.Append;

    cdsCliente.FieldByName('idCadGeral').AsString    := SplitString(linha, ';')[0]; // CD_MOTORISTA
    cdsCliente.FieldByName('idCnpjCpf').AsString     := SplitString(linha, ';')[2]; // CPF
    cdsCliente.FieldByName('dtCadastro').AsString    := DateToStr(now);
    cdsCliente.FieldByName('dtAlteracao').AsString   := DateToStr(now);
    cdsCliente.FieldByName('dtAtualizacao').AsString := DateToStr(now);
    cdsCliente.FieldByName('stCadGeral').AsString    := SplitString(linha, ';')[17]; // ST_MOTORISTA
    cdsCliente.Post;
    cdsCliente.ApplyUpdates(0);

    cdsAdicional.Close;
    cdsAdicional.CommandText := 'SELECT * FROM CadAdicional WHERE idCadGeral     = ' + SplitString(linha, ';')[0] + // CD_MOTORISTA
                                                            ' AND idCadAdicional = 1'; // FIXO
    cdsAdicional.Open;

    if cdsAdicional.RecordCount > 0 then
        cdsAdicional.Edit
    else
    cdsAdicional.Append;

    cdsAdicional.FieldByName('idCadGeral').AsString       := SplitString(linha, ';')[0]; // CD_MOTORISTA
    cdsAdicional.FieldByName('idCadAdicional').AsString   := '1'; // FIXO
    cdsAdicional.FieldByName('descCadAdicional').AsString := SplitString(linha, ';')[1]; // DESC_MOTORISTA
    cdsAdicional.FieldByName('descAbreviada').AsString    := SplitString(linha, ';')[1]; // DESC_MOTORISTA
    cdsAdicional.FieldByName('idCnpjCpf').AsString        := SplitString(linha, ';')[2]; // CPF
    cdsAdicional.FieldByName('idInscEstadual').AsString   := '';
    cdsAdicional.FieldByName('idCidade').AsString         := SplitString(linha, ';')[8]; // CD_CIDADE
    cdsAdicional.FieldByName('cep').AsString              := SplitString(linha, ';')[9]; // CEP
    cdsAdicional.FieldByName('endereco').AsString         := SplitString(linha, ';')[10]; // ENDERECO
    cdsAdicional.FieldByName('numero').AsString           := SplitString(linha, ';')[11]; // NUMERO
    cdsAdicional.FieldByName('bairro').AsString           := SplitString(linha, ';')[12]; // BAIRRO
    cdsAdicional.FieldByName('complemento').AsString      := SplitString(linha, ';')[13]; // COMPLEMENTO
    cdsAdicional.FieldByName('fone').AsString             := SplitString(linha, ';')[14]; // FONE
    cdsAdicional.FieldByName('fax').AsString              := SplitString(linha, ';')[15]; // FAX
    cdsAdicional.FieldByName('celular').AsString          := SplitString(linha, ';')[16]; // CELULAR
    cdsAdicional.FieldByName('email').AsString            := '';
    cdsAdicional.FieldByName('stCadAdicional').AsString   := SplitString(linha, ';')[17]; // ST_MOTORISTA
    cdsAdicional.Post;
    cdsAdicional.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaProduto;
var
 arq, colunm : TStringList;
 i           : integer;
 sql, linha  : string;
begin
  arq        := TStringList.Create;
  colunm     := TStringList.Create;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_PRODUTO.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsProduto.Close;
    cdsProduto.CommandText := 'SELECT * FROM Produto WHERE idProduto = ' + SplitString(linha, ';')[0];
    cdsProduto.Open;

    if cdsProduto.RecordCount > 0 then
        cdsProduto.Edit
      else
    cdsProduto.Append;

    cdsProduto.FieldByName('idProduto').AsString       := SplitString(linha, ';')[0];
    cdsProduto.FieldByName('descProduto').AsString     := SplitString(linha, ';')[1];
    cdsProduto.FieldByName('idProdCategoria').AsString := SplitString(linha, ';')[2];
    cdsProduto.FieldByName('idProdMedida').AsInteger   := RetornaMedida(SplitString(linha, ';')[3]);
    cdsProduto.FieldByName('idProdSubGrupo').AsString  := SplitString(linha, ';')[4];
    cdsProduto.FieldByName('dtCadastro').AsString      := SplitString(linha, ';')[5];
    cdsProduto.FieldByName('qtSacas').AsString         := SplitString(linha, ';')[6];
    cdsProduto.FieldByName('idProdGrupo').AsString     := SplitString(linha, ';')[7];
    cdsProduto.FieldByName('Ncm').AsString             := SplitString(linha, ';')[8];
    cdsProduto.FieldByName('idProdOrigem').AsString    := SplitString(linha, ';')[9];
    cdsProduto.FieldByName('producao').AsString        := SplitString(linha, ';')[10];
    cdsProduto.FieldByName('stProduto').AsString       := SplitString(linha, ';')[11];
    cdsProduto.FieldByName('locacao').AsString         := '';
    cdsProduto.Post;
    cdsProduto.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaRomaneio;
var
 arq, colunm : TStringList;
 i           : integer;
 sql, linha  : string;
 cdsRomaneio : TClientDataSet;
begin
  arq         := TStringList.Create;
  colunm      := TStringList.Create;
  cdsRomaneio := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_ROMANEIO.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsRomaneio.Close;
    cdsRomaneio.CommandText := 'SELECT * FROM Romaneio WHERE idEmpresa    = ' + SplitString(linha, ';')[0] +
                                                       ' AND idCadEmpresa = ' + SplitString(linha, ';')[1] +
                                                       ' AND idRomaneio   = ' + SplitString(linha, ';')[2];
    cdsRomaneio.Open;

    if cdsRomaneio.RecordCount > 0 then
        cdsRomaneio.Edit
      else
    cdsRomaneio.Append;

    cdsRomaneio.FieldByName('idEmpresa').AsString          := SplitString(linha, ';')[0];
    cdsRomaneio.FieldByName('idCadEmpresa').AsString       := SplitString(linha, ';')[1];
    cdsRomaneio.FieldByName('idRomaneio').AsString         := SplitString(linha, ';')[2];
    cdsRomaneio.FieldByName('idArmOperacao').AsString      := SplitString(linha, ';')[3];
    cdsRomaneio.FieldByName('idRomaneioArm').AsString      := SplitString(linha, ';')[4];
    cdsRomaneio.FieldByName('dtRomaneio').AsString         := SplitString(linha, ';')[5];
    cdsRomaneio.FieldByName('idArmazem').AsString          := SplitString(linha, ';')[6];
    cdsRomaneio.FieldByName('idProdDeposito').AsString     := SplitString(linha, ';')[7];
    cdsRomaneio.FieldByName('idMotorista').AsString        := SplitString(linha, ';')[8];
    cdsRomaneio.FieldByName('placa').AsString              := SplitString(linha, ';')[9];
    cdsRomaneio.FieldByName('descMotorista').AsString      := SplitString(linha, ';')[10];
    cdsRomaneio.FieldByName('idContratoFrete').AsString    := SplitString(linha, ';')[11];
    cdsRomaneio.FieldByName('idProduto').AsString          := SplitString(linha, ';')[12];
    cdsRomaneio.FieldByName('idVariedade').AsString        := SplitString(linha, ';')[13];
    cdsRomaneio.FieldByName('idSafra').AsString            := SplitString(linha, ';')[14];
    cdsRomaneio.FieldByName('idResultado').AsString        := SplitString(linha, ';')[15];
    cdsRomaneio.FieldByName('idCliente').AsString          := SplitString(linha, ';')[16];
    cdsRomaneio.FieldByName('idContratoVenda').AsString    := SplitString(linha, ';')[17];
    cdsRomaneio.FieldByName('qtPesoBruto').AsString        := SplitString(linha, ';')[18];
    cdsRomaneio.FieldByName('qtPesoTara').AsString         := SplitString(linha, ';')[19];
    cdsRomaneio.FieldByName('qtPesoProduto').AsString      := SplitString(linha, ';')[20];
    cdsRomaneio.FieldByName('qtPesoDesconto').AsString     := SplitString(linha, ';')[21];
    cdsRomaneio.FieldByName('qtPesoLiquido').AsString      := SplitString(linha, ';')[22];
    cdsRomaneio.FieldByName('obsRomaneio').AsString        := SplitString(linha, ';')[23];
    cdsRomaneio.FieldByName('stRomaneio').AsString         := SplitString(linha, ';')[24];
    cdsRomaneio.FieldByName('vlIcms').AsString             := SplitString(linha, ';')[25];
    cdsRomaneio.FieldByName('vlIcmsFrete').AsString        := SplitString(linha, ';')[26];
    cdsRomaneio.FieldByName('vlOutrosImp').AsString        := SplitString(linha, ';')[27];
    cdsRomaneio.FieldByName('vlContribSocial').AsString    := SplitString(linha, ';')[28];
    cdsRomaneio.FieldByName('vlLiquido').AsString          := SplitString(linha, ';')[29];
    cdsRomaneio.FieldByName('vlUnitario').AsString         := SplitString(linha, ';')[30];
    cdsRomaneio.FieldByName('vlTotal').AsString            := SplitString(linha, ';')[31];
    cdsRomaneio.FieldByName('idProdutor').AsString         := SplitString(linha, ';')[32];
    cdsRomaneio.FieldByName('idCadEmpresaFilial').AsString := SplitString(linha, ';')[33];
    cdsRomaneio.FieldByName('tpContratoFrete').AsString    := SplitString(linha, ';')[34];
    cdsRomaneio.FieldByName('vlFrete').AsString            := SplitString(linha, ';')[35];
    cdsRomaneio.FieldByName('idNF').AsString               := SplitString(linha, ';')[36];
    cdsRomaneio.FieldByName('nrCartaFrete').AsString       := SplitString(linha, ';')[37];
    cdsRomaneio.FieldByName('dtEntrega').AsString          := SplitString(linha, ';')[38];
    cdsRomaneio.FieldByName('dtRecebimento').AsString      := SplitString(linha, ';')[39];
    cdsRomaneio.FieldByName('idDocSerie').AsString         := 'NFS';
    cdsRomaneio.FieldByName('vlFreteTotal').AsString       := SplitString(linha, ';')[41];
    cdsRomaneio.FieldByName('vlAdiantamento').AsString     := SplitString(linha, ';')[42];
    cdsRomaneio.FieldByName('vlSeguro').AsString           := SplitString(linha, ';')[43];
    cdsRomaneio.FieldByName('vlTarifaClassif').AsString    := SplitString(linha, ';')[44];
    cdsRomaneio.Post;
    cdsRomaneio.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaRomaneioClassificacao;
var
 arq, colunm      : TStringList;
 i                : integer;
 sql, linha       : string;
 cdsRomaneioClass : TClientDataSet;
begin
  arq              := TStringList.Create;
  colunm           := TStringList.Create;
  cdsRomaneioClass := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_ROMANEIOCLASSIFICACAO.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsRomaneioClass.Close;
    cdsRomaneioClass.CommandText := 'SELECT * FROM RomaneioClassificacao WHERE idEmpresa    = ' + SplitString(linha, ';')[13] +
                                                                         ' AND idCadEmpresa = ' + SplitString(linha, ';')[16] +
                                                                         ' AND idRomaneio   = ' + SplitString(linha, ';')[0] +
                                                                         ' AND idDesconto   = ' + SplitString(linha, ';')[2];
    cdsRomaneioClass.Open;

    if cdsRomaneioClass.RecordCount > 0 then
        cdsRomaneioClass.Edit
    else
    cdsRomaneioClass.Append;

    cdsRomaneioClass.FieldByName('idEmpresa').AsString    := SplitString(linha, ';')[13];
    cdsRomaneioClass.FieldByName('idCadEmpresa').AsString := SplitString(linha, ';')[16];
    cdsRomaneioClass.FieldByName('idRomaneio').AsString   := SplitString(linha, ';')[0];
    cdsRomaneioClass.FieldByName('idDesconto').AsString   := SplitString(linha, ';')[2];
    cdsRomaneioClass.FieldByName('prDesconto').AsString   := ifThen(Trim(SplitString(linha, ';')[3]) <> '', SplitString(linha, ';')[3], '0');
    cdsRomaneioClass.FieldByName('qtDesconto').AsString   := ifThen(Trim(SplitString(linha, ';')[4]) <> '', SplitString(linha, ';')[4], '0');
    cdsRomaneioClass.FieldByName('prMedido').AsString     := SplitString(linha, ';')[5];
    cdsRomaneioClass.FieldByName('qtDestino').AsString    := SplitString(linha, ';')[27];
    cdsRomaneioClass.Post;
    cdsRomaneioClass.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

procedure TFrmImp_Exp_Pendencias.ImportaSafra;
var
 arq, colunm : TStringList;
 i           : integer;
 sql, linha  : string;
 cdsSafra    : TClientDataSet;
begin
  arq      := TStringList.Create;
  colunm   := TStringList.Create;
  cdsSafra := CriarClientDataset;

  arq.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Pendencias\ARMAZEM_SAFRA.csv');

  for i := 0 to arq.Count -1 do
  begin
    linha := arq.Strings[i];

    cdsSafra.Close;
    cdsSafra.CommandText := 'SELECT * FROM Safra WHERE idSafra = ' + SplitString(linha, ';')[1];
    cdsSafra.Open;

    if cdsSafra.RecordCount > 0 then
        cdsSafra.Edit
      else
    cdsSafra.Append;

    cdsSafra.FieldByName('idEmpresa').AsString := '1';
    cdsSafra.FieldByName('idSafra').AsString   := SplitString(linha, ';')[1];
    cdsSafra.FieldByName('descSafra').AsString := SplitString(linha, ';')[2];
    cdsSafra.FieldByName('dtInicial').AsString := SplitString(linha, ';')[3];
    cdsSafra.FieldByName('stSafra').AsString   := SplitString(linha, ';')[4];
    cdsSafra.Post;
    cdsSafra.ApplyUpdates(0);

    colunm.Clear;
  end;
end;

function TFrmImp_Exp_Pendencias.RetornaMedida(Unidade: string): Integer;
var
cdsMedida : TClientDataSet;
begin
  // Retorna o idProdMedida para ser inserido na tabela de produto
  cdsMedida := CriarClientDataset;
  cdsMedida.Close;
  cdsMedida.CommandText := 'SELECT * FROM ProdMedida WHERE descAbreviada = ' + QuotedStr(Unidade);
  cdsMedida.Open;
  Result := cdsMedida.FieldByName('idProdMedida').AsInteger;
  FreeAndNil(cdsMedida);
end;

function TFrmImp_Exp_Pendencias.RetornaUnidade(Unidade: Integer): string;
var
cdsUnidade : TClientDataSet;
begin
  // Retorna a Unidade para ser inserido na tabela de produto
  cdsUnidade := CriarClientDataset;
  cdsUnidade.Close;
  cdsUnidade.CommandText := 'SELECT * FROM ProdMedida WHERE idProdMedida = ' + IntToStr(Unidade);
  cdsUnidade.Open;
  Result := cdsUnidade.FieldByName('descAbreviada').AsString;
  FreeAndNil(cdsUnidade);
end;

procedure TFrmImp_Exp_Pendencias.TrataEmpresa;
begin
  cdsEmpresa.CreateDataSet;
  DBEidEmpresa.Find := nil;
  with cdsEmpresa do
  begin
    Append;
    //AQUI DEVERÁ SER MUDADO PEGANDO A EMPRESA QUE ESTÁ PADRÃO NO SISTEMA
    FieldByName('idEmpresa').Value := FrmPrincipal.idEmpresa;
    FieldByName('idCadEmpresa').Value := FrmPrincipal.idCadEmpresa;
    FindEmpresa.JoinClause.Clear;
    FindEmpresa.JoinClause.Add('WHERE idEmpresa IN (SELECT DISTINCT idEmpresa ' +
                               ' FROM UsuarioEmpresa WHERE idUsuario = ' + frmPrincipal.idUsuario +
                                ' AND acessa = ' + QuotedStr('S') + ')');

    DBEidEmpresa.Find := FindEmpresa;
  end;
end;
end.
