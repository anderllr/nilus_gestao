inherited FrmContEliminaCancelado: TFrmContEliminaCancelado
  Caption = 'Elimina'#231#227'o de Lan'#231'amentos Cancelados'
  ClientHeight = 480
  ClientWidth = 743
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00000000000000000000333333040000000020191437261E1855080608060000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000003131311176777B7AA4927EC9BDA17CFC665544A72922
    203A000000000000000000000000000000000000000000000000000000000000
    000000000000000000004A4B4C34DCDBDBFFD7D4CFFFE4DBCCFFDCC4A5FFA68B
    6EE7241B12560000000000000000000000000000000000000000000000000000
    0000000000000000000075757772B2AFADFF89837DFFC5BEB8FFD7D6D5FEF3E5
    D1FFC6AC8DF7423B38691414140B000000000000000000000000000000000000
    000000000000383838059C9A9AB4938C86FF8F877FFFACA198FFDBD3CEFFDAD9
    D9FFE9E5E0F99B9C9CCC57575897212021420000000000000000000000000000
    00000000000044444524BBBAB8E7C1BAB3FF92908FFF959290FFDCCEBFFFE8DC
    D3FFD6CFCDFED8D6D5F5C3C4C6DD8A8A8CC3464747891C1B1B32070707050000
    0000000000005757575DC5C5C3FEE3DAD2FFAAA39FFF96979BFFAC9F93FFF4E0
    CFFFEEE0D1FFE3D9D0FFDBD6D1FFCFCECDE7B1B3B4D1A0A0A0DB3C3C3C830000
    0000000000007979789FCBCAC9FFE1D3C9FFCBBFB6FFAAAAACFFA8A7A6FFD3C9
    C1FFF1E2D4FFEFDFD0FFECDFD2FFE4DAD2FFD8D0CCF8E3E2E0F37C7D7D730000
    00002E2E2E159A9A9ADDD2D1D0FFD6C7BDFFDAD6D3FFBDBAB9FFB8B8B8FFA3A0
    9EFFE7E4DFFFE8E1DAFFECE0D4FFEEE0D4FFEEE1D6FFDDD4CDDF878481180000
    00004343434BB9BABAFEDCD7D5FFD1C6BEFFD3D4D4FFCFCCCBFF9D9C9CFF918F
    8FFFC4C1BFFFE5E3DFFFE3DEDAFFE6DED8FFECE1D9FFCBC0B77F000000000000
    000066666691D4D5D5FFE5E0DCFFD2CECBFFCBCBCCFFD4D5D5FFB9B7B6FF9391
    92FF9B9998FFD5D4D3FFDBD8D6FFDDDAD7FFD5D0CCE3B0A69D18000000002A2A
    2A13929292CEE8E8E8FFEDE8E4FFDFDFDFFFC7C8C8FFCCCDCDFFD1D1D1FFA9A6
    A6FF838282FF9E9D9CFFC3C3C3FFD7D6D5FFB3B0AD7B00000000000000004848
    482FBEBEBFF0F8F8F8FFF2EFEEFFF1F0F0FFD7D8D7FFC3C3C3FFCDCECEFFB8B8
    B8FF9D9C9BFFBBBAB8FF9FA09EFFC0C0C0DF9F9C9A1D00000000000000005252
    520BBFBFBFBEFFFFFFFFFCFBFBFFFEFEFEFFFAFAFAFFDDDDDDFFCACBCBFFB1B2
    B1FFACA9A8FFC7C7C7FFAAA9A6FFA6A6A67A0000000000000000000000000000
    0000B2B3B242DFDCDA88E0E0E0A1E3E3E3C2EFEFEFD9F5F5F5EFF2F2F2FFDBDB
    DBFF9F9D9CFFC5C4C4FFD6D6D4E4767676170000000000000000000000000000
    00000000000000000000C3C2C202C1C1C111C9C8C823CDCDCD3BD5D5D554D6D6
    D678CECECF9CE3E2E1C6C5C6C66A00000000000000000000000000000000E8FF
    0000E07F0000E03F0000E00F0000C0070000C0000000C0000000C00000008000
    0000800100008001000000030000000300000007000080070000E00F0000}
  Position = poDefault
  Visible = True
  ExplicitWidth = 759
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 173
    Width = 743
    Height = 271
    ExplicitTop = 173
    ExplicitWidth = 743
    ExplicitHeight = 271
    inherited DBGrid: TCDBGrid
      Width = 739
      Height = 254
      OnCellClick = DBGridCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'SEL'
          Title.Caption = 'Sel'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idLote'
          Title.Caption = 'Lote'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idContLancamento'
          Title.Caption = 'ID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtContLancamento'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaDeb'
          Title.Caption = 'D'#233'bito'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdPlanoContaCre'
          Title.Caption = 'Cr'#233'dito'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlContLancamento'
          Title.Caption = 'Valor'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obsContLancamento'
          Title.Caption = 'Hist'#243'rico'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpPlanoConta'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'stContLancamento'
          Visible = False
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 140
    Width = 743
    ExplicitTop = 140
    ExplicitWidth = 743
    inherited BtnFechar: TCBitBtn
      Left = 654
      ExplicitLeft = 654
    end
    object BtnNenhum: TCBitBtn
      Tag = 1
      Left = 245
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Nenhum'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BtnNenhumClick
    end
    object BtnTodos: TCBitBtn
      Tag = 1
      Left = 346
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Todos'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BtnTodosClick
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 743
    Height = 140
    Color = clWhite
    ParentBackground = False
    BackgroundGradientColor = 15201011
    GradientColor = 15201011
    ExplicitWidth = 743
    ExplicitHeight = 140
    inherited PanEmpresa: TCPanelGradient
      Width = 741
      Height = 30
      ExplicitWidth = 741
      ExplicitHeight = 30
      inherited lookidCnpjCpf: TCLookUp
        Left = 204
        Top = 5
        Visible = False
        ExplicitLeft = 204
        ExplicitTop = 5
      end
    end
    object CGroupBox2: TCGroupBox
      Left = 13
      Top = 83
      Width = 716
      Height = 46
      TabOrder = 1
      object CLabel6: TCLabel
        Left = 12
        Top = 19
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Lote de'
      end
      object CLabel10: TCLabel
        Left = 114
        Top = 19
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'at'#233
      end
      object CLabel1: TCLabel
        Left = 316
        Top = 19
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
        Left = 196
        Top = 19
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
      object CLabel12: TCLabel
        Left = 414
        Top = 19
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta'
      end
      object DBEidLoteIni: TCDBEdit
        Left = 54
        Top = 16
        Width = 54
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idLoteIni'
        DataSource = dsPadrao
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidLoteFim: TCDBEdit
        Left = 136
        Top = 16
        Width = 54
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idLoteFim'
        DataSource = dsPadrao
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEdtInicial: TCDBEdit
        Left = 240
        Top = 16
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
        Left = 338
        Top = 16
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
      object DBEcdPlanoConta: TCDBEdit
        Left = 449
        Top = 16
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'cdPlanoConta'
        DataSource = dsPadrao
        TabOrder = 4
        Find = dmFind.FindPlanoConta
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookdescPlanoContaDeb: TCLookUp
        Left = 503
        Top = 16
        Width = 202
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idEmpresa'
          'cdPlanoContaDeb')
        LookUpKey.Strings = (
          'cdPlanoConta')
        AlternateSQL.Strings = (
          
            'SELECT descPlanoConta FROM vPlanoConta WHERE tpPlanoConta = [EDt' +
            'pPlanoConta]  AND  idEmpresa = ? AND cdPlanoConta = ?')
        ClientDataSet = cdsLookUp
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vPlanoConta'
        ReturnField = 'descPlanoConta'
      end
    end
    object DBRGtpPlanoConta: TCDBRadioGroup
      Left = 13
      Top = 37
      Width = 716
      Height = 40
      Caption = 'Origem'
      Color = 15201011
      Columns = 2
      DataField = 'tpPlanoConta'
      DataSource = dsPadrao
      DragCursor = crArrow
      Items.Strings = (
        '&Fiscal'
        '&Gerencial')
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      Values.Strings = (
        'F'
        'G')
    end
  end
  object PanConfirmacao: TCPanelGradient [3]
    Left = 0
    Top = 444
    Width = 743
    Height = 36
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
    object BtnConfirmar: TCBitBtn
      Left = 9
      Top = 6
      Width = 160
      Height = 25
      Caption = '&Confirmar a Exclus'#227'o'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
  end
  inherited imgIcones: TImageList
    Left = 472
    Top = 312
    Bitmap = {
      494C010102000400200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 432
    Top = 312
  end
  inherited dspLookUp: TDataSetProvider
    Left = 216
    Top = 273
  end
  inherited cdsLookUp: TClientDataSet
    Left = 280
    Top = 273
  end
  inherited dspPadrao: TDataSetProvider
    Left = 216
    Top = 320
  end
  inherited cdsPadrao: TClientDataSet
    ProviderName = ''
    Left = 280
    Top = 320
    object cdsPadraotpPlanoConta: TStringField
      FieldName = 'tpPlanoConta'
      Size = 1
    end
    object cdsPadraoidLoteIni: TIntegerField
      FieldName = 'idLoteIni'
    end
    object cdsPadraoidLoteFim: TIntegerField
      FieldName = 'idLoteFim'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraocdPlanoConta: TIntegerField
      FieldName = 'cdPlanoConta'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 344
    Top = 320
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT idEmpresa, idLote, idContLancamento, dtContLancamento, cd' +
      'PlanoContaDeb, cdPlanoContaCre, vlContLancamento, obsContLancame' +
      'nto, tpPlanoConta, stContLancamento FROM ContLancamento WHERE 1=' +
      '2'
    Left = 280
    Top = 368
    object cdsGridSEL: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'SEL'
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididLote: TIntegerField
      FieldName = 'idLote'
      Required = True
    end
    object cdsGrididContLancamento: TIntegerField
      FieldName = 'idContLancamento'
      Required = True
    end
    object cdsGriddtContLancamento: TSQLTimeStampField
      FieldName = 'dtContLancamento'
      Required = True
    end
    object cdsGridcdPlanoContaDeb: TIntegerField
      FieldName = 'cdPlanoContaDeb'
    end
    object cdsGridcdPlanoContaCre: TIntegerField
      FieldName = 'cdPlanoContaCre'
    end
    object cdsGridvlContLancamento: TFMTBCDField
      FieldName = 'vlContLancamento'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsGridobsContLancamento: TStringField
      FieldName = 'obsContLancamento'
      Size = 1000
    end
    object cdsGridtpPlanoConta: TStringField
      FieldName = 'tpPlanoConta'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGridstContLancamento: TStringField
      FieldName = 'stContLancamento'
      Required = True
      Size = 15
    end
  end
  inherited dsGrid: TDataSource
    Left = 344
    Top = 368
  end
  inherited dspGrid: TDataSetProvider
    Left = 216
    Top = 368
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 160
    Top = 320
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT idEmpresa, idLote, idContLancamento, dtContLancamento, cd' +
      'PlanoContaDeb, cdPlanoContaCre, vlContLancamento, obsContLancame' +
      'nto, tpPlanoConta, stContLancamento FROM ContLancamento WHERE 1=' +
      '2'
    Left = 160
    Top = 368
  end
end
