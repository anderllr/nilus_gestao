inherited FrmPesContratoPrevisao: TFrmPesContratoPrevisao
  Caption = 'Pesquisa de Contratos de Previs'#227'o'
  ClientWidth = 718
  FormStyle = fsNormal
  Position = poMainFormCenter
  Visible = False
  ExplicitWidth = 734
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited BevGrid: TBevel
    Top = 105
    Width = 718
    ExplicitTop = 161
    ExplicitWidth = 1134
  end
  inherited BevTop: TBevel
    Width = 718
    ExplicitWidth = 1134
  end
  inherited PanTopo: TCPanelGradient
    Top = 62
    Width = 718
    Height = 43
    ExplicitTop = 62
    ExplicitWidth = 718
    ExplicitHeight = 43
    object CLabel8: TCLabel [0]
      Left = 19
      Top = 18
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
    object CLabel4: TCLabel [1]
      Left = 145
      Top = 18
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
      Left = 243
      Top = 18
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
      Left = 368
      Top = 18
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
    object bvl1: TBevel [4]
      Left = 1
      Top = 1
      Width = 716
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 26
      ExplicitWidth = 700
    end
    object bvl2: TBevel [5]
      Left = 1
      Top = 5
      Width = 716
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 0
      ExplicitTop = 26
      ExplicitWidth = 700
    end
    inherited BtnExecutar: TCBitBtn
      Left = 479
      Top = 15
      ExplicitLeft = 479
      ExplicitTop = 15
    end
    object DBEidContratoIni: TCDBEdit
      Left = 83
      Top = 15
      Width = 60
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
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEidContratoFim: TCDBEdit
      Left = 167
      Top = 15
      Width = 60
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
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEdtInicial: TCDBEdit
      Left = 287
      Top = 15
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
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtFinal: TCDBEdit
      Left = 390
      Top = 15
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
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
  end
  inherited PanTop: TCPanelGradient
    Width = 718
    ExplicitWidth = 718
    inherited BtnFechar: TCBitBtn
      Left = 632
      ExplicitLeft = 632
    end
  end
  inherited cxGrid: TcxGrid
    Top = 109
    Width = 718
    Height = 341
    ExplicitTop = 109
    ExplicitWidth = 718
    ExplicitHeight = 341
    inherited DBView: TcxGridDBTableView
      OnCellDblClick = DBViewCellDblClick
      DataController.KeyFieldNames = 'idContratoProjecao'
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBColumnDBViewidEmpresa: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'idEmpresa'
        Width = 30
      end
      object cxGridDBColumnDBViewidCadEmpresa: TcxGridDBColumn
        Caption = 'FIlial'
        DataBinding.FieldName = 'idCadEmpresa'
        Width = 34
      end
      object cxGridDBColumnDBViewidContratoProjecao: TcxGridDBColumn
        Caption = 'Contrato Proj.'
        DataBinding.FieldName = 'idContratoProjecao'
        Width = 80
      end
      object cxGridDBColumnDBViewdtEmissao: TcxGridDBColumn
        Caption = 'Emissao'
        DataBinding.FieldName = 'dtContratoProjecao'
        Width = 84
      end
      object DBViewstContratoProjecao: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'stContratoProjecao'
        Width = 87
      end
      object DBViewobsContratoVenda: TcxGridDBColumn
        Caption = 'OBS'
        DataBinding.FieldName = 'obsContratoVenda'
        Width = 389
      end
    end
  end
  object PanEmpresa: TCPanelGradient [5]
    Left = 0
    Top = 34
    Width = 718
    Height = 28
    Align = alTop
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
    object lblEmpresa: TCLabel
      Left = 12
      Top = 8
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
      Transparent = True
    end
    object lblCNPJ: TCLabel
      Left = 5
      Top = 30
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object lblInscricao: TCLabel
      Left = 191
      Top = 30
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inscr. Estadual'
      Transparent = True
    end
    object DBEidEmpresa: TCDBEdit
      Left = 59
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idEmpresa'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEidCadEmpresa: TCDBEdit
      Left = 111
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadEmpresa'
      DataSource = dsPadrao
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookdescCadEmpresa: TCLookUp
      Left = 163
      Top = 5
      Width = 214
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
    object LookdescAbreviada: TCLookUp
      Left = 383
      Top = 5
      Width = 151
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
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
    object lookidCnpjCpf: TCLookUp
      Left = 210
      Top = 2
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 0
      Visible = False
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'idCnpjCpf'
    end
    object LookidInscEstadual: TCLookUp
      Left = 269
      Top = 27
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 7
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaFiscal'
      ReturnField = 'idInscEstadual'
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
  inherited imgIcones: TImageList
    Bitmap = {
      494C0101030004003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    object UniQryPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object UniQryPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object UniQryPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object UniQryPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraostAtivo: TBooleanField
      FieldName = 'stAtivo'
    end
    object UniQryPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object UniQryPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraostCancelado: TBooleanField
      FieldName = 'stCancelado'
    end
    object cdsPadraostEncerrado: TBooleanField
      FieldName = 'stEncerrado'
    end
    object UniQryPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object UniQryPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object UniQryPadraonrOrigIni: TStringField
      FieldName = 'nrOrigIni'
    end
    object UniQryPadraonrOrigFim: TStringField
      FieldName = 'nrOrigFim'
    end
    object UniQryPadraoidContratoIni: TStringField
      FieldName = 'idContratoIni'
    end
    object UniQryPadraoidContratoFim: TStringField
      FieldName = 'idContratoFim'
    end
    object UniQryPadraostPrevisao1: TStringField
      FieldName = 'stPrevisao'
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT con.idEmpresa, con.idCadEmpresa, con.idContratoProjecao, ' +
      'con.dtContratoProjecao, con.stContratoProjecao, con.obsContratoV' +
      'enda FROM ContratoProjecao con'
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT con.idEmpresa, con.idCadEmpresa, con.idContratoProjecao, ' +
      'con.dtContratoProjecao, con.stContratoProjecao, con.obsContratoV' +
      'enda FROM ContratoProjecao con'
    object UniQryGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object UniQryGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object UniQryGrididContratoProjecao: TIntegerField
      FieldName = 'idContratoProjecao'
      Required = True
    end
    object cdsGriddtContratoProjecao: TSQLTimeStampField
      FieldName = 'dtContratoProjecao'
    end
    object cdsGridstContratoProjecao: TStringField
      FieldName = 'stContratoProjecao'
    end
    object cdsGridobsContratoVenda: TStringField
      FieldName = 'obsContratoVenda'
      Size = 500
    end
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
end
