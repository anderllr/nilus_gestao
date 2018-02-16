inherited FrmRelMovCaixa: TFrmRelMovCaixa
  Caption = 'Movimenta'#231#227'o do Caixa'
  ClientHeight = 632
  ClientWidth = 914
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000030000160300000E000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000400000103000006030000160300003B44434392676868B6313131900705
    0562020000460300002C03000010030000010000000000000000000000000000
    000004000004030000100300002303000039979A9BBAEEF5F6FFE0E6E8FED6DC
    DEF9A3A8A9E2707273C9434344AF080505410300000700000000000000000000
    0000000000000000000004000001040000039DA0A1AFE1E6E8FFD0D5D6FFD5DB
    DCFFCCD2D4FFC1C6C8FFB3B8BAFF0F0C0C380300001704000006040000010000
    000000000000000000000000000000000000ABAEAFBAE0E6E8FFD1D7D8FFCDD3
    D4FFC7CDCEFFBEC3C5FFB1B6B7FB060202060400000204000001000000000000
    000000000000000000000000000000000000C3C7C8D2E1E6E8FFD0D6D8FFCACF
    D1FFC5CBCCFFBCC1C3FFA7ABADEB000000000000000000000000000000000000
    000000000000000000000000000000000000DDE3E4EDE1E7E9FFD1D7D9FFC9CF
    D1FFC2C7C9FFB9BFC0FF9A9EA0D8000000000000000000000000000000000000
    00000000000000000000000000000A070709F4FAFBFDEAF1F3FFDDE3E5FFD3D9
    DBFFC8CED0FFBFC5C6FF8D9192C5000000000000000000000000000000000000
    00000000000000000000000000002E2B2B2EFEFEFEFEF7FBFCFFEAF1F3FFE1E9
    EBFFD5DBDDFFC7CDCFFF828586B1000000000000000000000000000000000000
    000000000000000000000000000063616164FFFFFFFFFEFFFFFFF8FDFEFFEBF2
    F4FFDCE3E5FFCCD3D5FF787A7C9F000000000000000000000000000000000000
    00000000000000000000000000009B9A9A9DFFFFFFFFFDFEFEFFFAFDFEFFEFF7
    F9FFDBE2E4FFD1D8DAFF6C6E6F8B000000000000000000000000000000000000
    0000000000000000000000000000BFBFBFC5FAFCFCFFF8FBFBFFF4F9FAFFEBF2
    F4FFDFE7E9FFD3DADCFF5F606178000000000000000000000000000000000000
    0000000000000000000000000000929393BFC0C3C4FFC0C4C5FFBFC3C4FFBDC1
    C2FFB8BCBEFFB2B7B8FF50505176000000000000000000000000000000000000
    00000000000000000000000000002F2D2D56565555A05D5D5DA86B6B6CAE7273
    74B67D7E7FBE808383C64645466D000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000F9FF
    00008007000080030000E0000000F8010000F80F0000F80F0000F00F0000F00F
    0000F00F0000F00F0000F00F0000F00F0000F00F0000FFFF0000FFFF0000}
  ExplicitWidth = 930
  ExplicitHeight = 671
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 98
    Width = 914
    ExplicitTop = 118
    ExplicitWidth = 763
  end
  inherited BevTop: TBevel
    Top = 0
    Width = 914
    ExplicitTop = -2
    ExplicitWidth = 655
  end
  inherited PanTopo: TCPanelGradient
    Width = 914
    Height = 64
    ExplicitWidth = 914
    ExplicitHeight = 64
    DesignSize = (
      914
      64)
    object Bevel3: TBevel [0]
      Left = 1
      Top = 1
      Width = 912
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = -1
      ExplicitWidth = 814
    end
    object CLabel3: TCLabel [1]
      Left = 408
      Top = 42
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
    object CLabel7: TCLabel [2]
      Left = 538
      Top = 42
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
    object Bevel1: TBevel [3]
      Left = 1
      Top = 31
      Width = 912
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 35
      ExplicitWidth = 743
    end
    object CLabel11: TCLabel [4]
      Left = 43
      Top = 42
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Caixa'
      Transparent = True
    end
    inherited BtnExecutar: TCBitBtn
      Left = 824
      Top = 37
      Anchors = [akTop, akRight]
      TabOrder = 4
      ExplicitLeft = 824
      ExplicitTop = 37
    end
    object PanEmpresa: TCPanelGradient
      Left = 1
      Top = 5
      Width = 912
      Height = 26
      Align = alTop
      Caption = 'PanEmpresa'
      TabOrder = 0
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
        Left = 28
        Top = 8
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Empresa'
        Transparent = True
      end
      object DBEidEmpresa: TCDBEdit
        Left = 75
        Top = 5
        Width = 46
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idEmpresa'
        DataSource = dsPadrao
        TabOrder = 0
        OnEnter = DBEidEmpresaEnter
        OnExit = DBEidEmpresaExit
        OnKeyDown = DBEidEmpresaKeyDown
        DecimalControl = True
        KeyMode = kmInteger
      end
      object DBEidCadEmpresa: TCDBEdit
        Left = 127
        Top = 5
        Width = 37
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCadEmpresa'
        DataSource = dsPadrao
        TabOrder = 1
        OnKeyDown = DBEidEmpresaKeyDown
        DecimalControl = True
        KeyMode = kmInteger
      end
      object LookdescAbreviada: TCLookUp
        Left = 402
        Top = 5
        Width = 165
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idEmpresa'
          'idCadEmpresa')
        LookUpKey.Strings = (
          'idEmpresa'
          'idCadEmpresa')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaFiscal'
        ReturnField = 'descAbreviada'
      end
      object LookdescCadEmpresa: TCLookUp
        Left = 170
        Top = 5
        Width = 226
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idEmpresa'
          'idCadEmpresa')
        LookUpKey.Strings = (
          'idEmpresa'
          'idCadEmpresa')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadEmpresaFiscal'
        ReturnField = 'descCadEmpresa'
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 721
        Top = 6
        Width = 127
        Height = 17
        Caption = 'Consolida Filiais?'
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 576
        Top = 6
        Width = 127
        Height = 17
        Caption = 'Consolida Empresas?'
        DataField = 'consolidaemp'
        DataSource = dsPadrao
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object DBEdtMovCaixaIni: TCDBEdit
      Left = 452
      Top = 39
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtMovCaixaIni'
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
    object DBEdtMovCaixaFim: TCDBEdit
      Left = 560
      Top = 39
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtMovCaixaFim'
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
    object DBEidCaixa: TCDBEdit
      Left = 76
      Top = 39
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCaixa'
      DataSource = dsPadrao
      TabOrder = 1
      Find = FindCaixa
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookCaixa: TCLookUp
      Left = 130
      Top = 39
      Width = 272
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idCaixa')
      LookUpKey.Strings = (
        'idCaixa')
      AlternateSQL.Strings = (
        
          'SELECT descCaixa FROM Caixa WHERE idEmpresa = [DBEidEmpresa] AND' +
          ' idCaixa = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Caixa'
      ReturnField = 'descCaixa'
    end
    object BtnImprimir: TCBitBtn
      Left = 743
      Top = 37
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00F4F4F4FFFAFAFAFFFDFDFDFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFCFC
        FCFFFCFCFCFFFBFBFBFF9B9B9BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00E2E2E2FFF3F3F3FFDDDDDDFFE3E3E3FFE3E3E3FFE3E3E3FFDEDEDEFFE7E7
        E7FFE3E3E3FFFFFFFFFF8E8C8CFFFF00FF00FF00FF00FF00FF009F9F9FFF9191
        91FF8F8F8FFFCECECEFFF0F0F0FFEEEEEEFFF5F5F5FFFCFCFCFFF7F7F7FFF8F8
        F8FFFBFBFBFFFFFFFFFF929191FF919191FF8F8F8FFFEDEDEDFF757575FF6A6A
        6AFF626262FFADADADFFE9E9E9FFF3F3F3FFEEEEEEFFF0F0F0FFEAEAEAFFEDED
        EDFFEDEDEDFFFFFFFFFF8C8B8BFF585858FF5A5A5AFFA6A6A6FF676767FF6363
        64FF636363FF696969FF979797FF979797FF989898FF979797FF9B9B9BFFA3A3
        A3FFA0A0A0FFA3A3A3FF8B8A89FF787978FF7E7D7DFF989898FF4A494AFF4848
        48FF4F4F4FFF272727FF2B2B2BFF2A2A2AFF2A2A2AFF2A2A2AFF2A2A2AFF2929
        29FF2B2B2BFF2B2A2BFF323232FF666566FF707070FF929292FF575757FF5253
        52FF5C5C5CFF323232FF323232FF313131FF313131FF313131FF303030FF3030
        30FF303030FF2E2E2EFF525252FF6B6B6BFF737273FF919191FF484948FF4748
        47FF515051FF464746FF444444FF454545FF464646FF474747FF494949FF4C4C
        4CFF4D4D4DFF4C4C4CFF656565FF676667FF6D6D6CFF929292FF686868FF6F6F
        6FFF818181FF313131FF3C3C3CFF3F3F3FFF444444FF464646FF464646FF4646
        46FF424242FF404040FF666666FF959495FF7B7B7BFF9B9B9BFFABABABFFBEBE
        BEFFE4E4E4FF5A5A5AFF777777FF848484FF8E8E8EFF939393FF929292FF8D8D
        8DFF818181FF747474FFB6B6B6FFEBEBEBFFCCCCCCFFA7A7A7FF494849FF5252
        51FF5F5F5FFF090909FF0D0D0DFF0F0F0FFF101010FF121212FF111111FF1010
        10FF0E0E0EFF0B0B0BFF545354FF5E5F5FFF5A5B5BFFE1E1E1FFFF00FF00FF00
        FF00FF00FF00A09E9EFFE7E7E7FFE5E5E5FFE6E6E6FFE8E7E9FFE8E7E9FFEAE9
        EAFFECEBECFFEDECEDFFF1F1F1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A09E9EFFDFDFDFFFDEDEDEFFDEDEDEFFE0E0E0FFE2E3E2FFE2E2
        E2FFE2E3E3FFE6E5E5FFE0E0E0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A19E9EFFE0DFE0FFDFDFDFFFDFDFDFFFE0E0E0FFE2E1E2FFE3E2
        E2FFE4E4E4FFE7E6E7FFE6E6E6FF1B1B1BFF000000FFC3C3C3FFFF00FF00FF00
        FF00FF00FF00ACACACFFE0DFE0FFDDDEDEFFDFDFDFFFE1E1E0FFE1E1E1FFE3E1
        E3FFE4E4E4FFE1E0E1FFBFBFBFFF989898FFEDEDEDFF333333FFFF00FF00FF00
        FF00FF00FF00C8C8C8FFF2F2F2FFF1F0F0FFF2F1F1FFF2F2F2FFF4F3F3FFF5F6
        F5FFF6F6F6FFEDEDECFFFF00FF00000000FF000000FF999999FF}
      TabOrder = 6
      OnClick = BtnImprimirClick
    end
  end
  inherited PanTop: TCPanelGradient
    Top = 4
    Width = 914
    VerticalAlignment = taAlignTop
    ExplicitTop = 4
    ExplicitWidth = 914
    inherited BtnFechar: TCBitBtn
      Left = 824
      Top = 4
      ExplicitLeft = 824
      ExplicitTop = 4
    end
  end
  inherited cxGrid: TcxGrid
    Top = 102
    Width = 914
    Height = 462
    DragOpening = False
    ExplicitTop = 102
    ExplicitWidth = 914
    ExplicitHeight = 462
    inherited DBView: TcxGridDBTableView
      Navigator.Buttons.Edit.Enabled = False
      DataController.KeyFieldNames = 'idMovCaixa'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = DBViewdtMovCaixa
            end
            item
              Column = DBViewdescAbreviada
            end
            item
              Column = DBViewdescMovFinanceira
            end>
          SummaryItems = <
            item
              Format = 'R$, 0.00'
              Kind = skSum
              Position = spFooter
              Column = DBViewvlMovCaixa
            end
            item
              Position = spFooter
              Column = DBViewdescMovFinanceira
              DisplayText = 'Total Geral'
            end>
        end
        item
          Links = <
            item
            end>
          SummaryItems = <
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'vlMovConta'
            end>
        end>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupFooters = gfAlwaysVisible
      Styles.Header = stBlueSky
      object DBViewdtMovCaixa: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'dtMovCaixa'
        Visible = False
        GroupIndex = 0
        Width = 90
      end
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'idEmpresa'
        Width = 50
      end
      object DBViewdescAbreviada: TcxGridDBColumn
        Caption = 'Fornecedor / Cliente'
        DataBinding.FieldName = 'descAbreviada'
        Width = 190
      end
      object DBViewdescMovFinanceira: TcxGridDBColumn
        Caption = 'Mov. Financeira'
        DataBinding.FieldName = 'descMovFinanceira'
        Styles.Footer = stBlueLight
        Width = 200
      end
      object DBViewvlMovCaixa: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'vlMovCaixa'
        Styles.Footer = stBlueLight
        Width = 100
      end
      object DBViewdescMovCaixa: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descMovCaixa'
        Width = 400
      end
    end
  end
  object CPanelGradient1: TCPanelGradient [5]
    Left = 0
    Top = 564
    Width = 914
    Height = 68
    Align = alBottom
    Caption = 'PanTopo'
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
    object Bevel2: TBevel
      Left = 1
      Top = 36
      Width = 912
      Height = 4
      Align = alBottom
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = -1
      ExplicitWidth = 814
    end
    object CLabel2: TCLabel
      Left = 9
      Top = 17
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Acumulado Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel4: TCLabel
      Left = 228
      Top = 17
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sa'#237'das no Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel6: TCLabel
      Left = 430
      Top = 17
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Entradas no Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 1
      Top = 1
      Width = 912
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = -1
      ExplicitWidth = 814
    end
    object CLabel8: TCLabel
      Left = 645
      Top = 16
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = #218'ltimo Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEvlSaldoAnterior: TCDBEdit
      Left = 128
      Top = 14
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlSaldoAnterior'
      DataSource = dsRodape
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlSaidas: TCDBEdit
      Left = 334
      Top = 14
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlSaidas'
      DataSource = dsRodape
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlEntradas: TCDBEdit
      Left = 549
      Top = 14
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlEntradas'
      DataSource = dsRodape
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object CPanelGradient2: TCPanelGradient
      Left = 1
      Top = 40
      Width = 912
      Height = 27
      Align = alBottom
      Caption = 'PanEmpresa'
      TabOrder = 3
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
        Left = 57
        Top = 6
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEvlSaldoAtual: TCDBEdit
        Left = 128
        Top = 4
        Width = 89
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'vlSaldoAtual'
        DataSource = dsRodape
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
    object DBEvlUltimoSaldo: TCDBEdit
      Left = 722
      Top = 15
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlUltimoSaldo'
      DataSource = dsRodape
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 645
    Top = 240
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
    Left = 613
    Top = 240
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited cdsLookUp: TClientDataSet
    Left = 645
    Top = 272
  end
  inherited dspLookUp: TDataSetProvider
    Left = 613
    Top = 272
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 613
    Top = 304
    inherited cdsPadraoidEmpresa: TIntegerField
      OnValidate = cdsPadraoidEmpresaValidate
    end
    object cdsPadraoidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsPadraodtMovCaixaIni: TDateField
      FieldName = 'dtMovCaixaIni'
    end
    object cdsPadraodtMovCaixaFim: TDateField
      FieldName = 'dtMovCaixaFim'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
  end
  inherited dsPadrao: TDataSource
    Left = 645
    Top = 304
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vMovCaixa'
    Left = 549
    Top = 336
  end
  inherited dspGrid: TDataSetProvider
    Left = 581
    Top = 336
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vMovCaixa'
    Left = 613
    Top = 336
    object cdsGrididMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
      Required = True
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCaixa: TIntegerField
      FieldName = 'idCaixa'
      Required = True
    end
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      FixedChar = True
      Size = 30
    end
    object cdsGrididMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsGriddescMovFinanceira: TStringField
      FieldName = 'descMovFinanceira'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGriddtMovCaixa: TSQLTimeStampField
      FieldName = 'dtMovCaixa'
      Required = True
    end
    object cdsGridvlMovCaixa: TFMTBCDField
      FieldName = 'vlMovCaixa'
      currency = True
      Precision = 19
      Size = 4
    end
    object cdsGriddescMovCaixa: TStringField
      FieldName = 'descMovCaixa'
      Required = True
      FixedChar = True
      Size = 250
    end
  end
  inherited dsGrid: TDataSource
    Left = 645
    Top = 336
  end
  inherited cxGridPopupMenu1: TcxGridPopupMenu
    Left = 613
    Top = 400
  end
  inherited LookAndFeelController: TcxLookAndFeelController
    Left = 645
    Top = 400
  end
  inherited StyleRepository: TcxStyleRepository
    Left = 581
    Top = 400
    PixelsPerInch = 96
    inherited stBlueLight: TcxStyle
      Color = 15400959
    end
    object cxStyle1: TcxStyle
    end
  end
  object FindEmpresa: TCFind [20]
    SelectClause.Strings = (
      
        'SELECT  idEmpresa, descCadEmpresa, descAbreviada, idCnpjCpf FROM' +
        ' vCadEmpresaContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadEmpresa')
    FindField = 'descCadEmpresa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 581
    Top = 304
  end
  object cdsRodape: TClientDataSet [21]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    AfterOpen = cdsPadraoAfterOpen
    Left = 613
    Top = 368
    object cdsRodapevlSaldoAnterior: TCurrencyField
      FieldName = 'vlSaldoAnterior'
    end
    object cdsRodapevlSaidas: TCurrencyField
      FieldName = 'vlSaidas'
    end
    object cdsRodapevlEntradas: TCurrencyField
      FieldName = 'vlEntradas'
    end
    object cdsRodapevlUltimoSaldo: TCurrencyField
      FieldName = 'vlUltimoSaldo'
    end
    object cdsRodapevlSaldoAtual: TCurrencyField
      FieldName = 'vlSaldoAtual'
    end
  end
  object dsRodape: TDataSource [22]
    DataSet = cdsRodape
    Left = 645
    Top = 368
  end
  object FindCaixa: TCFind [23]
    SelectClause.Strings = (
      'SELECT  idCaixa, descCaixa FROM Caixa')
    JoinClause.Strings = (
      'WHERE StCaixa = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descCaixa')
    FindField = 'descCaixa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCaixa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 581
    Top = 368
  end
  object dspRelatorio: TDataSetProvider [24]
    DataSet = dmPadrao.sdsRelatorio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 680
    Top = 272
  end
  object cdsRelatorio: TClientDataSet [25]
    Aggregates = <>
    CommandText = 
      'EXEC spRelExtratoCaixa 1, 1, 1, '#39'01/01/2011'#39', '#39'18/09/2011'#39', '#39'N'#39',' +
      ' '#39'N'#39
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 712
    Top = 272
  end
  object frxRel: TfrxReport [26]
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 41144.041907974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 712
    Top = 304
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'frxDataset'
      end
      item
        DataSet = dmPadrao.frxEmpresaContabil
        DataSetName = 'frxEmpresaContabil'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 147.222084200000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Line3: TfrxLineView
          Left = 27.279530000000000000
          Top = 126.838590000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Left = 23.500000000000000000
          Top = 4.688929999999999000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          DataField = 'imgLogo'
          DataSet = dmPadrao.frxEmpresaContabil
          DataSetName = 'frxEmpresaContabil'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 613.445270000000000000
          Top = 4.602350000000001000
          Width = 145.283550000000000000
          Height = 117.165430000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Movimento '
            'de'
            'Caixa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 609.445270000000000000
          Top = 4.688929999999999000
          Height = 120.944960000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 27.212598430000000000
          Top = 143.602350000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          Left = 28.500000000000000000
          Top = 129.102350000000000000
          Width = 34.854360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Caixa :')
          ParentFont = False
          VAlign = vaCenter
        end
        object LookCaixa: TfrxMemoView
          Left = 64.000000000000000000
          Top = 129.102350000000000000
          Width = 193.854360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 261.500000000000000000
          Top = 129.102350000000000000
          Width = 57.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo de :')
          ParentFont = False
          VAlign = vaCenter
        end
        object DBEdtInicial: TfrxMemoView
          Left = 319.500000000000000000
          Top = 129.102350000000000000
          Width = 59.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 380.000000000000000000
          Top = 129.102350000000000000
          Width = 20.854360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'at'#233':')
          ParentFont = False
          VAlign = vaCenter
        end
        object DBEdtFinal: TfrxMemoView
          Left = 401.500000000000000000
          Top = 129.102350000000000000
          Width = 59.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 496.000000000000000000
          Top = 129.102350000000000000
          Width = 96.854360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Consolida Empresa?')
          ParentFont = False
          VAlign = vaCenter
        end
        object DBCKconsolidaemp: TfrxMemoView
          Left = 594.500000000000000000
          Top = 129.102350000000000000
          Width = 13.228346460000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 641.500000000000000000
          Top = 129.102350000000000000
          Width = 79.354360000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Consolida Filial?')
          ParentFont = False
          VAlign = vaCenter
        end
        object DBCKconsolidafilial: TfrxMemoView
          Left = 722.500000000000000000
          Top = 129.102350000000000000
          Width = 13.228346460000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object lblEmpresa: TfrxMemoView
          Left = 185.196970000000000000
          Top = 5.779530000000001000
          Width = 419.527830000000000000
          Height = 18.897637800000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxEmpresaContabil."descEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 185.315090000000000000
          Top = 27.574883700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CNPJ/CPF: [(<frxEmpresaContabil."idCnpjCpf">)]  IE: [(<frxEmpres' +
              'aContabil."idInscEstadual">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 185.315090000000000000
          Top = 47.252063699999990000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxEmpresaContabil."endereco">)] - [(<frxEmpresaContabil."com' +
              'plemento">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 185.315090000000000000
          Top = 67.811123700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CEP: [(<frxEmpresaContabil."cep">)]  -  [(<frxEmpresaContabil."d' +
              'escCidade">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 185.315090000000000000
          Top = 87.488303700000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fone: [(<frxEmpresaContabil."fones">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795275590000000000
        Top = 226.771800000000000000
        Width = 793.701300000000000000
        Condition = 'frxDataset."idCaixa"'
        object Shape1: TfrxShapeView
          Left = 26.456692913385800000
          Width = 733.228346460000000000
          Height = 18.897635350000000000
          Fill.BackColor = 15263976
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Left = 75.031540000000000000
          Top = 0.220470000000006000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idCaixa"] - [frxDataset."descCaixa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 26.456692910000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Caixa :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 26.456692910000000000
          Top = 18.897650000000000000
          Width = 733.228346460000000000
          Height = 18.897635350000000000
          Fill.BackColor = 14803425
          Frame.Color = 15790320
        end
        object Memo6: TfrxMemoView
          Left = 28.456692910000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data da Mov.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 246.828469700000000000
          Top = 18.897650000000000000
          Width = 283.615931200000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desc. Movimenta'#231#227'o ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 535.016080000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Origem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 615.783083900000000000
          Top = 18.897650000000000000
          Width = 54.878775600000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 677.094930000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 93.385900000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Raz'#227'o Social')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 321.260050000000000000
        Width = 793.701300000000000000
        object Shape3: TfrxShapeView
          Left = 26.456692913385800000
          Width = 733.228346460000000000
          Height = 18.897635350000000000
          Fill.BackColor = clMoneyGreen
          Frame.Color = 15790320
        end
        object MemSaldo: TfrxMemoView
          Left = 512.472790000000000000
          Top = 1.000000000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Dispon'#237'vel')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemSaldoTotal: TfrxMemoView
          Left = 622.417750000000000000
          Top = 1.000000000000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$  [(<frxDataset."SaldoDisponivel">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 12.618120000000000000
        Top = 287.244280000000000000
        Width = 793.701300000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 26.456692910000000000
          Top = 0.377952755905539600
          Width = 52.913420000000000000
          Height = 11.338582677165400000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."dtMovCaixa"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 247.544958750000000000
          Top = 0.377952760000027800
          Width = 283.946447030000000000
          Height = 11.338582680000000000
          DataField = 'descMovCaixa'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descMovCaixa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          Left = 598.042554420000000000
          Top = 0.377952760000027800
          Width = 79.382718100000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlMovCaixa"] [frxDataset."tpMovCaixa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 682.228365980000000000
          Top = 0.377952760000027800
          Width = 75.590600000000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."Saldo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 534.244445980000000000
          Top = 0.377952760000027800
          Width = 60.963818900000000000
          Height = 11.338582680000000000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."descMovOrigem">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 92.606370000000000000
          Top = 0.377952755905539600
          Width = 147.893008900000000000
          Height = 11.338582677165400000
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<frxDataset."descAbreviada">)]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 66.811070000000000000
        Top = 400.630180000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          Left = 316.157700000000000000
          Top = 7.181102362204684000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nilus Report ')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 26.456692910000000000
          Top = 7.181102362204684000
          Width = 275.905690000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nilus Solu'#231#245'es para o Agroneg'#243'cio Ltda.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo17: TfrxMemoView
          Left = 618.583180000000000000
          Top = 7.181102362204684000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<Page>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Left = 26.456692910000000000
          Top = 3.401359999999954000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo58: TfrxMemoView
          Left = 454.000000000000000000
          Top = 7.181102359999954000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Date>)] - [(<Time>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
  object frxDataset: TfrxDBDataset [27]
    UserName = 'frxDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idCaixa=idCaixa'
      'descCaixa=descCaixa'
      'dtMovCaixa=dtMovCaixa'
      'descMovCaixa=descMovCaixa'
      'descMovFinanceira=descMovFinanceira'
      'descAbreviada=descAbreviada'
      'vlMovCaixa=vlMovCaixa'
      'Saldo=Saldo'
      'tpMovCaixa=tpMovCaixa'
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'descCadEmpresa=descCadEmpresa'
      'SaldoDisponivel=SaldoDisponivel'
      'descMovOrigem=descMovOrigem')
    OpenDataSource = False
    DataSet = cdsRelatorio
    BCDToCurrency = False
    Left = 744
    Top = 304
  end
  object frxJPEGExport1: TfrxJPEGExport [28]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 680
    Top = 336
  end
  object frxHTMLExport1: TfrxHTMLExport [29]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 680
    Top = 368
  end
  inherited AbreArq: TOpenTextFileDialog
    Left = 600
    Top = 128
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 712
    Top = 336
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 744
    Top = 336
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 745
    Top = 400
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 776
    Top = 336
  end
end
