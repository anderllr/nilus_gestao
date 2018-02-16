inherited FrmPesMovConta: TFrmPesMovConta
  Caption = 'Pesquisa de Movimenta'#231#227'o Banc'#225'ria'
  ClientHeight = 436
  ClientWidth = 866
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    0000010008000000000000010000000000000000000000000000000000000000
    00007F7F7F0099003300CC33330099666600A5736B00FF993300BD847300D68C
    4200F7A54200CE847B00C6947B00E7AD6B00FFCC6600FFFF6600BD948C00CE9C
    8400DEA58400D6A59C00D6ADA500DEB5A500F7B5AD00E7BDB500F7CEAD00FFD6
    A500FFD6AD00E7C6B500FFCEBD00FFD6B500FFDEBD00FFDEC600FFD6CE00FFE7
    C600FFE7CE00FFECCC00EFE7DE00F7E7D600FFEFD600FFEFDE00E7E7E700EFEF
    E700F7EFE700FFF7E700FFFFF700FEFDFD006363630000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000008020940000000000C805917C58740A004C2194005105
    917C781305006D05917C000000003D04917C0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000002802000000000000000000000000000000000000000000000000
    0000CE33917CF26000009C1E9400000005007C23940018EE907CC040917CFFFF
    FFFFBB40917C8ED601004500000090209400800010C07C23940018EE907C7005
    917CFFFFFFFF000000003D04917CC42194005F09817C00000000010000000200
    0000542394001800000000000000AC2194004200000000000000902194000000
    000000000000000000000C000000020000000101907C00FCFD7F4C0000000000
    00000200000054001A0260740A000000000060740A0005000000AFE0807CE821
    94004F1A807C34010000000000C0000000000000000002000000800000000000
    000028239400CF034B00E8583700000000C0000000001C239400020000008000
    000000000000200000001000000010000000433A5C446573656E765C4E696C75
    735C696D6167656E735C4C616E636142616E636F2E69636F00003487367E840A
    05000700000004230000000005004C2094006CFB907C1000000000000000F8CF
    0E00EC2294000000000010000000380000000000000000000000BCE7907C86D5
    902E69636F006CFB907C71FB907C86D5907CBCE7907C0000050094229400C8E7
    907CFFE9907CF60D817C34010000000000000000000000000000E82294006423
    94001600000000000000160E817C16000000542394001000000000000000081C
    0B000000000016000000D42294000D0000007C239400A89A837C200E817CFFFF
    FFFF160E817C66044B0034010000642394001600000038239400000000000000
    002D2D2D2D2D2D2D2D2D2D2D2D00000005141312121212121212120F2D000000
    0724020202171719191918162D00000007232121201E171C1C1718162D000000
    0A230202020202021C171B172D0000000B23242524201E211C1C17172D000000
    10270202020202020202171B2D0000001128262624251E211E20171A2D000000
    112B02020202020202021D1B2D000000112B29292524252524211E1A2D000000
    112C0203030325020202211A2D000000112C020D0D04272A262621162D000000
    112C020E220425241F1F15152D000000112C060606062B290909082D00000000
    112C2C2C2B2C2B2C110C2D00000000001111111111111111112D00000000E001
    0000C0010000C0010000C0010000C0010000C0010000C0010000C0010000C001
    0000C0010000C0010000C0010000C0010000C0030000C0070000C00F0000}
  ExplicitWidth = 882
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 205
    Width = 866
    Height = 231
    TabOrder = 2
    ExplicitTop = 205
    ExplicitWidth = 866
    ExplicitHeight = 231
    inherited DBGrid: TCDBGrid
      Width = 862
      Height = 183
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
          FieldName = 'idMovConta'
          Title.Caption = 'ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCheque'
          Title.Caption = 'Cheque'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadGeral'
          Title.Caption = 'C'#243'd.Cli.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Descri'#231#227'o'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtMovConta'
          Title.Caption = 'Data'
          Width = 90
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
          FieldName = 'descMovConta'
          Title.Caption = 'Hist'#243'rico'
          Width = 240
          Visible = True
        end>
    end
    object CPanelGradient1: TCPanelGradient
      Left = 2
      Top = 198
      Width = 862
      Height = 31
      Align = alBottom
      TabOrder = 1
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 15201011
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel12: TCLabel
        Left = 444
        Top = 10
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEvlTotal: TCDBEdit
        Left = 513
        Top = 7
        Width = 104
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'vlTotal'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 121
    Width = 866
    Height = 84
    ExplicitTop = 121
    ExplicitWidth = 866
    ExplicitHeight = 84
    object CLabel8: TCLabel [0]
      Left = 371
      Top = 7
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
    object CLabel4: TCLabel [1]
      Left = 507
      Top = 7
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
    object CLabel5: TCLabel [2]
      Left = 30
      Top = 31
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
    object CLabel6: TCLabel [3]
      Left = 155
      Top = 31
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
    object CLabel3: TCLabel [4]
      Left = 37
      Top = 7
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Rateio'
    end
    object CLabel10: TCLabel [5]
      Left = 258
      Top = 31
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hist'#243'rico Parcial'
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
      Left = 31
      Top = 53
      TabOrder = 9
      ExplicitLeft = 31
      ExplicitTop = 53
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      Top = 53
      TabOrder = 10
      ExplicitLeft = 652
      ExplicitTop = 53
    end
    object DBEidChequeIni: TCDBEdit
      Left = 429
      Top = 4
      Width = 72
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
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidChequeFim: TCDBEdit
      Left = 529
      Top = 4
      Width = 72
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
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdtInicial: TCDBEdit
      Left = 74
      Top = 28
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
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 177
      Top = 28
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
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBCBdebito: TCDBCheckBox
      Left = 586
      Top = 28
      Width = 56
      Height = 17
      Caption = 'Debito'
      Color = 13884894
      DataField = 'debito'
      DataSource = dsPadrao
      ParentColor = False
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCBcredito: TCDBCheckBox
      Left = 650
      Top = 28
      Width = 66
      Height = 17
      Caption = 'Credito'
      Color = 13884894
      DataField = 'credito'
      DataSource = dsPadrao
      ParentColor = False
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEidRateio: TCDBEdit
      Left = 74
      Top = 4
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idRateio'
      DataSource = dsPadrao
      TabOrder = 0
      Find = dmFind.FindRateio
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdescMovConta: TCDBEdit
      Left = 339
      Top = 28
      Width = 236
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'descMovConta'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookRateio: TCLookUp
      Left = 126
      Top = 4
      Width = 236
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idEmpresa'
        'idRateio')
      LookUpKey.Strings = (
        'idEmpresa'
        'idRateio')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Rateio'
      ReturnField = 'descRateio'
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 866
    Height = 121
    TabOrder = 0
    ExplicitWidth = 866
    ExplicitHeight = 121
    object Bevel2: TBevel [0]
      Left = 1
      Top = 90
      Width = 864
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
      Width = 864
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
      Width = 864
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 864
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
      Width = 864
      Height = 57
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
        Width = 862
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
        Left = 4
        Top = 11
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente/Forn.'
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
        Left = 367
        Top = 36
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mov. Financeira'
      end
      object DBEidCliente: TCDBEdit
        Left = 73
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
        Width = 236
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idEmpresa'
          'idSafra')
        LookUpKey.Strings = (
          'idEmpresa'
          'idSafra')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'Safra'
        ReturnField = 'descSafra'
      end
      object LookMovFinanceira: TCLookUp
        Left = 502
        Top = 33
        Width = 199
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 7
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'descMovFinanceira'
      end
      object LookSinal: TCLookUp
        Left = 707
        Top = 33
        Width = 19
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 8
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'sinal'
      end
      object DBEidMovFinanceira: TCDBEdit
        Left = 448
        Top = 33
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovFinanceira'
        DataSource = dsPadrao
        TabOrder = 6
        Find = dmFind.FindMovFinanceiraBco
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 94
      Width = 864
      Height = 26
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
      object CLabel1: TCLabel
        Left = 23
        Top = 7
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gerencial'
      end
      object CLabel2: TCLabel
        Left = 367
        Top = 7
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Resultado'
      end
      object DBEidGerencial: TCDBEdit
        Left = 73
        Top = 4
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idGerencial'
        DataSource = dsPadrao
        TabOrder = 0
        Find = dmFind.FindGerencial
        AcaoCad = frmPrincipal.actCadSafra
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidResultado: TCDBEdit
        Left = 421
        Top = 4
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idResultado'
        DataSource = dsPadrao
        TabOrder = 2
        Find = dmFind.FindResultado
        AcaoCad = frmPrincipal.actCadSafra
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookGerencialR: TCLookUp
        Left = 125
        Top = 4
        Width = 236
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 1
        Key.Strings = (
          'idGerencial')
        LookUpKey.Strings = (
          'idGerencial')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = False
        LookUpTable = 'vGerencial'
        ReturnField = 'descGerencial'
      end
      object LookResultado: TCLookUp
        Left = 473
        Top = 4
        Width = 236
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idResultado')
        LookUpKey.Strings = (
          'idResultado')
        AlternateSQL.Strings = (
          
            'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
            'esa] AND idResultado = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'Resultado'
        ReturnField = 'descResultado'
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 480
    Top = 272
    Bitmap = {
      494C010102000400380010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    object cdsPadraoidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
    end
    object cdsPadraoidChequeIni: TIntegerField
      FieldName = 'idChequeIni'
    end
    object cdsPadraoidChequeFim: TIntegerField
      FieldName = 'idChequeFim'
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidRateio: TIntegerField
      FieldName = 'idRateio'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraosoma: TStringField
      FieldName = 'soma'
    end
    object cdsPadraodebito: TStringField
      FieldName = 'debito'
    end
    object cdsPadraocredito: TStringField
      FieldName = 'credito'
    end
    object cdsPadraodescMovConta: TStringField
      FieldName = 'descMovConta'
      Size = 50
    end
  end
  inherited dsPadrao: TDataSource
    Left = 312
    Top = 288
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 
      'SELECT m.idEmpresa, m.idCadEmpresa, m.idMovConta, m.descGerencia' +
      'l, m.descMovConta, m.dtMovConta, m.vlMovConta, m.idCadGeral, c.d' +
      'escAbreviada, m.idCheque, m.fator FROM vMovContaCons m LEFT JOIN' +
      ' vCadClienteContabil c ON m.idCadGeral = c.idCliente WHERE 1=2'
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
    object cdsGridvlMovConta: TFMTBCDField
      FieldName = 'vlMovConta'
      Precision = 19
      Size = 4
    end
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Size = 30
    end
    object cdsGrididCheque: TStringField
      FieldName = 'idCheque'
      Size = 10
    end
    object cdsGrididMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsGridfator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsGridvlTotal: TAggregateField
      FieldName = 'vlTotal'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlMovConta)'
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
      'SELECT m.idEmpresa, m.idCadEmpresa, m.idMovConta, m.descGerencia' +
      'l, m.descMovConta, m.dtMovConta, m.vlMovConta, m.idCadGeral, c.d' +
      'escAbreviada, m.idCheque, m.fator FROM vMovContaCons m LEFT JOIN' +
      ' vCadClienteContabil c ON m.idCadGeral = c.idCliente WHERE 1=2'
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
