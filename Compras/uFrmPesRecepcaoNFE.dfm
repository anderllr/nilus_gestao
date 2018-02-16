inherited FrmPesRecepcaoNFE: TFrmPesRecepcaoNFE
  Caption = 'Busca produtos recepcionados'
  ClientHeight = 456
  ClientWidth = 766
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000FDFDFD01F0F0F20DCCCCD029B2B2
    B63CE2E2E411F9F9F90200000000000000000000000000000000000000000000
    0000000000000000000000000000FDFDFD01F4F4F80BD1D1DB3380809EB76969
    84CFAEAEBB4FEBEBF010F9F9F902000000000000000000000000000000000000
    00000000000000000000FDFDFD01F2F2F80AD4D4E7308888C0BB5A5A8CF47171
    B0F68080C0D8ADADC24EE8E8EF0FF9F9F9020000000000000000000000000000
    00000000000000000000EFEFF609CCCCE32B8080D4B96C6CCEF441417EFD6F6F
    D0FE7B7BE7F77171C7D7A5A5BE4AE6E6EE0EF8F8F80200000000000000000000
    000000000000EAEAF106BEBED6226666C9B55A5AE7F44D4DC8FD33337CFF5656
    C8FF6161E7FE5C5CDEF75858B8D59898AC47E3E3E80DF8F8F801000000000000
    0000E8E8ED06AEAEBE1D454596B03535BCF33535C8FD3434ACFF27275CFF3636
    83FF4343B9FF3F3FC7FE313199F73C3C90D48F8FAE43E0E0EB0BF6F6F701E7E7
    EF06AEAEC81D383889AF1B1B87F312127FFC14146BFF23235BFF505064FF7171
    82FF39395DFF222272FF1C1C9BFE2727CFF73333B4D28181A43ED6D6E00BC4C4
    D6124949ABA81F1FBFF11111BAFC1010ADFF111185FF333345FFBABABDFFD0D0
    D0FF8A8A94FF202065FF1616BCFF1616CFFE1B1BC2F53737A0C986869730CDCD
    E3185B5BC4B52222BBF20F0F9EFD0A0A77FF090951FF31314EFFB7B7BAFFCDCD
    CEFF868694FF1C1C59FF0E0E99FF0F0FA3FD1A1A8DF4434385C7ACACBE28EDED
    F807C7C7E4224B4B89BF1C1C80F41010A2FD0F0FA0FF191959FF434354FF6161
    74FF2B2B50FF161688FF0F0F94FD1C1C9CF53F3FA3CEB7B7D12EE6E6EB090000
    0000EEEEF207C7C7DD215050BDBD2222C3F41111AFFD0C0C64FF12126DFF1111
    55FF13138CFF1313B5FD2121C7F54545C7CEB8B8DE2EEBEBF508000000000000
    000000000000EFEFF907C9C9ED225353CFBE2222B1F40C0C6AFD1010A4FF0E0E
    96FF0E0E84FD2020BEF54444CECEBCBCE92EECECF90800000000000000000000
    00000000000000000000EFEFFA07C9C9EB225050AEBE1D1D7FF41414B4FD1414
    B8FD1A1A77F54545B7CEB9B9E32FEBEBF8080000000000000000000000000000
    0000000000000000000000000000EFEFF707C6C6DB234B4BA3C02626C0F32424
    C0F44545ADCEBABAD22FECECF608000000000000000000000000000000000000
    000000000000000000000000000000000000EEEEF507C9C9E9225F5FCFB85656
    CEC6BBBBE22EECECF40800000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000EEEEF907D3D3EF1CCCCC
    EC25EAEAF709000000000000000000000000000000000000000000000000F81F
    0000F00F0000E0070000E0030000C00100008000000000000000000000000000
    00000000000080010000C0030000E0070000F00F0000F81F0000FC3F0000}
  ExplicitWidth = 782
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel [0]
    Left = 0
    Top = 416
    Width = 766
    Height = 4
    Align = alBottom
    Shape = bsFrame
    Style = bsRaised
    ExplicitLeft = -157
    ExplicitTop = 422
    ExplicitWidth = 893
  end
  inherited GrupoGrid: TCGroupBox
    Top = 103
    Width = 766
    Height = 313
    TabOrder = 2
    ExplicitTop = 103
    ExplicitWidth = 766
    ExplicitHeight = 313
    inherited DBGrid: TCDBGrid
      Width = 762
      Height = 296
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs]
      OnCellClick = DBGridCellClick
      OnColEnter = DBGridColEnter
      OnDrawColumnCell = DBGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'sel'
          Title.Caption = 'Sel.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idRecepcao'
          Title.Caption = 'Emp.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idProduto'
          Title.Caption = 'Fil.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idPedido'
          Title.Caption = 'Pedido'
          Width = 60
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
          FieldName = 'idProduto'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Produto'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtProduto'
          Title.Caption = 'Qtde.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtSaldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Caption = 'Saldo'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtRecebida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Caption = 'Recebido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descBem'
          Title.Caption = 'M'#225'quina/Ve'#237'culo'
          Width = 170
          Visible = True
        end>
    end
    object DBEqtRecebida: TCDBEdit
      Left = 492
      Top = 91
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'qtRecebida'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 68
    Width = 766
    Height = 35
    Visible = False
    ExplicitTop = 68
    ExplicitWidth = 766
    ExplicitHeight = 35
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 12
      Top = 6
      Visible = False
      ExplicitLeft = 12
      ExplicitTop = 6
    end
    inherited BtnFechar: TCBitBtn
      Left = 582
      Top = 5
      ExplicitLeft = 582
      ExplicitTop = 5
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 766
    Height = 68
    TabOrder = 0
    ExplicitWidth = 766
    ExplicitHeight = 68
    object Bevel2: TBevel [0]
      Left = 1
      Top = 33
      Width = 764
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
      Width = 764
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
      Width = 764
      Height = 28
      ExplicitTop = 5
      ExplicitWidth = 764
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
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 37
      Width = 764
      Height = 35
      Align = alTop
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
      object CLabel11: TCLabel
        Left = 16
        Top = 9
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornec.'
      end
      object LookRazao: TCLookUp
        Left = 118
        Top = 6
        Width = 296
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
        Top = 6
        Width = 53
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'idFornecedor'
        DataSource = dsPadrao
        ReadOnly = True
        TabOrder = 0
        Find = dmFind.FindFornecedor
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
  end
  object PanConfirmacao: TCPanelGradient [4]
    Left = 0
    Top = 420
    Width = 766
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
      Left = 17
      Top = 6
      Width = 113
      Height = 25
      Caption = '&Confirmar'
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
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
    object BtnNenhum: TCBitBtn
      Tag = 1
      Left = 271
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Nenhum'
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
      TabOrder = 1
      OnClick = BtnNenhumClick
    end
    object BtnTodos: TCBitBtn
      Tag = 1
      Left = 372
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Todos'
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
      TabOrder = 2
      OnClick = BtnTodosClick
    end
    object CBitBtn1: TCBitBtn
      Left = 582
      Top = 5
      Width = 75
      Height = 25
      Action = actFechar
      Caption = '&Fechar'
      TabOrder = 3
    end
  end
  inherited imgIcones: TImageList
    Left = 352
    Top = 152
  end
  inherited Acao: TActionList
    Left = 264
    Top = 152
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 72
    Top = 128
  end
  inherited cdsLookUp: TClientDataSet
    Left = 136
    Top = 128
  end
  inherited dspPadrao: TDataSetProvider
    Left = 176
    Top = 280
  end
  inherited cdsPadrao: TClientDataSet
    Left = 248
    Top = 280
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 320
    Top = 280
  end
  inherited cdsGrid: TClientDataSet
    ProviderName = ''
    Left = 248
    Top = 216
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Size = 1
    end
    object cdsGrididPedido: TIntegerField
      FieldName = 'idPedido'
    end
    object cdsGriddtPedido: TDateField
      FieldName = 'dtPedido'
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
    object cdsGridqtSaldo: TFloatField
      FieldName = 'qtSaldo'
    end
    object cdsGridqtRecebida: TFloatField
      FieldName = 'qtRecebida'
    end
    object cdsGrididMaquina: TIntegerField
      FieldName = 'idMaquina'
    end
    object cdsGriddescMaquina: TStringField
      FieldName = 'descMaquina'
      Size = 100
    end
    object cdsGridvlProduto: TCurrencyField
      FieldName = 'vlProduto'
    end
    object cdsGrididPedidoProd: TIntegerField
      FieldName = 'idPedidoProd'
    end
    object cdsGrididRecepcao: TIntegerField
      FieldName = 'idRecepcao'
    end
  end
  inherited dsGrid: TDataSource
    Left = 320
    Top = 216
  end
  inherited dspGrid: TDataSetProvider
    Left = 176
    Top = 216
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 104
    Top = 280
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, idPedidoCompra, dtPedido, obsPed' +
      'ido, stPedido FROM PedidoCompra WHERE 1=2'
    Left = 104
    Top = 216
  end
  inherited dsEmpresa: TDataSource
    Left = 568
    Top = 8
  end
end
