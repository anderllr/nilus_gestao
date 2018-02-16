inherited FrmRelCodigo: TFrmRelCodigo
  Caption = 'Listagem de c'#243'digos dispon'#237'veis'
  ClientHeight = 301
  ClientWidth = 822
  ExplicitWidth = 838
  ExplicitHeight = 337
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 822
    ExplicitWidth = 805
  end
  inherited Bevel1: TBevel
    Top = 263
    Width = 822
    ExplicitTop = 412
    ExplicitWidth = 805
  end
  inherited Bevel5: TBevel
    Width = 822
    ExplicitWidth = 805
  end
  inherited PanBotoes: TCPanelGradient
    Top = 267
    Width = 822
    ExplicitTop = 267
    ExplicitWidth = 822
    inherited BtnFechar: TCBitBtn
      Left = 398
      Top = 6
      ExplicitLeft = 398
      ExplicitTop = 6
    end
  end
  object CGroupBox1: TCGroupBox [8]
    Left = 12
    Top = 37
    Width = 453
    Height = 71
    Caption = 'Param'#234'tros'
    TabOrder = 4
    object CLabel1: TCLabel
      Left = 19
      Top = 31
      Width = 69
      Height = 13
      Caption = 'Qtde. C'#243'digos'
    end
    object DBRGtpPlanoConta: TCDBRadioGroup
      Left = 146
      Top = 15
      Width = 294
      Height = 44
      Caption = 'Tipo do Plano de Contas'
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
    object DBEpar: TCDBEdit
      Left = 94
      Top = 28
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'par'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 552
  end
  inherited Acao: TActionList
    Left = 520
  end
  inherited dspRelatorio: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Left = 584
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'EXEC spRelCodigoReduzido 1, '#39'F'#39', 300'
    Left = 512
    Top = 216
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 520
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 552
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 584
  end
  inherited frxSimpleTextExport1: TfrxSimpleTextExport
    Left = 616
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 520
  end
  inherited dspLookUp: TDataSetProvider
    Left = 672
    Top = 216
  end
  inherited cdsLookUp: TClientDataSet
    Left = 704
    Top = 216
  end
  inherited frxXLSExport1: TfrxXLSExport
    Left = 552
  end
  inherited frxXMLExport1: TfrxXMLExport
    Left = 584
  end
  inherited frxPDFExport1: TfrxPDFExport
    FileName = 'C:\Users\Anderson\Desktop\teste.pdf'
    Left = 616
  end
  inherited frxODSExport1: TfrxODSExport
    Left = 520
  end
  inherited frxODTExport1: TfrxODTExport
    Left = 552
  end
  inherited frxMailExport1: TfrxMailExport
    Left = 616
  end
  inherited frxCSVExport1: TfrxCSVExport
    Left = 585
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'tpPlanoConta=tpPlanoConta'
      'cdConta=cdConta')
    OpenDataSource = True
    Left = 616
  end
  inherited dsPadrao: TDataSource
    Left = 616
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 584
    object cdsPadraotpPlanoConta: TStringField
      FieldName = 'tpPlanoConta'
      Size = 1
    end
    object cdsPadraopar: TSmallintField
      FieldName = 'par'
    end
  end
  inherited dspEmpresa: TDataSetProvider
    Left = 544
    Top = 216
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 576
    Top = 216
  end
  inherited dsEmpresa: TDataSource
    Left = 608
    Top = 216
  end
  inherited FindEmpresa: TCFind
    Left = 640
    Top = 216
  end
  inherited sdsEmpresa: TSQLDataSet
    Left = 584
    Top = 56
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
    ReportOptions.LastChange = 39641.466178020830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrint = frxRelAfterPrint
    Left = 552
    Top = 56
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
        Height = 18.444106400000000000
        Top = 234.330860000000000000
        Width = 793.701300000000000000
        Columns = 11
        ColumnWidth = 56.692913385826800000
        ColumnGap = 3.779527559055120000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 61.114983010000000000
          Width = 41.839397100000000000
          Height = 15.118120000000000000
          DataField = 'cdConta'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."cdConta"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 196.535560000000000000
        Visible = False
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 53.494536300000000000
        Top = 313.700990000000000000
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
        Height = 115.411076200000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo3: TfrxMemoView
          Left = 78.811070000000000000
          Top = 80.425170000000000000
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
            '[frxDataset."idEmpresa"] - [frxDataset."descCadEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 26.456692910000000000
          Top = 80.204700000000000000
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
        object SysMemo1: TfrxSysMemoView
          Left = 663.874460000000000000
          Top = 80.425170000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
          WordWrap = False
        end
        object Line2: TfrxLineView
          Left = 26.456692910000000000
          Top = 100.102350000000000000
          Width = 733.228346460000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo1: TfrxMemoView
          Left = 26.003166400000000000
          Top = 42.988976790000000000
          Width = 733.228346460000000000
          Height = 23.924424900000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Listagem de c'#195#179'digos reduzidos dispon'#195#173'veis')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
end
