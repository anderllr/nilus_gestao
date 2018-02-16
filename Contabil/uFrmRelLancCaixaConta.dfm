inherited FrmRelContCaixaConta: TFrmRelContCaixaConta
  Caption = 'Relatorio de Lancamentos n'#227'o integrados no lote'
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 97
    Width = 1008
    ExplicitTop = 185
    ExplicitWidth = 1008
  end
  inherited BevTop: TBevel
    Top = 56
    Width = 1008
    ExplicitTop = 56
    ExplicitWidth = 1008
  end
  inherited PanTopo: TCPanelGradient
    Top = 60
    Width = 1008
    Height = 37
    TabOrder = 2
    ExplicitTop = 60
    ExplicitWidth = 1008
    ExplicitHeight = 37
    object CLabel13: TCLabel [0]
      Left = 36
      Top = 11
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = 'Lote'
    end
    inherited BtnExecutar: TCBitBtn
      Left = 694
      TabOrder = 2
      ExplicitLeft = 694
    end
    object DBEidLote: TCDBEdit
      Left = 63
      Top = 8
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idLote'
      DataSource = dsPadrao
      TabOrder = 0
      Find = FindLote
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookGerenciaR: TCLookUp
      Left = 117
      Top = 8
      Width = 312
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idLote')
      LookUpKey.Strings = (
        'idLote')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'ContLote'
      ReturnField = 'descLote'
    end
    object BtnImprimir: TCBitBtn
      Left = 775
      Top = 6
      Width = 75
      Height = 25
      Action = actImprimir
      Caption = 'Imprimir'
      TabOrder = 3
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 1008
    TabOrder = 0
    ExplicitWidth = 1008
    inherited BtnFechar: TCBitBtn
      Left = 922
      ExplicitLeft = 922
    end
  end
  inherited cxGrid: TcxGrid
    Top = 101
    Width = 1008
    Height = 349
    TabOrder = 3
    LookAndFeel.SkinName = ''
    ExplicitTop = 101
    ExplicitWidth = 1008
    ExplicitHeight = 349
    inherited DBView: TcxGridDBTableView
      OnCellDblClick = DBViewCellDblClick
      DataController.KeyFieldNames = 'idMovimentacao'
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object DbViewtpMov: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tpMov'
        MinWidth = 60
      end
      object DbViewidEmpresa: TcxGridDBColumn
        DataBinding.FieldName = 'idEmpresa'
        Visible = False
        MinWidth = 64
      end
      object DbViewidCadEmpresa: TcxGridDBColumn
        DataBinding.FieldName = 'idCadEmpresa'
        Visible = False
      end
      object DbViewidMovimentacao: TcxGridDBColumn
        Caption = 'Movimenta'#231#227'o'
        DataBinding.FieldName = 'idMovimentacao'
        MinWidth = 64
      end
      object DbViewidCxaCnt: TcxGridDBColumn
        Caption = 'Caixa/Conta'
        DataBinding.FieldName = 'idCXACNT'
        MinWidth = 64
      end
      object DbViewdescMov: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descMov'
        MinWidth = 200
        Width = 200
      end
      object DbViewidMovFinanceira: TcxGridDBColumn
        Caption = 'Mov. Financeira'
        DataBinding.FieldName = 'idMovFinanceira'
        MinWidth = 64
      end
      object DbViewidResultado: TcxGridDBColumn
        Caption = 'Resultado'
        DataBinding.FieldName = 'idResultado'
        MinWidth = 64
      end
      object DbViewidSafra: TcxGridDBColumn
        Caption = 'Safra'
        DataBinding.FieldName = 'idSafra'
        MinWidth = 64
      end
      object DbViewidGerencial: TcxGridDBColumn
        Caption = 'Gerencial'
        DataBinding.FieldName = 'idGerencial'
        MinWidth = 64
      end
      object DbViewvlMov: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'vlMov'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 30
        Width = 40
      end
    end
  end
  object PanEmpresa: TCPanelGradient [5]
    Left = 0
    Top = 30
    Width = 1008
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
      OnExit = DBEidEmpresaExit
      OnKeyDown = DBEidEmpresaKeyDown
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
  end
  inherited imgIcones: TImageList
    Bitmap = {
      494C010103000400800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFFFFFFFFFFFFFFFFFFF4F4F400FAFA
      FA00FDFDFD00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FBFB
      FB009B9B9B00FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FFFFFFFFFFFFFFFFFFE2E2E200F3F3
      F300DDDDDD00E3E3E300E3E3E300E3E3E300DEDEDE00E7E7E700E3E3E300FFFF
      FF008E8C8C00FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF9F9F9F00919191008F8F8F00CECE
      CE00F0F0F000EEEEEE00F5F5F500FCFCFC00F7F7F700F8F8F800FBFBFB00FFFF
      FF0092919100919191008F8F8F00EDEDED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF00000000757575006A6A6A0062626200ADAD
      AD00E9E9E900F3F3F300EEEEEE00F0F0F000EAEAEA00EDEDED00EDEDED00FFFF
      FF008C8B8B00585858005A5A5A00A6A6A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF000000006767670063636400636363006969
      6900979797009797970098989800979797009B9B9B00A3A3A300A0A0A000A3A3
      A3008B8A8900787978007E7D7D00989898000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF000000004A494A00484848004F4F4F002727
      27002B2B2B002A2A2A002A2A2A002A2A2A002A2A2A00292929002B2B2B002B2A
      2B00323232006665660070707000929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF0000000057575700525352005C5C5C003232
      3200323232003131310031313100313131003030300030303000303030002E2E
      2E00525252006B6B6B0073727300919191000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000004849480047484700515051004647
      460044444400454545004646460047474700494949004C4C4C004D4D4D004C4C
      4C0065656500676667006D6D6C00929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF00000000686868006F6F6F00818181003131
      31003C3C3C003F3F3F0044444400464646004646460046464600424242004040
      400066666600959495007B7B7B009B9B9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF00000000ABABAB00BEBEBE00E4E4E4005A5A
      5A0077777700848484008E8E8E0093939300929292008D8D8D00818181007474
      7400B6B6B600EBEBEB00CCCCCC00A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF0000000049484900525251005F5F5F000909
      09000D0D0D000F0F0F00101010001212120011111100101010000E0E0E000B0B
      0B00545354005E5F5F005A5B5B00E1E1E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF00000000FFFFFFFFFFFFFFFFFFFFFFFFA09E
      9E00E7E7E700E5E5E500E6E6E600E8E7E900E8E7E900EAE9EA00ECEBEC00EDEC
      ED00F1F1F100FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF00000000FFFFFFFFFFFFFFFFFFFFFFFFA09E
      9E00DFDFDF00DEDEDE00DEDEDE00E0E0E000E2E3E200E2E2E200E2E3E300E6E5
      E500E0E0E000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFA19E
      9E00E0DFE000DFDFDF00DFDFDF00E0E0E000E2E1E200E3E2E200E4E4E400E7E6
      E700E6E6E6001B1B1B0000000000C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFACAC
      AC00E0DFE000DDDEDE00DFDFDF00E1E1E000E1E1E100E3E1E300E4E4E400E1E0
      E100BFBFBF0098989800EDEDED00333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFC8C8
      C800F2F2F200F1F0F000F2F1F100F2F2F200F4F3F300F5F6F500F6F6F600EDED
      EC00FFFFFFFF0000000000000000999999000000000000000000000000000000
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
    inherited actPesquisar: TAction
      Tag = 1
    end
    object actImprimir: TAction [2]
      Caption = 'Imprimir'
      ImageIndex = 2
      OnExecute = actImprimirExecute
    end
  end
  inherited cdsPadrao: TClientDataSet
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidLote: TIntegerField
      FieldName = 'idLote'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'EXEC spBuscaCaixaConta 1, 1'
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'EXEC spBuscaCaixaConta 1, 1'
  end
  inherited dsGrid: TDataSource
    Left = 680
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  object dspRelatorio: TDataSetProvider [19]
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 200
    Top = 200
  end
  object cdsRelatorio: TClientDataSet [20]
    Aggregates = <>
    CommandText = 'EXEC spBuscaCaixaConta 1, 27'
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 200
    Top = 248
  end
  object frxDataset: TfrxDBDataset [21]
    UserName = 'FrxDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'idMovimentacao=idMovimentacao'
      'idCXACNT=idCXACNT'
      'descMov=descMov'
      'dtMov=dtMov'
      'fator=fator'
      'idMovFinanceira=idMovFinanceira'
      'idResultado=idResultado'
      'idSafra=idSafra'
      'idGerencial=idGerencial'
      'vlMov=vlMov'
      'tpMov=tpMov')
    OpenDataSource = False
    DataSet = cdsRelatorio
    BCDToCurrency = False
    Left = 208
    Top = 312
  end
  object FrxRel: TfrxReport [22]
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Gesys Sistemas de Informa'#231#227'o'
    ReportOptions.CreateDate = 39263.419322395800000000
    ReportOptions.LastChange = 41033.597616527800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 304
    Datasets = <
      item
        DataSet = frxDataset
        DataSetName = 'FrxDataset'
      end
      item
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 24.518129300000000000
        Top = 219.212740000000000000
        Width = 793.701300000000000000
        Condition = 'FrxDataset."idEmpresa"'
        ExpandDrillDown = True
        object Shape2: TfrxShapeView
          Left = 22.677162910000000000
          Top = 0.491354399999977400
          Width = 732.737007560000000000
          Height = 16.365364900000000000
          Fill.BackColor = clInfoBk
          Frame.Color = 15790320
        end
        object Memo5: TfrxMemoView
          Left = 26.456692910000000000
          Top = 0.377952755905539600
          Width = 78.576428700000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Movimenta'#231#227'o')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Left = 323.215602260000000000
          Top = 0.377952759999971000
          Width = 28.645764000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 111.525969750000000000
          Top = 0.377952755905539600
          Width = 188.938557510000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 707.110700000000000000
          Top = 0.377952759999971000
          Width = 52.078850000000000000
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
            'Valor')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Left = 459.982972300000000000
          Top = 0.377952759999971000
          Width = 84.847375100000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mov. Financeira')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 566.553187810000000000
          Width = 34.929190000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Safra')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Left = 612.348487810000000000
          Width = 53.826840000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Gerencial')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 401.173470000000000000
          Top = 0.377952759999971000
          Width = 43.272545100000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Band4: TfrxMasterData
        FillType = ftBrush
        Height = 15.496062990000000000
        Top = 268.346630000000000000
        Width = 793.701300000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDataset
        DataSetName = 'FrxDataset'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 26.456692910000000000
          Width = 77.971703900000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<FrxDataset."idMovimentacao">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          Left = 111.601589640000000000
          Width = 202.044031930000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<FrxDataset."descMov">)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 322.599907220000000000
          Width = 78.311861600000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<FrxDataset."dtMov">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 660.205175980000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
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
            '[(<FrxDataset."vlMov">)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 469.345186300000000000
          Width = 39.647269700000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<FrxDataset."idMovFinanceira">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Width = 57.222084200000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<FrxDataset."idSafra">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          Left = 608.504330000000000000
          Width = 57.222084200000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<FrxDataset."idGerencial">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 395.653804000000000000
          Top = 0.622047239999972100
          Width = 62.324449700000000000
          Height = 15.118110240000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<FrxDataset."tpMov">)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 306.141930000000000000
        Width = 793.701300000000000000
        object frxDatasetvlGerencial: TfrxMemoView
          Left = 659.417750000000000000
          Top = 2.000000000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
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
            '[SUM(<frxDataset."vlMov">,Band4)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 604.724800000000000000
          Top = 2.000000000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 24.630180000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 66.811070000000000000
        Top = 385.512060000000000000
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 141.047310000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Line3: TfrxLineView
          Left = 26.456710000000000000
          Top = 133.488250000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Diagonal = True
        end
        object lblEmpresa: TfrxMemoView
          Left = 185.078850000000000000
          Top = 11.456656300000000000
          Width = 419.527830000000000000
          Height = 37.795300000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxEmpresaContabil."descEmpresa"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 11.338590000000000000
          Width = 155.000000000000000000
          Height = 62.000000000000000000
          DataField = 'imgLogo'
          DataSetName = 'frxEmpresaContabil'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 619.622450000000000000
          Top = 11.252010000000000000
          Width = 177.637910000000000000
          Height = 117.165430000000000000
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#227'o Integrados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 185.196970000000000000
          Top = 49.252010000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
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
        object Memo31: TfrxMemoView
          Left = 185.196970000000000000
          Top = 68.929190000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
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
        object Memo34: TfrxMemoView
          Left = 185.196970000000000000
          Top = 89.488250000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
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
        object Memo35: TfrxMemoView
          Left = 185.196970000000000000
          Top = 109.165430000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDataset
          DataSetName = 'FrxDataset'
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
        object Line4: TfrxLineView
          Left = 623.622450000000000000
          Top = 11.338590000000000000
          Height = 120.944960000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object FindEmpresa: TCFind [23]
    SelectClause.Strings = (
      
        'SELECT  idEmpresa, descCadEmpresa, descAbreviada, idCnpjCpf FROM' +
        ' vCadEmpresaContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadEmpresa')
    FindField = 'descCadEmpresa'
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
  object frxJPEGExport1: TfrxJPEGExport [24]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 144
    Top = 344
  end
  object frxTIFFExport1: TfrxTIFFExport [25]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 176
    Top = 344
  end
  object frxRTFExport1: TfrxRTFExport [26]
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
    Left = 208
    Top = 344
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport [27]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 240
    Top = 344
  end
  object frxPDFExport1: TfrxPDFExport [28]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 240
    Top = 376
  end
  inherited PopupMenu: TPopupMenu
    Left = 456
  end
  object frxHTMLExport1: TfrxHTMLExport [31]
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
    Left = 144
    Top = 376
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
    Left = 209
    Top = 408
  end
  object FindLote: TCFind
    SelectClause.Strings = (
      'SELECT  idLote, descLote FROM ContLote')
    OrderByClause.Strings = (
      'ORDER BY idLote')
    FindField = 'descLote'
    ValueField = 'idLote'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 408
    Top = 184
  end
end
