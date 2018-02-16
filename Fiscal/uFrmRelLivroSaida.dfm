inherited FrmRelLivroSaida: TFrmRelLivroSaida
  Caption = 'Livro de Registros de Saida'
  ClientHeight = 393
  ClientWidth = 801
  ExplicitWidth = 817
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 801
    ExplicitTop = 3
    ExplicitWidth = 801
  end
  inherited Bevel1: TBevel
    Top = 355
    Width = 801
    ExplicitTop = 260
    ExplicitWidth = 801
  end
  inherited Bevel5: TBevel
    Width = 801
    ExplicitWidth = 801
  end
  inherited PanBotoes: TCPanelGradient
    Top = 359
    Width = 801
    ExplicitTop = 359
    ExplicitWidth = 801
    inherited BtnFechar: TCBitBtn
      Left = 439
      Top = 6
      ExplicitLeft = 439
      ExplicitTop = 6
    end
  end
  inherited DBEidEmpresa: TCDBEdit
    Top = 8
    ExplicitTop = 8
  end
  inherited LookdescCadEmpresa: TCLookUp
    Left = 152
    Top = 8
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 152
    ExplicitTop = 8
  end
  inherited LookdescAbreviada: TCLookUp
    Left = 360
    Top = 8
    LookUpTable = 'vCadEmpresaFiscal'
    ExplicitLeft = 360
    ExplicitTop = 8
  end
  object CGroupBox1: TCGroupBox [8]
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
      OnExit = DBEdtInicialExit
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
      OnExit = DBEdtFinalExit
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
  object DBEnrPagina: TCDBEdit [10]
    Left = 247
    Top = 116
    Width = 53
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'nrPagina'
    DataSource = dsPadrao
    MaxLength = 10
    TabOrder = 6
    Visible = False
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEidLivro: TCDBEdit [11]
    Left = 188
    Top = 116
    Width = 53
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idLivro'
    DataSource = dsPadrao
    MaxLength = 10
    TabOrder = 7
    Visible = False
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEmesAno: TCDBEdit [12]
    Left = 16
    Top = 116
    Width = 80
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'mesAno'
    DataSource = dsPadrao
    TabOrder = 8
    Visible = False
    DecimalControl = True
    KeyMode = kmNormal
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 'EXEC spRelLivroSaidas 1,2,'#39'10/06/2008'#39','#39'12/06/2008'#39','#39'L'#39
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'idCnpjCpf=idCnpjCpf'
      'idInscEstadual=idInscEstadual'
      'idCadastro=idCadastro'
      'idCadCliente=idCadCliente'
      'descCadastro=descCadastro'
      'idNf=idNf'
      'idDocSerie=idDocSerie'
      'Especie=Especie'
      'idEstado=idEstado'
      'dtEmissao=dtEmissao'
      'idCfop=idCfop'
      'vlNotaFiscal=vlNotaFiscal'
      'cdContabil=cdContabil'
      'tpTributacao=tpTributacao'
      'cdFiscal=cdFiscal'
      'vlBaseCalculo=vlBaseCalculo'
      'prImposto=prImposto'
      'vlImposto=vlImposto'
      'vlIsentas=vlIsentas'
      'vlOutras=vlOutras'
      'stNf=stNf'
      'mesAno=mesAno'
      'vlBaseTributaria=vlBaseTributaria'
      'prReducao=prReducao')
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
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
    object cdsPadraoidCfop: TIntegerField
      FieldName = 'idCfop'
    end
  end
  object frxRel: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39375.418611469890000000
    ReportOptions.LastChange = 40401.456427233800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  idNfAnt : integer;                                         '
      'begin'
      '  if ( idNfAnt = <frxDataset."idNf"> ) then'
      '  begin'
      '    linhaDetalhe.Visible := false;'
      '    idNfAnt := <frxDataset."idNf">;'
      '    DBMEspecie.Visible := false;'
      '    DBMidDocSerie.Visible := false;'
      '    DBMidNfInicial.Visible := false;'
      '    DBMidNfFinal.Visible := false;        '
      '    DBMdia.Visible := false;'
      '    DBMdescCadastro.Visible := false;'
      '    DBMEstado.Visible := false;'
      '    DBMvlNotaFiscal.Visible := false;'
      '    DBMidCfop.Visible := false;                      '
      '  end'
      '  else'
      '  begin              '
      '    linhaDetalhe.Visible := true;'
      '    idNfAnt:= <frxDataset."idNf">;'
      '    DBMEspecie.Visible := true;'
      '    DBMidDocSerie.Visible := true;'
      '    DBMidNfInicial.Visible := true;'
      '    DBMidNfFinal.Visible := true;'
      '    DBMdia.Visible := true;'
      '    DBMdescCadastro.Visible := true;'
      '    DBMEstado.Visible := true;'
      '    DBMvlNotaFiscal.Visible := true;'
      '    DBMidCfop.Visible := true;        '
      '  end'
      ''
      'end;'
      ''
      'begin'
      ''
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
        DataSet = frxDBPagina
        DataSetName = 'frxPagina'
      end
      item
        DataSet = frxDBResCfop
        DataSetName = 'frxResCfop'
      end
      item
        DataSet = frxDBResumo
        DataSetName = 'frxResumo'
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
      Frame.Width = 0.500000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 106.204724410000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape2: TfrxShapeView
          Left = 23.245677200000000000
          Top = 56.692949999999990000
          Width = 1070.702347050000000000
          Height = 49.322866500000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo30: TfrxMemoView
          Left = 105.124452800000000000
          Top = 91.127619200000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[((<Page>+<frxPagina."nrPaginaIni">)-1)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 548.053875300000000000
          Top = 63.496099610000000000
          Width = 185.196938270000000000
          Height = 11.338582680000000000
          DataField = 'idCnpjCpf'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idCnpjCpf"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 105.615791700000000000
          Top = 76.954381700000000000
          Width = 185.196938270000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idInscEstadual"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 105.398472600000000000
          Top = 63.118146850000000000
          Width = 318.652142570000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idEmpresa"] - [frxDataset."descCadEmpresa"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 548.050724400000000000
          Top = 77.102398820000000000
          Width = 52.913388270000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."mesAno"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          Left = 35.981125600000000000
          Top = 63.118146850000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EMPRESA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 35.981125600000000000
          Top = 76.724446060000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'INSC. EST.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 35.981125600000000000
          Top = 90.708698030000000000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PAGINA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 481.965665600000000000
          Top = 63.496099610000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 481.965665600000000000
          Top = 77.102398820000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'M'#202'S/ANO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 1073.386520000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LIVRO REGISTRO DE SA'#205'DAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 612.283860000000000000
        Width = 1122.520410000000000000
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 69.543307090000000000
        Top = 185.196970000000000000
        Width = 1122.520410000000000000
        ReprintOnNewPage = True
        object Memo8: TfrxMemoView
          Left = 23.433070870000000000
          Width = 509.971635800000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTOS FISCAIS')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 24.415779300000000000
          Top = 16.267718000000000000
          Width = 23.848795240000000000
          Height = 51.477198600000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESP'#201'CIE')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 89.329183800000000000
          Top = 16.251968500000000000
          Width = 45.354320940000000000
          Height = 51.401574800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO INICIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 602.427156200000000000
          Top = 16.251968500000000000
          Width = 51.363812700000000000
          Height = 51.401574800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONT'#193'BIL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 656.367351100000000000
          Top = 16.251968500000000000
          Width = 51.401574803149600000
          Height = 51.401574800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fiscal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 709.417322830000000000
          Top = 15.118110239999990000
          Width = 243.023622050000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERA'#199#213'ES COM D'#201'BITO DE IMPOSTO')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 952.440944880000000000
          Top = 15.118110239999990000
          Width = 141.505506780000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'OPER. SEM D'#201'B. DE IMPOSTO')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 710.883881700000000000
          Top = 32.899233200000000000
          Width = 56.692950000000000000
          Height = 34.771653540000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS'
            'IPI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 770.228820000000000000
          Top = 32.881889760000010000
          Width = 68.031540000000000000
          Height = 34.771653540000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE'
            'DE'
            'C'#193'LCULO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 840.101309300000000000
          Top = 32.881889760000010000
          Width = 52.384285800000000000
          Height = 34.771653540000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'AL'#205'QUOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 953.936018800000000000
          Top = 32.881889760000010000
          Width = 67.653541350000000000
          Height = 34.771653540000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ISENTAS'
            'OU N'#195'O -'
            'TRIBUTADAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 1024.532920600000000000
          Top = 32.881889760000010000
          Width = 67.653543310000000000
          Height = 34.771653540000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'OUTRAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Left = 1536.016700000000000000
          Top = 1.338590000000011000
          Height = 64.252010000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo20: TfrxMemoView
          Left = 709.417322830000000000
          Width = 384.529134440000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALORES FISCAIS')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 185.401716500000000000
          Top = 16.251968500000000000
          Width = 303.382873100000000000
          Height = 51.401574800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESTINAT'#193'RIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 492.732592000000000000
          Top = 16.251968500000000000
          Width = 17.877176900000000000
          Height = 51.401574800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 512.987721900000000000
          Top = 16.251968500000000000
          Width = 19.502374800000000000
          Height = 51.401574800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 895.041550700000000000
          Top = 32.881889760000010000
          Width = 55.596886300000000000
          Height = 34.771653540000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPOSTO DEBITADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 535.222394200000000000
          Top = 1.511811999999992000
          Width = 63.911852300000000000
          Height = 66.141732280000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR CONT'#193'BIL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 23.250000000000000000
          Height = 69.543307090000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line25: TfrxLineView
          Left = 49.281920300000000000
          Top = 15.118110239999990000
          Height = 54.425196850000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo10: TfrxMemoView
          Left = 51.514993900000000000
          Top = 15.251968500000000000
          Width = 34.015730940000000000
          Height = 54.009450500000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'S'#201'RIE'
            'E '
            'SUB-S'#201'RIE')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Line28: TfrxLineView
          Left = 88.252025500000000000
          Top = 15.269291439999990000
          Height = 54.425196850000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line31: TfrxLineView
          Left = 136.440944880000000000
          Top = 15.118110239999990000
          Height = 54.425196850000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 137.763868500000000000
          Top = 16.251968500000000000
          Width = 45.354320940000000000
          Height = 51.401574800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO FINAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line32: TfrxLineView
          Left = 184.440944880000000000
          Top = 15.269301200000000000
          Height = 54.425196850000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line34: TfrxLineView
          Left = 491.220472440000000000
          Top = 15.118110239999990000
          Height = 54.425196850000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line35: TfrxLineView
          Left = 512.171979800000000000
          Top = 15.118110239999990000
          Height = 54.425196850000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line36: TfrxLineView
          Left = 533.669291340000000000
          Height = 69.543307090000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line37: TfrxLineView
          Left = 600.529521700000000000
          Height = 69.543307090000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line27: TfrxLineView
          Left = 655.143730200000000000
          Top = 15.118110239999990000
          Height = 54.425196850000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line1: TfrxLineView
          Left = 709.417322830000000000
          Height = 69.543307090000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line5: TfrxLineView
          Left = 768.907583200000000000
          Top = 30.236220470000010000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line38: TfrxLineView
          Left = 839.395817700000000000
          Top = 30.236220470000010000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line23: TfrxLineView
          Left = 893.745459100000000000
          Top = 30.236220470000010000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line40: TfrxLineView
          Left = 952.479355300000000000
          Top = 30.236220470000010000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line41: TfrxLineView
          Left = 1023.118110240000000000
          Top = 30.236220470000010000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line21: TfrxLineView
          Left = 1093.950000000000000000
          Height = 69.543307090000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 600.566929130000000000
          Width = 108.850393700000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIFICA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 4.559060000000000000
        Top = 275.905690000000000000
        Visible = False
        Width = 1122.520410000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 15.400000000000000000
        Top = 302.362400000000000000
        Width = 1122.520410000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object DBMEspecie: TfrxMemoView
          Left = 25.077124400000000000
          Top = 1.952750779999974000
          Width = 21.278722170000000000
          Height = 11.338582680000000000
          DataField = 'Especie'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."Especie"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMidDocSerie: TfrxMemoView
          Left = 50.275569100000000000
          Top = 1.952750779999974000
          Width = 35.527550270000000000
          Height = 11.338582680000000000
          DataField = 'idDocSerie'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."idDocSerie"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMidNfInicial: TfrxMemoView
          Left = 88.891329800000000000
          Top = 1.952750779999974000
          Width = 45.354328270000000000
          Height = 11.338582680000000000
          DataField = 'idNf'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."idNf"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMidNfFinal: TfrxMemoView
          Left = 137.299239600000000000
          Top = 1.952750779999974000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'idNf'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."idNf"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line13: TfrxLineView
          Left = 49.280000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line14: TfrxLineView
          Left = 88.250000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line15: TfrxLineView
          Left = 136.440000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line18: TfrxLineView
          Left = 184.440000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object DBMvlNotaFiscal: TfrxMemoView
          Left = 534.491630500000000000
          Top = 1.952750779999974000
          Width = 62.929142770000000000
          Height = 11.338582680000000000
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
          Memo.UTF8W = (
            '[frxDataset."vlNotaFiscal"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 606.231813000000000000
          Top = 1.952750779999974000
          Width = 41.574798270000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMidCfop: TfrxMemoView
          Left = 659.395628800000000000
          Top = 1.952750779999974000
          Width = 40.516529870000000000
          Height = 11.338582680000000000
          DataField = 'idCfop'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."idCfop"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line17: TfrxLineView
          Left = 600.530000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo39: TfrxMemoView
          Left = 710.499133860000000000
          Top = 2.066136680000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."tpTributacao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 770.850786600000000000
          Top = 1.952750779999974000
          Width = 60.472448270000000000
          Height = 11.338582680000000000
          DataField = 'vlBaseCalculo'
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
          Memo.UTF8W = (
            '[frxDataset."vlBaseCalculo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 842.276034100000000000
          Top = 2.066136680000000000
          Width = 41.310231170000000000
          Height = 11.338582680000000000
          DataField = 'prImposto'
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
          Memo.UTF8W = (
            '[frxDataset."prImposto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 897.384732400000000000
          Top = 1.839364880000005000
          Width = 52.233072870000000000
          Height = 11.338582680000000000
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
          Memo.UTF8W = (
            '[frxDataset."vlImposto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMdescCadastro: TfrxMemoView
          Left = 185.504017100000000000
          Top = 1.952750779999974000
          Width = 298.582838270000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descCadastro"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line29: TfrxLineView
          Left = 491.220000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line30: TfrxLineView
          Left = 512.170000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object DBMEstado: TfrxMemoView
          Left = 493.053810400000000000
          Top = 1.952750779999974000
          Width = 15.836198970000000000
          Height = 11.338582680000000000
          DataField = 'idEstado'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."idEstado"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object DBMDia: TfrxMemoView
          Left = 514.422326200000000000
          Top = 1.952750779999974000
          Width = 17.574782770000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."dtEmissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 953.276142600000000000
          Top = 1.839364880000005000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'vlIsentas'
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
          Memo.UTF8W = (
            '[frxDataset."vlIsentas"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 1023.632116800000000000
          Top = 1.839364880000005000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'vlOutras'
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
          Memo.UTF8W = (
            '[frxDataset."vlOutras"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line33: TfrxLineView
          Left = 533.670000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line16: TfrxLineView
          Left = 655.140000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line4: TfrxLineView
          Left = 709.420000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line20: TfrxLineView
          Left = 768.910000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line22: TfrxLineView
          Left = 839.400000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line39: TfrxLineView
          Left = 893.750000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line24: TfrxLineView
          Left = 952.480000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line43: TfrxLineView
          Left = 1023.120000000000000000
          Top = 0.062987000000021000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line42: TfrxLineView
          Left = 23.250000000000000000
          Top = 15.399999999999980000
          Width = 1070.740849000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Line44: TfrxLineView
          Left = 23.250000000000000000
          Height = 15.140000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line45: TfrxLineView
          Left = 1093.950000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object linhaDetalhe: TfrxLineView
          Left = 23.250000000000000000
          Width = 1070.740849000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 0.226771800000000000
        Top = 340.157700000000000000
        Visible = False
        Width = 1122.520410000000000000
        DataSet = frxDBResumo
        DataSetName = 'frxResumo'
        RowCount = 0
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 15.118110240000000000
        Top = 362.834880000000000000
        Width = 1122.520410000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDBResumo
        DataSetName = 'frxResumo'
        PrintChildIfInvisible = True
        RowCount = 0
        object Shape3: TfrxShapeView
          Left = 23.250000000000000000
          Width = 1070.740157480000000000
          Height = 15.118110240000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo14: TfrxMemoView
          Left = 771.151574800000000000
          Top = 1.319999999999993000
          Width = 60.472440940000000000
          Height = 11.338582680000000000
          DataField = 'vlBaseCalculo'
          DataSet = frxDBResumo
          DataSetName = 'frxResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResumo."vlBaseCalculo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 534.553149610000000000
          Top = 1.319999999999993000
          Width = 63.118110240000000000
          Height = 11.338582680000000000
          DataField = 'vlTotal'
          DataSet = frxDBResumo
          DataSetName = 'frxResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResumo."vlTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line7: TfrxLineView
          Left = 839.400000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line8: TfrxLineView
          Left = 533.670000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line9: TfrxLineView
          Left = 600.530000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line10: TfrxLineView
          Left = 709.420000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line11: TfrxLineView
          Left = 768.910000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo52: TfrxMemoView
          Left = 710.679133860000000000
          Top = 1.319999999999993000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataSet = frxDBResumo
          DataSetName = 'frxResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxResumo."tpTributacao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo55: TfrxMemoView
          Left = 73.222480000000000000
          Top = 1.319999999999993000
          Width = 83.811070000000000000
          Height = 11.338582680000000000
          DataField = 'descResumo'
          DataSet = frxDBResumo
          DataSetName = 'frxResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResumo."descResumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 895.387795280000000000
          Top = 1.319999999999993000
          Width = 55.937010310000000000
          Height = 11.338582680000000000
          DataField = 'vlImposto'
          DataSet = frxDBResumo
          DataSetName = 'frxResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResumo."vlImposto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 1023.624015750000000000
          Top = 1.319999999999993000
          Width = 68.031498500000000000
          Height = 11.338582680000000000
          DataField = 'vlOutras'
          DataSet = frxDBResumo
          DataSetName = 'frxResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResumo."vlOutras"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Left = 893.750000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line6: TfrxLineView
          Left = 952.480000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo43: TfrxMemoView
          Left = 953.324803150000000000
          Top = 1.319999999999993000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'vlIsentas'
          DataSet = frxDBResumo
          DataSetName = 'frxResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResumo."vlIsentas"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line19: TfrxLineView
          Left = 1023.120000000000000000
          Height = 15.118110240000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.941747100000000000
        Top = 529.134199999999900000
        Width = 1122.520410000000000000
        object Line26: TfrxLineView
          Left = 31.370078740000000000
          Width = 568.062992130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo31: TfrxMemoView
          Left = 36.283464570000000000
          Top = 0.755905510000047700
          Width = 66.481932700000000000
          Height = 11.338582680000000000
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL GERAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 330.377952020000000000
          Top = 0.755905510000047700
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxResCfop."vlImposto">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 151.511810290000000000
          Top = 0.755905510000047700
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxResCfop."vlContabil">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 422.228345720000000000
          Top = 0.755905510000047700
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxResCfop."vlIsentas">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 240.645668560000000000
          Top = 0.755905510000047700
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxResCfop."vlBaseCalculo">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line63: TfrxLineView
          Left = 31.370078740000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line64: TfrxLineView
          Left = 148.512339000000000000
          Height = 12.094488190000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line65: TfrxLineView
          Left = 326.039022730000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line66: TfrxLineView
          Left = 415.235899980000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line67: TfrxLineView
          Left = 507.590551181102000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line68: TfrxLineView
          Left = 235.669290610000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line69: TfrxLineView
          Left = 599.298896980000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line70: TfrxLineView
          Left = 105.692981000000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo62: TfrxMemoView
          Left = 513.882221000000000000
          Top = 0.755905510000047700
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxResCfop."vlOutras">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line71: TfrxLineView
          Left = 31.322851000000000000
          Top = 12.779530000000020000
          Width = 568.062992130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 0.226771800000000000
        Top = 472.441250000000000000
        Visible = False
        Width = 1122.520410000000000000
        DataSet = frxDBResCfop
        DataSetName = 'frxResCfop'
        RowCount = 0
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        Height = 12.850393700000000000
        Top = 495.118430000000000000
        Width = 1122.520410000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDBResCfop
        DataSetName = 'frxResCfop'
        PrintChildIfInvisible = True
        RowCount = 0
        object Memo34: TfrxMemoView
          Left = 36.207897400000000000
          Top = 0.755905509999990900
          Width = 66.481932700000000000
          Height = 11.338582680000000000
          DataField = 'descCfop'
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxResCfop."descCfop"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 330.511811020000000000
          Top = 0.755905509999990900
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataField = 'vlImposto'
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResCfop."vlImposto"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 109.227997400000000000
          Top = 0.755905509999990900
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          DataField = 'idEstado'
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxResCfop."idEstado"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 151.645669290000000000
          Top = 0.755905509999990900
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataField = 'vlContabil'
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResCfop."vlContabil"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 422.362204720000000000
          Top = 0.755905509999990900
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataField = 'vlIsentas'
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResCfop."vlIsentas"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 240.779527560000000000
          Top = 0.755905509999990900
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataField = 'vlBaseCalculo'
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResCfop."vlBaseCalculo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line46: TfrxLineView
          Left = 31.370099000000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line47: TfrxLineView
          Left = 148.646198000000000000
          Height = 12.850393700787400000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line48: TfrxLineView
          Left = 326.172881730000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line49: TfrxLineView
          Left = 415.369758980000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line50: TfrxLineView
          Left = 507.590551181102000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line51: TfrxLineView
          Left = 235.803149610000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line52: TfrxLineView
          Left = 599.432755980000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line53: TfrxLineView
          Left = 105.826840000000000000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo48: TfrxMemoView
          Left = 514.016080000000000000
          Top = 0.755905509999990900
          Width = 78.614173230000000000
          Height = 11.338582680000000000
          DataField = 'vlOutras'
          DataSet = frxDBResCfop
          DataSetName = 'frxResCfop'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxResCfop."vlOutras"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line54: TfrxLineView
          Left = 31.456710000000000000
          Width = 568.062992130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 47.244094490000000000
        Top = 400.630180000000000000
        Width = 1122.520410000000000000
        ReprintOnNewPage = True
        object Memo53: TfrxMemoView
          Left = 34.015770000000000000
          Top = 18.897650000000000000
          Width = 238.110346060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RESUMO PARA PREENCHIMENTO DA GIA/ICMS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 34.015770000000000000
          Top = 34.771653543307080000
          Width = 68.031496060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line55: TfrxLineView
          Left = 31.370078740157500000
          Top = 34.015769999999970000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line56: TfrxLineView
          Left = 148.535433070866000000
          Top = 34.015769999999970000
          Height = 12.094488190000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line57: TfrxLineView
          Left = 326.173228346457000000
          Top = 34.015769999999970000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line58: TfrxLineView
          Left = 415.370078740157000000
          Top = 34.015769999999970000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line59: TfrxLineView
          Left = 507.590551181102000000
          Top = 34.015769999999970000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line60: TfrxLineView
          Left = 235.842519685039000000
          Top = 34.015769999999970000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line61: TfrxLineView
          Left = 599.433070866142000000
          Top = 34.015769999999970000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line62: TfrxLineView
          Left = 105.826771653543000000
          Top = 34.015769999999970000
          Height = 12.850393700000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line72: TfrxLineView
          Left = 31.370078740000000000
          Top = 34.015769999999970000
          Width = 568.062992130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo58: TfrxMemoView
          Left = 106.826840000000000000
          Top = 34.771653543307080000
          Width = 37.795256060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 151.181200000000000000
          Top = 34.771653543307080000
          Width = 79.370086060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VL. CONT'#193'BIL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 237.110390000000000000
          Top = 34.771653543307080000
          Width = 86.929146060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE C'#193'LCULO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 327.819110000000000000
          Top = 34.771653543307080000
          Width = 83.149616060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VL. IMPOSTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 416.968770000000000000
          Top = 34.771653543307080000
          Width = 86.929146060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VL. ISENTAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 510.236550000000000000
          Top = 34.771653543307080000
          Width = 86.929146060000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VL. OUTRAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBPagina: TfrxDBDataset
    UserName = 'frxPagina'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = cdsPagina
    BCDToCurrency = False
    Left = 488
    Top = 216
  end
  object dspPagina: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 656
    Top = 200
  end
  object cdsPagina: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT ISNULL(nrPaginaIni, 0) nrPaginaIni FROM Pagina WHERE 1=2'
    Params = <>
    ProviderName = 'dspPagina'
    Left = 688
    Top = 200
  end
  object cdsResumo: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelLivroSaidaRes 1, 8, '#39'01/08/2010'#39', '#39'31/08/2010'#39', 0'
    Params = <>
    ProviderName = 'dspResumo'
    Left = 696
    Top = 248
  end
  object dspResumo: TDataSetProvider
    DataSet = sdsResumo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 656
    Top = 248
  end
  object frxDBResumo: TfrxDBDataset
    UserName = 'frxResumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'descResumo=descResumo'
      'vlTotal=vlTotal'
      'vlBaseCalculo=vlBaseCalculo'
      'vlImposto=vlImposto'
      'vlIsentas=vlIsentas'
      'vlOutras=vlOutras'
      'tpTributacao=tpTributacao')
    OpenDataSource = False
    DataSet = cdsResumo
    BCDToCurrency = False
    Left = 488
    Top = 248
  end
  object frxDBResCfop: TfrxDBDataset
    UserName = 'frxResCfop'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'descCfop=descCfop'
      'idEstado=idEstado'
      'vlContabil=vlContabil'
      'vlBaseCalculo=vlBaseCalculo'
      'vlImposto=vlImposto'
      'vlIsentas=vlIsentas'
      'vlOutras=vlOutras')
    OpenDataSource = False
    DataSet = cdsResCfop
    BCDToCurrency = False
    Left = 408
    Top = 296
  end
  object dspResCfop: TDataSetProvider
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 304
  end
  object cdsResCfop: TClientDataSet
    Aggregates = <>
    CommandText = 'EXEC spRelLivroSaidaResCfop 1,5,'#39'01/01/2010'#39','#39'31/01/2010'#39', 0'
    Params = <>
    ProviderName = 'dspResCfop'
    Left = 696
    Top = 304
  end
  object sdsResumo: TSQLDataSet
    CommandText = 'EXEC spRelLivroSaidaRes 1, 8, '#39'01/08/2010'#39', '#39'31/08/2010'#39', 0'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 576
    Top = 248
  end
end
