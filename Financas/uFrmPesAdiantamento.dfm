inherited FrmPesAdiantamento: TFrmPesAdiantamento
  Caption = 'Pesquisa de Adiantamentos'
  ClientHeight = 417
  ClientWidth = 736
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00001F1F1F09181A1D3B2D2F345B0C0D0F34000000190000000C000000000000
    0000000000000000000000000000000000000000000000000000000000000303
    03130606074E9DB3B8F3C4D7D7FEB9CDD0FD9CAEB3E8768389C4525B60993134
    3A6B1011133A0000001A2727270A000000000000000000000000000000000000
    002D0F0F12709FB9BCFEC5D8D8FEC3D7D7FEB8CFD0FEB0C9CAFEABC5C7FEA7C1
    C5FEA7BEC5FD99ABB3EC77848CC3525860710000000000000000000000000000
    0000131316289EB7BBFEB5CDCEFEB8CFCFFEA6C3C4FEA7C2C4FEA7C1C5FEA7C0
    C5FEA7C0C5FEA7BFC5FEA7BEC5FEA7BDC5FBB4BDCD7E00000000000000000000
    00006C6C7010A0BCBDFEA8C1C4FEB3CCCCFEA7C3C4FEA7C2C5FEA7C0C5FEA7C0
    C5FEA7BFC5FEA7BEC5FEA7BEC5FEA7BDC5FEA9B8C6BFEEEFF313000000000000
    000074747810A4C1C2FEA0B9BDFEB5CDCEFEB0C8CAFEAEC6C9FEABC3C7FEA9C0
    C4FEA9BFC5FEA9BFC6FEA9BEC6FEA8BCC5FEA9B8C6C2D5D9E34C000000000000
    00007474780EA5C2C3FE9EB8BBFEB5CBCDFEBACFD1FEB6CBCEFE9FC2C1FE8AC9
    C1FE8DC6C0FE95C3C1FE9EC1C3FEA6BEC5FEAFBCC9C6BDC4D387000000000000
    00007474780DA6C2C4FE9FBCBCFEAFC4C9FEC4D5D7FEBCCDCFFE95D0C6FE8ED3
    C8FE8DD1C7FE8CD0C6FE8ACEC5FE89CDC4FE8DC9C4F5B0C2CDBDF2F2F6110000
    00007474780DA6C2C4FEA4C1C1FEA1B9BEFECCDBDDFEC4D1D3FEA0DAD0FE98DA
    CEFE97D9CEFE96D8CDFE95D6CCFE93D5CBFE99D4CDFEB6D4D6D9DADCE64A0000
    00007474780BA6C2C4FCA5C3C3FE9CB8B9FEA7BBC0FEB3C2C5FEA8DCD4FE9EDE
    D2FEA1E1D4FEA0E0D4FE9FDED2FEA9DBD3FEBFE1DEF4D5E0E4C0CBCEDC840000
    00007474780AB0C8CBFAB3CCCCFEAEC9C9FEA6C1C1FE6A958CFE55C8ABFE0FB5
    8EFE1EB593FE33B99CFE55C0AAFE7EC0B6FEA0A4ADA8BABCC593C5C6D87B0000
    000000000000C3D3D7F5D9E6E6FED4E3E3FECEDDDDFE89B3A9FE78E2C8FE01CA
    97FE009871C71CC99DF83DD3ADFE56D7B6FD0F493A5500000000000000000000
    000000000000EDEEF31BE9EBF13CEAECF153C6C9CD6C52736CA789E6CFFE0CCD
    9DFE0060486D0F5C488B64DEC0FE83E5CCFE7AD7BFE892A6A00F000000000000
    000000000000000000000000000000000000000000003E3F3F0A1D58476D0C77
    5B7E000000001F202014459F87C5AAEDDCFEC1F1E5FE88B6A92A000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000010201B244B8C7A9B468774790000000000000000FFFF
    000081FF0000000F000000070000800300008001000080010000800100008000
    0000800000008000000080000000C0030000C0010000FC410000FFE30000}
  ExplicitWidth = 752
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 135
    Width = 736
    Height = 282
    TabOrder = 2
    ExplicitTop = 135
    ExplicitWidth = 736
    ExplicitHeight = 282
    inherited DBGrid: TCDBGrid
      Width = 732
      Height = 265
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 30
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
          FieldName = 'idAdiantamento'
          Title.Caption = 'ID Adto.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadGeral'
          Title.Caption = 'Cliente'
          Width = 50
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
          FieldName = 'dtAdiantamento'
          Title.Caption = 'Emiss'#227'o'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlAdiantamento'
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stAdiantamento'
          Title.Caption = 'Status'
          Width = 95
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 102
    Width = 736
    ExplicitTop = 102
    ExplicitWidth = 736
    inherited BtnExecutar: TCBitBtn
      Tag = 1
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 736
    Height = 102
    TabOrder = 0
    ExplicitWidth = 736
    ExplicitHeight = 102
    object Bevel2: TBevel [0]
      Left = 1
      Top = 67
      Width = 734
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
      Width = 734
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
      Width = 734
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 734
      ExplicitHeight = 28
      inherited LookdescCadEmpresa: TCLookUp
        Width = 214
        ExplicitWidth = 214
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 383
        Width = 151
        ExplicitLeft = 383
        ExplicitWidth = 151
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 210
        Top = 2
        Visible = False
        ExplicitLeft = 210
        ExplicitTop = 2
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
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 33
      Width = 734
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
        Left = 21
        Top = 61
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
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
        Width = 732
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
        Left = 20
        Top = 11
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
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
      object DBEidCliente: TCDBEdit
        Left = 59
        Top = 8
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCliente'
        DataSource = dsPadrao
        TabOrder = 0
        Find = dmFind.FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookDescCadCliente: TCLookUp
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
          'idCliente')
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
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 71
      Width = 734
      Height = 31
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
        Left = 12
        Top = 8
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Titulo de'
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
        Left = 353
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
      object DBEidAdiantamentoIni: TCDBEdit
        Left = 59
        Top = 5
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idAdiantamentoIni'
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
      object DBEidAdiantamentoFim: TCDBEdit
        Left = 157
        Top = 5
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idAdiantamentoFim'
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
        TabOrder = 2
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtFinal: TCDBEdit
        Left = 375
        Top = 5
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
        TabOrder = 3
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBCKstAtivo: TCDBCheckBox
        Left = 460
        Top = 7
        Width = 48
        Height = 17
        Caption = 'Ativo'
        DataField = 'stAtivo'
        DataSource = dsPadrao
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCKstAberto: TCDBCheckBox
        Left = 513
        Top = 7
        Width = 56
        Height = 17
        Caption = 'Aberto'
        DataField = 'stAberto'
        DataSource = dsPadrao
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCKstFinalizado: TCDBCheckBox
        Left = 583
        Top = 7
        Width = 73
        Height = 17
        Caption = 'Finalizado'
        DataField = 'stFinalizado'
        DataSource = dsPadrao
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 480
    Top = 272
    Bitmap = {
      494C010102000400280010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    object cdsPadraostAtivo: TBooleanField
      FieldName = 'stAtivo'
    end
    object cdsPadraostAberto: TBooleanField
      FieldName = 'stAberto'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoidAdiantamentoIni: TIntegerField
      FieldName = 'idAdiantamentoIni'
    end
    object cdsPadraoidAdiantamentoFim: TIntegerField
      FieldName = 'idAdiantamentoFim'
    end
    object cdsPadraostFinalizado: TBooleanField
      FieldName = 'stFinalizado'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 312
    Top = 288
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT adt.idEmpresa, adt.idCadEmpresa, adt.idCadGeral, cad.desc' +
      'Abreviada, idAdiantamento, dtAdiantamento, vlAdiantamento, stAdi' +
      'antamento FROM Adiantamento adt INNER JOIN vCadClienteContabil c' +
      'ad ON adt.idCadGeral = cad.idCliente'
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
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      Size = 30
    end
    object cdsGrididAdiantamento: TIntegerField
      FieldName = 'idAdiantamento'
      Required = True
    end
    object cdsGriddtAdiantamento: TSQLTimeStampField
      FieldName = 'dtAdiantamento'
      Required = True
    end
    object cdsGridvlAdiantamento: TFMTBCDField
      FieldName = 'vlAdiantamento'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridstAdiantamento: TStringField
      FieldName = 'stAdiantamento'
      Required = True
      Size = 15
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
      'SELECT adt.idEmpresa, adt.idCadEmpresa, adt.idCadGeral, cad.desc' +
      'Abreviada, idAdiantamento, dtAdiantamento, vlAdiantamento, stAdi' +
      'antamento FROM Adiantamento adt INNER JOIN vCadClienteContabil c' +
      'ad ON adt.idCadGeral = cad.idCliente'
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
