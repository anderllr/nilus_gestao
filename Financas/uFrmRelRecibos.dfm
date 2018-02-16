inherited FrmRelRecibos: TFrmRelRecibos
  Caption = 'Rela'#231#227'o de Recibos Emitidos'
  ClientWidth = 1012
  ExplicitWidth = 1028
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 446
    Width = 1012
    Align = alBottom
    ExplicitTop = 446
    ExplicitWidth = 1008
  end
  inherited BevTop: TBevel
    Top = 105
    Width = 1012
    ExplicitTop = 55
    ExplicitWidth = 1008
  end
  inherited PanTopo: TCPanelGradient
    Top = 109
    Width = 1012
    Height = 104
    TabOrder = 3
    ExplicitTop = 109
    ExplicitWidth = 1012
    ExplicitHeight = 104
    object lblCliFor: TCLabel [0]
      Left = 36
      Top = 9
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
    end
    object CLabel8: TCLabel [1]
      Left = 10
      Top = 33
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta Caixa'
    end
    object CLabel1: TCLabel [2]
      Left = 8
      Top = 57
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta Banco'
    end
    object CLabel5: TCLabel [3]
      Left = 427
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
    object CLabel6: TCLabel [4]
      Left = 547
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
    object CLabel4: TCLabel [5]
      Left = 151
      Top = 83
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
    object CLabel3: TCLabel [6]
      Left = 28
      Top = 83
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
    object CLabel7: TCLabel [7]
      Left = 380
      Top = 83
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
    object CLabel9: TCLabel [8]
      Left = 249
      Top = 83
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Recibo de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel10: TCLabel [9]
      Left = 601
      Top = 83
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
    object CLabel11: TCLabel [10]
      Left = 479
      Top = 83
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited BtnExecutar: TCBitBtn
      Left = 671
      Top = 28
      TabOrder = 16
      ExplicitLeft = 671
      ExplicitTop = 28
    end
    object BtnImprimir: TCBitBtn
      Left = 752
      Top = 28
      Width = 75
      Height = 25
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
      TabOrder = 17
      OnClick = BtnImprimirClick
    end
    object DBEidCadGeral: TCDBEdit
      Left = 75
      Top = 6
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
      Left = 143
      Top = 6
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
    object DBEidCaixa: TCDBEdit
      Left = 75
      Top = 30
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCaixa'
      DataSource = dsPadrao
      TabOrder = 4
      Find = dmFind.FindCaixa
      AcaoCad = frmPrincipal.actCadCaixa
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookCaixa: TCLookUp
      Left = 129
      Top = 30
      Width = 272
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 5
      Key.Strings = (
        'idEmpresa'
        'idCaixa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCaixa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Caixa'
      ReturnField = 'descCaixa'
    end
    object DBEidConta: TCDBEdit
      Left = 75
      Top = 55
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idConta'
      DataSource = dsPadrao
      TabOrder = 6
      Find = dmFind.FindConta
      AcaoCad = frmPrincipal.actCadConta
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookAgencia: TCLookUp
      Left = 129
      Top = 55
      Width = 41
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
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
      Left = 176
      Top = 55
      Width = 79
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 8
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
      Left = 263
      Top = 55
      Width = 203
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 9
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
    object DBEdtInicial: TCDBEdit
      Left = 471
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
      Left = 569
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
    object DBEnrTituloFim: TCDBEdit
      Left = 173
      Top = 80
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloFim'
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
    object DBEnrTituloIni: TCDBEdit
      Left = 75
      Top = 80
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTituloIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidReciboFim: TCDBEdit
      Left = 402
      Top = 80
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idReciboFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidReciboIni: TCDBEdit
      Left = 303
      Top = 80
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idReciboIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlReciboFim: TCDBEdit
      Left = 623
      Top = 80
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlReciboFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlReciboIni: TCDBEdit
      Left = 524
      Top = 80
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlReciboIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 1012
    TabOrder = 0
    ExplicitWidth = 1012
    inherited BtnFechar: TCBitBtn
      Left = 926
      ExplicitLeft = 926
    end
  end
  inherited cxGrid: TcxGrid
    Top = 213
    Width = 1012
    Height = 233
    TabOrder = 4
    ExplicitTop = 213
    ExplicitWidth = 1012
    ExplicitHeight = 233
    inherited DBView: TcxGridDBTableView
      DataController.KeyFieldNames = 'idRecibo'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = DBViewvlRecibo
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Column = DBViewvlRecibo
        end>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object DBViewsel: TcxGridDBColumn
        Caption = '?'
        DataBinding.FieldName = 'sel'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'S'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Visible = False
      end
      object DBViewidEmpresa: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'idEmpresa'
        Width = 60
      end
      object DBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'Filial'
        DataBinding.FieldName = 'idCadEmpresa'
        Width = 60
      end
      object DBViewidCnpjCpf: TcxGridDBColumn
        Caption = 'CNPJ/CPF'
        DataBinding.FieldName = 'idCnpjCpf'
        Width = 100
      end
      object DBViewdescCadCliente: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'descCadCliente'
        Width = 250
      end
      object DBViewidMovCaixa: TcxGridDBColumn
        Caption = 'Caixa'
        DataBinding.FieldName = 'idMovCaixa'
        Width = 60
      end
      object DBViewidMovConta: TcxGridDBColumn
        Caption = 'Conta'
        DataBinding.FieldName = 'idMovConta'
        Width = 60
      end
      object DBViewtipo: TcxGridDBColumn
        DataBinding.FieldName = 'tipo'
        Visible = False
      end
      object DBViewidRecibo: TcxGridDBColumn
        Caption = #8470' Recibo'
        DataBinding.FieldName = 'idRecibo'
        Width = 60
      end
      object DBViewdtRecibo: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'dtRecibo'
        Width = 100
      end
      object DBViewvlRecibo: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'vlRecibo'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
    end
  end
  object PanEmpresa: TCPanelGradient [5]
    Left = 0
    Top = 30
    Width = 1012
    Height = 26
    Align = alTop
    Caption = 'PanEmpresa'
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
    object CLabel2: TCLabel
      Left = 10
      Top = 8
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
      Transparent = True
    end
    object DBEidEmpresa: TCDBEdit
      Left = 56
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idEmpresa'
      DataSource = dsPadrao
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmInteger
    end
    object DBEidCadEmpresa: TCDBEdit
      Left = 108
      Top = 5
      Width = 37
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadEmpresa'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmInteger
    end
    object LookdescAbreviada: TCLookUp
      Left = 383
      Top = 5
      Width = 165
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
      ReturnField = 'descAbreviada'
    end
    object LookdescCadEmpresa: TCLookUp
      Left = 151
      Top = 5
      Width = 226
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
      ReturnField = 'descCadEmpresa'
    end
    object DBCKconsolidafilial: TCDBCheckBox
      Left = 703
      Top = 5
      Width = 127
      Height = 17
      Caption = 'Consolida Filiais?'
      Color = 12306636
      DataField = 'consolidafilial'
      DataSource = dsPadrao
      ParentColor = False
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCKconsolidaemp: TCDBCheckBox
      Left = 554
      Top = 5
      Width = 127
      Height = 17
      Caption = 'Consolida Empresas?'
      Color = 12306636
      DataField = 'consolidaemp'
      DataSource = dsPadrao
      ParentColor = False
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object CPanelGradient1: TCPanelGradient [6]
    Left = 0
    Top = 56
    Width = 1012
    Height = 49
    Align = alTop
    Caption = 'PanTopo'
    TabOrder = 2
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object DBRGtpRecibo: TCDBRadioGroup
      Left = 10
      Top = 6
      Width = 821
      Height = 41
      Caption = 'Tipo'
      Columns = 2
      DataField = 'tpRecibo'
      DataSource = dsPadrao
      Items.Strings = (
        'Cliente'
        'Fornecedor')
      TabOrder = 0
      Values.Strings = (
        'C'
        'F')
      OnExit = DBRGtpReciboExit
    end
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C0101030004004C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000001000000200000
      001E0000001B00000019000000170000001600000016000000180000001A0000
      001D0000001E0000001900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF00000000050505300C0C0C113131
      31425151515178787889A1A1A1A9B4B4B4C6AAAAAABC8F8F8F986B6B6B814545
      4558181818181919191A00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF000000000505052F131313263A3A
      3A3A46464674BABABABA818181B3F0F0F0F0D6D6D6E29B9B9BC88E8E8E9C5757
      5759313131531A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF00000000000000000505052E0C0C0C134444
      446587878787929292B1929292A5F1F1F1F1A7A7A7AD8E8E8E8E6A6A6A8A5959
      595A333333531B1B1B1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF00000000000000000505052F0B0B0B136189
      80DD807F7F8E939292B0919091A3F1F1F1F1999898B4888888A3939393934C4C
      4C6F1919191B1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF00000000000000000505052F1213131F3A3A
      3A44719B90F3D7F7EFFF8AB1A8FFFBFFFFFFACDDD2FF747474AD949494946161
      616A2F2F2F521A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF00000000000000000505052F0C0C0C0F3131
      3141505050506C6B6B898E9090B6999C9BCDB1D4CCF491D6C6FF607F77C23D3A
      3B591D1D1D1F1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF00000000000000000505052F090909093233
      33454A494955757474789B9A9A9DB1B0B1B9A6A5A5AF8A9694BC6BC0ADFB3AB8
      9AFF35584F981515151B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF00000000000000000505052F090909092A29
      2A2C727E7BA1D4E9E3F8DCF2EDFED9EBE7FAC8E9E1FD8585859C615E5F633736
      363B171717191B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF00000000000000000505052F090909092D2D
      2D2D53535353787878799A99999DBABABABAA2A1A1B39DB2ADD280B7AAE2586A
      66921C1C1C1D1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F686868684141
      41411E1E1E1E1B1B1B1C00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B090909090696969694141
      41411C1C1C1C1A1A1A1B00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF00000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B0909090906B6B6B856161
      617A5B5B5B7F5A5A5A9700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF0000000000000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F767676959B9B
      9B9BC3C3C3CB0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF000000000000000000000000000000000505052F090909092D2D
      2D2D535353537B7B7B7B9F9F9F9FBBBBBBBBB0B0B0B08F8F8F8F808080A2C9C9
      C9D3000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000001010120292929323A3A
      3A494E4E4E626262627B76767693848484A57F7F7F9E6D6D6D88717171A60000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000800100000000800080010000
      0000800080010000000080018001000000008001800100000000800180010000
      0000800180010000000000018001000000000001800100000000000180010000
      0000000180010000000000018001000000000001800100000000000380030000
      00008007800700000000800F800F000000000000000000000000000000000000
      000000000000}
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraotpRecibo: TStringField
      FieldName = 'tpRecibo'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsPadraoidConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraonrTituloIni: TStringField
      FieldName = 'nrTituloIni'
    end
    object cdsPadraonrTituloFim: TStringField
      FieldName = 'nrTituloFim'
    end
    object cdsPadraoidReciboIni: TIntegerField
      FieldName = 'idReciboIni'
    end
    object cdsPadraoidReciboFim: TIntegerField
      FieldName = 'idReciboFim'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
    end
    object cdsPadraoconsolidaFilial: TStringField
      FieldName = 'consolidaFilial'
    end
    object cdsPadraovlReciboIni: TCurrencyField
      FieldName = 'vlReciboIni'
    end
    object cdsPadraovlReciboFim: TCurrencyField
      FieldName = 'vlReciboFim'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT '#39'N'#39' sel,  r.idEmpresa, r.idCadEmpresa, r.idMovCaixa, r.id' +
      'MovConta, r.tipo, r.idRecibo, r.vlRecibo, cad.descCadCliente, ca' +
      'd.idCnpjCpf, r.dtRecibo, r.referencia, t.idCliente FROM Recibo r' +
      ' LEFT JOIN MovCaixa mcx'#9'ON r.idEmpresa = mcx.idEmpresa AND r.idC' +
      'adEmpresa = mcx.idCadEmpresa AND r.idMovCaixa = mcx.idMovCaixa L' +
      'EFT JOIN MovCaixaTit mcxt ON mcxt.idMovCaixa = mcx.idMovCaixa LE' +
      'FT JOIN TituloRecMov tm ON mcxt.idTituloRecMov = tm.idTituloRecM' +
      'ov LEFT JOIN TituloRec t ON tm.idEmpresa = t.idEmpresa AND tm.id' +
      'CadEmpresa = t.idCadEmpresa AND tm.idCliente = t.idCliente AND t' +
      'm.idTituloRec = t.idTituloRec LEFT JOIN MovConta mc'#9'ON r.idEmpre' +
      'sa = mcx.idEmpresa AND r.idCadEmpresa = mcx.idCadEmpresa   AND r' +
      '.idMovConta = mc.idMovConta LEFT JOIN MovContaTit mct ON mct.idM' +
      'ovConta = mc.idMovConta AND mct.idTituloRecMov = tm.idTituloRecM' +
      'ov AND tm.idEmpresa = t.idEmpresa AND tm.idCadEmpresa = t.idCadE' +
      'mpresa AND tm.idCliente = t.idCliente AND tm.idTituloRec = t.idT' +
      'ituloRec LEFT JOIN vCadClienteContabil cad ON t.idCliente = cad.' +
      'idCliente'
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT '#39'N'#39' sel,  r.idEmpresa, r.idCadEmpresa, r.idMovCaixa, r.id' +
      'MovConta, r.tipo, r.idRecibo, r.vlRecibo, cad.descCadCliente, ca' +
      'd.idCnpjCpf, r.dtRecibo, r.referencia, t.idCliente FROM Recibo r' +
      ' LEFT JOIN MovCaixa mcx'#9'ON r.idEmpresa = mcx.idEmpresa AND r.idC' +
      'adEmpresa = mcx.idCadEmpresa AND r.idMovCaixa = mcx.idMovCaixa L' +
      'EFT JOIN MovCaixaTit mcxt ON mcxt.idMovCaixa = mcx.idMovCaixa LE' +
      'FT JOIN TituloRecMov tm ON mcxt.idTituloRecMov = tm.idTituloRecM' +
      'ov LEFT JOIN TituloRec t ON tm.idEmpresa = t.idEmpresa AND tm.id' +
      'CadEmpresa = t.idCadEmpresa AND tm.idCliente = t.idCliente AND t' +
      'm.idTituloRec = t.idTituloRec LEFT JOIN MovConta mc'#9'ON r.idEmpre' +
      'sa = mcx.idEmpresa AND r.idCadEmpresa = mcx.idCadEmpresa   AND r' +
      '.idMovConta = mc.idMovConta LEFT JOIN MovContaTit mct ON mct.idM' +
      'ovConta = mc.idMovConta AND mct.idTituloRecMov = tm.idTituloRecM' +
      'ov AND tm.idEmpresa = t.idEmpresa AND tm.idCadEmpresa = t.idCadE' +
      'mpresa AND tm.idCliente = t.idCliente AND tm.idTituloRec = t.idT' +
      'ituloRec LEFT JOIN vCadClienteContabil cad ON t.idCliente = cad.' +
      'idCliente'
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsGrididCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsGrididMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
    end
    object cdsGrididMovConta: TIntegerField
      FieldName = 'idMovConta'
    end
    object cdsGridtipo: TSmallintField
      FieldName = 'tipo'
    end
    object cdsGrididRecibo: TIntegerField
      FieldName = 'idRecibo'
    end
    object cdsGridvlRecibo: TFMTBCDField
      FieldName = 'vlRecibo'
      Precision = 19
      Size = 4
    end
    object cdsGriddescCadCliente: TStringField
      FieldName = 'descCadCliente'
      Size = 50
    end
    object cdsGrididCnpjCpf: TStringField
      FieldName = 'idCnpjCpf'
      Size = 18
    end
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Required = True
      Size = 1
    end
    object cdsGriddtRecibo: TSQLTimeStampField
      FieldName = 'dtRecibo'
    end
    object cdsGridreferencia: TStringField
      FieldName = 'referencia'
      Size = 500
    end
    object cdsGrididCliente: TIntegerField
      FieldName = 'idCliente'
    end
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 792
    Top = 376
  end
  object rptCheque: TfrxDBDataset
    UserName = 'Cheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idMovConta=idMovConta'
      'idEmpresa=idEmpresa'
      'idConta=idConta'
      'idCadGeral=idCadGeral'
      'idSafra=idSafra'
      'idMovFinanceira=idMovFinanceira'
      'idGerencial=idGerencial'
      'idResultado=idResultado'
      'idRateio=idRateio'
      'idCheque=idCheque'
      'dtMovConta=dtMovConta'
      'dtCompensacao=dtCompensacao'
      'dtVencimento=dtVencimento'
      'dtCancelamento=dtCancelamento'
      'descMovConta=descMovConta'
      'vlMovConta=vlMovConta'
      'fator=fator'
      'idCadEmpresa=idCadEmpresa')
    BCDToCurrency = False
    Left = 736
    Top = 376
  end
  object Report: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39849.459104513900000000
    ReportOptions.LastChange = 41222.561421377310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 672
    Top = 376
    Datasets = <>
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 525.346630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 1.779530000000001000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome-Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 21.677180000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Empresa]  IE/RG: [IE-RG-Empresa]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 1.779530000000000000
          Top = 41.354360000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Endereco]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 1.779530000000000000
          Top = 61.252010000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Cidade]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 1.779530000000000000
          Top = 80.929190000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Fone]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -0.220470000000000000
          Top = 104.606370000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 488.559370000000000000
          Top = 29.456710000000000000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          Visible = False
        end
        object Shape2: TfrxShapeView
          Left = 488.692913390000000000
          Top = 52.692949999999990000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
        end
        object Memo9: TfrxMemoView
          Left = 495.661720000000000000
          Top = 55.252010000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 495.897960000000000000
          Top = 71.370130000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [valor]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 8.118120000000000000
          Top = 116.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebi(emos) de :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 8.338590000000000000
          Top = 139.842610000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'A import'#226'ncia de :')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 8.338590000000000000
          Top = 186.637910000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Referente a :')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 0.220470000000000000
          Top = 517.787570000000100000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.TopLine.Style = fsDash
        end
        object Memo14: TfrxMemoView
          Left = 140.842610000000000000
          Top = 116.165430000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 140.842610000000000000
          Top = 139.842610000000000000
          Width = 559.370440000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            
              '[extenso-monetario] # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# #')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 140.842610000000000000
          Top = 187.196970000000000000
          Width = 559.370440000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Referencia]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 140.842610000000000000
          Top = 304.685220000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[local-data]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 378.953000000000000000
          Top = 396.905690000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Nome-Assinatura]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 378.953000000000000000
          Top = 416.819110000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Assinatura]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 7.779530000000000000
          Top = 493.630180000000000000
          Width = 363.180356430000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Nilus Solu'#231#245'es para o Agroneg'#243'cio - GO: (64)3634-1426  MS: (67)3' +
              '562-2959')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 174.960730000000000000
          Top = 253.008040000000000000
          Width = 22.677180000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[vlDescAcres]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 64.252010000000000000
          Top = 253.228510000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 546.338899999999900000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[idRecibo]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 509.236540240000000000
        Top = 566.929499999999900000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.559059999999931000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome-Empresa]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 2.000000000000000000
          Top = 21.456710000000040000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Empresa]  IE/RG: [IE-RG-Empresa]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 2.000000000000000000
          Top = 41.133889999999950000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Endereco]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 2.000000000000000000
          Top = 61.031540000000060000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Cidade]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 2.000000000000000000
          Top = 80.708719999999970000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Fone]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 104.385900000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape3: TfrxShapeView
          Left = 488.779840000000000000
          Top = 17.236240000000070000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          Visible = False
        end
        object Shape4: TfrxShapeView
          Left = 488.692913390000000000
          Top = 46.472480000000020000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
        end
        object Memo27: TfrxMemoView
          Left = 496.118430000000000000
          Top = 59.149659999999920000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [valor]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 8.338590000000000000
          Top = 115.944960000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebi(emos) de :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 8.559060000000000000
          Top = 139.622140000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'A import'#226'ncia de :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 8.559060000000000000
          Top = 186.417440000000100000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Referente a :')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 141.063080000000000000
          Top = 115.944960000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 141.063080000000000000
          Top = 139.622140000000000000
          Width = 559.370440000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            
              '[extenso-monetario] # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# #')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 141.063080000000000000
          Top = 186.976500000000000000
          Width = 559.370440000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Referencia]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 141.063080000000000000
          Top = 322.008039999999400000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[local-data]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 379.173470000000000000
          Top = 392.685219999999700000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Nome-Assinatura]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 379.173470000000000000
          Top = 412.598639999999500000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Assinatura]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 7.937007870000000000
          Top = 507.071119999998500000
          Width = 372.180356430000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Nilus Solu'#231#245'es para o Agroneg'#243'cio - GO: (64)3634-1426  MS: (67)3' +
              '562-2959')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 495.118430000000000000
          Top = 49.913419999999970000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 174.960730000000000000
          Top = 257.008040000000100000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[vlDescAcres]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 64.252010000000000000
          Top = 257.228510000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 511.897960000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 548.000310000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[idRecibo]')
          ParentFont = False
        end
      end
    end
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 824
    Top = 152
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MovCaixa WHERE 1=2'
    Params = <>
    ProviderName = 'dspMovCaixa'
    Left = 792
    Top = 152
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sdsMovCaixa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 152
  end
  object sdsMovCaixa: TSQLDataSet
    CommandText = 'SELECT * FROM MovCaixa WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 152
  end
  object sdsMovConta: TSQLDataSet
    CommandText = 'SELECT * FROM MovConta WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 200
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 200
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MovConta WHERE 1=2'
    Params = <>
    ProviderName = 'dspMovConta'
    Left = 792
    Top = 200
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    Left = 824
    Top = 200
  end
  object cdsAdiantamento: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    Left = 792
    Top = 245
    object cdsAdiantamentovlAdiantamento: TCurrencyField
      FieldName = 'vlAdiantamento'
    end
    object cdsAdiantamentodtAdiantamento: TDateField
      FieldName = 'dtAdiantamento'
    end
    object cdsAdiantamentodescAdiantamento: TStringField
      FieldName = 'descAdiantamento'
      Size = 250
    end
  end
  object dsAdiantamento: TDataSource
    DataSet = cdsAdiantamento
    Left = 824
    Top = 245
  end
  object dspAdiantamento: TDataSetProvider
    DataSet = sdsAdiantamento
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 246
  end
  object sdsAdiantamento: TSQLDataSet
    CommandText = 'SELECT * FROM MovConta WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 728
    Top = 246
  end
  object FindEmpresa: TCFind
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
      'Raz'#227'o Social'
      'Nome Fantasia'
      'Cnpj/Cpf')
    TypeFind = fFindNormal
    Left = 648
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPadraoAfterInsert
    Left = 608
    Top = 272
    object cdsTmpidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsTmpidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsTmpidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsTmpidConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsTmpdescCliente: TStringField
      FieldName = 'descCliente'
      Size = 80
    end
    object cdsTmpidRecibo: TIntegerField
      FieldName = 'idRecibo'
    end
    object cdsTmpdtRecibo: TDateField
      FieldName = 'dtRecibo'
    end
    object cdsTmpvlRecibo: TCurrencyField
      FieldName = 'vlRecibo'
    end
    object cdsTmpidCnpjCpf: TStringField
      FieldName = 'idCnpjCpf'
      Size = 40
    end
    object cdsTmpreferencia: TStringField
      FieldName = 'referencia'
      Size = 500
    end
  end
  object dsTmp: TDataSource
    DataSet = cdsTmp
    OnDataChange = dsPadraoDataChange
    Left = 640
    Top = 272
  end
end
