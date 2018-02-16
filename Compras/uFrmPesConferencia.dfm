inherited FrmPesConferencia: TFrmPesConferencia
  Caption = 'Confer'#234'ncia de Pedidos de Compra'
  ClientHeight = 526
  ClientWidth = 1451
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000300000503000027030000400300003802000048020000450300
    0039030000110000000000000000000000000000000000000000000000000400
    00080300001E020000460E1C178228644EEE184432D5112C21B90A1611910404
    036203000042030000250300001203000010030000140300000E030000050000
    0000040000030300000A283F3A614B8577FF24634BFF3F6356FF6A7472FE6277
    71FB204537E4102B20CA0A1812A904060486020000620300002D030000100000
    0000000000000000000044605E7F6EA09CFF426D5DFF636C6AFF858A8BFF8186
    87FF3E5E53FF174935FF154130FF0E261CC20200003F0300001A040000040000
    000000000000000000005C7C7CA68CB6BCFF2C6A52FF5D726CFF6A7775FF5E70
    6CFF205440FF194D38FF164532FF14392AED0401011A0300000F040000040000
    00000000000000000000508F80C5ABBCC0FF246A4FFF23644BFF26644CFF1F5D
    45FF1C5740FF1A503BFF184835FF14402FFE090E0B3600000000000000000000
    000000000000000000003DA07CE0B4B9BAFF3C745FFF21664CFF206348FF1F5E
    46FF1D5941FF1B523DFF194B37FF2A4A3EFF333B39A80704040B000000000000
    0000000000000000000047AD87F3B0B5B6FF568171FF22694DFF22664BFF2061
    48FF1E5C43FF1C563FFF566A64FF6F847FFF595B5CFF2B2A2A62000000000000
    0000000000000503020653B994FEAEB3B5FF6C8C81FF257053FF246C50FF2268
    4DFF206248FF1E5C44FF497062FF7F9B93FF515555FE1C1B1B52000000000000
    0000000000000706050D5DC29EFFB5BCBDFF809090FF407C65FF386E5AFF2B67
    50FF1E5F46FF1D5B43FF1C553FFF215441FF244E3EFE09110C3D000000000000
    000000000000080B0E29225E476927674F76337059864B76669C65716EBE888C
    8AEB88938CF44C6A60CF4A635CCD1F2D276B0A171156080C0A3F000000000000
    0000000000000000000000000000000000000000000000000000000000005350
    4D8B989690F4464340880E0A0916000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000000804030D7673
    6EE19E9C95FF97958EFF5D5A57A8000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000002E2A285CA7A5
    9FFF676460A647454283686661B6000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000002D2A2855AAA8
    A2FD0D090914100D0C1C2C292747000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000040000024B48
    457719151428000000000000000000000000000000000000000000000000C03F
    00000000000080000000E0000000E0000000E0030000E0010000E0010000C001
    0000C0010000C0010000FF0F0000FE0F0000FE0F0000FE0F0000FE3F0000}
  ExplicitWidth = 1467
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 156
    Width = 1451
    Height = 122
    Align = alTop
    TabOrder = 2
    ExplicitTop = 156
    ExplicitWidth = 981
    ExplicitHeight = 122
    inherited DBGrid: TCDBGrid
      Width = 1447
      Height = 105
      OnDblClick = nil
      OnKeyDown = nil
      Zebrado = True
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idPedidoCompra'
          Title.Caption = 'Ped.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrPedidoOriginal'
          Title.Caption = 'Nr. Original'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtPedido'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obsPedido'
          Title.Caption = 'Observa'#231#227'o'
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stPedido'
          Title.Caption = 'Status'
          Width = 90
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 491
    Width = 1451
    Height = 35
    Align = alBottom
    ExplicitTop = 491
    ExplicitWidth = 981
    ExplicitHeight = 35
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 7
      Top = 5
      Visible = False
      ExplicitLeft = 7
      ExplicitTop = 5
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 1451
    Height = 129
    TabOrder = 0
    ExplicitWidth = 981
    ExplicitHeight = 129
    object Bevel2: TBevel [0]
      Left = 1
      Top = 119
      Width = 1449
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
      Width = 1449
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
      Width = 1449
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 979
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
        Visible = False
        ExplicitLeft = 269
        ExplicitTop = 11
      end
      inherited LookidInscEstadual: TCLookUp
        Visible = False
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 540
        Top = 6
        Width = 116
        Height = 17
        Caption = 'Consolida Empresa?'
        Color = 15201011
        DataField = 'consolidaemp'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanFornecedor: TCPanelGradient
      Left = 1
      Top = 33
      Width = 1449
      Height = 86
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
      ExplicitWidth = 979
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 1447
        Height = 4
        Align = alTop
        Shape = bsFrame
        Style = bsRaised
        ExplicitLeft = 0
        ExplicitTop = 92
        ExplicitWidth = 573
      end
      object CLabel6: TCLabel
        Left = 135
        Top = 39
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
        Left = 15
        Top = 39
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
      object CLabel11: TCLabel
        Left = 16
        Top = 14
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornec.'
      end
      object LblCad: TCLabel
        Left = 16
        Top = 64
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pedidos'
      end
      object CLabel10: TCLabel
        Left = 434
        Top = 64
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
      object DBCKstCancelado: TCDBCheckBox
        Left = 436
        Top = 38
        Width = 73
        Height = 17
        Caption = 'Cancelado'
        Color = 13884894
        DataField = 'stCancelado'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCBstTotal: TCDBCheckBox
        Left = 364
        Top = 38
        Width = 73
        Height = 17
        Caption = 'Total'
        Color = 13884894
        DataField = 'stTotal'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKstParcial: TCDBCheckBox
        Left = 300
        Top = 38
        Width = 56
        Height = 17
        Caption = 'Parcial'
        Color = 13884894
        DataField = 'stParcial'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKstAtivo: TCDBCheckBox
        Left = 242
        Top = 38
        Width = 48
        Height = 17
        Caption = 'Ativo'
        Color = 13884894
        DataField = 'stAtivo'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdtFinal: TCDBEdit
        Left = 157
        Top = 36
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
        TabOrder = 4
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtInicial: TCDBEdit
        Left = 59
        Top = 36
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
        TabOrder = 3
        DecimalControl = True
        KeyMode = kmDate
      end
      object CLookUp1: TCLookUp
        Left = 397
        Top = 11
        Width = 187
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
        ReturnField = 'descCadFornecedor'
      end
      object LookRazao: TCLookUp
        Left = 118
        Top = 11
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
        Top = 11
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idFornecedor'
        DataSource = dsPadrao
        TabOrder = 0
        OnEnter = DBEidFornecedorEnter
        OnExit = DBEidFornecedorExit
        Find = dmFind.FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 574
        Top = 63
        Width = 107
        Height = 17
        Caption = 'Consolida Filiais?'
        Color = 12897742
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEidPedidos: TcxPopupEdit
        Left = 59
        Top = 61
        Properties.PopupControl = panPopupPedidos
        Properties.OnPopup = DBEidPedidosPropertiesPopup
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = ebsSingle
        Style.ButtonStyle = btsOffice11
        StyleFocused.BorderStyle = ebsSingle
        TabOrder = 10
        Width = 368
      end
      object BtnPesquisar: TCBitBtn
        Tag = 1
        Left = 678
        Top = 55
        Width = 75
        Height = 25
        Action = actPesquisar
        Caption = '&Pesquisar'
        TabOrder = 13
      end
      object DBCKstEncerrado: TCDBCheckBox
        Left = 517
        Top = 38
        Width = 73
        Height = 17
        Caption = 'Encerrado'
        Color = 13884894
        DataField = 'stEncerrado'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEnrPedidoOriginal: TCDBEdit
        Left = 494
        Top = 61
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'nrPedidoOriginal'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  object CPanelGradient2: TCPanelGradient [3]
    Left = 0
    Top = 129
    Width = 1451
    Height = 27
    Align = alTop
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
    ExplicitWidth = 981
    object CLabel1: TCLabel
      Left = 10
      Top = 5
      Width = 138
      Height = 16
      Caption = 'Pedidos Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object CPanelGradient1: TCPanelGradient [4]
    Left = 0
    Top = 278
    Width = 1451
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PanBotoes'
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
    ExplicitWidth = 981
    object CLabel2: TCLabel
      Left = 10
      Top = 5
      Width = 207
      Height = 16
      Caption = 'Produtos do Pedido Selecionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object CGroupBox1: TCGroupBox [5]
    Left = 0
    Top = 305
    Width = 1451
    Height = 186
    Align = alClient
    TabOrder = 5
    ExplicitWidth = 981
    object GridProdutos: TCDBGrid
      Left = 2
      Top = 15
      Width = 1447
      Height = 169
      Align = alClient
      DataSource = dsPedidoProd
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = GridProdutosDblClick
      UtilizaOrdenar = False
      Zebrado = True
      Columns = <
        item
          Expanded = False
          FieldName = 'idProduto'
          Title.Caption = 'Produto'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Descri'#231#227'o'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idBem'
          Title.Caption = 'C'#243'd.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descBem'
          Title.Caption = 'M'#225'quina/Ve'#237'culo'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtPedida'
          Title.Caption = 'Qt.Pedido'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtAtendida'
          Title.Caption = 'Qt.Atend.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtSaldo'
          Title.Caption = 'Saldo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlProduto'
          Title.Caption = 'Valor'
          Width = 75
          Visible = True
        end>
    end
  end
  object panPopupPedidos: TPanel [6]
    Left = 672
    Top = 247
    Width = 748
    Height = 223
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 6
    Visible = False
    OnEnter = panPopupPedidosEnter
    DesignSize = (
      748
      223)
    object Shape8: TShape
      Left = 240
      Top = 182
      Width = 1
      Height = 28
      Anchors = [akLeft, akBottom]
      Pen.Color = clBtnShadow
      ExplicitTop = 212
    end
    object Label29: TLabel
      Left = 250
      Top = 186
      Width = 185
      Height = 25
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '[ Shift + Enter ] marcar/desmarcar o pedido selecionado.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label30: TLabel
      Left = 15
      Top = 10
      Width = 156
      Height = 14
      AutoSize = False
      Caption = 'Campo preferencial para busca :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GridFornecedores: TcxGrid
      Left = 12
      Top = 29
      Width = 723
      Height = 148
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object DBTableViewPedido: TcxGridDBTableView
        OnDblClick = DBTableViewPedidoDblClick
        OnKeyDown = DBTableViewPedidoKeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsPedidos
        DataController.KeyFieldNames = 'idPedidoCompra'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxGriddtPedido
        OptionsCustomize.ColumnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          MinWidth = 25
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringMRUItemsList = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 25
          IsCaptionAssigned = True
        end
        object cxGrididPedidoCompra: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'idPedidoCompra'
          HeaderAlignmentHorz = taRightJustify
          Options.Filtering = False
          Width = 70
        end
        object cxGriddtPedido: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'dtPedido'
          Options.Filtering = False
          Width = 90
        end
        object cxGridvlPedido: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'vlPedido'
          Width = 90
        end
        object cxGridstPedido: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'stPedido'
          Width = 110
        end
        object cxGridobsPedido: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'obsPedido'
          Width = 300
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = DBTableViewPedido
      end
    end
    object BtnAplicar: TCBitBtn
      Left = 7
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BtnAplicarClick
    end
    object BtnCancelar: TCBitBtn
      Left = 84
      Top = 183
      Width = 76
      Height = 28
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BtnLimpar: TCBitBtn
      Left = 161
      Top = 183
      Width = 71
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
      ParentFont = False
      TabOrder = 3
      OnClick = BtnLimparClick
    end
    object cbNumero: TcxCheckBox
      Left = 174
      Top = 7
      TabStop = False
      Caption = 'N'#250'mero'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 4
      Width = 66
    end
    object cbData: TcxCheckBox
      Left = 240
      Top = 7
      TabStop = False
      Caption = 'Data do Pedido'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 5
      Width = 97
    end
    object cbValor: TcxCheckBox
      Left = 343
      Top = 7
      TabStop = False
      Caption = 'Valor'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleFocused.Color = 14671839
      TabOrder = 6
      Width = 58
    end
  end
  inherited imgIcones: TImageList
    Left = 384
    Top = 272
    Bitmap = {
      494C010102000400580010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Top = 192
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 280
    Top = 192
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
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
    object cdsPadraostTotal: TStringField
      FieldName = 'stTotal'
      Size = 1
    end
    object cdsPadraostCancelado: TStringField
      FieldName = 'stCancelado'
      Size = 1
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object cdsPadraopedidos: TStringField
      FieldName = 'pedidos'
      Size = 50
    end
    object cdsPadraostEncerrado: TStringField
      FieldName = 'stEncerrado'
      Size = 1
    end
    object cdsPadraonrPedidoOriginal: TStringField
      FieldName = 'nrPedidoOriginal'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 352
    Top = 192
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, idPedidoCompra, dtPedido, obsPed' +
      'ido, stPedido, nrPedidoOriginal FROM PedidoCompra WHERE 1=2'
    AfterScroll = cdsGridAfterScroll
    Left = 291
    Top = 336
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGrididPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      Required = True
    end
    object cdsGriddtPedido: TSQLTimeStampField
      FieldName = 'dtPedido'
      Required = True
    end
    object cdsGridobsPedido: TStringField
      FieldName = 'obsPedido'
      Size = 250
    end
    object cdsGridstPedido: TStringField
      FieldName = 'stPedido'
      Required = True
      Size = 15
    end
    object cdsGridnrPedidoOriginal: TStringField
      FieldName = 'nrPedidoOriginal'
    end
  end
  inherited dsGrid: TDataSource
    Left = 368
    Top = 336
  end
  inherited dspGrid: TDataSetProvider
    Left = 213
    Top = 336
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 136
    Top = 192
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, idPedidoCompra, dtPedido, obsPed' +
      'ido, stPedido, nrPedidoOriginal FROM PedidoCompra WHERE 1=2'
    Left = 136
    Top = 336
  end
  inherited dsEmpresa: TDataSource
    Left = 568
    Top = 8
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, descAbreviada, idCnpjCp' +
        'f  FROM vCadFornecedorContabil')
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
    Left = 40
    Top = 312
  end
  object dspPedidos: TDataSetProvider
    DataSet = sdsPedidos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 704
    Top = 200
  end
  object sdsPedidos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 624
    Top = 200
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT idPedidoCompra, dtPedido, vlPedido, stPedido, obsPedido F' +
      'ROM PedidoCompra WHERE 1=2'
    Params = <>
    ProviderName = 'dspPedidos'
    Left = 792
    Top = 200
    object cdsPedidosSELECIONADO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object cdsPedidosidPedidoCompra: TIntegerField
      FieldName = 'idPedidoCompra'
      Required = True
    end
    object cdsPedidosdtPedido: TSQLTimeStampField
      FieldName = 'dtPedido'
      Required = True
    end
    object cdsPedidosvlPedido: TFMTBCDField
      FieldName = 'vlPedido'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPedidosstPedido: TStringField
      FieldName = 'stPedido'
      Required = True
      Size = 15
    end
    object cdsPedidosobsPedido: TStringField
      FieldName = 'obsPedido'
      Size = 250
    end
  end
  object dsPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 872
    Top = 200
  end
  object dsPedidoProd: TDataSource
    DataSet = cdsPedidoProd
    Left = 368
    Top = 392
  end
  object cdsPedidoProd: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT idPedidoProd, idProduto, descProduto, idMaquina, descMaqu' +
      'ina, qtPedida, qtAtendida, (qtPedida-qtAtendida) qtSaldo, vlProd' +
      'uto FROM vPedidoCompra WHERE 1=2'
    Params = <>
    ProviderName = 'dspPedidoProd'
    AfterOpen = cdsPadraoAfterOpen
    Left = 291
    Top = 392
    object cdsPedidoProdidPedidoProd: TSmallintField
      FieldName = 'idPedidoProd'
      Required = True
    end
    object cdsPedidoProdidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsPedidoProddescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      Size = 50
    end
    object cdsPedidoProdqtPedida: TFMTBCDField
      FieldName = 'qtPedida'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsPedidoProdqtAtendida: TFMTBCDField
      FieldName = 'qtAtendida'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsPedidoProdqtSaldo: TFMTBCDField
      FieldName = 'qtSaldo'
      Precision = 19
      Size = 3
    end
    object cdsPedidoProdvlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPedidoProdidMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsPedidoProddescMaquina: TStringField
      FieldName = 'descMaquina'
      Size = 100
    end
  end
  object dspPedidoProd: TDataSetProvider
    DataSet = sdsPedidoProd
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 213
    Top = 392
  end
  object sdsPedidoProd: TSQLDataSet
    CommandText = 
      'SELECT idPedidoProd, idProduto, descProduto, idMaquina, descMaqu' +
      'ina, qtPedida, qtAtendida, (qtPedida-qtAtendida) qtSaldo, vlProd' +
      'uto FROM vPedidoCompra WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 136
    Top = 392
  end
end
