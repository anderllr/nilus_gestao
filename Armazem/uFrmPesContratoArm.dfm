inherited FrmPesContratoArm: TFrmPesContratoArm
  Caption = 'Pesquisa Contratos de Armazenamento por Cliente'
  ClientHeight = 562
  ClientWidth = 730
  ExplicitWidth = 738
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 87
    Width = 730
    Height = 475
    TabOrder = 2
    ExplicitTop = 87
    ExplicitWidth = 730
    ExplicitHeight = 475
    inherited DBGrid: TCDBGrid
      Width = 726
      Height = 458
      TabStop = False
      Columns = <
        item
          Expanded = False
          FieldName = 'nrContratoArm'
          Title.Caption = 'Numero'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descContratoArm'
          Title.Caption = 'Descri'#231#227'o'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtContratoArm'
          Title.Caption = 'Data'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Produto'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpContratoArm'
          Title.Caption = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stContratoArm'
          Title.Caption = 'Status'
          Width = 80
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 54
    Width = 730
    ExplicitTop = 54
    ExplicitWidth = 730
    inherited BtnFechar: TCBitBtn
      Left = 644
      Top = 6
      ExplicitLeft = 644
      ExplicitTop = 6
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 730
    Height = 54
    TabOrder = 0
    ExplicitWidth = 730
    ExplicitHeight = 54
    object CLabel42: TCLabel
      Left = 32
      Top = 31
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato'
      Transparent = True
    end
    object CLabel3: TCLabel
      Left = 42
      Top = 9
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object DBEidCadGeral: TCDBEdit
      Left = 81
      Top = 6
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadGeral'
      DataSource = dsPadrao
      TabOrder = 0
      OnKeyDown = DBEidCadGeralKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadAdicional: TCDBEdit
      Left = 141
      Top = 6
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadAdicional'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookClienteFiscal: TCLookUp
      Left = 193
      Top = 6
      Width = 286
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idCadGeral'
        'idCadAdicional')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object CLookUp1: TCLookUp
      Left = 141
      Top = 29
      Width = 338
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idContratoArm')
      LookUpKey.Strings = (
        'idContratoArm')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoArm'
      ReturnField = 'descContratoArm'
    end
    object DBEidContratoArm: TCDBEdit
      Left = 81
      Top = 29
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoArm'
      DataSource = dsPadrao
      TabOrder = 3
      OnEnter = DBEidContratoArmEnter
      Find = FindContrato
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM ContratoArm'
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM ContratoArm'
    object cdsGriddescProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'descProduto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'idProduto'
      LookupResultField = 'descProduto'
      KeyFields = 'idProduto'
      Lookup = True
    end
    object cdsGrididContratoArm: TIntegerField
      FieldName = 'idContratoArm'
      Required = True
    end
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
      Required = True
    end
    object cdsGrididCadAdicional: TSmallintField
      FieldName = 'idCadAdicional'
      Required = True
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsGriddescContratoArm: TStringField
      FieldName = 'descContratoArm'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsGriddtContratoArm: TSQLTimeStampField
      FieldName = 'dtContratoArm'
      Required = True
    end
    object cdsGridqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Required = True
      Precision = 10
      Size = 3
    end
    object cdsGridvlContratoArm: TFMTBCDField
      FieldName = 'vlContratoArm'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridobsContratoArm: TStringField
      FieldName = 'obsContratoArm'
      FixedChar = True
      Size = 250
    end
    object cdsGridstContratoArm: TStringField
      FieldName = 'stContratoArm'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsGridnrContratoArm: TStringField
      FieldName = 'nrContratoArm'
      Required = True
      FixedChar = True
    end
    object cdsGridtpContratoArm: TStringField
      FieldName = 'tpContratoArm'
      FixedChar = True
      Size = 15
    end
    object cdsGridvlFrete: TFMTBCDField
      FieldName = 'vlFrete'
      Precision = 19
      Size = 4
    end
  end
  inherited sdsPadrao: TSQLDataSet
    CommandText = 'SELECT * FROM ContratoArm'
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM ContratoArm'
  end
  object FindCliente: TCFind
    SelectClause.Strings = (
      'SELECT idCadGeral, descCadAdicional FROM CadAdicional')
    OrderByClause.Strings = (
      'ORDER BY descCadAdicional')
    FindField = 'descCadAdicional'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCadGeral'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Abrevia'#231#227'o')
    TypeFind = fFindNormal
    Left = 256
    Top = 305
  end
  object FindContrato: TCFind
    SelectClause.Strings = (
      
        'SELECT idContratoArm, nrContratoArm, descContratoArm, vlContrato' +
        'Arm, stContratoArm FROM ContratoArm')
    JoinClause.Strings = (
      
        'WHERE idCadGeral = [DBEidCadGeral] AND idCadAdicional = [DBEidCa' +
        'dAdicional]')
    OrderByClause.Strings = (
      'ORDER BY descContratoArm')
    FindField = 'descContratoArm'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idContratoArm'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Numero'
      'Descri'#231#227'o'
      'Valor'
      'Status')
    TypeFind = fFindNormal
    Left = 256
    Top = 272
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 224
    Top = 336
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspProtudo'
    AfterOpen = cdsPadraoAfterOpen
    Left = 192
    Top = 336
  end
  object dspProtudo: TDataSetProvider
    DataSet = sdsProduto
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 336
  end
  object sdsProduto: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 'SELECT * FROM Produto'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 336
  end
end
