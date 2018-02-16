inherited FrmRelContratoCompraDet: TFrmRelContratoCompraDet
  Caption = 'Relat'#243'rio de Contrato de Compra Detalhado'
  ClientHeight = 188
  ClientWidth = 692
  ExplicitWidth = 708
  ExplicitHeight = 227
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 692
    ExplicitWidth = 640
  end
  inherited Bevel1: TBevel
    Top = 150
    Width = 692
    ExplicitTop = 87
    ExplicitWidth = 640
  end
  inherited Bevel5: TBevel
    Width = 692
    ExplicitWidth = 640
  end
  inherited PanBotoes: TCPanelGradient
    Top = 154
    Width = 692
    TabOrder = 5
    ExplicitTop = 154
    ExplicitWidth = 692
    inherited BtnFechar: TCBitBtn
      Left = 611
      Top = 5
      ExplicitLeft = 611
      ExplicitTop = 5
    end
  end
  inherited DBEidEmpresa: TCDBEdit
    TabOrder = 0
  end
  object CGroupBox4: TCGroupBox [8]
    Left = 0
    Top = 31
    Width = 689
    Height = 116
    Caption = 'Dados da Compra/Origem'
    Color = 15201011
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object CLabel12: TCLabel
      Left = 5
      Top = 47
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato Compra'
    end
    object lblCliFor: TCLabel
      Left = 12
      Top = 22
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Forn./Vendedor'
    end
    object DBEidContratoCompra: TCDBEdit
      Left = 94
      Top = 44
      Width = 104
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoCompra'
      DataSource = dsPadrao
      TabOrder = 4
      OnKeyDown = DBEidContratoCompraKeyDown
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookEmissaoVenda: TCLookUp
      Left = 204
      Top = 44
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idFornecedor'
        'idCadFornecedor'
        'idContratoCompra')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idFornecedor'
        'idCadFornecedor'
        'idContratoCompra')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoCompra'
      ReturnField = 'dtEmissao'
    end
    object LookContratoVenda: TCLookUp
      Left = 290
      Top = 44
      Width = 308
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idFornecedor'
        'idCadFornecedor'
        'idContratoCompra')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idFornecedor'
        'idCadFornecedor'
        'idContratoCompra')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoCompra'
      ReturnField = 'obsContratoCompra'
    end
    object LookNrOriginal: TCLookUp
      Left = 604
      Top = 44
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idFornecedor'
        'idCadFornecedor'
        'idContratoCompra')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idFornecedor'
        'idCadFornecedor'
        'idContratoCompra')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoCompra'
      ReturnField = 'nrOriginal'
    end
    object DBEidFornecedor: TCDBEdit
      Left = 94
      Top = 19
      Width = 61
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idFornecedor'
      DataSource = dsPadrao
      TabOrder = 0
      OnKeyDown = DBEidFornecedorKeyDown
      OnKeyPress = DBEidFornecedorKeyPress
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CLookUp3: TCLookUp
      Left = 413
      Top = 19
      Width = 151
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idFornecedor'
        'idCadFornecedor')
      LookUpKey.Strings = (
        'idCliente'
        'idCadCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteFiscal'
      ReturnField = 'descAbreviada'
    end
    object CLookUp2: TCLookUp
      Left = 195
      Top = 19
      Width = 212
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idFornecedor'
        'idCadFornecedor')
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
    object DBEidCadFornecedor: TCDBEdit
      Left = 161
      Top = 19
      Width = 28
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadFornecedor'
      DataSource = dsPadrao
      TabOrder = 1
      OnKeyDown = DBEidFornecedorKeyDown
      OnKeyPress = DBEidFornecedorKeyPress
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBCKRomAConfirmar: TCDBCheckBox
      Left = 94
      Top = 69
      Width = 187
      Height = 17
      Caption = 'Incluir Romaneios "A CONFIRMAR"?'
      DataField = 'RomAConfirmar'
      DataSource = dsPadrao
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited DBEidCadEmpresa: TCDBEdit
    TabOrder = 1
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'EXEC spRelContratoCompraDet 99,1, 1, 1, '#39'012/2012'#39
    Left = 656
    Top = 96
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idContratoCompra=idContratoCompra'
      'dtEmissao=dtEmissao'
      'descSafra=descSafra'
      'qtProduto=qtProduto'
      'vlProduto=vlProduto'
      'vlTotalProduto=vlTotalProduto'
      'vlImposto=vlImposto'
      'vlContratoCompra=vlContratoCompra'
      'tpCobranca=tpCobranca'
      'tpFinanceiro=tpFinanceiro'
      'vlFrete=vlFrete'
      'obsContratoCompra=obsContratoCompra'
      'descIndice=descIndice'
      'stContratoCompra=stContratoCompra'
      'nrOriginal=nrOriginal'
      'idProdutor=idProdutor'
      'idRepresentante=idRepresentante'
      'vlComissao=vlComissao'
      'tpCalculo=tpCalculo'
      'vlContribSocial=vlContribSocial'
      'vlOutrosImp=vlOutrosImp'
      'vlIcmsFrete=vlIcmsFrete'
      'vlIcms=vlIcms'
      'descFornecedor=descFornecedor'
      'descProduto=descProduto')
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
    end
    object cdsPadraoidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Size = 30
    end
    object cdsPadraoRomAConfirmar: TStringField
      FieldName = 'RomAConfirmar'
      Size = 1
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
    ReportOptions.LastChange = 41677.605701041700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '        '
      'end.')
    OnAfterPrint = frxRelAfterPrint
    Left = 488
    Top = 56
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end
      item
        DataSet = FrxDatasetRomaneios
        DataSetName = 'frxDatasetRomaneios'
      end
      item
        DataSet = FrxDatasetTitulos
        DataSetName = 'frxDatasetTitulos'
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
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 56.913420000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = FrxDatasetTitulos
        DataSetName = 'frxDatasetTitulos'
        PrintChildIfInvisible = True
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 90.204734180000000000
          Top = 0.377952760000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            
              '[(<frxDatasetTitulos."idDocSerie">)] - [(<frxDatasetTitulos."nrT' +
              'ituloPag">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 205.692950000000000000
          Top = 0.377952760000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetTitulos."dtEmissao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 391.267697010000000000
          Top = 0.377952760000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'vlTituloPag'
          DataSet = FrxDatasetTitulos
          DataSetName = 'frxDatasetTitulos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDatasetTitulos."vlTituloPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 466.039580000000000000
          Top = 0.377952760000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDatasetTitulos."prJuros">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 529.071120000000000000
          Top = 0.377952760000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDatasetTitulos."prDesconto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 586.724800000000000000
          Top = 0.377952760000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'stTituloPag'
          DataSet = FrxDatasetTitulos
          DataSetName = 'frxDatasetTitulos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDatasetTitulos."stTituloPag"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 294.023810000000000000
          Top = 1.275602760000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetTitulos."dtVencimento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Shape3: TfrxShapeView
          Left = 89.196830870000000000
          Top = 17.677180000000000000
          Width = 589.606206460000000000
          Height = 34.015770000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo73: TfrxMemoView
          Left = 90.708720000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MOVIMENTA'#199#195'O DO T'#205'TULO')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo74: TfrxMemoView
          Left = 90.708720000000000000
          Top = 36.795275590000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta/Caixa')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo69: TfrxMemoView
          Left = 181.417440000000000000
          Top = 36.795275590000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Pagto')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 337.803340000000000000
          Top = 36.795275590000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo60: TfrxMemoView
          Left = 257.008040000000000000
          Top = 36.795275590000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Compensa'#231#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 514.016080000000000000
        Width = 718.110700000000000000
        Condition = 'frxDatasetRomaneios."idContratoCompra"'
        ReprintOnNewPage = True
        PrintChildIfInvisible = True
        object Shape1: TfrxShapeView
          Left = 94.023604960000000000
          Top = 17.377952760000000000
          Width = 585.826676460000000000
          Height = 13.228346460000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo36: TfrxMemoView
          Left = 97.086580000000000000
          Top = 18.519685040000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Romaneio')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 292.204700000000000000
          Top = 18.519685040000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Movimento')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 399.204707320000000000
          Top = 18.559060000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 436.598640000000000000
          Top = 18.559060000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 519.409710000000000000
          Top = 18.559060000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Icms')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 577.000310000000000000
          Top = 18.559060000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Frete')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Left = 234.330860000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Romaneios')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line9: TfrxLineView
          Top = 33.236240000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo59: TfrxMemoView
          Left = 150.740260000000000000
          Top = 18.519685040000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Produtor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo80: TfrxMemoView
          Left = 620.945270000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS Frete')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118110240000000000
        Top = 574.488560000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = FrxDatasetRomaneios
        DataSetName = 'frxDatasetRomaneios'
        PrintChildIfInvisible = True
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 98.511784180000000000
          Top = 0.377952760000000000
          Width = 41.574830000000000000
          Height = 11.338580240000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetRomaneios."idRomaneio">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 292.385809690000000000
          Top = 0.377952760000000000
          Width = 71.811070000000000000
          Height = 11.338580240000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetRomaneios."dtRomaneio">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 368.228510000000000000
          Top = 0.377952760000000000
          Width = 60.472480000000000000
          Height = 11.338580240000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetRomaneios."vlTotal">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 437.976360870000000000
          Top = 0.377952760000000000
          Width = 49.133858270000000000
          Height = 11.338580240000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetRomaneios."qtPesoLiquido">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 499.496041020000000000
          Top = 0.377952760000000000
          Width = 45.354335590000000000
          Height = 11.338580240000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDatasetRomaneios."vlIcms">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 557.000310000000000000
          Top = 0.377952760000000000
          Width = 52.913420000000000000
          Height = 11.338580240000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDatasetRomaneios."vlFrete">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo72: TfrxMemoView
          Left = 151.047344180000000000
          Top = 0.377952760000000000
          Width = 136.063080000000000000
          Height = 11.338580240000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            
              '[(<frxDatasetRomaneios."idProdutor">)] - [(<frxDatasetRomaneios.' +
              '"descProdutor">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo81: TfrxMemoView
          Left = 621.622450000000000000
          Top = 0.377952760000000000
          Width = 52.913420000000000000
          Height = 11.338580240000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDatasetRomaneios."vlIcmsFrete">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupHeaderTitulos: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        Condition = 'frxDatasetTitulos."idContratoCompra"'
        ReprintOnNewPage = True
        PrintChildIfInvisible = True
        object Shape2: TfrxShapeView
          Left = 93.000000000000000000
          Top = 23.377952760000000000
          Width = 589.606206460000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15790320
          Frame.Color = 15790320
        end
        object Memo8: TfrxMemoView
          Left = 92.779530000000000000
          Top = 25.559060000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Titulo')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 209.968460000000000000
          Top = 24.346320000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 389.944960000000000000
          Top = 24.559060000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 462.598640000000000000
          Top = 24.559060000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 521.409710000000000000
          Top = 24.559060000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Descontos')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 596.724800000000000000
          Top = 24.559060000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 234.330860000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TITULOS A PAGAR')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 288.582870000000000000
          Top = 25.456710000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line7: TfrxLineView
          Left = -0.000017090000000000
          Top = 44.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
      end
      object GroupFooterTitulos: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        PrintChildIfInvisible = True
        object Memo57: TfrxMemoView
          Left = 233.078850000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total pago')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          Left = 347.716518350000000000
          Width = 62.362204720000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetTitulos."vlPago">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line4: TfrxLineView
          Left = -0.000017090000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo71: TfrxMemoView
          Left = 411.968770000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo a pagar:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo75: TfrxMemoView
          Left = 526.134200000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<frxDatasetTitulos."vlTituloPag">)-SUM(<frxDatasetTitulos."vlP' +
              'ago">,DetailData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 612.283860000000000000
        Width = 718.110700000000000000
        PrintChildIfInvisible = True
        object Memo62: TfrxMemoView
          Left = 246.078850000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Totais:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo63: TfrxMemoView
          Left = 367.936973700000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetRomaneios."vlTotal">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 620.409434170000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDatasetRomaneios."vlFrete">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo65: TfrxMemoView
          Left = 435.771614490000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetRomaneios."qtPesoLiquido">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo66: TfrxMemoView
          Left = 557.102345120000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetRomaneios."vlIcms">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line5: TfrxLineView
          Left = -0.000017090000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo86: TfrxMemoView
          Left = 495.118430000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDatasetRomaneios."vlIcms">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 13.228346460000000000
        Top = 430.866420000000000000
        Width = 718.110700000000000000
        DataSet = FrxDatasetTitulos
        DataSetName = 'frxDatasetTitulos'
        RowCount = 0
        object Memo55: TfrxMemoView
          Left = 347.716518350000000000
          Width = 62.362204720000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'vlPago'
          DataSet = FrxDatasetTitulos
          DataSetName = 'frxDatasetTitulos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDatasetTitulos."vlPago"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo70: TfrxMemoView
          Left = 94.488171890000000000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetTitulos."idContaCorrente">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo68: TfrxMemoView
          Left = 185.196833310000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataField = 'dtPagamento'
          DataSet = FrxDatasetTitulos
          DataSetName = 'frxDatasetTitulos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[frxDatasetTitulos."dtPagamento"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo61: TfrxMemoView
          Left = 264.567100000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDatasetTitulos."dtCompensacao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 204.330860000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo87: TfrxMemoView
          Left = 1.779530000000000000
          Top = 1.779530000000000000
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
        object Memo88: TfrxMemoView
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
        object Memo89: TfrxMemoView
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
        object Memo90: TfrxMemoView
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
        object Memo91: TfrxMemoView
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
        object Line8: TfrxLineView
          Left = -0.220470000000000000
          Top = 104.606370000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape4: TfrxShapeView
          Left = 488.692913390000000000
          Top = 52.692950000000000000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
        end
        object Memo92: TfrxMemoView
          Left = 442.205010000000000000
          Width = 260.787570000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRATOS DETALHADO'
            '(COMPRA)')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
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
        object Memo94: TfrxMemoView
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
        object Memo95: TfrxMemoView
          Left = 602.945270000000000000
          Top = 54.047244090000000000
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
        object Memo96: TfrxMemoView
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
        object Line10: TfrxLineView
          Top = 200.756030000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo25: TfrxMemoView
          Left = 1.133855830000000000
          Top = 113.944891650000000000
          Width = 58.204724410000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTRATO:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 63.496060550000000000
          Top = 113.944891650000000000
          Width = 90.708720000000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."idContratoCompra">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo113: TfrxMemoView
          Left = 1.133855830000000000
          Top = 127.551190870000000000
          Width = 58.204724410000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Comprador.:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescDepartamento: TfrxMemoView
          Left = 63.496060550000000000
          Top = 127.551190870000000000
          Width = 219.212740000000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."descFornecedor">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo115: TfrxMemoView
          Left = 301.913380950000000000
          Top = 142.669301100000000000
          Width = 58.582677170000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Unit...:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Msexo: TfrxMemoView
          Left = 364.173077010000000000
          Top = 142.669301100000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlProduto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo119: TfrxMemoView
          Left = 578.330791660000000000
          Top = 113.944891650000000000
          Width = 73.700787400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl. L'#237'quido:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo120: TfrxMemoView
          Left = 301.913380950000000000
          Top = 156.275600310000000000
          Width = 58.582677170000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MtpAdmissao: TfrxMemoView
          Left = 656.787484570000000000
          Top = 113.944891650000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlContratoCompra">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MEstCivil: TfrxMemoView
          Left = 364.173223470000000000
          Top = 156.275600310000000000
          Width = 68.048862200000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."qtProduto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo121: TfrxMemoView
          Left = 1.133855830000000000
          Top = 142.669301100000000000
          Width = 58.204724410000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto......:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Mfuncao: TfrxMemoView
          Left = 63.496060550000000000
          Top = 142.669301100000000000
          Width = 158.740260000000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."descProduto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo123: TfrxMemoView
          Left = 301.913380950000000000
          Top = 113.944891650000000000
          Width = 58.582677170000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data.............:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtAdmissaoIni: TfrxMemoView
          Left = 364.173223470000000000
          Top = 113.944891650000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."dtEmissao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 1.133855830000000000
          Top = 170.259852280000000000
          Width = 58.204724410000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situa'#231#227'o.....:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 63.496060550000000000
          Top = 170.259852280000000000
          Width = 75.590556060000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."stContratoCompra">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 1.133855830000000000
          Top = 156.275600310000000000
          Width = 58.204724410000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Safra...........:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 63.496060550000000000
          Top = 156.275600310000000000
          Width = 185.196970000000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."descSafra">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 301.913380950000000000
          Top = 127.551190870000000000
          Width = 58.582677170000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Indice..........:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 364.173223470000000000
          Top = 127.551190870000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."descIndice">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          Left = 1.133855830000000000
          Top = 185.000009760000000000
          Width = 58.204724410000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Obs.............:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Left = 63.496060550000000000
          Top = 185.000009760000000000
          Width = 665.197280000000000000
          Height = 12.094488190000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."obsContratoCompra">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo46: TfrxMemoView
          Left = 442.267711660000000000
          Top = 156.275600310000000000
          Width = 73.700787400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Outros Imp.......:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Left = 520.724404570000000000
          Top = 156.275600310000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlOutrosImp">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo48: TfrxMemoView
          Left = 442.267711660000000000
          Top = 127.551190870000000000
          Width = 73.700787400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Comiss'#227'o.........:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo49: TfrxMemoView
          Left = 520.724404570000000000
          Top = 127.551190870000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlComissao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 442.267711660000000000
          Top = 113.944891650000000000
          Width = 73.700787400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ICMS.................:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 520.724404570000000000
          Top = 113.944891650000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlIcms">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo52: TfrxMemoView
          Left = 442.267711660000000000
          Top = 170.259852280000000000
          Width = 73.700787400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contrib. Social.:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 520.724404570000000000
          Top = 170.259852280000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlContribSocial">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo76: TfrxMemoView
          Left = 442.267711660000000000
          Top = 142.669301100000000000
          Width = 73.700787400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Impostos..........:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo77: TfrxMemoView
          Left = 520.724404570000000000
          Top = 142.669301100000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlImposto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo78: TfrxMemoView
          Left = 301.913380950000000000
          Top = 170.259852280000000000
          Width = 58.582677170000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vl. Venda..:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo79: TfrxMemoView
          Left = 364.173487090000000000
          Top = 170.259852280000000000
          Width = 68.048862200000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlTotalProduto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo82: TfrxMemoView
          Left = 596.504347090000000000
          Top = 142.669301100000000000
          Width = 54.803137400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ICMS Frete:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo83: TfrxMemoView
          Left = 656.063390000000000000
          Top = 142.669301100000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlIcmsFrete">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo84: TfrxMemoView
          Left = 596.504347090000000000
          Top = 127.551190870000000000
          Width = 54.803137400000000000
          Height = 12.094488190000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Frete:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo85: TfrxMemoView
          Left = 656.063390000000000000
          Top = 127.551190870000000000
          Width = 68.031496060000000000
          Height = 12.094488190000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<frxDataset."vlFrete">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 691.653990000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = -0.000017090000000000
          Top = 0.621830000000000000
          Width = 718.110226460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763779527560000
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
          Top = 2.000000000000000000
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
    end
  end
  object FindContrato: TCFind
    SelectClause.Strings = (
      
        'SELECT idContratoVenda, dtEmissao, obsContratoVenda FROM Contrat' +
        'oVenda')
    JoinClause.Strings = (
      
        'WHERE idEmpresa = [DBEidEmpresa] AND idCadEmpresa =[DBEidCadEmpr' +
        'esa]')
    FindField = 'idContratoVenda'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idContratoVenda'
    CarregaDados = True
    CollumNames.Strings = (
      'Codigo'
      'Data'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 616
    Top = 40
  end
  object FrxDatasetTitulos: TfrxDBDataset
    UserName = 'frxDatasetTitulos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idContratoCompra=idContratoCompra'
      'idTituloPag=idTituloPag'
      'dtEmissao=dtEmissao'
      'dtVencimento=dtVencimento'
      'vlTituloPag=vlTituloPag'
      'prJuros=prJuros'
      'prDesconto=prDesconto'
      'stTituloPag=stTituloPag'
      'idDocSerie=idDocSerie'
      'nrTituloPag=nrTituloPag'
      'dtPagamento=dtPagamento'
      'dtCompensacao=dtCompensacao'
      'vlPago=vlPago'
      'idContaCorrente=idContaCorrente'
      'stTituloMov=stTituloMov'
      'temMov=temMov'
      'vlAPagar=vlAPagar')
    OpenDataSource = False
    DataSet = cdsRelTitulos
    BCDToCurrency = False
    Left = 520
    Top = 224
  end
  object cdsRelTitulos: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelContDetCompraTit 99,1, 1, 1, '#39'012/2012'#39
    Params = <>
    ProviderName = 'dspRelTitulos'
    Left = 488
    Top = 224
  end
  object dspRelTitulos: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 456
    Top = 224
  end
  object FrxDatasetRomaneios: TfrxDBDataset
    UserName = 'frxDatasetRomaneios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idRomaneio=idRomaneio'
      'idContratoCompra=idContratoCompra'
      'dtRomaneio=dtRomaneio'
      'qtPesoLiquido=qtPesoLiquido'
      'vlTotal=vlTotal'
      'vlIcms=vlIcms'
      'vlFrete=vlFrete'
      'vlIcmsFrete=vlIcmsFrete'
      'descProdutor=descProdutor'
      'idProdutor=idProdutor')
    OpenDataSource = False
    DataSet = cdsRomaneios
    BCDToCurrency = False
    Left = 528
    Top = 256
  end
  object cdsRomaneios: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelContCompraDetRom 99,1,1,1,  '#39'012/2012'#39
    Params = <>
    ProviderName = 'dspRomaneios'
    Left = 488
    Top = 256
  end
  object dspRomaneios: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 456
    Top = 256
  end
end
