inherited FrmRelContrato: TFrmRelContrato
  Caption = 'Relatorio por Contrato'
  ClientHeight = 338
  ClientWidth = 823
  ExplicitWidth = 839
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 823
    Height = 33
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 707
    ExplicitHeight = 33
  end
  inherited Bevel1: TBevel
    Top = 300
    Width = 823
    ExplicitTop = 518
    ExplicitWidth = 831
  end
  inherited Bevel5: TBevel
    Top = 33
    Width = 823
    ExplicitTop = 57
    ExplicitWidth = 831
  end
  inherited CLabel2: TCLabel
    Left = 19
    Top = 11
    ExplicitLeft = 19
    ExplicitTop = 11
  end
  inherited PanBotoes: TCPanelGradient
    Top = 304
    Width = 823
    ExplicitTop = 304
    ExplicitWidth = 823
    inherited BtnFechar: TCBitBtn
      Left = 433
      Top = 6
      ExplicitLeft = 433
      ExplicitTop = 6
    end
  end
  inherited DBEidEmpresa: TCDBEdit
    Left = 66
    Top = 8
    ExplicitLeft = 66
    ExplicitTop = 8
  end
  inherited LookdescCadEmpresa: TCLookUp
    Left = 118
    Top = 8
    Width = 179
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 118
    ExplicitTop = 8
    ExplicitWidth = 179
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 303
    Top = 8
    Width = 205
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 303
    ExplicitTop = 8
    ExplicitWidth = 205
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 8
    Top = 39
    Width = 507
    Height = 63
    TabOrder = 4
    object CLabel1: TCLabel
      Left = 16
      Top = 15
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel13: TCLabel
      Left = 6
      Top = 37
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato'
      Transparent = True
    end
    object DBEidContratoArm: TCDBEdit
      Left = 55
      Top = 37
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoArm'
      DataSource = dsPadrao
      TabOrder = 0
      OnEnter = DBEidContratoArmEnter
      Find = FindContrato
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp1: TCLookUp
      Left = 115
      Top = 37
      Width = 385
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
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
    object LookClienteFiscal: TCLookUp
      Left = 167
      Top = 12
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
    object DBEidCliente: TCDBEdit
      Left = 55
      Top = 12
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadGeral'
      DataSource = dsPadrao
      TabOrder = 3
      OnKeyDown = DBEidCadGeralKeyDown
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadCliente: TCDBEdit
      Left = 115
      Top = 12
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadAdicional'
      DataSource = dsPadrao
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 560
    Top = 72
  end
  inherited Acao: TActionList
    Left = 528
    Top = 72
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Constraints = False
    Left = 592
    Top = 72
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'SELECT * FROM vRelContratoArm'
    Left = 624
    Top = 72
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 528
    Top = 136
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 560
    Top = 136
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 592
    Top = 136
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 624
    Top = 136
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 528
    Top = 168
  end
  inherited dspLookUp: TDataSetProvider
    Left = 528
    Top = 232
  end
  inherited cdsLookUp: TClientDataSet
    Left = 560
    Top = 232
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 560
    Top = 168
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 592
    Top = 168
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 624
    Top = 168
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 528
    Top = 200
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 560
    Top = 200
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 624
    Top = 200
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 593
    Top = 200
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'idCliente=idCliente'
      'idCadCliente=idCadCliente'
      'descCadCliente=descCadCliente'
      'idContratoArm=idContratoArm'
      'qtProduto=qtProduto'
      'idProduto=idProduto'
      'descProduto=descProduto'
      'vlContratoArm=vlContratoArm'
      'vlFrete=vlFrete'
      'dtRomaneio=dtRomaneio'
      'idRomaneio=idRomaneio'
      'placa=placa'
      'qtProdDesconto=qtProdDesconto'
      'qtPesoLiquido=qtPesoLiquido')
    Left = 560
    Top = 104
  end
  inherited dsPadrao: TDataSource
    Left = 624
    Top = 232
  end
  inherited cdsPadrao: TClientDataSet
    Left = 592
    Top = 232
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidContratoArm: TIntegerField
      FieldName = 'idContratoArm'
    end
    object cdsPadraoidCadCliente: TIntegerField
      FieldName = 'idCadCliente'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidCadAdicional: TSmallintField
      FieldName = 'idCadAdicional'
    end
    object cdsPadraoidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
  end
  inherited dspEmpresa: TDataSetProvider
    Left = 544
    Top = 20
  end
  inherited cdsEmpresa: TClientDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
    Left = 576
    Top = 20
  end
  inherited dsEmpresa: TDataSource
    Left = 608
    Top = 20
  end
  inherited FindEmpresa: TCFind
    Left = 640
    Top = 20
  end
  inherited sdsEmpresa: TSQLDataSet
    CommandText = 'SELECT * FROM vCadEmpresaFiscal'
    DataSource = dsEmpresa
    Left = 512
    Top = 20
  end
  object FindContrato: TCFind
    SelectClause.Strings = (
      
        'SELECT idContratoArm, nrContratoArm, descContratoArm From Contra' +
        'toArm')
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
    Left = 560
    Top = 264
  end
  object frxRel: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 39654.681196828700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      
        'var vlUnitario: extended;                                       ' +
        '                                           '
      'begin'
      
        '  vlUnitario := <frxDataset."qtPesoLiquido">/<frxDataset."vlCont' +
        'ratoArm">'
      '                                                  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnAfterPrint = frxRelAfterPrint
    Left = 600
    Top = 104
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
      PaperHeight = 287.000000000000000000
      PaperSize = 256
      Color = clWindow
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        Height = 27.914987700000000000
        Top = 340.157700000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 5.677180000000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nilus Report ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 26.456692910000000000
          Top = 5.677180000000000000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Vita Sistemas de Informa'#195#167#195#163'o Ltda.')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 700.551640000000000000
          Top = 5.677180000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 26.456692913385800000
          Top = 0.401360000000000000
          Width = 736.629921260000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 124.006379300000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object LookdescCadEmpresa: TfrxMemoView
          Left = 80.503932130000000000
          Top = 75.590551180000000000
          Width = 18.595287600000000000
          Height = 12.434646380000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 26.456692910000000000
          Top = 75.590551180000000000
          Width = 48.000031000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Empresa :')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 219.212732680000000000
          Top = 109.606299210000000000
          Width = 38.740182500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Produto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo1: TfrxMemoView
          Left = 11.338582680000000000
          Top = 28.346456690000000000
          Width = 771.023646460000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Relatorio por Contrato')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 26.456692910000000000
          Top = 93.354330710000000000
          Width = 39.496088500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cliente:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 69.165342130000000000
          Top = 93.354330710000000000
          Width = 20.031493620000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idCliente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 122.570157900000000000
          Top = 93.354330710000000000
          Width = 175.407987300000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descCadCliente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 260.636388800000000000
          Top = 109.606299210000000000
          Width = 102.614239500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descProduto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 105.486682300000000000
          Top = 75.590551180000000000
          Width = 308.674215100000000000
          Height = 12.434646380000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descCadEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 26.456692910000000000
          Top = 124.006379300000000000
          Width = 732.094961000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo29: TfrxMemoView
          Left = 26.456692910000000000
          Top = 109.606299210000000000
          Width = 42.529839300000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Contrato')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 73.647934320000000000
          Top = 109.606299210000000000
          Width = 127.082911300000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idContratoArm"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 544.252320000000000000
          Top = 109.606299210000000000
          Width = 27.401592500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 574.488560000000000000
          Top = 109.606299210000000000
          Width = 65.196892500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."vlContratoArm"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Left = 661.417750000000000000
          Top = 109.606299210000000000
          Width = 31.181122500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Frete:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Left = 699.213050000000000000
          Top = 109.606299210000000000
          Width = 57.637832500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."vlFrete"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Top = 93.354330708661400000
          Width = 16.251963620000000000
          Height = 11.338582677165400000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idCadCliente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 377.953000000000000000
          Top = 109.606370000000000000
          Width = 57.637832500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Qt. Produto:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 438.425480000000000000
          Top = 109.606370000000000000
          Width = 87.874072500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."qtProduto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object Band4: TfrxMasterData
        Height = 15.118110240000000000
        Top = 241.889920000000000000
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 26.456692910000000000
          Width = 62.362214490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."dtRomaneio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 109.606370000000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idRomaneio"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 192.756030000000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."placa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 257.008040000000000000
          Width = 85.039394490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'qtPesoLiquido'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtPesoLiquido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 449.764070000000000000
          Width = 69.921274490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxDataset."qtPesoLiquido">*(<frxDataset."qtPesoLiquido">/<frx' +
              'Dataset."vlContratoArm">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 529.134200000000000000
          Width = 70.412602400000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."qtProdDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 612.283860000000000000
          Width = 66.633072400000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxDataset."qtPesoLiquido">*(<frxDataset."qtPesoLiquido">/<frx' +
              'Dataset."vlContratoArm">)-<frxDataset."qtProdDesconto">'
            ']')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 691.653990000000000000
          Width = 62.853542400000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDataset."qtPesoLiquido">*<frxDataset."vlFrete">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 362.834880000000000000
          Width = 69.921274490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDataset."vlContratoArm"> / <frxDataset."qtProduto">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object Header1: TfrxHeader
        Height = 16.705522600000000000
        Top = 204.094620000000000000
        Width = 793.701300000000000000
        object Shape1: TfrxShapeView
          Left = 26.456692910000000000
          Top = 0.075590599999999990
          Width = 732.812598160000000000
          Height = 18.897650000000000000
          Color = 15790320
          Frame.Color = 15790320
        end
        object Memo34: TfrxMemoView
          Left = 26.456692910000000000
          Top = 1.133858270000000000
          Width = 62.362214490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Dt. Romaneio')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          Left = 536.428730250000000000
          Top = 1.133858270000000000
          Width = 59.074012400000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Impostos')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          Left = 691.653990000000000000
          Top = 1.133858270000000000
          Width = 59.074012400000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Frete')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 109.606370000000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Romaneio')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 192.756030000000000000
          Width = 47.244094490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Placa')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 257.008040000000000000
          Width = 85.039394490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Peso Liquido')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Width = 51.023624490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vl Unitario')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 464.882190000000000000
          Width = 54.803154490000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vl Bruto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 608.504330000000000000
          Width = 70.412602400000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'VL Liquido')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object Footer1: TfrxFooter
        Top = 279.685220000000000000
        Width = 793.701300000000000000
      end
    end
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
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 528
    Top = 265
  end
end
