inherited FrmPesRomaneio: TFrmPesRomaneio
  Caption = 'Pesquisa de Romaneio de Produ'#231#227'o'
  ClientHeight = 437
  ClientWidth = 738
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000020000000B0000000B0000000B0000000B0000000B0000000B0000
    000B0000000B0000000B0000000B0000000B0000000B00000002000000000000
    00000400002B2F1606A230180AA0301A0CA0321B0DA0311B0FA02F1B10A02F1C
    0EA02F1B0EA0311B0CA031190AA02F1708A02E1506A20400002B000000000000
    00000600004AC57F41FFCE9059FFD5A06FFFDEAF84FFCDAC8FFFC6A992FFC5A7
    90FFC0A186FFDBA97BFFD19762FFC98548FFC17432FF0700004A000000000000
    000006000045BA7335FFBF7D40FFC2844AFFC88D58FFAF835BFFA57A5AFFA57A
    58FFA17753FFC68850FFBE7C40FFBB7636FFB76D2AFF06000044000000000000
    00000400003ABA7230FFBD793AFFBE7C3FFFC28044FFA16B3BFF955D32FF965C
    30FF925C31FFC17E3FFFBC7738FFBB7431FFB86D2AFF0400003A000000000000
    0000342D2B3AB9712FFFBE7937FFBE7B3BFFC37F3FFF9D622EFF91501EFF9251
    1DFF8E5422FFC17E3DFFBD7837FFBD7734FFB8712FFF3831303A000000000000
    0000E1D9D639B67333FFC2803FFFC17F40FFC58241FF9A5D27FF8D450DFF9047
    0EFF8B4C18FFC48141FFC07E3DFFC17E3DFFBA7534FF9C94903A000000000000
    020C00000870BF7E3EFFCC8C4CFFC88A4DFFC88A4DFFBA7F46FFAF773FFFAE76
    3DFFB1773EFFCE955EFFD4A272FFD9AA79FFC3986AFF000A339A2C2C30070000
    000013295D655069A3FF99785CFFC0864BFFCD9153FFCE9155FFCE9559FFD8A7
    76FFE4BF9AFFE5C4A1FFCFB295FFA5A6B4FF4170C8F04A526626000000000000
    0000000000001B2F565387B7FFFFA9BEE2FFBEB7B5FFE0C7ACFFEED6BDFFECD4
    BBFFD7C4B1FFB2B7C6FFA8C5F8FF5F8EE2F04349592200000000000000000000
    000000000000000000001B2D4F51A7C8FFFFC8DFFFFFBED0F0FFCECED2FFC7CD
    D9FFBED4F9FFCEE4FFFF769BDCEE424757210000000000000000000000000000
    00000000000000000000000000001C2B4B4CB5CEFAFFE4F0FFFFDCEAFFFFDDEA
    FFFFEAF5FFFF7A9AD0E8464B591D000000000000000000000000000000000000
    0000000000000000000000000000000000002F3B553CB8CDF1FBF7FBFFFFFCFF
    FFFF7895C4DE62666E1200000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000333F5333C8DAF9FD88A1
    C9DE686D730E0000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000000004101E1316
    1B0D00000000000000000000000000000000000000000000000000000000FFFF
    0000800100008001000080010000800100008001000080010000800100000000
    000080010000C0030000E0070000F00F0000F81F0000FC3F0000FE7F0000}
  ExplicitWidth = 754
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 240
    Width = 736
    Height = 206
    Align = alCustom
    TabOrder = 2
    ExplicitTop = 240
    ExplicitWidth = 736
    ExplicitHeight = 206
    inherited DBGrid: TCDBGrid
      Width = 732
      Height = 189
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'S'#233'rie'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idRomaneio'
          Title.Caption = 'Romaneio'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idNF'
          Title.Caption = 'Nf'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idRomaneioArm'
          Title.Caption = 'Nr. Original'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idContratoVenda'
          Title.Caption = 'Contrato'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idArmazem'
          Title.Caption = 'Armaz'#233'm'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Descri'#231#227'o'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtRomaneio'
          Title.Caption = 'Emiss'#227'o'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtPesoLiquido'
          Title.Caption = 'Peso Liq.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descMotorista'
          Title.Caption = 'Motorista'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrCartaFrete'
          Title.Caption = 'Nr. Carta Frete'
          Width = 80
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 173
    Width = 738
    Height = 54
    ExplicitTop = 173
    ExplicitWidth = 738
    ExplicitHeight = 54
    object CLabel3: TCLabel [0]
      Left = 158
      Top = 8
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
    object CLabel2: TCLabel [1]
      Left = 10
      Top = 8
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel10: TCLabel [2]
      Left = 423
      Top = 8
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
    object CLabel12: TCLabel [3]
      Left = 264
      Top = 8
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nr. Original de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel16: TCLabel [4]
      Left = 642
      Top = 8
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
    object CLabel17: TCLabel [5]
      Left = 529
      Top = 8
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Frete de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Top = 26
      Height = 24
      TabOrder = 6
      ExplicitTop = 26
      ExplicitHeight = 24
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      Top = 26
      Height = 24
      TabOrder = 7
      ExplicitLeft = 652
      ExplicitTop = 26
      ExplicitHeight = 24
    end
    object DBEidContratoFim: TCDBEdit
      Left = 180
      Top = 5
      Width = 78
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEidContratoIni: TCDBEdit
      Left = 74
      Top = 5
      Width = 78
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEnrOrigFim: TCDBEdit
      Left = 445
      Top = 5
      Width = 78
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrOrigFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrOrigIni: TCDBEdit
      Left = 339
      Top = 5
      Width = 78
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrOrigIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrFreteFim: TCDBEdit
      Left = 664
      Top = 5
      Width = 60
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrFreteFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEnrFreteIni: TCDBEdit
      Left = 576
      Top = 5
      Width = 60
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrFreteIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 738
    Height = 173
    TabOrder = 0
    ExplicitWidth = 738
    ExplicitHeight = 173
    object Bevel2: TBevel [0]
      Left = 1
      Top = 139
      Width = 736
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 2
      ExplicitTop = 146
      ExplicitWidth = 734
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 1
      Width = 736
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    inherited PanEmpresa: TCPanelGradient
      Top = 5
      Width = 736
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 736
      ExplicitHeight = 28
      inherited DBEidEmpresa: TCDBEdit
        TabOrder = 1
      end
      inherited DBEidCadEmpresa: TCDBEdit
        TabOrder = 2
      end
      inherited LookdescCadEmpresa: TCLookUp
        Width = 214
        TabOrder = 3
        ExplicitWidth = 214
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 383
        Width = 151
        TabOrder = 4
        ExplicitLeft = 383
        ExplicitWidth = 151
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 210
        Top = 2
        TabOrder = 0
        Visible = False
        ExplicitLeft = 210
        ExplicitTop = 2
      end
      inherited LookidInscEstadual: TCLookUp
        TabOrder = 7
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 662
        Top = 6
        Width = 64
        Height = 17
        Caption = 'Filiais?'
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 540
        Top = 6
        Width = 116
        Height = 17
        Caption = 'Consolida Empresa?'
        Color = clBtnFace
        DataField = 'consolidaemp'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 33
      Width = 736
      Height = 106
      Align = alTop
      TabOrder = 1
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 12306636
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 734
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object CLabel7: TCLabel
        Left = 22
        Top = 11
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Motorista'
        Transparent = True
      end
      object CLabel9: TCLabel
        Left = 546
        Top = 11
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object CLabel23: TCLabel
        Left = 41
        Top = 36
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Safra'
      end
      object CLabel11: TCLabel
        Left = 384
        Top = 36
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto'
      end
      object lblCliFor: TCLabel
        Left = 16
        Top = 61
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Arm./Local'
      end
      object CLabel1: TCLabel
        Left = 389
        Top = 61
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
      end
      object CLabel13: TCLabel
        Left = 25
        Top = 86
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produtor'
      end
      object CLabel14: TCLabel
        Left = 518
        Top = 85
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
      object CLabel15: TCLabel
        Left = 384
        Top = 86
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nota de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBEidMotorista: TCDBEdit
        Left = 73
        Top = 8
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMotorista'
        DataSource = dsPadrao
        TabOrder = 0
        Find = dmFind.FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookDescCadCliente: TCLookUp
        Left = 125
        Top = 8
        Width = 236
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 1
        Key.Strings = (
          'idMotorista')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'descCadCliente'
      end
      object LookDescAbreviadaCliente: TCLookUp
        Left = 367
        Top = 8
        Width = 173
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idCliente')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'descAbreviada'
      end
      object LookidCnpjCpfCliente: TCLookUp
        Left = 600
        Top = 8
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idCliente')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'idCnpjCpf'
      end
      object DBEidSafra: TCDBEdit
        Left = 73
        Top = 33
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idSafra'
        DataSource = dsPadrao
        TabOrder = 4
        Find = dmFind.FindSafra
        AcaoCad = frmPrincipal.actCadSafra
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookSafra: TCLookUp
        Left = 125
        Top = 33
        Width = 253
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idSafra')
        LookUpKey.Strings = (
          'idSafra')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'Safra'
        ReturnField = 'descSafra'
      end
      object DBEidProduto: TCDBEdit
        Left = 428
        Top = 33
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idProduto'
        DataSource = dsPadrao
        TabOrder = 6
        Find = dmFind.FindProduto
        AcaoCad = frmPrincipal.actCadProduto
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookProduto: TCLookUp
        Left = 480
        Top = 33
        Width = 246
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 7
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
      object DBEidArmazem: TCDBEdit
        Left = 73
        Top = 58
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idArmazem'
        DataSource = dsPadrao
        TabOrder = 8
        Find = dmFind.FindFornecedor
        AcaoCad = frmPrincipal.actCadCliente
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookCliente: TCLookUp
        Left = 125
        Top = 58
        Width = 253
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 9
        Key.Strings = (
          'idArmazem')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'descCadCliente'
      end
      object CLookUp3: TCLookUp
        Left = 480
        Top = 58
        Width = 246
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 11
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
        Left = 428
        Top = 58
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCliente'
        DataSource = dsPadrao
        TabOrder = 10
        Find = dmFind.FindFornecedor
        AcaoCad = frmPrincipal.actCadCliente
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidProdutor: TCDBEdit
        Left = 73
        Top = 83
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idProdutor'
        DataSource = dsPadrao
        TabOrder = 12
        Find = dmFind.FindFornecedor
        AcaoCad = frmPrincipal.actCadSafra
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookProdutor: TCLookUp
        Left = 125
        Top = 83
        Width = 253
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 13
        Key.Strings = (
          'idProdutor')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'descCadCliente'
      end
      object DBEidNfIni: TCDBEdit
        Left = 428
        Top = 83
        Width = 85
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idNfIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidNfFim: TCDBEdit
        Left = 540
        Top = 83
        Width = 82
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idNfFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 143
      Width = 736
      Height = 29
      Align = alTop
      TabOrder = 2
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 15201011
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel8: TCLabel
        Left = 5
        Top = 8
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Romaneio de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel4: TCLabel
        Left = 135
        Top = 8
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
      object CLabel5: TCLabel
        Left = 233
        Top = 8
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
      object CLabel6: TCLabel
        Left = 358
        Top = 8
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
      object DBEidRomaneioIni: TCDBEdit
        Left = 73
        Top = 5
        Width = 56
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idRomaneioIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidRomaneioFim: TCDBEdit
        Left = 157
        Top = 5
        Width = 60
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idRomaneioFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEdtInicial: TCDBEdit
        Left = 277
        Top = 5
        Width = 75
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtInicial'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtFinal: TCDBEdit
        Left = 380
        Top = 5
        Width = 75
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtFinal'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBCKstConfirmar: TCDBCheckBox
        Left = 519
        Top = 6
        Width = 90
        Height = 17
        Caption = 'A Confirmar'
        DataField = 'stConfirmar'
        DataSource = dsPadrao
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKstAtivo: TCDBCheckBox
        Left = 465
        Top = 6
        Width = 48
        Height = 17
        Caption = 'Ativo'
        DataField = 'stAtivo'
        DataSource = dsPadrao
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 480
    Top = 272
    Bitmap = {
      494C010102000400800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000000000000000800000000000
      0000800000000000000080010000000000008001000000000000800100000000
      0000800100000000000000010000000000000001000000000000000100000000
      0000000100000000000000010000000000000001000000000000000300000000
      00008007000000000000800F0000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 416
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 168
  end
  inherited cdsLookUp: TClientDataSet
    Left = 240
  end
  inherited dspPadrao: TDataSetProvider
    Left = 168
    Top = 288
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 240
    Top = 288
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidArmazem: TIntegerField
      FieldName = 'idArmazem'
    end
    object cdsPadraoidMotorista: TIntegerField
      FieldName = 'idMotorista'
    end
    object cdsPadraoidRomaneioIni: TIntegerField
      FieldName = 'idRomaneioIni'
    end
    object cdsPadraoidRomaneioFim: TIntegerField
      FieldName = 'idRomaneioFim'
    end
    object cdsPadraonrOrigIni: TStringField
      FieldName = 'nrOrigIni'
    end
    object cdsPadraonrOrigFim: TStringField
      FieldName = 'nrOrigFim'
    end
    object cdsPadraoidContratoIni: TStringField
      FieldName = 'idContratoIni'
    end
    object cdsPadraoidContratoFim: TStringField
      FieldName = 'idContratoFim'
    end
    object cdsPadraoidProdutor: TIntegerField
      FieldName = 'idProdutor'
    end
    object cdsPadraostAtivo: TStringField
      FieldName = 'stAtivo'
      Size = 1
    end
    object cdsPadraostConfirmar: TStringField
      FieldName = 'stConfirmar'
      Size = 1
    end
    object cdsPadraoidNfIni: TIntegerField
      FieldName = 'idNfIni'
    end
    object cdsPadraoidNfFim: TIntegerField
      FieldName = 'idNfFim'
    end
    object cdsPadraonrFreteIni: TIntegerField
      FieldName = 'nrFreteIni'
    end
    object cdsPadraonrFreteFim: TIntegerField
      FieldName = 'nrFreteFim'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 312
    Top = 288
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT rom.idEmpresa, rom.idCadEmpresa, rom.idArmazem, cad.descA' +
      'breviada descArmazem, idRomaneio, dtRomaneio, qtPesoLiquido, mot' +
      '.descAbreviada descMotorista, rom.idContratoVenda, rom.idRomanei' +
      'oArm, rom.idNF, rom.nrCartaFrete FROM Romaneio rom LEFT JOIN vCa' +
      'dClienteContabil cad ON rom.idArmazem = cad.idCliente LEFT JOIN ' +
      'vCadClienteContabil mot ON rom.idMotorista = mot.idCliente WHERE' +
      ' 1=1'
    Left = 240
    Top = 344
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGrididArmazem: TIntegerField
      FieldName = 'idArmazem'
    end
    object cdsGriddescArmazem: TStringField
      FieldName = 'descArmazem'
      Size = 30
    end
    object cdsGrididRomaneio: TIntegerField
      FieldName = 'idRomaneio'
      Required = True
    end
    object cdsGriddtRomaneio: TSQLTimeStampField
      FieldName = 'dtRomaneio'
      Required = True
    end
    object cdsGridqtPesoLiquido: TIntegerField
      FieldName = 'qtPesoLiquido'
    end
    object cdsGriddescMotorista: TStringField
      FieldName = 'descMotorista'
      Size = 30
    end
    object cdsGrididContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Required = True
      Size = 30
    end
    object cdsGrididRomaneioArm: TIntegerField
      FieldName = 'idRomaneioArm'
    end
    object cdsGrididNF: TIntegerField
      FieldName = 'idNF'
    end
    object cdsGridnrCartaFrete: TIntegerField
      FieldName = 'nrCartaFrete'
    end
  end
  inherited dsGrid: TDataSource
    Left = 312
    Top = 344
  end
  inherited dspGrid: TDataSetProvider
    Left = 168
    Top = 344
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 104
    Top = 288
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT rom.idEmpresa, rom.idCadEmpresa, rom.idArmazem, cad.descA' +
      'breviada descArmazem, idRomaneio, dtRomaneio, qtPesoLiquido, mot' +
      '.descAbreviada descMotorista, rom.idContratoVenda, rom.idRomanei' +
      'oArm, rom.idNF, rom.nrCartaFrete FROM Romaneio rom LEFT JOIN vCa' +
      'dClienteContabil cad ON rom.idArmazem = cad.idCliente LEFT JOIN ' +
      'vCadClienteContabil mot ON rom.idMotorista = mot.idCliente WHERE' +
      ' 1=1'
    Left = 104
    Top = 344
  end
  inherited dsEmpresa: TDataSource
    Left = 456
    Top = 16
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 424
    Top = 16
  end
  object FindCliente: TCFind
    SelectClause.Strings = (
      
        'SELECT  idCliente, descCadCliente, descAbreviada, idCnpjCpf FROM' +
        ' vCadClienteContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadCliente')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCliente'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 312
    Top = 240
  end
end
