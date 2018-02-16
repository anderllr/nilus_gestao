inherited FrmPesMovCaixa: TFrmPesMovCaixa
  Caption = 'Pesquisa de Movimenta'#231#227'o no Caixa'
  ClientHeight = 452
  ClientWidth = 866
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000065636211030203470000001000000000333333430E0E0E81141414821010
    107E0909096E000000500000002F000000130000000400000000000000000000
    0000908C8E83636C63F30004009E34323454ACACACE2AFB0AFFFC8C8C8FFD1D1
    D1FFB3B3B3FA8C8C8CEF6B6B6BDA3C3C3CBA1B1B1B940909097E0000004C7776
    760AB1AEB1C7BCCABCFF074B06FF456743F3CECACEFFC6C6C6FFDFDFDFFFF4F4
    F4FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFECECECFFA0A0A0FF060606746161
    611EA7A6A8DFC1C4C0FF377331FF81AE7CFFBEB9BEFFAFAFAFFFCACACAFFCDCD
    CDFFE1E1E1FFF0F0F0FFF9F9F9FFFCFCFCFFFFFFFFFFA2A2A2F40101014F6566
    652CBEBCBEEEBEC1BDFF146B12FF83B083FFC2BCC2FFB7B8B8FFD1D1D1FFD0D0
    D0FFC9C9C9FFC9C9C9FFD0D0D0FFCDCDCDFFEBEBEBFF808080EA0000003C7878
    7838C3C0C3F2CACBCAFF147E11FF7BB97AFFC3B9C3FFBDBDBCFFD7D7D6FFD7D7
    D7FFD3D3D3FFD1D1D1FFD0D0D0FFC6C6C6FFE3E3E3FF707070E3000000337272
    7243CECACEF8BCBDBBFF147611FF80B67FFFD8CBDAFFDDD9E1FFDCDAE0FFDDDD
    DEFFD1D1D1FFD4D4D4FFD0D0D0FFC7C7C7FFE1E1E1FF636363DD0000002B7878
    784FCCCACDFDC2C4C2FF1B7619FF84B684FFA4B697FF8AA671FF959E81FFB3B3
    AAFFDFDEDFFFDCDCDCFFD3D3D3FFB0B0B0FFD1D1D1FF5F5F5EDC0000002D9A9A
    9A5AD5D2D5FFBBBDBBFF1D731BFF86B387FF72B263FF298902FF2A5B01FF5264
    2FFFEBEBEBFFCDCCCEFFC0C0C0FF959595FF888888FF3E3D3FE2000000379696
    9666CFCDCFFFC1C3C1FF277624FF81AE81FF84C480FF2EBF1BFF359A11FF4D86
    23FFDDDEDAFFC8C7CAFFC0C2C1FF7C777BFF362F37FF11150DE9000000318181
    8177DFDDDFFFC9C8C8FF2A7129FF6AA56BFFA1B8A0FF66C561FF67BC5AFF5DA9
    46FFCAD4C5FFD8D4D9FFBCB5BFFF629350FF2FB216FF183A0490000000028787
    8788D6D5D6FFD7D4D7FF397138FF529F52FFACBAACFFB4BAB6FFC2C4C2FFC8CB
    CAFFCFCFCEFFD9D5D8FFDCC5DEFF70B95CFF1B7E03BA0507010E000000007D7D
    7D9DDEDEDEFFDEDADEFF577B55FF287A27FF51AA4FFF66C466FF81CA80FF95C9
    94FF9FCF9FFF97C296FE80B881D850BF45C0031A015D00000000000000008181
    81B7E6E6E6FFE1E1E2FFBCC0BBFFA2B0A2FFA7B8A7FFA1B6A0FF7DC17CFF7BD4
    7CFF85D585FF6ABE6AFF179C16CB30DF30B91A4E16A400000016000000009C9C
    9CD9ECECECFFE1E1E1FFEAE8EAFFC0BCC1F3B5B0B5E5B7B0B6E68A9189E77B8F
    79E7849A84EA6A8068DE2946268D2F522C82192D14730000000B000000009393
    93A1B1B1B1E5BEBDBDE48E8F8ECA232323405A58582361605F256B6569256961
    672670696F28554B522100000000000000000000000000000000000000008803
    0000800000000000000000000000000000000000000000000000000000000000
    0000000000000000000000010000000300000001000000010000001F0000}
  ExplicitWidth = 882
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 209
    Width = 866
    Height = 212
    TabOrder = 4
    ExplicitTop = 209
    ExplicitWidth = 866
    ExplicitHeight = 212
    inherited DBGrid: TCDBGrid
      Width = 862
      Height = 195
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
          FieldName = 'idMovCaixa'
          Title.Caption = 'ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idMovCaixa'
          Title.Caption = 'ID'
          Visible = False
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
          FieldName = 'dtMovCaixa'
          Title.Caption = 'Data'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlMovCaixa'
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descMovCaixa'
          Title.Caption = 'Hist'#243'rico'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fator'
          Title.Caption = 'Fator'
          Width = 40
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 125
    Width = 866
    Height = 84
    TabOrder = 3
    ExplicitTop = 125
    ExplicitWidth = 866
    ExplicitHeight = 84
    object CLabel8: TCLabel [0]
      Left = 371
      Top = 5
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
      Top = 5
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
      Top = 29
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
      Top = 29
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
      Top = 5
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Rateio'
    end
    object CLabel10: TCLabel [5]
      Left = 258
      Top = 29
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
      Left = 15
      Top = 51
      TabOrder = 9
      ExplicitLeft = 15
      ExplicitTop = 51
    end
    inherited BtnFechar: TCBitBtn
      Left = 547
      Top = 51
      TabOrder = 10
      ExplicitLeft = 547
      ExplicitTop = 51
    end
    object DBEidChequeIni: TCDBEdit
      Left = 429
      Top = 2
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
      Top = 2
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
      Top = 26
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
      Top = 26
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
      Top = 26
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
      Top = 26
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
      Top = 2
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
      Top = 26
      Width = 236
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'descMovCaixa'
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
      Top = 2
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
    Height = 125
    TabOrder = 0
    ExplicitWidth = 866
    ExplicitHeight = 125
    object Bevel2: TBevel [0]
      Left = 1
      Top = 125
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
      Height = 61
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
        Find = FindMovFinanceira
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 94
      Width = 864
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
        TabOrder = 1
        Find = dmFind.FindResultado
        AcaoCad = frmPrincipal.actCadSafra
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  object CPanelGradient1: TCPanelGradient [3]
    Left = 0
    Top = 421
    Width = 866
    Height = 31
    Align = alBottom
    TabOrder = 5
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
  object LookGerencialR: TCLookUp [4]
    Left = 126
    Top = 98
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
  object LookResultado: TCLookUp [5]
    Left = 474
    Top = 98
    Width = 236
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 2
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
  inherited imgIcones: TImageList
    Left = 480
    Top = 272
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
      FieldName = 'descMovCaixa'
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
      'SELECT m.idEmpresa, m.idCadEmpresa, m.idMovCaixa, m.descGerencia' +
      'l, m.descMovCaixa, m.dtMovCaixa, m.vlMovCaixa, m.idCadGeral, c.d' +
      'escAbreviada, m.fator FROM vMovCaixaCons m LEFT JOIN vCadCliente' +
      'Contabil c ON m.idCadGeral = c.idCliente WHERE 1=2'
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
    object cdsGrididMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
      Required = True
    end
    object cdsGriddescGerencial: TStringField
      FieldName = 'descGerencial'
      Size = 50
    end
    object cdsGriddescMovCaixa: TStringField
      FieldName = 'descMovCaixa'
      Required = True
      Size = 250
    end
    object cdsGriddtMovCaixa: TSQLTimeStampField
      FieldName = 'dtMovCaixa'
      Required = True
    end
    object cdsGridvlMovCaixa: TFMTBCDField
      FieldName = 'vlMovCaixa'
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
      Expression = 'SUM(vlMovCaixa)'
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
      'SELECT m.idEmpresa, m.idCadEmpresa, m.idMovCaixa, m.descGerencia' +
      'l, m.descMovCaixa, m.dtMovCaixa, m.vlMovCaixa, m.idCadGeral, c.d' +
      'escAbreviada, m.fator FROM vMovCaixaCons m LEFT JOIN vCadCliente' +
      'Contabil c ON m.idCadGeral = c.idCliente WHERE 1=2'
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
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 3 AND idTpMovF' +
        'inanceira = 6')
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 632
    Top = 288
  end
end
