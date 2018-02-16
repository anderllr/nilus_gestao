inherited FrmGeraTituloPPag: TFrmGeraTituloPPag
  Caption = 'Gera t'#237'tulo da previs'#227'o - [PAGAMENTO]'
  ClientHeight = 516
  ClientWidth = 884
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000060000003C0000
    004B000000110000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000040000004B3F3C33C92726
    20DA000000600000000700000000000000000000000000000000000000000000
    0000000000000000000000000000000000070000004E3C382ACDA39979FF5550
    40FF000000D00000004A00000004000000000000000000000000000000000000
    0000000000000000000000000008000000562B2614D1999072FF99927BFF4F46
    29FF211E13FF000000BC00000038000000000000000000000000000000000000
    0000000000000000000800000058201B0AD6979076FFC3C0BBFF596079FF0612
    3DFF3A331EFF1B180EFE00000085000000090000000000000000000000000000
    00000000000A0000005D1B1711D7969181FF9195A1FF243761FF002066FF0025
    73FF0E152AFF493F1FFF16140EC4000000330000000000000000000000000000
    0001000000582C2924DD7A7A7CFF5B6B80FF123563FF002870FF00347FFF002D
    75FF001449FF1F1D17FF4D4325FA0D0C09990000001F00000000000000000000
    003135342FDA5A626FFF465569FF666765FF3F5E83FF002A79FF003287FF0033
    85FF002564FF061740FF3C3521FF3F371EF30504048200000014000000005957
    58A0272A51FF3F475BFF7C7B75FF637789FF165595FF003C8DFF17427AFF143D
    75FF002D79FF001F5BFF2F3750FF554C32FF251F0CEA0201026A0000000C3742
    7097001A5FFF406789FF2F639DFF08428DFF1B4676FF3E4F5CFF54504AFF5655
    55FF133A75FF00256AFF072158FF72747BFF4D462EFF100C00D401010035001C
    68B100317EFF124789FF325176FF565D63FF6A6661FF706D69FF757575FF8380
    7DFF757C84FF0E3473FF001A59FF253962FFB1B0AEFF342E20E40000002A002E
    7DB0003182FF192F69FF6F6B6FFF9B9892FF959595FF9D9D9DFFA4A4A4FFA9A9
    AAFFBBB8B3FF8D98A8FF072A68FF000A44FFB4B8C9FFC8C7C4D72020200C0023
    7B130021738700297BF80C1452FF7C7A86FFCDCDC9FFC5C5C5FFCACACAFFCECE
    CEFFC8C8C8FFC1BEB7FF677F99FF000B4DFFA3A4B4E4ECEAE575CCCCCD070000
    000000000000002D833C002372C1080C44FFA2A0A9FFE8E8E4FFDFDFDFFFE9E7
    E4FFE8E5E2FFB1ADA6FF838397FF001C5DFF445D875500000000000000000000
    0000000000000000000000257906001C72781B2E6BEEDCDBDBFFEEEDEAFFBFC9
    D5FF8396B4FA3D5784CD0632719002498155002D710C00000000000000000000
    0000000000000000000000000000000000000024862C4263A3B23A568EA93D5D
    86772A496D3800246C050000000000000000000000000000000000000000FC3F
    0000F81F0000F00F0000E00F0000C00700008007000000030000000100000000
    000000000000000000000000000000000000C0030000E0030000F81F0000}
  Position = poDesigned
  Visible = True
  ExplicitWidth = 900
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 156
    Width = 884
    Height = 360
    TabOrder = 2
    ExplicitTop = 156
    ExplicitWidth = 884
    ExplicitHeight = 360
    inherited DBGrid: TCDBGrid
      Width = 880
      Height = 195
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      OnDblClick = nil
      OnKeyDown = nil
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = '   ?'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'S'#233'rie'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrPrevisaoPag'
          Title.Caption = 'Nr.Previsao'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idParcela'
          Title.Caption = 'Parc.'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idFornecedor'
          Title.Caption = 'Fornecedor'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Descri'#231#227'o'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlParcela'
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stPrevisaoPagParc'
          Title.Caption = 'Status'
          Width = 95
          Visible = True
        end>
    end
    object CPanel1: TCPanel
      Left = 2
      Top = 210
      Width = 880
      Height = 26
      Align = alBottom
      TabOrder = 1
      object CLabel42: TCLabel
        Left = 2
        Top = 7
        Width = 114
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Saldo total listado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CLabel51: TCLabel
        Left = 504
        Top = 7
        Width = 140
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Soma total selecionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEvlSomaTotal: TCDBEdit
        Left = 117
        Top = 4
        Width = 116
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlSomaTotal'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEvlSomaSel: TCDBEdit
        Left = 650
        Top = 4
        Width = 110
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlSomaSel'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object PanOpcoes: TCPanelGradient
      Left = 2
      Top = 236
      Width = 880
      Height = 122
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 13099746
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel3: TCLabel
        Left = 15
        Top = 67
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornec.'
        Transparent = True
      end
      object lblDataBase: TCLabel
        Left = 472
        Top = 92
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Base'
      end
      object CLabel12: TCLabel
        Left = 341
        Top = 92
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#250'mero'
      end
      object CLabel13: TCLabel
        Left = 28
        Top = 90
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'S'#233'rie'
      end
      object CLabel21: TCLabel
        Left = 545
        Top = 67
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object DBRGopGeracao: TCDBRadioGroup
        Left = 7
        Top = 6
        Width = 554
        Height = 43
        Caption = 'Op'#231#245'es de Gera'#231#227'o'
        Columns = 3
        DataField = 'opGeracao'
        DataSource = dsGeracao
        Items.Strings = (
          'Mesmo valor e vencimento'
          'Nova data base'
          'Agrupar saldo e gerar novo t'#237'tulo')
        TabOrder = 0
        Values.Strings = (
          'M'
          'N'
          'A')
        OnExit = DBRGopGeracaoExit
      end
      object DBCKbaixaPrevisao: TCDBCheckBox
        Left = 575
        Top = 24
        Width = 150
        Height = 17
        Caption = 'Baixa previs'#227'o selecionada?'
        DataField = 'baixaPrevisao'
        DataSource = dsGeracao
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEidFornTit: TCDBEdit
        Left = 58
        Top = 64
        Width = 56
        Height = 19
        Hint = 'Informe o Fornecedor! '
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idFornTit'
        DataSource = dsGeracao
        TabOrder = 2
        Find = FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
      object CLookUp1: TCLookUp
        Left = 366
        Top = 64
        Width = 173
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
        Key.Strings = (
          'idFornTit')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsGeracao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'descAbreviada'
      end
      object CLookUp2: TCLookUp
        Left = 120
        Top = 64
        Width = 240
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idFornTit')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsGeracao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'descCadFornecedor'
      end
      object DBEidDocSerieTit: TCDBEdit
        Left = 58
        Top = 89
        Width = 56
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idDocSerieTit'
        DataSource = dsGeracao
        TabOrder = 6
        DecimalControl = True
        KeyMode = kmUSUpper
      end
      object DBEdtBase: TCDBEdit
        Left = 527
        Top = 89
        Width = 78
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtBase'
        DataSource = dsGeracao
        MaxLength = 10
        TabOrder = 9
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEnrTituloPag: TCDBEdit
        Left = 384
        Top = 89
        Width = 82
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'nrTituloPag'
        DataSource = dsGeracao
        TabOrder = 8
        DecimalControl = True
        KeyMode = kmNormal
      end
      object CLookUp3: TCLookUp
        Left = 120
        Top = 89
        Width = 215
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 7
        Key.Strings = (
          'idDocSerieTit')
        LookUpKey.Strings = (
          'idDocSerie')
        ClientDataSet = cdsLookUp
        DataSource = dsGeracao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'DocSerie'
        ReturnField = 'descDocSerie'
      end
      object CLookUp4: TCLookUp
        Left = 599
        Top = 64
        Width = 126
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idFornTit')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsGeracao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'idCnpjCpf'
      end
      object BtnGerarTitulo: TCBitBtn
        Tag = 1
        Left = 611
        Top = 89
        Width = 114
        Height = 25
        Caption = '&Gerar T'#237'tulo(s)'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00CEC6
          C1FEA99D96FF85756CFF6F5C52FF655046FF5B463CFF564036FF634D44FF6852
          49FF675148FF665147FF69564DFF7A6A62FF9C8F89FE857E7F7BE2DAD4FE726E
          55FF765648FF7C5D50FF7A5B4DFF795A4DFF77574CFF74564BFF73544AFF7253
          48FF715148FF6B4C42FF7D5D54FFAC8480FF4C4E35FFBFB6B4FDAE7B6EFFD9AD
          9DFFD5AA9CFFD1A79AFFCEA498FFCBA196FFC89F93FFC49C92FFC09990FFBC96
          8EFFB9938DFF95776AFF7A5C47FFD4A891FF232709FFA39B97FFAE7B6EFFEFE7
          DEFFFFEEDDFFFFEAD6FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFD4
          A9FFFFD0A2FFD9AAA8FF6E503EFFB08876FF281F0BFF544B48FFDDD6D0FFC28F
          79FFFFF2E5FFFFEEDDFF6A9D58FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8
          B2FFFFD4A9FFF7BFB0FF7C5E4FFF906D5DFF4D3127FF463835FFECE8E3FFC895
          7CFFFEF5EBFFFFF2E5FF2D842BFF7FA86AFFFFE6CDFFFFE3C8FFFFDFBEFFFFDC
          B9FFFFD8B2FFFFCFAEFF997970FF745547FF533E31FF4A3935FFFF00FF00CF9C
          80FFF3EFEAFFFFF5ECFF2D842BFF2D842BFFB1C194FFFFE6CDFFFFE3C8FFFFDF
          BEFFFFDCB9FFFFD8B2FFDDA5A1FF6B4C3DFF55372DFF4B3934FF2D842BFF2D84
          2BFF2D842BFF2D842BFF2D842BFF1EB73CFF0D8212FFE9DFC4FFFFE6CDFFFFE3
          C8FFFFDFBEFFFFDCB9FFF7B9ACFF7D5E51FF52362BFF4B3934FF339039FF55EF
          88FF47E17BFF39D36CFF31CA63FF21BB44FF10A821FF248020FFFFEAD6FFFFE6
          CDFFFFE3C8FFFFDFBEFFFFD2B7FF9D8075FF44281DFF4A3732FF339039FF48D9
          73FF3CCD67FF31C25CFF2BBD57FF25BE4BFF12A525FF2D842BFFFFEEDDFFFFEA
          D6FFFFE6CDFFFFE3C8FFFFDFBEFFE1A29BFF402418FF503B33FFFF00FF00FF00
          FF00CF9C80FFC8D1BBFF2B8C34FF27BF4EFF268528FFFFF5ECFFFFF2E5FFFFEE
          DDFFFFEAD6FFFFE6CDFFFFE3C8FFF8B3A8FF65493CFF4E382FFFFF00FF00FF00
          FF00D7AC8BFFCF9C80FF32903BFF1E8628FFF7F9F4FFFFF8F1FFFFF5ECFFFFF2
          E5FFFFEEDDFFFFE4D3FFFFDEC9FFFFC4B6FF937469FF442D23FFFF00FF00FF00
          FF00FF00FF00DCA987FF2F812FFFDBE9DBFFFFFFFFFFFFFDFBFFFFF8F1FFFFF5
          ECFFF8E6D7FFDBA383FFD69671FFD08E6CFFBD9A80FF5C4841FFFF00FF00FF00
          FF00FF00FF00DCA987FFF9F2EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFF8
          F1FFFDF3E9FFDCA987FFFFB34EFFE0A86CFF997269FFA3928FFFFF00FF00FF00
          FF00FF00FF00FBF8F1FFDCA987FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FBFFFFF8F1FFDCA987FFE6BB93FF6A6546FF7C8768FFECEBE7FBFF00FF00FF00
          FF00FF00FF00FF00FF00DCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA9
          87FFDCA987FFDCA987FFE5DFDAFFF2F1F0FFF7F5F5FBCCB2A956}
        TabOrder = 10
        OnClick = BtnGerarTituloClick
      end
      object DBEidUsuario: TCDBEdit
        Left = 776
        Top = 41
        Width = 57
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'idUsuario'
        DataSource = dsGeracao
        TabOrder = 11
        Visible = False
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 123
    Width = 884
    ExplicitTop = 123
    ExplicitWidth = 884
    inherited BtnExecutar: TCBitBtn
      Tag = 1
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 884
    Height = 123
    TabOrder = 0
    ExplicitWidth = 884
    ExplicitHeight = 123
    object Bevel2: TBevel [0]
      Left = 1
      Top = 67
      Width = 882
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 102
      ExplicitWidth = 653
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 1
      Width = 882
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
      Width = 882
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 882
      ExplicitHeight = 28
      inherited LookdescAbreviada: TCLookUp
        Width = 173
        ExplicitWidth = 173
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 600
        Top = 5
        ExplicitLeft = 600
        ExplicitTop = 5
      end
    end
    object PanFornecedor: TCPanelGradient
      Left = 1
      Top = 33
      Width = 882
      Height = 34
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
      object CLabel14: TCLabel
        Left = 8
        Top = 114
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
      object CLabel15: TCLabel
        Left = 164
        Top = 114
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
      object CLabel16: TCLabel
        Left = 298
        Top = 114
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
      object CLabel17: TCLabel
        Left = 430
        Top = 114
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
      object CLabel18: TCLabel
        Left = -1
        Top = 61
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornecedor'
        Transparent = True
      end
      object CLabel19: TCLabel
        Left = 6
        Top = 83
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object CLabel20: TCLabel
        Left = 192
        Top = 83
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inscr. Estadual'
        Transparent = True
      end
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 880
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object Bevel4: TBevel
        Left = 0
        Top = 104
        Width = 606
        Height = 4
        Shape = bsFrame
        Style = bsRaised
      end
      object CLabel7: TCLabel
        Left = 16
        Top = 11
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornec.'
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
      object DBEidFornecedor: TCDBEdit
        Left = 59
        Top = 8
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idFornecedor'
        DataSource = dsPadrao
        TabOrder = 0
        Find = FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookDescCadFornecedor: TCLookUp
        Left = 111
        Top = 8
        Width = 250
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 1
        Key.Strings = (
          'idFornecedor')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'descCadFornecedor'
      end
      object LookDescAbreviadaFornecedor: TCLookUp
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
          'idFornecedor')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'descAbreviada'
      end
      object LookidCnpjCpfFornecedor: TCLookUp
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
          'idFornecedor')
        LookUpKey.Strings = (
          'idFornecedor')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vCadFornecedorContabil'
        ReturnField = 'idCnpjCpf'
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 71
      Width = 882
      Height = 51
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
        Left = 31
        Top = 8
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Previs'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel4: TCLabel
        Left = 154
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
        Left = 19
        Top = 32
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel6: TCLabel
        Left = 154
        Top = 32
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
      object CLabel11: TCLabel
        Left = 252
        Top = 7
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'S'#233'rie'
      end
      object CLabel1: TCLabel
        Left = 435
        Top = 34
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
      object CLabel2: TCLabel
        Left = 283
        Top = 32
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vencimento de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBEidPrevisaoPagIni: TCDBEdit
        Left = 78
        Top = 5
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idPrevisaoPagIni'
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
      object DBEidPrevisaoPagFim: TCDBEdit
        Left = 176
        Top = 5
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idPrevisaoPagFim'
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
        Left = 78
        Top = 29
        Width = 70
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
        TabOrder = 4
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtFinal: TCDBEdit
        Left = 176
        Top = 29
        Width = 70
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
        TabOrder = 5
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidDocSerie: TCDBEdit
        Left = 282
        Top = 4
        Width = 56
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idDocSerie'
        DataSource = dsPadrao
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmUSUpper
      end
      object LookDocSerie: TCLookUp
        Left = 344
        Top = 4
        Width = 183
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idDocSerie')
        LookUpKey.Strings = (
          'idDocSerie')
        AlternateSQL.Strings = (
          
            'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 1 AND i' +
            'dDocSerie = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'DocSerie'
        ReturnField = 'descDocSerie'
      end
      object DBEdtVencimentoIni: TCDBEdit
        Left = 359
        Top = 29
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtVencimentoIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtVencimentoFim: TCDBEdit
        Left = 457
        Top = 29
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtVencimentoFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        DecimalControl = True
        KeyMode = kmDate
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 600
    Top = 256
    Bitmap = {
      494C0101020004003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 568
    Top = 256
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 360
    Top = 224
  end
  inherited cdsLookUp: TClientDataSet
    Left = 424
    Top = 224
  end
  inherited dspPadrao: TDataSetProvider
    Left = 360
    Top = 280
  end
  inherited cdsPadrao: TClientDataSet
    Left = 424
    Top = 280
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraoidPrevisaoPagIni: TIntegerField
      FieldName = 'idPrevisaoPagIni'
    end
    object cdsPadraoidPrevisaoPagFim: TIntegerField
      FieldName = 'idPrevisaoPagFim'
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraodtVencimentoIni: TDateTimeField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateTimeField
      FieldName = 'dtVencimentoFim'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 496
    Top = 280
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 
      'SELECT CONVERT(CHAR(1), '#39'N'#39') sel, p.idFornecedor, cad.descAbrevi' +
      'ada, p.idPrevisaoPag, p.nrPrevisaoPag, p.idDocSerie, p.dtEmissao' +
      ', p.vlPrevisaoPag, p.stPrevisaoPag, pp.vlParcela, pp.dtVenciment' +
      'o, pp.stPrevisaoPagParc, pp.idParcela, CONVERT(TINYINT, 0) fator' +
      '  FROM PrevisaoPag p INNER JOIN vCadFornecedorContabil cad ON p.' +
      'idFornecedor = cad.idFornecedor INNER JOIN PrevisaoPagParc pp ON' +
      ' p.idPrevisaoPag = pp.idPrevisaoPag '
    Left = 424
    Top = 336
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsGridnrPrevisaoPag: TStringField
      FieldName = 'nrPrevisaoPag'
      Required = True
      FixedChar = True
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGridvlPrevisaoPag: TFMTBCDField
      FieldName = 'vlPrevisaoPag'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsGridstPrevisaoPag: TStringField
      FieldName = 'stPrevisaoPag'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsGridsel: TStringField
      FieldName = 'sel'
      OnGetText = cdsGridselGetText
      FixedChar = True
      Size = 1
    end
    object cdsGrididPrevisaoPag: TIntegerField
      FieldName = 'idPrevisaoPag'
      Required = True
    end
    object cdsGridvlParcela: TFMTBCDField
      FieldName = 'vlParcela'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsGridstPrevisaoPagParc: TStringField
      FieldName = 'stPrevisaoPagParc'
      Required = True
      Size = 15
    end
    object cdsGrididParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsGridfator: TByteField
      FieldName = 'fator'
    end
    object cdsGridvlSomaTotal: TAggregateField
      FieldName = 'vlSomaTotal'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlParcela)'
    end
    object cdsGridvlSomaSel: TAggregateField
      FieldName = 'vlSomaSel'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlParcela*fator)'
    end
  end
  inherited dsGrid: TDataSource
    Left = 496
    Top = 336
  end
  inherited dspGrid: TDataSetProvider
    Left = 360
    Top = 336
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 296
    Top = 280
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT CONVERT(CHAR(1), '#39'N'#39') sel, p.idFornecedor, cad.descAbrevi' +
      'ada, p.idPrevisaoPag, p.nrPrevisaoPag, p.idDocSerie, p.dtEmissao' +
      ', p.vlPrevisaoPag, p.stPrevisaoPag, pp.vlParcela, pp.dtVenciment' +
      'o, pp.stPrevisaoPagParc, pp.idParcela, CONVERT(TINYINT, 0) fator' +
      '  FROM PrevisaoPag p INNER JOIN vCadFornecedorContabil cad ON p.' +
      'idFornecedor = cad.idFornecedor INNER JOIN PrevisaoPagParc pp ON' +
      ' p.idPrevisaoPag = pp.idPrevisaoPag'
    Left = 296
    Top = 336
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, descAbreviada, idCnpjCp' +
        'f FROM vCadFornecedorContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadFornecedor')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFornecedor'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 496
    Top = 224
  end
  object dsGeracao: TDataSource
    DataSet = cdsGeracao
    Left = 680
    Top = 320
  end
  object cdsGeracao: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsGeracaoAfterInsert
    Left = 608
    Top = 320
    object cdsGeracaoopGeracao: TStringField
      FieldName = 'opGeracao'
      Size = 1
    end
    object cdsGeracaobaixaPrevisao: TStringField
      FieldName = 'baixaPrevisao'
      Size = 1
    end
    object cdsGeracaoidFornTit: TIntegerField
      FieldName = 'idFornTit'
    end
    object cdsGeracaonrTituloPag: TStringField
      FieldName = 'nrTituloPag'
    end
    object cdsGeracaodtBase: TDateTimeField
      FieldName = 'dtBase'
    end
    object cdsGeracaoidDocSerieTit: TStringField
      FieldName = 'idDocSerieTit'
      Size = 5
    end
    object cdsGeracaoidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
  end
end
