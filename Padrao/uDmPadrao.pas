unit uDmPadrao;

interface

uses
  SysUtils, Classes, DBXCommon, DB, SqlExpr, FMTBcd, Provider, DBClient,
  forms, Controls, dialogs, WideStrings, frxClass, frxDBSet, DBXMSSQL,
  ZAbstractConnection, ZConnection;

type
  TdmPadrao = class(TDataModule)
    dbConexao: TSQLConnection;
    sdsTabela: TSQLDataSet;
    sdsEmpresa: TSQLDataSet;
    sdsParametros: TSQLDataSet;
    sdsRelatorio: TSQLDataSet;
    dspConfig: TDataSetProvider;
    sdsConfig: TSQLDataSet;
    cdsConfig: TClientDataSet;
    cdsEmpresaContabil: TClientDataSet;
    frxEmpresaContabil: TfrxDBDataset;
    dsTmp: TDataSource;
    cdsTmp: TClientDataSet;
    dspTmp: TDataSetProvider;
    sdsTmp: TSQLDataSet;
    dspLookup: TDataSetProvider;
    sdsLookup: TSQLDataSet;
    dbConexaoNFe: TSQLConnection;
    dsTmpNfe: TDataSource;
    cdsTmpNfe: TClientDataSet;
    dspTmpNfe: TDataSetProvider;
    sdsTmpNfe: TSQLDataSet;
    dspConfigNFe: TDataSetProvider;
    sdsConfigNFe: TSQLDataSet;
    cdsConfigNFe: TClientDataSet;
    dspNotaNFe: TDataSetProvider;
    sdsNotaNFe: TSQLDataSet;
    cdsNotaNFe: TClientDataSet;
    dspImpressao: TDataSetProvider;
    sdsImpressao: TSQLDataSet;
    cdsImpressao: TClientDataSet;
    cdsImpressaoCNPJ_EMISSOR: TStringField;
    cdsImpressaoNUM_SEQ_NFE: TIntegerField;
    cdsImpressaoNUM_SERIE_DOCTO_FISCAL: TFMTBCDField;
    cdsImpressaoDATA_HORA: TSQLTimeStampField;
    cdsImpressaoVIA: TSmallintField;
    cdsConfigNFeCNPJ_EMISSOR: TStringField;
    cdsConfigNFeNR_SERIE_CERTIFICADO: TStringField;
    cdsConfigNFeCAMINHO_ARQUIVOS: TStringField;
    cdsConfigNFeCAMINHO_LOGOMARCA: TStringField;
    cdsConfigNFeDANFE_ORIENTACAO: TStringField;
    cdsConfigNFeUF_WEBSERVICE: TStringField;
    cdsConfigNFeTP_AMBIENTE: TStringField;
    cdsConfigNFePROXY_HOST: TStringField;
    cdsConfigNFePROXY_PORTA: TIntegerField;
    cdsConfigNFePROXY_USUARIO: TStringField;
    cdsConfigNFePROXY_SENHA: TStringField;
    cdsConfigNFeSERVIDOR_POP: TStringField;
    cdsConfigNFeSERVIDOR_SMTP: TStringField;
    cdsConfigNFePORTA: TIntegerField;
    cdsConfigNFeUSUARIO: TStringField;
    cdsConfigNFeSENHA: TStringField;
    cdsConfigNFeCONEXAO_SEGURA: TStringField;
    cdsConfigNFeEMAIL_ORIGEM: TStringField;
    cdsConfigNFeASSUNTO_EMAIL: TStringField;
    cdsConfigNFeCORPO_EMAIL: TStringField;
    cdsConfigNFeDANFE_PREVIEW: TStringField;
    cdsConfigNFeGRID_SEL: TStringField;
    cdsConfigNFeDANFE_VIAS: TStringField;
    cdsConfigNFeCAMINHO_BACKUP: TStringField;
    dspCartaNFe: TDataSetProvider;
    sdsCartaNFe: TSQLDataSet;
    cdsCartaNFe: TClientDataSet;
    dspCartaCTe: TDataSetProvider;
    sdsCartaCTe: TSQLDataSet;
    cdsCartaCTe: TClientDataSet;
    dspCartaCTeItem: TDataSetProvider;
    sdsCartaCTeItem: TSQLDataSet;
    cdsCartaCTeItem: TClientDataSet;
    cdsCartaCTeemit_CNPJ: TStringField;
    cdsCartaCTeide_serie: TFMTBCDField;
    cdsCartaCTeide_nCT: TFMTBCDField;
    cdsCartaCTeID_CARTACORRECAO: TSmallintField;
    cdsCartaCTeCHAVE_CTE: TStringField;
    cdsCartaCTeCOD_ORGAO: TSmallintField;
    cdsCartaCTeDESC_ERRO: TStringField;
    cdsCartaCTePROTOCOLO: TStringField;
    cdsCartaCTeEMAIL: TStringField;
    cdsCartaCTeST_CARTACORRECAO: TStringField;
    cdsCartaCTeItememit_CNPJ: TStringField;
    cdsCartaCTeItemide_serie: TFMTBCDField;
    cdsCartaCTeItemide_nCT: TFMTBCDField;
    cdsCartaCTeItemID_CARTACORRECAO: TSmallintField;
    cdsCartaCTeItemgrupoAlterado: TStringField;
    cdsCartaCTeItemcampoAlterado: TStringField;
    cdsCartaCTeItemvalorAlterado: TStringField;
    cdsCartaCTeItemnroItemAlterado: TFMTBCDField;
    cdsLog: TClientDataSet;
    dspLog: TDataSetProvider;
    sdsLog: TSQLDataSet;
    cdsLogidLog: TIntegerField;
    cdsLogidEmpresa: TIntegerField;
    cdsLogidCadEmpresa: TIntegerField;
    cdsLogidUsuario: TIntegerField;
    cdsLogidUsuarioGrupo: TIntegerField;
    cdsLogdtEvento: TSQLTimeStampField;
    cdsLogtpEvento: TStringField;
    cdsLognomeTela: TStringField;
    cdsLognr_documento: TStringField;
    sdsIntegracao: TSQLDataSet;
    dspIntegracao: TDataSetProvider;
    cdsIntegracao: TClientDataSet;
    cdsIntegracaoid: TIntegerField;
    cdsIntegracaotablename: TStringField;
    cdsIntegracaoprimarykey: TStringField;
    cdsIntegracaovaluesfields: TStringField;
    cdsIntegracaotype: TStringField;
    cdsIntegracaostatus: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
    function RetornaConfig(campo : string): string;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspLookUpBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPadrao: TdmPadrao;

implementation

{$R *.dfm}
procedure TdmPadrao.DataModuleDestroy(Sender: TObject);
begin
  dbConexao.CloseDataSets;
  dbConexao.Connected := false;;
end;

procedure TdmPadrao.dspLookUpBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dbConexao.CloseDataSets;
end;

function TdmPadrao.RetornaConfig(campo : string): string;
begin
  with cdsConfig do
  begin
    Active := false;
    Active := true;
    if FieldByName(campo).IsNull then
      Result := ''
    else
      Result := FieldByName(campo).AsString;
    Active := false;
  end;
end;

procedure TdmPadrao.DataModuleCreate(Sender: TObject);
begin
  try
    dbconexao.Connected := false;
    dbconexao.LoadParamsFromIniFile('dbxconnections.ini');
    dbconexao.Connected := true;
  except
    on E: Exception do
    begin
      messagedlg(E.Message, mterror, [mbok], E.HelpContext);
      Application.Terminate;
    end;
  end;

  //agora tenta fazer o do nfe porém não conecta pois não são todos que tem
  if FileEXists('dbxconnectionsNFe.ini') then
  begin
    dbconexaoNfe.Connected := false;
    dbconexaoNfe.LoadParamsFromIniFile('dbxconnectionsNFe.ini');
  end;
//  dbConexaoNfe.Params.

end;

end.
