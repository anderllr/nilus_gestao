inherited FrmRelContratoComissao: TFrmRelContratoComissao
  Caption = 'Relat'#243'rio de Comiss'#227'o de Contratos'
  ClientHeight = 456
  ClientWidth = 880
  ExplicitWidth = 896
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 880
    ExplicitWidth = 865
  end
  inherited Bevel1: TBevel
    Top = 418
    Width = 880
    ExplicitTop = 446
    ExplicitWidth = 865
  end
  inherited Bevel5: TBevel
    Width = 880
    ExplicitWidth = 865
  end
  inherited PanBotoes: TCPanelGradient
    Top = 422
    Width = 880
    ExplicitTop = 422
    ExplicitWidth = 880
  end
  inherited LookdescCadEmpresa: TCLookUp
    Top = 8
    ExplicitTop = 8
  end
  object CGroupBox4: TCGroupBox [9]
    Left = 8
    Top = 37
    Width = 689
    Height = 181
    Caption = 'Dados da Venda/Destinat'#225'rio'
    Color = 15201011
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    object CLabel12: TCLabel
      Left = 6
      Top = 47
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato Venda'
    end
    object lblCliFor: TCLabel
      Left = 49
      Top = 22
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
    end
    object CLabel3: TCLabel
      Left = 46
      Top = 128
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel4: TCLabel
      Left = 56
      Top = 78
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel5: TCLabel
      Left = 44
      Top = 103
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object CLabel6: TCLabel
      Left = 174
      Top = 128
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBEidContratoVenda: TCDBEdit
      Left = 88
      Top = 44
      Width = 104
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoVenda'
      DataSource = dsPadrao
      TabOrder = 1
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookEmissaoVenda: TCLookUp
      Left = 198
      Top = 44
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idContratoVenda')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoVenda'
      ReturnField = 'dtEmissao'
    end
    object LookContratoVenda: TCLookUp
      Left = 284
      Top = 44
      Width = 308
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idContratoVenda')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoVenda'
      ReturnField = 'obsContratoVenda'
    end
    object LookNrOriginal: TCLookUp
      Left = 598
      Top = 44
      Width = 80
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idContratoVenda')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa'
        'idContratoVenda')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContratoVenda'
      ReturnField = 'nrOriginal'
    end
    object LookCliente: TCLookUp
      Left = 156
      Top = 19
      Width = 278
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idCliente')
      LookUpKey.Strings = (
        'idCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descCadCliente'
    end
    object DBEidCliente: TCDBEdit
      Left = 88
      Top = 19
      Width = 62
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 0
      Find = dmFind.FindFornecedor
      AcaoCad = frmPrincipal.actCadCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object DBEidSafra: TCDBEdit [10]
    Left = 96
    Top = 112
    Width = 62
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idSafra'
    DataSource = dsPadrao
    TabOrder = 6
    Find = dmFind.FindSafra
    AcaoCad = frmPrincipal.actCadSafra
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookSafra: TCLookUp [11]
    Left = 164
    Top = 112
    Width = 293
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 7
    Key.Strings = (
      'idSafra')
    LookUpKey.Strings = (
      'idSafra')
    AlternateSQL.Strings = (
      
        'SELECT descSafra FROM Safra WHERE idEmpresa = [DBEidEmpresa] AND' +
        ' idSafra = ?')
    ClientDataSet = cdsLookUp
    DataSource = dsPadrao
    ValidaCampoObrigatorio = True
    CampoObrigatorio = True
    LookUpTable = 'Safra'
    ReturnField = 'descSafra'
  end
  object DBEidProduto: TCDBEdit [12]
    Left = 96
    Top = 137
    Width = 62
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idProduto'
    DataSource = dsPadrao
    TabOrder = 8
    Find = dmFind.FindProduto
    AcaoCad = frmPrincipal.actCadProduto
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookProduto: TCLookUp [13]
    Left = 164
    Top = 137
    Width = 246
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 9
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
  object DBEdtContratoIni: TCDBEdit [14]
    Left = 96
    Top = 162
    Width = 80
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'dtIni'
    DataSource = dsPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 10
    DecimalControl = True
    KeyMode = kmDate
  end
  object DBEdtContratoFim: TCDBEdit [15]
    Left = 204
    Top = 162
    Width = 80
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'dtFim'
    DataSource = dsPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 11
    DecimalControl = True
    KeyMode = kmDate
  end
  object DBCKconsolidaemp: TCDBCheckBox [16]
    Left = 95
    Top = 190
    Width = 127
    Height = 17
    Caption = 'Consolida Empresas?'
    DataField = 'consolidaEmp'
    DataSource = dsPadrao
    TabOrder = 12
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCKconsolidafilial: TCDBCheckBox [17]
    Left = 228
    Top = 190
    Width = 100
    Height = 17
    Caption = 'Consolida Filiais?'
    DataField = 'consolidaFilial'
    DataSource = dsPadrao
    TabOrder = 13
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBRGstContrato: TCDBRadioGroup [18]
    Left = 8
    Top = 224
    Width = 689
    Height = 57
    Caption = 'Status'
    Columns = 4
    DataField = 'status'
    DataSource = dsPadrao
    Items.Strings = (
      'Ativo         '
      'Cancelado'
      'Encerrado'
      'Todos')
    TabOrder = 14
    Values.Strings = (
      'ATIVO'
      'CANCELADO'
      'ENCERRADO'
      'TODOS')
  end
  inherited imgIcones: TImageList
    Left = 696
    Top = 144
  end
  inherited Acao: TActionList
    Left = 752
    Top = 144
  end
  inherited dspRelatorio: TDataSetProvider
    Left = 824
    Top = 112
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'EXEC spRelComissaoContrato 1,1,0,0,0, '#39#39', NULL, NULL, '#39'TODOS'#39', '#39 +
      'S'#39', '#39'S'#39
    Left = 776
    Top = 96
    object cdsRelatorioidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsRelatoriodescCadCliente: TStringField
      FieldName = 'descCadCliente'
      Size = 60
    end
    object cdsRelatoriodescRepresentante: TStringField
      FieldName = 'descRepresentante'
      Size = 150
    end
    object cdsRelatorioidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Size = 30
    end
    object cdsRelatoriodescProduto: TStringField
      FieldName = 'descProduto'
      Size = 80
    end
    object cdsRelatorioqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Precision = 18
      Size = 3
    end
    object cdsRelatoriodescSafra: TStringField
      FieldName = 'descSafra'
      Size = 30
    end
    object cdsRelatoriovlComissao: TFMTBCDField
      FieldName = 'vlComissao'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsRelatoriostContratoVenda: TStringField
      FieldName = 'stContratoVenda'
      Size = 30
    end
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idCliente=idCliente'
      'descCadCliente=descCadCliente'
      'descRepresentante=descRepresentante'
      'idContratoVenda=idContratoVenda'
      'descProduto=descProduto'
      'qtProduto=qtProduto'
      'descSafra=descSafra'
      'vlComissao=vlComissao'
      'dtEmissao=dtEmissao'
      'stContratoVenda=stContratoVenda')
    Left = 792
    Top = 160
  end
  inherited dsPadrao: TDataSource
    Left = 824
    Top = 328
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 776
    Top = 328
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraodtIni: TDateField
      FieldName = 'dtIni'
    end
    object cdsPadraodtFim: TDateField
      FieldName = 'dtFim'
    end
    object cdsPadraostatus: TStringField
      FieldName = 'status'
    end
    object cdsPadraoidContratoVenda: TStringField
      DisplayWidth = 30
      FieldName = 'idContratoVenda'
      Size = 30
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoconsolidaEmp: TStringField
      FieldName = 'consolidaEmp'
      Size = 1
    end
    object cdsPadraoconsolidaFilial: TStringField
      FieldName = 'consolidaFilial'
      Size = 1
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 800
    Top = 264
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 744
    Top = 200
  end
  inherited dspLookUp: TDataSetProvider
    Left = 664
    Top = 328
  end
  inherited cdsLookUp: TClientDataSet
    Left = 720
    Top = 328
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 688
    Top = 200
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 816
    Top = 208
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 712
    Top = 88
  end
  inherited dsEmpresa: TDataSource
    Left = 760
    Top = 40
  end
  inherited FindEmpresa: TCFind
    Left = 824
    Top = 40
  end
  object frxRel: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 42752.876239351900000000
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
    Left = 616
    Top = 328
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."idContratoVenda">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 315.590553620000000000
          Top = 3.779530000000022000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."qtProduto">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 397.228348900000000000
          Top = 3.779530000000022000
          Width = 90.708661420000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."descSafra">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 642.141734720000000000
          Top = 3.779530000000022000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
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
            '[(<frxDataset."vlComissao">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 490.582679610000000000
          Top = 3.779530000000022000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."dtEmissao">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 569.196852830000000000
          Top = 3.779530000000022000
          Width = 68.031496060000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."stContratoVenda">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 105.826774090000000000
          Top = 3.779530000000022000
          Width = 204.094488190000000000
          Height = 13.228346460000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."descProduto">)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 177.874150000000000000
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
        object Memo34: TfrxMemoView
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
            'COMISS'#195'O DE CONTRATOS')
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
        object Memo47: TfrxMemoView
          Left = 7.559060000000000000
          Top = 122.834631020000000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE :')
          ParentFont = False
        end
        object MDESC_CLIENTE: TfrxMemoView
          Left = 90.708632130000000000
          Top = 122.834631020000000000
          Width = 253.228510000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 347.716755120000000000
          Top = 122.834611500000000000
          Width = 64.252010000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'SAFRA :')
          ParentFont = False
        end
        object MDESC_SAFRA: TfrxMemoView
          Left = 415.748212130000000000
          Top = 122.834611500000000000
          Width = 234.330860000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 174.756030000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo41: TfrxMemoView
          Left = 7.559060000000000000
          Top = 139.842610000000000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRODUTO :')
          ParentFont = False
        end
        object MDESC_PRODUTO: TfrxMemoView
          Left = 90.708637010000000000
          Top = 139.842610000000000000
          Width = 173.858380000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 268.346630000000000000
          Top = 139.842610000000000000
          Width = 68.031540000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PER'#205'ODO :')
          ParentFont = False
        end
        object MDT_INICIAL: TfrxMemoView
          Left = 340.157700000000000000
          Top = 139.842610000000000000
          Width = 64.252010000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 404.409710000000000000
          Top = 139.842610000000000000
          Width = 30.236240000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object MDT_FINAL: TfrxMemoView
          Left = 438.425480000000000000
          Top = 139.842610000000000000
          Width = 64.251968500000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 105.826840000000000000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CONTRATO :')
          ParentFont = False
        end
        object MCONTRATO: TfrxMemoView
          Left = 90.708637010000000000
          Top = 105.826840000000000000
          Width = 136.063080000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 279.685220000000000000
          Top = 105.826840000000000000
          Width = 56.692950000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ATIVOS :')
          ParentFont = False
        end
        object MATIVO: TfrxMemoView
          Left = 340.157700000000000000
          Top = 105.826840000000000000
          Width = 18.897650000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 366.614410000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CANCELADOS :')
          ParentFont = False
        end
        object MCANCELADO: TfrxMemoView
          Left = 464.882190000000000000
          Top = 105.826840000000000000
          Width = 18.897650000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 487.559370000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENCERRADOS :')
          ParentFont = False
        end
        object MENCERRADO: TfrxMemoView
          Left = 585.827150000000000000
          Top = 105.826840000000000000
          Width = 18.897650000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 608.504330000000000000
          Top = 105.826840000000000000
          Width = 56.692950000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TODOS :')
          ParentFont = False
        end
        object MTODOS: TfrxMemoView
          Left = 668.976810000000000000
          Top = 105.826840000000000000
          Width = 18.897650000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 506.457020000000000000
          Top = 139.842610000000000000
          Width = 86.929190000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CONS. EMP. :')
          ParentFont = False
        end
        object MCONSOLIDAEMP: TfrxMemoView
          Left = 597.165740000000000000
          Top = 139.842610000000000000
          Width = 18.897650000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 612.283860000000000000
          Top = 139.842610000000000000
          Width = 52.913420000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FILIAL :')
          ParentFont = False
        end
        object MCONSOLIDAFILIAL: TfrxMemoView
          Left = 668.976810000000000000
          Top = 139.842610000000000000
          Width = 18.897650000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 544.252320000000100000
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        Condition = 'frxDataset."descCadCliente"'
        object Memo38: TfrxMemoView
          Left = 54.913297950000000000
          Top = 3.779530000000022000
          Width = 321.259964570000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."descCadCliente">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        Condition = 'frxDataset."descRepresentante"'
        object Shape3: TfrxShapeView
          Top = 20.677180000000020000
          Width = 718.110221570000000000
          Height = 18.141732280000000000
          Fill.BackColor = 14540253
          Frame.Color = 15790320
        end
        object Memo21: TfrxMemoView
          Left = 98.267657950000000000
          Width = 321.259969450000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."descRepresentante">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 3.779527560000000000
          Top = 22.677180000000020000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONTRATO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 315.464750000000000000
          Top = 22.677180000000020000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PESO (KG)')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 642.252320000000000000
          Top = 22.677180000000020000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMISS'#195'O')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 569.205320000000000000
          Top = 22.677180000000020000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 490.480830000000000000
          Top = 22.677180000000020000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 105.937230000000000000
          Top = 22.677180000000020000
          Width = 204.094620000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 397.181510000000000000
          Top = 22.677180000000020000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SAFRA')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REPRESENTANTE:')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          Left = 139.842610000000000000
          Top = 5.779530000000023000
          Width = 200.315090000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL GERAL REPRESENTANTE')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 642.141732280000000000
          Top = 3.779530000000022000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
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
            '[SUM(<frxDataset."vlComissao">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 139.842610000000000000
          Top = 2.000000000000000000
          Width = 200.315090000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL GERAL DO CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 642.141732280000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          DataSet = frxDataset
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
            '[SUM(<frxDataset."vlComissao">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
end
