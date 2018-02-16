inherited FrmPesRecepcao: TFrmPesRecepcao
  Caption = 'Recep'#231#227'o de Pedidos de Compra'
  ClientHeight = 488
  ClientWidth = 1034
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000300000503000027030000400300002D0300001B030000191218
    204A68A4BDBC16212C750300003E0300001E0300000A04000001000000000400
    00080300001D02000045191B1F82526271EE38424DD5262B32B8141619991C2A
    37A67BC6F8FF1F3041AA0200005B030000390300001B04000008000000000000
    0000040000030300000A363E46616F8394FF526172FF4E5D6DFF4A5867FE4459
    6EFE75AFDFFF334557DC15181CA9070607750200003F030000170400000B0000
    00000000000000000000515E687E869FAFFF546474FF505F6FFF4C5A6AFF4255
    68FF5C8AB3FF3C5164FF353F4AFF21252BBC0300002B0300000E040000040000
    00000000000000000000697A86A499B5C6FF556576FF526272FF4E5D6DFF3D54
    6AFF537CA0FF3C546BFF38424EFF2F3841EB0501010400000000000000000000
    00000000000000000000778D9FC5AEBCC2FF576778FF536273FF4F6479FF4163
    82FF5D8BB4FF547EA1FF4A657BFF343E49FE0F0E103500000000000000000000
    00000000000000000000829CB5E0B4B8BAFF657280FF546475FF526C85FF476D
    8FFF6598C6FF5E8DB2FF52728CFF37414CFF1A1D217600000000000000000000
    000000000000000000008EA9C3F3B0B5B6FF747F89FF566677FF516A82FF4E78
    9FFF76B0E5FF5E8EB5FF53748EFF3A4551FF293037BF00000000000000000000
    000000000000060203069AB6D0FEAEB3B5FF818A92FF5B6C7FFF51677EFF5A8F
    BFFF92D5FDFF5D90BEFF537590FF3E4956FF36404BF80603030A000000000000
    0000000000000806060DA2BED8FFB6BCBEFF889097FF6B7988FF5C6C7CFF6DB1
    E4FF94EAFFFF60A1D7FF496378FF424F5CFF3C4855FE1110133D000000000000
    0000000000000B0B10294C5B6469546470765D6D7B8668747F9C6D7174BE6170
    7DE24A769DFF61778BEF616B75CA2A2C316B16171B560D0C0F3F000000000000
    0000000000000000000000000000000000000000000000000000000000003D60
    80BB82C6F0FF3F6385D900000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000375A
    768890E8FEFE3A6082A700000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000400
    0001131B252C0401020400000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000C001
    00000001000080000000E0000000E0030000E0030000E0030000E0030000C001
    0000C0010000C0010000FF1F0000FF1F0000FF1F0000FFFF0000FFFF0000}
  Position = poDesigned
  Visible = True
  ExplicitTop = -131
  ExplicitWidth = 1050
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel [0]
    Left = 0
    Top = 417
    Width = 1034
    Height = 4
    Align = alBottom
    Shape = bsFrame
    Style = bsRaised
    ExplicitLeft = -157
    ExplicitTop = 422
    ExplicitWidth = 893
  end
  inherited GrupoGrid: TCGroupBox
    Top = 165
    Width = 1034
    Height = 252
    TabOrder = 2
    ExplicitTop = 165
    ExplicitWidth = 1034
    ExplicitHeight = 252
    inherited DBGrid: TCDBGrid
      Width = 1030
      Height = 235
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs]
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      OnKeyPress = DBGridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = 'Sel.'
          Width = 64
          Visible = True
        end
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
          FieldName = 'descCadFornecedor'
          Title.Caption = 'Fornecedor'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idPedido'
          Title.Caption = 'Pedido'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrPedidoOriginal'
          Title.Caption = 'Original'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtPedido'
          Title.Caption = 'Data'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Produto'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtProduto'
          Title.Caption = 'Qtde.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtSaldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Caption = 'Saldo'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtRecebida'
          Title.Caption = 'A Receber'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtRecebida'
          Title.Caption = 'Data'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descMaquina'
          Title.Caption = 'M'#225'quina/Ve'#237'culo'
          Width = 170
          Visible = True
        end>
    end
    object DBEqtRecebida: TCDBEdit
      Left = 492
      Top = 91
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtRecebida'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 130
    Width = 1034
    Height = 35
    ExplicitTop = 130
    ExplicitWidth = 1034
    ExplicitHeight = 35
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 12
      Top = 0
      ExplicitLeft = 12
      ExplicitTop = 0
    end
    inherited BtnFechar: TCBitBtn
      Left = 582
      Top = 0
      TabOrder = 3
      ExplicitLeft = 582
      ExplicitTop = 0
    end
    object BtnTodos: TCBitBtn
      Tag = 1
      Left = 340
      Top = 0
      Width = 75
      Height = 25
      Caption = '&Todos'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06E9AD68
        E2751F7A2D06FF00FF0000000000000000000000000000000000000000000000
        00000000000000FF00FF7A2D0642C555F4CFA47A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
        7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
        7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D06E9AD68E2751F7A2D06FF00FF00000000000000
        0000000000000000000000000000000000000000000000FF00FF7A2D0642C555
        F4CFA47A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7A2D067A2D067A2D067A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D06E9AD68
        E2751F7A2D06FF00FF0000000000000000000000000000000000000000000000
        00000000000000FF00FF7A2D0642C555F4CFA47A2D06FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A2D067A2D06
        7A2D067A2D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = BtnTodosClick
    end
    object BtnNenhum: TCBitBtn
      Tag = 1
      Left = 239
      Top = 0
      Width = 75
      Height = 25
      Caption = '&Nenhum'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        96675E9F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F609F6F
        609F6F609F6F60FF00FFFF00FFFF00FF99695FF6E0BFF4DDB8F3DAB4F3D7ADF2
        D5A7F0D3A3F0D09EEECC99EECA93EDC990EDC68C9F6F60FF00FFFF00FFFF00FF
        9D6C60F6E3C6F6E1C1F4DDBBF3DCB4008100F2D5AAF0D3A4F0CF9FEFCC99EFCB
        95EEC9909F6F60FF00FFFF00FFFF00FFA16E60F7E6CEF6E5C7F4E1C100810000
        8100008100F3D5ABF0D3A5EFD19FEFCE9AEFCB969F6F60FF00FFFF00FFFF00FF
        A67262F8EAD4F7E7CE008100307A2A5F924B00810050883CF2D5ABF0D3A5F0D0
        A0EFCF9C9F6F60FF00FFFF00FFFF00FFAB7663FAEEDAFAEBD5008100EFE2C2F6
        E2C2A7B883008100008100EDD4A9F0D4A6F0D1A19F6F60FF00FFFF00FFFF00FF
        B07864FAF0E2FAEEDCF8EBD5F8E9D0F7E6CAF6E3C5E6D8B4008100008100F2D7
        ADF2D4A79F6F60FF00FFFF00FFFF00FFB57D64FCF3E7FBF0E3FAEFDDFAEDD8F7
        E9D1F8E6CBF6E3C5F6E1C0F4DEBAF4DAB5F3D7AD9F6F60FF00FFFF00FFFF00FF
        BB8065FCF7EDD58127D58127D58127D58127D58127D58127D58127D58127D581
        27F3DAB69F6F60FF00FFFF00FFFF00FFC08366FCF8F3FCF7EFFCF4EAFBF2E5FB
        EFDEF8EDD9F8EBD4F8E7CEF7E3C7F6E1C2F4DEBB9F6F60FF00FFFF00FFFF00FF
        C48767FEFBF8FEFAF3FEF7EFFCF4EAFBF2E6FAEFE0F8EDDAF8EAD4F7E9CFF7E5
        C9F6E2C49F6F60FF00FFFF00FFFF00FFC98967FEFCFBD58127D58127D58127D5
        8127D58127D58127D58127D58127D58127F7E5CA9F6F60FF00FFFF00FFFF00FF
        CC8B68FFFFFFFFFEFCFEFCFAFEFBF4FEF8F0FCF6EDFCF4E7FAF2E2FAEFDCF8ED
        D7F8EAD19F6F60FF00FFFF00FFFF00FFCF8E68FFFFFFFFFFFFFFFFFCFFFCFAFE
        FBF6FEF8F0FCF7EEFBF4E9FBF2E3FBEFDDF8EDD89F6F60FF00FFFF00FFFF00FF
        CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E
        68CF8E68CF8E68FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = BtnNenhumClick
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 1034
    Height = 130
    TabOrder = 0
    ExplicitWidth = 1034
    ExplicitHeight = 130
    object Bevel2: TBevel [0]
      Left = 1
      Top = 92
      Width = 1032
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitTop = 65
      ExplicitWidth = 734
    end
    object Bevel1: TBevel [1]
      Left = 1
      Top = 1
      Width = 1032
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
      Width = 1032
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 1032
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
        Left = 269
        Top = 11
        TabOrder = 5
        Visible = False
        ExplicitLeft = 269
        ExplicitTop = 11
      end
      inherited LookidInscEstadual: TCLookUp
        TabOrder = 6
        Visible = False
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 540
        Top = 6
        Width = 116
        Height = 17
        Caption = 'Consolida Empresa?'
        Color = 14212576
        DataField = 'consolidaemp'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanFornecedor: TCPanelGradient
      Left = 1
      Top = 33
      Width = 1032
      Height = 59
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
        Width = 1030
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
      object CLabel1: TCLabel
        Left = 15
        Top = 13
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto'
        Transparent = True
      end
      object CLabel7: TCLabel
        Left = 13
        Top = 38
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'M'#225'quina'
        Transparent = True
      end
      object CLabel10: TCLabel
        Left = 376
        Top = 38
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nr. Original'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel9: TCLabel
        Left = 512
        Top = 38
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
      object CLabel4: TCLabel
        Left = 454
        Top = 13
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel8: TCLabel
        Left = 574
        Top = 13
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
      object LookProdMedida: TCLookUp
        Left = 403
        Top = 10
        Width = 45
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
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
      object LookProduto: TCLookUp
        Left = 118
        Top = 10
        Width = 279
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 1
        Key.Strings = (
          'idProduto')
        LookUpKey.Strings = (
          'idProduto')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'Produto'
        ReturnField = 'descProduto'
      end
      object DBEidProduto: TCDBEdit
        Left = 59
        Top = 10
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idProduto'
        DataSource = dsPadrao
        TabOrder = 0
        OnKeyDown = DBEidProdutoKeyDown
        Find = dmFind.FindProduto
        AcaoCad = frmPrincipal.actCadCidade
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookMaquina: TCLookUp
        Left = 118
        Top = 35
        Width = 251
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 6
        Key.Strings = (
          'idMaquina')
        LookUpKey.Strings = (
          'idMaquina')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'Maquina'
        ReturnField = 'descMaquina'
      end
      object DBEidMaquina: TCDBEdit
        Left = 59
        Top = 35
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMaquina'
        DataSource = dsPadrao
        TabOrder = 5
        Find = dmFind.FindEquipamentos
        AcaoCad = frmPrincipal.actCadCidade
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 608
        Top = 36
        Width = 101
        Height = 17
        Caption = 'Consolida Filiais?'
        Color = 12306636
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEnrOriginalIni: TCDBEdit
        Left = 436
        Top = 35
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'nrOriginalIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEnrOriginalFim: TCDBEdit
        Left = 534
        Top = 35
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'nrOriginalFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidPedidoIni: TCDBEdit
        Left = 498
        Top = 10
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idPedidoIni'
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
      object DBEidPedidoFim: TCDBEdit
        Left = 596
        Top = 10
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idPedidoFim'
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
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 96
      Width = 1032
      Height = 121
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
      object CLabel5: TCLabel
        Left = 416
        Top = 9
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
        Left = 536
        Top = 9
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
        Left = 16
        Top = 9
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornec.'
      end
      object DBEdtInicial: TCDBEdit
        Left = 460
        Top = 6
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
        Left = 558
        Top = 6
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
      object LookRazao: TCLookUp
        Left = 118
        Top = 6
        Width = 273
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
      object DBEidFornecedor: TCDBEdit
        Left = 59
        Top = 6
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idFornecedor'
        DataSource = dsPadrao
        TabOrder = 0
        Find = dmFind.FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  object PanNota: TCPanelGradient [4]
    Left = 0
    Top = 421
    Width = 1034
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel2: TCLabel
      Left = 326
      Top = 9
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero'
    end
    object CLabel3: TCLabel
      Left = 12
      Top = 9
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
    end
    object BtnGerarNfe: TCBitBtn
      Left = 462
      Top = 2
      Width = 220
      Height = 25
      Caption = '&Gerar Nota Fiscal de Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF000364000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090909090FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00046D0118BC0216A4000364FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9494949A9A9AA4A4A4909090FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00046F5673F80220D50219AA000364FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF959595E7E7E7B8B8B8A7A7A790
        9090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0003645673F8021FD30219AA000364FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7B7B7A7
        A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0003645673F8021FD10219AA000364FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7E7E7B7
        B7B7A7A7A7909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0003645673F8021FD10218A6000364FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF909090E7
        E7E7B7B7B7A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0003645673F8021FD00217A6000364FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90
        9090E7E7E7B6B6B6A5A5A5909090FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF3C63CD0081BDFF00FFFF00FFFF00FF0003645673F8021FD00216A70003
        64FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB074B0989898FF00FFFF00FFFF
        00FF909090E7E7E7B6B6B6A6A6A6909090FF00FFFF00FFFF00FFFF00FFFF00FF
        097CBF00A6E600A6E60081BDFF00FFFF00FFFF00FF0003645673F80111A00030
        98005FB6FF00FFFF00FFFF00FFFF00FF9C939CBCBCBCBCBCBC989898FF00FFFF
        00FFFF00FF909090E7E7E78E8E8E898989959595FF00FFFF00FFFF00FFFF00FF
        FF00FF0081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FF0003640049A900C5
        FE0090CE0081BDFF00FFFF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF
        00FFFF00FFFF00FF9090908F8F8FB1B1B19E9E9E989898FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BDFF00FF0081BDFF00FFFF00FF0086D50090
        CE00C5FE0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898FF
        00FF989898FF00FFFF00FFA1A1A19E9E9EB1B1B1989898FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BDFF00FFFF00FFFF00FF0081
        BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98989898
        9898989898FF00FFFF00FFFF00FF989898989898FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0081BD00BAFB00BDFF00B1F20081BDFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898C4C4C4C5
        C5C5C0C0C0989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0081BD0081BD0081BD00ADEE0087C40081BD0081BDFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898989898989898BF
        BFBF9A9A9A989898989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0081BD00ADEE0081BDFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898BF
        BFBF989898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98
        9898FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BtnGerarNfeClick
    end
    object DBEidNfE: TCDBEdit
      Left = 369
      Top = 6
      Width = 87
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idNfE'
      DataSource = dsRodape
      MaxLength = 10
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmInteger
    end
    object LookDocSerie: TCLookUp
      Left = 94
      Top = 6
      Width = 226
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idDocSerie')
      LookUpKey.Strings = (
        'idDocSerie')
      AlternateSQL.Strings = (
        
          'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie IN (4,8) ' +
          'AND idDocSerie = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsRodape
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
    object DBEidDocSerie: TCDBEdit
      Left = 42
      Top = 6
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDocSerie'
      DataSource = dsRodape
      TabOrder = 1
      Find = dmFind.FindSerieEntrada
      DecimalControl = True
      KeyMode = kmUSUpper
    end
  end
  object PanConfirmacao: TCPanelGradient [5]
    Left = 0
    Top = 452
    Width = 1034
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object BtnImprimir: TCBitBtn
      Left = 462
      Top = 6
      Width = 133
      Height = 25
      Caption = '&Imprimir Pedido'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF9F9D9EFF00FFFF00FFFF00FF8281818281818E8A
        8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9D9E9F9D9ED4D1D196
        93933B393A545253999797C5C2C4D7D5D5828181FF00FFFF00FFFF00FFFF00FF
        9F9D9E9F9D9EFAFAFAFFFFFFD7D4D59E9C9C4443451C1C1E1C1C1F3534356766
        678281818E8A8BFF00FF918E8F9F9D9EF0EEEFFFFFFFEEEBEBCAC9C99F9D9E8E
        8A8A9793958786866463633C3B3D1F2022201F21747273FF00FF9C9899E9E7E7
        E5E5E5BDBBBBA6A4A4B4B1B1C2C1C1A4A1A19692939290909793959A98988E8A
        8B6B6A6A828181FF00FF959192ADABACA4A1A1B0AFAFC9C9C9D1D3D3EDEDEBF0
        EEF0DCDADAC5C4C4ADABAB9A98999390909793958E8A8BFF00FF918E8FAFADAF
        C9C7C7CECECEC9C9C9E2E2E2D1CFCFA1ABA1BDBCBCCBCECFD5D5D5D3D3D3C6C5
        C5B6B6B6989797FF00FFFF00FF9C999AD0D1D1CFCFCFDCDCDCC9C6C6B5B0B4A5
        D1A7BAC4BCC5A7A1ADA4A3A9A6A7B4B1B2C2C1C1A9A6A7FF00FFFF00FFFF00FF
        9C999AC1BFBFAFADADB1B0B0E3E3E3F6F3F3EEEDEEEDE1DEDCD8D8CCCCCCB4B4
        B4939091FF00FFFF00FFFF00FFFF00FFFF00FF9C999AD8DADACACACB9D9FA0BB
        BFC1D3D5D7D4D9D9D5D5D5C6C5C6AFADADFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFBE5E1F8E0D4E9C9BDE3C7BDE2CCC7DED3CED0CECC959295FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDECEFFCFBDFF
        C4AFFFBAA3FFB199FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FFBBA4F7A992FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDDCEFFCCBCFE
        C2B0FEB8A3FAB099FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFCE9F9DFAE0D5FFDACCFFCEBDFFC6B1FCB8A3F8AD99FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DCE9F9DCE9F9DCE9F9DF3
        AD9DF3AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Spacing = 10
      TabOrder = 1
      Visible = False
    end
    object BtnConfirmar: TCBitBtn
      Left = 9
      Top = 6
      Width = 113
      Height = 25
      Caption = '&Confirmar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00013002000141030002510400025104000143
        030001330200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00014503000145030003780800039C0B00039F0C00039F0C00039D
        0C00027E0900014D0400014D0400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00034F09000365090004A30D0003A60C0003A00B00029E0A00039F0C0003A0
        0C0003A50C0003A60C000269060001340200FF00FF00FF00FF00FF00FF00044F
        0900066B11000AAB1F0007A41500049E0D00029D0A0054C45C00AAE3B00010A6
        1B00039E0C0003A00C0003A70C00026A0600024C0400FF00FF00FF00FF00044F
        090010AC30000DAB280009A41C00039E0F003EBC4800EEFAEF00FFFFFF0090DA
        9700049F0D00039E0C00039F0C0003A70C00024C0400FF00FF00035706000D82
        230017B641000EA92D0005A0130041BD4B00F3FBF400FFFFFF00FFFFFF00FFFF
        FF007ED48600049F0D00039E0C0003A50C00037B0800014203000357060017A3
        410018B54A0011AB34004CC15800F4FCF600FCFEFC00F6FCF700FCFEFC00F8FC
        F800FFFFFF0075D17D0005A00F0003A10C0003960A000142030006680D0021B1
        51001EB7510020B54F00EBF8EF00FFFFFF0084D99A00B7E9C500FFFFFF0069CC
        7200DCF4DE00FFFFFF007FD4870003A00C00039F0C00014A0400087412003EBD
        69002ABA5C0021B55300DEF6E70098E1B40022B65500BAEBCE00FFFFFF002CB5
        370035B84100F2FBF30098DD9E0003A00C00039F0C000252050006780E0054C5
        7A0044C674001CB24E0036BD660026B7580022B55400BBEBCC00FFFFFF0041C0
        5B000CA6270021B0390013AA2C0007A51800039D0C000146030006780E004CBD
        690083DDA70022B655001CB24E0022B5540022B55400BCEBCE00FFFFFF0046C2
        67000FAA30000FAA2E000CA6270006A71600038C0A0001460300FF00FF0021A3
        3600AAE7C50068D08E0016AF48001BB14C0022B55400BDEBCF00FFFFFF004CC5
        6F0010A931000EA729000BA4200009AF1C00036B0A00FF00FF00FF00FF0021A3
        360056C57300C5F0D80066CF8C0020B4520019B14C00BFEDD000FFFFFF004CC6
        750013AC3C0012AA34000FB02D000A991F00036B0A00FF00FF00FF00FF00FF00
        FF00139923006ACC8800D0F4E3009AE1B60050C77A0038BD67002CBA5D0030BB
        60002FBC5D0023BC4F0011A3300006620F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004BBF67004BBF670098E1B500BDEED400A7E7C40090E0B10078D9
        9F0049C779001B9D3D001B9D3D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF001DA4350038B4540046BC660042B863002BA6
        4900138C2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
  end
  inherited imgIcones: TImageList
    Left = 384
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
    Left = 296
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 104
    Top = 248
  end
  inherited cdsLookUp: TClientDataSet
    Left = 168
    Top = 248
  end
  inherited dspPadrao: TDataSetProvider
    Left = 208
    Top = 400
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 280
    Top = 400
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraostAtivo: TStringField
      FieldName = 'stAtivo'
      Size = 1
    end
    object cdsPadraostParcial: TStringField
      FieldName = 'stParcial'
      Size = 1
    end
    object cdsPadraostCancelado: TStringField
      FieldName = 'stCancelado'
      Size = 1
    end
    object cdsPadraoidPedidoIni: TIntegerField
      FieldName = 'idPedidoIni'
    end
    object cdsPadraoidPedidoFim: TIntegerField
      FieldName = 'idPedidoFim'
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraonrOriginalIni: TIntegerField
      FieldName = 'nrOriginalIni'
    end
    object cdsPadraonrOriginalFim: TIntegerField
      FieldName = 'nrOriginalFim'
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 352
    Top = 400
  end
  inherited cdsGrid: TClientDataSet
    ProviderName = ''
    Left = 280
    Top = 336
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Size = 1
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrididCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object cdsGriddtPedido: TDateField
      FieldName = 'dtPedido'
    end
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsGriddescProduto: TStringField
      FieldName = 'descProduto'
      Size = 50
    end
    object cdsGridqtProduto: TFloatField
      FieldName = 'qtProduto'
    end
    object cdsGridqtSaldo: TFloatField
      FieldName = 'qtSaldo'
    end
    object cdsGridqtRecebida: TFloatField
      FieldName = 'qtRecebida'
      OnValidate = cdsGridqtRecebidaValidate
    end
    object cdsGrididMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsGriddescMaquina: TStringField
      FieldName = 'descMaquina'
      Size = 100
    end
    object cdsGridvlProduto: TCurrencyField
      FieldName = 'vlProduto'
    end
    object cdsGrididPedidoProd: TIntegerField
      FieldName = 'idPedidoProd'
    end
    object cdsGriddtRecebida: TDateField
      FieldName = 'dtRecebida'
    end
    object cdsGriddescCadFornecedor: TStringField
      FieldName = 'descCadFornecedor'
      Size = 80
    end
    object cdsGridnrPedidoOriginal: TStringField
      FieldName = 'nrPedidoOriginal'
    end
  end
  inherited dsGrid: TDataSource
    Left = 352
    Top = 336
  end
  inherited dspGrid: TDataSetProvider
    Left = 208
    Top = 336
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 136
    Top = 400
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, idPedidoCompra, dtPedido, obsPed' +
      'ido, stPedido FROM PedidoCompra WHERE 1=2'
    Left = 136
    Top = 336
  end
  inherited dsEmpresa: TDataSource
    Left = 600
    Top = 65528
  end
  object dsRodape: TDataSource
    DataSet = cdsRodape
    Left = 504
    Top = 336
  end
  object cdsRodape: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 336
    object cdsRodapeidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsRodapeidNfe: TIntegerField
      FieldName = 'idNfe'
    end
  end
  object cdsDistribuiNf: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Filtered = True
    IndexFieldNames = 'idEmpresa;idCadEmpresa'
    Params = <>
    Left = 96
    Top = 208
    object cdsDistribuiNfidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsDistribuiNfidPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object cdsDistribuiNfidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsDistribuiNfqtde: TFloatField
      FieldName = 'qtde'
    end
    object cdsDistribuiNfidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsDistribuiNfidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsDistribuiNfidDocSerie: TStringField
      FieldName = 'idDocSerie'
    end
    object cdsDistribuiNfidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsDistribuiNfidPedidoProd: TIntegerField
      FieldName = 'idPedidoProd'
    end
  end
  object dsDistribuiNf: TDataSource
    DataSet = cdsDistribuiNf
    Left = 200
    Top = 208
  end
end
