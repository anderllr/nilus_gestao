inherited FrmPadraoRelEmpresa1: TFrmPadraoRelEmpresa1
  Caption = 'FrmPadraoRelEmpresa1'
  PixelsPerInch = 96
  TextHeight = 13
  inherited LookdescCadEmpresa: TCLookUp
    Left = 152
    ExplicitLeft = 152
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 360
    ExplicitLeft = 360
  end
  object DBEidCadEmpresa: TCDBEdit [8]
    Left = 111
    Top = 7
    Width = 35
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCadEmpresa'
    DataSource = dsEmpresa
    TabOrder = 4
    OnKeyDown = DBEidEmpresaKeyDown
    DecimalControl = True
    KeyMode = kmNormal
  end
  object frxRel: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39375.418611469900000000
    ReportOptions.LastChange = 39449.661139502300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '          '
      'end.')
    Left = 488
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Top = 37.677180000000000000
          Width = 1118.740880000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LIVRO REGISTRO DE ENTRADAS')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 69.031540000000000000
        Top = 102.047310000000000000
        Width = 1122.520410000000000000
        object Shape2: TfrxShapeView
          Left = 31.000000000000000000
          Width = 1057.133858270000000000
          Height = 68.031540000000000000
        end
        object Memo2: TfrxMemoView
          Left = 51.338590000000000000
          Top = 7.559060000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Empresa: ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 50.338590000000000000
          Top = 27.236222910000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Insc. Est.:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 51.338590000000000000
          Top = 50.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Pagina :')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 505.700990000000000000
          Top = 9.236240000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CNPJ : ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 490.323130000000000000
          Top = 27.456710000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'M'#195#170's/Ano : ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          Left = 120.149660000000000000
          Top = 48.133890000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<Page>)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 556.354670000000000000
          Top = 9.314963070000000000
          Width = 185.196938270000000000
          Height = 15.118120000000000000
          DataField = 'idCnpjCpf'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idCnpjCpf"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 123.929190000000000000
          Top = 27.236240000000000000
          Width = 185.196938270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idInscEstadual"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 115.370130000000000000
          Top = 7.559060000000000000
          Width = 366.614378270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."idEmpresa"] - [frxDataset."descCadEmpresa"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Shape3: TfrxShapeView
          Left = 819.732840000000000000
          Width = 268.346439610000000000
          Height = 68.031540000000000000
        end
        object Memo17: TfrxMemoView
          Left = 823.732840000000000000
          Top = 3.779530000000000000
          Width = 264.567100000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '( * ) C'#195#179'digo de Valores Fiscais')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 823.732840000000000000
          Top = 22.677180000000000000
          Width = 264.567068270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '1 - Opera'#195#167#195#181'es com Cr'#195#169'dito do Imposto')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 823.732840000000000000
          Top = 37.015770000000000000
          Width = 264.567068270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '2 - Opera'#195#167#195#181'es sem Cr'#195#169'dito do Imposto/Isentas')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 823.732840000000000000
          Top = 52.913420000000000000
          Width = 264.567068270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '3 - Opera'#195#167#195#181'es sem Cr'#195#169'dito do Imposto/Outras')
          ParentFont = False
        end
        object mesrel: TfrxMemoView
          Left = 556.354670000000000000
          Top = 27.456710000000000000
          Width = 83.149628270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDataset."mesAno"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 820.732840000000000000
          Top = 18.897650000000000000
          Width = 268.346630000000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 34.015770000000000000
        Top = 483.779840000000000000
        Width = 1122.520410000000000000
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 77.031540000000000000
        ParentFont = False
        Top = 230.551330000000000000
        Width = 1122.520410000000000000
        object Memo8: TfrxMemoView
          Left = 91.779530000000000000
          Width = 555.590551180000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Documento Fiscal')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 142.826840000000000000
          Top = 14.779530000000000000
          Width = 56.692910940000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'S'#195#169'rie e'
            'Sub-S'#195#169'rie')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 199.708720000000000000
          Top = 14.779530000000000000
          Width = 49.133850940000000000
          Height = 60.472470240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Numero')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 308.803340000000000000
          Top = 14.338590000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 31.338590000000000000
          Top = 0.118120000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo16: TfrxMemoView
          Left = 309.346630000000000000
          Top = 15.118120000000000000
          Width = 260.787570000000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'EMITENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Left = 571.118430000000000000
          Top = 15.779530000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo20: TfrxMemoView
          Left = 819.433197800000000000
          Width = 268.346359060000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'VALORES FISCAIS')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line8: TfrxLineView
          Left = 911.630490000000000000
          Top = 15.338590000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 646.724800000000000000
          Top = 2.220470000000000000
          Height = 75.590600000000000000
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 714.583180000000000000
          Top = 0.677180000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo13: TfrxMemoView
          Left = 93.267780000000000000
          Top = 15.118120000000000000
          Width = 45.354320940000000000
          Height = 60.472470240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Esp'#195#169'cie')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line25: TfrxLineView
          Left = 140.181200000000000000
          Top = 15.015770000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 198.299320000000000000
          Top = 15.118120000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 247.771800000000000000
          Top = 15.118120000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo44: TfrxMemoView
          Left = 251.212740000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 30.779530000000000000
          Width = 52.913380940000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data da'
            'Entrada')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 577.961040000000000000
          Top = 38.015770000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unidade da'
            'Federa'#195#167#195#163'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 570.961040000000000000
          Top = 15.677180000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Proced'#195#170'ncia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 716.071430000000000000
          Width = 102.047310000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Codifica'#195#167#195#163'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 715.071430000000000000
          Top = 45.574830000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cont'#195#161'bil')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 768.764380000000000000
          Top = 44.574830000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fiscal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line22: TfrxLineView
          Left = 769.764380000000000000
          Top = 45.795300000000000000
          Height = 34.015770000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 913.339210000000000000
          Top = 14.456710000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Base de'
            'C'#195#161'lculo'
            'Valor da'
            'Opera'#195#167#195#163'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 979.662030000000000000
          Top = 15.015770000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Al'#195#173'quota')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 1040.386520000000000000
          Top = 14.456710000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Imposto'
            'Debitado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Left = 980.102970000000000000
          Top = 14.897650000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 1039.370750000000000000
          Top = 16.133890000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 819.701300000000000000
          Top = 15.118120000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 820.701300000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ICMS'
            ''
            'IPI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line7: TfrxLineView
          Left = 862.835190000000000000
          Top = 15.118120000000000000
          Height = 64.252010000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo37: TfrxMemoView
          Left = 864.835190000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cod.( * )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line6: TfrxLineView
          Left = 570.693260000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 92.149660000000000000
          Top = 0.220470000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 1088.504640000000000000
          Top = 0.118120000000000000
          Height = 79.370130000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo25: TfrxMemoView
          Left = 646.504330000000000000
          Top = 0.881880000000000000
          Width = 68.031540000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR '
            'CONT'#195#129'BIL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        Height = 22.677165350000000000
        Top = 359.055350000000000000
        Width = 1122.520410000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        PrintChildIfInvisible = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 31.000000000000000000
          Width = 1057.133858270000000000
          Height = 22.677180000000000000
        end
        object Memo43: TfrxMemoView
          Left = 34.118120000000000000
          Top = 5.779530000000000000
          Width = 56.692918270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."dtEmissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Left = 96.354360000000000000
          Top = 5.779530000000000000
          Width = 41.574798270000000000
          Height = 15.118120000000000000
          DataField = 'Especie'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."Especie"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo54: TfrxMemoView
          Left = 143.944960000000000000
          Top = 5.779530000000000000
          Width = 45.354328270000000000
          Height = 15.118120000000000000
          DataField = 'idDocSerie'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."idDocSerie"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 190.551330000000000000
          Top = 6.779530000000000000
          Width = 56.692918270000000000
          Height = 15.118120000000000000
          DataField = 'idNf'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."idNf"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line16: TfrxLineView
          Left = 92.574830000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 198.535560000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo56: TfrxMemoView
          Left = 315.126160000000000000
          Top = 10.000000000000000000
          Width = 253.228478270000000000
          Height = 11.338590000000000000
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
            '[frxDataset."descCadastro"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo57: TfrxMemoView
          Left = 719.803650000000000000
          Top = 4.000000000000000000
          Width = 41.574798270000000000
          Height = 18.897650000000000000
          DataField = 'cdContabil'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."cdContabil"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MEstado: TfrxMemoView
          Left = 585.693260000000000000
          Top = 9.559060000000000000
          Width = 45.354328270000000000
          Height = 11.338590000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."idEstado"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo59: TfrxMemoView
          Left = 250.433210000000000000
          Top = 6.779530000000000000
          Width = 60.472448270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[(<frxDataset."dtLancamento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo60: TfrxMemoView
          Left = 649.653990000000000000
          Top = 5.779530000000000000
          Width = 60.472448270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlNotaFiscal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo61: TfrxMemoView
          Left = 770.937540000000000000
          Top = 3.000000000000000000
          Width = 41.574798270000000000
          Height = 18.897650000000000000
          DataField = 'idCfop'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."idCfop"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 905.000620000000000000
          Top = 5.779530000000000000
          Width = 75.590568270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlBaseCalculo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo63: TfrxMemoView
          Left = 993.032160000000000000
          Top = 4.779530000000000000
          Width = 41.574798270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."prImposto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 1037.386520000000000000
          Top = 5.779530000000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDataset."vlImposto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line34: TfrxLineView
          Left = 819.118740000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo65: TfrxMemoView
          Left = 818.071430000000000000
          Top = 5.779530000000000000
          Width = 45.354328270000000000
          Height = 15.118120000000000000
          DataField = 'tpTributacao'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."tpTributacao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line37: TfrxLineView
          Left = 714.906000000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 646.165740000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 571.134200000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 911.441560000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line41: TfrxLineView
          Left = 769.717070000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 248.653680000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 140.504020000000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Left = 862.835190000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object MCod: TfrxMemoView
          Left = 867.835190000000000000
          Top = 5.779530000000000000
          Width = 41.574798270000000000
          Height = 15.118120000000000000
          DataField = 'cdFiscal'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."cdFiscal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line4: TfrxLineView
          Left = 308.346630000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 1039.299940000000000000
          Top = 0.440940000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 980.473100000000000000
          Top = 0.661410000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData1: TfrxMasterData
        Height = 7.559060000000000000
        Top = 328.819110000000000000
        Visible = False
        Width = 1122.520410000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
      end
      object Footer1: TfrxFooter
        Height = 18.897650000000000000
        Top = 404.409710000000000000
        Width = 1122.520410000000000000
        object Shape1: TfrxShapeView
          Left = 31.354360000000000000
          Width = 1057.133858270000000000
          Height = 18.897650000000000000
        end
        object Memo14: TfrxMemoView
          Left = 915.102970000000000000
          Top = 2.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' [(SUM(<frxDataset."vlBaseCalculo">))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 648.961040000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' [(SUM(<frxDataset."vlNotaFiscal">))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line14: TfrxLineView
          Left = 911.087200000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 980.118740000000000000
          Top = 0.661410000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 646.299630000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 714.331170000000000000
          Top = 0.661410000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 818.921770000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 862.953310000000000000
          Top = 0.661410000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo26: TfrxMemoView
          Left = 820.378480000000000000
          Top = 2.000000000000000000
          Width = 41.574798270000000000
          Height = 15.118120000000000000
          DataField = 'tpTributacao'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."tpTributacao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 867.732840000000000000
          Top = 2.000000000000000000
          Width = 41.574798270000000000
          Height = 15.118120000000000000
          DataField = 'cdFiscal'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDataset."cdFiscal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 63.252010000000000000
          Top = 2.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Geral')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 981.677800000000000000
          Top = 1.559060000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' [(SUM(<frxDataset."prImposto">))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line24: TfrxLineView
          Left = 1039.473100000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo34: TfrxMemoView
          Left = 1032.929810000000000000
          Top = 1.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' [(SUM(<frxDataset."vlImposto">))]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
