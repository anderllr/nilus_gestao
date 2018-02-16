inherited FrmGerenciaRequisicao: TFrmGerenciaRequisicao
  Caption = 'Gerenciamento de Produtos Requisitados'
  ClientHeight = 470
  ClientWidth = 894
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000300000503000027030000400300003802000045020000540200
    004A0300003B0300002B03000011030000030000000000000000000000000400
    00080300001D02000045201B1582706048EE4F412ED5342A1EB91B150F9C0604
    038002000075020000720200006B020000610200004E0300002A0300000C0000
    0000040000030300000A403D3861878272FF745F42FF6F5B3FFF69563CFE6150
    37FB4A3D2BE432291DCA1D1711AF0805048A020000660300003B030000180000
    000000000000000000005B5E5B7E969E99FF766245FF715D41FF6E5F49FF736A
    5BFF60523EFF544530FF4B3D2BFF2D241ABC0300002B0300000E040000040000
    00000000000000000000717A7AA4A2B5BAFF786345FF746248FF808381FF8B92
    94FF7E8180FF5A4B36FF4F412DFF423626EB0501010400000000000000000000
    00000000000000000000918C7AC5AFBBC0FF7A6547FF80796BFF83898BFF7F85
    86FF7A8081FF6A6459FF5A4D3AFF5F5D56FE1A18183900000000000000000000
    00000000000000000000B29971E0B4B8BAFF817058FF6D675BFF7D8284FF9FA4
    A5FF979D9EFF8D9293FF818380FF7B8081FF65696AD800000000000000000000
    00000000000000000000BEA67CF3B0B5B6FF897E6CFF746959FF6B6F71FF6F73
    75FF72787AFF737470FF757672FF676B6CFF636767F100000000000000000000
    00000000000006020206CAB289FEAEB3B5FF90897EFF836E51FF7E7D77FF6266
    67FF616464FF656766FF5A5E5FFF555757FF514B41F80703020A000000000000
    0000000000000A05050DD2BB93FFB6BCBDFF8E8F8FFF88785FFF807360FF7B76
    6CFF6E6352FF6B6C69FF929798FF585651FF564731FE16100B3D000000000000
    0000000000000D0B0D29655A4069716348767A6B52867D73629C72716CBE7573
    6EC489806FBE61605BD84E5151FF312F2DA01D161056110C0A3F000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000C0808131C1B1B4A0603030C0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000C007
    00000000000080000000E0000000E0030000E0030000E0030000E0030000C001
    0000C0010000C0010000FFC70000FFFF0000FFFF0000FFFF0000FFFF0000}
  Padding.Left = 2
  Padding.Top = 2
  Padding.Right = 2
  Padding.Bottom = 2
  Position = poDefault
  Visible = True
  ExplicitWidth = 910
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Left = 2
    Top = 120
    Width = 890
    Height = 275
    TabOrder = 2
    ExplicitLeft = 2
    ExplicitTop = 120
    ExplicitWidth = 890
    ExplicitHeight = 275
    inherited DBGrid: TCDBGrid
      Width = 886
      Height = 258
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection]
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      OnDblClick = nil
      OnKeyDown = nil
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = '  ?'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idRequisicao'
          Title.Caption = 'Req.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codFabricante'
          Title.Caption = 'C'#243'd.Fab.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Produto'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtProduto'
          Title.Caption = 'Qtde.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtAtendido'
          Title.Caption = 'Atendido'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtSolicitado'
          Title.Caption = 'Solicitado'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtCancelada'
          Title.Caption = 'Cancelado'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtSaldo'
          Title.Caption = 'Saldo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtDeposito'
          Title.Caption = 'Dep'#243'sito'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtEstoque'
          Title.Caption = 'Estoque'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descMaquina'
          Title.Caption = 'M'#225'quina/Ve'#237'culo'
          Width = 200
          Visible = True
        end>
    end
    object DBEqtCancelada: TCDBEdit
      Left = 788
      Top = 90
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'qtCancelada'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidEmpresaR: TCDBEdit
      Left = 788
      Top = 115
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'idEmpresa'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadEmpresaR: TCDBEdit
      Left = 788
      Top = 140
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'idCadEmpresa'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidRequisicao: TCDBEdit
      Left = 788
      Top = 165
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'idRequisicao'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtAtendido: TCDBEdit
      Left = 788
      Top = 65
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'qtAtendido'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtSolicitado: TCDBEdit
      Left = 788
      Top = 40
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'qtSolicitado'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited PanBotoes: TCPanelGradient
    Left = 2
    Top = 39
    Width = 890
    Height = 81
    BackgroundGradientColor = 12306636
    ExplicitLeft = 2
    ExplicitTop = 39
    ExplicitWidth = 890
    ExplicitHeight = 81
    object Bevel4: TBevel [0]
      Left = 640
      Top = -1
      Width = 4
      Height = 80
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel5: TBevel [1]
      Left = -2
      Top = 77
      Width = 740
      Height = 4
      Shape = bsFrame
      Style = bsRaised
    end
    object CLabel3: TCLabel [2]
      Left = 398
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
    object CLabel7: TCLabel [3]
      Left = 528
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
    object Bevel3: TBevel [4]
      Left = 0
      Top = 26
      Width = 644
      Height = 4
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel6: TBevel [5]
      Left = 734
      Top = -3
      Width = 4
      Height = 82
      Shape = bsFrame
      Style = bsRaised
    end
    object CLabel1: TCLabel [6]
      Left = 139
      Top = 35
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
    object CLabel4: TCLabel [7]
      Left = 16
      Top = 34
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Req. de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel5: TCLabel [8]
      Left = 16
      Top = 8
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object CLabel6: TCLabel [9]
      Left = 240
      Top = 34
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#225'q./Ve'#237'c.'
      Transparent = True
    end
    object lblDeposito: TCLabel [10]
      Left = 12
      Top = 58
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dep'#243'sito'
      Transparent = True
    end
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 650
      Top = 6
      TabOrder = 10
      ExplicitLeft = 650
      ExplicitTop = 6
    end
    inherited BtnFechar: TCBitBtn
      Left = 651
      Top = 44
      TabOrder = 11
      ExplicitLeft = 651
      ExplicitTop = 44
    end
    object DBEdtEmissaoIni: TCDBEdit
      Left = 442
      Top = 5
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoIni'
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
    object DBEdtEmissaoFim: TCDBEdit
      Left = 550
      Top = 5
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoFim'
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
    object DBEidReqFim: TCDBEdit
      Left = 161
      Top = 31
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idReqFim'
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
      KeyMode = kmNormal
    end
    object DBEidReqIni: TCDBEdit
      Left = 60
      Top = 31
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idReqIni'
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
      KeyMode = kmNormal
    end
    object LookProduto: TCLookUp
      Left = 119
      Top = 5
      Width = 273
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
      Left = 60
      Top = 6
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 0
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookMaquina: TCLookUp
      Left = 356
      Top = 31
      Width = 274
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
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
      Left = 297
      Top = 31
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMaquina'
      DataSource = dsPadrao
      TabOrder = 6
      Find = dmFind.FindMaquina
      AcaoCad = frmPrincipal.actCadBem
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProdDeposito: TCLookUp
      Left = 112
      Top = 56
      Width = 249
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
      Key.Strings = (
        'idProdDeposito')
      LookUpKey.Strings = (
        'idProdDeposito')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ProdDeposito'
      ReturnField = 'descProdDeposito'
    end
    object DBEidProdDeposito: TCDBEdit
      Left = 60
      Top = 56
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdDeposito'
      DataSource = dsPadrao
      TabOrder = 8
      Find = dmFind.FindProdDeposito
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 499
      Top = 58
      Width = 126
      Height = 17
      Cursor = crHandPoint
      Caption = 'Consolida Filiais?'
      Color = 12306636
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      DragCursor = crArrow
      ParentColor = False
      TabOrder = 12
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 367
      Top = 58
      Width = 126
      Height = 17
      Cursor = crHandPoint
      Caption = 'Consolida Empresas?'
      Color = 12306636
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      DragCursor = crArrow
      ParentColor = False
      TabOrder = 13
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited PanTopo: TCPanelGradient
    Left = 2
    Top = 2
    Width = 890
    Height = 37
    TabOrder = 0
    ExplicitLeft = 2
    ExplicitTop = 2
    ExplicitWidth = 890
    ExplicitHeight = 37
    object Bevel2: TBevel [0]
      Left = 1
      Top = 33
      Width = 888
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
      Width = 888
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
      Width = 888
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 888
      ExplicitHeight = 28
      inherited LookdescCadEmpresa: TCLookUp
        Padding.Bottom = 5
      end
      inherited LookdescAbreviada: TCLookUp
        Width = 173
        ExplicitWidth = 173
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 734
        Top = 3
        Visible = False
        ExplicitLeft = 734
        ExplicitTop = 3
      end
      inherited LookidInscEstadual: TCLookUp
        Left = 709
        Top = 3
        Visible = False
        ExplicitLeft = 709
        ExplicitTop = 3
      end
    end
  end
  object PanRodape: TCPanelGradient [3]
    Left = 2
    Top = 395
    Width = 890
    Height = 73
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 3
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel26: TCLabel
      Left = 14
      Top = 12
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel2: TCLabel
      Left = 137
      Top = 12
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtde. a Atender'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel8: TCLabel
      Left = 298
      Top = 12
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtde. a Solicitar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel9: TCLabel
      Left = 460
      Top = 12
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtde. a Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel7: TBevel
      Left = -2
      Top = 35
      Width = 739
      Height = 4
      Shape = bsFrame
      Style = bsRaised
    end
    object CLabel10: TCLabel
      Left = 9
      Top = 48
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
    object BtnConfirmar: TCBitBtn
      Tag = 1
      Left = 627
      Top = 5
      Width = 95
      Height = 25
      Action = actConfirmar
      Caption = '&Confirmar'
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
      TabOrder = 0
    end
    object DBEqtSaldo: TCDBEdit
      Left = 46
      Top = 9
      Width = 85
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'qtSaldo'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtAAtender: TCDBEdit
      Left = 219
      Top = 9
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtAAtender'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtASolicitar: TCDBEdit
      Left = 381
      Top = 10
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtASolicitar'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEqtACancelar: TCDBEdit
      Left = 548
      Top = 10
      Width = 73
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'qtACancelar'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
    object BtnAtender: TCBitBtn
      Tag = 1
      Left = 139
      Top = 45
      Width = 80
      Height = 25
      Action = actAtender
      Caption = '&Atender'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00015703000157030001570300015703000157
        030001570300015703000157030001570300015703000157030095655F00A569
        6A00A5696A00A5696A00A5696A0001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000157030098686000FBE5
        C000F4D5AD00F0CF9F00EFCA960001570300FFFFFF00FFFFFF00004B0000004B
        0000004B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00015703009D6B6200FCE7
        C900F2D5B500F0D0A900EECB9E0001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0002630500004B0000EFF6F000FFFFFF00FFFFFF0001570300A36F6400FEEE
        D400F4DDC000F2D7B500F0D1AA0001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00187F1E00004B0000FFFFFF00FFFFFF00FFFFFF0001570300A7746600FFF4
        E100F6E1CA00F3DCBF00F2D7B40001570300FFFFFF00FFFFFF00004B0000004B
        000013771A000C8C1800004B0000004B0000FFFFFF0001570300AD786900FFFB
        EE00F7E7D500F4E1CA00F3DCBF0001570300FFFFFF00FFFFFF00004B00000A72
        120026AC440023BA41000C861600004B0000FFFFFF0001570300B47E6B00FFFF
        FB00F8EDE100F7E6D400F6E1C90001570300FFFFFF00FFFFFF00FFFFFF00004B
        00001E9A360039D76700004B0000FFFFFF00FFFFFF0001570300BA836D00FFFF
        FF00FCF4EE00FAEDE100F8E9D50001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00004B0000004B0000FFFFFF00FFFFFF00FFFFFF0001570300BF877000FFFF
        FF00FFFBFA00FEF4ED00FAEEE00001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001570300C48C7200FFFF
        FF00FFFFFF00FFFCFA00FCF4ED00015703000157030001570300015703000157
        0300015703000157030001570300015703000157030001570300CA917400FFFF
        FF00FFFFFF00FFFFFF00FFFCFA00FCF4ED00FAEDDE00F8E7D400FCEBD300E3D3
        BB00B7AD9C00A5696A00FF00FF00FF00FF00FF00FF00FF00FF00CE957600FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FEFCFA00FCF6EB00FAEFE000A5696A00A569
        6A00A5696A00A5696A00FF00FF00FF00FF00FF00FF00FF00FF00D3977800FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFC00F4EBE600A5696A00E2A3
        5B00EF993800BB704F00FF00FF00FF00FF00FF00FF00FF00FF00D59A7900FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8FE00A5696A00E5A5
        5F00C2805C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D0906B00D090
        6B00D0906B00D0906B00D0906B00D0906B00D0906B00D0906B00A5696A00BB7F
        6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 5
    end
    object BtnSolicitar: TCBitBtn
      Tag = 1
      Left = 320
      Top = 45
      Width = 80
      Height = 25
      Action = actSolicitar
      Caption = '&Solicitar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF0096675E009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F
        60009F6F60009F6F60009F6F60009F6F60009F6F6000FF00FF00FF00FF00FF00
        FF0099695F00F6E0BF00F4DDB800F3DAB400F3D7AD00F2D5A700F0D3A300F0D0
        9E00EECC9900EECA9300EDC99000EDC68C009F6F6000FF00FF00FF00FF00FF00
        FF009D6C6000F6E3C600F6E1C100F4DDBB00F3DCB40000810000F2D5AA00F0D3
        A400F0CF9F00EFCC9900EFCB9500EEC990009F6F6000FF00FF00FF00FF00FF00
        FF00A16E6000F7E6CE00F6E5C700F4E1C100008100000081000000810000F3D5
        AB00F0D3A500EFD19F00EFCE9A00EFCB96009F6F6000FF00FF00FF00FF00FF00
        FF00A6726200F8EAD400F7E7CE0000810000307A2A005F924B00008100005088
        3C00F2D5AB00F0D3A500F0D0A000EFCF9C009F6F6000FF00FF00FF00FF00FF00
        FF00AB766300FAEEDA00FAEBD50000810000EFE2C200F6E2C200A7B883000081
        000000810000EDD4A900F0D4A600F0D1A1009F6F6000FF00FF00FF00FF00FF00
        FF00B0786400FAF0E200FAEEDC00F8EBD500F8E9D000F7E6CA00F6E3C500E6D8
        B4000081000000810000F2D7AD00F2D4A7009F6F6000FF00FF00FF00FF00FF00
        FF00B57D6400FCF3E700FBF0E300FAEFDD00FAEDD800F7E9D100F8E6CB00F6E3
        C500F6E1C000F4DEBA00F4DAB500F3D7AD009F6F6000FF00FF00FF00FF00FF00
        FF00BB806500FCF7ED00D5812700D5812700D5812700D5812700D5812700D581
        2700D5812700D5812700D5812700F3DAB6009F6F6000FF00FF00FF00FF00FF00
        FF00C0836600FCF8F300FCF7EF00FCF4EA00FBF2E500FBEFDE00F8EDD900F8EB
        D400F8E7CE00F7E3C700F6E1C200F4DEBB009F6F6000FF00FF00FF00FF00FF00
        FF00C4876700FEFBF800FEFAF300FEF7EF00FCF4EA00FBF2E600FAEFE000F8ED
        DA00F8EAD400F7E9CF00F7E5C900F6E2C4009F6F6000FF00FF00FF00FF00FF00
        FF00C9896700FEFCFB00D5812700D5812700D5812700D5812700D5812700D581
        2700D5812700D5812700D5812700F7E5CA009F6F6000FF00FF00FF00FF00FF00
        FF00CC8B6800FFFFFF00FFFEFC00FEFCFA00FEFBF400FEF8F000FCF6ED00FCF4
        E700FAF2E200FAEFDC00F8EDD700F8EAD1009F6F6000FF00FF00FF00FF00FF00
        FF00CF8E6800FFFFFF00FFFFFF00FFFFFC00FFFCFA00FEFBF600FEF8F000FCF7
        EE00FBF4E900FBF2E300FBEFDD00F8EDD8009F6F6000FF00FF00FF00FF00FF00
        FF00CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
        6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 6
    end
    object BtnCancelar: TCBitBtn
      Tag = 1
      Left = 515
      Top = 45
      Width = 80
      Height = 25
      Action = actCancelar
      Caption = 'Cancelar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000042C0000053B0000044A0000044A000004
        3D0000042F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000043E0000043E0000016D000000910000019600000196000001
        9300000070000004450000044500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000044C0000025E0000029B0000029D000001960000009100000196000001
        960000029B0000029D000002600000042F00FF00FF00FF00FF00FF00FF00000B
        5900000169000004B1000003A4000001960000009100AFBAE700FFFFFF00213B
        B000000193000001960000029D000002600000044500FF00FF00FF00FF000009
        55000006C0000005B8000003A7000001960000019300ACB8E700FFFFFF00223C
        B00000019300000193000001960000029D0000044500FF00FF00000C5F000007
        93000009D7000005B80000029D000001980000019300ABB7E700FFFFFF00213B
        B00000019300000193000001930000029B000000700000053B0000014C000007
        C3000009D7000006C0000017A7000006980000019800ABB7E900FFFFFF00213B
        B0000001930000189E00000A98000001980000008A0000053B0000006300000B
        E200000BE400000BE400D4DCFB00798EEA00000DD400A6B6F700FFFFFF00132D
        A800203AB000F2F4FB0094A3E000000196000001960000044400000075000024
        EB000013EB00000BE700E7EDFF00FFFFFF006F8BFF00AABBFF00FFFFFF00667A
        D500DAE0F400FFFFFF007488D300000198000001960000044A0000007500163A
        EC000A2EEB00000ADC003355ED00F4F7FF00FCFCFF00F6F7FF00FCFCFF00F8FA
        FE00FFFFFF006980DB000007B0000003A4000000910000044000000075001438
        F5005C78F400000BEB000009DA002A4CEC00F3F6FF00FFFFFF00FFFFFF00FFFF
        FF00798FEA000009BD000004B1000003A7000000810000044000FF00FF00000F
        D9008EA4FA003356F0000008CD000009D700284AEC00EEF2FF00FFFFFF008CA0
        F300001BCF000005B7000004AC000004B30000026400FF00FF00FF00FF000008
        D200193DED00AEBDF6003D5FFB000013EC000010DD003F5EEB00A7B8FE000018
        D2000008C6000006C0000007C3000002A000000F7500FF00FF00FF00FF00FF00
        FF000004B1003255EF00C6D1FF007F98FF002145F800082BF500021DF4000421
        F4000018EB00000FEB000009BB00000E7000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000C30ED00163AF7007D96FF00ADBDFF0091A6FF00748FFF005675
        FD000F33EB000009C5000009C500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000010D5000523F4001036F6000A2FF6000013
        EF000006A600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 7
    end
    object DBEdtAtendimento: TCDBEdit
      Left = 53
      Top = 47
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtAtendimento'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 8
      DecimalControl = True
      KeyMode = kmDate
    end
  end
  inherited imgIcones: TImageList
    Left = 328
    Top = 240
    Bitmap = {
      494C010106000800540010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000000000000096675E009F6F
      60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F60009F6F
      60009F6F60009F6F60009F6F6000000000000000000000000000000000000000
      00000000000000042C0000053B0000044A0000044A0000043D0000042F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099695F00F6E0
      BF00F4DDB800F3DAB400F3D7AD00F2D5A700F0D3A300F0D09E00EECC9900EECA
      9300EDC99000EDC68C009F6F6000000000000000000000000000000000000004
      3E0000043E0000016D0000009100000196000001960000019300000070000004
      4500000445000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D6C6000F6E3
      C600F6E1C100F4DDBB00F3DCB40000810000F2D5AA00F0D3A400F0CF9F00EFCC
      9900EFCB9500EEC990009F6F600000000000000000000000000000044C000002
      5E0000029B0000029D000001960000009100000196000001960000029B000002
      9D000002600000042F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A16E6000F7E6
      CE00F6E5C700F4E1C100008100000081000000810000F3D5AB00F0D3A500EFD1
      9F00EFCE9A00EFCB96009F6F60000000000000000000000B5900000169000004
      B1000003A4000001960000009100AFBAE700FFFFFF00213BB000000193000001
      960000029D000002600000044500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6726200F8EA
      D400F7E7CE0000810000307A2A005F924B000081000050883C00F2D5AB00F0D3
      A500F0D0A000EFCF9C009F6F60000000000000000000000955000006C0000005
      B8000003A7000001960000019300ACB8E700FFFFFF00223CB000000193000001
      93000001960000029D0000044500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AB766300FAEE
      DA00FAEBD50000810000EFE2C200F6E2C200A7B883000081000000810000EDD4
      A900F0D4A600F0D1A1009F6F600000000000000C5F00000793000009D7000005
      B80000029D000001980000019300ABB7E700FFFFFF00213BB000000193000001
      93000001930000029B000000700000053B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0786400FAF0
      E200FAEEDC00F8EBD500F8E9D000F7E6CA00F6E3C500E6D8B400008100000081
      0000F2D7AD00F2D4A7009F6F60000000000000014C000007C3000009D7000006
      C0000017A7000006980000019800ABB7E900FFFFFF00213BB000000193000018
      9E00000A98000001980000008A0000053B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B57D6400FCF3
      E700FBF0E300FAEFDD00FAEDD800F7E9D100F8E6CB00F6E3C500F6E1C000F4DE
      BA00F4DAB500F3D7AD009F6F60000000000000006300000BE200000BE400000B
      E400D4DCFB00798EEA00000DD400A6B6F700FFFFFF00132DA800203AB000F2F4
      FB0094A3E0000001960000019600000444000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BB806500FCF7
      ED00D5812700D5812700D5812700D5812700D5812700D5812700D5812700D581
      2700D5812700F3DAB6009F6F600000000000000075000024EB000013EB00000B
      E700E7EDFF00FFFFFF006F8BFF00AABBFF00FFFFFF00667AD500DAE0F400FFFF
      FF007488D300000198000001960000044A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0836600FCF8
      F300FCF7EF00FCF4EA00FBF2E500FBEFDE00F8EDD900F8EBD400F8E7CE00F7E3
      C700F6E1C200F4DEBB009F6F60000000000000007500163AEC000A2EEB00000A
      DC003355ED00F4F7FF00FCFCFF00F6F7FF00FCFCFF00F8FAFE00FFFFFF006980
      DB000007B0000003A40000009100000440000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4876700FEFB
      F800FEFAF300FEF7EF00FCF4EA00FBF2E600FAEFE000F8EDDA00F8EAD400F7E9
      CF00F7E5C900F6E2C4009F6F600000000000000075001438F5005C78F400000B
      EB000009DA002A4CEC00F3F6FF00FFFFFF00FFFFFF00FFFFFF00798FEA000009
      BD000004B1000003A70000008100000440000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9896700FEFC
      FB00D5812700D5812700D5812700D5812700D5812700D5812700D5812700D581
      2700D5812700F7E5CA009F6F60000000000000000000000FD9008EA4FA003356
      F0000008CD000009D700284AEC00EEF2FF00FFFFFF008CA0F300001BCF000005
      B7000004AC000004B30000026400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC8B6800FFFF
      FF00FFFEFC00FEFCFA00FEFBF400FEF8F000FCF6ED00FCF4E700FAF2E200FAEF
      DC00F8EDD700F8EAD1009F6F600000000000000000000008D200193DED00AEBD
      F6003D5FFB000013EC000010DD003F5EEB00A7B8FE000018D2000008C6000006
      C0000007C3000002A000000F7500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF8E6800FFFF
      FF00FFFFFF00FFFFFC00FFFCFA00FEFBF600FEF8F000FCF7EE00FBF4E900FBF2
      E300FBEFDD00F8EDD8009F6F60000000000000000000000000000004B1003255
      EF00C6D1FF007F98FF002145F800082BF500021DF4000421F4000018EB00000F
      EB000009BB00000E700000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF8E6800CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800CF8E6800CF8E6800000000000000000000000000000000000C30
      ED00163AF7007D96FF00ADBDFF0091A6FF00748FFF005675FD000F33EB000009
      C5000009C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000010D5000523F4001036F6000A2FF6000013EF000006A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF00000000CEC6C1FEA99D96FF8575
      6CFF6F5C52FF655046FF5B463CFF564036FF634D44FF685249FF675148FF6651
      47FF69564DFF7A6A62FF9C8F89FE857E7F7B0000000000000000000000000000
      0000000000000157030001570300015703000157030001570300015703000157
      030001570300015703000157030001570300CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FFE2DAD4FE726E55FF765648FF7C5D
      50FF7A5B4DFF795A4DFF77574CFF74564BFF73544AFF725348FF715148FF6B4C
      42FF7D5D54FFAC8480FF4C4E35FFBFB6B4FD95655F00A5696A00A5696A00A569
      6A00A5696A0001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0001570300AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FFAE7B6EFFD9AD9DFFD5AA9CFFD1A7
      9AFFCEA498FFCBA196FFC89F93FFC49C92FFC09990FFBC968EFFB9938DFF9577
      6AFF7A5C47FFD4A891FF232709FFA39B97FF98686000FBE5C000F4D5AD00F0CF
      9F00EFCA960001570300FFFFFF00FFFFFF00004B0000004B0000004B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0001570300B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF00000000AE7B6EFFEFE7DEFFFFEEDDFFFFEA
      D6FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFD4A9FFFFD0A2FFD9AA
      A8FF6E503EFFB08876FF281F0BFF544B48FF9D6B6200FCE7C900F2D5B500F0D0
      A900EECB9E0001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF0002630500004B
      0000EFF6F000FFFFFF00FFFFFF0001570300B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF00000000DDD6D0FFC28F79FFFFF2E5FFFFEE
      DDFF6A9D58FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFD4A9FFF7BF
      B0FF7C5E4FFF906D5DFF4D3127FF463835FFA36F6400FEEED400F4DDC000F2D7
      B500F0D1AA0001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00187F1E00004B
      0000FFFFFF00FFFFFF00FFFFFF0001570300B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF00000000ECE8E3FFC8957CFFFEF5EBFFFFF2
      E5FF2D842BFF7FA86AFFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFCF
      AEFF997970FF745547FF533E31FF4A3935FFA7746600FFF4E100F6E1CA00F3DC
      BF00F2D7B40001570300FFFFFF00FFFFFF00004B0000004B000013771A000C8C
      1800004B0000004B0000FFFFFF0001570300B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF0000000000000000CF9C80FFF3EFEAFFFFF5
      ECFF2D842BFF2D842BFFB1C194FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8
      B2FFDDA5A1FF6B4C3DFF55372DFF4B3934FFAD786900FFFBEE00F7E7D500F4E1
      CA00F3DCBF0001570300FFFFFF00FFFFFF00004B00000A72120026AC440023BA
      41000C861600004B0000FFFFFF0001570300BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000002D842BFF2D842BFF2D842BFF2D84
      2BFF2D842BFF1EB73CFF0D8212FFE9DFC4FFFFE6CDFFFFE3C8FFFFDFBEFFFFDC
      B9FFF7B9ACFF7D5E51FF52362BFF4B3934FFB47E6B00FFFFFB00F8EDE100F7E6
      D400F6E1C90001570300FFFFFF00FFFFFF00FFFFFF00004B00001E9A360039D7
      6700004B0000FFFFFF00FFFFFF0001570300BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF00000000339039FF55EF88FF47E17BFF39D3
      6CFF31CA63FF21BB44FF10A821FF248020FFFFEAD6FFFFE6CDFFFFE3C8FFFFDF
      BEFFFFD2B7FF9D8075FF44281DFF4A3732FFBA836D00FFFFFF00FCF4EE00FAED
      E100F8E9D50001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00004B0000004B
      0000FFFFFF00FFFFFF00FFFFFF0001570300BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF00000000339039FF48D973FF3CCD67FF31C2
      5CFF2BBD57FF25BE4BFF12A525FF2D842BFFFFEEDDFFFFEAD6FFFFE6CDFFFFE3
      C8FFFFDFBEFFE1A29BFF402418FF503B33FFBF877000FFFFFF00FFFBFA00FEF4
      ED00FAEEE00001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0001570300BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF000000000000000000000000CF9C80FFC8D1
      BBFF2B8C34FF27BF4EFF268528FFFFF5ECFFFFF2E5FFFFEEDDFFFFEAD6FFFFE6
      CDFFFFE3C8FFF8B3A8FF65493CFF4E382FFFC48C7200FFFFFF00FFFFFF00FFFC
      FA00FCF4ED000157030001570300015703000157030001570300015703000157
      030001570300015703000157030001570300C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF000000000000000000000000D7AC8BFFCF9C
      80FF32903BFF1E8628FFF7F9F4FFFFF8F1FFFFF5ECFFFFF2E5FFFFEEDDFFFFE4
      D3FFFFDEC9FFFFC4B6FF937469FF442D23FFCA917400FFFFFF00FFFFFF00FFFF
      FF00FFFCFA00FCF4ED00FAEDDE00F8E7D400FCEBD300E3D3BB00B7AD9C00A569
      6A0000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF00000000000000000000000000000000DCA9
      87FF2F812FFFDBE9DBFFFFFFFFFFFFFDFBFFFFF8F1FFFFF5ECFFF8E6D7FFDBA3
      83FFD69671FFD08E6CFFBD9A80FF5C4841FFCE957600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFCFA00FCF6EB00FAEFE000A5696A00A5696A00A5696A00A569
      6A0000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF0000000000000000000000000000000000000000DCA9
      87FFF9F2EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFF8F1FFFDF3E9FFDCA9
      87FFFFB34EFFE0A86CFF997269FFA3928FFFD3977800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFC00F4EBE600A5696A00E2A35B00EF993800BB70
      4F0000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF000000000000000000000000000000000000000000000000FBF8
      F1FFDCA987FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFF8F1FFDCA9
      87FFE6BB93FF6A6546FF7C8768FFECEBE7FBD59A7900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8FE00A5696A00E5A55F00C2805C000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      0000DCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA9
      87FFE5DFDAFFF2F1F0FFF7F5F5FBCCB2A956D0906B00D0906B00D0906B00D090
      6B00D0906B00D0906B00D0906B00D0906B00A5696A00BB7F6A00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00C001F81F00000000C001E00700000000
      C001C00300000000C001800100000000C001800100000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C001800100000000C001800100000000C001C00300000000
      C001E00700000000FFFFF81F00000000000080008000F8000000800000000000
      0000800000000000000080010000000000008001000000000000800100000000
      0000800180000000000000010000000000000001000000000000000100000000
      00000001C000000000000001C000000F00000001E000000F00000003E000000F
      00008007E000001F0000800FF000003F00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 296
    Top = 240
    inherited actPesquisar: TAction
      Tag = 1
    end
    object actConfirmar: TAction
      Caption = '&Confirmar'
      ImageIndex = 2
      OnExecute = actConfirmarExecute
    end
    object actAtender: TAction
      Caption = '&Atender'
      ImageIndex = 3
      OnExecute = actAtenderExecute
    end
    object actSolicitar: TAction
      Caption = '&Solicitar'
      ImageIndex = 4
      OnExecute = actSolicitarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 5
      OnExecute = actCancelarExecute
    end
  end
  inherited cdsPadrao: TClientDataSet
    ProviderName = ''
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraodtEmissaoIni: TDateField
      FieldName = 'dtEmissaoIni'
    end
    object cdsPadraodtEmissaoFim: TDateField
      FieldName = 'dtEmissaoFim'
    end
    object cdsPadraoidReqIni: TIntegerField
      FieldName = 'idReqIni'
    end
    object cdsPadraoidReqFim: TIntegerField
      FieldName = 'idReqFim'
    end
    object cdsPadraoidProdDeposito: TIntegerField
      FieldName = 'idProdDeposito'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraodtAtendimento: TDateField
      FieldName = 'dtAtendimento'
    end
    object cdsPadraoidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
  end
  inherited cdsGrid: TClientDataSet
    AggregatesActive = True
    ProviderName = ''
    AfterScroll = cdsGridAfterScroll
    OnCalcFields = cdsGridCalcFields
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Size = 1
    end
    object cdsGrididRequisicao: TIntegerField
      FieldName = 'idRequisicao'
    end
    object cdsGrididCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
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
    object cdsGridqtAtendido: TFloatField
      FieldName = 'qtAtendido'
    end
    object cdsGridqtSolicitado: TFloatField
      FieldName = 'qtSolicitado'
    end
    object cdsGridqtCancelada: TFloatField
      FieldName = 'qtCancelada'
    end
    object cdsGridqtDeposito: TFloatField
      FieldName = 'qtDeposito'
    end
    object cdsGridqtEstoque: TFloatField
      FieldName = 'qtEstoque'
    end
    object cdsGridqtAAtender: TFloatField
      FieldName = 'qtAAtender'
    end
    object cdsGridqtASolicitar: TFloatField
      FieldName = 'qtASolicitar'
    end
    object cdsGridqtACancelar: TFloatField
      FieldName = 'qtACancelar'
    end
    object cdsGridqtSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtSaldo'
      Calculated = True
    end
    object cdsGrididRequisicaoProd: TIntegerField
      FieldName = 'idRequisicaoProd'
    end
    object cdsGridcodFabricante: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object cdsGrididMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsGriddescMaquina: TStringField
      FieldName = 'descMaquina'
      Size = 100
    end
    object cdsGrids_qtAAtender: TAggregateField
      FieldName = 's_qtAAtender'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtAAtender)'
    end
    object cdsGrids_qtASolicitar: TAggregateField
      FieldName = 's_qtASolicitar'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtASolicitar)'
    end
    object cdsGrids_qtACancelar: TAggregateField
      FieldName = 's_qtACancelar'
      Active = True
      DisplayName = ''
      Expression = 'SUM(qtACancelar)'
    end
  end
  inherited dsGrid: TDataSource
    OnStateChange = dsGridStateChange
  end
  inherited dspGrid: TDataSetProvider
    Constraints = False
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM tmpCompensacao WHERE  1=2'
    DataSource = dsGrid
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor FROM vCadFornecedorConta' +
        'bil')
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
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 224
    Top = 240
  end
  object FindConta: TCFind
    SelectClause.Strings = (
      
        'SELECT  idConta, idBanco, idAgencia, idContaCorrente, descConta ' +
        'FROM CadGeralConta')
    JoinClause.Strings = (
      'WHERE idCadGeral = [DBEidFornecedor]')
    OrderByClause.Strings = (
      'ORDER BY descConta')
    FindField = 'descConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Banco'
      'Ag'#234'ncia'
      'Conta'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 256
    Top = 240
  end
  object dsClassificacao: TDataSource
    DataSet = cdsReqProdAtend
    Left = 808
    Top = 312
  end
  object cdsReqProdAtend: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM RequisicaoProdAtend WHERE 1=2'
    Params = <>
    ProviderName = 'dspReqProdAtend'
    Left = 776
    Top = 312
  end
  object dspReqProdAtend: TDataSetProvider
    DataSet = sdsReqProdAtend
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 744
    Top = 312
  end
  object sdsReqProdAtend: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM RequisicaoProdAtend WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 712
    Top = 312
  end
  object dsReqProdCot: TDataSource
    DataSet = cdsReqProdCot
    Left = 808
    Top = 344
  end
  object cdsReqProdCot: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM RequisicaoProdCot WHERE 1=2'
    Params = <>
    ProviderName = 'dspReqProdCot'
    Left = 776
    Top = 344
  end
  object dspReqProdCot: TDataSetProvider
    DataSet = sdsReqProdCot
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 744
    Top = 344
  end
  object sdsReqProdCot: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM CotacaoProd'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 712
    Top = 344
  end
  object dsCotacaoProd: TDataSource
    DataSet = cdsCotacaoProd
    Left = 808
    Top = 376
  end
  object cdsCotacaoProd: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CotacaoProd WHERE 1=2'
    Params = <>
    ProviderName = 'dspCotacaoProd'
    Left = 776
    Top = 376
  end
  object dspCotacaoProd: TDataSetProvider
    DataSet = sdsCotacaoProd
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 744
    Top = 376
  end
  object sdsCotacaoProd: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM CotacaoProd'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 712
    Top = 376
  end
end
