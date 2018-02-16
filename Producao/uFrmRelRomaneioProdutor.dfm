inherited FrmRelRomaneioProdutor: TFrmRelRomaneioProdutor
  Caption = 'Listagem de Romaneios por produtor'
  ClientHeight = 576
  ClientWidth = 1196
  ShowHint = True
  ExplicitWidth = 1212
  ExplicitHeight = 615
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel3: TBevel
    Width = 1196
    ExplicitWidth = 948
  end
  inherited Bevel1: TBevel
    Top = 538
    Width = 1196
    ExplicitTop = 538
    ExplicitWidth = 948
  end
  inherited Bevel5: TBevel
    Top = 113
    Width = 1196
    ExplicitTop = 134
    ExplicitWidth = 948
  end
  inherited PanBotoes: TCPanelGradient
    Top = 542
    Width = 1196
    Visible = False
    ExplicitTop = 542
    ExplicitWidth = 1196
  end
  object PanCliente: TCPanelGradient [9]
    Left = 0
    Top = 28
    Width = 1196
    Height = 85
    Align = alTop
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
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 1194
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 92
      ExplicitWidth = 573
    end
    object CLabel7: TCLabel
      Left = 22
      Top = 11
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Motorista'
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
      Left = 732
      Top = 11
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Safra'
    end
    object CLabel11: TCLabel
      Left = 29
      Top = 36
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto'
    end
    object lblCliFor: TCLabel
      Left = 377
      Top = 36
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arm./Local'
    end
    object CLabel1: TCLabel
      Left = 732
      Top = 36
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
    end
    object CLabel13: TCLabel
      Left = 25
      Top = 61
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produtor'
    end
    object CLabel19: TCLabel
      Left = 443
      Top = 61
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Opera'#231#227'o'
    end
    object DBEidMotorista: TCDBEdit
      Left = 73
      Top = 8
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idMotorista'
      DataSource = dsPadrao
      TabOrder = 0
      Find = dmFind.FindFornecedor
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescMotorista: TCLookUp
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
        'idMotorista')
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
      Left = 764
      Top = 8
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
      Left = 816
      Top = 8
      Width = 258
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idSafra')
      LookUpKey.Strings = (
        'idSafra')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'Safra'
      ReturnField = 'descSafra'
    end
    object DBEidProduto: TCDBEdit
      Left = 73
      Top = 33
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProduto'
      DataSource = dsPadrao
      TabOrder = 6
      Find = dmFind.FindProduto
      AcaoCad = frmPrincipal.actCadProduto
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProduto: TCLookUp
      Left = 125
      Top = 33
      Width = 246
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idProduto')
      LookUpKey.Strings = (
        'idProduto')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Produto'
      ReturnField = 'descProduto'
    end
    object DBEidArmazem: TCDBEdit
      Left = 434
      Top = 33
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idArmazem'
      DataSource = dsPadrao
      TabOrder = 8
      Find = dmFind.FindFornecedor
      AcaoCad = frmPrincipal.actCadCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookArmazem: TCLookUp
      Left = 486
      Top = 33
      Width = 240
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
      Key.Strings = (
        'idArmazem')
      LookUpKey.Strings = (
        'idCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descCadCliente'
    end
    object LookdescCadCliente: TCLookUp
      Left = 823
      Top = 33
      Width = 251
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 11
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
    object DBEidCliente: TCDBEdit
      Left = 771
      Top = 33
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 10
      Find = dmFind.FindFornecedor
      AcaoCad = frmPrincipal.actCadCliente
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidProdutor: TCDBEdit
      Left = 73
      Top = 58
      Width = 46
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idProdutor'
      DataSource = dsPadrao
      TabOrder = 12
      Find = dmFind.FindFornecedor
      AcaoCad = frmPrincipal.actCadSafra
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookProdutor: TCLookUp
      Left = 125
      Top = 58
      Width = 312
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 13
      Key.Strings = (
        'idProdutor')
      LookUpKey.Strings = (
        'idCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descCadCliente'
    end
    object DBEidArmOperacao: TCDBEdit
      Left = 496
      Top = 58
      Width = 53
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idArmOperacao'
      DataSource = dsPadrao
      TabOrder = 14
      Find = dmFind.FindArmOperacao
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookOperacao: TCLookUp
      Left = 555
      Top = 58
      Width = 204
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 15
      Key.Strings = (
        'idArmOperacao')
      LookUpKey.Strings = (
        'idArmOperacao')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ArmOperacao'
      ReturnField = 'descArmOperacao'
    end
    object DBRGcomNF: TCDBRadioGroup
      Left = 765
      Top = 51
      Width = 309
      Height = 31
      Color = 13358552
      Columns = 3
      DataField = 'comNF'
      DataSource = dsPadrao
      Items.Strings = (
        'Com Nota'
        'Com Romaneio'
        'Todos')
      ParentBackground = False
      ParentColor = False
      TabOrder = 16
      TabStop = True
      Values.Strings = (
        'N'
        'R'
        'T')
    end
  end
  object PanRomaneio: TCPanelGradient [10]
    Left = 0
    Top = 116
    Width = 1196
    Height = 37
    Align = alTop
    TabOrder = 6
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
      Top = 9
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Rom de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel4: TCLabel
      Left = 115
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
    object CLabel5: TCLabel
      Left = 203
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
      Left = 328
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
    object CLabel14: TCLabel
      Left = 689
      Top = 9
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nr. Ori de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel12: TCLabel
      Left = 828
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
    object CLabel10: TCLabel
      Left = 431
      Top = 9
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contrato de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel3: TCLabel
      Left = 581
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
    object CLabel15: TCLabel
      Left = 936
      Top = 9
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nota de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel16: TCLabel
      Left = 1064
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
    object DBEidRomaneioIni: TCDBEdit
      Left = 54
      Top = 7
      Width = 55
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idRomaneioIni'
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
    object DBEidRomaneioFim: TCDBEdit
      Left = 137
      Top = 7
      Width = 60
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idRomaneioFim'
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
      Left = 247
      Top = 7
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
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 350
      Top = 7
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
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidContratoFim: TCDBEdit
      Left = 603
      Top = 7
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEnrOrigIni: TCDBEdit
      Left = 742
      Top = 7
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrOrigIni'
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
    object DBEnrOrigFim: TCDBEdit
      Left = 850
      Top = 7
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrOrigFim'
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
    object DBEidContratoIni: TCDBEdit
      Left = 495
      Top = 7
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idContratoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEidNfIni: TCDBEdit
      Left = 980
      Top = 7
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idNfIni'
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
    object DBEidNfFim: TCDBEdit
      Left = 1086
      Top = 7
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idNfFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object CPanelGradient1: TCPanelGradient [11]
    Left = 0
    Top = 153
    Width = 1196
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PanBotoes'
    TabOrder = 7
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 13099746
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object BtnExecutar: TCBitBtn
      Tag = 1
      Left = 8
      Top = 0
      Width = 75
      Height = 24
      Caption = '&Pesquisar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00C2C2
        C2FF404040FF1E1E1EFF252525FF252525FF252525FF252525FF252525FF2525
        25FF252525FF252525FF1E1E1EFF353535FF8A8A8AFFFEFEFEFFFF00FF00C4C4
        C4FFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9
        F9FFF9F9F9FFF8F8F8FFCBCBCBFF434343FF505050FFB8B8B8FFFF00FF00C6C6
        C6FFFAFAFAFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9
        F9FFF9F9F9FFC9C9C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FFFF00FF00C6C6
        C6FFF8F8F8FFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7
        F7FFC6C6C6FF444444FF767676FF5C5C5CFF979797FFFF00FF00FF00FF00C6C6
        C6FFF7F7F7FFF6F6F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACA
        CAFF464646FF7C7C7CFF5F5F5FFFD0D0D0FFB1B1B1FFFF00FF00FF00FF00C6C6
        C6FFE7E7E7FFABABABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D
        5DFF838383FF626262FFD2D2D2FFEBEBEBFFB1B1B1FFFF00FF00FF00FF00B4B4
        B4FF989898FFC3C3C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B
        9BFF707070FFD1D1D1FFEBEBEBFFE2E2E2FFB1B1B1FFFF00FF00F6F6F6FF8989
        89FFCECECEFFE7E7E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF8989
        89FFD1D1D1FFE9E9E9FFE1E1E1FFD3D3D3FFB1B1B1FFFF00FF00B8B8B8FF9D9D
        9DFFE1E1E1FFE9E9E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADAD
        ADFFA3A3A3FFE2E2E2FFD5D5D5FFC6C6C6FFB6B6B6FFFF00FF00A9A9A9FFAEAE
        AEFFDEDEDEFFE2E2E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1
        C1FF868686FFD3D3D3FFC6C6C6FFAFAFAFFFBBBBBBFFFF00FF00ACACACFFB3B3
        B3FFD9D9D9FFDDDDDDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBC
        BCFF7B7B7BFFB0B0B0FFAFAFAFFF959595FFC1C1C1FFFF00FF00B6B6B6FFB1B1
        B1FFD6D6D6FFE0E0E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B
        8BFF606060FF7D7D7DFF949494FFA2A2A2FFD8D8D8FFFF00FF00BFBFBFFFB1B1
        B1FFDBDBDBFFE3E3E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF7878
        78FFC1C1C1FFFBFBFBFFDFDFDFFFAEAEAEFFEBEBEBFFFF00FF00E1E1E1FFA4A4
        A4FFD9D9D9FFE7E7E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF8484
        84FFF7F7F7FFDFDFDFFFABABABFFE0E0E0FFFF00FF00FF00FF00FF00FF00B5B5
        B5FFA1A1A1FFCCCCCCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBB
        BBFFDFDFDFFFAFAFAFFFE1E1E1FFFF00FF00FF00FF00FF00FF00FF00FF00DADA
        DAFFB7B7B7FF9E9E9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9
        B9FFC6C6C6FFE7E7E7FFFF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
      OnClick = BtnExecutarClick
    end
    object CBitBtn1: TCBitBtn
      Left = 1003
      Top = 0
      Width = 75
      Height = 24
      Action = actFechar
      Caption = '&Fechar'
      TabOrder = 1
    end
    object BtnImprimir: TCBitBtn
      Tag = 1
      Left = 525
      Top = 0
      Width = 75
      Height = 24
      Caption = '&Imprimir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
        A9FFD1BDA9FFD1BDA9FF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
        FDFFFFFEFDFFD1BDA9FF00000000000000000000000000000000909090FF9090
        90FF909090FF3B3B3BFFC3B09EFFEBE7E3FFD5C8BBFFD5C8BBFFD5C8BBFFD5C8
        BBFFEBE7E3FFC3B09EFF3B3B3BFF909090FF909090FF909090FFA6A4A2FFD7D7
        D7FFD7D7D7FF474747FF8D8072FFA7A098FFA7A098FFA7A098FFA7A098FFA7A0
        98FFA7A098FF8D8072FF474747FFD7D7D7FFD7D7D7FFA6A4A2FFC1BDB8FF9090
        90FF909090FF454545FF454545FF454545FF454545FF454545FF454545FF4545
        45FF454545FF454545FF454545FFECEAE9FF50B040FFC1BDB8FFB8B4AFFFD6D2
        CFFFD6D2CFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
        DFFFDFDFDFFFDFDFDFFFDFDFDFFFD6D2CFFF909090FFB8B4AFFFAFABA6FF9090
        90FFCEC9C4FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
        BEFFBEBEBEFFBEBEBEFFBEBEBEFFCEC9C4FFCEC9C4FFAFABA6FFA7A39DFFC7C1
        BCFFC7C1BCFF707070FF707070FF707070FF707070FF707070FF707070FF7070
        70FF707070FF707070FF707070FFC7C1BCFFC7C1BCFFA7A39DFFA09B95FFC2BB
        B5FFC2BBB5FF464646FF464646FF464646FF464646FF464646FF464646FF4646
        46FF464646FF464646FF464646FFC2BBB5FFC2BBB5FFA09B95FF99948EFFBEB7
        B1FFBEB7B1FF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E
        2EFF2E2E2EFF2E2E2EFF2E2E2EFFBEB7B1FFBEB7B1FF99948EFF938E88FFBCB5
        AFFFBCB5AFFF252525FF252525FF252525FF252525FF252525FF252525FF2525
        25FF252525FF252525FF252525FFBCB5AFFFBCB5AFFF938E88FF8F8A83FF8F8A
        83FF8F8A83FF8F8A83FF90857BFFB7AA9EFFDECFC1FFDECFC1FFDECFC1FFDECF
        C1FFB7AA9EFF90857BFF8F8A83FF8F8A83FF8F8A83FF8F8A83FF000000000000
        0000000000000000000090857BFFBFB6ADFFEEE6DFFFEEE6DFFFEEE6DFFFEEE6
        DFFFBFB6ADFF90857BFF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6
        F3FFF9F6F3FFD1BDA9FF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFD1BDA9FF00000000000000000000000000000000000000000000
        00000000000000000000D1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BDA9FFD1BD
        A9FFD1BDA9FFD1BDA9FF00000000000000000000000000000000}
      TabOrder = 2
      OnClick = BtnImprimirClick
    end
  end
  object cxGrid: TcxGrid [12]
    Left = 0
    Top = 183
    Width = 1196
    Height = 355
    Hint = 'Clique com o bot'#227'o direito do mouse para exportar para Excel'
    Align = alClient
    PopupMenu = PopupMenu
    TabOrder = 8
    object DBView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRelatorio
      DataController.KeyFieldNames = 'idRomaneio'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlTotal
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlIcmsFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlIcms
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlLiquido
        end
        item
          Format = ' ,0.00;- ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewqtPesoLiquido
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          Column = DBViewvlContribSocial
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'qtPesoLiquido'
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlTotal
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlIcmsFrete
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlIcms
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlLiquido
        end
        item
          Format = ' ,0.00;- ,0.00'
          Kind = skSum
          Column = DBViewqtPesoLiquido
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlContribSocial
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'idEmpresa'
        Width = 22
      end
      object DBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'Filial'
        DataBinding.FieldName = 'idCadEmpresa'
        Width = 30
      end
      object DBViewidRomaneio: TcxGridDBColumn
        Caption = 'Romaneio'
        DataBinding.FieldName = 'idRomaneio'
        Width = 31
      end
      object DBViewidProdutor: TcxGridDBColumn
        Caption = 'Produtor'
        DataBinding.FieldName = 'idProdutor'
        Visible = False
        VisibleForCustomization = False
      end
      object DBViewdescCadCliente: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'descCadCliente'
        Width = 200
      end
      object DBViewdtRomaneio: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'dtRomaneio'
        Width = 98
      end
      object DBViewidArmazem: TcxGridDBColumn
        Caption = 'Armazem'
        DataBinding.FieldName = 'idArmazem'
        Width = 30
      end
      object DBViewdescArmazem: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descArmazem'
        Width = 229
      end
      object DBViewdescMotorista: TcxGridDBColumn
        Caption = 'Motorista'
        DataBinding.FieldName = 'descMotorista'
        Width = 183
      end
      object DBViewidContratoVenda: TcxGridDBColumn
        Caption = 'Contrato Venda'
        DataBinding.FieldName = 'idContratoVenda'
        Width = 90
      end
      object DBViewidRomaneioArm: TcxGridDBColumn
        Caption = 'Romaneio'
        DataBinding.FieldName = 'idRomaneioArm'
        Width = 49
      end
      object DBViewidNF: TcxGridDBColumn
        Caption = 'Nr. Nota'
        DataBinding.FieldName = 'idNF'
        MinWidth = 50
      end
      object DBViewqtPesoLiquido: TcxGridDBColumn
        Caption = 'Peso'
        DataBinding.FieldName = 'qtPesoLiquido'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Width = 72
      end
      object DBViewdescCadProdutor: TcxGridDBColumn
        Caption = 'Produtor'
        DataBinding.FieldName = 'descCadProdutor'
        Visible = False
        GroupIndex = 1
      end
      object DBViewvlLiquido: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'vlLiquido'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 59
      end
      object DBViewvlIcms: TcxGridDBColumn
        Caption = 'Vlr. ICMS'
        DataBinding.FieldName = 'vlIcms'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 58
      end
      object DBViewvlIcmsFrete: TcxGridDBColumn
        Caption = 'Vlr. ICMS Frete'
        DataBinding.FieldName = 'vlIcmsFrete'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 58
      end
      object DBViewvlContribSocial: TcxGridDBColumn
        Caption = 'Vlr. Contrib. Social'
        DataBinding.FieldName = 'vlContribSocial'
        Width = 80
      end
      object DBViewvlTotal: TcxGridDBColumn
        Caption = 'Vlr. Total'
        DataBinding.FieldName = 'vlTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 58
      end
      object DBViewidContratoFrete: TcxGridDBColumn
        Caption = 'Contrato Frete'
        DataBinding.FieldName = 'idContratoFrete'
        Width = 30
      end
      object DBViewvlFrete: TcxGridDBColumn
        Caption = 'Vlr. Frete'
        DataBinding.FieldName = 'vlFrete'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 58
      end
      object DBViewvlFreterom: TcxGridDBColumn
        DataBinding.FieldName = 'vlFreterom'
        Visible = False
      end
      object DBViewtpRomaneio: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tpRomaneio'
        Visible = False
        GroupIndex = 0
      end
    end
    object Nivel1: TcxGridLevel
      GridView = DBView
      MaxDetailHeight = 200
    end
  end
  object DBCKconsolidaemp: TCDBCheckBox [13]
    Left = 540
    Top = 6
    Width = 116
    Height = 17
    Caption = 'Consolida Empresa?'
    Color = clBtnFace
    DataField = 'consolidaemp'
    DataSource = dsPadrao
    ParentColor = False
    TabOrder = 9
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCKconsolidafilial: TCDBCheckBox [14]
    Left = 662
    Top = 6
    Width = 64
    Height = 17
    Caption = 'Filiais?'
    DataField = 'consolidafilial'
    DataSource = dsPadrao
    TabOrder = 10
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010107000900940010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000008E8E8E008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFF8F98A1FFBBBDBEFF000000000000000000000000000000000000
      000000000000000000000000000000000000BAAEABFFCDCDCDFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00CBCBCB00BABA
      BA00A5A5A500A2A2A20094949400858585007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF3F5B78FF517DAAFF406892FFBDBFC0FF0000000000000000000000000000
      00000000000000000000AEC7CCFF6F807CFFDC5B35FFA53915FFC4C4C4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00D8D8D800D4D4
      D400CFCFCF00C9C9C900C5C5C500BEBEBE00ABABAB00A1A1A100949494008787
      87009595950000000000000000000000000000000000F4F5F5FF000000000000
      000000000000000000000000000000000000000000000000000000000000445F
      7DFF4F7BA8FF86A4C1FFADC3D9FF929BA4FF0000000000000000000000000000
      000000000000ABC1C6FF849B9AFF879990FFAD5639FFDC6A49FFA93C1AFFC4C4
      C4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DCDCDC00D8D8
      D800D3D3D300CDCDCD00C8C8C800C2C2C200BDBDBD00B9B9B900B6B6B600B8B8
      B800B1B1B1009E9E9E008E8E8E0000000000BAADACFFA6422BFF844D40FF856F
      6EFFACACACFFE6E6E6FFFEFEFEFFF9F9F9FF00000000E6E5E5FF44546AFF4E7C
      AAFF7F9EBCFFC8D6E5FF667D95FFFDFDFDFF0000000000000000000000000000
      000000000000679EA2FFB73A14FFD67A5FFFE88363FFE68566FFD6633EFFAE40
      1DFFC4C4C4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DBDB
      DB00D7D7D700D2D2D200CDCDCD00C7C7C700C2C2C200B2B2B200B9B9B900B6B6
      B600B6B6B600AEAEAE008E8E8E0000000000B09E9CFFD0724EFFD7713EFFDA72
      3EFFD06132FFA76D63FFB0A2A3FFCAACA9FFB39FA0FF9D8F90FFC0AEADFF7287
      9EFFC7D7E8FF6C819AFFFEFEFEFF00000000000000000000000000000000AEC7
      CCFF717C78FFB58871FFB0998AFFE27E60FFE48367FFE57F5FFFD26846FFF7AD
      94FFAB3916FFC4C4C4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DDDD
      DD00DADADA00D7D7D700D2D2D200CCCCCC00C7C7C700686868009B9B9B00B8B8
      B800B6B6B600B1B1B1008E8E8E0000000000AD9694FFD38267FFD17444FFCF68
      35FFCFA99FFFDFBBAFFFF0C6B3FFFADED0FFF1C7B4FFDAAC9FFFAD9A9CFFE0D9
      D6FF727F8FFFFEFEFEFF00000000000000000000000000000000ABC1C6FF849B
      9AFF879A90FFAE5337FFEC8669FFE4886EFFE48161FFE48163FFE57E5CFFD686
      63FFFFC2A9FFAD3C19FFC7C7C7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE00DDDD
      DD00DDDDDD00DBDBDB00D6D6D600D1D1D100CBCBCB00BEBEBE0068686800BCBC
      BC00B8B8B800B4B4B4008E8E8E0000000000AB8F8CFFE5A187FFCF7D59FFD59D
      83FFDCB7AAFFF1C7B0FFF4D7C5FFF4DAC9FFF4D7C7FFF2CBB3FFD9A89AFFA186
      7FFFE7D6D4FF0000000000000000000000000000000000000000679EA3FFB73B
      16FFD67D66FFE8896DFFE48870FFE58365FFE5896DFFE6876AFFCF6341FFF5C4
      A0FFFFEDD2FFFA8463FF9D8888FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00D9D9D900D5D5D500D0D0D000C9C9C900787878006868
      6800BBBBBB00B5B5B5008E8E8E0000000000A68985FFF3B89EFFCD8269FFDFC7
      C2FFE29F7EFFEFC4ABFFEFC6AEFFEFC8B2FFF0C7B0FFEFC2A8FFE5A484FFB6A0
      9FFFC27D66FF000000000000000000000000CAE2E6FF6B7773FFB58974FFB097
      87FFE28165FFE4886FFFE58569FFCF7E68FFD9876FFFD66B46FFFFD0AEFFFFEC
      D2FFFCA286FFA46D5DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00E0E0E000DDDD
      DD00DDDDDD009898980070707000D9D9D900D5D5D500D5D5D5007C7C7C006868
      6800BFBFBF00B9B9B9008E8E8E0000000000AD8883FFF3C2AAFFD3907AFFE0C8
      BFFFEEC1AAFFF3D4C2FFF3D6C5FFEDBDA3FFEBB699FFEBB393FFE7A17CFFC5B2
      B3FFBF673BFFF8F2F2FF0000000000000000D2D7D4FF7F9289FFAD5033FFEB86
      6AFFE48D75FFE79882FFECAB98FFCC9489FFB96C5AFF71A1C4FF7892A8FFF99C
      79FFA46C5DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00F6F6F600EDED
      ED00D2D2D2007575750075757500D6D6D600D5D5D500707070007E7E7E006868
      6800C3C3C300BDBDBD008E8E8E0000000000AA8580FFF7CDB5FFDB9F8AFFDCC7
      C6FFEBBFAAFFF4D8C7FFF3D8C8FFF4D8C8FFEDBEA2FFEDBB9EFFDF916CFFC1B2
      B2FFD78860FFD7A79BFF0000000000000000E3A794FFEE9D87FFF2B9ABFFEEB9
      ACFFEFB9A9FFEFBAABFFF2BFB1FFCE775DFF76BEE5FF08B8FFFF1F8FFFFF4D50
      69FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00949494009494
      9400686868008A8A8A006C6C6C006C6C6C007070700088888800686868007070
      7000C8C8C800C1C1C1008E8E8E0000000000B18781FFF8D5C1FFF1C7B2FFDDB2
      A4FFDFBDB1FFF8E0D3FFF6E0D3FFF6E0D3FFF7E2D6FFF9E4D8FFDCB3A7FFC9A7
      9CFFE9BBA4FFD5987FFFFDFCFCFF00000000F6F4F3FFDE8469FFEFC0B2FFF3CD
      C3FFF3CCC3FFF5D3C9FFD58167FFFFD9C7FF1BEAFFFF02CAFFFF05B3FEFF2997
      FFFF647D96FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00C1C1C1009191
      910081818100B2B2B2008F8F8F007E7E7E00727272007575750068686800D3D3
      D300CDCDCD00C5C5C5008E8E8E0000000000B78B85FFFADDCBFFF3CFBDFFF1C7
      B1FFE4CEC7FFDFBEB4FFEECBBAFFF6DED3FFEDCABAFFDFBDB3FFDCD0CEFFEBCA
      B7FFF2D1C0FFF0CBB8FFE8D1CDFF0000000000000000C18D7EFFFAD9D2FFF3D2
      C7FFFAE9E6FFD58871FFF4DCCDFFFFFFFCFFBEBAAAFF17FAFFFF05CAFFFF05B3
      FEFF2D98FFFF647D96FFFCFCFCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00DEDEDE006868
      6800A2A2A200AEAEAE0091919100686868006868680068686800DBDBDB00D7D7
      D700D2D2D200CBCBCB008E8E8E0000000000BA9089FFFCE6D6FFF4D8C8FFF3D2
      C0FFF2C9B4FFE9C7B9FFE3CFCAFFDFC3BBFFE1CBC6FFD9A999FFD6927BFFB47D
      74FFCEADA7FFD8ABA0FFC08075FF0000000000000000FAFAFAFFE9987FFFFFFF
      FFFFDC8265FFF7ECE8FFFFFFFFFFFDAF92FFA86660FFBCD4D6FF20FFFFFF05C9
      FFFF05B3FEFF2D98FFFF5C748EFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00E1E1E100B1B1
      B100686868007D7D7D007A7A7A0068686800A5A5A500E5E5E500E1E1E100D6D6
      D600DBDBDB00CBCBCB008E8E8E0000000000C0918CFFFFEEE1FFF8E0D1FFF6DA
      CAFFF4D4C4FFF7D2BFFFF9C9B2FFF6C4ABFFF4BEA3FFF0B89BFFF4B698FF8758
      51FF000000000000000000000000000000000000000000000000C39E93FFE294
      7BFFBFA2A0FFEF9775FFFCB399FFA2695DFF0000000000000000BCD3D5FF1DFF
      FFFF05C9FFFF02B4FFFF40B0FFFF959FA6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00CECECE00DEDE
      DE00CBCBCB00767676007D7D7D0068686800686868008B8B8B008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E0000000000B09C9BFFFFF0E4FFFFEFE1FFFDE9
      DAFFFFE5D5FFAE7B75FFB8ABABFFAD9795FFA98984FFAD8078FFBF7D70FF9976
      73FF00000000000000000000000000000000000000000000000000000000F3F2
      F2FF00000000D2C1BCFFBC9081FF00000000000000000000000000000000C2D9
      DBFF0FFAFFFF1FB6E5FF4C7A90FFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFBFAAA9FFC0A6A3FFCBA8
      A3FFC89D97FFF5F4F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6FDFFFF85BFE2FFF4F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000E8E8E8FFBFBFBFFFF4F4
      F4FF00000000F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBCBCFFB6B6B6FF9898
      98FFA5A5A5FFA2A2A2FF00000000000000000000000000000000000000000000
      000049455100978683009F7F7700643D3300A97D7300A97D7300643D33000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFEAEAEAFFE1E1E0FF9F9E9EFF7F7F
      7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3E4FFC5C5C5FFB7B7
      B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFF0000000000000000000000004945
      51007A717100DED3D300F7E6E700FCE8E5002B64D1003D79E70070616100B1AC
      AE00A47D73005A484B0000000000000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000000000FFBFBFC0FFAFABA8FFB1AB
      A9FFB1B1B2FFB1B0B0FFB1B1B0FFB1B0B1FFB1B0B1FFB1B0B0FFB1B1B0FFB0B0
      B0FFADADAEFFB8B8B8FF000000FF000000FFE9E9E9FF939392FFC1C1C0FF9E9E
      9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABCB1FFCFCAC9FFD8D8
      D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FF0000000000000000494551007D74
      74006C646B00E5DADE00FAE7E600FDF0F0002961CC004C7CE10084625F00F7E6
      E700F9EAEC005A484B0000000000000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B0000000000000000FFB8B7B6FFF0E1D6FFF0E1
      D6FFECE3DDFFECE3DCFFEDE5DEFFEEE6DFFFEEE6DFFFEEE6E0FFEEE6E1FFEDE6
      E1FFEFE8E3FFE9E3E0FF000000FF000000FFE7E7E7FF9E9E9FFFA1A2A1FFC5C8
      C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1B3FFC7C6C6FFC0C0
      C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FF0000000049455100887F7E007D74
      74006A5F6200E0D5D600FAE7E600FDF0F0002455B4004C78D4006A5F6200F7E6
      E700FAEAEB005A484B0000000000000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B0000000000000000FFBABABAFFE4DDD8FFE5DB
      D5FFE3E3E5FFE2E1E2FFE3E2E1FFE3E2E2FFE3E2E2FFE3E2E2FFE2E2E1FFE2E1
      E0FFE3E2E2FFDFDFDFFF000000FF000000FFEEEEEEFFB2B2B1FF7E7F7EFFDADB
      DCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0C5FFC0BBB8FFB1B2
      B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFF0000000049455100887F7E007B6D
      6D0041435000EADEE200FAEDEF00FAEBEE001F4284001F3E780049455100F7E6
      E700FAEBEE005A484B0000000000000000000000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B0000000000000000FFB9BABAFFE8E2DCFFE7E0
      DAFFE4E4E3FFE5E1DEFFE6E6E7FFE6E6E6FFE6E7E7FFE6E7E7FFE5E6E5FFE5E5
      E5FFE6E6E6FFE2E2E2FF000000FF000000FFF8F8F8FFCACAC9FF7B7C7BFFC6C6
      C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9CEFFDBBAABFFCFC1
      B8FFD6DEE1FFB87458FFF9F6F5FF0000000000000000494551007D7474006A5F
      62004143500036292F00FBEEEF00FEF0F800B0B1B20096858400F6E5E600FAEA
      EB00FDF0F1005A484B0000000000000000000000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B0000000000000000FFC6C6C6FFDFD6CFFFE5D8
      CDFFE0D6D0FFE4D6CDFFE5DBD5FFE4DBD4FFE8E8E8FFE8E8E8FFE7E7E7FFE6E6
      E6FFE7E7E7FFE3E3E3FF000000FF000000FFFDFDFDFFD9D9DAFF828382FFADAF
      ADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6CDFFE0BCA8FFD498
      7BFFD29A7EFFC66F49FFFDF9F8FF0000000000000000494551006C616500333D
      54001B3665002034580053474E00FDF2F300AE918C009ED8D30084625F00FEFD
      FD00FDF1F500948584001A315F00000000000000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B0000000000FEFEFEFFE0D7D0FFD7CAC2FFE8D7
      CAFFE6DCD6FFE5DCD6FFE4D6CCFFE7DAD0FFE6DDD7FFE8E5E2FFE9EAEAFFE8E8
      E8FFE9E9E9FFE5E5E5FF000000FF000000FF00000000D4D4D4FF9A9B9AFF9FA0
      9FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6CDFFE3BEADFFD29B
      7EFFD19172FFC86E46FFFCF9F8FF0000000000000000494551003D4251001934
      65001B3665001D3B6800243E6C00B1ACAE00887F7E009ED8D30084625F00FEFD
      FD0080777D001A315F0000000000000000000000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B0000000000FEFCFBFFDCCCC1FFE1D3C8FFE6D6
      CBFFE9E2DDFFE6E0DCFFE3D7CFFFE7DAD0FFE5D8CEFFE9E3E0FFEBEDEEFFEAEA
      EAFFEBEBEBFFE7E7E7FF000000FF000000FF00000000E2E2E2FFACACACFF9C9D
      9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDAD0FFE4BFADFFD59C
      7FFFCF9072FFC96E45FFFCF9F8FF00000000000000004446540019315D001D39
      67001D3866001D3B68001D3A68002E3B5600DBD2D200FEF8FC00FEFDFD004143
      50001A315F000000000000000000000000000000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B0000000000FBF5F0FFDDCDC1FFE4DBD6FFE4DB
      D2FFE6DCD4FFE6DBD3FFE9E1DBFFE9E7E5FFE4D9D0FFEAE0D9FFEDECECFFECEC
      EDFFEDEDEDFFE8E8E8FF000000FF000000FF00000000FAFAFAFFB3B3B3FFA6A7
      A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DED3FFE8C3B2FFDAA1
      83FFD49575FFC9734DFFFCF9F8FF00000000000000001D325C001B3665001D38
      6600223D6B00203D6C001E3C6A00203E760049455100D6D4D200050206001A31
      5F00000000000000000000000000000000000000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000F5F0ECFFE2D2C5FFE6DBD4FFE6D8
      D1FFE7DDD5FFE7DCD4FFEBE1DAFFEBE6E3FFE5D9D1FFEBE2DBFFEFEEEEFFEFEF
      F0FFEFEFEFFFE9E9E9FF000000FF000000FF0000000000000000E2E1E1FFDDDC
      DDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5AFFFB6A198FFAC81
      6EFFAE7457FFBF6641FFFDFAF8FF0000000000000000000000001A3565001B36
      65001D3B6800223D6B00244170002441700023416E00203458001A315F000000
      0000000000000000000000000000000000000000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCFBFAFFE7D8CDFFE3D5CBFFE8D9
      CEFFEEE8E2FFEBE7E4FFE7DBD3FFE9DCD2FFE8DBD0FFEEEAE6FFF2F3F4FFF4F4
      F4FFF5F5F5FFEDEDEDFF000000FF000000FF0000000000000000FEFEFEFFF4F4
      F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDDDDFFD3D5D4FFC2C6
      C7FFB0B5B6FF897D78FFC6C3C2FF000000000000000000000000000000001B36
      6500234075001E3C6A002441700025417300203E76001A315F00000000000000
      0000000000000000000000000000000000000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000000000FFCCC4BFFFE4DAD5FFEDDE
      D3FFEDE3DBFFECE3DBFFE8DAD2FFEDE0D8FFEFE9E5FFF0EFEDFFDADBDBFFD0D0
      D0FFE7E7E7FFEBEBEBFF000000FF000000FF000000000000000000000000FDFD
      FDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBCBCFFC9C8C8FFD1D1
      D1FFC6BEB9FFBEBCBBFFA5A5A5FF000000000000000000000000000000000000
      0000223D6B001E3C6A0024417000223D6B001A315F0000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B0000000000000000FFBDBEBFFFEDE7E2FFF2E9
      E3FFEAE1DCFFEBDFD6FFEFE9E6FFEEE7E2FFF7F9F9FFF9FAFAFFCFCECEFFCDCD
      CDFFCECECEFFE2E2E2FF000000FF000000FF000000000000000000000000FEFE
      FEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9D9FFD5D5D5FFD7D7
      D7FFB1ADABFFD1D0D1FFC9C9CAFF000000000000000000000000000000000000
      00000000000025407400203E76001A315F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000000000FFB7B7B7FFF3F2F2FFFAF9
      F8FFF5F5F5FFF6F3F2FFF9FAFBFFF9F9F9FFFCFCFCFFE9E9E9FFCFCFCFFFF4F4
      F4FFFAFAFAFFFEFEFEFF000000FF000000FF0000000000000000000000000000
      0000FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5D5FFD8D8D8FFE1E0
      E1FFF3F3F4FFF4F3F2FF00000000000000000000000000000000000000000000
      000000000000000000001A315F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      000000000000000000000000000000000000000000FFC5C5C5FFF4F4F3FFFEFC
      FAFFFCFDFDFFFCFDFDFFFBFBFCFFFDFDFEFFF6F6F6FFE5E5E5FFFBFBFBFFFEFE
      FEFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000FFFFFFFFF1F1F1FFF2F2F2FFFEFEFEFF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008FFFFFF1FF3F0000807FFFE0FC1F0000
      8007BFE0F80F000080010080F807000080010001E003000080010003C0010000
      80010007C00100008001000700030000800100030007000080010003000F0000
      8001000100030000800100018001000080010001800000008001000FC0C00000
      8001000FE9E00000C1FF03FFFFF10000FFFFFE7FFFFF8803F01FF07FFFFF0000
      E003C00180030000C003C001800300008003C001800300008003C00180030001
      8003C001800300018001C001000380018003C001000380018007C00100038001
      800FC0010003C001C01FC0010003C001E03FC0018003E001F07FC0018003E001
      F8FFF0018003F003FDFFFC7F800FFE1F00000000000000000000000000000000
      000000000000}
  end
  inherited cdsRelatorio: TClientDataSet
    CommandText = 
      'EXEC spRelRomaneioProdutor 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, N' +
      'ULL, '#39'001/2012'#39', '#39'001/2012'#39', 0, 0, 1, '#39'N'#39', '#39'S'#39', '#39'T'#39
    Left = 704
    Top = 272
    object cdsRelatorioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsRelatorioidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsRelatorioidArmazem: TIntegerField
      FieldName = 'idArmazem'
    end
    object cdsRelatoriodescArmazem: TStringField
      FieldName = 'descArmazem'
      Size = 80
    end
    object cdsRelatorioidRomaneio: TIntegerField
      FieldName = 'idRomaneio'
    end
    object cdsRelatoriodtRomaneio: TSQLTimeStampField
      FieldName = 'dtRomaneio'
    end
    object cdsRelatorioqtPesoLiquido: TFMTBCDField
      FieldName = 'qtPesoLiquido'
      Precision = 15
      Size = 3
    end
    object cdsRelatoriodescMotorista: TStringField
      FieldName = 'descMotorista'
      Size = 80
    end
    object cdsRelatorioidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Size = 30
    end
    object cdsRelatorioidRomaneioArm: TIntegerField
      FieldName = 'idRomaneioArm'
    end
    object cdsRelatorioidProdutor: TIntegerField
      FieldName = 'idProdutor'
    end
    object cdsRelatoriodescCadProdutor: TStringField
      FieldName = 'descCadProdutor'
      Size = 80
    end
    object cdsRelatoriovlLiquido: TFMTBCDField
      FieldName = 'vlLiquido'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlIcms: TFMTBCDField
      FieldName = 'vlIcms'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlIcmsFrete: TFMTBCDField
      FieldName = 'vlIcmsFrete'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlTotal: TFMTBCDField
      FieldName = 'vlTotal'
      Precision = 19
      Size = 4
    end
    object cdsRelatorioidContratoFrete: TIntegerField
      FieldName = 'idContratoFrete'
    end
    object cdsRelatoriovlFrete: TFMTBCDField
      FieldName = 'vlFrete'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriodescCadCliente: TStringField
      FieldName = 'descCadCliente'
      Size = 100
    end
    object cdsRelatoriovlContribSocial: TFMTBCDField
      FieldName = 'vlContribSocial'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriovlFreterom: TFMTBCDField
      FieldName = 'vlFreterom'
      Precision = 19
      Size = 4
    end
    object cdsRelatoriotpRomaneio: TStringField
      FieldName = 'tpRomaneio'
    end
    object cdsRelatorioidNF: TIntegerField
      FieldName = 'idNF'
    end
  end
  inherited frxDataset: TfrxDBDataset
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idArmazem=idArmazem'
      'descArmazem=descArmazem'
      'idRomaneio=idRomaneio'
      'dtRomaneio=dtRomaneio'
      'qtPesoLiquido=qtPesoLiquido'
      'descMotorista=descMotorista'
      'idContratoVenda=idContratoVenda'
      'idRomaneioArm=idRomaneioArm'
      'idProdutor=idProdutor'
      'descCadProdutor=descCadProdutor'
      'vlLiquido=vlLiquido'
      'vlIcms=vlIcms'
      'vlIcmsFrete=vlIcmsFrete'
      'vlTotal=vlTotal'
      'idContratoFrete=idContratoFrete'
      'vlFrete=vlFrete')
    Left = 536
    Top = 168
  end
  inherited dsPadrao: TDataSource
    Left = 568
    Top = 296
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 640
    Top = 320
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
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
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraoidArmazem: TIntegerField
      FieldName = 'idArmazem'
    end
    object cdsPadraoidMotorista: TIntegerField
      FieldName = 'idMotorista'
    end
    object cdsPadraoidRomaneioIni: TIntegerField
      FieldName = 'idRomaneioIni'
    end
    object cdsPadraoidRomaneioFim: TIntegerField
      FieldName = 'idRomaneioFim'
    end
    object cdsPadraoidContratoIni: TStringField
      FieldName = 'idContratoIni'
    end
    object cdsPadraoidContratoFim: TStringField
      FieldName = 'idContratoFim'
    end
    object cdsPadraoidProdutor: TIntegerField
      FieldName = 'idProdutor'
    end
    object cdsPadraonrOrigIni: TIntegerField
      FieldName = 'nrOrigIni'
    end
    object cdsPadraonrOrigFim: TIntegerField
      FieldName = 'nrOrigFim'
    end
    object cdsPadraoidArmOperacao: TIntegerField
      FieldName = 'idArmOperacao'
    end
    object cdsPadraoidNfIni: TIntegerField
      FieldName = 'idNfIni'
    end
    object cdsPadraoidNfFim: TIntegerField
      FieldName = 'idNfFim'
    end
    object cdsPadraocomNF: TStringField
      FieldName = 'comNF'
      Size = 1
    end
  end
  inherited frxHTMLExport1: TfrxHTMLExport
    Left = 472
    Top = 232
  end
  inherited frxTIFFExport1: TfrxTIFFExport
    Left = 504
    Top = 200
  end
  inherited dspLookUp: TDataSetProvider
    Left = 472
    Top = 296
  end
  inherited cdsLookUp: TClientDataSet
    Left = 504
    Top = 296
  end
  inherited frxRTFExport1: TfrxRTFExport
    Left = 536
    Top = 200
  end
  inherited frxJPEGExport1: TfrxJPEGExport
    Left = 472
    Top = 200
  end
  object frxRel: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 41533.857162534700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 176
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 257.008040000000000000
        Width = 1122.520410000000000000
        Condition = 'frxDataset."idProdutor"'
        ExpandDrillDown = True
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Left = 53.456692910000000000
          Top = 17.456709999999990000
          Width = 1065.826986460000000000
          Height = 15.118120000000000000
          Fill.BackColor = clInfoBk
          Frame.Color = 15790320
        end
        object Memo4: TfrxMemoView
          Left = 56.220470000000000000
          Top = 18.346456690000030000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Romaneio')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 126.661410000000000000
          Top = 18.346456690000030000
          Width = 42.275510000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contrato')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 648.842920000000000000
          Top = 18.519685039370070000
          Width = 52.047310000000000000
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
            'Peso Liq.')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 399.086824090000000000
          Top = 18.456692910000020000
          Width = 48.267780000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 219.874110950000000000
          Top = 18.456692910000020000
          Width = 76.291280000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Armazem')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo1: TfrxMemoView
          Left = 452.338900000000000000
          Top = 18.519685039370070000
          Width = 48.267780000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Motorista')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 52.456710000000000000
          Top = 0.377952760000027800
          Width = 45.354360000000000000
          Height = 11.338577800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produtor:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          Left = 97.811070000000000000
          Top = 0.377952760000027800
          Width = 57.488250000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[(<frxDataset."idProdutor">)] [(<frxDataset."descCadProdutor">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 718.024120000000000000
          Top = 18.519685040000010000
          Width = 29.370130000000000000
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
            'Valor')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 778.685530000000000000
          Top = 18.519685040000010000
          Width = 44.488250000000000000
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
            'Vlr Icms')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 854.598950000000000000
          Top = 18.897650000000000000
          Width = 55.826840000000000000
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
            'ICMS Frete')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 937.071430000000000000
          Top = 18.897650000000000000
          Width = 55.826840000000000000
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
            'Vlr. Frete')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 1030.543910000000000000
          Top = 18.897650000000000000
          Width = 55.826840000000000000
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
            'Valor Total')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object Band4: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 313.700990000000000000
        Width = 1122.520410000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDataset
        DataSetName = 'frxDataset'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 41.031540000000000000
          Width = 57.488250000000000000
          Height = 11.338590000000000000
          DataField = 'idRomaneio'
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
            '[frxDataset."idRomaneio"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 128.779569050000000000
          Width = 79.495945830000000000
          Height = 11.338590000000000000
          DataField = 'idContratoVenda'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."idContratoVenda"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 649.283860000000000000
          Width = 39.102315830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."qtPesoLiquido"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          Left = 219.653680000000000000
          Width = 136.188895830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataField = 'descArmazem'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descArmazem"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 392.086890000000000000
          Width = 69.338555830000000000
          Height = 11.338590000000000000
          DataField = 'dtRomaneio'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDataset."dtRomaneio"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 470.000310000000000000
          Width = 171.385865830000000000
          Height = 11.338590000000000000
          DataField = 'descMotorista'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataset."descMotorista"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 725.244590000000000000
          Width = 39.102315830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataField = 'vlLiquido'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlLiquido"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 785.906000000000000000
          Width = 39.102315830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataField = 'vlIcms'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlIcms"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          Left = 858.039890000000000000
          Top = 0.377964959999985700
          Width = 39.102315830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataField = 'vlIcmsFrete'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlIcmsFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          Left = 940.512370000000000000
          Top = 0.377964959999985700
          Width = 39.102315830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataField = 'vlFrete'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          Left = 1033.984850000000000000
          Top = 0.377964959999985700
          Width = 39.102315830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataField = 'vlTotal'
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataset."vlTotal"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 351.496290000000000000
        Width = 1122.520410000000000000
        object Memo22: TfrxMemoView
          Left = 884.402133780000000000
          Top = 23.000000000000000000
          Width = 234.330349840000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = [ftTop]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Quant. de Resultados: [Count(Band4)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 570.945270000000000000
          Top = 4.000000000000000000
          Width = 52.047310000000000000
          Height = 11.338577800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 651.535870000000000000
          Top = 4.000000000000000000
          Width = 42.881845830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."qtPesoLiquido">,Band4)]')
          ParentFont = False
          WordWrap = False
        end
        object Line5: TfrxLineView
          Left = 15.118120000000000000
          Top = 2.000000000000000000
          Width = 1107.402290000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          Left = 720.772110000000000000
          Top = 3.779530000000022000
          Width = 42.881845830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlLiquido">,Band4)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          Left = 786.142240000000000000
          Top = 3.779530000000022000
          Width = 42.881845830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlIcms">,Band4)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          Left = 857.953310000000000000
          Top = 3.779530000000022000
          Width = 42.881845830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlIcmsFrete">,Band4)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Left = 941.102970000000000000
          Top = 3.779530000000022000
          Width = 42.881845830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlFrete">,Band4)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          Left = 1035.591220000000000000
          Top = 3.779530000000022000
          Width = 42.881845830000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataset."vlTotal">,Band4)]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 66.811070000000000000
        Top = 457.323130000000000000
        Width = 1122.520410000000000000
        object Memo13: TfrxMemoView
          Left = 444.661720000000000000
          Top = 7.181102360000012000
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
          Left = 981.418060000000000000
          Top = 7.181102360000012000
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
          Top = 3.401360000000011000
          Width = 1092.283696460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo58: TfrxMemoView
          Left = 779.039580000000000000
          Top = 7.181102360000012000
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 177.949734500000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        Stretched = True
        object Line3: TfrxLineView
          Left = 1.279530000000000000
          Top = 127.338590000000000000
          Width = 1122.520410000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Left = 21.500000000000000000
          Top = 16.188930000000000000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          DataField = 'imgLogo'
          DataSet = dmPadrao.frxEmpresaContabil
          DataSetName = 'frxEmpresaContabil'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line4: TfrxLineView
          Left = 941.028140000000000000
          Top = 3.968460000000001000
          Height = 120.944960000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
        object lblEmpresa: TfrxMemoView
          Left = 309.417440000000000000
          Top = 13.779530000000000000
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
        object Memo2: TfrxMemoView
          Left = 309.535560000000000000
          Top = 35.574883700000000000
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
          Left = 309.535560000000000000
          Top = 55.252063699999990000
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
        object Memo49: TfrxMemoView
          Left = 309.535560000000000000
          Top = 75.811123700000000000
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
        object Memo50: TfrxMemoView
          Left = 309.535560000000000000
          Top = 95.488303700000000000
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
        object Memo7: TfrxMemoView
          Left = 948.662030000000000000
          Width = 162.519790000000000000
          Height = 117.165430000000000000
          DataSet = FrmPadraoRel.frxDataset
          DataSetName = 'frxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Romaneios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 356.590551180000000000
          Top = 130.393700790000000000
          Width = 58.582677170000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Motorista....:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescMotorista: TfrxMemoView
          Left = 420.842519690000000000
          Top = 130.393700790000000000
          Width = 230.551330000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo113: TfrxMemoView
          Left = 863.008301180000000000
          Top = 130.283457240000000000
          Width = 58.582677170000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto......:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescProduto: TfrxMemoView
          Left = 927.260269690000000000
          Top = 130.283457240000000000
          Width = 181.417440000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo115: TfrxMemoView
          Left = 404.409661180000000000
          Top = 143.622047244094000000
          Width = 58.582677170000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente........:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescCliente: TfrxMemoView
          Left = 468.661629690000000000
          Top = 143.622047244094000000
          Width = 291.023810000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo119: TfrxMemoView
          Left = 656.666499750000000000
          Top = 130.393700790000000000
          Width = 30.085058800000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Safra:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo120: TfrxMemoView
          Left = 778.486861590000000000
          Top = 143.622047244094000000
          Width = 69.732328500000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produtor:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescSafra: TfrxMemoView
          Left = 690.806707050000000000
          Top = 130.393700790000000000
          Width = 165.883571700000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescProdutor: TfrxMemoView
          Left = 858.559316300000000000
          Top = 143.622047244094000000
          Width = 204.111942200000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo121: TfrxMemoView
          Left = 76.173316220000000000
          Top = 143.622047240000000000
          Width = 72.113432400000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Arm/Local:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescArm: TfrxMemoView
          Left = 156.566736300000000000
          Top = 143.622047240000000000
          Width = 238.110390000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 75.590551180000000000
          Top = 159.078740160000000000
          Width = 58.582677170000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Romaneio...:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MromIni: TfrxMemoView
          Left = 139.842519685039000000
          Top = 159.078740157480000000
          Width = 56.692950000000000000
          Height = 11.338582677165400000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 210.315090000000000000
          Top = 159.078740157480000000
          Width = 27.968479530000000000
          Height = 11.338582677165400000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'At'#233':')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MromFim: TfrxMemoView
          Left = 243.779637410000000000
          Top = 159.078740157480000000
          Width = 56.692913390000000000
          Height = 11.338582677165400000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 313.700990000000000000
          Top = 159.078740157480000000
          Width = 35.527539530000000000
          Height = 11.338582677165400000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtIni: TfrxMemoView
          Left = 357.165537410000000000
          Top = 159.078740157480000000
          Width = 56.692950000000000000
          Height = 11.338582677165400000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 421.425480000000000000
          Top = 159.078740157480000000
          Width = 27.968479530000000000
          Height = 11.338582677165400000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'At'#233':')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdtFim: TfrxMemoView
          Left = 454.890027410000000000
          Top = 159.078740157480000000
          Width = 56.692913390000000000
          Height = 11.338582677165400000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 521.575140000000000000
          Top = 159.078740157480000000
          Width = 65.763779530000000000
          Height = 11.338582677165400000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contrato:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object McontIni: TfrxMemoView
          Left = 595.275927410000000000
          Top = 159.078740157480000000
          Width = 56.692950000000000000
          Height = 11.338582677165400000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo28: TfrxMemoView
          Left = 656.299630000000000000
          Top = 159.078740157480000000
          Width = 27.968479530000000000
          Height = 11.338582677165400000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'At'#233':')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object McontFim: TfrxMemoView
          Left = 689.764177410000000000
          Top = 159.078740157480000000
          Width = 56.692913390000000000
          Height = 11.338582677165400000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 752.126421180000000000
          Top = 159.118110236220000000
          Width = 58.582677170000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nr. Original.:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrOriIni: TfrxMemoView
          Left = 816.378389690000000000
          Top = 159.118110236220000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          Left = 886.850960000000000000
          Top = 159.118110236220000000
          Width = 27.968479530000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'At'#233':')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MnrOriFim: TfrxMemoView
          Left = 920.315507410000000000
          Top = 159.118110236220000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Line2: TfrxLineView
          Left = 1.000000000000000000
          Top = 173.992270000000000000
          Width = 1118.740880000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          Left = 75.590600000000000000
          Top = 130.393700790000000000
          Width = 52.762238800000000000
          Height = 11.338582680000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Opera'#231#227'o:')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object MdescOperacao: TfrxMemoView
          Left = 131.730807300000000000
          Top = 130.393700790000000000
          Width = 165.883571700000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 768
    Top = 272
  end
  object PopupMenu: TPopupMenu
    Images = imgIcones
    Left = 488
    Top = 328
    object actExportaExcel1: TMenuItem
      Caption = 'Exportar para Excel'
      ImageIndex = 2
      OnClick = actExportaExcel1Click
    end
  end
  object AbreArq: TOpenTextFileDialog
    DefaultExt = 'txt'
    Filter = 'Arquivos Texto (*.txt)|*.txt'
    Left = 560
    Top = 344
  end
  object AbrePasta: TcxShellBrowserDialog
    Left = 560
    Top = 392
  end
end
