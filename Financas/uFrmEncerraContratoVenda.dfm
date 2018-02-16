inherited FrmEncerraContratoVenda: TFrmEncerraContratoVenda
  BorderIcons = [biSystemMenu]
  Caption = 'Encerramento de Contrato - [VENDA]'
  ClientHeight = 596
  ClientWidth = 968
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000012FD461014FD480F0000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000014ED465026D54EC51DD346C40DE7
    3E5914FE4A0A0000000000000000000000000000000000000000000000000000
    0000000000001BFF4B071DFF530E13FF4C0944D866D18BF7A4FF8EF7A6FF62E0
    7FFC17D642B60FEB404C18FF4C050000000000000000000000000000000015FF
    48011AF44A3A12D53CAA0A9D29CA0DCD378063E580DE9CFFB4FFA8FFBDFF6FC6
    80FF82DF97FF3BDC5FF711D63CA917EF483F19FF4A02000000000000000018FC
    4A1812D93DD11FEB4DFF066318FF003F03FF5ABC6EFD93FFAEFF9BFFB3FF68DB
    80FF5ACF73FF5AB06BFF51E974FF1DD143F113DD418A14FF3D090000000018FA
    45221FE34BE02BFE5AFF0A4E17FF000900FF57A966FF83FFA3FF80FF9DFF71C3
    84FF75E18FFF44DF68FF2AA53FFF3ECC5EFF10DB40E216FA351E0000000018FA
    452126E350DD26F955FF0C4217FF015B12FF48E069FF6CFF8FFF6DFF90FF3AB2
    54FF52B769FF55AA69FF3FEE66FF26F153FF13DC42DC18FA3B1F0000000015FA
    442135E15CDD1CF94CFF0DDB38FF25FF56FF43FF6EFF4EFF76FF54FF7BFF57FF
    80FF39EE62FF27C04AFF28923EFF30C753FF11E143DB18FA3B1F0000000014FA
    422143E067DD33FF60FF19FF4CFF2DFF5AFF2DFF5BFF33FF5FFF3AFF65FF39FF
    65FF34FF61FF28FF59FF0FDA3BFF0DE33CFF15DE44DB18FA3B1F0000000012FA
    402255E075E072FD93FF7DFE9AFF5BFF7FFF27FF56FF1FFF50FF18FF4AFF1CFF
    4DFF1BFF4CFF12FF44FF07FF3DFF00FB32FF19D845DD18FA3B20000000000DFC
    3E1E61D57CD66FCD83E588EA9FFE87FFA5FF8DFFA7FF70FF90FF3DFF67FF11FF
    42FF00FE32FF00FB34FF00F12EFF0CE035FF1ED046DA17FC411A000000000FFF
    410918EF4C3213E443618BD29BFF8CD69BF5A9FEBEFFA2FFB9FFB4FFC5FF94FF
    ACFF30F554FF0BE231FF22D545FF22D249CB1AEC4A560FFF4304000000000000
    00000000000015F9462219E1475C3ED861A6B7DFBFFFB1E6BBFEC2FFD2FFC6FE
    D5FF8EE5A3FF2DD050D41FE54B6C17FD49140000000000000000000000000000
    000000000000000000000000000028E853591FD3458D88D799E2D5ECDCFF67D8
    80DD20E14C7B15FB441C00000000000000000000000000000000000000000000
    0000000000000000000000000000000000000DFF400747CF66AC33DD5A910BF7
    4025000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000011FF47010BFD4212000000000000
    000000000000000000000000000000000000000000000000000000000000FCFF
    0000F83F0000C00F000000030000000100000001000000010000000100000001
    0000000100000001000000010000C0070000F01F0000F87F0000F9FF0000}
  Position = poDefault
  Visible = True
  ExplicitWidth = 984
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Width = 968
    Height = 346
    TabOrder = 2
    ExplicitWidth = 714
    ExplicitHeight = 335
    inherited DBGrid: TCDBGrid
      Width = 964
      Height = 329
      UtilizaOrdenar = True
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = '   ?'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idDocSerie'
          Title.Caption = 'Serie'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrTitulo'
          Title.Caption = 'Nr.Titulo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idParcela'
          Title.Caption = 'Parc.'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Cliente / Fornecedor'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlParcela'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlPago'
          Title.Caption = 'Vl. Baixado'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stParcela'
          Title.Caption = 'Status'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpConsulta'
          Title.Caption = 'Tipo'
          Width = 30
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Left = 757
    Top = 229
    Width = 99
    Height = 362
    Align = alNone
    Visible = False
    ExplicitLeft = 757
    ExplicitTop = 229
    ExplicitWidth = 99
    ExplicitHeight = 362
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 6
      Top = 6
      ExplicitLeft = 6
      ExplicitTop = 6
    end
    inherited BtnFechar: TCBitBtn
      Left = 6
      Top = 48
      ExplicitLeft = 6
      ExplicitTop = 48
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 968
    Height = 140
    TabOrder = 0
    ExplicitWidth = 714
    ExplicitHeight = 140
    object Bevel2: TBevel [0]
      Left = 1
      Top = 134
      Width = 966
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 111
      ExplicitWidth = 754
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 1
      Width = 966
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
      Width = 966
      Height = 26
      ExplicitTop = 5
      ExplicitWidth = 712
      ExplicitHeight = 26
      inherited lblEmpresa: TCLabel
        Top = 7
        ExplicitTop = 7
      end
      inherited LookdescCadEmpresa: TCLookUp
        Width = 194
        ExplicitWidth = 194
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 363
        Width = 106
        ExplicitLeft = 363
        ExplicitWidth = 106
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 704
        Top = 2
        TabOrder = 5
        ExplicitLeft = 704
        ExplicitTop = 2
      end
      inherited LookidInscEstadual: TCLookUp
        TabOrder = 4
      end
    end
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 31
      Width = 966
      Height = 66
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
      ExplicitWidth = 712
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 964
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object lblCliFor: TCLabel
        Left = 16
        Top = 14
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
      end
      object CLabel12: TCLabel
        Left = 6
        Top = 36
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Contrato'
      end
      object DBEidCliente: TCDBEdit
        Left = 55
        Top = 11
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
      object LookCliente: TCLookUp
        Left = 123
        Top = 11
        Width = 278
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
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'descCadCliente'
      end
      object DBEidContratoVenda: TCDBEdit
        Left = 55
        Top = 33
        Width = 104
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idContratoVenda'
        DataSource = dsPadrao
        TabOrder = 2
        OnEnter = DBEidContratoVendaEnter
        OnExit = DBEidContratoVendaExit
        OnKeyDown = DBEidContratoVendaKeyDown
        DecimalControl = True
        KeyMode = kmUSUpper
      end
      object LookEmissaoVenda: TCLookUp
        Left = 165
        Top = 33
        Width = 80
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idContratoVenda')
        LookUpKey.Strings = (
          'idContratoVenda')
        AlternateSQL.Strings = (
          
            'SELECT dtEmissao FROM ContratoVenda WHERE idEmpresa = [DBEidEmpr' +
            'esa] AND idCadEmpresa = [DBEidCadEmpresa] AND idCliente = [DBEid' +
            'Cliente] AND idContratoVenda = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'ContratoVenda'
        ReturnField = 'dtEmissao'
      end
      object LookContratoVenda: TCLookUp
        Left = 251
        Top = 33
        Width = 348
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
        Key.Strings = (
          'idContratoVenda')
        LookUpKey.Strings = (
          'idContratoVenda')
        AlternateSQL.Strings = (
          
            'SELECT obsContratoVenda FROM ContratoVenda WHERE idEmpresa = [DB' +
            'EidEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idCliente =' +
            ' [DBEidCliente] AND idContratoVenda = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'ContratoVenda'
        ReturnField = 'obsContratoVenda'
      end
      object LookNrOriginal: TCLookUp
        Left = 605
        Top = 33
        Width = 80
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idContratoVenda')
        LookUpKey.Strings = (
          'idContratoVenda')
        AlternateSQL.Strings = (
          
            'SELECT nrOriginal FROM ContratoVenda WHERE idEmpresa = [DBEidEmp' +
            'resa] AND idCadEmpresa = [DBEidCadEmpresa] AND idCliente = [DBEi' +
            'dCliente] AND idContratoVenda = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'ContratoVenda'
        ReturnField = 'nrOriginal'
      end
      object lookStatus: TCLookUp
        Left = 691
        Top = 33
        Width = 80
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 6
        Visible = False
        Key.Strings = (
          'idContratoVenda')
        LookUpKey.Strings = (
          'idContratoVenda')
        AlternateSQL.Strings = (
          
            'SELECT stContratoVenda FROM ContratoVenda WHERE idEmpresa = [DBE' +
            'idEmpresa] AND idCadEmpresa = [DBEidCadEmpresa] AND idCliente = ' +
            '[DBEidCliente] AND idContratoVenda = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'ContratoVenda'
        ReturnField = 'stContratoVenda'
      end
    end
    object CGroupBox3: TCGroupBox
      Left = 1
      Top = 97
      Width = 966
      Height = 37
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 712
      object BtnPesquisar: TCBitBtn
        Tag = 1
        Left = 12
        Top = 6
        Width = 75
        Height = 25
        Action = actPesquisar
        Caption = '&Pesquisar'
        TabOrder = 0
      end
      object BtnFechar1: TCBitBtn
        Left = 610
        Top = 6
        Width = 75
        Height = 25
        Action = actFechar
        Caption = '&Fechar'
        TabOrder = 1
      end
    end
  end
  object CGroupBox1: TCGroupBox [3]
    Left = 0
    Top = 558
    Width = 968
    Height = 38
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 597
    ExplicitWidth = 940
    object BtnEncerrar: TCBitBtn
      Left = 588
      Top = 6
      Width = 128
      Height = 25
      Caption = '&Encerrar Contrato'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA87D78B78183B78183B78183B78183B78183B781
        83B78183B78183B78183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A9A9AA6
        A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFAB7F79FFFCDCFBE6C4FAE2B9F7DCACF6D7A1F4D4
        99F4D499FDDF9DB3897BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9C9CF7
        F7F7E9E9E9E3E3E3DBDBDBD5D5D5D0D0D0D0D0D0D7D7D7A1A1A1FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFAF8279FFF6E2F5E2CAF5DEC0F2D8B5047009EFCE
        A0EDCB98F6D59AB3897BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9E9E9EFA
        FAFAE9E9E9E4E4E4DDDDDD6C6C6CD1D1D1CCCCCCD2D2D2A1A1A1FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB3867AFFFCEEF7E7D3F6E3C904700944D2730470
        09EFCF9EF6D699B3897BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A0A0FF
        FFFFEFEFEFE9E9E96C6C6CBDBDBD6C6C6CD0D0D0D1D1D1A1A1A1FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB88A7BFFFFFAF9EBDE04700949CC725CE78E38C6
        58047009F7D9A1B3897BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA3A3A3FF
        FFFFF5F5F56C6C6CBCBCBCD3D3D3B1B1B16C6C6CD6D6D6A1A1A1FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFBE8E7CFFFFFF0470091097262EA8483ECA6026AF
        3D199F29047009B3897BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7A7A7FF
        FFFF6C6C6C8585859D9D9DB6B6B69C9C9C8E8E8E6C6C6CA1A1A1FF00FFFF00FF
        FF00FFFF00FF1168DC1168DCC4937DFFFFFFFDF9F5FBF2EA03700827B8400470
        09F5DDBEFCE4BAB3897BFF00FFFF00FFFF00FFFF00FF959595959595AAAAAAFF
        FFFFFFFFFFFCFCFC6B6B6BA1A1A16C6C6CE3E3E3E5E5E5A1A1A1FF00FFFF00FF
        FF00FFFF00FF1168DC1168DCCA977EFFFFFFFFFEFEFEF9F5097B1114AB250470
        09FCECD1F2E4C3B3897BFF00FFFF00FFFF00FFFF00FF959595959595AEAEAEFF
        FFFFFFFFFFFFFFFF7474749191916C6C6CF0F0F0E4E4E4A1A1A11168DC1168DC
        FF00FFFF00FF1168DC1168DCCE9B7FFFFFFF1168DC1168DC0C91160EA31B0470
        09D7B9A9BEA49CB58587959595959595FF00FFFF00FF959595959595B0B0B0FF
        FFFF9595959595958080808A8A8A6C6C6CCACACAB7B7B7A7A7A71168DC1168DC
        1168DC1168DC1168DC1168DC1168DC1168DC1168DC1168DC0D9C1907800FE3CF
        CABB846FE2A15AB3817695959595959595959595959595959595959595959595
        9595959595959595868686757575E0E0E09F9F9FA8A8A89E9E9EFF00FFFF00FF
        1168DC1168DC1168DC1168DC1168DC1168DCFFFFFFFFFFFFFFFFFFFFFFFFE1D2
        D4B38176E7AF76FF00FFFF00FFFF00FF95959595959595959595959595959595
        9595FFFFFFFFFFFFFFFFFFFFFFFFE3E3E39E9E9EB8B8B8FF00FFFF00FFFF00FF
        1168DC1168DC1168DC1168DC1168DC1168DCDAA482DAA482DAA482DAA482DAA4
        82B38176FF00FFFF00FFFF00FFFF00FF95959595959595959595959595959595
        9595B8B8B8B8B8B8B8B8B8B8B8B8B8B8B89E9E9EFF00FFFF00FF1168DC1168DC
        1168DC1168DC1168DC1168DC1168DC1168DC1168DC1168DCFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF95959595959595959595959595959595959595959595
        9595959595959595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1168DC1168DC
        FF00FFFF00FF1168DC1168DCFF00FFFF00FF1168DC1168DCFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF959595959595FF00FFFF00FF959595959595FF00FFFF
        00FF959595959595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF1168DC1168DCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959595959595FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF1168DC1168DCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959595959595FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Margin = 5
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BtnEncerrarClick
    end
    object DBCKbaixaSaldo: TCDBCheckBox
      Left = 302
      Top = 10
      Width = 259
      Height = 17
      Caption = 'Estorna saldo em aberto dos t'#237'tulos do contrato?'
      DataField = 'baixaSaldo'
      DataSource = dsContrato
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object CPanelGradient1: TCPanelGradient [4]
    Left = 0
    Top = 486
    Width = 968
    Height = 36
    Align = alBottom
    TabOrder = 4
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    ExplicitTop = 475
    ExplicitWidth = 714
    object Bevel4: TBevel
      Left = 1
      Top = 1
      Width = 966
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    object CLabel8: TCLabel
      Left = 551
      Top = 15
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Diferen'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel9: TCLabel
      Left = 400
      Top = 15
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel10: TCLabel
      Left = 44
      Top = 15
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Entregue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel2: TCLabel
      Left = 231
      Top = 15
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEvlEntregue: TCDBEdit
      Left = 133
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlEntregue'
      DataSource = dsDados
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
    object DBEvlDifEntregue: TCDBEdit
      Left = 611
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlDifEntregue'
      DataSource = dsDados
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
    object DBEvlSomaTitulo: TCDBEdit
      Left = 444
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlSomaTitulo'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtPesoEntregue: TCDBEdit
      Left = 302
      Top = 12
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtPesoEntregue'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object CPanelGradient2: TCPanelGradient [5]
    Left = 0
    Top = 522
    Width = 968
    Height = 36
    Align = alBottom
    TabOrder = 5
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    ExplicitTop = 511
    ExplicitWidth = 714
    object Bevel5: TBevel
      Left = 1
      Top = 1
      Width = 966
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    object CLabel11: TCLabel
      Left = 551
      Top = 14
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Diferen'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel13: TCLabel
      Left = 400
      Top = 14
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel14: TCLabel
      Left = 31
      Top = 14
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Contratado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel1: TCLabel
      Left = 231
      Top = 14
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEvlContratoVenda: TCDBEdit
      Left = 133
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlContratoVenda'
      DataSource = dsDados
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
    object DBEvlDifContrato: TCDBEdit
      Left = 611
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlDifContrato'
      DataSource = dsDados
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
    object DBEvlSomaTitulo2: TCDBEdit
      Left = 444
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlSomaTitulo'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtContrato: TCDBEdit
      Left = 302
      Top = 11
      Width = 92
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtContrato'
      DataSource = dsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 328
    Top = 272
    Bitmap = {
      494C010102000400A00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 296
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Size = 30
    end
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, id, idDocSerie, nrTitulo, idParc' +
      'ela, descAbreviada, vlParcela, vlPago, Saldo, dtEmissao, dtVenci' +
      'mento, stParcela, tpConsulta FROM vConsultaTitulos'
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGridid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      Size = 5
    end
    object cdsGridnrTitulo: TStringField
      FieldName = 'nrTitulo'
      Required = True
    end
    object cdsGrididParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      Size = 30
    end
    object cdsGridvlParcela: TFMTBCDField
      FieldName = 'vlParcela'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsGridvlPago: TFMTBCDField
      FieldName = 'vlPago'
      Precision = 19
      Size = 4
    end
    object cdsGridSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 19
      Size = 4
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsGridstParcela: TStringField
      FieldName = 'stParcela'
      Required = True
      Size = 15
    end
    object cdsGridtpConsulta: TStringField
      FieldName = 'tpConsulta'
      Required = True
      Size = 4
    end
    object cdsGridvlSomaTitulo: TAggregateField
      FieldName = 'vlSomaTitulo'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlParcela)'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT CONVERT(BIT, 0) sel, idEmpresa, idCadEmpresa, id, idDocSe' +
      'rie, nrTitulo, idParcela, descAbreviada, vlParcela, vlPago, Sald' +
      'o, dtEmissao, dtVencimento, stParcela, tpConsulta FROM vConsulta' +
      'Titulos'
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
    Left = 224
    Top = 240
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM vContratoVendaValor WHERE 1=2'
    Params = <>
    ProviderName = 'dspDados'
    AfterOpen = cdsPadraoAfterOpen
    OnCalcFields = cdsDadosCalcFields
    Left = 280
    Top = 360
    object cdsDadosidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsDadosidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsDadosidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsDadosidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Required = True
      Size = 30
    end
    object cdsDadosvlContratoVenda: TFMTBCDField
      FieldName = 'vlContratoVenda'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 19
      Size = 4
    end
    object cdsDadosvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsDadosqtContrato: TFMTBCDField
      FieldName = 'qtContrato'
      Required = True
      DisplayFormat = '#,##'
      Precision = 18
      Size = 0
    end
    object cdsDadosqtPesoEntregue: TIntegerField
      FieldName = 'qtPesoEntregue'
      DisplayFormat = '#,##'
    end
    object cdsDadosvlEntregue: TFMTBCDField
      FieldName = 'vlEntregue'
      DisplayFormat = '#,##0.00'
      Precision = 29
      Size = 4
    end
    object cdsDadosvlDifEntregue: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlDifEntregue'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object cdsDadosvlDifContrato: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlDifContrato'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 360
    Top = 360
  end
  object dspDados: TDataSetProvider
    DataSet = sdsDados
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 200
    Top = 360
  end
  object sdsDados: TSQLDataSet
    CommandText = 'SELECT * FROM vContratoVendaValor WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 360
  end
  object cdsContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsContratoAfterInsert
    Left = 456
    Top = 400
    object cdsContratobaixaSaldo: TStringField
      FieldName = 'baixaSaldo'
      Size = 1
    end
  end
  object dsContrato: TDataSource
    DataSet = cdsContrato
    Left = 520
    Top = 400
  end
end
