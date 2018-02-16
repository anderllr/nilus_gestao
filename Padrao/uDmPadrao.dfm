object dmPadrao: TdmPadrao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 459
  Width = 744
  object dbConexao: TSQLConnection
    ConnectionName = 'Nilus'
    DriverName = 'MSSQL'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=%.dbo'
      'DriverUnit=DBXMSSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxMSSQLDr' +
        'iver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMSSQLDriver,Version=15.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMSSQL'
      'LibraryName=dbxmss.dll'
      'VendorLib=sqlncli10.dll'
      'VendorLibWin64=sqlncli10.dll'
      'HostName=.\SQLExpress'
      'Database=BDDesenv'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OSAuthentication=False'
      'PrepareSQL=True'
      'User_Name=sa'
      'Password=1'
      'BlobSize=-1'
      'ErrorResourceFile='
      'OS Authentication=False'
      'Prepare SQL=False')
    Left = 32
    Top = 40
  end
  object sdsTabela: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM cadConfigEstoque'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexao
    Left = 136
    Top = 48
  end
  object sdsEmpresa: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM vCadEmpresaContabil'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexao
    Left = 496
    Top = 208
  end
  object sdsParametros: TSQLDataSet
    SchemaName = 'gesys'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexao
    Left = 136
    Top = 96
  end
  object sdsRelatorio: TSQLDataSet
    CommandText = 
      'EXEC spRelAplicacao 1, '#39'01/03/2017'#39', '#39'31/03/2017'#39', 0, NULL, NULL' +
      ', NULL, NULL, '#39'N'#39
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = dbConexao
    Left = 136
    Top = 144
  end
  object dspConfig: TDataSetProvider
    DataSet = sdsConfig
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 208
    Top = 96
  end
  object sdsConfig: TSQLDataSet
    SchemaName = 'gesys'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexao
    Left = 208
    Top = 48
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CadConfig'
    Params = <>
    ProviderName = 'dspConfig'
    Left = 208
    Top = 144
  end
  object cdsEmpresaContabil: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelCabecalho 1,4'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 392
    Top = 209
  end
  object frxEmpresaContabil: TfrxDBDataset
    UserName = 'frxEmpresaContabil'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'descEmpresa=descEmpresa'
      'descAbreviada=descAbreviada'
      'idCnpjCpf=idCnpjCpf'
      'idInscEstadual=idInscEstadual'
      'endereco=endereco'
      'bairro=bairro'
      'complemento=complemento'
      'cep=cep'
      'fones=fones'
      'descCidade=descCidade'
      'imgLogo=imgLogo')
    OpenDataSource = False
    DataSet = cdsEmpresaContabil
    BCDToCurrency = False
    Left = 600
    Top = 209
  end
  object dsTmp: TDataSource
    DataSet = cdsTmp
    Left = 656
    Top = 96
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CadGeral'
    Params = <>
    ProviderName = 'dspTmp'
    Left = 608
    Top = 96
  end
  object dspTmp: TDataSetProvider
    DataSet = sdsTmp
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 552
    Top = 96
  end
  object sdsTmp: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexao
    Left = 496
    Top = 96
  end
  object dspLookup: TDataSetProvider
    DataSet = sdsLookup
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspLookupBeforeApplyUpdates
    Left = 544
    Top = 32
  end
  object sdsLookup: TSQLDataSet
    GetMetadata = False
    CommandText = 'EXEC spRelCabecalho 1,4'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = dbConexao
    Left = 496
    Top = 32
  end
  object dbConexaoNFe: TSQLConnection
    ConnectionName = 'NilusNFe'
    DriverName = 'MSSQL'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'VendorLibWin64=sqlncli10.dll'
      'SchemaOverride=%.dbo'
      'DriverUnit=DBXMSSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxMSSQLDr' +
        'iver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMSSQLDriver,Version=15.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMSSQL'
      'LibraryName=dbxmss.dll'
      'VendorLib=sqlncli10.dll'
      'HostName=.\SQLExpress'
      'Database=BDNFe'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OSAuthentication=False'
      'PrepareSQL=True'
      'User_Name=sa'
      'Password=1'
      'BlobSize=-1'
      'ErrorResourceFile='
      'OS Authentication=False'
      'Prepare SQL=False')
    Left = 40
    Top = 248
  end
  object dsTmpNfe: TDataSource
    DataSet = cdsTmpNfe
    Left = 656
    Top = 152
  end
  object cdsTmpNfe: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CadGeral'
    Params = <>
    ProviderName = 'dspTmpNfe'
    Left = 608
    Top = 152
  end
  object dspTmpNfe: TDataSetProvider
    DataSet = sdsTmpNfe
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 552
    Top = 152
  end
  object sdsTmpNfe: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexaoNFe
    Left = 496
    Top = 152
  end
  object dspConfigNFe: TDataSetProvider
    DataSet = sdsConfigNFe
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 128
    Top = 328
  end
  object sdsConfigNFe: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CONFIG_NFE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexaoNFe
    Left = 128
    Top = 280
  end
  object cdsConfigNFe: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CONFIG_NFE'
    Params = <>
    ProviderName = 'dspConfigNFe'
    Left = 128
    Top = 376
    object cdsConfigNFeCNPJ_EMISSOR: TStringField
      FieldName = 'CNPJ_EMISSOR'
      Required = True
      Size = 14
    end
    object cdsConfigNFeNR_SERIE_CERTIFICADO: TStringField
      FieldName = 'NR_SERIE_CERTIFICADO'
      Required = True
      Size = 250
    end
    object cdsConfigNFeCAMINHO_ARQUIVOS: TStringField
      FieldName = 'CAMINHO_ARQUIVOS'
      Required = True
      Size = 250
    end
    object cdsConfigNFeCAMINHO_LOGOMARCA: TStringField
      FieldName = 'CAMINHO_LOGOMARCA'
      Required = True
      Size = 250
    end
    object cdsConfigNFeDANFE_ORIENTACAO: TStringField
      FieldName = 'DANFE_ORIENTACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsConfigNFeUF_WEBSERVICE: TStringField
      FieldName = 'UF_WEBSERVICE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsConfigNFeTP_AMBIENTE: TStringField
      FieldName = 'TP_AMBIENTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsConfigNFePROXY_HOST: TStringField
      FieldName = 'PROXY_HOST'
      Size = 100
    end
    object cdsConfigNFePROXY_PORTA: TIntegerField
      FieldName = 'PROXY_PORTA'
    end
    object cdsConfigNFePROXY_USUARIO: TStringField
      FieldName = 'PROXY_USUARIO'
      Size = 50
    end
    object cdsConfigNFePROXY_SENHA: TStringField
      FieldName = 'PROXY_SENHA'
    end
    object cdsConfigNFeSERVIDOR_POP: TStringField
      FieldName = 'SERVIDOR_POP'
      Required = True
      Size = 250
    end
    object cdsConfigNFeSERVIDOR_SMTP: TStringField
      FieldName = 'SERVIDOR_SMTP'
      Required = True
      Size = 250
    end
    object cdsConfigNFePORTA: TIntegerField
      FieldName = 'PORTA'
      Required = True
    end
    object cdsConfigNFeUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 100
    end
    object cdsConfigNFeSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 50
    end
    object cdsConfigNFeCONEXAO_SEGURA: TStringField
      FieldName = 'CONEXAO_SEGURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsConfigNFeEMAIL_ORIGEM: TStringField
      FieldName = 'EMAIL_ORIGEM'
      Required = True
      Size = 150
    end
    object cdsConfigNFeASSUNTO_EMAIL: TStringField
      FieldName = 'ASSUNTO_EMAIL'
      Required = True
      Size = 250
    end
    object cdsConfigNFeCORPO_EMAIL: TStringField
      FieldName = 'CORPO_EMAIL'
      Required = True
      Size = 500
    end
    object cdsConfigNFeDANFE_PREVIEW: TStringField
      FieldName = 'DANFE_PREVIEW'
      FixedChar = True
      Size = 1
    end
    object cdsConfigNFeGRID_SEL: TStringField
      FieldName = 'GRID_SEL'
      FixedChar = True
      Size = 1
    end
    object cdsConfigNFeDANFE_VIAS: TStringField
      FieldName = 'DANFE_VIAS'
      FixedChar = True
      Size = 1
    end
    object cdsConfigNFeCAMINHO_BACKUP: TStringField
      FieldName = 'CAMINHO_BACKUP'
      Size = 250
    end
  end
  object dspNotaNFe: TDataSetProvider
    DataSet = sdsNotaNFe
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 328
  end
  object sdsNotaNFe: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CONFIG_NFE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexaoNFe
    Left = 216
    Top = 280
  end
  object cdsNotaNFe: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NOTA_NFE'
    Params = <>
    ProviderName = 'dspNotaNFe'
    Left = 216
    Top = 376
  end
  object dspImpressao: TDataSetProvider
    DataSet = sdsImpressao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 328
  end
  object sdsImpressao: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM NOTA_IMPRESSAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexaoNFe
    Left = 296
    Top = 280
  end
  object cdsImpressao: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NOTA_IMPRESSAO'
    Params = <>
    ProviderName = 'dspImpressao'
    Left = 296
    Top = 376
    object cdsImpressaoCNPJ_EMISSOR: TStringField
      FieldName = 'CNPJ_EMISSOR'
      Required = True
      Size = 14
    end
    object cdsImpressaoNUM_SEQ_NFE: TIntegerField
      FieldName = 'NUM_SEQ_NFE'
      Required = True
    end
    object cdsImpressaoNUM_SERIE_DOCTO_FISCAL: TFMTBCDField
      FieldName = 'NUM_SERIE_DOCTO_FISCAL'
      Required = True
      Precision = 3
      Size = 0
    end
    object cdsImpressaoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Required = True
    end
    object cdsImpressaoVIA: TSmallintField
      FieldName = 'VIA'
    end
  end
  object dspCartaNFe: TDataSetProvider
    DataSet = sdsCartaNFe
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 328
  end
  object sdsCartaNFe: TSQLDataSet
    SchemaName = 'gesys'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexaoNFe
    Left = 376
    Top = 280
  end
  object cdsCartaNFe: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NOTA_CARTACORRECAO'
    Params = <>
    ProviderName = 'dspCartaNFe'
    Left = 376
    Top = 376
  end
  object dspCartaCTe: TDataSetProvider
    DataSet = sdsCartaCTe
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 464
    Top = 328
  end
  object sdsCartaCTe: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTE_CARTACORRECAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexaoNFe
    Left = 464
    Top = 280
  end
  object cdsCartaCTe: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTE_CARTACORRECAO WHERE 1=2'
    Params = <>
    ProviderName = 'dspCartaCTe'
    Left = 464
    Top = 376
    object cdsCartaCTeemit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Required = True
      Size = 14
    end
    object cdsCartaCTeide_serie: TFMTBCDField
      FieldName = 'ide_serie'
      Required = True
      Precision = 3
      Size = 0
    end
    object cdsCartaCTeide_nCT: TFMTBCDField
      FieldName = 'ide_nCT'
      Required = True
      Precision = 9
      Size = 0
    end
    object cdsCartaCTeID_CARTACORRECAO: TSmallintField
      FieldName = 'ID_CARTACORRECAO'
      Required = True
    end
    object cdsCartaCTeCHAVE_CTE: TStringField
      FieldName = 'CHAVE_CTE'
      Size = 44
    end
    object cdsCartaCTeCOD_ORGAO: TSmallintField
      FieldName = 'COD_ORGAO'
    end
    object cdsCartaCTeDESC_ERRO: TStringField
      FieldName = 'DESC_ERRO'
      Size = 1000
    end
    object cdsCartaCTePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object cdsCartaCTeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsCartaCTeST_CARTACORRECAO: TStringField
      FieldName = 'ST_CARTACORRECAO'
      Size = 15
    end
  end
  object dspCartaCTeItem: TDataSetProvider
    DataSet = sdsCartaCTeItem
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 544
    Top = 328
  end
  object sdsCartaCTeItem: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CTE_CARTACORRECAOITEM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConexaoNFe
    Left = 544
    Top = 280
  end
  object cdsCartaCTeItem: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CTE_CARTACORRECAOITEM WHERE 1=2'
    Params = <>
    ProviderName = 'dspCartaCTeItem'
    Left = 544
    Top = 376
    object cdsCartaCTeItememit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Required = True
      Size = 14
    end
    object cdsCartaCTeItemide_serie: TFMTBCDField
      FieldName = 'ide_serie'
      Required = True
      Precision = 3
      Size = 0
    end
    object cdsCartaCTeItemide_nCT: TFMTBCDField
      FieldName = 'ide_nCT'
      Required = True
      Precision = 9
      Size = 0
    end
    object cdsCartaCTeItemID_CARTACORRECAO: TSmallintField
      FieldName = 'ID_CARTACORRECAO'
      Required = True
    end
    object cdsCartaCTeItemgrupoAlterado: TStringField
      FieldName = 'grupoAlterado'
      Required = True
    end
    object cdsCartaCTeItemcampoAlterado: TStringField
      FieldName = 'campoAlterado'
      Required = True
    end
    object cdsCartaCTeItemvalorAlterado: TStringField
      FieldName = 'valorAlterado'
      Required = True
      Size = 500
    end
    object cdsCartaCTeItemnroItemAlterado: TFMTBCDField
      FieldName = 'nroItemAlterado'
      Required = True
      Precision = 2
      Size = 0
    end
  end
  object cdsLog: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Log'
    Params = <>
    ProviderName = 'dspLog'
    Left = 136
    Top = 192
    object cdsLogidLog: TIntegerField
      FieldName = 'idLog'
      Required = True
    end
    object cdsLogidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsLogidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsLogidUsuario: TIntegerField
      FieldName = 'idUsuario'
      Required = True
    end
    object cdsLogidUsuarioGrupo: TIntegerField
      FieldName = 'idUsuarioGrupo'
      Required = True
    end
    object cdsLogdtEvento: TSQLTimeStampField
      FieldName = 'dtEvento'
      Required = True
    end
    object cdsLogtpEvento: TStringField
      FieldName = 'tpEvento'
      Required = True
      Size = 500
    end
    object cdsLognomeTela: TStringField
      FieldName = 'nomeTela'
      Required = True
      Size = 500
    end
    object cdsLognr_documento: TStringField
      FieldName = 'nr_documento'
      Required = True
      Size = 100
    end
  end
  object dspLog: TDataSetProvider
    DataSet = sdsLog
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 192
  end
  object sdsLog: TSQLDataSet
    CommandText = 'SELECT * FROM int_pendencias'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = dbConexao
    Left = 56
    Top = 192
  end
  object sdsIntegracao: TSQLDataSet
    CommandText = 'SELECT * FROM int_pendencias'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = dbConexao
    Left = 216
    Top = 200
  end
  object dspIntegracao: TDataSetProvider
    DataSet = sdsIntegracao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 256
    Top = 200
  end
  object cdsIntegracao: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM int_pendencias'
    Params = <>
    ProviderName = 'dspLog'
    Left = 296
    Top = 200
    object cdsIntegracaoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsIntegracaotablename: TStringField
      FieldName = 'tablename'
      Size = 50
    end
    object cdsIntegracaoprimarykey: TStringField
      FieldName = 'primarykey'
      Size = 200
    end
    object cdsIntegracaovaluesfields: TStringField
      FieldName = 'valuesfields'
      Size = 200
    end
    object cdsIntegracaotype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 1
    end
    object cdsIntegracaostatus: TStringField
      FieldName = 'status'
      Size = 15
    end
  end
end
