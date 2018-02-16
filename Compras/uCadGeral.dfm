inherited frmCadGeral: TfrmCadGeral
  Caption = 'Cadastro'
  ClientHeight = 428
  ClientWidth = 786
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000F0F0F017B9B9B9319999993D797979465F5F
    5F48454545442B2B2B3812121228060606130000000500000000000000000000
    0000000000000000000000000000FFFFFF18FFFFFF39FFFFFF59FFFFFF7DFFFF
    FF9DFFFFFFBAF8F8F8D2EEEEEEE1CFCFCFE6ADADADCD6B6B6B8C000000000000
    0000000000009A675B0E6E4941365B4541575F545267928E8D62EFEEEE64FFFF
    FF80FFFFFFA3FFFFFFC2FFFFFFDFFFFFFFF8FFFFFFFFA9A9A9B1000000000000
    000000000000D8C2BD11B8908746A16C61848C5F55C2755048E4604741D76E65
    63B0C5C3C3A0DFDDDDB6DAD9D8D2E2E1E1EAEFEEEEFF6868687D000000000000
    000000000000CCAFA919AF81774898655A808E6156BB8C5F54EC936257FF9060
    55FF7A5952E7827977CBBCBAB9CABEBCBBE3B7B5B4F72E2A2973000000000000
    0000DECCC803C2A09820A9786D4F956358878B5E53C08B5E53EB936257FFA572
    66FFB99188FFB58B82FF836861E8A9A6A6DBAFADACE21814133E000000000000
    0000D3BBB508B78E8528A26E6258926156908C5E53C6916156EF9F6A5EFFAC7D
    72FFBC968DFFCBAEA7FFD3BBB5FFA8766BF86D6563CD0C080709000000000000
    0000C7A8A10CAE8075329C685C6491615699916156CE9A675BF4A8766BFFB68D
    84FFC5A49DFFCDB0AAFFD0B5AFFFCAACA5FE6053509E00000000000000000000
    0000BE999113A8766B3C98655A6F936257A498655AD6A47165F7B1857BFFBF9B
    93FFCAADA6FFCDB0AAFFCDB0AAFFA48983CD5353533E0000000000000000CFB4
    AE01B8908719A572674698655A79976459ADA16B5FDDAC7D72FBBA938AFFC7A7
    A0FFCAACA5FFCDB0AAFFAF8278D1D4D2D2832929291E0000000000000000E4D5
    D104B48A8021A572664F9D695D84A16B5FB7A9786DE4B58B82FDC29F97FFC7A7
    A0FFC8A9A2FFB68E84DBB3ADAC62B1AFAF67140E0D190000000000000000E1D1
    CD08B3887E2AA471655EA26E6290A8766BC1B1857BEABC968EFEC3A199FFC3A1
    99FFBF9B93EC725D5849FFFFFF2C6C69684319110F160000000000000000EFE6
    E402BF9B9310AE807641AA7A6F94AE8075D7B89087F5BE9991FFBF9B93FFC29F
    97FFA06A5ED519110F2019110F0519110F1119110F0400000000000000000000
    00000000000000000000C2A0981FC3A19976BC968EE6BA938AFFBA938AFFB78E
    85FFB1857BFF6E4941550000000019110F040000000000000000000000000000
    000000000000000000000000000000000000CDB0AA2CC09C94ABB4897FFFAE80
    75FFBE999195CAADA60300000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000BC968E53B68C
    839ADBC7C208000000000000000000000000000000000000000000000000F003
    0000F0010000C0010000C0010000C00100008001000080010000800300008003
    000000030000000300000003000000030000E0170000F81F0000FE3F0000}
  ExplicitWidth = 802
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 13
  object f: TBevel [0]
    Left = 0
    Top = 0
    Width = 786
    Height = 31
    Align = alTop
    ExplicitTop = -3
    ExplicitWidth = 803
  end
  inherited Bevel1: TBevel
    Top = 393
    Width = 786
    ExplicitTop = 540
    ExplicitWidth = 759
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
    Width = 786
    Height = 3
    Align = alTop
    Shape = bsTopLine
    Style = bsRaised
    ExplicitTop = 33
    ExplicitWidth = 759
  end
  inherited PanBotoes: TCPanelGradient [5]
    Top = 397
    Width = 786
    ExplicitTop = 321
    ExplicitWidth = 786
    inherited BtnFechar: TCBitBtn
      Left = 537
      ExplicitLeft = 537
    end
  end
  object DBEidCadGeral: TCDBEdit [6]
    Left = 52
    Top = 8
    Width = 77
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCadGeral'
    DataSource = dsPadrao
    TabOrder = 2
    OnExit = DBEidCadGeralExit
    Find = FindCadGeral
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEstCadGeral: TCDBEdit [7]
    Left = 503
    Top = 8
    Width = 118
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = 14149350
    DataField = 'stCadGeral'
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
  inherited PagAbas: TCPageControl [8]
    Top = 34
    Width = 786
    Height = 359
    ActivePage = TabContabil
    OnChange = PagAbasChange
    ExplicitTop = 34
    ExplicitWidth = 786
    ExplicitHeight = 359
    inherited TabAbas: TTabSheet
      Caption = 'Cadastro Geral'
      ExplicitWidth = 778
      ExplicitHeight = 330
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 11
        Width = 614
        Height = 88
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel6: TCLabel
          Left = 370
          Top = 40
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Abreviado'
        end
        object CLabel2: TCLabel
          Left = 33
          Top = 40
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome'
        end
        object CLabel3: TCLabel
          Left = 6
          Top = 18
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'CNPJ / CPF'
        end
        object CLabel31: TCLabel
          Left = 196
          Top = 18
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Inscri'#231#227'o Estadual'
        end
        object CLabel8: TCLabel
          Left = 300
          Top = 62
          Width = 142
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data da atualiza'#231#227'o cadastral'
        end
        object CLabel13: TCLabel
          Left = 429
          Top = 18
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Inscri'#231#227'o Municipal'
        end
        object CLabel4: TCLabel
          Left = 16
          Top = 62
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cadastro'
        end
        object CLabel5: TCLabel
          Left = 157
          Top = 62
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Altera'#231#227'o'
        end
        object DBEdescAbreviada: TCDBEdit
          Left = 425
          Top = 37
          Width = 178
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descAbreviada'
          DataSource = dsCadAdicional2
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdescCadAdicional: TCDBEdit
          Left = 66
          Top = 37
          Width = 290
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descCadAdicional'
          DataSource = dsCadAdicional2
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCnpjCpf: TCDBEdit
          Left = 66
          Top = 15
          Width = 124
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCnpjCpf'
          DataSource = dsCadAdicional2
          TabOrder = 0
          OnExit = DBEidCnpjCpfExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidInscEstadual: TCDBEdit
          Left = 289
          Top = 15
          Width = 96
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idInscEstadual'
          DataSource = dsCadAdicional2
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtAtualizacao: TCDBEdit
          Left = 448
          Top = 59
          Width = 85
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtAtualizacao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidInscMunicipal2: TCDBEdit
          Left = 524
          Top = 15
          Width = 79
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idInscMunicipal'
          DataSource = dsCadAdicional2
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtCadastro: TCDBEdit
          Left = 66
          Top = 59
          Width = 85
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'dtCadastro'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtAlteracao: TCDBEdit
          Left = 209
          Top = 59
          Width = 85
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'dtAlteracao'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmDate
        end
        object btnValidaInscricao: TCBitBtn
          Left = 391
          Top = 15
          Width = 28
          Height = 19
          TabOrder = 8
          OnClick = btnValidaInscricaoClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
            6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
            A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
            4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
            00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 3
        Top = 105
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
        object CLabel7: TCLabel
          Left = 303
          Top = 108
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Web Site'
        end
        object DBEcomplemento: TCDBEdit
          Left = 406
          Top = 61
          Width = 197
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'complemento'
          DataSource = dsCadAdicional2
          TabOrder = 6
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
          DataSource = dsCadAdicional2
          TabOrder = 5
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
          DataSource = dsCadAdicional2
          TabOrder = 3
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
          DataSource = dsCadAdicional2
          TabOrder = 2
          OnExit = DBEcepExit
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
          DataSource = dsCadAdicional2
          TabOrder = 4
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
          DataSource = dsCadAdicional2
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
          DataSource = dsCadAdicional2
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
          DataSource = dsCadAdicional2
          TabOrder = 8
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
          TabOrder = 7
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsCadAdicional2
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
          DataSource = dsCadAdicional2
          TabOrder = 9
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
          DataSource = dsCadAdicional2
          TabOrder = 10
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
          DataSource = dsCadAdicional2
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEweb: TCDBEdit
          Left = 352
          Top = 105
          Width = 251
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecLowerCase
          DataField = 'web'
          DataSource = dsPadrao
          TabOrder = 12
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnCadCidade: TCBitBtn
          Left = 383
          Top = 16
          Width = 92
          Height = 19
          Caption = '&Cidades'
          TabOrder = 13
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
          TabOrder = 14
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsCadAdicional2
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'idEstado'
        end
      end
      object CGroupBox9: TCGroupBox
        Left = 3
        Top = 247
        Width = 614
        Height = 106
        Caption = 'Observa'#231#245'es'
        TabOrder = 2
        object DBMobsCadGeral: TCDBMemo
          Left = 6
          Top = 15
          Width = 597
          Height = 82
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsCadGeral'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmNormal
        end
      end
    end
    object TabAdicional: TTabSheet
      Caption = 'Adicionais'
      ImageIndex = 1
      object CGroupBox14: TCGroupBox
        Left = 3
        Top = 212
        Width = 516
        Height = 139
        TabOrder = 2
        object CDBGrid4: TCDBGrid
          Left = 8
          Top = 12
          Width = 499
          Height = 118
          TabStop = False
          DataSource = dsCadAdicional
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idCadAdicional'
              Title.Caption = 'Cli/For'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idInscEstadual'
              Title.Caption = 'Insc. Estadual'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idCnpjCpf'
              Title.Caption = 'Cnpj/Cpf'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'endereco'
              Title.Caption = 'Endere'#231'o'
              Width = 315
              Visible = True
            end>
        end
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 98
        Width = 614
        Height = 108
        Caption = 'Endere'#231'o'
        TabOrder = 1
        object CLabel9: TCLabel
          Left = 13
          Top = 38
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Complemento'
        end
        object CLabel10: TCLabel
          Left = 287
          Top = 38
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bairro'
        end
        object CLabel12: TCLabel
          Left = 163
          Top = 16
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Endere'#231'o'
        end
        object CLabel15: TCLabel
          Left = 59
          Top = 16
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = 'CEP'
        end
        object CLabel16: TCLabel
          Left = 489
          Top = 16
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel17: TCLabel
          Left = 45
          Top = 60
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cidade'
        end
        object CLabel18: TCLabel
          Left = 400
          Top = 60
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telefone'
        end
        object CLabel19: TCLabel
          Left = 60
          Top = 82
          Width = 18
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fax'
        end
        object CLabel20: TCLabel
          Left = 186
          Top = 82
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Celular'
        end
        object CLabel21: TCLabel
          Left = 336
          Top = 82
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Email'
        end
        object DBEcomplemento2: TCDBEdit
          Left = 84
          Top = 35
          Width = 197
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'complemento'
          DataSource = dsCadAdicional
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEbairro2: TCDBEdit
          Left = 321
          Top = 35
          Width = 281
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'bairro'
          DataSource = dsCadAdicional
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEendereco2: TCDBEdit
          Left = 214
          Top = 13
          Width = 269
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'endereco'
          DataSource = dsCadAdicional
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEcep2: TCDBEdit
          Left = 84
          Top = 13
          Width = 73
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'cep'
          DataSource = dsCadAdicional
          TabOrder = 0
          OnExit = DBEcep2Exit
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEnumero2: TCDBEdit
          Left = 532
          Top = 13
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'numero'
          DataSource = dsCadAdicional
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCidade2: TCDBEdit
          Left = 84
          Top = 57
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCidade'
          DataSource = dsCadAdicional
          TabOrder = 5
          Find = FindCidade
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCidade2: TCLookUp
          Left = 143
          Top = 57
          Width = 202
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsCadAdicional
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'descCidade'
        end
        object DBEfone2: TCDBEdit
          Left = 506
          Top = 57
          Width = 96
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'fone'
          DataSource = dsCadAdicional
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDDD2: TCLookUp
          Left = 448
          Top = 57
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsCadAdicional
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'codDDD'
        end
        object DBEfax2: TCDBEdit
          Left = 84
          Top = 79
          Width = 96
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'fax'
          DataSource = dsCadAdicional
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEcelular2: TCDBEdit
          Left = 225
          Top = 79
          Width = 105
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'celular'
          DataSource = dsCadAdicional
          TabOrder = 10
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEemail2: TCDBEdit
          Left = 366
          Top = 79
          Width = 236
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecLowerCase
          DataField = 'email'
          DataSource = dsCadAdicional
          TabOrder = 11
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookEstado: TCLookUp
          Left = 351
          Top = 57
          Width = 43
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idCidade')
          LookUpKey.Strings = (
            'idCidade')
          ClientDataSet = cdsLookUp
          DataSource = dsCadAdicional
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Cidade'
          ReturnField = 'idEstado'
        end
      end
      object CGroupBox10: TCGroupBox
        Left = 3
        Top = 3
        Width = 614
        Height = 89
        Caption = 'Dados do Cadastro'
        TabOrder = 0
        object CLabel41: TCLabel
          Left = 225
          Top = 62
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Estadual'
        end
        object CLabel46: TCLabel
          Left = 30
          Top = 62
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'CNPJ/CPF'
        end
        object CLabel47: TCLabel
          Left = 45
          Top = 18
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel42: TCLabel
          Left = 11
          Top = 40
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome / Raz'#227'o'
        end
        object CLabel43: TCLabel
          Left = 354
          Top = 40
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome Abrev.'
        end
        object CLabel11: TCLabel
          Left = 447
          Top = 18
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object CLabel23: TCLabel
          Left = 430
          Top = 62
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Municipal'
        end
        object DBEidInscEstadual2: TCDBEdit
          Left = 299
          Top = 59
          Width = 91
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idInscEstadual'
          DataSource = dsCadAdicional
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCnpjCpf2: TCDBEdit
          Left = 84
          Top = 59
          Width = 135
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCnpjCpf'
          DataSource = dsCadAdicional
          TabOrder = 3
          OnExit = DBEidCnpjCpf2Exit
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidCadAdicional: TCDBEdit
          Left = 84
          Top = 15
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadAdicional'
          DataSource = dsCadAdicional
          TabOrder = 0
          OnExit = DBEidCadAdicionalExit
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdescCadAdicional2: TCDBEdit
          Left = 84
          Top = 37
          Width = 264
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descCadAdicional'
          DataSource = dsCadAdicional
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdescAbreviadaAd: TCDBEdit
          Left = 423
          Top = 37
          Width = 179
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descAbreviada'
          DataSource = dsCadAdicional
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEstCadAdicional: TCDBEdit
          Left = 484
          Top = 15
          Width = 118
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stCadAdicional'
          DataSource = dsCadAdicional
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidInscMunicipal: TCDBEdit
          Left = 506
          Top = 59
          Width = 96
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idInscMunicipal'
          DataSource = dsCadAdicional
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object BtnValidaInscricao2: TCBitBtn
          Left = 396
          Top = 59
          Width = 28
          Height = 19
          TabOrder = 7
          OnClick = btnValidaInscricaoClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
            6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
            A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
            4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
            00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
        end
      end
      object CGroupBox12: TCGroupBox
        Left = 525
        Top = 212
        Width = 92
        Height = 139
        TabOrder = 3
        object BtnSalvarCli: TCBitBtn
          Left = 8
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Salvar'
          TabOrder = 0
          OnClick = BtnSalvarCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00C0606000C0606000C0404000A4A0A000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0A0A0008040400080404000C0606000FF00FF00FF00FF00FF00
            FF00808080008080800080808000A4A0A000C0C0C000C0DCC000C0DCC000C0DC
            C000C0DCC000C0C0C000808080008080800080808000FF00FF00FF00FF00C080
            8000C0606000C0606000C060600080808000C0A0A000C0DCC000FFFFFF00FFFF
            FF00F0FBFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A000C0C0C000F0FBFF00FFFFFF00FFFF
            FF00FFFFFF00C0C0C0008060600080606000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C06060008080800080404000C0808000C0DCC000FFFF
            FF00FFFFFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A00080808000A4A0A000F0FBFF00FFFF
            FF00FFFFFF00C0DCC0008060600080808000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C08080008040400080404000C0C0C000F0FB
            FF00FFFFFF00F0CAA6008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A0008080800080808000C0C0C000FFFF
            FF00FFFFFF00C0DCC0008060600080606000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C08080008040400080404000A4A0A000C0DC
            C000FFFFFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A0008080800080606000A4A0A000F0FB
            FF00FFFFFF00F0FBFF008060600080606000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C0A08000C0A0A000C0808000C0808000C0A0
            A000C0C0C000C0A0A000C0404000C0404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000C0C0C000C0C0C000A4A0A000A4A0A000C0C0
            C000C0DCC000C0C0C0008080800080808000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C0606000C0606000C0606000C0606000C060
            6000C0606000C0606000C0606000C0606000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0808000C0A0A000C0A0A000C0A0A000C0A0A000C0A0
            A000C0A0A000C0A0A000C0A0A000C0A0A000C0606000C0606000FF00FF00A4A0
            A0008080800080808000A4A0A000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00C080
            8000C0404000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00C0DCC000F0FBFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00FF00
            FF00C0604000C0C0C000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0DCC000C0A0A000C0404000FF00FF00FF00FF00FF00
            FF0080808000C0C0C000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000C0DCC000C0C0C00080808000FF00FF00}
          Margin = 5
          NumGlyphs = 2
        end
        object BtnCancelarCli: TCBitBtn
          Left = 8
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = BtnSalvarCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF0000A0
            C00000A0C00000A0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
            80008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A0
            C00080E0E00040C0E00040C0E00040A0E00000A0E0000080C0000080C000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
            8000C0C0C000C0C0C000A4A0A000A4A0A000A4A0A0008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00040E0E00040C0E00040C0E00040A0
            E00000A0E0000080C00000A0E000FF00FF00FF00FF00FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A000A4A0
            A000A4A0A00080808000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00040E0E00040E0E00040C0
            E00040C0E00040C0E00040C0E00040A0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00040E0E00040C0
            E00040C0E00040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E0000060
            000040C0C00040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C0008060
            6000A4A0A000C0C0C000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00040E0
            E0000060000040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0
            C00080606000C0C0C000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
            E000008000000060000040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0
            C0008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00040A080000060000080E0E00080E0E00080E0
            E000008000000060000040E0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000F0FBFF00C0DCC000C0DCC000A4A0A00080808000C0DCC000C0DCC000C0DC
            C0008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C000F0FBFF0080E0E00080E0C000006000000060000080E0E00080E0E0000060
            0000008000000060000040E0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000F0FBFF00F0FBFF00C0DCC0008080800080808000C0DCC000C0DCC0008080
            80008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00000A0E00000A0E0000060000040A0400000600000006000000060000000A0
            0000006000000060000080E0E00040E0E00000A0C000FF00FF00FF00FF008080
            8000A4A0A000A4A0A00080606000808080008060600080606000808080008080
            80008060600080808000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00040E0E00040A0A0000080200040E0800040C0400000A0200000A020000060
            00000060000080E0E00080E0E00040E0E00000A0C000FF00FF00FF00FF008080
            8000C0C0C000A4A0A00080808000C0C0C0008080800080808000808080008080
            800080606000C0DCC000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E0000060000040C0600040E0600040C0400000600000006000000060
            000080E0E00080E0E00080E0E00080E0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC00080606000A4A0A000A4A0A000A4A0A00080606000806060008060
            6000C0DCC000C0DCC000C0DCC000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00040C0A0000060000000A0200000A020000060000040A0800080E0
            E00080E0E00080E0E00080E0E00080E0E00000A0C000FF00FF00FF00FF008080
            8000F0FBFF00C0C0C00080606000808080008080800080606000A4A0A000F0FB
            FF00F0FBFF00C0DCC000C0DCC000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E0000080400000802000006000000060000000A0
            C00000A0C00000A0C00000A0C00000A0C00000A0C000FF00FF00FF00FF008080
            8000C0C0C000C0DCC000C0C0C000808080008080800080606000806060008080
            80008080800080808000808080008080800080808000FF00FF00FF00FF00FF00
            FF0000A0C00000A0C00000A0C00000A0C00000A0C000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000808080008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 2
        end
        object BtnExcluirCli: TCBitBtn
          Left = 8
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Excluir'
          TabOrder = 2
          OnClick = BtnSalvarCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00E8E8
            E8FFBFBFBFFFF4F4F4FFFF00FF00F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBC
            BCFFB6B6B6FF989898FFA5A5A5FFA2A2A2FFFF00FF00FF00FF00FF00FF00E7E7
            E7FFBEBEBEFFF4F4F4FFFF00FF00F9F9F9FFDFDFDFFFC9C9C9FFBDBDBDFFBBBB
            BBFFB5B5B5FF979797FFA3A3A3FFA1A1A1FFFF00FF00FF00FF00EAEAEAFFE1E1
            E0FF9F9E9EFF7F7F7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3
            E4FFC5C5C5FFB7B7B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFFE9E9E9FFDEDE
            DEFF9B9B9BFF7D7D7DFF949494FF8F8F8FFFBABABAFFDBDBDBFFEAEAEAFFE0E0
            E0FFC2C2C2FFB4B4B4FF999999FFA8A8A8FF7C7C7CFFBBBBBBFFE9E9E9FF9393
            92FFC1C1C0FF9E9E9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABC
            B1FFCFCAC9FFD8D8D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FFE7E7E7FF9090
            90FFBDBDBDFF9B9B9BFF868686FFBABABAFFABABABFFB0B0B0FFBBBBBBFFC1C1
            C1FFC9C9C9FFD6D6D6FFCACACAFFC6C6C6FFD6D6D6FFB7B7B7FFE7E7E7FF9E9E
            9FFFA1A2A1FFC5C8C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1
            B3FFC7C6C6FFC0C0C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FFE6E6E6FF9C9C
            9CFF9F9F9FFFC4C4C4FF767676FF686868FF7C7C7CFF9A9A9AFFC2C2C2FFC3C3
            C3FFC4C4C4FFBDBDBDFFC8C8C8FFCECECEFFD8D8D8FFD7D7D7FFEEEEEEFFB2B2
            B1FF7E7F7EFFDADBDCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0
            C5FFC0BBB8FFB1B2B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFFEDEDEDFFAFAF
            AFFF7C7C7CFFD8D8D8FF919191FF868686FF929292FFAFAFAFFFCDCDCDFFD1D1
            D1FFB9B9B9FFAFAFAFFFDFDFDFFFDFDFDFFFE5E5E5FFADADADFFF8F8F8FFCACA
            C9FF7B7C7BFFC6C6C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9
            CEFFDBBAABFFCFC1B8FFD6DEE1FFB87458FFF9F6F5FFFF00FF00F7F7F7FFC7C7
            C7FF797979FFC3C3C3FFC4C4C4FF8F8F8FFF9A9A9AFFB5B5B5FFD4D4D4FFDADA
            DAFFBEBEBEFFC0C0C0FFD9D9D9FF818181FFF7F7F7FFFF00FF00FDFDFDFFD9D9
            DAFF828382FFADAFADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6
            CDFFE0BCA8FFD4987BFFD29A7EFFC66F49FFFDF9F8FFFF00FF00FDFDFDFFD7D7
            D7FF7F7F7FFFABABABFFE3E3E3FF787878FF979797FFBFBFBFFFD6D6D6FFD8D8
            D8FFC0C0C0FFA1A1A1FFA2A2A2FF7F7F7FFFFAFAFAFFFF00FF00FF00FF00D4D4
            D4FF9A9B9AFF9FA09FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6
            CDFFE3BEADFFD29B7EFFD19172FFC86E46FFFCF9F8FFFF00FF00FF00FF00D1D1
            D1FF989898FF9D9D9DFFD4D4D4FF7D7D7DFF999999FFB2B2B2FFD8D8D8FFD8D8
            D8FFC3C3C3FFA2A2A2FF9B9B9BFF7F7F7FFFF9F9F9FFFF00FF00FF00FF00E2E2
            E2FFACACACFF9C9D9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDA
            D0FFE4BFADFFD59C7FFFCF9072FFC96E45FFFCF9F8FFFF00FF00FF00FF00E0E0
            E0FFA9A9A9FF999999FFBFBFBFFF7F7F7FFF9B9B9BFFB4B4B4FFD4D4D4FFDBDB
            DBFFC3C3C3FFA4A4A4FF9A9A9AFF7F7F7FFFF9F9F9FFFF00FF00FF00FF00FAFA
            FAFFB3B3B3FFA6A7A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DE
            D3FFE8C3B2FFDAA183FFD49575FFC9734DFFFCF9F8FFFF00FF00FF00FF00F9F9
            F9FFB0B0B0FFA4A4A4FFA9A9A9FF7F7F7FFF949494FFB1B1B1FFDADADAFFE0E0
            E0FFC8C8C8FFA9A9A9FF9F9F9FFF838383FFF9F9F9FFFF00FF00FF00FF00FF00
            FF00E2E1E1FFDDDCDDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5
            AFFFB6A198FFAC816EFFAE7457FFBF6641FFFDFAF8FFFF00FF00FF00FF00FF00
            FF00E0E0E0FFDADADAFF8F8F8FFF777777FF7A7A7AFF949494FFADADADFFB4B4
            B4FFA3A3A3FF888888FF7D7D7DFF787878FFFAFAFAFFFF00FF00FF00FF00FF00
            FF00FEFEFEFFF4F4F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDD
            DDFFD3D5D4FFC2C6C7FFB0B5B6FF897D78FFC6C3C2FFFF00FF00FF00FF00FF00
            FF00FEFEFEFFF3F3F3FF727272FFA1A1A1FFB9B9B9FFC9C9C9FFD4D4D4FFDBDB
            DBFFD1D1D1FFC1C1C1FFB0B0B0FF7D7D7DFFC3C3C3FFFF00FF00FF00FF00FF00
            FF00FF00FF00FDFDFDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBC
            BCFFC9C8C8FFD1D1D1FFC6BEB9FFBEBCBBFFA5A5A5FFFF00FF00FF00FF00FF00
            FF00FF00FF00FDFDFDFFA8A8A8FFA2A2A2FFB9B9B9FFC3C3C3FFD8D8D8FFBABA
            BAFFC6C6C6FFCECECEFFBDBDBDFFBABABAFFA3A3A3FFFF00FF00FF00FF00FF00
            FF00FF00FF00FEFEFEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9
            D9FFD5D5D5FFD7D7D7FFB1ADABFFD1D0D1FFC9C9CAFFFF00FF00FF00FF00FF00
            FF00FF00FF00FEFEFEFFDBDBDBFF8D8D8DFFBABABAFFBDBDBDFFC1C1C1FFD6D6
            D6FFD2D2D2FFD4D4D4FFABABABFFCECECEFFC8C8C8FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5
            D5FFD8D8D8FFE1E0E1FFF3F3F4FFF4F3F2FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FDFDFDFFEFEFEFFFD2D2D2FFA1A1A1FFBDBDBDFFD2D2
            D2FFD6D6D6FFDEDEDEFFF2F2F2FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFFFFF1F1F1FFF2F2
            F2FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FEFEFEFFF0F0F0FFF0F0
            F0FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 2
        end
        object BtnNovoCli: TCBitBtn
          Left = 8
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          TabOrder = 3
          OnClick = BtnSalvarCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BAAEABFFCDCD
            CDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B1B1B1FFCDCD
            CDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AEC7CCFF6F807CFFDC5B35FFA539
            15FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00BEBEBEFF777777FF7D7D7DFF5353
            53FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00ABC1C6FF849B9AFF879990FFAD5639FFDC6A
            49FFA93C1AFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B9B9B9FF8F8F8FFF8E8E8EFF6A6A6AFF8888
            88FF575757FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00679EA2FFB73A14FFD67A5FFFE88363FFE685
            66FFD6633EFFAE401DFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00868686FF5A5A5AFF919191FF9C9C9CFF9D9D
            9DFF7F7F7FFF5C5C5CFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00AEC7CCFF717C78FFB58871FFB0998AFFE27E60FFE48367FFE57F
            5FFFD26846FFF7AD94FFAB3916FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BEBEBEFF747474FF8E8E8EFF999999FF979797FF9C9C9CFF9898
            98FF828282FFBEBEBEFF575757FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00
            FF00ABC1C6FF849B9AFF879A90FFAE5337FFEC8669FFE4886EFFE48161FFE481
            63FFE57E5CFFD68663FFFFC2A9FFAD3C19FFC7C7C7FFFF00FF00FF00FF00FF00
            FF00B9B9B9FF8F8F8FFF8E8E8EFF696969FFA1A1A1FFA0A0A0FF9A9A9AFF9A9A
            9AFF979797FF959595FFCECECEFF595959FFC7C7C7FFFF00FF00FF00FF00FF00
            FF00679EA3FFB73B16FFD67D66FFE8896DFFE48870FFE58365FFE5896DFFE687
            6AFFCF6341FFF5C4A0FFFFEDD2FFFA8463FF9D8888FFFF00FF00FF00FF00FF00
            FF00878787FF5C5C5CFF959595FFA1A1A1FFA1A1A1FF9C9C9CFFA0A0A0FF9F9F
            9FFF7E7E7EFFC5C5C5FFE5E5E5FFA4A4A4FF8F8F8FFFFF00FF00CAE2E6FF6B77
            73FFB58974FFB09787FFE28165FFE4886FFFE58569FFCF7E68FFD9876FFFD66B
            46FFFFD0AEFFFFECD2FFFCA286FFA46D5DFFFF00FF00FF00FF00D9D9D9FF6F6F
            6FFF8F8F8FFF979797FF9A9A9AFFA1A1A1FF9E9E9EFF939393FF9C9C9CFF8484
            84FFD1D1D1FFE5E5E5FFB8B8B8FF7B7B7BFFFF00FF00FF00FF00D2D7D4FF7F92
            89FFAD5033FFEB866AFFE48D75FFE79882FFECAB98FFCC9489FFB96C5AFF71A1
            C4FF7892A8FFF99C79FFA46C5DFFFF00FF00FF00FF00FF00FF00D3D3D3FF8686
            86FF676767FFA1A1A1FFA4A4A4FFACACACFFBBBBBBFFA4A4A4FF828282FF9A9A
            9AFF8F8F8FFFB0B0B0FF7B7B7BFFFF00FF00FF00FF00FF00FF00E3A794FFEE9D
            87FFF2B9ABFFEEB9ACFFEFB9A9FFEFBAABFFF2BFB1FFCE775DFF76BEE5FF08B8
            FFFF1F8FFFFF4D5069FFFF00FF00FF00FF00FF00FF00FF00FF00B5B5B5FFB2B2
            B2FFC8C8C8FFC7C7C7FFC6C6C6FFC7C7C7FFCBCBCBFF8D8D8DFFB0B0B0FF8C8C
            8CFF929292FF585858FFFF00FF00FF00FF00FF00FF00FF00FF00F6F4F3FFDE84
            69FFEFC0B2FFF3CDC3FFF3CCC3FFF5D3C9FFD58167FFFFD9C7FF1BEAFFFF02CA
            FFFF05B3FEFF2997FFFF647D96FFFDFDFDFFFF00FF00FF00FF00F4F4F4FF9B9B
            9BFFCBCBCBFFD6D6D6FFD6D6D6FFDADADAFF959595FFDEDEDEFF999999FF8C8C
            8CFF8A8A8AFF979797FF7C7C7CFFFDFDFDFFFF00FF00FF00FF00FF00FF00C18D
            7EFFFAD9D2FFF3D2C7FFFAE9E6FFD58871FFF4DCCDFFFFFFFCFFBEBAAAFF17FA
            FFFF05CAFFFF05B3FEFF2D98FFFF647D96FFFCFCFCFFFF00FF00FF00FF009B9B
            9BFFE2E2E2FFD8D8D8FFECECECFF9B9B9BFFDCDCDCFFFBFBFBFFB1B1B1FF9A9A
            9AFF8D8D8DFF8A8A8AFF999999FF7C7C7CFFFCFCFCFFFF00FF00FF00FF00FAFA
            FAFFE9987FFFFFFFFFFFDC8265FFF7ECE8FFFFFFFFFFFDAF92FFA86660FFBCD4
            D6FF20FFFFFF05C9FFFF05B3FEFF2D98FFFF5C748EFFFDFDFDFFFF00FF00FAFA
            FAFFACACACFFFDFDFDFF989898FFECECECFFFDFDFDFFC0C0C0FF7D7D7DFFCACA
            CAFF9E9E9EFF8D8D8DFF8A8A8AFF999999FF747474FFFDFDFDFFFF00FF00FF00
            FF00C39E93FFE2947BFFBFA2A0FFEF9775FFFCB399FFA2695DFFFF00FF00FF00
            FF00BCD3D5FF1DFFFFFF05C9FFFF02B4FFFF40B0FFFF959FA6FFFF00FF00FF00
            FF00A7A7A7FFA7A7A7FFACACACFFA9A9A9FFC3C3C3FF7A7A7AFFFF00FF00FF00
            FF00C9C9C9FF9C9C9CFF8D8D8DFF8A8A8AFFA3A3A3FF9D9D9DFFFF00FF00FF00
            FF00FF00FF00F3F2F2FFFF00FF00D2C1BCFFBC9081FFFF00FF00FF00FF00FF00
            FF00FF00FF00C2D9DBFF0FFAFFFF1FB6E5FF4C7A90FFF7F7F7FFFF00FF00FF00
            FF00FF00FF00F2F2F2FFFF00FF00C5C5C5FF9A9A9AFFFF00FF00FF00FF00FF00
            FF00FF00FF00CFCFCFFF969696FF898989FF6F6F6FFFF7F7F7FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E6FDFFFF85BFE2FFF4F5F5FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00F3F3F3FFB4B4B4FFF5F5F5FFFF00FF00}
          NumGlyphs = 2
          Spacing = 5
        end
      end
    end
    object TabContabil: TTabSheet
      Caption = 'Informa'#231#245'es'
      ImageIndex = 2
      object CGroupBox6: TCGroupBox
        Left = 0
        Top = 0
        Width = 465
        Height = 297
        Caption = 'Dados'
        TabOrder = 0
        object CGroupBox4: TCGroupBox
          Left = 7
          Top = 91
          Width = 451
          Height = 74
          Caption = 'Contador'
          TabOrder = 1
          object CLabel33: TCLabel
            Left = 10
            Top = 43
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome / Raz'#227'o'
          end
          object CLabel44: TCLabel
            Left = 29
            Top = 21
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'CNPJ/CPF'
          end
          object CLabel49: TCLabel
            Left = 204
            Top = 21
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'CRC'
          end
          object DBEidCnpjCpfContador: TCDBEdit
            Left = 83
            Top = 18
            Width = 115
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idCnpjCpfContador'
            DataSource = dsEmpresaContabil
            TabOrder = 0
            OnExit = DBEidCnpjCpf2Exit
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEdescContador: TCDBEdit
            Left = 83
            Top = 40
            Width = 344
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'descContador'
            DataSource = dsEmpresaContabil
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEcrcContador: TCDBEdit
            Left = 231
            Top = 18
            Width = 135
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'crcContador'
            DataSource = dsEmpresaContabil
            TabOrder = 1
            DecimalControl = True
            KeyMode = kmUSUpper
          end
        end
        object CGroupBox3: TCGroupBox
          Left = 7
          Top = 18
          Width = 451
          Height = 70
          Caption = 'Representante'
          TabOrder = 0
          object CLabel24: TCLabel
            Left = 11
            Top = 40
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome / Raz'#227'o'
          end
          object CLabel25: TCLabel
            Left = 29
            Top = 18
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'CNPJ/CPF'
          end
          object CLabel26: TCLabel
            Left = 204
            Top = 18
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cargo'
          end
          object DBEidCnpjCpfRepresentante: TCDBEdit
            Left = 84
            Top = 15
            Width = 114
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idCnpjCpfRepresentante'
            DataSource = dsEmpresaContabil
            TabOrder = 0
            OnExit = DBEidCnpjCpf2Exit
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEdescRepresentante: TCDBEdit
            Left = 83
            Top = 37
            Width = 344
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'descRepresentante'
            DataSource = dsEmpresaContabil
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEcargo: TCDBEdit
            Left = 239
            Top = 15
            Width = 188
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'cargoRepresentante'
            DataSource = dsEmpresaContabil
            TabOrder = 1
            DecimalControl = True
            KeyMode = kmUSUpper
          end
        end
        object CGroupBox5: TCGroupBox
          Left = 7
          Top = 171
          Width = 451
          Height = 118
          Caption = 'Configura'#231#245'es do Cont'#225'bil '
          TabOrder = 2
          object CLabel52: TCLabel
            Left = 28
            Top = 47
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Periodo Inicial'
          end
          object CLabel53: TCLabel
            Left = 7
            Top = 25
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = 'Mascara Gerencial'
          end
          object CLabel55: TCLabel
            Left = 199
            Top = 47
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Periodo Final'
          end
          object CLabel22: TCLabel
            Left = 57
            Top = 69
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Rodap'#233
          end
          object CLabel27: TCLabel
            Left = 220
            Top = 25
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'Mascara Fiscal'
          end
          object DBEperiodoInicial: TCDBEdit
            Left = 100
            Top = 44
            Width = 93
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'periodoInicial'
            DataSource = dsConfigContabil
            MaxLength = 10
            TabOrder = 2
            DecimalControl = True
            KeyMode = kmDate
          end
          object DBEmascaraContabil: TCDBEdit
            Left = 100
            Top = 22
            Width = 114
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'mascaraContabil'
            DataSource = dsConfigContabil
            TabOrder = 0
            OnExit = DBEmascaraContabilExit
            OnKeyPress = DBEmascaraContabilKeyPress
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBEperiodoFinal: TCDBEdit
            Left = 266
            Top = 44
            Width = 93
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'periodoFinal'
            DataSource = dsConfigContabil
            MaxLength = 10
            TabOrder = 3
            DecimalControl = True
            KeyMode = kmDate
          end
          object DBErodapeContabil: TCDBEdit
            Left = 100
            Top = 66
            Width = 344
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'rodapeContabil'
            DataSource = dsConfigContabil
            TabOrder = 4
            DecimalControl = True
            KeyMode = kmUSUpper
          end
          object DBCBalteraFechado: TCDBCheckBox
            Left = 100
            Top = 88
            Width = 189
            Height = 17
            Caption = 'Permite alterar Lote Fechado ?'
            DataField = 'alteraFechado'
            DataSource = dsConfigContabil
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBEmascaraFiscal: TCDBEdit
            Left = 295
            Top = 22
            Width = 114
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'mascaraFiscal'
            DataSource = dsConfigContabil
            TabOrder = 1
            OnExit = DBEmascaraContabilExit
            OnKeyPress = DBEmascaraContabilKeyPress
            DecimalControl = True
            KeyMode = kmUSUpper
          end
        end
      end
      object idEmpresa: TCEdit
        Left = 533
        Top = 193
        Width = 57
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 1
        Visible = False
        DataType = ftUnknown
        KeyMode = kmNormal
        Decimals = 0
      end
    end
    object TabContGerencial: TTabSheet
      Caption = 'Cont'#225'bil'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 254
      object CGroupBox7: TCGroupBox
        Left = 9
        Top = 3
        Width = 516
        Height = 98
        Caption = 'Contas Cont'#225'beis - Gerencial'
        TabOrder = 0
        object CLabel30: TCLabel
          Left = 18
          Top = 43
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#233'bito'
        end
        object CLabel45: TCLabel
          Left = 14
          Top = 65
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cr'#233'dito'
        end
        object CLabel50: TCLabel
          Left = 8
          Top = 21
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Empresa'
        end
        object DBEcdPlanoContaDeb: TCDBEdit
          Left = 55
          Top = 40
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'cdPlanoContaDeb'
          DataSource = dsContaCliente
          TabOrder = 2
          Find = FindPlanoContaDeb
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookdescPlanoContaDeb: TCLookUp
          Left = 109
          Top = 40
          Width = 375
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idEmpresa'
            'cdPlanoContaDeb')
          LookUpKey.Strings = (
            'cdPlanoConta')
          AlternateSQL.Strings = (
            
              'SELECT descPlanoConta FROM vPlanoConta WHERE tpPlanoConta = '#39'G'#39' ' +
              'AND  naturezaPlanoConta = '#39'D'#39' AND idEmpresa = ? AND cdPlanoConta' +
              ' = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsContaCliente
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vPlanoConta'
          ReturnField = 'descPlanoConta'
        end
        object DBEcdPlanoContaCre: TCDBEdit
          Left = 55
          Top = 62
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'cdPlanoContaCre'
          DataSource = dsContaCliente
          TabOrder = 4
          Find = FindPlanoContaCre
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookdescPlanoContaCre: TCLookUp
          Left = 109
          Top = 62
          Width = 375
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idEmpresa'
            'cdPlanoContaCre')
          LookUpKey.Strings = (
            'cdPlanoConta')
          AlternateSQL.Strings = (
            
              'SELECT descPlanoConta FROM vPlanoConta WHERE tpPlanoConta = '#39'G'#39' ' +
              'AND  naturezaPlanoConta = '#39'C'#39' AND idEmpresa = ? AND cdPlanoConta' +
              ' = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsContaCliente
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vPlanoConta'
          ReturnField = 'descPlanoConta'
        end
        object DBEidEmpresa: TCDBEdit
          Left = 55
          Top = 18
          Width = 47
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmpresa'
          DataSource = dsContaCliente
          TabOrder = 0
          Find = FindEmpresa
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookdescCadEmpresa: TCLookUp
          Left = 109
          Top = 18
          Width = 375
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idEmpresa')
          LookUpKey.Strings = (
            'idEmpresa')
          ClientDataSet = cdsLookUp
          DataSource = dsContaCliente
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadEmpresaContabil'
          ReturnField = 'descCadEmpresa'
        end
      end
      object CGroupBox16: TCGroupBox
        Left = 9
        Top = 102
        Width = 516
        Height = 139
        TabOrder = 1
        object DBGridEmpresa: TCDBGrid
          Left = 8
          Top = 12
          Width = 499
          Height = 118
          TabStop = False
          DataSource = dsContaCliente
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idEmpresa'
              Title.Caption = 'Empresa'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descContaCredito'
              Title.Caption = 'Cr'#233'dito'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descContaDebito'
              Title.Caption = 'D'#233'bito'
              Width = 263
              Visible = True
            end>
        end
      end
      object CGroupBox17: TCGroupBox
        Left = 531
        Top = 3
        Width = 92
        Height = 238
        TabOrder = 2
        object BtnSalvarCCli: TCBitBtn
          Left = 8
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Salvar'
          TabOrder = 0
          OnClick = BtnSalvarCCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00C0606000C0606000C0404000A4A0A000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0A0A0008040400080404000C0606000FF00FF00FF00FF00FF00
            FF00808080008080800080808000A4A0A000C0C0C000C0DCC000C0DCC000C0DC
            C000C0DCC000C0C0C000808080008080800080808000FF00FF00FF00FF00C080
            8000C0606000C0606000C060600080808000C0A0A000C0DCC000FFFFFF00FFFF
            FF00F0FBFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A000C0C0C000F0FBFF00FFFFFF00FFFF
            FF00FFFFFF00C0C0C0008060600080606000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C06060008080800080404000C0808000C0DCC000FFFF
            FF00FFFFFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A00080808000A4A0A000F0FBFF00FFFF
            FF00FFFFFF00C0DCC0008060600080808000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C08080008040400080404000C0C0C000F0FB
            FF00FFFFFF00F0CAA6008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A0008080800080808000C0C0C000FFFF
            FF00FFFFFF00C0DCC0008060600080606000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C08080008040400080404000A4A0A000C0DC
            C000FFFFFF00C0C0C0008020200080404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A0008080800080606000A4A0A000F0FB
            FF00FFFFFF00F0FBFF008060600080606000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C0A08000C0A0A000C0808000C0808000C0A0
            A000C0C0C000C0A0A000C0404000C0404000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000C0C0C000C0C0C000A4A0A000A4A0A000C0C0
            C000C0DCC000C0C0C0008080800080808000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0606000C0606000C0606000C0606000C0606000C060
            6000C0606000C0606000C0606000C0606000C0606000C0606000FF00FF00A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
            A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A00080808000FF00FF00C080
            8000C0606000C0606000C0808000C0A0A000C0A0A000C0A0A000C0A0A000C0A0
            A000C0A0A000C0A0A000C0A0A000C0A0A000C0606000C0606000FF00FF00A4A0
            A0008080800080808000A4A0A000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00C080
            8000C0404000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00C0DCC000F0FBFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000F0FBFF00F0CAA600C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
            FF00F0FBFF00F0FBFF00F0FBFF00C0DCC000A4A0A00080808000FF00FF00C080
            8000C0604000F0CAA600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0606000C0606000FF00FF00A4A0
            A00080808000F0FBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A00080808000FF00FF00FF00
            FF00C0604000C0C0C000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0DCC000C0A0A000C0404000FF00FF00FF00FF00FF00
            FF0080808000C0C0C000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
            C000C0DCC000C0DCC000C0DCC000C0C0C00080808000FF00FF00}
          Margin = 5
          NumGlyphs = 2
        end
        object BtnCancelarCCli: TCBitBtn
          Left = 8
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = BtnSalvarCCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF0000A0
            C00000A0C00000A0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
            80008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A0
            C00080E0E00040C0E00040C0E00040A0E00000A0E0000080C0000080C000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008080
            8000C0C0C000C0C0C000A4A0A000A4A0A000A4A0A0008080800080808000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00040E0E00040C0E00040C0E00040A0
            E00000A0E0000080C00000A0E000FF00FF00FF00FF00FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000A4A0A000A4A0
            A000A4A0A00080808000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00040E0E00040E0E00040C0
            E00040C0E00040C0E00040C0E00040A0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00040E0E00040C0
            E00040C0E00040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000A4A0A00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E0000060
            000040C0C00040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C0008060
            6000A4A0A000C0C0C000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00040E0
            E0000060000040C0E00040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000C0C0
            C00080606000C0C0C000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
            E000008000000060000040C0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0C0
            C0008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E00040A080000060000080E0E00080E0E00080E0
            E000008000000060000040E0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000F0FBFF00C0DCC000C0DCC000A4A0A00080808000C0DCC000C0DCC000C0DC
            C0008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C000F0FBFF0080E0E00080E0C000006000000060000080E0E00080E0E0000060
            0000008000000060000040E0E00040C0E00000A0C000FF00FF00FF00FF008080
            8000F0FBFF00F0FBFF00C0DCC0008080800080808000C0DCC000C0DCC0008080
            80008080800080606000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00000A0E00000A0E0000060000040A0400000600000006000000060000000A0
            0000006000000060000080E0E00040E0E00000A0C000FF00FF00FF00FF008080
            8000A4A0A000A4A0A00080606000808080008060600080606000808080008080
            80008060600080808000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00040E0E00040A0A0000080200040E0800040C0400000A0200000A020000060
            00000060000080E0E00080E0E00040E0E00000A0C000FF00FF00FF00FF008080
            8000C0C0C000A4A0A00080808000C0C0C0008080800080808000808080008080
            800080606000C0DCC000C0C0C000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E0000060000040C0600040E0600040C0400000600000006000000060
            000080E0E00080E0E00080E0E00080E0E00000A0C000FF00FF00FF00FF008080
            8000C0DCC00080606000A4A0A000A4A0A000A4A0A00080606000806060008060
            6000C0DCC000C0DCC000C0DCC000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00040C0A0000060000000A0200000A020000060000040A0800080E0
            E00080E0E00080E0E00080E0E00080E0E00000A0C000FF00FF00FF00FF008080
            8000F0FBFF00C0C0C00080606000808080008080800080606000A4A0A000F0FB
            FF00F0FBFF00C0DCC000C0DCC000C0C0C00080808000FF00FF00FF00FF0000A0
            C00080E0E00080E0E00080E0E0000080400000802000006000000060000000A0
            C00000A0C00000A0C00000A0C00000A0C00000A0C000FF00FF00FF00FF008080
            8000C0C0C000C0DCC000C0C0C000808080008080800080606000806060008080
            80008080800080808000808080008080800080808000FF00FF00FF00FF00FF00
            FF0000A0C00000A0C00000A0C00000A0C00000A0C000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008080800080808000808080008080800080808000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 2
        end
        object BtnExcluirCCli: TCBitBtn
          Left = 8
          Top = 73
          Width = 75
          Height = 25
          Caption = '&Excluir'
          TabOrder = 2
          OnClick = BtnSalvarCCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00E8E8
            E8FFBFBFBFFFF4F4F4FFFF00FF00F9F9F9FFDFDFDFFFCACACAFFBEBEBEFFBCBC
            BCFFB6B6B6FF989898FFA5A5A5FFA2A2A2FFFF00FF00FF00FF00FF00FF00E7E7
            E7FFBEBEBEFFF4F4F4FFFF00FF00F9F9F9FFDFDFDFFFC9C9C9FFBDBDBDFFBBBB
            BBFFB5B5B5FF979797FFA3A3A3FFA1A1A1FFFF00FF00FF00FF00EAEAEAFFE1E1
            E0FF9F9E9EFF7F7F7FFF959595FF919191FFBCBDBDFFDCDEDDFFEBEDEEFFE2E3
            E4FFC5C5C5FFB7B7B7FF9C9C9CFFABABABFF7F7F7FFFBCBCBCFFE9E9E9FFDEDE
            DEFF9B9B9BFF7D7D7DFF949494FF8F8F8FFFBABABAFFDBDBDBFFEAEAEAFFE0E0
            E0FFC2C2C2FFB4B4B4FF999999FFA8A8A8FF7C7C7CFFBBBBBBFFE9E9E9FF9393
            92FFC1C1C0FF9E9E9DFF888A89FFC3BBB8FFC0A79FFFCBAA9EFFD5B7ACFFDABC
            B1FFCFCAC9FFD8D8D8FFCDCDCDFFC8C8C8FFD9D9D9FFB8B8B8FFE7E7E7FF9090
            90FFBDBDBDFF9B9B9BFF868686FFBABABAFFABABABFFB0B0B0FFBBBBBBFFC1C1
            C1FFC9C9C9FFD6D6D6FFCACACAFFC6C6C6FFD6D6D6FFB7B7B7FFE7E7E7FF9E9E
            9FFFA1A2A1FFC5C8C7FF937064FFB3552EFFB86F4EFFC4937DFFDCBEB0FFDCC1
            B3FFC7C6C6FFC0C0C0FFCBCBCBFFD1D1D1FFDBDBDBFFD8D8D8FFE6E6E6FF9C9C
            9CFF9F9F9FFFC4C4C4FF767676FF686868FF7C7C7CFF9A9A9AFFC2C2C2FFC3C3
            C3FFC4C4C4FFBDBDBDFFC8C8C8FFCECECEFFD8D8D8FFD7D7D7FFEEEEEEFFB2B2
            B1FF7E7F7EFFDADBDCFFA29087FFBE7B5BFFC5896BFFD4A995FFE2CCBFFFE7D0
            C5FFC0BBB8FFB1B2B3FFE2E2E2FFE1E2E3FFE7E8E8FFAEAEAEFFEDEDEDFFAFAF
            AFFF7C7C7CFFD8D8D8FF919191FF868686FF929292FFAFAFAFFFCDCDCDFFD1D1
            D1FFB9B9B9FFAFAFAFFFDFDFDFFFDFDFDFFFE5E5E5FFADADADFFF8F8F8FFCACA
            C9FF7B7C7BFFC6C6C6FFC8C7C6FFC38568FFCE9173FFDAB09AFFE9D3C7FFEED9
            CEFFDBBAABFFCFC1B8FFD6DEE1FFB87458FFF9F6F5FFFF00FF00F7F7F7FFC7C7
            C7FF797979FFC3C3C3FFC4C4C4FF8F8F8FFF9A9A9AFFB5B5B5FFD4D4D4FFDADA
            DAFFBEBEBEFFC0C0C0FFD9D9D9FF818181FFF7F7F7FFFF00FF00FDFDFDFFD9D9
            DAFF828382FFADAFADFFE3E7E9FFAB6F51FFCB8E70FFE4B9A4FFECD6C9FFEBD6
            CDFFE0BCA8FFD4987BFFD29A7EFFC66F49FFFDF9F8FFFF00FF00FDFDFDFFD7D7
            D7FF7F7F7FFFABABABFFE3E3E3FF787878FF979797FFBFBFBFFFD6D6D6FFD8D8
            D8FFC0C0C0FFA1A1A1FFA2A2A2FF7F7F7FFFFAFAFAFFFF00FF00FF00FF00D4D4
            D4FF9A9B9AFF9FA09FFFD4D7D9FFA57660FFCE9071FFD6AC97FFEDD6CBFFEBD6
            CDFFE3BEADFFD29B7EFFD19172FFC86E46FFFCF9F8FFFF00FF00FF00FF00D1D1
            D1FF989898FF9D9D9DFFD4D4D4FF7D7D7DFF999999FFB2B2B2FFD8D8D8FFD8D8
            D8FFC3C3C3FFA2A2A2FF9B9B9BFF7F7F7FFFF9F9F9FFFF00FF00FF00FF00E2E2
            E2FFACACACFF9C9D9CFFBFC2C3FFA47A65FFD09272FFD9AF9AFFEAD3C7FFEFDA
            D0FFE4BFADFFD59C7FFFCF9072FFC96E45FFFCF9F8FFFF00FF00FF00FF00E0E0
            E0FFA9A9A9FF999999FFBFBFBFFF7F7F7FFF9B9B9BFFB4B4B4FFD4D4D4FFDBDB
            DBFFC3C3C3FFA4A4A4FF9A9A9AFF7F7F7FFFF9F9F9FFFF00FF00FF00FF00FAFA
            FAFFB3B3B3FFA6A7A6FFA9ADAEFFA9785FFFC98A6CFFD6AB95FFF0D7CCFFF4DE
            D3FFE8C3B2FFDAA183FFD49575FFC9734DFFFCF9F8FFFF00FF00FF00FF00F9F9
            F9FFB0B0B0FFA4A4A4FFA9A9A9FF7F7F7FFF949494FFB1B1B1FFDADADAFFE0E0
            E0FFC8C8C8FFA9A9A9FF9F9F9FFF838383FFF9F9F9FFFF00FF00FF00FF00FF00
            FF00E2E1E1FFDDDCDDFF949190FFB36C49FFA2745DFFAC9185FFBBADA7FFC0B5
            AFFFB6A198FFAC816EFFAE7457FFBF6641FFFDFAF8FFFF00FF00FF00FF00FF00
            FF00E0E0E0FFDADADAFF8F8F8FFF777777FF7A7A7AFF949494FFADADADFFB4B4
            B4FFA3A3A3FF888888FF7D7D7DFF787878FFFAFAFAFFFF00FF00FF00FF00FF00
            FF00FEFEFEFFF4F4F4FF857067FFA1A4A5FFB9BCBEFFCBCCCCFFD6D7D8FFDEDD
            DDFFD3D5D4FFC2C6C7FFB0B5B6FF897D78FFC6C3C2FFFF00FF00FF00FF00FF00
            FF00FEFEFEFFF3F3F3FF727272FFA1A1A1FFB9B9B9FFC9C9C9FFD4D4D4FFDBDB
            DBFFD1D1D1FFC1C1C1FFB0B0B0FF7D7D7DFFC3C3C3FFFF00FF00FF00FF00FF00
            FF00FF00FF00FDFDFDFFAAABACFFB2A29AFFC8B9B3FFC6C6C5FFDBDADAFFBEBC
            BCFFC9C8C8FFD1D1D1FFC6BEB9FFBEBCBBFFA5A5A5FFFF00FF00FF00FF00FF00
            FF00FF00FF00FDFDFDFFA8A8A8FFA2A2A2FFB9B9B9FFC3C3C3FFD8D8D8FFBABA
            BAFFC6C6C6FFCECECEFFBDBDBDFFBABABAFFA3A3A3FFFF00FF00FF00FF00FF00
            FF00FF00FF00FEFEFEFFDDDFDFFF928F8DFFBDBCBDFFC0C0C0FFC4C4C4FFD9D9
            D9FFD5D5D5FFD7D7D7FFB1ADABFFD1D0D1FFC9C9CAFFFF00FF00FF00FF00FF00
            FF00FF00FF00FEFEFEFFDBDBDBFF8D8D8DFFBABABAFFBDBDBDFFC1C1C1FFD6D6
            D6FFD2D2D2FFD4D4D4FFABABABFFCECECEFFC8C8C8FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FDFDFCFFF1F0EFFFD3D4D4FFA4A4A4FFC0C0C0FFD5D5
            D5FFD8D8D8FFE1E0E1FFF3F3F4FFF4F3F2FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FDFDFDFFEFEFEFFFD2D2D2FFA1A1A1FFBDBDBDFFD2D2
            D2FFD6D6D6FFDEDEDEFFF2F2F2FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFFFFF1F1F1FFF2F2
            F2FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FEFEFEFFF0F0F0FFF0F0
            F0FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 2
        end
        object BtnNovoCCli: TCBitBtn
          Left = 8
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Novo'
          TabOrder = 3
          OnClick = BtnSalvarCCliClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BAAEABFFCDCD
            CDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B1B1B1FFCDCD
            CDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AEC7CCFF6F807CFFDC5B35FFA539
            15FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00BEBEBEFF777777FF7D7D7DFF5353
            53FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00ABC1C6FF849B9AFF879990FFAD5639FFDC6A
            49FFA93C1AFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B9B9B9FF8F8F8FFF8E8E8EFF6A6A6AFF8888
            88FF575757FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00679EA2FFB73A14FFD67A5FFFE88363FFE685
            66FFD6633EFFAE401DFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00868686FF5A5A5AFF919191FF9C9C9CFF9D9D
            9DFF7F7F7FFF5C5C5CFFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00AEC7CCFF717C78FFB58871FFB0998AFFE27E60FFE48367FFE57F
            5FFFD26846FFF7AD94FFAB3916FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BEBEBEFF747474FF8E8E8EFF999999FF979797FF9C9C9CFF9898
            98FF828282FFBEBEBEFF575757FFC4C4C4FFFF00FF00FF00FF00FF00FF00FF00
            FF00ABC1C6FF849B9AFF879A90FFAE5337FFEC8669FFE4886EFFE48161FFE481
            63FFE57E5CFFD68663FFFFC2A9FFAD3C19FFC7C7C7FFFF00FF00FF00FF00FF00
            FF00B9B9B9FF8F8F8FFF8E8E8EFF696969FFA1A1A1FFA0A0A0FF9A9A9AFF9A9A
            9AFF979797FF959595FFCECECEFF595959FFC7C7C7FFFF00FF00FF00FF00FF00
            FF00679EA3FFB73B16FFD67D66FFE8896DFFE48870FFE58365FFE5896DFFE687
            6AFFCF6341FFF5C4A0FFFFEDD2FFFA8463FF9D8888FFFF00FF00FF00FF00FF00
            FF00878787FF5C5C5CFF959595FFA1A1A1FFA1A1A1FF9C9C9CFFA0A0A0FF9F9F
            9FFF7E7E7EFFC5C5C5FFE5E5E5FFA4A4A4FF8F8F8FFFFF00FF00CAE2E6FF6B77
            73FFB58974FFB09787FFE28165FFE4886FFFE58569FFCF7E68FFD9876FFFD66B
            46FFFFD0AEFFFFECD2FFFCA286FFA46D5DFFFF00FF00FF00FF00D9D9D9FF6F6F
            6FFF8F8F8FFF979797FF9A9A9AFFA1A1A1FF9E9E9EFF939393FF9C9C9CFF8484
            84FFD1D1D1FFE5E5E5FFB8B8B8FF7B7B7BFFFF00FF00FF00FF00D2D7D4FF7F92
            89FFAD5033FFEB866AFFE48D75FFE79882FFECAB98FFCC9489FFB96C5AFF71A1
            C4FF7892A8FFF99C79FFA46C5DFFFF00FF00FF00FF00FF00FF00D3D3D3FF8686
            86FF676767FFA1A1A1FFA4A4A4FFACACACFFBBBBBBFFA4A4A4FF828282FF9A9A
            9AFF8F8F8FFFB0B0B0FF7B7B7BFFFF00FF00FF00FF00FF00FF00E3A794FFEE9D
            87FFF2B9ABFFEEB9ACFFEFB9A9FFEFBAABFFF2BFB1FFCE775DFF76BEE5FF08B8
            FFFF1F8FFFFF4D5069FFFF00FF00FF00FF00FF00FF00FF00FF00B5B5B5FFB2B2
            B2FFC8C8C8FFC7C7C7FFC6C6C6FFC7C7C7FFCBCBCBFF8D8D8DFFB0B0B0FF8C8C
            8CFF929292FF585858FFFF00FF00FF00FF00FF00FF00FF00FF00F6F4F3FFDE84
            69FFEFC0B2FFF3CDC3FFF3CCC3FFF5D3C9FFD58167FFFFD9C7FF1BEAFFFF02CA
            FFFF05B3FEFF2997FFFF647D96FFFDFDFDFFFF00FF00FF00FF00F4F4F4FF9B9B
            9BFFCBCBCBFFD6D6D6FFD6D6D6FFDADADAFF959595FFDEDEDEFF999999FF8C8C
            8CFF8A8A8AFF979797FF7C7C7CFFFDFDFDFFFF00FF00FF00FF00FF00FF00C18D
            7EFFFAD9D2FFF3D2C7FFFAE9E6FFD58871FFF4DCCDFFFFFFFCFFBEBAAAFF17FA
            FFFF05CAFFFF05B3FEFF2D98FFFF647D96FFFCFCFCFFFF00FF00FF00FF009B9B
            9BFFE2E2E2FFD8D8D8FFECECECFF9B9B9BFFDCDCDCFFFBFBFBFFB1B1B1FF9A9A
            9AFF8D8D8DFF8A8A8AFF999999FF7C7C7CFFFCFCFCFFFF00FF00FF00FF00FAFA
            FAFFE9987FFFFFFFFFFFDC8265FFF7ECE8FFFFFFFFFFFDAF92FFA86660FFBCD4
            D6FF20FFFFFF05C9FFFF05B3FEFF2D98FFFF5C748EFFFDFDFDFFFF00FF00FAFA
            FAFFACACACFFFDFDFDFF989898FFECECECFFFDFDFDFFC0C0C0FF7D7D7DFFCACA
            CAFF9E9E9EFF8D8D8DFF8A8A8AFF999999FF747474FFFDFDFDFFFF00FF00FF00
            FF00C39E93FFE2947BFFBFA2A0FFEF9775FFFCB399FFA2695DFFFF00FF00FF00
            FF00BCD3D5FF1DFFFFFF05C9FFFF02B4FFFF40B0FFFF959FA6FFFF00FF00FF00
            FF00A7A7A7FFA7A7A7FFACACACFFA9A9A9FFC3C3C3FF7A7A7AFFFF00FF00FF00
            FF00C9C9C9FF9C9C9CFF8D8D8DFF8A8A8AFFA3A3A3FF9D9D9DFFFF00FF00FF00
            FF00FF00FF00F3F2F2FFFF00FF00D2C1BCFFBC9081FFFF00FF00FF00FF00FF00
            FF00FF00FF00C2D9DBFF0FFAFFFF1FB6E5FF4C7A90FFF7F7F7FFFF00FF00FF00
            FF00FF00FF00F2F2F2FFFF00FF00C5C5C5FF9A9A9AFFFF00FF00FF00FF00FF00
            FF00FF00FF00CFCFCFFF969696FF898989FF6F6F6FFFF7F7F7FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E6FDFFFF85BFE2FFF4F5F5FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00F3F3F3FFB4B4B4FFF5F5F5FFFF00FF00}
          NumGlyphs = 2
          Spacing = 5
        end
        object BtnPesquisaCCli: TCBitBtn
          Left = 8
          Top = 135
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          TabOrder = 4
          OnClick = BtnPesquisaCCliClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF030303000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF232323505050070707FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2121
            216F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF232323767676404040FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2525257C7C7C4343
            43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF272727838383454545FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            5A5A5A9D9D9DBABABAC2C2C2B8B8B89494945050509B9B9B4C4C4CFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F999999BFBFBFDCDCDCE2E2E2D8D8D8C1
            C1C1B4B4B46E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333727272
            979797DCDCDCE7E7E7EEEEEEE5E5E5DBDBDBABABAB7E7E7EFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF5D5D5D626262AFAFAFC2C2C2D9D9D9EAEAEAD6D6D6CB
            CBCBB4B4B4858585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF686868595959
            979797A5A5A5D4D4D4E2E2E2ADADAD9E9E9E9C9C9C757575FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF7E7E7E5C5C5C818181C8C8C8FDFDFDFDFDFDD4D4D489
            8989767676676767FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7C999999
            C3C3C3F6F6F6FFFFFFFFFFFFFFFFFFC5C5C59C9C9C6E6E6EFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF989898D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFEC
            ECEC9898986F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494
            8B8B8BBDBDBDE5E5E5F3F3F3DBDBDB9E9E9EB8B8B8959595FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F7F7F7F929292868686838383A8
            A8A8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Spacing = 5
        end
      end
    end
    object TabImportar: TTabSheet
      Caption = 'Importar Dados'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 254
      object CGroupBox11: TCGroupBox
        Left = 9
        Top = 3
        Width = 456
        Height = 170
        Caption = 'Importar dados'
        TabOrder = 0
        object CLabel48: TCLabel
          Left = 12
          Top = 18
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Empresa'
        end
        object CGroupBox13: TCGroupBox
          Left = 12
          Top = 40
          Width = 437
          Height = 57
          Caption = 'Contabil - Plano de Contas'
          TabOrder = 0
          object CBitBtn1: TCBitBtn
            Left = 24
            Top = 136
            Width = 75
            Height = 25
            Caption = '&Excluir'
            TabOrder = 0
            Glyph.Data = {
              36080000424D3608000000000000360000002800000020000000100000000100
              2000000000000008000000000000000000000000000000000000FF00FF00EFEF
              EF00BDBDBD00F7F7F700FF00FF00FFFFFF00DEDEDE00CECECE00BDBDBD00BDBD
              BD00B5B5B5009C9C9C00A5A5A500A5A5A500FF00FF00FF00FF00FF00FF00E7E7
              E700BDBDBD00F7F7F700FF00FF00FFFFFF00DEDEDE00CECECE00BDBDBD00BDBD
              BD00B5B5B50094949400A5A5A500A5A5A500FF00FF00FF00FF00EFEFEF00E7E7
              E7009C9C9C007B7B7B009494940094949400BDBDBD00DEDEDE00EFEFEF00E7E7
              E700C6C6C600B5B5B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF00DEDE
              DE009C9C9C007B7B7B00949494008C8C8C00BDBDBD00DEDEDE00EFEFEF00E7E7
              E700C6C6C600B5B5B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF009494
              9400C6C6C6009C9C9C008C8C8C00C6BDBD00C6A59C00CEAD9C00D6B5AD00DEBD
              B500CECECE00DEDEDE00CECECE00CECECE00DEDEDE00BDBDBD00E7E7E7009494
              9400BDBDBD009C9C9C0084848400BDBDBD00ADADAD00B5B5B500BDBDBD00C6C6
              C600CECECE00D6D6D600CECECE00C6C6C600D6D6D600B5B5B500E7E7E7009C9C
              9C00A5A5A500C6CEC60094736300B5522900BD6B4A00C6947B00DEBDB500DEC6
              B500C6C6C600C6C6C600CECECE00D6D6D600DEDEDE00DEDEDE00E7E7E7009C9C
              9C009C9C9C00C6C6C600737373006B6B6B007B7B7B009C9C9C00C6C6C600C6C6
              C600C6C6C600BDBDBD00CECECE00CECECE00DEDEDE00D6D6D600EFEFEF00B5B5
              B5007B7B7B00DEDEDE00A5948400BD7B5A00C68C6B00D6AD9400E7CEBD00E7D6
              C600C6BDBD00B5B5B500E7E7E700E7E7E700E7EFEF00ADADAD00EFEFEF00ADAD
              AD007B7B7B00DEDEDE00949494008484840094949400ADADAD00CECECE00D6D6
              D600BDBDBD00ADADAD00DEDEDE00DEDEDE00E7E7E700ADADAD00FFFFFF00CECE
              CE007B7B7B00C6C6C600CEC6C600C6846B00CE947300DEB59C00EFD6C600EFDE
              CE00DEBDAD00CEC6BD00D6DEE700BD735A00FFF7F700FF00FF00F7F7F700C6C6
              C6007B7B7B00C6C6C600C6C6C6008C8C8C009C9C9C00B5B5B500D6D6D600DEDE
              DE00BDBDBD00C6C6C600DEDEDE0084848400F7F7F700FF00FF00FFFFFF00DEDE
              DE0084848400ADADAD00E7E7EF00AD6B5200CE8C7300E7BDA500EFD6CE00EFD6
              CE00E7BDAD00D69C7B00D69C7B00C66B4A00FFFFFF00FF00FF00FFFFFF00D6D6
              D6007B7B7B00ADADAD00E7E7E7007B7B7B0094949400BDBDBD00D6D6D600DEDE
              DE00C6C6C600A5A5A500A5A5A5007B7B7B00FFFFFF00FF00FF00FF00FF00D6D6
              D6009C9C9C009CA59C00D6D6DE00A5736300CE947300D6AD9400EFD6CE00EFD6
              CE00E7BDAD00D69C7B00D6947300CE6B4200FFFFFF00FF00FF00FF00FF00D6D6
              D6009C9C9C009C9C9C00D6D6D6007B7B7B009C9C9C00B5B5B500DEDEDE00DEDE
              DE00C6C6C600A5A5A5009C9C9C007B7B7B00FFFFFF00FF00FF00FF00FF00E7E7
              E700ADADAD009C9C9C00BDC6C600A57B6300D6947300DEAD9C00EFD6C600EFDE
              D600E7BDAD00D69C7B00CE947300CE6B4200FFFFFF00FF00FF00FF00FF00E7E7
              E700ADADAD009C9C9C00BDBDBD007B7B7B009C9C9C00B5B5B500D6D6D600DEDE
              DE00C6C6C600A5A5A5009C9C9C007B7B7B00FFFFFF00FF00FF00FF00FF00FFFF
              FF00B5B5B500A5A5A500ADADAD00AD7B5A00CE8C6B00D6AD9400F7D6CE00F7DE
              D600EFC6B500DEA58400D6947300CE734A00FFFFFF00FF00FF00FF00FF00FFFF
              FF00B5B5B500A5A5A500ADADAD007B7B7B0094949400B5B5B500DEDEDE00E7E7
              E700CECECE00ADADAD009C9C9C0084848400FFFFFF00FF00FF00FF00FF00FF00
              FF00E7E7E700DEDEDE0094949400B56B4A00A5735A00AD948400BDADA500C6B5
              AD00B5A59C00AD846B00AD735200BD634200FFFFFF00FF00FF00FF00FF00FF00
              FF00E7E7E700DEDEDE008C8C8C00737373007B7B7B0094949400ADADAD00B5B5
              B500A5A5A5008C8C8C007B7B7B007B7B7B00FFFFFF00FF00FF00FF00FF00FF00
              FF00FFFFFF00F7F7F70084736300A5A5A500BDBDBD00CECECE00D6D6DE00DEDE
              DE00D6D6D600C6C6C600B5B5B5008C7B7B00C6C6C600FF00FF00FF00FF00FF00
              FF00FFFFFF00F7F7F70073737300A5A5A500BDBDBD00CECECE00D6D6D600DEDE
              DE00D6D6D600C6C6C600B5B5B5007B7B7B00C6C6C600FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00ADADAD00B5A59C00CEBDB500C6C6C600DEDEDE00BDBD
              BD00CECECE00D6D6D600C6BDBD00BDBDBD00A5A5A500FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00ADADAD00A5A5A500BDBDBD00C6C6C600DEDEDE00BDBD
              BD00C6C6C600CECECE00BDBDBD00BDBDBD00A5A5A500FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00DEDEDE00948C8C00BDBDBD00C6C6C600C6C6C600DEDE
              DE00D6D6D600D6D6D600B5ADAD00D6D6D600CECECE00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00DEDEDE008C8C8C00BDBDBD00BDBDBD00C6C6C600D6D6
              D600D6D6D600D6D6D600ADADAD00CECECE00CECECE00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FFFFFF00F7F7EF00D6D6D600A5A5A500C6C6C600D6D6
              D600DEDEDE00E7E7E700F7F7F700F7F7F700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FFFFFF00EFEFEF00D6D6D600A5A5A500BDBDBD00D6D6
              D600D6D6D600DEDEDE00F7F7F700F7F7F700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7F7F700F7F7
              F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7F7F700F7F7
              F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            NumGlyphs = 2
          end
          object BtnExcluir2: TCBitBtn
            Left = 82
            Top = 21
            Width = 75
            Height = 25
            Caption = '&Gerencial'
            TabOrder = 1
            OnClick = BtnExcluir2Click
            NumGlyphs = 2
          end
          object CBitBtn2: TCBitBtn
            Left = 228
            Top = 21
            Width = 75
            Height = 25
            Caption = 'Fiscal'
            TabOrder = 2
            OnClick = CBitBtn2Click
            NumGlyphs = 2
          end
        end
        object CGroupBox15: TCGroupBox
          Left = 12
          Top = 103
          Width = 437
          Height = 57
          Caption = 'Finan'#231'as - Conta Gerencial'
          TabOrder = 1
          object CBitBtn3: TCBitBtn
            Left = 24
            Top = 136
            Width = 75
            Height = 25
            Caption = '&Excluir'
            TabOrder = 0
            Glyph.Data = {
              36080000424D3608000000000000360000002800000020000000100000000100
              2000000000000008000000000000000000000000000000000000FF00FF00EFEF
              EF00BDBDBD00F7F7F700FF00FF00FFFFFF00DEDEDE00CECECE00BDBDBD00BDBD
              BD00B5B5B5009C9C9C00A5A5A500A5A5A500FF00FF00FF00FF00FF00FF00E7E7
              E700BDBDBD00F7F7F700FF00FF00FFFFFF00DEDEDE00CECECE00BDBDBD00BDBD
              BD00B5B5B50094949400A5A5A500A5A5A500FF00FF00FF00FF00EFEFEF00E7E7
              E7009C9C9C007B7B7B009494940094949400BDBDBD00DEDEDE00EFEFEF00E7E7
              E700C6C6C600B5B5B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF00DEDE
              DE009C9C9C007B7B7B00949494008C8C8C00BDBDBD00DEDEDE00EFEFEF00E7E7
              E700C6C6C600B5B5B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF009494
              9400C6C6C6009C9C9C008C8C8C00C6BDBD00C6A59C00CEAD9C00D6B5AD00DEBD
              B500CECECE00DEDEDE00CECECE00CECECE00DEDEDE00BDBDBD00E7E7E7009494
              9400BDBDBD009C9C9C0084848400BDBDBD00ADADAD00B5B5B500BDBDBD00C6C6
              C600CECECE00D6D6D600CECECE00C6C6C600D6D6D600B5B5B500E7E7E7009C9C
              9C00A5A5A500C6CEC60094736300B5522900BD6B4A00C6947B00DEBDB500DEC6
              B500C6C6C600C6C6C600CECECE00D6D6D600DEDEDE00DEDEDE00E7E7E7009C9C
              9C009C9C9C00C6C6C600737373006B6B6B007B7B7B009C9C9C00C6C6C600C6C6
              C600C6C6C600BDBDBD00CECECE00CECECE00DEDEDE00D6D6D600EFEFEF00B5B5
              B5007B7B7B00DEDEDE00A5948400BD7B5A00C68C6B00D6AD9400E7CEBD00E7D6
              C600C6BDBD00B5B5B500E7E7E700E7E7E700E7EFEF00ADADAD00EFEFEF00ADAD
              AD007B7B7B00DEDEDE00949494008484840094949400ADADAD00CECECE00D6D6
              D600BDBDBD00ADADAD00DEDEDE00DEDEDE00E7E7E700ADADAD00FFFFFF00CECE
              CE007B7B7B00C6C6C600CEC6C600C6846B00CE947300DEB59C00EFD6C600EFDE
              CE00DEBDAD00CEC6BD00D6DEE700BD735A00FFF7F700FF00FF00F7F7F700C6C6
              C6007B7B7B00C6C6C600C6C6C6008C8C8C009C9C9C00B5B5B500D6D6D600DEDE
              DE00BDBDBD00C6C6C600DEDEDE0084848400F7F7F700FF00FF00FFFFFF00DEDE
              DE0084848400ADADAD00E7E7EF00AD6B5200CE8C7300E7BDA500EFD6CE00EFD6
              CE00E7BDAD00D69C7B00D69C7B00C66B4A00FFFFFF00FF00FF00FFFFFF00D6D6
              D6007B7B7B00ADADAD00E7E7E7007B7B7B0094949400BDBDBD00D6D6D600DEDE
              DE00C6C6C600A5A5A500A5A5A5007B7B7B00FFFFFF00FF00FF00FF00FF00D6D6
              D6009C9C9C009CA59C00D6D6DE00A5736300CE947300D6AD9400EFD6CE00EFD6
              CE00E7BDAD00D69C7B00D6947300CE6B4200FFFFFF00FF00FF00FF00FF00D6D6
              D6009C9C9C009C9C9C00D6D6D6007B7B7B009C9C9C00B5B5B500DEDEDE00DEDE
              DE00C6C6C600A5A5A5009C9C9C007B7B7B00FFFFFF00FF00FF00FF00FF00E7E7
              E700ADADAD009C9C9C00BDC6C600A57B6300D6947300DEAD9C00EFD6C600EFDE
              D600E7BDAD00D69C7B00CE947300CE6B4200FFFFFF00FF00FF00FF00FF00E7E7
              E700ADADAD009C9C9C00BDBDBD007B7B7B009C9C9C00B5B5B500D6D6D600DEDE
              DE00C6C6C600A5A5A5009C9C9C007B7B7B00FFFFFF00FF00FF00FF00FF00FFFF
              FF00B5B5B500A5A5A500ADADAD00AD7B5A00CE8C6B00D6AD9400F7D6CE00F7DE
              D600EFC6B500DEA58400D6947300CE734A00FFFFFF00FF00FF00FF00FF00FFFF
              FF00B5B5B500A5A5A500ADADAD007B7B7B0094949400B5B5B500DEDEDE00E7E7
              E700CECECE00ADADAD009C9C9C0084848400FFFFFF00FF00FF00FF00FF00FF00
              FF00E7E7E700DEDEDE0094949400B56B4A00A5735A00AD948400BDADA500C6B5
              AD00B5A59C00AD846B00AD735200BD634200FFFFFF00FF00FF00FF00FF00FF00
              FF00E7E7E700DEDEDE008C8C8C00737373007B7B7B0094949400ADADAD00B5B5
              B500A5A5A5008C8C8C007B7B7B007B7B7B00FFFFFF00FF00FF00FF00FF00FF00
              FF00FFFFFF00F7F7F70084736300A5A5A500BDBDBD00CECECE00D6D6DE00DEDE
              DE00D6D6D600C6C6C600B5B5B5008C7B7B00C6C6C600FF00FF00FF00FF00FF00
              FF00FFFFFF00F7F7F70073737300A5A5A500BDBDBD00CECECE00D6D6D600DEDE
              DE00D6D6D600C6C6C600B5B5B5007B7B7B00C6C6C600FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00ADADAD00B5A59C00CEBDB500C6C6C600DEDEDE00BDBD
              BD00CECECE00D6D6D600C6BDBD00BDBDBD00A5A5A500FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00ADADAD00A5A5A500BDBDBD00C6C6C600DEDEDE00BDBD
              BD00C6C6C600CECECE00BDBDBD00BDBDBD00A5A5A500FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00DEDEDE00948C8C00BDBDBD00C6C6C600C6C6C600DEDE
              DE00D6D6D600D6D6D600B5ADAD00D6D6D600CECECE00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00DEDEDE008C8C8C00BDBDBD00BDBDBD00C6C6C600D6D6
              D600D6D6D600D6D6D600ADADAD00CECECE00CECECE00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FFFFFF00F7F7EF00D6D6D600A5A5A500C6C6C600D6D6
              D600DEDEDE00E7E7E700F7F7F700F7F7F700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FFFFFF00EFEFEF00D6D6D600A5A5A500BDBDBD00D6D6
              D600D6D6D600DEDEDE00F7F7F700F7F7F700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7F7F700F7F7
              F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00F7F7F700F7F7
              F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            NumGlyphs = 2
          end
          object CBitBtn4: TCBitBtn
            Left = 82
            Top = 21
            Width = 75
            Height = 25
            Caption = '&Gerencial'
            TabOrder = 1
            OnClick = CBitBtn4Click
            NumGlyphs = 2
          end
        end
        object EDidEmpresaOri: TCEdit
          Left = 59
          Top = 15
          Width = 47
          Height = 19
          BorderStyle = bsNone
          BevelKind = bkTile
          TabOrder = 2
          OnExit = EDidEmpresaOriExit
          DataType = ftUnknown
          Find = FindEmpresaOri
          KeyMode = kmNormal
          Decimals = 0
        end
        object LookdescEmpresa: TCEdit
          Left = 112
          Top = 15
          Width = 337
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          BevelKind = bkTile
          Color = 14149350
          TabOrder = 3
          OnExit = EDidEmpresaOriExit
          DataType = ftUnknown
          Find = FindEmpresaOri
          KeyMode = kmNormal
          Decimals = 0
        end
      end
      object EDpar: TCEdit
        Left = 488
        Top = 144
        Width = 57
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 1
        Text = 'EDpar'
        Visible = False
        DataType = ftUnknown
        KeyMode = kmNormal
        Decimals = 0
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 632
    Top = 64
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B3A39DFFAC3F00FF973009FF6F1F05FF674434FF7167
      61FFD7D2CFFFF8F8F7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFADA19EFFE17400FFA74304FFE5CCBFFFEBD9CEFFD7A993FFB663
      3AFF993608FF6F5348FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBDBDCFFA7A8AAFF9091
      93FF6D6B6FFFF08400FFE17B00FFAA4605FFE6CDC0FFEAD6CBFFE2C6B9FFDBB6
      A4FFD8B29EFFBE8F7AFFF5F4F3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1A1A1FFD1D1D0FFF7F5
      F5FFECD9D4FFF38B00FFE78100FFAD4805FFEBD6CCFFF6E3DAFF48789AFF7E89
      9EFFCE997FFFBD917DFFF6F5F4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEBEAFFFEFEFEFFFCFC
      FCFFE7D5D1FFFB9300FFED8700FFA03F00FFEED8CDFFF1E5E0FFFADECFFFE8CA
      BCFFDDBCACFFC09887FFF6F5F4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDBDAFFFEFEFEFFFAF9
      F9FFE3D4D0FFFF9A00FFF48E00FFA54102FFEECAABFFEBCFB8FFEEDACDFFF0D9
      CDFFEBCDBFFFC6A395FFF6F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9C8C7FFFFFFFFFFF9F8
      F8FFE0D1CEFFFF9F06FFFB9000FFFFF9F5FFFDF0E1FFF5DCC4FFFDD9B7FF8C4E
      2DFF77380DFF856152FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECCCCFFFEFDFEFFF8F6
      F7FFDECFCBFFFFA81DFFFF9901FFD57822FFFDF8F4FFF8CEBCFFCC9D89FFD9B6
      A3FFD5AD98FF745240FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAE9E9FFFCFDFDFFF7F7
      F5FFDDCCC8FFFFB133FFFFA114FFE28925FFF4EAE5FF7396A8FF537392FFB699
      8CFFD8B29EFF68442FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEEEFFF7F7
      F6FFDCCBC6FFFFBA48FFFFAA29FFEF9728FFF7F0F0FFFBE4D7FFF8D8C7FFE5C3
      B2FFDCB9A8FF633D25FFF2F2F2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCACAFFFBFB
      FAFFE3D1CAFFFFC45DFFFFB239FFF9A52CFFFAD097FFF5D2A9FFEFCFAEFFEAC7
      A9FFE6C4A7FF603B1EFFCBCBCCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D8D7FFF2F3
      F1FFF0E5E1FFCC9B81FFC89E90FFCA9D8AFFC18E78FFC3937EFFBB836DFFB38E
      82FFBFA9A5FF969393FF9FA0A2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E6FFF7F6F6FFFCFDFDFFFCFDFEFFF8F9F9FFF4F5F5FFEDEEEDFFE3E4E5FFE1E1
      E0FFE1E1E0FFE7E7E5FF797B7DFFF5F6F6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C0
      BFFFEFEFEFFFF7F6F6FFE0DEDEFFEDEDEDFFE6E6E6FFE3E3E1FFE8E8E8FFF3F3
      F2FFF2F1F0FFF3F3F4FF7E7F80FFE8E8E9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFF81807DFF5B5A56FFB7B5B2FFC5C2C2FFECEAEAFFF4F4F4FFFDFDFDFFFFFF
      FFFFF0EFEFFFD6D5D4FFE6E5E5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F5FFFDFDFCFFACA8A8FFD6D4D4FFC2BFBFFFD7D5D5FFF8F7
      F7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700BDBDBD009C9C9C007B7B7B005A5A5A0042424200292929001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5D9DAFFDFE0E0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF4F4F4FFB7B0AFFFD1CF
      CEFF000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00CECECE00ADADAD006B6B6B00000000000000000000000000000000000000
      00000000000000000000D1D8D9FF228B96FF3A868EFFE5E6E6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9D9DAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFF2F1F1FFC1BDBEFFE6E2E2FFF3EAE5FFE6D9C7FFDECC
      B5FFA29C9AFFFEFEFEFF000000000000000000000000000000009C635A006B4A
      42005A4242005A525200948C8C00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADADAD00000000000000000000000000000000000000
      000000000000D3DADBFF26838CFF001618FF00454DFF408E96FFE8E9E9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ABA9A8FFDCDCDCFF8C8B8DFFEEEEEEFF000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F9FFCCC6C8FFE5DFE0FFD7D1D3FF7E7E7FFF706F6FFFA39F99FF524441FF3B2A
      28FF403432FF4A4747FFFDFDFDFF000000000000000000000000DEC6BD00BD94
      8400A56B63008C5A520073524A00634242006B636300C6C6C600DEDEDE00DEDE
      DE00E7E7E700EFEFEF006B6B6B00000000000000000000000000000000000000
      0000D4DBDBFF28858FFF001314FF000C0EFF00363CFF002E32FF44929AFFE7E8
      E8FF000000000000000000000000000000000000000000000000000000000000
      000000000000DFDFDFFFF0EDE9FFE7E5DEFFB5B3B0FFD2D1D2FFC1C0C1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E3E2FFCEC9C9FF7E797AFF534C4DFF47403CFF463836FF453633FF4D42
      3FFF5C514CFF5F5248FFCBCACAFF000000000000000000000000CEADAD00AD84
      73009C635A008C6352008C5A520094635200946352007B5A5200847B7300BDBD
      BD00BDBDBD00B5B5B5002929290000000000000000000000000000000000D7DD
      DEFF288890FF001719FF000000FF001114FF003E43FF000000FF00373CFF4391
      97FFEAEAEBFF0000000000000000000000000000000000000000000000000000
      000000000000D4CBC2FFE4E1D9FFE5E2DAFFE5E0D8FFD1C9C1FFDDDCDCFF8D8C
      8DFFE9E9E9FF000000000000000000000000F5F4F2FFF5F4F2FFF5F4F2FFF5F4
      F2FFF5F4F2FFEAE8E6FF7E7574FF5A5052FF655F5FFF5F5C59FF373836FF3E3B
      3CFF46494DFF5F5047FFB3816BFF0000000000000000DECECE00C6A59C00AD7B
      6B0094635A008C5A52008C5A520094635200A5736300BD948C00B58C8400846B
      6300ADA5A500ADADAD0018101000000000000000000000000000D6DCDCFF2B7D
      85FF001314FF000000FF000000FF000A0CFF00373DFF000000FF000000FF003A
      3EFF478D93FFE9EAEAFF00000000000000000000000000000000000000000000
      0000A19A94FFE1DAD3FFE5E0D8FFE3DCD5FFDDD6CEFFDCD2C8FFD5C9BDFFB1AD
      A9FFDFDFDFFFB1B0B1FF0000000000000000F8F6F5FFF8F8FAFFF9F8FAFFF8F6
      F8FFF6F5F8FFF6F5F7FFF5F3F6FFD1D1CFFF6B6C68FF87665BFFB54D2AFFBF3F
      0DFFC8410BFFC73C0AFFCE5524FFFEFEFEFF00000000D6BDB500B58C8400A56B
      6300946352008C5A5200946352009C6B5A00AD7B7300BD948C00CEADA500D6BD
      B500AD736B006B636300080800000000000000000000D8DDDDFF2A858CFF0066
      6CFF010101FF0C0707FF160F0EFF1C3133FF195D62FF120F0EFF080303FF0057
      5CFF00828AFF46878BFFEBEBEBFF00000000000000000000000000000000D1D0
      D1FFE3DBD3FFDCD3C9FFDAD1C8FFDDD3CAFFDDD3C9FFD4C8BDFFCEC0B3FFCCBC
      ADFFB1A297FFE6E6E6FFC5C4C5FF00000000F8F7F6FFF4FAF7FFBA883AFFF7F7
      F8FFF0E9EAFFEDE9E9FFEBE6E8FFCAADA2FFAC3714FFB13416FFB93B18FFC33F
      1CFFD25D37FFD86039FFE05A30FFFDFDFCFF00000000C6ADA500AD8473009C6B
      5A0094635200946352009C635A00AD736B00B58C8400C6A59C00CEB5AD00D6B5
      AD00CEADA500635252000000000000000000CED5D5FF2A7E85FF028F96FF2CF3
      F6FF549DA0FF666E6EFF6E797BFF70CDCFFF6FABAFFF6C5C5BFF614E4DFF48A3
      A7FF1BE5E8FF00747BFF44888BFFE2E3E3FF0000000000000000F6F6F6FFC9BA
      B0FFCEC1B4FFD2C6BAFFD9CEC2FFD6CBBFFFD1C5B9FFD2C4B7FFCEBEB0FFC2B1
      A4FFBDAA9EFFB9A59AFF0000000000000000F8F7F7FFF9FAF7FFEDEBE6FFE5DC
      CCFFF8F8F8FFF7F6F7FFF6F5F5FFE8E2E2FFBB543BFFB74429FFC24728FFD24C
      2BFFE18062FFE88764FFEB805AFFF0EFF0FF00000000BD9C9400AD736B009C63
      5A00946352009C635A00A5736300B5847B00BD9C9400CEADA500CEB5AD00CEB5
      AD00A58C840052525200000000000000000098C0C2FF1A7F83FF68E8EAFF88FE
      FFFF87FAFDFF83AEB1FF81B0B3FF82FBFDFF82E4E7FF829798FF849C9EFF89E8
      EDFF83FFFFFF4DB9BBFF187F84FFCCD5D6FF000000000000000093847FFFC6B6
      A9FFCCBCADFFCFC1B2FFCDBEB0FFCFC0B2FFD1C2B4FFC9B9ABFFB6ABA0FFB680
      7DFFBCA89DFFD4C8C2FF0000000000000000F8F7F7FFF9FBFBFFD2B68FFFF3E8
      CCFFF8F8F9FFF6F7F7FFF5F6F6FFF1F1F5FFC8725AFFC25239FFD1563BFFDE67
      48FFEFA58FFFEFA689FFF3A582FFDAD6D3FFCEB5AD00BD948400A57363009C63
      5A0094635A00A56B5A00AD7B7300BD948C00C6A5A500CEADA500CEB5AD00AD84
      7B00D6D6D600292929000000000000000000FAFAFAFFA4BFC1FFA7CBCDFF93F8
      F6FF92CBCEFF928383FF928484FF92CCCEFF92FEFFFF92B1B3FF92AEB1FF91FA
      FCFF9BE8EBFF9BBDBEFFBACBCCFF0000000000000000BEBCBDFFCFC1BAFFC2B0
      A3FFC1B0A3FFC4B3A6FFCABAACFFC9B8AAFFC4B3A5FFB6ABA2FFF2736CFFFDBB
      A1FFA18385FF000000000000000000000000F8F7F7FFFBFAF7FFEFE9E0FFEAED
      EAFFF4F2F2FFF3F2F2FFF1F1F1FFF1EFF1FFCC7360FFD06049FFE06C50FFEF8D
      71FFF6C4B1FFF1BCA6FFF2BBA0FFD3C6BDFFE7D6D600B58C8400A57363009C6B
      5A00A56B5A00AD7B6B00B58C8400C69C9400C6A5A500CEADA500B58C8400B5AD
      AD00B5ADAD001008080000000000000000000000000000000000B0C4C5FFB3DA
      DAFFAAD7D8FFA7A3A3FFA7A0A1FFA7DFE0FFA7F8F9FFA8A9AAFFA6AAABFFB0E7
      E8FFA6C6C6FFC1CACAFF0000000000000000F4F4F4FFC3B5B0FFBCA9A0FFBEAD
      A3FFC5B4AAFFC9B8AEFFC7B7ACFFC6B6ABFFB7AFA4FFEA161BFFFE584BFFFF6B
      5CFFFD3A32FFCCD0E3FF0000000000000000F8F7F7FFF8FBFBFFE5DED1FFECDA
      A5FFF8FAFAFFF5F8F8FFF5F7F7FFF5F7F8FFBC6551FFD66E5AFFE87961FFFAC1
      AFFFFBD3C0FFF2C5AFFFE6B6A4FFCEC0B5FFE7D6CE00B58C7B00A5736300A56B
      6300AD736B00B5847B00BD948C00C6A59C00C6A59C00BD9C9400735A5A00FFFF
      FF006B6B6B001810080000000000000000000000000000000000FEFEFEFFB5C5
      C6FFCCE7E7FFBDE4E5FFBBE9EAFFBBFBFEFFBBFCFFFFBAF3F4FFC5EBECFFBCD4
      D4FFC0C9C9FF000000000000000000000000F6F4F4FFC3B3AEFFC6B6B0FFCDBE
      B7FFCEC0BAFFD1C4BDFFD5C8C2FFCBC8BEFFC00314FFE5010AFFF61615FFF81E
      1BFFF1080BFFD2000FFFC9D4E7FF00000000F8F7F7FFFAF9F4FFEDDAB9FFF4F4
      F4FFE9E3E4FFE8E2E2FFE7E0E1FFE6DFE0FFB98279FFD0A399FFDCCAC7FFEBE3
      E6FFD8D4CFFFFEFEFEFF0000000000000000EFE7E700BD9C9400AD847300AD7B
      6B00AD847300BD948400BD9C9400BD9C9400C69C9400A56B5A00181008001810
      0800181008001810080000000000000000000000000000000000000000000000
      0000BDC9C9FFDFF4F4FFD2FFFFFFCFFDFFFFCFFCFEFFDAFFFFFFCCDDDDFFC1C9
      C9FF000000000000000000000000000000000000000000000000D7CDCAFFD5CA
      C7FFD9CFCAFFDCD2CEFFDED4D0FFD197A0FFD41821FFD6242DFFFF5146FFFF55
      4AFFC22636FFB32E41FFAC2E46FF00000000F8F8F7FFFEFEFEFFFBFCFCFFE4CC
      97FFFBFAFBFFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5F5FFF4F4
      F4FFD9D4CEFF000000000000000000000000000000000000000000000000C6A5
      9C00C6A59C00BD948C00BD948C00BD948C00B58C8400B5847B006B4A42000000
      0000181008000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFC0C9C8FFF3FCFCFFE2FEFEFFEDFFFFFFE0E8E8FFC3C8C8FF0000
      000000000000000000000000000000000000000000000000000000000000FBFA
      FAFFE7E3E3FFE8E5E5FFEBE9E8FFEEEBEBFFF9F9F9FFF9FAF9FFFF7E6DFFFF87
      74FFB6A3CBFF000000000000000000000000F8F8F7FFFCFDFDFFC1B7B8FFC3B8
      BAFFC3B8BAFFC1B6B8FFC0B5B7FFBBB0B1FFB7ACAEFFB5ADADFFDFDCDCFFF3F3
      F3FFD9D4CEFF0000000000000000000000000000000000000000000000000000
      000000000000CEB5AD00C69C9400B58C7B00AD847300BD9C9400CEADA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C8CECEFFFFFFFFFFEAEDEDFFC4C8C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F0F0FFFAFAFAFFF4F3F3FFFDFDFDFFD4DDDCFFFEA696FFF6C8
      C0FFBCB4CBFF000000000000000000000000F8F7F7FFFEFDFDFFFCFEFEFFFBFC
      FDFFFCFCFDFFFBFAFBFFFBF9FAFFFAF8F9FFF8F7F8FFF8F6F7FFF6F6F7FFF4F4
      F5FFD9D4CEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD948C00B58C8400DEC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFCFFC7CDCDFFC2C7C7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFCFF00000000FEFEFEFF00000000000000000000
      000000000000000000000000000000000000D2CDC9FFD2CDC9FFD2CDC9FFD2CD
      C9FFD2CDC9FFD2CDC9FFD2CDC9FFD2CDC9FFD2CDC9FFD2CCC8FFD2CCC9FFD2CC
      C9FFD8D3D1FF000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FC03000000000000F003000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      800300000000000080030000000000008003000000000000C001000000000000
      C001000000000000C001000000000000E000000000000000E000000000000000
      E001000000000000F80F000000000000F003FE7FFFFFFF0FF001FC3FFEFFF803
      C001F81FFC3FE001C001F00FF81FF001C001E007F80700018001C003F0030000
      80018001E001000080030000C003000080030000C00300000003000180070000
      0003C003000300000003C007000100030003F00FC0010007E017F01FE0070007
      F81FFC3FF8070007FE3FFC7FFD7F000700000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 696
    Top = 64
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM CadGeral'
    Left = 696
    Top = 128
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsCadGeral
    Left = 664
    Top = 128
  end
  inherited dsPadrao: TDataSource
    Left = 728
    Top = 128
  end
  inherited cdsLookUp: TClientDataSet
    Left = 696
    Top = 96
  end
  inherited dspLookUp: TDataSetProvider
    Left = 664
    Top = 96
  end
  inherited ImgBotoes: TImageList
    Left = 664
    Top = 64
    Bitmap = {
      494C010107000900040020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00CECECE00000000000000
      0000FFFFFF008C9CA500BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500CECECE00000000000000
      0000FFFFFF0094949400BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000426363008484
      8400002163000021630000216300848484008463630042212100000000000000
      0000000000004221420000214200000000000000000000000000A5A5A5000000
      000084848400848484008463630000000000A5A5A50042636300424242004242
      4200424242008463630042636300424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C600FFFF
      FF00395A7B00527BAD00426B9400BDBDC6000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C600FFFF
      FF005A5A5A007B7B7B006B6B6B00BDBDBD000000000000000000000000000000
      00008463630084636300C6636300C66363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A5A5A50084848400A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00008484C6000063C6000042A500000000008484840000000000422121004242
      4200848484008484A5004242630000000000000000000000000000000000FFFF
      FF00C6DEC60000000000A5A5A500FFFFFF000000000042636300426363008484
      8400000000000000000084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD3918003152
      73004A7BAD0084A5C600ADC6DE00949CA50000000000F7F7F700000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C00525252005252
      52007B7B7B00A5A5A500C6C6C6009C9C9C000000000000000000846363008463
      6300C6636300C6636300C6636300C66363008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000848484000000
      0000C6A5E7004284E7000042A500000000008484840042636300A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000A5A5A500FFFFFF0000000000A5A5A500C6DEC600C6DE
      C600C6DEC6000000000084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00A5422900844A4200846B
      6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B5A0039394A004A7B
      AD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A5A005A5A5A007373
      7300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C8C00424242007B7B
      7B009C9C9C00D6D6D6007B7B7B00FFFFFF00000000000000000084636300C684
      8400C6848400C6638400C6636300C663630084424200F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400C6DEC600C6DEC600C6DE
      C600C6DEC600C6DEC600A5A5A50000000000002142000021630084638400C6DE
      C60084A5C6004284C6004263A500C6DEC6008484A50084638400A5A5A500A5A5
      A500A5A5A5008484A5004242630000000000846363008463630000000000FFFF
      FF00F7FFFF0000000000A5A5A500FFFFFF000000000000000000F7FFFF00C6DE
      C600C6DEC6000000000084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B59C9C00D6734A00D6733900DE73
      3900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B7B00C6ADAD007384
      9C00C6D6EF0063738C00FFFFFF0000000000A5A5A50084848400848484008484
      84007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C0084848400B5B5B5008484
      8400D6D6D60073737300FFFFFF0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C66384008442420042C6630042C6630042C6
      630000C66300F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400848484008484
      840084848400C6DEC600A5A5A50000000000002142004242A50042638400C6DE
      C600F7FFFF000000000000000000F7FFFF008484A5004221840084638400A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000F7FF
      FF00C6DEC6000000000084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD949400D6846300D6734200CE6B
      3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD9C00AD9C9C00E7DE
      D60073738400AD391800C6C6C600000000009C9C9C0094949400848484007B7B
      7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5B5009C9C9C00DEDE
      DE007B7B7B005A5A5A00C6C6C60000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A50084848400C6DEC600A5A5A5000000000000216300424284008463C6008484
      A50084A5C600A5A5A500A5A5A5008484A5004221A50042218400A5A5A500A5A5
      A500A5A5A5008484A500424263000000000084636300A5A5A500C6DEC6000000
      0000F7FFFF00F7FFFF00F7FFFF0000000000A5A5A50084848400F7FFFF00F7FF
      FF00F7FFFF000000000084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C8C00E7A58400CE7B5A00D69C
      8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CEB500DEAD9C00A584
      7B00E7CEBD00FF8463009C8C8C00000000009C9C9C00ADADAD008C8C8C00A5A5
      A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECECE00B5B5B5008C8C
      8C00CECECE00A5A5A5008C8C8C0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500848484008484840084848400A5A5
      A50084848400C6DEC600A5A5A5000000000000000000002142004263840084A5
      E7004263E7004242C6004221C6000021C600002184008484A500000000000000
      0000A5A5A5008484A50042426300000000000000000084636300A5A5A500FFFF
      FF00C6DEC6000000000000000000A5A5A50084848400C6DEC600FFFFFF00F7FF
      FF00F7FFFF000000000084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C7B7B00F7BD9C00CE846B00DEC6
      C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6AD00E7A58400B5A5
      9C00C6634200A56B5A00000000000000000084848400C6C6C60094949400CECE
      CE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6C600ADADAD00A5A5
      A5007B7B7B007B7B7B000000000000000000000000000000000084636300C684
      8400C6848400C6A5A500F7FFFF00C684840084424200C6DEC60084E7840042E7
      840042E78400F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400C6DEC600C6C6C600A5A5
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000422121008484
      A5008484E7004263E7004242C6000021A5008484A50000000000000000000000
      0000000000008484A50042426300000000000000000000000000426363000000
      0000FFFFFF00C6DEC60000000000A5A5A50000000000FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7B7300F7C6AD00D6947B00E7CE
      BD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB59400E7A57B00C6B5
      B500AD4A1800FFF7F700000000000000000084848400CECECE009C9C9C00CECE
      CE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBDBD00ADADAD00B5B5
      B5005A5A5A00F7F7F7000000000000000000000000000000000084636300C684
      8400C6848400F7CEA500F7FFFF00C684840084424200FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000004263
      6300C6A5E7008484E700002184008484A500C6DEC60000000000000000000000
      000000000000A5A5A5004242630000000000000000000000000042636300A5A5
      A500FFFFFF00F7FFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC60084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A56B5A00F7CEB500DE9C8C00DEC6
      C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD9C00DE946B00BDB5
      B500D68C6300D6A59C0000000000000000007B7B7B00D6D6D600ADADAD00CECE
      CE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6C6009C9C9C00B5B5
      B50094949400B5B5B5000000000000000000000000000000000084636300F7CE
      A500C6848400C6848400C6848400C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A50084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000424242000000
      0000C6A5C6004263A500C6A5C600F7FFFF00C6DEC600C6DEC600000000000000
      0000A5A5A5008484A5004242630000000000000000000000000084848400FFFF
      FF00F7FFFF0000000000F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00C6DEC60084848400424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD847B00FFD6C600F7C6B500DEB5
      A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7DE00DEB5A500C6A5
      9C00D6AD9400D6947B00FFFFFF000000000094949400DEDEDE00CECECE00BDBD
      BD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00ADAD
      AD00B5B5B500A5A5A500FFFFFF0000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF0000000000A5A5A500426384008484
      84008484A5004284A5004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00A5A5A5000000
      00000000000000000000A5A5A500424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B58C8400FFDECE00F7CEBD00F7C6
      B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBDB500DED6CE00EFCE
      B500E7CEC600E7C6AD00E7CECE00000000009C9C9C00DEDEDE00D6D6D600CECE
      CE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6C600D6D6D600CECE
      CE00CECECE00C6C6C600D6D6D60000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00F7FFFF0000000000426384004284C60084C6E70084A5
      C60084C6E70084C6E7004263840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C6DEC600F7FFFF00C6DE
      C600FFFFFF00FFFFFF00A5A5A500424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD948C00FFE7D600F7DECE00F7D6
      C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD9C00D6947B00A57B
      73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7E700DEDEDE00D6D6
      D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5B500A5A5A5008484
      840094949400ADADAD007B7B7B00FFFFFF00000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A50000000000000000000000000084848400FFFF
      FF00F7FFFF00000000008484A5008484A50084A5C6008484A50084E7E70084E7
      E70084848400424242000021420000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000F7FFFF0000000000FFFFFF00FFFF
      FF00000000008484840042636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6948C00FFEFE700FFE7D600F7DE
      CE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD9C00F7B59C005A5A
      520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6C600C6C6C6005252
      52008C8C8C008C8C8C00A5A5A5009C9C9C000000000000000000846363008463
      6300C6848400F7CEA500F7CEA500C684A50084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000846363000000
      0000426384008484C60084C6E7008484A5004242630000214200000000000000
      0000426363000000000000000000000000000000000000000000A5A5A500FFFF
      FF000000000000000000FFFFFF00000000008484840084636300426363004263
      6300A5A5A5004242420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B59C9C00FFF7E700FFEFE700FFEF
      DE00FFE7D600A5736B008C635A00AD949400AD8C8400AD847B00BD7B73007B63
      630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700848484006B6B6B009C9C9C00949494008C8C8C00949494006B6B
      6B00949494008C8C8C006B6B6B00F7F7F7000000000000000000000000000000
      000084636300C6848400C6848400C68484008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000000000000000
      0000A5A5A500A5A5A500A5A5A500C6C6C60084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000424242004263
      840084C6E70084A5C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400A5A5
      A500FFFFFF00C6DEC60042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDADAD00C6A5A500CEAD
      A500CE9C9400F7F7F70000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F70000000000FFFFFF00B5B5B500ADADAD00B5B5
      B500ADADAD00F7F7F70000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F700000000000000000000000000000000000000
      0000000000000000000084636300846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004221
      2100422142000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004263
      6300846363004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6636300C663
      6300C6424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6A5
      A5008442420084424200C6636300000000000000000000000000848484008484
      840084848400A5A5A500C6C6C600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600848484008484840084848400000000000000000000A5C60000A5C60000A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00BDBDBD00F7F7
      F70000000000FFFFFF00DEDEDE00CECECE00BDBDBD00BDBDBD00B5B5B5009C9C
      9C00A5A5A500A5A5A500000000000000000000000000E7E7E700BDBDBD00F7F7
      F70000000000FFFFFF00DEDEDE00CECECE00BDBDBD00BDBDBD00B5B5B5009494
      9400A5A5A500A5A5A50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500CECECE00000000000000
      00000000000000000000000000000000000000000000C6848400C6636300C663
      6300C663630084848400C6A5A500C6DEC600FFFFFF00FFFFFF00F7FFFF00C6C6
      C6008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500C6C6C600F7FFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6008463630084636300A5A5A500848484000000000000A5C60084E7E70042C6
      E70042C6E70042A5E70000A5E7000084C6000084C60000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600A5A5A500A5A5A500A5A5A500848484008484840000000000000000000000
      000000000000000000000000000000000000EFEFEF00E7E7E7009C9C9C007B7B
      7B009494940094949400BDBDBD00DEDEDE00EFEFEF00E7E7E700C6C6C600B5B5
      B5009C9C9C00ADADAD007B7B7B00BDBDBD00EFEFEF00DEDEDE009C9C9C007B7B
      7B00949494008C8C8C00BDBDBD00DEDEDE00EFEFEF00E7E7E700C6C6C600B5B5
      B5009C9C9C00ADADAD007B7B7B00BDBDBD000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C6000000
      00000000000000000000000000000000000000000000C6848400C6636300C663
      6300C66363008484840084424200C6848400C6DEC600FFFFFF00FFFFFF00C6C6
      C6008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50084848400A5A5A500F7FFFF00FFFFFF00FFFFFF00C6DE
      C6008463630084848400A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70042E7E70042C6E70042C6E70042A5E70000A5E7000084
      C60000A5E7000000000000000000000000000000000084848400C6DEC600C6DE
      C600C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A500A5A5A5008484
      8400A5A5A500000000000000000000000000EFEFEF0094949400C6C6C6009C9C
      9C008C8C8C00C6BDBD00C6A59C00CEAD9C00D6B5AD00DEBDB500CECECE00DEDE
      DE00CECECE00CECECE00DEDEDE00BDBDBD00E7E7E70094949400BDBDBD009C9C
      9C0084848400BDBDBD00ADADAD00B5B5B500BDBDBD00C6C6C600CECECE00D6D6
      D600CECECE00C6C6C600D6D6D600B5B5B5000000000000000000000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD391800C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C0052525200C6C6
      C6000000000000000000000000000000000000000000C6848400C6636300C663
      6300C6636300C68484008442420084424200C6C6C600F7FFFF00FFFFFF00F7CE
      A5008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5008484840084848400C6C6C600FFFFFF00FFFFFF00C6DE
      C6008463630084636300A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70042E7E70042E7E70042C6E70042C6E70042C6
      E70042C6E70042A5E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600A5A5A5008484840000000000E7E7E7009C9C9C00A5A5A500C6CE
      C60094736300B5522900BD6B4A00C6947B00DEBDB500DEC6B500C6C6C600C6C6
      C600CECECE00D6D6D600DEDEDE00DEDEDE00E7E7E7009C9C9C009C9C9C00C6C6
      C600737373006B6B6B007B7B7B009C9C9C00C6C6C600C6C6C600C6C6C600BDBD
      BD00CECECE00CECECE00DEDEDE00D6D6D6000000000000000000000000000000
      000000000000639CA500B5391000D67B5A00EF846300E7846300D6633900AD42
      1800C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000848484005A5A5A00949494009C9C9C009C9C9C007B7B7B005A5A
      5A00C6C6C60000000000000000000000000000000000C6848400C6636300C663
      6300C6636300C68484008442420084424200A5A5A500C6DEC600FFFFFF00C6C6
      C6008421210084424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5008484840084636300A5A5A500F7FFFF00FFFFFF00F7FF
      FF008463630084636300A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70042E7E70042C6E70042C6E70042C6
      E70042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600A5A5A5008484840000000000EFEFEF00B5B5B5007B7B7B00DEDE
      DE00A5948400BD7B5A00C68C6B00D6AD9400E7CEBD00E7D6C600C6BDBD00B5B5
      B500E7E7E700E7E7E700E7EFEF00ADADAD00EFEFEF00ADADAD007B7B7B00DEDE
      DE00949494008484840094949400ADADAD00CECECE00D6D6D600BDBDBD00ADAD
      AD00DEDEDE00DEDEDE00E7E7E700ADADAD00000000000000000000000000ADC6
      CE00737B7B00B58C7300B59C8C00E77B6300E7846300E77B5A00D66B4200F7AD
      9400AD391000C6C6C6000000000000000000000000000000000000000000BDBD
      BD00737373008C8C8C009C9C9C00949494009C9C9C009C9C9C0084848400BDBD
      BD0052525200C6C6C600000000000000000000000000C6848400C6636300C663
      6300C6636300C6A58400C6A5A500C6848400C6848400C6A5A500C6C6C600C6A5
      A500C6424200C6424200C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500C6C6C600C6C6C600A5A5A500A5A5A500C6C6C600C6DEC600C6C6
      C6008484840084848400A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E7000063000042C6C60042C6
      E70042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C60084636300A5A5A500C6C6
      C600C6C6C600C6C6C6008484840000000000FFFFFF00CECECE007B7B7B00C6C6
      C600CEC6C600C6846B00CE947300DEB59C00EFD6C600EFDECE00DEBDAD00CEC6
      BD00D6DEE700BD735A00FFF7F70000000000F7F7F700C6C6C6007B7B7B00C6C6
      C600C6C6C6008C8C8C009C9C9C00B5B5B500D6D6D600DEDEDE00BDBDBD00C6C6
      C600DEDEDE0084848400F7F7F700000000000000000000000000ADC6C600849C
      9C00849C9400AD523100EF846B00E78C6B00E7846300E7846300E77B5A00D684
      6300FFC6AD00AD391800C6C6C600000000000000000000000000BDBDBD008C8C
      8C008C8C8C006B6B6B00A5A5A500A5A5A5009C9C9C009C9C9C00949494009494
      9400CECECE005A5A5A00C6C6C6000000000000000000C6848400C6636300C663
      6300C6636300C6636300C6636300C6636300C6636300C6636300C6636300C663
      6300C6636300C6636300C6636300C663630000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70042E7E7000063000042C6
      E70042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C60084636300C6C6
      C600C6C6C600C6C6C6008484840000000000FFFFFF00DEDEDE0084848400ADAD
      AD00E7E7EF00AD6B5200CE8C7300E7BDA500EFD6CE00EFD6CE00E7BDAD00D69C
      7B00D69C7B00C66B4A00FFFFFF0000000000FFFFFF00D6D6D6007B7B7B00ADAD
      AD00E7E7E7007B7B7B0094949400BDBDBD00D6D6D600DEDEDE00C6C6C600A5A5
      A500A5A5A5007B7B7B00FFFFFF00000000000000000000000000639CA500B539
      1000D67B6300EF8C6B00E78C7300E7846300E78C6B00E7846B00CE634200F7C6
      A500FFEFD600FF8463009C8C8C00000000000000000000000000848484005A5A
      5A0094949400A5A5A500A5A5A5009C9C9C00A5A5A5009C9C9C007B7B7B00C6C6
      C600E7E7E700A5A5A5008C8C8C000000000000000000C6848400C6636300C663
      6300C6848400C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5
      A500C6A5A500C6A5A500C6636300C663630000000000A5A5A500848484008484
      8400A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E700008400000063
      000042C6E70042C6E70000A5C600000000000000000084848400C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600848484008463
      6300C6C6C600C6C6C600848484000000000000000000D6D6D6009C9C9C009CA5
      9C00D6D6DE00A5736300CE947300D6AD9400EFD6CE00EFD6CE00E7BDAD00D69C
      7B00D6947300CE6B4200FFFFFF000000000000000000D6D6D6009C9C9C009C9C
      9C00D6D6D6007B7B7B009C9C9C00B5B5B500DEDEDE00DEDEDE00C6C6C600A5A5
      A5009C9C9C007B7B7B00FFFFFF0000000000CEE7E7006B737300B58C7300B594
      8400E7846300E78C6B00E7846B00CE7B6B00DE846B00D66B4200FFD6AD00FFEF
      D600FFA58400A56B5A000000000000000000DEDEDE006B6B6B008C8C8C009494
      94009C9C9C00A5A5A5009C9C9C00949494009C9C9C0084848400D6D6D600E7E7
      E700BDBDBD007B7B7B00000000000000000000000000C6848400C6424200C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E70042A584000063000084E7E70084E7E70084E7E700008400000063
      000042E7E70042C6E70000A5C600000000000000000084848400F7FFFF00C6DE
      C600C6DEC600A5A5A50084848400C6DEC600C6DEC600C6DEC600848484008463
      6300C6C6C600C6C6C600848484000000000000000000E7E7E700ADADAD009C9C
      9C00BDC6C600A57B6300D6947300DEAD9C00EFD6C600EFDED600E7BDAD00D69C
      7B00CE947300CE6B4200FFFFFF000000000000000000E7E7E700ADADAD009C9C
      9C00BDBDBD007B7B7B009C9C9C00B5B5B500D6D6D600DEDEDE00C6C6C600A5A5
      A5009C9C9C007B7B7B00FFFFFF0000000000D6D6D6007B948C00AD523100EF84
      6B00E78C7300E79C8400EFAD9C00CE948C00BD6B5A0073A5C6007B94AD00FF9C
      7B00A56B5A00000000000000000000000000D6D6D6008484840063636300A5A5
      A500A5A5A500ADADAD00BDBDBD00A5A5A500848484009C9C9C008C8C8C00B5B5
      B5007B7B7B0000000000000000000000000000000000C6848400C6634200F7CE
      A500FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C600F7FFFF0084E7
      E70084E7C600006300000063000084E7E70084E7E70000630000008400000063
      000042E7E70042C6E70000A5C600000000000000000084848400F7FFFF00F7FF
      FF00C6DEC6008484840084848400C6DEC600C6DEC60084848400848484008463
      6300C6C6C600C6C6C600848484000000000000000000FFFFFF00B5B5B500A5A5
      A500ADADAD00AD7B5A00CE8C6B00D6AD9400F7D6CE00F7DED600EFC6B500DEA5
      8400D6947300CE734A00FFFFFF000000000000000000FFFFFF00B5B5B500A5A5
      A500ADADAD007B7B7B0094949400B5B5B500DEDEDE00E7E7E700CECECE00ADAD
      AD009C9C9C0084848400FFFFFF0000000000E7A59400EF9C8400F7BDAD00EFBD
      AD00EFBDAD00EFBDAD00F7BDB500CE735A0073BDE70008BDFF00188CFF004A52
      6B0000000000000000000000000000000000B5B5B500B5B5B500CECECE00C6C6
      C600C6C6C600C6C6C600CECECE008C8C8C00B5B5B5008C8C8C00949494005A5A
      5A000000000000000000000000000000000000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600F7FFFF00F7CEA500C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500848484000000000000A5C60000A5E70000A5
      E7000063000042A5420000630000006300000063000000A50000006300000063
      000084E7E70042E7E70000A5C600000000000000000084848400A5A5A500A5A5
      A500846363008484840084636300846363008484840084848400846363008484
      8400C6C6C600C6C6C60084848400000000000000000000000000E7E7E700DEDE
      DE0094949400B56B4A00A5735A00AD948400BDADA500C6B5AD00B5A59C00AD84
      6B00AD735200BD634200FFFFFF00000000000000000000000000E7E7E700DEDE
      DE008C8C8C00737373007B7B7B0094949400ADADAD00B5B5B500A5A5A5008C8C
      8C007B7B7B007B7B7B00FFFFFF0000000000F7F7F700DE846B00EFC6B500F7CE
      C600F7CEC600F7D6CE00D6846300FFDEC60018EFFF0000CEFF0000B5FF002994
      FF00637B9400FFFFFF000000000000000000F7F7F7009C9C9C00CECECE00D6D6
      D600D6D6D600DEDEDE0094949400DEDEDE009C9C9C008C8C8C008C8C8C009494
      94007B7B7B00FFFFFF00000000000000000000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600F7FFFF00F7CEA500C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60042E7E70042A5
      A5000084210042E7840042C6420000A5210000A52100006300000063000084E7
      E70084E7E70042E7E70000A5C600000000000000000084848400C6C6C600A5A5
      A50084848400C6C6C6008484840084848400848484008484840084636300C6DE
      C600C6C6C600C6C6C60084848400000000000000000000000000FFFFFF00F7F7
      F70084736300A5A5A500BDBDBD00CECECE00D6D6DE00DEDEDE00D6D6D600C6C6
      C600B5B5B5008C7B7B00C6C6C600000000000000000000000000FFFFFF00F7F7
      F70073737300A5A5A500BDBDBD00CECECE00D6D6D600DEDEDE00D6D6D600C6C6
      C600B5B5B5007B7B7B00C6C6C6000000000000000000C68C7B00FFDED600F7D6
      C600FFEFE700D68C7300F7DECE00FFFFFF00BDBDAD0010FFFF0000CEFF0000B5
      FF00299CFF00637B9400FFFFFF0000000000000000009C9C9C00E7E7E700DEDE
      DE00EFEFEF009C9C9C00DEDEDE00FFFFFF00B5B5B5009C9C9C008C8C8C008C8C
      8C009C9C9C007B7B7B00FFFFFF000000000000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DE
      C600F7FFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E7000063
      000042C6630042E7630042C6420000630000006300000063000084E7E70084E7
      E70084E7E70084E7E70000A5C600000000000000000084848400C6DEC6008463
      6300A5A5A500A5A5A500A5A5A500846363008463630084636300C6DEC600C6DE
      C600C6DEC600C6C6C6008484840000000000000000000000000000000000FFFF
      FF00ADADAD00B5A59C00CEBDB500C6C6C600DEDEDE00BDBDBD00CECECE00D6D6
      D600C6BDBD00BDBDBD00A5A5A50000000000000000000000000000000000FFFF
      FF00ADADAD00A5A5A500BDBDBD00C6C6C600DEDEDE00BDBDBD00C6C6C600CECE
      CE00BDBDBD00BDBDBD00A5A5A5000000000000000000FFFFFF00EF9C7B00FFFF
      FF00DE846300F7EFEF00FFFFFF00FFAD9400AD636300BDD6D60021FFFF0000CE
      FF0000B5FF00299CFF005A738C00FFFFFF0000000000FFFFFF00ADADAD00FFFF
      FF009C9C9C00EFEFEF00FFFFFF00C6C6C6007B7B7B00CECECE009C9C9C008C8C
      8C008C8C8C009C9C9C0073737300FFFFFF0000000000C6848400C6634200F7CE
      A500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600F7FFFF00F7CEA500C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E70042C6
      A5000063000000A5210000A521000063000042A5840084E7E70084E7E70084E7
      E70084E7E70084E7E70000A5C600000000000000000084848400F7FFFF00C6C6
      C60084636300848484008484840084636300A5A5A500F7FFFF00F7FFFF00C6DE
      C600C6DEC600C6C6C6008484840000000000000000000000000000000000FFFF
      FF00DEDEDE00948C8C00BDBDBD00C6C6C600C6C6C600DEDEDE00D6D6D600D6D6
      D600B5ADAD00D6D6D600CECECE0000000000000000000000000000000000FFFF
      FF00DEDEDE008C8C8C00BDBDBD00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6
      D600ADADAD00CECECE00CECECE00000000000000000000000000C69C9400E794
      7B00BDA5A500EF947300FFB59C00A56B5A000000000000000000BDD6D60018FF
      FF0000CEFF0000B5FF0042B5FF00949CA5000000000000000000A5A5A500A5A5
      A500ADADAD00ADADAD00C6C6C6007B7B7B000000000000000000CECECE009C9C
      9C008C8C8C008C8C8C00A5A5A5009C9C9C0000000000C6848400C6634200F7CE
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6636300C663630000000000A5A5A50084848400F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6DEC600A5A5A500848484000000000000A5C60084E7E70084E7
      E70084E7E7000084420000842100006300000063000000A5C60000A5C60000A5
      C60000A5C60000A5C60000A5C600000000000000000084848400C6C6C600C6DE
      C600C6C6C6008484840084848400846363008463630084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000FFFFFF00F7F7EF00D6D6D600A5A5A500C6C6C600D6D6D600DEDEDE00E7E7
      E700F7F7F700F7F7F70000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF00D6D6D600A5A5A500BDBDBD00D6D6D600D6D6D600DEDE
      DE00F7F7F700F7F7F7000000000000000000000000000000000000000000F7F7
      F70000000000D6C6BD00BD94840000000000000000000000000000000000C6DE
      DE0008FFFF0018B5E7004A7B9400F7F7F700000000000000000000000000F7F7
      F70000000000C6C6C6009C9C9C0000000000000000000000000000000000CECE
      CE00949494008C8C8C006B6B6B00F7F7F7000000000000000000C6634200C6C6
      C600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6DEC600C6A5A500C642420000000000000000000000000084848400C6C6
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C600C6DEC600C6C6C6008484840000000000000000000000000000A5C60000A5
      C60000A5C60000A5C60000A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F70000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FF31FF31FE7FFE7FC000D10000000000
      FC00FC00F07FF07FD100E48C00000000B800B800C001C001D100E48400000000
      00000000C001C001000024C40000000000010001C001C001060000A400000000
      00010001C001C001000011040000000000010001C001C0018030860400000000
      00030003C001C001C078D2800000000000030003C001C001C078C10000000000
      00030003C001C001D030C4000000000000010001C001C001C080E01C00000000
      00010001C001C001C100E0000000000000000000C001C001C401E34900000000
      00000000C001C001D001CD010000000000000000F001F001C07FC07F00000000
      03F103F1FC7FFC7FC3FFC3FF00000000C001C0018FFF8FFF88038803FF3FFF3F
      80008000807F807F00000000FC1FFC1F800080008007800700000000F80FF80F
      800080008001800100000000F807F807800080008001800100000000E003E003
      800080008001800100010001C001C001800080008001800100010001C001C001
      8000800080018001800180010003000380008000800180018001800100070007
      800080008001800180018001000F000F8000800080018001C001C00100030003
      8000800080018001C001C001800180018000800080018001E001E00180008000
      8000800080018001E001E001C0C0C0C08000800080018001F003F003E9E0E9E0
      C001C001C1FFC1FFFE1FFE1FFFF1FFF100000000000000000000000000000000
      000000000000}
  end
  object sdsCadGeral: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM CadGeral'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 128
  end
  object sdsCadAdicional: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM CadAdicional'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 164
  end
  object dspCadAdicional: TDataSetProvider
    DataSet = sdsCadAdicional
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCadAdicionalBeforeUpdateRecord
    Left = 664
    Top = 164
  end
  object cdsCadAdicional: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CadAdicional'
    Params = <>
    ProviderName = 'dspCadAdicional'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCadAdicionalAfterInsert
    AfterEdit = cdsPadraoAfterEdit
    AfterScroll = cdsCadAdicionalAfterScroll
    Left = 696
    Top = 164
  end
  object dsCadAdicional: TDataSource
    DataSet = cdsCadAdicional
    OnStateChange = dsCadAdicionalStateChange
    Left = 728
    Top = 164
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Cidade'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 632
    Top = 96
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
    Left = 728
    Top = 97
  end
  object FindEndereco: TCFind
    SelectClause.Strings = (
      
        'SELECT CadEndereco.idCadEndereco, CadEndereco.endereco, Cidade.d' +
        'escCidade, Cidade.idEstado FROM CadEndereco, Cidade')
    JoinClause.Strings = (
      
        'WHERE CadEndereco.idCidade = Cidade.idCidade AND CadEndereco.idC' +
        'adGeral = [DBEidCadGeral]')
    OrderByClause.Strings = (
      'ORDER BY endereco')
    FindField = 'endereco'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCadEndereco'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Endere'#231'o'
      'Cidade'
      'Estado')
    TypeFind = fFindNormal
    Left = 728
    Top = 65
  end
  object sdsCadAdicional2: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM ConfigContabil'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 196
  end
  object dspCadAdicional2: TDataSetProvider
    DataSet = sdsCadAdicional2
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 664
    Top = 196
  end
  object cdsCadAdicional2: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CadAdicional'
    Params = <>
    ProviderName = 'dspCadAdicional2'
    AfterEdit = cdsCadAdicional2AfterEdit
    Left = 696
    Top = 196
  end
  object dsCadAdicional2: TDataSource
    DataSet = cdsCadAdicional2
    Left = 728
    Top = 196
  end
  object FindCadGeral: TCFind
    SelectClause.Strings = (
      
        'SELECT idCliente AS idCadGeral, descCadCliente, descAbreviada, i' +
        'dCnpjCpf FROM vCadClienteContabil')
    OrderByClause.Strings = (
      'ORDER BY descCadCliente')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCadGeral'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Abrevia'#231#227'o'
      'Cnpj/Cpf')
    TypeFind = fFindNormal
    Left = 632
    Top = 325
  end
  object sdsEmpresaContabil: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM EmpresaContabil'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 228
  end
  object dspEmpresaContabil: TDataSetProvider
    DataSet = sdsEmpresaContabil
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspEmpresaContabilBeforeUpdateRecord
    Left = 664
    Top = 228
  end
  object cdsEmpresaContabil: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM EmpresaContabil'
    Params = <>
    ProviderName = 'dspEmpresaContabil'
    AfterEdit = cdsCadAdicional2AfterEdit
    Left = 696
    Top = 228
  end
  object dsEmpresaContabil: TDataSource
    DataSet = cdsEmpresaContabil
    Left = 728
    Top = 228
  end
  object sdsConfigContabil: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM ConfigContabil'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 260
  end
  object dspConfigContabil: TDataSetProvider
    DataSet = sdsConfigContabil
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspConfigContabilBeforeUpdateRecord
    Left = 664
    Top = 260
  end
  object cdsConfigContabil: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ConfigContabil'
    Params = <>
    ProviderName = 'dspConfigContabil'
    AfterEdit = cdsCadAdicional2AfterEdit
    Left = 696
    Top = 260
  end
  object dsConfigContabil: TDataSource
    DataSet = cdsConfigContabil
    Left = 728
    Top = 260
  end
  object FindPlanoContaCre: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = '#39'G'#39'  AND naturez' +
        'aPlanoConta = '#39'C'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 664
    Top = 325
  end
  object FindPlanoContaDeb: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT cdPlanoConta, classificacao, descPlanoConta FROM' +
        ' vPlanoConta')
    JoinClause.Strings = (
      
        'WHERE stPlanoConta = '#39'ATIVO'#39' AND tpPlanoConta = '#39'G'#39'  AND naturez' +
        'aPlanoConta = '#39'D'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descPlanoConta')
    FindField = 'descPlanoConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'cdPlanoConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 696
    Top = 325
  end
  object sdsContaCliente: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM ContaCliente'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 632
    Top = 292
  end
  object dspContaCliente: TDataSetProvider
    DataSet = sdsContaCliente
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspConfigContabilBeforeUpdateRecord
    Left = 664
    Top = 292
  end
  object cdsContaCliente: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ContaCliente'
    Params = <>
    ProviderName = 'dspContaCliente'
    AfterEdit = cdsCadAdicional2AfterEdit
    Left = 696
    Top = 292
    object cdsContaClienteidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
      Required = True
    end
    object cdsContaClienteidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsContaClientecdPlanoContaCre: TIntegerField
      FieldName = 'cdPlanoContaCre'
      Required = True
    end
    object cdsContaClientecdPlanoContaDeb: TIntegerField
      FieldName = 'cdPlanoContaDeb'
      Required = True
    end
    object cdsContaClientedescContaCredito: TStringField
      FieldKind = fkLookup
      FieldName = 'descContaCredito'
      LookupDataSet = cdsPlanoConta
      LookupKeyFields = 'cdPlanoConta'
      LookupResultField = 'descPlanoConta'
      KeyFields = 'cdPlanoContaCre'
      Lookup = True
    end
    object cdsContaClientedescContaDebito: TStringField
      FieldKind = fkLookup
      FieldName = 'descContaDebito'
      LookupDataSet = cdsPlanoConta
      LookupKeyFields = 'cdPlanoConta'
      LookupResultField = 'descPlanoConta'
      KeyFields = 'cdPlanoContaDeb'
      Lookup = True
    end
  end
  object dsContaCliente: TDataSource
    DataSet = cdsContaCliente
    OnStateChange = dsContaClienteStateChange
    Left = 728
    Top = 292
  end
  object FindEmpresaOri: TCFind
    SelectClause.Strings = (
      'SELECT  idEmpresa, descCadEmpresa FROM vCadEmpresaContabil')
    JoinClause.Strings = (
      'WHERE idEmpresa <>  [DBEidCadGeral]')
    OrderByClause.Strings = (
      'ORDER BY descCadEmpresa')
    FindField = 'descCadAdicional'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idEmpresa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Nome / Raz'#227'o Social')
    TypeFind = fFindNormal
    Left = 728
    Top = 325
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
      'Nome / Raz'#227'o Social'
      'Descri'#231#227'o Abreviada / Fantasia'
      'CPF / CNPJ')
    TypeFind = fFindNormal
    Left = 632
    Top = 360
  end
  object cdsPlanoConta: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PlanoConta'
    Params = <>
    ProviderName = 'dspLookUp'
    AfterEdit = cdsCadAdicional2AfterEdit
    Left = 664
    Top = 359
  end
end
