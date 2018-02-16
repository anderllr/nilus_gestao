inherited FrmImprimeCheque: TFrmImprimeCheque
  Caption = 'Impress'#227'o de Cheques - [LISTA]'
  ClientHeight = 496
  ClientWidth = 884
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000008988
    88245B5353B2574F4FBB514C4CA34645457F5754546D69676756B0AFAF147B7B
    7B3B898989718C8C8C59919191439999992EA8A8A81DBBBBBB10000000003B35
    35A1978A8AFDAFA0A0FDAEA0A0FD4C4747FD343030FD282525FC272424E64A46
    46DBB8B3B3FDF9F9F9FCF6F6F6FBEEEEEEF7E0E0E0F1CCCCCCE6B5B5B59F4A43
    42AE928585FDBFB0B0FDB2A4A4FD9A8E8EFD918686FC8E8383FC867C7CFD736A
    6AFDA09393FDC2BDBDFDD9D9D9FDE1E1E1FDF5F5F5FDDCDCDCE0ABABAB202F2A
    2A77C6B9B9FDF3E4E4FDECDBDBFDDECDCDFDD3C2C2FDC7B7B8FDCBBABAFDC8B8
    B8FDC8B7B7FDB0A9A9FD8A8A8AFDB8B8B8FDF0F0F0F54040403A000000001716
    162CEEECECF6FBFAFAFDD3CCCCFDE4DEDEFDF3EEEEFDF7F0F0FDF9F1F1FDF9F0
    F0FDFBF2F2FDF7F6F6FDEBEBEBFDDEDEDDFC5C5C5C950000000C000000000000
    00007B7878D4918C8BFC57504FFD5B5352FD645D5BFC978E8DFCDDD7D7FCDCDB
    DBFCDADADAFDF6F6F6FCFAFAFAFDE6E5E5FDBEBBB9F5686261C36C6B6B2A0302
    02133F3A3ADE625958FC645B5AFD655D5BFD58504FFCC1BFBFFCD3D3D3FCA9A9
    A9FC9A9A9AFDC0C0C0FCF6F6F6FDF4F2F2FDF0EAE9FDDCCFCEFCAFA9A9770000
    00001B181855756B6AFC9D9393FD978D8CFD736968FCECE7E8FCFCFAFAFCFAF8
    F9FCEAE9E9FDF3F0F0FDF7F1F0FDF0E7E7FDE8DBDAFDBCB1B0D99493930F0000
    00000C0C0C74A69C9CFCC4BCBCFDD8D2D2FDD6D1D1FCDDD9D9FCE5E2E2FCEDEB
    EBFDF4F0F0FDF7F2F2FDF6EFEFFDF1E7E6FDE8DBDAFC4B464650000000000000
    000B4D4949C9CBC1C1FDBCB4B3FDD0C9C9FDC0BBBBFDB8B4B3FDB6B3B2FDBAB7
    B6FDC2BEBEFDCFCAC9FDDCD5D4FDE6DCDBFDBFB4B3C700000000000000000202
    0246999191F5D7CBCBFDD0C5C5FDD9CFCFFDDCD4D4FCD9D3D3FCD3CFCFFDCCC7
    C7FDC2BEBDFDBDB8B7FDC0BAB9FDD2C8C7FC8E87865100000000000000001D1B
    1BA1C1B6B6FCD2C7C6FDDACECEFDE1D5D5FDE5DADAFDE5DBDBFDE2D8D8FDDFD6
    D6FDDBD2D2FDD7CECEFDC8BFBEFDD0C5C4E86A68680D0000000000000000403B
    3B9EAEA4A4D9C1B6B6E6CEC3C3F0D7CBCBF38E8686917A7373788F888890A79E
    9FAAB9AFAFC2C8BDBDD8C9BEBEE8635E5D6E0000000000000000000000000000
    000000000000DADADA09E3E2E211EAE8E8180000000000000000000000000000
    00000000000000000000DCDCDC0B000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000001
    0000000000000000000000010000000100008000000000000000800000008001
    000000030000000300000003000000070000C7EF0000FFFF0000FFFF0000}
  Position = poDesigned
  Visible = True
  ExplicitWidth = 900
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 149
    Width = 884
    Height = 347
    TabOrder = 2
    ExplicitTop = 126
    ExplicitWidth = 884
    ExplicitHeight = 355
    inherited DBGrid: TCDBGrid
      Width = 880
      Height = 269
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
          FieldName = 'idCheque'
          Title.Caption = 'Cheque'
          Width = 65
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
          FieldName = 'descCadFornecedor'
          Title.Caption = 'Descri'#231#227'o'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlMovConta'
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtMovConta'
          Title.Caption = 'Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descGerencial'
          Title.Caption = 'Gerencial'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descMovConta'
          Title.Caption = 'Hist'#243'rico'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fat'
          Title.Caption = 'Fat'
          Visible = False
        end>
    end
    object CPanel1: TCPanel
      Left = 2
      Top = 284
      Width = 880
      Height = 26
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 292
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
      Top = 310
      Width = 880
      Height = 35
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
      ExplicitTop = 318
      object btnImprimir: TCBitBtn
        Left = 650
        Top = 6
        Width = 214
        Height = 25
        Caption = '&Imprimir Cheques Selecionados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          36080000424D3608000000000000360000002800000020000000100000000100
          2000000000000008000000000000000000000000000000000000FF00FF00FF00
          FF00F1F1F1FFB8B7B7FFFFFFFFFFFBFBFBFFFDFDFDFFFCFCFCFFFDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFC1BFC0FFF7F7F7FFFF00FF00FF00FF00FF00FF00FF00
          FF00F4F4F4FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFF00FF00FF00FF00E1E1E1FFC1C1
          C1FFB4B4B4FFB0B0B0FFFAFAFAFFE9E9E9FFECECECFFF3F3F3FFF1F1F1FFF4F4
          F4FFF5F5F5FFFFFFFFFFB8B7B7FFB7B7B7FFC0C0C0FFE2E2E2FFEAEAEAFFD3D3
          D3FFCACACAFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF9F9F9FFCCCCCCFFD3D3D3FFEAEAEAFF919191FF7E7F
          7EFF6B6B6BFFB4B4B4FFFBFBFBFFF0F0F0FFF3F3F3FFF3F3F3FFF1F1F1FFF1F1
          F1FFF4F4F4FFFFFFFFFFB8B7B7FF626262FF6B6C6BFF8F8F8FFFBCBCBCFFC6C6
          C6FFB2B2B2FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FFB3B3B3FFB7B7B7FF7C7C7CFF6C6C
          6CFF6A6A6AFF969696FFC4C4C4FFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFC5C5
          C5FFC4C4C4FFC5C5C5FF949393FF727271FF797A78FF898989FFAFAFAFFFB3B3
          B3FFB1B1B1FFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDBDBDBFFB9B9B9FFC0C0C0FFB7B7B7FF696969FF4F4F
          4FFF565656FF4A4949FF484848FF4A4A4AFF4B4B4BFF4A4A4AFF4A4A4AFF4A4A
          4AFF4B4B4BFF464646FF494848FF6D6D6DFF797979FF898989FFA0A0A0FF9797
          97FF9D9D9DFF919191FF8F8F8FFF919191FF929292FF919191FF919191FF9191
          91FF929292FF8D8D8DFF909090FFB4B4B4FFC0C0C0FFB9B9B9FF666666FF5151
          51FF545554FF2B2B2BFF212121FF222222FF222222FF212121FF212121FF2020
          20FF202020FF1F1F1FFF2A2A2AFF666665FF797878FF878787FF9D9D9DFF9898
          98FF9C9C9CFF737373FF686868FF696969FF696969FF686868FF686868FF6767
          67FF676767FF666666FF727272FFADADADFFC0C0C0FFB8B8B8FF676767FF4F4F
          4FFF555556FF4E4D4EFF444444FF464646FF464646FF464646FF474747FF4848
          48FF494949FF484848FF575756FF696869FF747474FF858686FF9F9F9FFF9797
          97FF9D9D9DFF959595FF8B8B8BFF8D8D8DFF8D8D8DFF8D8D8DFF8E8E8EFF8F8F
          8FFF909090FF8F8F8FFF9E9E9EFFB0B0B0FFBBBBBBFFB6B6B6FF6A6B6AFF5152
          52FF5C5D5DFF555554FF494949FF4C4C4CFF4F4F4FFF515151FF545454FF5656
          56FF575757FF555555FF616161FF6B6B6BFF717171FF888888FFA1A1A1FF9999
          99FFA4A4A4FF9C9C9CFF909090FF939393FF979797FF989898FF9C9C9CFF9D9D
          9DFF9E9E9EFF9C9C9CFFA8A8A8FFB2B2B2FFB8B8B8FFB9B9B9FF878787FF9898
          98FFABAAAAFF686868FF4E4E4EFF5C5C5CFF656565FF686868FF696969FF6666
          66FF5F5F5FFF505050FF717172FFC1C1C1FFBCBCBCFF9D9D9DFFBABABAFFDFDF
          DFFFF2F2F2FFB0B0B0FF959595FFA3A3A3FFACACACFFB0B0B0FFB0B0B0FFADAD
          ADFFA6A6A6FF979797FFB9B9B9FFFFFFFFFFFFFFFFFFCCCCCCFF919191FF9D9D
          9DFFACACACFF666666FF3F3F3FFF4F4F4FFF585858FF5C5C5CFF5D5D5DFF5959
          59FF525252FF414141FF696A69FFB3B3B3FFA3A4A3FF989898FFBDBDBDFFE4E4
          E4FFF3F3F3FFADADADFF878787FF979797FF9F9F9FFFA3A3A3FFA4A4A4FFA0A0
          A0FF999999FF888888FFB1B1B1FFFAFAFAFFEBEBEBFFC2C2C2FFB2B1B1FF6868
          68FF6F6F6FFF626161FF808080FF818181FF808080FF818181FF818181FF8282
          82FF848484FF828282FF616161FF727272FF6C6D6DFFB4B5B4FFC8C8C8FF9B9B
          9BFFA1A1A1FFA0A0A0FFC7C7C7FFC8C8C8FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9
          C9FFCBCBCBFFC9C9C9FF9F9F9FFFA4A4A4FFA1A1A1FFCBCBCBFFFF00FF00FF00
          FF00FF00FF00A9A9A8FFF5F4F4FFECECECFFEBEBEBFFEDEDEDFFEEEEEFFFEFEE
          EFFFF1F2F2FFF8F8F8FFA8A6A7FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCCCCCCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A8A8A8FFE7E7E7FFDFDFDFFFDEDEDEFFE0E0E0FFE2E3E1FFE2E2
          E2FFE4E5E4FFECEBECFFAAA9A9FFD9D9D9FF8D8D8DFFDBDBDBFFFF00FF00FF00
          FF00FF00FF00CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCDCDCDFFE3E3E3FFADADADFFE5E5E5FFFF00FF00FF00
          FF00FF00FF00A8A8A8FFE8E8E8FFE0E0E0FFDFDFDFFFE0DFE0FFE1E1E1FFE3E2
          E3FFE6E5E5FFEBEAEAFF979796FF505050FF626262FF464646FFFF00FF00FF00
          FF00FF00FF00CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC0C0C0FF898989FFA9A9A9FF7A7A7AFFFF00FF00FF00
          FF00FF00FF00C5C5C5FFE8E9E9FFE7E8E8FFE6E6E6FFE7E7E7FFE6E5E5FFE7E6
          E6FFEBEAEBFFE3E3E3FFB0B0B0FF303030FF707070FF646464FFFF00FF00FF00
          FF00FF00FF00DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCACACAFF747474FFB7B7B7FFA0A0A0FFFF00FF00FF00
          FF00FF00FF00D7D7D7FFC4C4C4FFC7C7C7FFC6C6C6FFC7C7C7FFD7D7D7FFD8D8
          D8FFDCDBDBFFD6D6D6FFE4E4E4FF7E7E7EFF1A1A1AFF939393FFFF00FF00FF00
          FF00FF00FF00E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEDEDEDFFA2A2A2FF5A5A5AFFB2B2B2FF}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = btnImprimirClick
      end
      object cbPredatado: TcxCheckBox
        Left = 440
        Top = 6
        Caption = 'Pr'#233'-datado ?'
        TabOrder = 1
        Transparent = True
        Width = 85
      end
      object cbCruzado: TcxCheckBox
        Left = 552
        Top = 6
        Caption = 'Cruzado?'
        TabOrder = 2
        Transparent = True
        Width = 73
      end
      object cbNominal: TcxCheckBox
        Left = 353
        Top = 6
        Caption = 'Nominal ?'
        TabOrder = 3
        Transparent = True
        Width = 69
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 117
    Width = 884
    Height = 32
    ExplicitTop = 127
    ExplicitWidth = 884
    ExplicitHeight = 32
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
    Height = 117
    TabOrder = 0
    ExplicitWidth = 884
    ExplicitHeight = 117
    object Bevel2: TBevel [0]
      Left = 1
      Top = 113
      Width = 882
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitTop = 106
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
      ExplicitLeft = 0
      ExplicitTop = 10
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
      Height = 80
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
        Width = 880
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object CLabel1: TCLabel
        Left = 401
        Top = 36
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
        Left = 249
        Top = 36
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
      object CLabel6: TCLabel
        Left = 142
        Top = 36
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
        Left = 7
        Top = 36
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
      object CLabel9: TCLabel
        Left = 553
        Top = 14
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ/CPF'
        Transparent = True
      end
      object CLabel7: TCLabel
        Left = 23
        Top = 14
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornec.'
        Transparent = True
      end
      object CLabel4: TCLabel
        Left = 641
        Top = 36
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
      object CLabel8: TCLabel
        Left = 507
        Top = 36
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cheque de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel3: TCLabel
        Left = 31
        Top = 58
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta'
      end
      object DBEdtVencimentoIni: TCDBEdit
        Left = 325
        Top = 33
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
        Left = 423
        Top = 33
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
      object DBEdtFinal: TCDBEdit
        Left = 164
        Top = 33
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
      object DBEdtInicial: TCDBEdit
        Left = 66
        Top = 33
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
      object DBEidFornecedor: TCDBEdit
        Left = 66
        Top = 11
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
      object LookidCnpjCpfFornecedor: TCLookUp
        Left = 607
        Top = 11
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
      object LookDescAbreviadaFornecedor: TCLookUp
        Left = 374
        Top = 11
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
      object LookDescCadFornecedor: TCLookUp
        Left = 118
        Top = 11
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
      object DBEidChequeIni: TCDBEdit
        Left = 565
        Top = 33
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idChequeIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        DecimalControl = True
        KeyMode = kmInteger
      end
      object DBEidChequeFim: TCDBEdit
        Left = 663
        Top = 33
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idChequeFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        DecimalControl = True
        KeyMode = kmInteger
      end
      object DBCBimpresso: TCDBCheckBox
        Left = 739
        Top = 35
        Width = 142
        Height = 17
        Caption = 'Mostrar j'#225' impressos?'
        Color = 13884894
        DataField = 'impresso'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEidConta: TCDBEdit
        Left = 66
        Top = 55
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idConta'
        DataSource = dsPadrao
        TabOrder = 11
        AcaoCad = frmPrincipal.actCadConta
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookAgencia: TCLookUp
        Left = 120
        Top = 55
        Width = 52
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 12
        Key.Strings = (
          'idEmpresa'
          'idConta')
        LookUpKey.Strings = (
          'idEmpresa'
          'idConta')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'idAgencia'
      end
      object LookContaCorrente: TCLookUp
        Left = 178
        Top = 55
        Width = 81
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 13
        Key.Strings = (
          'idEmpresa'
          'idConta')
        LookUpKey.Strings = (
          'idEmpresa'
          'idConta')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'idContaCorrente'
      end
      object LookdescConta: TCLookUp
        Left = 265
        Top = 55
        Width = 227
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 14
        Key.Strings = (
          'idEmpresa'
          'idConta')
        LookUpKey.Strings = (
          'idEmpresa'
          'idConta')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'descConta'
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 600
    Top = 256
    Bitmap = {
      494C010102000400480010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    AfterInsert = cdsPadraoAfterInsert
    Left = 424
    Top = 280
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
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
    object cdsPadraoidChequeIni: TStringField
      FieldName = 'idChequeIni'
      Size = 10
    end
    object cdsPadraoidChequeFim: TStringField
      FieldName = 'idChequeFim'
      Size = 10
    end
    object cdsPadraoimpresso: TStringField
      FieldName = 'impresso'
      Size = 1
    end
    object cdsPadraoidConta: TIntegerField
      FieldName = 'idConta'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 496
    Top = 280
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 
      'SELECT CONVERT(CHAR(1),  '#39'N'#39') sel, idMovConta, descGerencial, de' +
      'scMovConta, dtMovConta, dtVencimento, vlMovConta,  idCheque, idC' +
      'adGeral, CONVERT(TINYINT, 0) fat, f.descCadFornecedor FROM vMovC' +
      'ontaCons LEFT JOIN vCadFornecedorContabil f ON vMovContaCons.idC' +
      'adGeral = f.idFornecedor WHERE idMovFinanceira = 7 AND 1=2'
    Left = 424
    Top = 336
    object cdsGrididMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsGriddescGerencial: TStringField
      FieldName = 'descGerencial'
      Size = 50
    end
    object cdsGriddescMovConta: TStringField
      FieldName = 'descMovConta'
      Required = True
      Size = 250
    end
    object cdsGriddtMovConta: TSQLTimeStampField
      FieldName = 'dtMovConta'
      Required = True
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsGridvlMovConta: TFMTBCDField
      FieldName = 'vlMovConta'
      Precision = 19
      Size = 4
    end
    object cdsGridsel: TStringField
      FieldName = 'sel'
      FixedChar = True
      Size = 1
    end
    object cdsGridfat: TByteField
      FieldName = 'fat'
    end
    object cdsGrididCheque: TStringField
      FieldName = 'idCheque'
      Size = 10
    end
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsGriddescCadFornecedor: TStringField
      FieldName = 'descCadFornecedor'
      Size = 60
    end
    object cdsGridvlSomaTotal: TAggregateField
      FieldName = 'vlSomaTotal'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlMovConta)'
    end
    object cdsGridvlSomaSel: TAggregateField
      FieldName = 'vlSomaSel'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlMovConta*fat)'
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
      'SELECT CONVERT(CHAR(1),  '#39'N'#39') sel, idMovConta, descGerencial, de' +
      'scMovConta, dtMovConta, dtVencimento, vlMovConta,  idCheque, idC' +
      'adGeral, CONVERT(TINYINT, 0) fat, f.descCadFornecedor FROM vMovC' +
      'ontaCons LEFT JOIN vCadFornecedorContabil f ON vMovContaCons.idC' +
      'adGeral = f.idFornecedor WHERE idMovFinanceira = 7 AND 1=2'
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
  object cdsCheque: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT m.idMovConta, m.vlMovConta, m.dtVencimento, f.descCadForn' +
      'ecedor  FROM MovConta m LEFT JOIN vCadFornecedorContabil f ON m.' +
      'idCadGeral = f.idFornecedor WHERE 1=2'
    Params = <>
    ProviderName = 'dspCheque'
    AfterOpen = cdsPadraoAfterOpen
    OnCalcFields = cdsChequeCalcFields
    Left = 424
    Top = 384
    object cdsChequedata: TStringField
      FieldKind = fkCalculated
      FieldName = 'data'
      Size = 12
      Calculated = True
    end
    object cdsChequeano: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ano'
      Calculated = True
    end
    object cdsChequemes: TStringField
      FieldKind = fkCalculated
      FieldName = 'mes'
      Size = 30
      Calculated = True
    end
    object cdsChequelocal: TStringField
      FieldKind = fkCalculated
      FieldName = 'local'
      Size = 70
      Calculated = True
    end
    object cdsChequenominal: TStringField
      FieldKind = fkCalculated
      FieldName = 'nominal'
      Size = 100
      Calculated = True
    end
    object cdsChequeextenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'extenso'
      Size = 500
      Calculated = True
    end
    object cdsChequeidMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsChequevlMovConta: TFMTBCDField
      FieldName = 'vlMovConta'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsChequedescCadFornecedor: TStringField
      FieldName = 'descCadFornecedor'
      Size = 60
    end
    object cdsChequedtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsChequedia: TStringField
      FieldKind = fkCalculated
      FieldName = 'dia'
      Size = 2
      Calculated = True
    end
  end
  object dsCheque: TDataSource
    DataSet = cdsCheque
    Left = 496
    Top = 384
  end
  object dspCheque: TDataSetProvider
    DataSet = sdsCheque
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 384
  end
  object sdsCheque: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 
      'SELECT m.idMovConta, m.vlMovConta, m.dtVencimento, f.descCadForn' +
      'ecedor  FROM MovConta m LEFT JOIN vCadFornecedorContabil f ON m.' +
      'idCadGeral = f.idFornecedor WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 296
    Top = 384
  end
  object rptCheque: TfrxDBDataset
    UserName = 'Cheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data=data'
      'ano=ano'
      'mes=mes'
      'local=local'
      'nominal=nominal'
      'extenso=extenso'
      'idMovConta=idMovConta'
      'vlMovConta=vlMovConta'
      'descCadFornecedor=descCadFornecedor'
      'dtVencimento=dtVencimento'
      'dia=dia')
    DataSource = dsCheque
    BCDToCurrency = False
    Left = 720
    Top = 344
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 1
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 804
    Top = 345
  end
  object Report: TfrxReport
    Version = '4.14'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38064.016968402800000000
    ReportOptions.Description.Strings = (
      'Demonstrates dot-matrix functionality.')
    ReportOptions.LastChange = 42047.719809444450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 648
    Top = 344
    Datasets = <
      item
        DataSet = rptCheque
        DataSetName = 'Cheque'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 200.659870407167000000
      PaperHeight = 278.870653229369800000
      PaperSize = 256
      BottomMargin = 3.800000000000000000
      FontStyle = []
      object MasterData1: TfrxMasterData
        Height = 221.000000000000000000
        Top = 17.000000000000000000
        Width = 758.400000000000000000
        DataSet = rptCheque
        DataSetName = 'Cheque'
        RowCount = 0
        object lblExtenso: TfrxDMPMemoView
          Left = 67.200000000000000000
          Top = 34.000000000000000000
          Width = 624.000000000000000000
          Height = 34.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          FontStyle = []
          Memo.UTF8W = (
            
              '            [Cheque."extenso"] # # # # # # # # # # # # # # # # #' +
              ' # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #' +
              ' #')
          ParentFont = False
          TruncOutboundText = False
        end
        object lblNominal: TfrxDMPMemoView
          Left = 19.200000000000000000
          Top = 68.000000000000000000
          Width = 672.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          FontStyle = []
          Memo.UTF8W = (
            '[Cheque."nominal"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object lblLocal: TfrxDMPMemoView
          Left = 288.000000000000000000
          Top = 85.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Cheque."local"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object lblPredatado: TfrxDMPMemoView
          Left = 508.800000000000000000
          Top = 187.000000000000000000
          Width = 787.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'Bio'
          FontStyle = [fsxCondensed]
          Memo.UTF8W = (
            'bom p/ [Cheque."data"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object lblDia: TfrxDMPMemoView
          Left = 451.200000000000000000
          Top = 85.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          FontStyle = []
          Memo.UTF8W = (
            '[Cheque."dia"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object lblMes: TfrxDMPMemoView
          Left = 489.600000000000000000
          Top = 85.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          FontStyle = []
          Memo.UTF8W = (
            '[Cheque."mes"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object lblAno: TfrxDMPMemoView
          Left = 643.200000000000000000
          Top = 85.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          FontStyle = []
          Memo.UTF8W = (
            '[Cheque."ano"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object ChequevlMovConta: TfrxDMPMemoView
          Left = 576.000000000000000000
          Top = 17.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '# [Cheque."vlMovConta"] #')
          ParentFont = False
          TruncOutboundText = False
        end
        object lblCruzado: TfrxDMPMemoView
          Left = 19.200000000000000000
          Width = 153.600000000000000000
          Height = 221.000000000000000000
          ShowHint = False
          DataSetName = 'Bio'
          FontStyle = []
          Memo.UTF8W = (
            '            / /'
            '           / /'
            '          / /'
            '         / /'
            '        / /'
            '       / /'
            '      / /'
            '     / /'
            '    / /'
            '   / /'
            '  / /'
            ' / /'
            '/ /')
          ParentFont = False
          TruncOutboundText = False
        end
      end
    end
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 568
    Top = 344
  end
end
