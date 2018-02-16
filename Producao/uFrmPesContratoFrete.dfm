inherited FrmPesContratoFrete: TFrmPesContratoFrete
  Caption = 'Pesquisa de Contratos de Frete'
  ClientHeight = 417
  ClientWidth = 736
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000FFFFFF0AFFFFFF1AFFFFFF2BFFFF
    FF30FFFFFF23FFFFFF0C00000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFF1CFFFFFF3BF7F8F867EFEEEC8AF5F2
    F09DFBFAF999FFFFFF7CFFFFFF45FFFFFF0D0000000000000000000000000000
    00000000000000000000E8E8E814D2D2D23F7272729F2A2928DD927F6EF79487
    79FA81766CEEADA59FD7F0EEEDAEFFFFFF69FFFFFF1500000000000000000000
    0000000000008282830B717171AC7C7C7CE4595A5AFF5B5754FF94867BFF7A77
    6EFF877C70FF675C4FFF766D63F0DFDEDDB5FFFFFF61FFFFFF0B00000000100C
    094A0D08057800000078181717F0313131FF787979FF88898AFF7A7E7FFF8C8E
    8EFF8C7265FF887567FF6F665AFF7A736BEEF1F0F097FFFFFF37000000005546
    3DB7937E70FF85746AFF73645CFF675B53FF796E67FF7A7069FF635D59FF5D55
    4EFF6E574BFF6C5448FF6C574BFF5E4738FFAFA7A2C0FFFFFF58FFFFFF095748
    40B2A08A7BFFB88E6CFFC69771FFBE9675FFB6906EFFA98970FFA58A77FFA189
    78FF998577FF7D6B60FF664A3DFF795C4DFF8B8278E3FBFBFB61FFFFFF165648
    40B2988273FFCA8244FFF49642FFF59638FFA8707FFFB17884FFEE923CFFE18D
    46FFCA8851FF8B7567FF977E73FFAE9182FFAA9485F7F5F4F259FFFFFF175548
    40B2988374FFD28D51FFF49E55FFA9738CFF6C6CF9FF8074E8FFDB844CFFF793
    37FFD98843FF887364FFB8A699FFEAD3C2FFB19E8EF2F0EEED37FFFFFF0F5648
    40B1988374FFDA9656FFD4937AFF8182F2FF9276C1FF9D86CEFF9579C3FFED8B
    39FFDC8B43FF867163FF5A514AFF403830FF0A0908CFA9A9A90F000000005648
    3FB1988374FFD69B64FFFFB66AFFE2A27DFFE79D6AFFD49379FF8C91FFFFA177
    ACFFD1834AFF85705EFF000000FF000000FF0000009300000000000000005648
    3FB1988374FFD6A16CFFFFBD76FFFFB467FFFFAD5FFFF8A051FFAA89B9FF8A8C
    FFFFC4805FFF87705BFF080807FF000000E60000005200000000000000005648
    3FB1988374FFDAA771FFFFC57DFFFFBA72FFFFB268FFFFAC58FFED9757FF9370
    BBFFC17E5DFF866F5BFF080807EE000000940000002C00000000000000005648
    3FB1988374FFBC9063FFD3A067FFC8905DFFBE8655FFB47E51FFB07C4CFFA173
    54FF9B7864FF917B6CFF0B0908B300000046000000080000000000000000594A
    40B8A58F81FF957F70FF958071FF958174FF968479FF93847AFD897B73FA7F71
    67F074675EDD594E46B705040444000000000000000000000000000000004E41
    3981877569B07163599261554C77483F395B2B262245171412410C0A0A450606
    054100000029000000090000000000000000000000000000000000000000F81F
    0000F0070000E0030000C0010000000100000000000000000000000000000000
    00000001000000030000000300000003000000030000000F0000001F0000}
  ExplicitTop = -42
  ExplicitWidth = 752
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 158
    Width = 736
    Height = 259
    TabOrder = 2
    ExplicitTop = 158
    ExplicitWidth = 736
    ExplicitHeight = 259
    inherited DBGrid: TCDBGrid
      Width = 732
      Height = 242
      Columns = <
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
          FieldName = 'idCadEmpresa'
          Title.Caption = 'S'#233'rie'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idContratoFrete'
          Title.Caption = 'Nr. Contrato'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idFornecedor'
          Title.Caption = 'Cliente'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAbreviada'
          Title.Caption = 'Descri'#231#227'o'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtEmissao'
          Title.Caption = 'Emiss'#227'o'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlContratoFrete'
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stContratoFrete'
          Title.Caption = 'Status'
          Width = 95
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 125
    Width = 736
    ExplicitTop = 125
    ExplicitWidth = 736
    inherited BtnExecutar: TCBitBtn
      Tag = 1
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 736
    Height = 125
    TabOrder = 0
    ExplicitWidth = 736
    ExplicitHeight = 125
    object Bevel2: TBevel [0]
      Left = 1
      Top = 90
      Width = 734
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
      Width = 734
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
      Width = 734
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 734
      ExplicitHeight = 28
      inherited DBEidEmpresa: TCDBEdit
        TabOrder = 1
      end
      inherited DBEidCadEmpresa: TCDBEdit
        TabOrder = 2
      end
      inherited LookdescCadEmpresa: TCLookUp
        Width = 214
        TabOrder = 3
        ExplicitWidth = 214
      end
      inherited LookdescAbreviada: TCLookUp
        Left = 383
        Width = 151
        TabOrder = 4
        ExplicitLeft = 383
        ExplicitWidth = 151
      end
      inherited lookidCnpjCpf: TCLookUp
        Left = 210
        Top = 2
        TabOrder = 0
        Visible = False
        ExplicitLeft = 210
        ExplicitTop = 2
      end
      inherited LookidInscEstadual: TCLookUp
        TabOrder = 7
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
    object PanCliente: TCPanelGradient
      Left = 1
      Top = 33
      Width = 734
      Height = 57
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
        Left = 21
        Top = 61
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
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
        Width = 732
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
        Left = 41
        Top = 36
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Safra'
      end
      object DBEidCliente: TCDBEdit
        Left = 73
        Top = 8
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCliente'
        DataSource = dsPadrao
        TabOrder = 0
        Find = dmFind.FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookDescCadCliente: TCLookUp
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
          'idCliente')
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
        Left = 73
        Top = 33
        Width = 46
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idSafra'
        DataSource = dsPadrao
        TabOrder = 4
        AcaoCad = frmPrincipal.actCadSafra
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookSafra: TCLookUp
        Left = 125
        Top = 33
        Width = 292
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idEmpresa'
          'idSafra')
        LookUpKey.Strings = (
          'idEmpresa'
          'idSafra')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'Safra'
        ReturnField = 'descSafra'
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 94
      Width = 734
      Height = 31
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
      object CLabel8: TCLabel
        Left = 9
        Top = 8
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
      object CLabel4: TCLabel
        Left = 135
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
      object CLabel5: TCLabel
        Left = 233
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
      object CLabel6: TCLabel
        Left = 358
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
      object DBEidContratoIni: TCDBEdit
        Left = 73
        Top = 5
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
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidContratoFim: TCDBEdit
        Left = 157
        Top = 5
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
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEdtInicial: TCDBEdit
        Left = 277
        Top = 5
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
        Left = 380
        Top = 5
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
      object DBCKstAtivo: TCDBCheckBox
        Left = 476
        Top = 7
        Width = 48
        Height = 17
        Caption = 'Ativo'
        DataField = 'stAtivo'
        DataSource = dsPadrao
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCKstCancelado: TCDBCheckBox
        Left = 635
        Top = 7
        Width = 70
        Height = 17
        Caption = 'Cancelado'
        DataField = 'stCancelado'
        DataSource = dsPadrao
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCKstEncerrado: TCDBCheckBox
        Left = 547
        Top = 7
        Width = 73
        Height = 17
        Caption = 'Encerrado'
        DataField = 'stEncerrado'
        DataSource = dsPadrao
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 480
    Top = 272
    Bitmap = {
      494C0101020004002C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 416
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 168
  end
  inherited cdsLookUp: TClientDataSet
    Left = 240
  end
  inherited dspPadrao: TDataSetProvider
    Left = 168
    Top = 288
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 240
    Top = 288
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraodtInicial: TDateTimeField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateTimeField
      FieldName = 'dtFinal'
    end
    object cdsPadraostAtivo: TBooleanField
      FieldName = 'stAtivo'
    end
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoidContratoIni: TIntegerField
      FieldName = 'idContratoIni'
    end
    object cdsPadraoidContratoFim: TIntegerField
      FieldName = 'idContratoFim'
    end
    object cdsPadraostCancelado: TBooleanField
      FieldName = 'stCancelado'
    end
    object cdsPadraostEncerrado: TBooleanField
      FieldName = 'stEncerrado'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 312
    Top = 288
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT con.idEmpresa, con.idCadEmpresa, con.idFornecedor, cad.de' +
      'scAbreviada, idContratoFrete, dtEmissao, vlContratoFrete, stCont' +
      'ratoFrete FROM ContratoFrete con INNER JOIN vCadClienteContabil ' +
      'cad ON con.idFornecedor = cad.idCliente'
    Left = 240
    Top = 344
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGrididFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      Size = 30
    end
    object cdsGrididContratoFrete: TIntegerField
      FieldName = 'idContratoFrete'
      Required = True
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGridvlContratoFrete: TFMTBCDField
      FieldName = 'vlContratoFrete'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridstContratoFrete: TStringField
      FieldName = 'stContratoFrete'
      Required = True
      Size = 15
    end
  end
  inherited dsGrid: TDataSource
    Left = 312
    Top = 344
  end
  inherited dspGrid: TDataSetProvider
    Left = 168
    Top = 344
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 104
    Top = 288
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT con.idEmpresa, con.idCadEmpresa, con.idFornecedor, cad.de' +
      'scAbreviada, idContratoFrete, dtEmissao, vlContratoFrete, stCont' +
      'ratoFrete FROM ContratoFrete con INNER JOIN vCadClienteContabil ' +
      'cad ON con.idFornecedor = cad.idCliente'
    Left = 104
    Top = 344
  end
  inherited dsEmpresa: TDataSource
    Left = 456
    Top = 16
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 424
    Top = 16
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
    Left = 312
    Top = 240
  end
end
