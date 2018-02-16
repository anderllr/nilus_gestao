inherited FrmRelbalancetebkb: TFrmRelbalancetebkb
  Left = 0
  Top = 0
  Caption = 'Balancete de Verifica'#231#227'o'
  ClientHeight = 338
  ClientWidth = 753
  ExplicitWidth = 769
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 300
    Width = 753
    ExplicitTop = 358
    ExplicitWidth = 806
  end
  inherited PanBotoes: TCPanelGradient
    Top = 304
    Width = 753
    TabOrder = 2
    ExplicitTop = 304
    ExplicitWidth = 753
  end
  object CGroupBox1: TCGroupBox [2]
    Left = 8
    Top = 33
    Width = 465
    Height = 260
    TabOrder = 1
    object DBRGtpPlanoConta: TCDBRadioGroup
      Left = 9
      Top = 10
      Width = 446
      Height = 44
      Caption = 'Origem'
      Columns = 2
      DataField = 'tpPlanoConta'
      DataSource = dsPadrao
      Items.Strings = (
        'Fiscal'
        'Gerencial')
      ParentBackground = True
      TabOrder = 0
      Values.Strings = (
        'F'
        'G')
    end
    object GPPeriodo: TCGroupBox
      Left = 9
      Top = 60
      Width = 446
      Height = 109
      TabOrder = 1
      object CLabel6: TCLabel
        Left = 11
        Top = 17
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mes/Ano'
      end
      object CLabel7: TCLabel
        Left = 129
        Top = 17
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = 'a'
      end
      object CLabel1: TCLabel
        Left = 30
        Top = 39
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Grau'
      end
      object CLabel3: TCLabel
        Left = 24
        Top = 61
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta'
      end
      object CLabel4: TCLabel
        Left = 171
        Top = 61
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = 'a'
      end
      object CLabel5: TCLabel
        Left = 15
        Top = 83
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o'
      end
      object DBEnrGrau: TCDBEdit
        Left = 59
        Top = 36
        Width = 46
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'nrGrau'
        DataSource = dsPadrao
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEClassificacaoIni: TCDBEdit
        Left = 59
        Top = 58
        Width = 105
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'classificacaoIni'
        DataSource = dsPadrao
        TabOrder = 3
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEClassificacaoFim: TCDBEdit
        Left = 184
        Top = 58
        Width = 105
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'classificacaoFim'
        DataSource = dsPadrao
        TabOrder = 4
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEdtIni: TCDBEdit
        Left = 59
        Top = 14
        Width = 63
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtInicial'
        DataSource = dsPadrao
        MaxLength = 10
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtFim: TCDBEdit
        Left = 143
        Top = 14
        Width = 63
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'classificacaoIni'
        DataSource = dsPadrao
        MaxLength = 10
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmDate
      end
      object EDdtEmissao: TCEdit
        Left = 59
        Top = 80
        Width = 62
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        MaxLength = 10
        TabOrder = 5
        DataType = ftUnknown
        KeyMode = kmDate
        Decimals = 0
      end
    end
    object CGroupBox2: TCGroupBox
      Left = 9
      Top = 175
      Width = 256
      Height = 74
      TabOrder = 2
      object CCheckBox1: TCCheckBox
        Left = 11
        Top = 16
        Width = 167
        Height = 17
        Caption = 'Listar contas com Saldo Zero'
        TabOrder = 0
      end
      object CCheckBox2: TCCheckBox
        Left = 11
        Top = 32
        Width = 167
        Height = 17
        Caption = 'Demonstrar resultado atual'
        TabOrder = 1
        Visible = False
      end
      object CCheckBox3: TCCheckBox
        Left = 11
        Top = 47
        Width = 97
        Height = 17
        Caption = 'Oficial'
        TabOrder = 2
        Visible = False
      end
    end
    object CRadioGroup1: TCRadioGroup
      Left = 271
      Top = 175
      Width = 184
      Height = 74
      Caption = 'Ordena'#231#227'o'
      ItemIndex = 0
      Items.Strings = (
        '&N'#250'merica'
        '&Alfab'#233'tica')
      TabOrder = 3
    end
  end
  object PanEmpresa: TCPanelGradient [3]
    Left = 0
    Top = 0
    Width = 753
    Height = 30
    Align = alTop
    Caption = 'PanEmpresa'
    TabOrder = 0
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 15201011
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel2: TCLabel
      Left = 12
      Top = 8
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
      Transparent = True
    end
    object DBEidEmpresa: TCDBEdit
      Left = 59
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idEmpresa'
      DataSource = dsPadrao
      TabOrder = 0
      Find = FindEmpresa
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescCadEmpresa: TCLookUp
      Left = 111
      Top = 5
      Width = 250
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descCadEmpresa'
    end
    object LookdescAbreviada: TCLookUp
      Left = 367
      Top = 5
      Width = 165
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idEmpresa')
      LookUpKey.Strings = (
        'idEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descAbreviada'
    end
  end
  inherited imgIcones: TImageList
    Left = 536
    Top = 56
  end
  inherited Acao: TActionList
    Left = 504
    Top = 56
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Left = 568
    Top = 56
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'EXEC spContRelBalancete 1, '#39'F'#39', null, null, 5, null, null'
    Left = 600
    Top = 56
    object cdsRelatorioclassificacao: TStringField
      FieldName = 'classificacao'
      FixedChar = True
      Size = 30
    end
    object cdsRelatoriodescCadEmpresa: TStringField
      FieldName = 'descCadEmpresa'
      FixedChar = True
      Size = 50
    end
    object cdsRelatoriocdPlanoConta: TStringField
      FieldName = 'cdPlanoConta'
      FixedChar = True
      Size = 10
    end
    object cdsRelatoriodescPlanoConta: TStringField
      FieldName = 'descPlanoConta'
      FixedChar = True
      Size = 50
    end
    object cdsRelatoriovlSaldoAnt: TFMTBCDField
      FieldName = 'vlSaldoAnt'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlDebito: TFMTBCDField
      FieldName = 'vlDebito'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlCredito: TFMTBCDField
      FieldName = 'vlCredito'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlSaldoAtual: TFMTBCDField
      FieldName = 'vlSaldoAtual'
      Precision = 19
      Size = 4
    end
    object cdsRelatorionrGrau: TSmallintField
      FieldName = 'nrGrau'
    end
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 504
    Top = 120
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 536
    Top = 120
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 568
    Top = 120
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 600
    Top = 120
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 504
    Top = 152
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 536
    Top = 152
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 568
    Top = 152
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 600
    Top = 152
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 504
    Top = 184
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 536
    Top = 184
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 600
    Top = 184
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 569
    Top = 184
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'classificacao=classificacao'
      'descCadEmpresa=descCadEmpresa'
      'cdPlanoConta=cdPlanoConta'
      'descPlanoConta=descPlanoConta'
      'vlSaldoAnt=vlSaldoAnt'
      'vlDebito=vlDebito'
      'vlCredito=vlCredito'
      'vlSaldoAtual=vlSaldoAtual'
      'nrGrau=nrGrau')
    Left = 568
    Top = 88
  end
  inherited dsPadrao: TDataSource
    OnStateChange = dsPadraoStateChange
    Left = 600
    Top = 216
  end
  inherited cdsPadrao: TClientDataSet
    Left = 568
    Top = 216
    object cdsPadraotpPlanoConta: TStringField
      FieldName = 'tpPlanoConta'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraonrGrau: TSmallintField
      FieldName = 'nrGrau'
    end
    object cdsPadraoclassificacaoIni: TStringField
      FieldName = 'classificacaoIni'
    end
    object cdsPadraoclassificacaoFim: TStringField
      FieldName = 'classificacaoFim'
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
  end
  object FindEmpresa: TCFind
    SelectClause.Strings = (
      
        'SELECT  idEmpresa, descCadEmpresa, descAbreviada, idCnpjCpf FROM' +
        ' vCadEmpresaContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadEmpresa')
    FindField = 'descCadEmpresa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 720
  end
  object cdsLookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 536
    Top = 217
  end
  object dspLookUp: TDataSetProvider
    DataSet = dmPadrao.sdsLookUp
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 504
    Top = 217
  end
  object frxRel: TfrxReport
    Version = '4.3'
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
    ReportOptions.LastChange = 39674.350715231490000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 536
    Top = 88
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
      object DetailData1: TfrxDetailData
        Height = 15.346320000000000000
        Top = 249.448980000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 26.456692910000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'classificacao'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."classificacao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 92.267699450000000000
          Width = 41.574795830000000000
          Height = 15.118120000000000000
          DataField = 'cdPlanoConta'
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
            '[frxDataset."cdPlanoConta"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 145.181073070000000000
          Top = 0.228200000000000000
          Width = 234.661375830000000000
          Height = 15.118120000000000000
          DataField = 'descPlanoConta'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."descPlanoConta"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 435.999936540000000000
          Top = 0.212430000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlSaldoAnt"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 513.952690000000000000
          Top = 0.212430000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlDebito"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 597.504330000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlCredito"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 682.094930000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlSaldoAtual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 211.653680000000000000
        Visible = False
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 28.133890000000000000
        Top = 325.039580000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 342.157700000000000000
          Top = 6.897650000000000000
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
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 26.456692913385800000
          Top = 6.897650000000000000
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
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 655.858690000000000000
          Top = 6.897650000000000000
          Width = 94.488250000000000000
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
          WordWrap = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 26.456692910000000000
          Top = 3.401360000000000000
          Width = 733.228346460000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 133.212662500000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 82.590600000000000000
          Top = 61.527520000000000000
          Width = 449.764070000000000000
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
          Memo.UTF8 = (
            '[frxDataset."descCadEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 26.456692910000000000
          Top = 61.307050000000000000
          Width = 52.913420000000000000
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
        object Line2: TfrxLineView
          Left = 26.456692910000000000
          Top = 105.102350000000000000
          Width = 733.228346460000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Shape1: TfrxShapeView
          Left = 26.456692910000000000
          Top = 106.779530000000000000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Color = 15790320
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Left = 26.456692910000000000
          Top = 106.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Classifica'#195#167#195#163'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 439.779473860000000000
          Top = 106.779530000000000000
          Width = 63.417440000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Sld. Anterior')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 552.709030000000000000
          Top = 106.779530000000000000
          Width = 34.929190000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'D'#195#169'bito')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 95.590600000000000000
          Top = 106.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 144.960607950000000000
          Top = 106.779530000000000000
          Width = 232.677180000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 253.228510000000000000
          Top = 24.566926690000000000
          Width = 287.244280000000000000
          Height = 34.015770000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Balancete de Verifica'#195#167#195#163'o')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 633.181510000000000000
          Top = 106.826840000000000000
          Width = 38.708720000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cr'#195#169'dito')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 701.992580000000000000
          Top = 106.826840000000000000
          Width = 57.606370000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Saldo Atual')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 26.456710000000000000
          Top = 83.149660000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Grau:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object MemnrGrau: TfrxMemoView
          Left = 60.472480000000000000
          Top = 83.149660000000000000
          Width = 75.590600000000000000
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
          Memo.UTF8 = (
            'Grau')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 559.370440000000000000
          Top = 83.149660000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Per'#195#173'odo:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 608.504330000000000000
          Top = 83.149660000000000000
          Width = 75.590600000000000000
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
          Memo.UTF8 = (
            'Periodo')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Left = 26.456710000000000000
          Top = 83.149660000000000000
          Width = 733.228820000000000000
          Diagonal = True
        end
        object MemdtEmissao: TfrxMemoView
          Left = 684.094930000000000000
          Top = 60.472480000000000000
          Width = 75.590600000000000000
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
          Memo.UTF8 = (
            '')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
end
