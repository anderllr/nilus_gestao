inherited FrmPesCompensacao: TFrmPesCompensacao
  Caption = 'Compensa'#231#227'o de Lan'#231'amentos Banc'#225'rios'
  ClientHeight = 444
  ClientWidth = 864
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000030000092A2725623A3836721D19
    183C040000020000000000000000000000000000000000000000000000000000
    000000000000040000010300000D0B090B3E11111472737A81E72F363FB12F30
    318D383634873633316B1511102F030000010000000000000000000000000400
    00011814133A2121236B2F3740A64F5E6CCF667A90FE8F9BA3FE5D6F82FF5A6B
    7EFE475462E5293038B02E2F3093312F2D832D2A29650905051B000000000300
    001B3B38369043505CC17790A7FE849EB2FF72899EFF9BA9B0FF617488FF5D6F
    82FF576879FF506070FF485766FE37414CE60D0D0E833A373577030000130300
    00083F3B396E5D6E7DB787A3B9FF91ADC0FF7890A6FF949EA4FF627589FF5E71
    85FF5A6C7FFF546576FF4C5C6BFF44515FFF171A1E963835337C030000170000
    0000403D3B5B718697C5829CB3FF7F96ACFF758BA1FF90969CFF627589FF5E70
    84FF596B7EFF546577FF4F5E6FFF485665FF22272D8A3A373562040000040000
    0000403D3B5B6F8499E17C92A9FF8198ADFF7B91A7FF979DA2FF687D92FF6276
    8AFF5D6F82FF566879FF4F5F6FFF475564FF292F37953C393759000000000000
    0000413D3B5D7C92A7F588A0B6FF8B9FB3FF8996A2FF8D969EFF697B8EFF6579
    8EFF62768BFF5D7084FF556678FF4C5B6BFF343D47B83D3A3859000000000000
    00004845437F788898FE879BABFF9CB2C2FF9CB7CDFE9FB4C7FE9CA8B1FE8C95
    9DFF7F91A2FF71808DFF5A6A7AFF4E5E6EFF3E4956D03E3B395B000000000000
    00000E0D10224C5B656A83929CBD9FACB4E4A6B7C5F5ACC1D2FEA1B8CCFFA4BA
    CCFF9CB0C0FF94A8BAFE9BA8B2FC757F88D73F42479724222135000000000000
    00000000000000000000000000000B08080C060303041E20242B4044495B5760
    688B4E555C8B2F3033560A080A1B000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000FFFF0000F83F0000C0070000000100000000000000000000800000008001
    0000800100008001000080010000F00F0000FFFF0000FFFF0000FFFF0000}
  Padding.Left = 2
  Padding.Top = 2
  Padding.Right = 2
  Padding.Bottom = 2
  Position = poDefault
  Visible = True
  ExplicitWidth = 880
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Left = 2
    Top = 99
    Width = 860
    Height = 312
    TabOrder = 2
    ExplicitLeft = 2
    ExplicitTop = 99
    ExplicitWidth = 860
    ExplicitHeight = 312
    inherited DBGrid: TCDBGrid
      Width = 856
      Height = 295
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      OnKeyDown = nil
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = '  ?'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descMovFinanceira'
          Title.Caption = 'Movimenta'#231#227'o Financeira'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCheque'
          Title.Caption = 'Cheque'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtMovConta'
          Title.Caption = 'Data'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtVencimento'
          Title.Caption = 'Vencimento'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlMovConta'
          Title.Caption = 'Valor'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descMovConta'
          Title.Caption = 'Descri'#231#227'o do Movimento'
          Width = 250
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Left = 2
    Top = 39
    Width = 860
    Height = 60
    BackgroundGradientColor = 12306636
    ExplicitLeft = 2
    ExplicitTop = 39
    ExplicitWidth = 860
    ExplicitHeight = 60
    object CLabel3: TCLabel [0]
      Left = 16
      Top = 38
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
    object CLabel7: TCLabel [1]
      Left = 146
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
    object CLabel4: TCLabel [2]
      Left = 254
      Top = 38
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel5: TCLabel [3]
      Left = 416
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
    object Bevel3: TBevel [4]
      Left = 0
      Top = 26
      Width = 586
      Height = 4
      Shape = bsFrame
      Style = bsRaised
    end
    object CLabel48: TCLabel [5]
      Left = 25
      Top = 7
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta'
    end
    object Bevel4: TBevel [6]
      Left = 582
      Top = -1
      Width = 4
      Height = 63
      Shape = bsFrame
      Style = bsRaised
    end
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 595
      Top = 17
      TabOrder = 4
      ExplicitLeft = 595
      ExplicitTop = 17
    end
    inherited BtnFechar: TCBitBtn
      Left = 710
      Top = 17
      TabOrder = 5
      Visible = False
      ExplicitLeft = 710
      ExplicitTop = 17
    end
    object DBEdtMovContaIni: TCDBEdit
      Left = 60
      Top = 35
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtMovContaIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtMovContaFim: TCDBEdit
      Left = 168
      Top = 35
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtMovContaFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoIni: TCDBEdit
      Left = 330
      Top = 35
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoIni'
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
    object DBEdtVencimentoFim: TCDBEdit
      Left = 438
      Top = 35
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 9
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEidConta: TCDBEdit
      Left = 60
      Top = 4
      Width = 48
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idConta'
      DataSource = dsPadrao
      TabOrder = 0
      Find = FindConta
      DecimalControl = True
      KeyMode = kmNormal
    end
    object LookAgencia: TCLookUp
      Left = 114
      Top = 4
      Width = 52
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idConta')
      LookUpKey.Strings = (
        'idConta')
      AlternateSQL.Strings = (
        
          'SELECT idAgencia FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
          'D idConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vConta'
      ReturnField = 'idAgencia'
    end
    object LookContaCorrente: TCLookUp
      Left = 172
      Top = 4
      Width = 94
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 2
      Key.Strings = (
        'idConta')
      LookUpKey.Strings = (
        'idConta')
      AlternateSQL.Strings = (
        
          'SELECT idContaCorrente FROM vConta WHERE idEmpresa = [DBEidEmpre' +
          'sa] AND idConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vConta'
      ReturnField = 'idContaCorrente'
    end
    object LookdescConta: TCLookUp
      Left = 272
      Top = 4
      Width = 276
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idConta')
      LookUpKey.Strings = (
        'idConta')
      AlternateSQL.Strings = (
        
          'SELECT descConta FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
          'D idConta = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vConta'
      ReturnField = 'descConta'
    end
  end
  inherited PanTopo: TCPanelGradient
    Left = 2
    Top = 2
    Width = 860
    Height = 37
    TabOrder = 0
    ExplicitLeft = 2
    ExplicitTop = 2
    ExplicitWidth = 860
    ExplicitHeight = 37
    object Bevel2: TBevel [0]
      Left = 1
      Top = 33
      Width = 858
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
      Width = 858
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
      Width = 858
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 858
      ExplicitHeight = 28
      inherited DBEidEmpresa: TCDBEdit
        TabOrder = 1
      end
      inherited DBEidCadEmpresa: TCDBEdit
        TabOrder = 2
      end
      inherited LookdescCadEmpresa: TCLookUp
        Padding.Bottom = 5
        TabOrder = 3
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 606
        Top = 6
        Width = 173
        TabOrder = 6
        Visible = False
        ExplicitLeft = 606
        ExplicitTop = 6
        ExplicitWidth = 173
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 421
        Top = 5
        ExplicitLeft = 421
        ExplicitTop = 5
      end
      inherited LookidInscEstadual: TCLookUp
        Left = 709
        Top = 3
        TabOrder = 0
        Visible = False
        ExplicitLeft = 709
        ExplicitTop = 3
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 553
        Top = 6
        Width = 150
        Height = 17
        Caption = 'Consolida Filiais?'
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  object CPanelGradient1: TCPanelGradient [3]
    Left = 2
    Top = 411
    Width = 860
    Height = 31
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
    object CLabel6: TCLabel
      Left = 13
      Top = 7
      Width = 108
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data da Compensa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object BtnCompensar: TCBitBtn
      Tag = 1
      Left = 213
      Top = 1
      Width = 92
      Height = 25
      Action = actCompensar
      Caption = '&Compensar'
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
    object CBitBtn2: TCBitBtn
      Left = 595
      Top = 4
      Width = 75
      Height = 25
      Action = actFechar
      Caption = '&Fechar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FDFDFF00CED7
        EF00AEB8E000AEB8E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9
        E300ACB7E300ABB6E300ABB6E300AAB5E100CDD6ED00FDFDFF00CED8F3003F5B
        C9001234BA001638BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137
        C3000B33C2000831C200022DC2000029BC003752B900CDD6ED00AEBBF100143B
        D700214ADF002B50DE003255DE002F53DE002F54DF002B53DF00244FE0001F4F
        E400164AE3000F45E500073CE2000236DC000029BC00AAB5E100B0BEF4001D44
        DF002D53E200365AE3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97
        F0002A5BE900144CE9000B42E600063CE200032DC200ABB6E300B2BFF400264B
        E000395EE5004465E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DF
        FB00D2DDFA00537EEF001049E9000A41E500052FC300ABB7E300B4C1F4003054
        E1004463E5005975E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76
        EC00B9C9F700D0DAFA002154E8001146E3000C35C400ADB8E300B7C4F5003659
        E3004C69E5009AABF100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5C
        E800466EEA00D2DBFA007593EF00194CE4001338C200AEB9E300BAC6F5004061
        E5005370E700C1CBF700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57
        E3002957E700A9BAF500A3B7F4001E4DE100193CC000B0BBE300BCC7F5004967
        E5005B76E800C4CDF700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55
        E2002954E500A8B8F300A7B9F400254DDE001D3EBF00B1BBE300BEC9F600516E
        E600627CE900A7B5F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54
        E2004367E700D0D9F9007E95EE002B4FDE002141C000B2BCE200BFCAF6005974
        E7006D86EA00758CEB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6B
        E600B4C2F400D7DEFA003B5DE4002D52DE002443C000B3BCE200C2CCF600647E
        E900778FEC006D86EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8
        F800D9E2FA006A84EA003055E2002F53DE002443C000B3BCE200C4CEF7007089
        EB008DA1EF007E94ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9
        F0005772E7004262E4003B5DE3003254DE001E3EBE00B1BBE200C7D1F7007D93
        ED009CADF100899DEF00788FEC006E86EA006982EA00647EE900627BE9005D77
        E8005672E8004D6BE6004161E4003255DE001D3DBE00B0BAE100DAE3FA00869B
        EE00788FEC006B84EA005E79E8005974E7005470E700506DE6004E6BE6004867
        E5004464E5003E5FE4003055E200264BDB004963CD00D0D9F000FEFEFF00DAE2
        FA00C7D0F700C5CEF700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7
        F500BAC6F500BAC6F500B6C3F500B4C0F200D1DBF500FEFEFF00}
      TabOrder = 1
    end
    object DBEdtCompensacao: TCDBEdit
      Left = 127
      Top = 6
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtCompensacao'
      DataSource = dsCompensacao
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
    object DBEidUsuario: TCDBEdit
      Left = 330
      Top = 6
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idUsuario'
      DataSource = dsCompensacao
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
      KeyMode = kmDate
    end
  end
  inherited imgIcones: TImageList
    Left = 328
    Top = 264
    Bitmap = {
      494C010103000400200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FDFDFF00CED7EF00AEB8E000AEB8
      E000B0B9E100B0B9E100B0B9E100AFBAE200ADB9E300ADB9E300ACB7E300ABB6
      E300ABB6E300AAB5E100CDD6ED00FDFDFF0000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF00000000CEC6C1FEA99D96FF8575
      6CFF6F5C52FF655046FF5B463CFF564036FF634D44FF685249FF675148FF6651
      47FF69564DFF7A6A62FF9C8F89FE857E7F7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CED8F3003F5BC9001234BA001638
      BD001C3CBC001C3CBC00183BBE00183BBF001439C1001137C3000B33C2000831
      C200022DC2000029BC003752B900CDD6ED0000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FFE2DAD4FE726E55FF765648FF7C5D
      50FF7A5B4DFF795A4DFF77574CFF74564BFF73544AFF725348FF715148FF6B4C
      42FF7D5D54FFAC8480FF4C4E35FFBFB6B4FD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEBBF100143BD700214ADF002B50
      DE003255DE002F53DE002F54DF002B53DF00244FE0001F4FE400164AE3000F45
      E500073CE2000236DC000029BC00AAB5E10000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FFAE7B6EFFD9AD9DFFD5AA9CFFD1A7
      9AFFCEA498FFCBA196FFC89F93FFC49C92FFC09990FFBC968EFFB9938DFF9577
      6AFF7A5C47FFD4A891FF232709FFA39B97FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0BEF4001D44DF002D53E200365A
      E3004161E4004B6AE6008AA0F000ADC0F600A9BBF4007B97F0002A5BE900144C
      E9000B42E600063CE200032DC200ABB6E30000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF00000000AE7B6EFFEFE7DEFFFFEEDDFFFFEA
      D6FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFD4A9FFFFD0A2FFD9AA
      A8FF6E503EFFB08876FF281F0BFF544B48FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2BFF400264BE000395EE5004465
      E5007E93ED00DDE3FA00D8DFF900B3C2F500B3C3F600D5DFFB00D2DDFA00537E
      EF001049E9000A41E500052FC300ABB7E30000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF00000000DDD6D0FFC28F79FFFFF2E5FFFFEE
      DDFF6A9D58FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFD4A9FFF7BF
      B0FF7C5E4FFF906D5DFF4D3127FF463835FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4C1F4003054E1004463E5005975
      E800DDE3FA00BEC9F600637EEA004368E7003E67E8004D76EC00B9C9F700D0DA
      FA002154E8001146E3000C35C400ADB8E30000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF00000000ECE8E3FFC8957CFFFEF5EBFFFFF2
      E5FF2D842BFF7FA86AFFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8B2FFFFCF
      AEFF997970FF745547FF533E31FF4A3935FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7C4F5003659E3004C69E5009AAB
      F100D6DCF900637DE9004A69E600C1CDF700BBC9F7002E5CE800466EEA00D2DB
      FA007593EF00194CE4001338C200AEB9E30000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF0000000000000000CF9C80FFF3EFEAFFFFF5
      ECFF2D842BFF2D842BFFB1C194FFFFE6CDFFFFE3C8FFFFDFBEFFFFDCB9FFFFD8
      B2FFDDA5A1FF6B4C3DFF55372DFF4B3934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAC6F5004061E5005370E700C1CB
      F700B3BEF500516EE7004968E600C1CBF600BBC8F6002F57E3002957E700A9BA
      F500A3B7F4001E4DE100193CC000B0BBE300F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000002D842BFF2D842BFF2D842BFF2D84
      2BFF2D842BFF1EB73CFF0D8212FFE9DFC4FFFFE6CDFFFFE3C8FFFFDFBEFFFFDC
      B9FFF7B9ACFF7D5E51FF52362BFF4B3934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCC7F5004967E5005B76E800C4CD
      F700B3BEF500516EE7004766E500C1CBF600BBC7F6002F55E2002954E500A8B8
      F300A7B9F400254DDE001D3EBF00B1BBE300B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF00000000339039FF55EF88FF47E17BFF39D3
      6CFF31CA63FF21BB44FF10A821FF248020FFFFEAD6FFFFE6CDFFFFE3C8FFFFDF
      BEFFFFD2B7FF9D8075FF44281DFF4A3732FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEC9F600516EE600627CE900A7B5
      F200D6DDF900637DE9004766E500C1CBF600BAC6F5002F54E2004367E700D0D9
      F9007E95EE002B4FDE002141C000B2BCE200A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF00000000339039FF48D973FF3CCD67FF31C2
      5CFF2BBD57FF25BE4BFF12A525FF2D842BFFFFEEDDFFFFEAD6FFFFE6CDFFFFE3
      C8FFFFDFBEFFE1A29BFF402418FF503B33FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFCAF6005974E7006D86EA00758C
      EB00E0E8FC00B9C4F5005F79E8004563E5003C5EE3004B6BE600B4C2F400D7DE
      FA003B5DE4002D52DE002443C000B3BCE200ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF000000000000000000000000CF9C80FFC8D1
      BBFF2B8C34FF27BF4EFF268528FFFFF5ECFFFFF2E5FFFFEEDDFFFFEAD6FFFFE6
      CDFFFFE3C8FFF8B3A8FF65493CFF4E382FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2CCF600647EE900778FEC006D86
      EA0091A3EF00E6EAFB00D3DAF900ABB9F400A9B8F300CFD8F800D9E2FA006A84
      EA003055E2002F53DE002443C000B3BCE200B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF000000000000000000000000D7AC8BFFCF9C
      80FF32903BFF1E8628FFF7F9F4FFFFF8F1FFFFF5ECFFFFF2E5FFFFEEDDFFFFE4
      D3FFFFDEC9FFFFC4B6FF937469FF442D23FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CEF7007089EB008DA1EF007E94
      ED006C86EA00728AEB00A6B4F300C5CEF700C3CDF60098A9F0005772E7004262
      E4003B5DE3003254DE001E3EBE00B1BBE200BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF00000000000000000000000000000000DCA9
      87FF2F812FFFDBE9DBFFFFFFFFFFFFFDFBFFFFF8F1FFFFF5ECFFF8E6D7FFDBA3
      83FFD69671FFD08E6CFFBD9A80FF5C4841FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7D1F7007D93ED009CADF100899D
      EF00788FEC006E86EA006982EA00647EE900627BE9005D77E8005672E8004D6B
      E6004161E4003255DE001D3DBE00B0BAE100E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF0000000000000000000000000000000000000000DCA9
      87FFF9F2EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFF8F1FFFDF3E9FFDCA9
      87FFFFB34EFFE0A86CFF997269FFA3928FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAE3FA00869BEE00788FEC006B84
      EA005E79E8005974E7005470E700506DE6004E6BE6004867E5004464E5003E5F
      E4003055E200264BDB004963CD00D0D9F00000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF000000000000000000000000000000000000000000000000FBF8
      F1FFDCA987FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFFFFF8F1FFDCA9
      87FFE6BB93FF6A6546FF7C8768FFECEBE7FB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00DAE2FA00C7D0F700C5CE
      F700C1CCF600BFCBF600BECAF600BECAF600BDC9F600BBC7F500BAC6F500BAC6
      F500B6C3F500B4C0F200D1DBF500FEFEFF0000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      0000DCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA987FFDCA9
      87FFE5DFDAFFF2F1F0FFF7F5F5FBCCB2A9560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008000800000000000800000000000
      0000800000000000000080010000000000008001000000000000800100000000
      0000800180000000000000010000000000000001000000000000000100000000
      00000001C000000000000001C000000000000001E000000000000003E0000000
      00008007E00000000000800FF000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 296
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
    object actCompensar: TAction
      Caption = '&Compensar'
      ImageIndex = 2
      OnExecute = actCompensarExecute
    end
  end
  inherited cdsPadrao: TClientDataSet
    ProviderName = ''
    AfterInsert = cdsPadraoAfterInsert
    object cdsPadraodtMovContaIni: TDateField
      FieldName = 'dtMovContaIni'
    end
    object cdsPadraodtMovContaFim: TDateField
      FieldName = 'dtMovContaFim'
    end
    object cdsPadraodtVencimentoIni: TDateField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateField
      FieldName = 'dtVencimentoFim'
    end
    object cdsPadraodtCompensacao: TDateField
      FieldName = 'dtCompensacao'
    end
    object cdsPadraoidConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsPadraoidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM tmpCompensacao WHERE  1=2'
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGrididMovConta: TIntegerField
      FieldName = 'idMovConta'
    end
    object cdsGriddescMovFinanceira: TStringField
      FieldName = 'descMovFinanceira'
      FixedChar = True
      Size = 50
    end
    object cdsGriddescGerencial: TStringField
      FieldName = 'descGerencial'
      FixedChar = True
      Size = 50
    end
    object cdsGrididCheque: TStringField
      FieldName = 'idCheque'
      FixedChar = True
      Size = 10
    end
    object cdsGriddtMovConta: TSQLTimeStampField
      FieldName = 'dtMovConta'
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsGriddescMovConta: TStringField
      FieldName = 'descMovConta'
      FixedChar = True
      Size = 250
    end
    object cdsGridvlMovConta: TFMTBCDField
      FieldName = 'vlMovConta'
      Precision = 19
      Size = 4
    end
    object cdsGrididUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
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
        'FROM vConta')
    JoinClause.Strings = (
      'WHERE StConta = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
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
    Left = 128
    Top = 240
  end
  object cdsCompensacao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 336
    object cdsCompensacaodtCompensacao: TDateTimeField
      FieldName = 'dtCompensacao'
    end
    object cdsCompensacaoidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
  end
  object dsCompensacao: TDataSource
    DataSet = cdsCompensacao
    Left = 224
    Top = 336
  end
end
