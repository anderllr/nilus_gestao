inherited FrmRelContratoVenda: TFrmRelContratoVenda
  Caption = 'Relat'#243'rio de Contratos de Venda'
  ClientHeight = 402
  ClientWidth = 662
  ExplicitWidth = 678
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 662
    ExplicitWidth = 713
  end
  inherited Bevel1: TBevel
    Top = 364
    Width = 662
    ExplicitTop = 397
    ExplicitWidth = 713
  end
  inherited Bevel5: TBevel
    Width = 662
    ExplicitWidth = 713
  end
  object CLabel4: TCLabel [4]
    Left = 57
    Top = 67
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Safra'
  end
  object CLabel5: TCLabel [5]
    Left = 45
    Top = 92
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto'
  end
  object CLabel1: TCLabel [6]
    Left = 40
    Top = 142
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Contrato'
  end
  object CLabel6: TCLabel [7]
    Left = 349
    Top = 142
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
  object CLabel3: TCLabel [8]
    Left = 218
    Top = 142
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data de'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblCliFor: TCLabel [9]
    Left = 50
    Top = 42
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente'
  end
  object CLabel27: TCLabel [10]
    Left = 11
    Top = 117
    Width = 72
    Height = 13
    Alignment = taRightJustify
    Caption = 'Local Descarga'
  end
  inherited PanBotoes: TCPanelGradient
    Top = 368
    Width = 662
    TabOrder = 24
    ExplicitTop = 368
    ExplicitWidth = 662
    inherited BtnFechar: TCBitBtn
      Left = 446
      ExplicitLeft = 446
    end
  end
  inherited DBEidEmpresa: TCDBEdit
    TabOrder = 0
  end
  inherited DBEidCadEmpresa: TCDBEdit
    TabOrder = 1
  end
  object DBEidSafra: TCDBEdit [16]
    Left = 89
    Top = 64
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
  object LookSafra: TCLookUp [17]
    Left = 157
    Top = 64
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
  object DBEidProduto: TCDBEdit [18]
    Left = 89
    Top = 89
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
  object LookProduto: TCLookUp [19]
    Left = 157
    Top = 89
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
  object LookProdMedida: TCLookUp [20]
    Left = 409
    Top = 89
    Width = 42
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 10
    Key.Strings = (
      'idProduto')
    LookUpKey.Strings = (
      'idProduto')
    AlternateSQL.Strings = (
      
        'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
        'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
        'uto = ?')
    ClientDataSet = cdsLookUp
    DataSource = dsPadrao
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
    LookUpTable = 'Produto'
    ReturnField = 'descAbreviada'
  end
  object DBEidContrato: TCDBEdit [21]
    Left = 89
    Top = 139
    Width = 105
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idContrato'
    DataSource = dsPadrao
    TabOrder = 13
    DecimalControl = True
    KeyMode = kmUSUpper
  end
  object DBEdtContratoFim: TCDBEdit [22]
    Left = 371
    Top = 139
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
    TabOrder = 15
    DecimalControl = True
    KeyMode = kmDate
  end
  object DBEdtContratoIni: TCDBEdit [23]
    Left = 262
    Top = 139
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
    TabOrder = 14
    DecimalControl = True
    KeyMode = kmDate
  end
  object DBRGstContrato: TCDBRadioGroup [24]
    Left = 28
    Top = 165
    Width = 422
    Height = 37
    Caption = 'Status'
    Columns = 4
    DataField = 'status'
    DataSource = dsPadrao
    Items.Strings = (
      'Ativo         '
      'Cancelado'
      'Encerrado'
      'Todos')
    TabOrder = 16
    Values.Strings = (
      'ATIVO'
      'CANCELADO'
      'ENCERRADO'
      'TODOS')
  end
  object DBCKmostrarZero: TCDBCheckBox [25]
    Left = 32
    Top = 253
    Width = 155
    Height = 17
    Caption = 'Mostrar com saldo zerado?'
    DataField = 'mostrarZero'
    DataSource = dsPadrao
    TabOrder = 18
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBEidCliente: TCDBEdit [26]
    Left = 89
    Top = 39
    Width = 62
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCliente'
    DataSource = dsPadrao
    TabOrder = 4
    Find = dmFind.FindFornecedor
    AcaoCad = frmPrincipal.actCadCliente
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookCliente: TCLookUp [27]
    Left = 157
    Top = 39
    Width = 293
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
  object DBEidDescarga: TCDBEdit [28]
    Left = 89
    Top = 114
    Width = 62
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idDescarga'
    DataSource = dsPadrao
    TabOrder = 11
    Find = dmFind.FindFornecedor
    AcaoCad = frmPrincipal.actCadSafra
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookDescarga: TCLookUp [29]
    Left = 157
    Top = 114
    Width = 294
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 12
    Key.Strings = (
      'idDescarga')
    LookUpKey.Strings = (
      'idCliente')
    ClientDataSet = cdsLookUp
    DataSource = dsPadrao
    ValidaCampoObrigatorio = True
    CampoObrigatorio = True
    LookUpTable = 'vCadClienteContabil'
    ReturnField = 'descCadCliente'
  end
  object DBCKRomAConfirmar: TCDBCheckBox [30]
    Left = 245
    Top = 253
    Width = 187
    Height = 17
    Caption = 'Incluir Romaneios "A CONFIRMAR"?'
    DataField = 'RomAConfirmar'
    DataSource = dsPadrao
    TabOrder = 19
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCKmostraNegativo: TCDBCheckBox [31]
    Left = 32
    Top = 276
    Width = 176
    Height = 17
    Caption = 'Mostrar com saldo NEGATIVO?'
    DataField = 'mostraNegativo'
    DataSource = dsPadrao
    TabOrder = 20
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCKAFixar: TCDBCheckBox [32]
    Left = 245
    Top = 276
    Width = 167
    Height = 17
    TabStop = False
    Caption = 'Incluir Contratos a Fixar?'
    DataField = 'AFixar'
    DataSource = dsPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCKconsolidaemp: TCDBCheckBox [33]
    Left = 32
    Top = 299
    Width = 127
    Height = 17
    Caption = 'Consolida Empresas?'
    DataField = 'consolidaEmp'
    DataSource = dsPadrao
    TabOrder = 22
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCKconsolidafilial: TCDBCheckBox [34]
    Left = 165
    Top = 299
    Width = 100
    Height = 17
    Caption = 'Consolida Filiais?'
    DataField = 'consolidaFilial'
    DataSource = dsPadrao
    TabOrder = 23
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object CDBRadioGroup1: TCDBRadioGroup [35]
    Left = 28
    Top = 208
    Width = 393
    Height = 37
    Caption = 'Tipo de Mercado'
    Columns = 3
    DataField = 'tpMercado'
    DataSource = dsPadrao
    Items.Strings = (
      'MERCADO INTERNO'
      'EXPORTA'#199#195'O'
      'TODOS')
    TabOrder = 17
    Values.Strings = (
      'MERCADO INTERNO'
      'EXPORTA'#199#195'O'
      'TODOS')
  end
  inherited cdsRelatorio: TClientDataSet
    AutoCalcFields = False
    CommandText = 
      'EXEC spRelContratoVenda 99,99,0,0,0,NULL, NULL, NULL, '#39'TODOS'#39', '#39 +
      'S'#39', 0'
    Left = 600
    Top = 48
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idCliente=idCliente'
      'descCadCliente=descCadCliente'
      'descAbreviada=descAbreviada'
      'idContratoVenda=idContratoVenda'
      'descEntrega=descEntrega'
      'vlSaca=vlSaca'
      'idDescarga=idDescarga'
      'descDescarga=descDescarga'
      'qtContrato=qtContrato'
      'qtEmbarcado=qtEmbarcado'
      'qtSaldo=qtSaldo')
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
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
    object cdsPadraoidContrato: TStringField
      DisplayWidth = 30
      FieldName = 'idContrato'
      Size = 30
    end
    object cdsPadraomostrarZero: TStringField
      FieldName = 'mostrarZero'
      Size = 1
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidDescarga: TIntegerField
      FieldName = 'idDescarga'
    end
    object cdsPadraoRomAConfirmar: TStringField
      FieldName = 'RomAConfirmar'
      Size = 1
    end
    object cdsPadraomostraNegativo: TStringField
      FieldName = 'mostraNegativo'
      Size = 1
    end
    object cdsPadraoAFixar: TStringField
      FieldName = 'AFixar'
      Size = 1
    end
    object cdsPadraoconsolidaEmp: TStringField
      FieldName = 'consolidaEmp'
      Size = 1
    end
    object cdsPadraoconsolidaFilial: TStringField
      FieldName = 'consolidaFilial'
      Size = 1
    end
    object cdsPadraotpMercado: TStringField
      FieldName = 'tpMercado'
      Size = 50
    end
  end
  object FrxRel: TfrxReport
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
    ReportOptions.LastChange = 41982.574073506940000000
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
    OnAfterPrint = FrxRelAfterPrint
    Left = 488
    Top = 57
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
        Height = 20.031498500000000000
        ParentFont = False
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        Columns = 1
        ColumnWidth = 188.976377952756000000
        ColumnGap = 11.338582677165400000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo14: TfrxMemoView
          Left = 176.811070000000000000
          Width = 56.941747100000000000
          Height = 13.228346460000000000
          DataField = 'idContratoVenda'
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
            '[frxDataset."idContratoVenda"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 330.149660000000000000
          Width = 53.177987100000000000
          Height = 13.228346460000000000
          DataField = 'vlSaca'
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
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."vlSaca"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 245.913420000000000000
          Width = 79.634697100000000000
          Height = 13.228346460000000000
          DataField = 'descEntrega'
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
            '[frxDataset."descEntrega"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          Left = 3.850340000000000000
          Width = 162.784357100000000000
          Height = 13.228346460000000000
          DataField = 'descCadCliente'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."descCadCliente"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 396.141930000000000000
          Width = 117.429997100000000000
          Height = 13.228346460000000000
          DataField = 'descDescarga'
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
            '[frxDataset."descDescarga"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 517.441250000000000000
          Width = 72.075637100000000000
          Height = 13.228346460000000000
          DataField = 'qtContrato'
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."qtContrato"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 592.606680000000000000
          Width = 56.957517100000000000
          Height = 13.228346460000000000
          DataField = 'qtEmbarcado'
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."qtEmbarcado"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 653.858690000000000000
          Width = 60.737047100000000000
          Height = 13.228346460000000000
          DataField = 'qtSaldo'
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDataset."qtSaldo"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Top = 302.362400000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
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
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTRATOS DE VENDA')
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
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 156.850393700787400000
          Width = 79.370130000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCARGA :')
          ParentFont = False
        end
        object MDESC_DESCARGA: TfrxMemoView
          Left = 90.708637010000000000
          Top = 156.850393700787400000
          Width = 257.008040000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 480.000310000000000000
          Top = 156.850393700787400000
          Width = 86.929190000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NEGATIVOS :')
          ParentFont = False
        end
        object MNEGATIVO: TfrxMemoView
          Left = 570.709030000000000000
          Top = 156.850393700787400000
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
        object Memo24: TfrxMemoView
          Left = 593.386210000000000000
          Top = 156.850393700787400000
          Width = 71.811070000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ZERADOS :')
          ParentFont = False
        end
        object MZERADO: TfrxMemoView
          Left = 668.976810000000000000
          Top = 156.850393700787400000
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
        object Memo65: TfrxMemoView
          Left = 351.496290000000000000
          Top = 156.850393700787400000
          Width = 102.047310000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'INCLUI A FIXAR :')
          ParentFont = False
        end
        object MAFIXAR: TfrxMemoView
          Left = 457.323130000000000000
          Top = 156.850393700787400000
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
        Top = 506.457020000000000000
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
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Width = 714.330691570000000000
          Height = 18.141732280000000000
          Fill.BackColor = 14540253
          Frame.Color = 15790320
        end
        object Memo8: TfrxMemoView
          Left = 1.511750000000000000
          Top = 2.614158580000009000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 170.456710000000000000
          Top = 2.614158580000009000
          Width = 64.252010000000000000
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
          Left = 323.133890000000000000
          Top = 2.614158580000009000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR SC/@')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 389.921460000000000000
          Top = 2.614158580000009000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LOCAL DESCARGA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 524.441250000000000000
          Top = 2.614158580000009000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CONTRATADO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 660.740570000000000000
          Top = 2.614158580000009000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 239.433210000000000000
          Top = 2.614158580000009000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENTREGA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 597.165740000000000000
          Top = 2.614158580000009000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EMBARCADO')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo26: TfrxMemoView
          Left = 137.283550000000000000
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
            'TOTAL GERAL')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 516.457020000000000000
          Width = 72.075637100000000000
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtContrato">,DetailData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 593.606680000000000000
          Width = 56.957517100000000000
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtEmbarcado">,DetailData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 657.638220000000000000
          Width = 56.957517100000000000
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
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtSaldo">,DetailData1)]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
end
