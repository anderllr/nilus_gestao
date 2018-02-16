inherited FrmTabelaDesconto: TFrmTabelaDesconto
  Caption = 'Tabela de Descontos'
  ClientHeight = 317
  ClientWidth = 704
  ExplicitWidth = 720
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 704
    ExplicitWidth = 674
  end
  inherited Bevel1: TBevel
    Top = 279
    Width = 704
    ExplicitTop = 295
    ExplicitWidth = 674
  end
  inherited Bevel5: TBevel
    Width = 704
    ExplicitWidth = 674
  end
  inherited PanBotoes: TCPanelGradient
    Top = 283
    Width = 704
    ExplicitTop = 283
    ExplicitWidth = 704
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 8
    Top = 34
    Width = 476
    Height = 71
    TabOrder = 4
    object CLabel7: TCLabel
      Left = 12
      Top = 19
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
      Transparent = True
    end
    object LblCad: TCLabel
      Left = 17
      Top = 41
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Codigo'
    end
    object DBEidProduto: TCDBEdit
      Left = 56
      Top = 16
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescProduto: TCLookUp
      Left = 116
      Top = 16
      Width = 276
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idProduto')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object LookClienteFiscal: TCLookUp
      Left = 116
      Top = 38
      Width = 276
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idCliente')
      LookUpKey.Strings = (
        'idCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descCadCliente'
    end
    object DBEidCodigo: TCDBEdit
      Left = 56
      Top = 38
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadDesconto'
      DataSource = dsPadrao
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 632
    Top = 40
  end
  inherited Acao: TActionList
    Left = 600
    Top = 40
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Left = 568
    Top = 72
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'Select * from vRelTabDesconto'
    Left = 600
    Top = 72
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 536
    Top = 104
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 568
    Top = 104
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 600
    Top = 104
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 632
    Top = 104
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 536
    Top = 136
  end
  inherited dspLookUp: TDataSetProvider
    Left = 536
    Top = 200
  end
  inherited cdsLookUp: TClientDataSet
    Left = 568
    Top = 200
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 568
    Top = 136
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 600
    Top = 136
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 632
    Top = 136
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 536
    Top = 168
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 568
    Top = 168
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 632
    Top = 168
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 601
    Top = 168
  end
  inherited frxDataset: TfrxDBDataset
    Left = 632
    Top = 72
  end
  inherited dsPadrao: TDataSource
    Left = 632
    Top = 200
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'Select * from vRelTabDesconto'
    Left = 600
    Top = 200
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoprMedido: TFloatField
      FieldName = 'prMedido'
    end
    object cdsPadraoprDesconto: TFloatField
      FieldName = 'prDesconto'
    end
    object cdsPadraodescCadDesconto: TStringField
      FieldName = 'descCadDesconto'
    end
    object cdsPadraoidCadDesconto: TStringField
      FieldName = 'idCadDesconto'
    end
    object cdsPadraodescProduto: TStringField
      FieldName = 'descProduto'
    end
  end
  object FindDesconto: TCFind
    SelectClause.Strings = (
      'SELECT idCadDesconto, descCadDesconto FROM CadDesconto')
    JoinClause.Strings = (
      'WHERE idCadDesconto, descCadDesconto FROM CadDesconto')
    OrderByClause.Strings = (
      'ORDER BY idCadDesconto')
    FindField = 'idCadDesconto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCadDesconto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 537
    Top = 240
  end
  object FindProduto: TCFind
    SelectClause.Strings = (
      'SELECT idProduto, descProduto, stProduto FROM Produto')
    OrderByClause.Strings = (
      'ORDER BY descProduto')
    FindField = 'descProduto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idProduto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 569
    Top = 241
  end
  object frxReport1: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 39504.706582569400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 601
    Top = 240
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 23.881880000000000000
          Width = 786.142240000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tabela de Descontos')
          ParentFont = False
        end
        object descCadEmpresa: TfrxMemoView
          Left = 99.031540000000000000
          Top = 72.015770000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 25.779530000000000000
          Top = 71.795300000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Empresa :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 43.252010000000000000
        Top = 374.173470000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 4.897650000000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Report ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 27.677180000000000000
          Top = 4.897650000000000000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Vita Sistemas de Informa'#195#167#195#163'o Ltda.')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 662.756340000000000000
          Top = 4.897650000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 26.456692910000000000
          Top = 3.401360000000000000
          Width = 733.228346460000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 139.842610000000000000
        Width = 793.701300000000000000
        object Shape1: TfrxShapeView
          Left = 27.456692910000000000
          Top = 3.779527559055120000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Color = 15790320
          Frame.Color = 15790320
        end
        object Memo5: TfrxMemoView
          Left = 31.165430000000000000
          Top = 3.779527560000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Produto:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 245.716637950000000000
          Top = 3.779527560000000000
          Width = 47.480210000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Codigo:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line2: TfrxLineView
          Left = 28.456710000000000000
          Width = 729.448967800000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 80.590582910000000000
          Top = 3.779510470000000000
          Width = 181.039465280000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descProduto"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 291.598581420000000000
          Top = 3.779510470000000000
          Width = 72.141585830000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."descCadDesconto"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779510470000000000
          Width = 15.448635830000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idCadDesconto"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line4: TfrxLineView
          Left = 26.456710000000000000
          Top = 26.456710000000000000
          Width = 733.228497800000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 226.771800000000000000
        Width = 793.701300000000000000
        Condition = 'frxDataset."descCadDesconto"'
        ExpandDrillDown = True
      end
      object MasterData2: TfrxMasterData
        Height = 20.787391820000000000
        Top = 249.448980000000000000
        Width = 793.701300000000000000
        Columns = 3
        ColumnWidth = 200.000000000000000000
        ColumnGap = 10.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 26.456710000000000000
          Top = 1.889754020000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tabela')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 78.078710870000000000
          Top = 1.889754020000000000
          Width = 41.574795830000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Indice')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 133.440800870000000000
          Top = 1.889754020000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Percentual')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897647560000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        Columns = 3
        ColumnWidth = 200.000000000000000000
        ColumnGap = 10.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 25.566929130000000000
          Top = 1.889763780000000000
          Width = 38.590600000000000000
          Height = 15.118120000000000000
          DataField = 'idCadDesconto'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idCadDesconto"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 78.236220472440900000
          Top = 1.889763780000000000
          Width = 41.700645830000000000
          Height = 15.118120000000000000
          DataField = 'prMedido'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."prMedido"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 133.173225910000000000
          Top = 1.889763780000000000
          Width = 56.692910940000000000
          Height = 15.118120000000000000
          DataField = 'prDesconto'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."prDesconto"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
  end
end
