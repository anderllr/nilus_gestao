inherited FrmRelTabDesconto: TFrmRelTabDesconto
  Caption = 'Rela'#231#227'o de Descontos'
  ClientHeight = 340
  ClientWidth = 758
  ExplicitWidth = 774
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 758
    ExplicitWidth = 495
  end
  inherited Bevel1: TBevel
    Top = 302
    Width = 758
    ExplicitTop = 111
    ExplicitWidth = 495
  end
  inherited Bevel5: TBevel
    Width = 758
    ExplicitWidth = 495
  end
  inherited PanBotoes: TCPanelGradient
    Top = 306
    Width = 758
    ExplicitTop = 306
    ExplicitWidth = 758
    inherited BtnFechar: TCBitBtn
      Left = 401
      ExplicitLeft = 401
    end
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 8
    Top = 34
    Width = 481
    Height = 71
    TabOrder = 4
    object CLabel7: TCLabel
      Left = 12
      Top = 20
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
      Transparent = True
    end
    object CLabel1: TCLabel
      Left = 5
      Top = 42
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto'
      Transparent = True
    end
    object DBEidProduto: TCDBEdit
      Left = 56
      Top = 17
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 0
      Find = FindProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescProduto: TCLookUp
      Left = 116
      Top = 17
      Width = 271
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
    object DBEidCadDesconto: TCDBEdit
      Left = 56
      Top = 39
      Width = 54
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadDesconto'
      DataSource = dsPadrao
      TabOrder = 2
      Find = FindDesconto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescCadDesconto: TCLookUp
      Left = 116
      Top = 39
      Width = 271
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idCadDesconto')
      LookUpKey.Strings = (
        'idCadDesconto')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'CadDesconto'
      ReturnField = 'descCadDesconto'
    end
    object CBitBtn1: TCBitBtn
      Left = 393
      Top = 16
      Width = 75
      Height = 19
      Caption = '&Produtos'
      TabOrder = 4
      TabStop = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFCFCFFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FBFBFBFFDEDEDEFFAFAEAFFF858587FF707275FF6C7074FF6766
        68FF919192FFCBCACAFFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00F7F7
        F7FFDEDEDEFF838383FF696F74FF8B9399FFAAB5BBFFCAD7DEFFDFEBEFFF8688
        8BFF787879FF595A5BFF646363FFB1B1B1FFEEEEEEFFFEFEFEFFFAFAFAFFE6E6
        E6FFC6C6C6FF808587FFA8B4BBFFB8C6CDFFC6D4DCFFDBEAF0FFEDF6F9FF9094
        96FF8C8D8EFF7D7E7EFF686868FF8C8C8CFFCECECEFFF8F8F8FFFEFEFEFFF9F9
        F9FFEFEFEFFF8D9294FFACB9C0FFBCCAD2FFCAD9E1FFDFEDF4FFF0F7FAFF9397
        9AFF8F9191FF808181FF707070FFCBCBCBFFEAEAEAFFFCFCFCFFFF00FF00FF00
        FF00FF00FF00909598FFAFBDC4FFC0CFD7FFCEDEE7FFE4F1F7FFF2F9FBFF979B
        9DFF939494FF838485FF767676FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00909598FFAFBDC4FFC5D4DCFFD3E4EDFFE8F5FAFFF5FAFCFF999E
        A1FF909192FF868888FF777777FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008C9193FF769AA7FF3E97B2FF7ABDD3FFECF8FDFFF6FBFDFF9DA1
        A4FF7B7D7FFF8A8C8CFF787879FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00888B8EFF9CA9AEFF3CA0BDFFCAE2EDFFF0FCFEFFF8FCFDFF9FA3
        A7FF797A7DFF8E9090FF7A7B7BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F3F3F3FF8E9293FFB5C0C4FFB3CED9FFE2F5FCFFF0FAFBFFF3F6F7FFA0A5
        A9FF7C7E81FF919394FF7B7C7DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00959B9FFFAAB6BCFFB3BFC5FFC8D5D9FFE8EEEFFFECEFF0FF9EAD
        A6FF809294FF7A837FFF838786FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009CA4A8FFC8D8E0FFDBEDF4FFEFFDFDFFFDFFFFFFFCFEFFFFA0A8
        AAFF767A7DFF66696AFF7E8081FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009FA8ADFFD4E6F0FFE7FAFEFFF9FFFFFFFFFFFFFFFDFFFFFFB0B7
        BAFFAAAEAFFF989B9CFF7D7F80FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00ABB2B5FFEEFBFDFFFCFEFFFFFEFFFFFFFFFFFFFFFBFBFBFFD0D4
        D6FFD7DEE1FFC1C8CAFF999D9EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F1F1F1FFC2C3C4FFBCBDBEFFBDBEBFFFBCBEBEFFBABBBCFFC2C3
        C3FFC0C1C2FFBFC0C1FFE3E3E3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object CBitBtn2: TCBitBtn
      Left = 393
      Top = 40
      Width = 75
      Height = 19
      Caption = '&Descontos'
      TabOrder = 5
      TabStop = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E3E3E3FFDBDBDBFFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D8D8D8FF3E59B3FF2A4EC2FFC0C0
        C3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6D6D6FF3759B5FF0066FFFF006BFFFF1F51
        C9FFBEBEC2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BFBFC4FF335BB9FF006DFFFF007CFFFF007CFFFF0073
        FFFF1F55CBFFABADB8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BABABFFF1B50CBFF0075FFFF0082FFFF0081FFFF0081FFFF0081
        FFFF007AFFFF1151D8FFA7A8B2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BBBBC0FF2357C6FF0077FFFF0083FFFF0085FFFF0086FFFF0086FFFF0086
        FFFF0086FFFF007BFFFF1356D9FF9EA1AFFFFF00FF00FF00FF00FEFEFEFFB5B6
        BCFF4772D3FF46A3FFFF3AA6FFFF2EA0FFFF1094FFFF008DFFFF008CFFFF008D
        FFFF008CFFFF008AFFFF0081FFFF0553E9FF9599ABFFFAFAFAFFE3E3E6FF5E73
        C3FF5A81E2FF6299E4FF7FC5FFFF81CBFFFF76C6FFFF54B8FFFF1BA0FFFF0093
        FFFF0091FFFF008BFFFF1170E7FF255FE0FF3656CEFFCDCED6FFF8F8F8FFEAEA
        EBFFF1F1F1FF929BAFFF97CDFFFF9EDBFFFF9CD9FFFF97D8FFFF81CFFFFF53BC
        FFFF25AAFFFF098FFFFF677FAEFFF0F0F0FFEBEBECFFF5F5F5FFFF00FF00FF00
        FF00FF00FF009EA4B3FFACD6FFFFB4E2FFFFB2E1FFFFAAE0FFFF9CDCFFFF8BD6
        FFFF6ECCFFFF4CAFFFFF7687AFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009EA4B4FFAED7FFFFB7E1FFFFB4E0FFFFACE2FFFF9DDDFFFF8AD5
        FFFF6FCCFFFF53B3FFFF7487AFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009DA4B3FFAED7FFFFB7E1FFFFB4E0FFFFACE2FFFF9DDCFFFF89D5
        FFFF6ECBFFFF51B2FFFF7487AFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009DA3B3FFAFD7FFFFB8E2FFFFB5E1FFFFADE2FFFF9EDDFFFF8AD5
        FFFF6ECCFFFF52B3FFFF7588B0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00999FAEFFB7DEFFFFC1E8FFFFBFE7FFFFB6E9FFFFA7E5FFFF92DC
        FFFF75D2FFFF57B9FFFF7184ACFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C1C7D7FF86A2E1FF88A4DEFF88A4DEFF85A5DEFF83A6DFFF7DA4
        DFFF75A0DFFF6B9AE3FFA8B2CEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited imgIcones: TImageList
    Left = 553
    Top = 40
  end
  inherited Acao: TActionList
    Left = 521
    Top = 40
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Left = 585
    Top = 40
  end
  inherited cdsRelatorio: TClientDataSet
    Left = 617
    Top = 40
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 521
    Top = 104
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 553
    Top = 104
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 585
    Top = 104
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 617
    Top = 104
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 521
    Top = 136
  end
  inherited dspLookUp: TDataSetProvider
    Top = 200
  end
  inherited cdsLookUp: TClientDataSet
    Top = 200
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 553
    Top = 136
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 585
    Top = 136
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 617
    Top = 136
  end
  inherited frxODSExport1: TfrxODSExport
    Top = 168
  end
  inherited frxODTExport1: TfrxODTExport
    Top = 168
  end
  inherited frxMailExport1: TfrxMailExport
    Top = 168
  end
  inherited frxCSVExport1: TfrxCSVExport
    Top = 168
  end
  inherited frxDataset: TfrxDBDataset
    Left = 585
    Top = 72
  end
  inherited dsPadrao: TDataSource
    Top = 200
  end
  inherited cdsPadrao: TClientDataSet
    Top = 200
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidCadDesconto: TIntegerField
      FieldName = 'idCadDesconto'
    end
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
    ReportOptions.LastChange = 39533.679699247700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 553
    Top = 72
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
      object PageFooter1: TfrxPageFooter
        Height = 43.252010000000000000
        Top = 400.630180000000000000
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
          WordWrap = False
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
          WordWrap = False
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
          WordWrap = False
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
        Height = 127.974885800000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Shape1: TfrxShapeView
          Left = 27.456692910000000000
          Top = 107.074084900000000000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Color = 15790320
          Frame.Color = 15790320
        end
        object Memo5: TfrxMemoView
          Left = 31.165430000000000000
          Top = 108.420531830000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
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
        object Memo8: TfrxMemoView
          Left = 223.039457950000000000
          Top = 108.420531830000000000
          Width = 138.188930000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Desconto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line2: TfrxLineView
          Left = 28.456710000000000000
          Top = 107.074084900000000000
          Width = 729.448967800000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 26.985844200000000000
          Top = 45.051997600000000000
          Width = 733.228346460000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rela'#195#167#195#163'o de Descontos')
          ParentFont = False
          WordWrap = False
        end
        object descCadEmpresa: TfrxMemoView
          Left = 99.560691290000000000
          Top = 85.626827600000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 26.985844200000000000
          Top = 85.406357600000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Empresa :')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 207.874150000000000000
        Width = 793.701300000000000000
        Condition = 'frxDataset."idCadDesconto"'
        ExpandDrillDown = True
        object Memo2: TfrxMemoView
          Left = 31.456692910000000000
          Top = 3.779527560000000000
          Width = 184.818995280000000000
          Height = 15.118110240000000000
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
        object Memo12: TfrxMemoView
          Left = 226.346571420000000000
          Top = 3.779527560000000000
          Width = 298.913385830000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descCadDesconto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Shape2: TfrxShapeView
          Left = 28.456692910000000000
          Top = 24.456710000000000000
          Width = 729.448816460000000000
          Height = 18.897650000000000000
          Color = clInfoBk
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Left = 52.220470000000000000
          Top = 25.346456690000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Tabela')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 166.897650000000000000
          Top = 25.346456690000000000
          Width = 57.393630000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Medido')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 277.952690000000000000
          Top = 25.346456690000000000
          Width = 104.960730000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Desconto Aplicado')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object Band4: TfrxMasterData
        Height = 18.897650000000000000
        Top = 275.905690000000000000
        Width = 793.701300000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 53.031540000000000000
          Top = 1.567100000000000000
          Width = 34.811070000000000000
          Height = 15.118120000000000000
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
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 153.677219050000000000
          Top = 0.795300000000000000
          Width = 68.157355830000000000
          Height = 15.118120000000000000
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
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 299.952755910000000000
          Top = 0.779530000000000000
          Width = 76.897615830000000000
          Height = 15.118120000000000000
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
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 793.701300000000000000
      end
    end
  end
  object FindDesconto: TCFind
    SelectClause.Strings = (
      'SELECT idCadDesconto, descCadDesconto FROM CadDesconto')
    OrderByClause.Strings = (
      'ORDER BY descCadDesconto')
    FindField = 'descCadDesconto'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCadDesconto'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 617
    Top = 72
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
    Left = 649
    Top = 73
  end
end
