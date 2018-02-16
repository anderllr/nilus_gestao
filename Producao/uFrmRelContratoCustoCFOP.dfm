inherited FrmRelContratoCustoCFOP: TFrmRelContratoCustoCFOP
  Caption = 'Custos do Contrato de Venda Por CFOP'
  PixelsPerInch = 96
  TextHeight = 13
  object CGroupBox1: TCGroupBox [9]
    Left = 8
    Top = 37
    Width = 506
    Height = 73
    Caption = 'Param'#234'tros'
    TabOrder = 5
    object CLabel3: TCLabel
      Left = 14
      Top = 23
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data de'
    end
    object CLabel4: TCLabel
      Left = 144
      Top = 23
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object CLabel1: TCLabel
      Left = 29
      Top = 48
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cfop'
    end
    object DBEdtInicial: TCDBEdit
      Left = 58
      Top = 20
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtInicial'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 166
      Top = 20
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtFinal'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEpar: TCDBEdit
      Left = 268
      Top = 20
      Width = 29
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'par'
      DataSource = dsPadrao
      MaxLength = 10
      TabOrder = 2
      Visible = False
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookCfop: TCLookUp
      Left = 126
      Top = 45
      Width = 344
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idCfop')
      LookUpKey.Strings = (
        'idCfop')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Cfop'
      ReturnField = 'descCfop'
    end
    object DBEidCfop: TCDBEdit
      Left = 58
      Top = 45
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCfop'
      DataSource = dsPadrao
      TabOrder = 3
      Find = dmFind.FindCfop
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraopar: TStringField
      FieldName = 'par'
      Size = 1
    end
    object cdsPadraoidLivro: TIntegerField
      FieldName = 'idLivro'
    end
    object cdsPadraomesAno: TStringField
      FieldName = 'mesAno'
      Size = 10
    end
    object cdsPadraonrPagina: TIntegerField
      FieldName = 'nrPagina'
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidCfop: TIntegerField
      FieldName = 'idCfop'
    end
  end
  object frxRel: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 42325.570571215280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDataset."QT_SALDOANTERIOR"> = 0 then'
      '  begin'
      '  if <frxDataset."DESC_ESTOQUE"> <> '#39'SALDO ANTERIOR'#39' then      '
      '    Memo7.Text := '#39#39';'
      'end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 488
    Top = 56
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end
      item
        DataSet = dmPadrao.frxEmpresaContabil
        DataSetName = 'frxEmpresaContabil'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 13.984251970000000000
        ParentFont = False
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        Columns = 1
        ColumnWidth = 188.976377952756000000
        ColumnGap = 11.338582677165400000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Top = 0.377952755905539600
          Width = 30.236240000000000000
          Height = 11.338582677165400000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."idNf"]')
          ParentFont = False
          SuppressRepeated = True
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 33.440940000000000000
          Top = 0.377952755905539600
          Width = 26.456710000000000000
          Height = 11.338582677165400000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."idRomaneio"]')
          ParentFont = False
          SuppressRepeated = True
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 108.472440940000000000
          Top = 0.377952755905539600
          Width = 43.464566930000000000
          Height = 11.338582677165400000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."placa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 189.787570000000000000
          Top = 0.377952760000027800
          Width = 40.440949760000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."qtEmbarque"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 61.622140000000000000
          Top = 0.377952755905539600
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."dtEntrega"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo72: TfrxMemoView
          Left = 153.338580240000000000
          Top = 0.377952760000027800
          Width = 32.881889760000000000
          Height = 11.338582680000000000
          DataField = 'qtPesoSaida'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."qtPesoSaida"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 287.023810000000000000
          Top = 0.377952760000027800
          Width = 29.102359760000000000
          Height = 11.338582680000000000
          DataField = 'vlSacaCompra'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlSacaCompra"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 318.039580000000000000
          Top = 0.377952760000027800
          Width = 55.559069760000000000
          Height = 11.338582680000000000
          DataField = 'vlProdutoCompra'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlProdutoCompra"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 383.071120000000000000
          Top = 0.377952760000027800
          Width = 36.661419760000000000
          Height = 11.338582680000000000
          DataField = 'vlTarifaFrete'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlTarifaFrete"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 426.425480000000000000
          Top = 0.377952760000027800
          Width = 44.220479760000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlFrete"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 476.118430000000000000
          Top = 0.377952760000027800
          Width = 38.551181100000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlComissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo48: TfrxMemoView
          Left = 522.031850000000000000
          Top = 0.377952760000027800
          Width = 44.220479760000000000
          Height = 11.338582680000000000
          DataField = 'vlImpostos'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlImpostos"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 573.354330710000000000
          Top = 0.377952760000027800
          Width = 31.370078740157500000
          Height = 11.338582680000000000
          DataField = 'vlSaca'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlSaca"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 608.503937007874000000
          Top = 0.377952760000027800
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlVenda"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 668.638220000000000000
          Top = 0.377952760000027800
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            
              '[(<frxDataset."vlVenda">-<frxDataset."vlProdutoCompra">-<frxData' +
              'set."vlFrete">-<frxDataset."vlComissao">-<frxDataset."vlImpostos' +
              '">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Left = 235.819110000000000000
          Top = 0.244094490000009100
          Width = 40.440949760000000000
          Height = 11.338582680000000000
          DataField = 'qtPesoLiquido'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."qtPesoLiquido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Top = 245.669450000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 128.740260000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Left = 1.779530000000000000
          Top = 1.779530000000001000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[(<frxEmpresaContabil."descEmpresa">)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 1.779530000000000000
          Top = 21.677180000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxEmpresaContabil."idCnpjCpf">)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1.779530000000000000
          Top = 41.354360000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxEmpresaContabil."endereco">)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 1.779530000000000000
          Top = 61.252010000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxEmpresaContabil."descCidade">)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 1.779530000000000000
          Top = 80.929190000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxEmpresaContabil."fones">)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = -0.220470000000000000
          Top = 104.606370000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape2: TfrxShapeView
          Left = 488.692913390000000000
          Top = 52.692949999999990000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
        end
        object MEMTITULO: TfrxMemoView
          Left = 442.205010000000000000
          Width = 260.787570000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CUSTOS DO CONTRATO CFOP')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 491.338900000000000000
          Top = 53.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 491.338900000000000000
          Top = 76.590600000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'HORA:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 602.945270000000000000
          Top = 54.047244090000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<Date>)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 602.945270000000000000
          Top = 76.724409450000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<Time>)]')
          ParentFont = False
        end
        object MEMCLIENTE: TfrxMemoView
          Left = 5.984230000000000000
          Top = 105.936981020000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CFOP:')
          ParentFont = False
        end
        object MDESC_CLIENTE: TfrxMemoView
          Left = 47.779442130000000000
          Top = 105.936981020000000000
          Width = 306.141930000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 124.756030000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo43: TfrxMemoView
          Left = 361.937230000000000000
          Top = 105.826771650000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'INICIO:')
          ParentFont = False
        end
        object MDT_INICIAL: TfrxMemoView
          Left = 426.968770000000000000
          Top = 105.826771650000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 495.118430000000000000
          Top = 105.826840000000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FIM:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 560.149970000000000000
          Top = 105.826840000000000000
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Width = 363.180356430000000000
          Height = 11.338580240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Nilus Solu'#231#245'es para o Agroneg'#243'cio - GO: (64)3634-1426  MS: (67)3' +
              '562-2959 (67) 9983-2143')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo13: TfrxMemoView
          Left = 551.811380000000000000
          Width = 155.306206430000000000
          Height = 11.338580240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [(<Page>)] / [TotalPages#]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 714.330691570000000000
          Height = 14.362202280000000000
          Fill.BackColor = 14540253
          Frame.Color = 15790320
        end
        object Memo8: TfrxMemoView
          Left = 1.511750000000000000
          Top = 1.133858267716533000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N.F.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 33.259842520000000000
          Top = 1.133858267716533000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ROM.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 108.472440940000000000
          Top = 1.133858267716533000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PLACA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.299320000000000000
          Top = 1.133858269999990000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QT.EMB.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 62.133890000000000000
          Top = 1.133858267716533000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENTREGA')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 153.826771650000000000
          Top = 1.133858267716533000
          Width = 32.881889760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P.SA'#205'D.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 279.952941410000000000
          Top = 1.133858269999990000
          Width = 40.440949760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SC COM.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 322.307301410000000000
          Top = 1.133858269999990000
          Width = 59.338599760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMPRA (R$)')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 383.559311410000000000
          Top = 1.133858269999990000
          Width = 40.440949760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'T.FRETE')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 426.913671410000000000
          Top = 1.133858269999990000
          Width = 51.779539760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FRETE (R$)')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 476.220499290000000000
          Top = 1.133858269999990000
          Width = 38.551181100000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMIS.')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 522.520041410000000000
          Top = 1.133858269999990000
          Width = 48.000009760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IMPOSTOS')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 573.212991410000000000
          Top = 1.133858269999990000
          Width = 34.771653540000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SC VEN.')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 608.503937007874000000
          Top = 1.133858269999990000
          Width = 51.779539760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA (R$)')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 657.787821410000000000
          Top = 1.133858269999990000
          Width = 55.559069760000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RESULTADO')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 234.330860000000000000
          Top = 1.000000000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QT.ENT.')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 189.731966140000000000
          Top = 1.000000000000000000
          Width = 40.440949760000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtEmbarque">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 142.110228900000000000
          Top = 1.000000000000000000
          Width = 44.220479760000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtPesoSaida">,DetailData1)]')
          ParentFont = False
          SuppressRepeated = True
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 317.858297010000000000
          Top = 1.133858270000019000
          Width = 55.559055120000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlProdutoCompra">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          Left = 422.551210390000000000
          Top = 1.133858270000019000
          Width = 48.000002440000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlFrete">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Left = 476.220499290000000000
          Top = 1.133858270000019000
          Width = 38.551181100000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlComissao">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo60: TfrxMemoView
          Left = 521.952782760000000000
          Top = 1.133858270000019000
          Width = 44.220472440000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlImpostos">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo61: TfrxMemoView
          Left = 608.370100710000000000
          Top = 1.133858270000019000
          Width = 52.913385830000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlVenda">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 668.638220000000000000
          Top = 1.133858270000019000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDataset."vlVenda">-<frxDataset."vlProdutoCompra">-<frxD' +
              'ataset."vlFrete">-<frxDataset."vlComissao">-<frxDataset."vlImpos' +
              'tos">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 235.763506140000000000
          Top = 0.866141729999981200
          Width = 40.440949760000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtPesoLiquido">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
end
