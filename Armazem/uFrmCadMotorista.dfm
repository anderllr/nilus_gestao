inherited FrmCadMotorista: TFrmCadMotorista
  Caption = 'Cadastro de Motoristas'
  ClientHeight = 458
  ClientWidth = 627
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000210007096700020564000000370000000B00000000000000000000
    000000000000000000050000002E0000003A0000001400000002000000000000
    000609222D6F41B6D6DF3DB2CCDA1A677CBE000D117400000023000000000000
    000000000003000000401A576AAE207993C7041C287E00000018000000000000
    00101F5983B074DEFFEB73E8FFDA62EAFFDF37AFD3DB08314296000000260000
    00100000004E225D6FB468E3F9DF61E9FFE2238ACCD60000062A000000000000
    0003102D517A7492B6ED95C6E5F968CBF3DF5BE1FFDB3DC2EADC062833990312
    168B2F8599C75BDFFDDE58D4FFD966B6EDF21C4C7DA000000006000000000000
    0000000000000000102E394868A871A2CEF353C0F4DE59DEFFD94CBED6DB56C6
    DCDD64E8FFDC46C5FAD95EB2EEF03B6499CE00000E2300000000000000000000
    00000000000000000000000000031B3457924E9EDBEF47C4FADA65E1FFD95EDC
    FFD94FC5F8DD72B9EBF15376A3D3000A19320000000000000000000000000000
    000000000000000000000000000000000B2B1461ABD822A4F4DF2AB9FFD855C6
    FFE088C5EBEC416181CE00020C63000000180000000700000000000000000000
    000000000000000000000000000000000014064C91BF1296F2E216ACFFD933BA
    FFDC2CA1D7D51A728CC71D6E81C10A3441A4000003510000000A000000000000
    00000000000000000000000000000000000504376FA4168AE8E915A6FCD91EB3
    FFD845C9FDDC71EAFFE26FEEFFE144CAFFE710588EAF00000011000000000000
    0000000000000000000000000000000000000015335F3579C5F3228FE9E1309B
    EBE185B5DBED92AAC2E9A3BED3F383B2E0FB0A2F5A7700000000000000000000
    000000000000000000000000000000000000000000071B335D9B89A6D1FC7890
    BBF8141C3E98000000250F131F40181E30550000000B00000000000000000000
    00000000000000000000000000000000000000000000000000081517256C1531
    3EB01952529D061E1E6E00000015000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000001A31614ABE
    DCC989FFFFC650C7E5D002223D75000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000010407E9B3ABA
    FFEB4EC9FBD03BBEFFE8124487A7000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000070F3C655083
    CDF786C8F6FC5285CEF70910426C000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000031E19
    2C5B504B5A9B201B2B5E000000040000000000000000000000000000000083C1
    0000018100000001000000010000C0030000E0070000F0030000F0010000F001
    0000F8030000F8030000FC0F0000FE0F0000FE0F0000FE0F0000FE0F0000}
  ExplicitWidth = 643
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 454
    Width = 627
    ExplicitTop = 463
    ExplicitWidth = 633
  end
  object f: TBevel [1]
    Left = 0
    Top = 0
    Width = 627
    Height = 31
    Align = alTop
    ExplicitLeft = -40
    ExplicitWidth = 705
  end
  object CLabel1: TCLabel [2]
    Left = 13
    Top = 11
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo'
  end
  object CLabel14: TCLabel [3]
    Left = 466
    Top = 11
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Status'
  end
  object Bevel3: TBevel [4]
    Left = 0
    Top = 31
    Width = 627
    Height = 3
    Align = alTop
    Shape = bsTopLine
    Style = bsRaised
    ExplicitLeft = -40
    ExplicitWidth = 705
  end
  inherited PagAbas: TCPageControl
    Top = 34
    Width = 627
    Height = 389
    TabOrder = 1
    ExplicitTop = 34
    ExplicitWidth = 627
    ExplicitHeight = 389
    inherited TabAbas: TTabSheet
      Caption = 'Motorista'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 619
      ExplicitHeight = 360
      inherited CGroupBox2: TCGroupBox
        Left = 3
        Top = 221
        Width = 614
        TabOrder = 2
        ExplicitLeft = 3
        ExplicitTop = 221
        ExplicitWidth = 614
        inherited DBGrid: TCDBGrid
          Left = 6
          Top = 11
          Width = 602
          Height = 122
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 4
        Top = 6
        Width = 614
        Height = 67
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel2: TCLabel
          Left = 191
          Top = 42
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome'
        end
        object CLabel3: TCLabel
          Left = 17
          Top = 20
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'CNPJ / CPF'
        end
        object CLabel31: TCLabel
          Left = 52
          Top = 42
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cnh'
        end
        object DBEdescMotorista: TCDBEdit
          Left = 224
          Top = 39
          Width = 331
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMotorista'
          DataSource = dsPadrao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCnpjCpf: TCDBEdit
          Left = 77
          Top = 17
          Width = 124
          Height = 19
          BevelKind = bkTile
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          DataField = 'idCnpjCpf'
          DataSource = dsPadrao
          ParentBiDiMode = False
          TabOrder = 0
          OnExit = DBEidCnpjCpfExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBECnh: TCDBEdit
          Left = 77
          Top = 39
          Width = 108
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Cnh'
          DataSource = dsPadrao
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 3
        Top = 79
        Width = 614
        Height = 136
        Caption = 'Endere'#231'o e Informa'#231#245'es Adicionais'
        TabOrder = 1
        object CLabel28: TCLabel
          Left = 335
          Top = 64
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Complemento'
        end
        object CLabel29: TCLabel
          Left = 32
          Top = 64
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bairro'
        end
        object CLabel32: TCLabel
          Left = 15
          Top = 42
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Endere'#231'o'
        end
        object CLabel34: TCLabel
          Left = 496
          Top = 20
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = 'CEP'
        end
        object CLabel35: TCLabel
          Left = 488
          Top = 42
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel36: TCLabel
          Left = 27
          Top = 20
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cidade'
        end
        object CLabel37: TCLabel
          Left = 18
          Top = 86
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telefone'
        end
        object CLabel38: TCLabel
          Left = 226
          Top = 86
          Width = 18
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fax'
        end
        object CLabel39: TCLabel
          Left = 352
          Top = 86
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Celular'
        end
        object CLabel40: TCLabel
          Left = 36
          Top = 108
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Email'
        end
        object DBEcomplemento: TCDBEdit
          Left = 406
          Top = 61
          Width = 197
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'complemento'
          DataSource = dsPadrao
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEbairro: TCDBEdit
          Left = 66
          Top = 61
          Width = 229
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'bairro'
          DataSource = dsPadrao
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEendereco: TCDBEdit
          Left = 66
          Top = 39
          Width = 311
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'endereco'
          DataSource = dsPadrao
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEcep: TCDBEdit
          Left = 521
          Top = 17
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'cep'
          DataSource = dsPadrao
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEnumero: TCDBEdit
          Left = 531
          Top = 39
          Width = 72
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'numero'
          DataSource = dsPadrao
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCidade: TCDBEdit
          Left = 66
          Top = 17
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCidade'
          DataSource = dsPadrao
          TabOrder = 0
          Find = FindCidade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCidade: TCLookUp
          Left = 125
          Top = 17
          Width = 203
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'descCidade'
        end
        object DBEfone: TCDBEdit
          Left = 124
          Top = 83
          Width = 96
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'fone'
          DataSource = dsPadrao
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDDD: TCLookUp
          Left = 66
          Top = 83
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'codDDD'
        end
        object DBEfax: TCDBEdit
          Left = 250
          Top = 83
          Width = 96
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'fax'
          DataSource = dsPadrao
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEcelular: TCDBEdit
          Left = 391
          Top = 83
          Width = 105
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'celular'
          DataSource = dsPadrao
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEemail: TCDBEdit
          Left = 66
          Top = 105
          Width = 231
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecLowerCase
          DataField = 'email'
          DataSource = dsPadrao
          TabOrder = 13
          OnExit = DBEemailExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnCadCidade: TCBitBtn
          Left = 383
          Top = 16
          Width = 92
          Height = 19
          Caption = '&Cidades'
          TabOrder = 3
          TabStop = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00757375FF747582FF1A2D62FF062968FF032059FF7F808EFF777377FFC8C7
            C8FFFEFEFEFFFBFBFBFF565356FF302F36FF323843FFB0ADB0FFFF00FF00FF00
            FF00777377FFBFBBCCFF6281BEFF1466CBFF0E4DABFFC0C6DBFF898689FF7A77
            79FF696769FF514A4CFF878487FF828692FF31455FFF0A0604FFFF00FF00FF00
            FF00777277FFC6C1D2FFA4B4D9FF397FD5FF0B4CABFFBEC5DAFF898788FF5350
            51FF959094FF999499FF9A969AFF828492FF384A64FF666162FFFEFEFEFFF4F4
            F7FF736F73FFD2D0DBFF99ACCFFF5B81BDFF2B539CFFD6D8E6FF8F8D90FF716F
            73FFA2A0A2FFA09DA0FF999699FF828491FF4A5B70FFCAC9C9FF898EACFF6C6F
            B1FF595679FFD3D1D6FFD6DCE8FFC8CDDFFFC6CADBFFEDE8EEFF7A7993FF2B2E
            76FF6D6A80FFA5A2A5FF9E9B9EFF828592FF4A5A70FFCDCCCBFFE8E9EFFF646B
            9CFF6C6FC4FF6F71A1FF9597B1FF9999B4FF9A98B3FF7C7EA2FF212894FF2325
            7BFFA49FAAFFAEA9AEFFA6A3A6FF838793FF495A70FFCCCBCBFFFF00FF00FDFD
            FDFF4B5085FF8D92EEFF565EDEFF3740CCFF282EC1FF1A21B6FF1E2283FF8F8C
            9DFFBEB8BEFFB4B2B4FFADA9ADFF868A96FF485A70FFCCCBCBFFFF00FF00FF00
            FF00181826FF6D71A9FF8A8FF2FF5156DFFF3339CDFF141B93FF838198FFC8C4
            C8FFC2BFC2FFBFB9BFFFB1B0B1FF8B8F9BFF485A70FFCCCBCBFFFF00FF00FF00
            FF00151312FF4E5065FFA6A9E2FF8186EFFF12188FFF7F7F9EFFD7D2D7FFD0CB
            D0FFCDC7CDFFC1C0C1FFBCB8BCFF9094A0FF485A70FFCCCBCBFFFF00FF00FF00
            FF004C4849FFCCCBCCFFA8AAC2FF5F63A3FFAEAFBEFFE7E3E7FFDFDBDFFFD5D0
            D5FFC6C5C8FFC3BFC3FFAFAEAFFF888D9BFF4A5B72FFCCCBCBFFFF00FF00FF00
            FF00777271FFFDFCFDFFFDFCFDFFF8F5F8FFF7F2F7FFECE9EDFFC3C0C7FF949C
            AEFF47617EFF86868DFF717F94FF5F86ADFF5C758EFFD0CFCEFFFF00FF00FF00
            FF00787373FFFEFDFEFFFFFEFFFFFAF7FAFFF0ECF0FFD0CDD2FF586A7DFF568D
            C6FF7BB7E9FF7B9EB5FF86C0EEFF8FC4E5FF89979FFFECEBEBFFFF00FF00FF00
            FF00787373FFFBF9FBFFEFEDEFFFBCB7BCFF898B93FF617FA1FF70A3CCFF648F
            AEFFA0D6F5FFAAE1FFFF63808FFF8D9296FFCDCECEFFFF00FF00FF00FF00FF00
            FF00706C6BFFBBB8BBFF5F6E86FF618CB9FF89C6F6FF6A8EA1FF6C7A83FFC8CC
            CEFF818283FF767779FFF2F4F4FFF9F9F9FFFEFEFEFFFF00FF00FF00FF00FF00
            FF00B2B0B2FF527190FF89C7F2FF799DB0FF545355FFD5D4D5FFFEFEFEFFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00F7F7F7FF757576FF30343EFFD6D5D5FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object LookEstado2: TCLookUp
          Left = 334
          Top = 17
          Width = 43
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'idEstado'
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 423
    Width = 627
    TabOrder = 2
    ExplicitTop = 423
    ExplicitWidth = 627
    inherited BtnFechar: TCBitBtn
      Left = 547
      ExplicitLeft = 547
    end
  end
  object DBEidMotorista: TCDBEdit [7]
    Left = 52
    Top = 9
    Width = 77
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idMotorista'
    DataSource = dsPadrao
    TabOrder = 0
    OnExit = DBEidMotoristaExit
    Find = FindMotorista
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEstMotorista: TCDBEdit [8]
    Left = 503
    Top = 8
    Width = 118
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = 14149350
    DataField = 'stMotorista'
    DataSource = dsPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    DecimalControl = True
    KeyMode = kmUSUpper
  end
  inherited imgIcones: TImageList
    Left = 480
    Top = 312
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000DEDEDEFF989A9BFF9B9B
      9CFFC8C8C8FFF4F4F4FF00000000000000000000000000000000FAFAFAFFD1D1
      D1FFC5C5C5FFEBEBEBFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FF939EA3FF58BFDBFF59BD
      D3FF548D9DFF8B9092FFDCDCDCFF0000000000000000FCFCFCFFBFBFBFFF628C
      99FF5096AAFF828E94FFE7E7E7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEFFF648CA9FF7EE0FFFF87EB
      FFFF75ECFFFF53BAD9FF6D858FFFD9D9D9FFEFEFEFFFB1B1B1FF638C99FF7AE6
      F9FF72EBFFFF469CD4FFD5D5D5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF8C9AABFF7D99BBFF97C7
      E5FF7AD1F4FF72E5FFFF57CAECFF697E84FF757D7FFF5C9FAFFF70E3FDFF70DA
      FFFF6DB9EDFF708EADFFF9F9F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D3FF7C86
      9BFF77A6D0FF69C8F5FF71E2FFFF65C7DBFF6CCDE0FF79EBFFFF61CDF9FF67B6
      EFFF6081ACFFDCDCDDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FCFF7C8A9EFF59A4DDFF61CCF9FF7BE5FFFF75E1FFFF66CCF7FF79BCECFF708D
      B2FFCDCED1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4D4D5FF3779B7FF3DAFF5FF4AC3FFFF69CCFFFF90C9ECFF657F99FF9C9C
      A0FFE7E7E7FFF8F8F8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEBFF4478ACFF2CA1F3FF38B8FFFF4FC3FFFF4EB0DDFF4C90A5FF5391
      9FFF617C84FFAEAEAEFFF5F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFAFF5D7EA2FF2A94E9FF37B3FBFF40BEFFFF5ED0FDFF81ECFFFF7FF0
      FFFF55CEFFFF5A8CB1FFEEEEEEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0A7B3FF3E7FC7FF3C9CEBFF48A6EDFF8DBADDFF9BB1C7FFA7C1
      D5FF84B3E0FF8C9DB2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F8FF74839CFF8AA7D1FF7B93BCFF72778BFFDADADAFFC2C3
      C6FFB2B4BAFFF4F4F4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F7FF9B9CA2FF5D7079FF719494FF939D9DFFEAEA
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009EA7B0FF70CBE3FFA3FFFFFF70D1E9FF8A99
      A5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006D8AB0FF49BFFFFF6ED2FBFF4CC3FFFF6384
      B0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9FB1FF5586CEFF87C8F6FF5788CFFF9699
      AEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFAEACB3FF94919AFFACAAB0FFFBFB
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0083C10000000000000181000000000000
      00010000000000000001000000000000C003000000000000E007000000000000
      F003000000000000F001000000000000F001000000000000F803000000000000
      F803000000000000FC0F000000000000FE0F000000000000FE0F000000000000
      FE0F000000000000FE0F00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 544
    Top = 312
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'Select * From Motorista'
    BeforeApplyUpdates = cdsPadraoBeforeApplyUpdates
    Left = 512
    Top = 280
    object cdsPadraoidMotorista: TSmallintField
      FieldName = 'idMotorista'
      Required = True
    end
    object cdsPadraodescMotorista: TStringField
      FieldName = 'descMotorista'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsPadraoidCnpjCpf: TStringField
      FieldName = 'idCnpjCpf'
      Required = True
      FixedChar = True
      Size = 18
    end
    object cdsPadraoCnh: TStringField
      FieldName = 'Cnh'
      FixedChar = True
    end
    object cdsPadraoendereco: TStringField
      FieldName = 'endereco'
      Required = True
      FixedChar = True
      Size = 60
    end
    object cdsPadraonumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsPadraocomplemento: TStringField
      FieldName = 'complemento'
      FixedChar = True
      Size = 30
    end
    object cdsPadraobairro: TStringField
      FieldName = 'bairro'
      FixedChar = True
      Size = 30
    end
    object cdsPadraocep: TStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 10
    end
    object cdsPadraoidCidade: TIntegerField
      FieldName = 'idCidade'
      Required = True
    end
    object cdsPadraofone: TStringField
      FieldName = 'fone'
      FixedChar = True
      Size = 18
    end
    object cdsPadraofax: TStringField
      FieldName = 'fax'
      FixedChar = True
      Size = 18
    end
    object cdsPadraocelular: TStringField
      FieldName = 'celular'
      FixedChar = True
      Size = 18
    end
    object cdsPadraoemail: TStringField
      FieldName = 'email'
      FixedChar = True
      Size = 60
    end
    object cdsPadraostMotorista: TStringField
      FieldName = 'stMotorista'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsMotorista
    Left = 480
    Top = 280
  end
  inherited dsPadrao: TDataSource
    Left = 544
    Top = 280
  end
  inherited cdsLookUp: TClientDataSet
    Left = 512
    Top = 248
  end
  inherited dspLookUp: TDataSetProvider
    Left = 480
    Top = 248
  end
  inherited ImgBotoes: TImageList
    Left = 512
    Top = 312
  end
  object FindCidade: TCFind
    SelectClause.Strings = (
      'SELECT idCidade, descCidade, idEstado FROM Cidade')
    OrderByClause.Strings = (
      'ORDER BY descCidade')
    FindField = 'descCidade'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCidade'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Uf')
    TypeFind = fFindNormal
    Left = 544
    Top = 249
  end
  object FindMotorista: TCFind
    SelectClause.Strings = (
      
        'SELECT idMotorista, descMotorista, cnh, idCnpjCpf  FROM Motorist' +
        'a')
    OrderByClause.Strings = (
      'ORDER BY descMotorista')
    FindField = 'descMotorista'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMotorista'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome'
      'CNH'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 544
    Top = 345
  end
  object sdsMotorista: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 424
    Top = 280
  end
end
