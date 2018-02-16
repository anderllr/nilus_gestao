inherited FrmCadRelMatricial: TFrmCadRelMatricial
  Caption = 'Configura'#231#227'o de Relat'#243'rios Matriciais'
  ClientHeight = 559
  ClientWidth = 669
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000EB5B4B4F2FFFFFFFFFBFBFBFFFDFDFDFFFCFCFCFFFDFD
    FDFFFFFFFFFFFFFFFFFFFFFFFFFFBDBBBCEE0000000800000000000000000707
    071E101010420D0D0D4EAAAAAAEBFAFAFAFFE9E9E9FFECECECFFF3F3F3FFF1F1
    F1FFF4F4F4FFF5F5F5FFFFFFFFFFB2B1B1EA0E0E0E4C0E0E0E420606061D4848
    48987E7F7EFE6B6B6BFEB4B4B4FEFBFBFBFFF0F0F0FFF3F3F3FFF3F3F3FFF1F1
    F1FFF1F1F1FFF4F4F4FFFFFFFFFFB8B7B7FE626262FE6B6C6BFF3838388F4B4B
    4BB96C6C6CFF6A6A6AFF969696FFC4C4C4FFC0C0C0FFC0C0C0FFC0C0C0FFC1C1
    C1FFC5C5C5FFC4C4C4FFC5C5C5FF949393FF727271FF797A78FF4B4A4BA63C3C
    3CC34F4F4FFF565656FF4A4949FF484848FF4A4A4AFF4B4B4BFF4A4A4AFF4A4A
    4AFF4A4A4AFF4B4B4BFF464646FF494848FF6D6D6DFF797979FF515151AC3B3B
    3BC6515151FF545554FF2B2B2BFF212121FF222222FF222222FF212121FF2121
    21FF202020FF202020FF1F1F1FFF2A2A2AFF666665FF797878FF515151AF3D3D
    3DC74F4F4FFF555556FF4E4D4EFF444444FF464646FF464646FF464646FF4747
    47FF484848FF494949FF484848FF575756FF696869FF747474FF4E4F4FAF3C3D
    3CC2515252FF5C5D5DFF555554FF494949FF4C4C4CFF4F4F4FFF515151FF5454
    54FF565656FF575757FF555555FF616161FF6B6B6BFF717171FF4F4F4FAB5859
    58B7989898FFABAAAAFF686868FF4E4E4EFF5C5C5CFF656565FF686868FF6969
    69FF666666FF5F5F5FFF505050FF717172FFC1C1C1FFBCBCBCFF686868A44E4E
    4E9E9D9D9DFFACACACFF666666FF3F3F3FFF4F4F4FFF585858FF5C5C5CFF5D5D
    5DFF595959FF525252FF414141FF696A69FFB3B3B3FFA3A4A3FF4E4F4E941312
    1253303030BA323232B24A4949DC808080FF818181FF808080FF818181FF8181
    81FF828282FF848484FF828282FF494848DC373737B3373838BB161716510000
    000000000000000000005C5B5A85F5F4F4FFECECECFFEBEBEBFFEDEDEDFFEEEE
    EFFFEFEEEFFFF1F2F2FFF8F8F8FF565354830000000000000000000000000000
    000000000000000000005C5B5B87E7E7E7FFDFDFDFFFDEDEDEFFE0E0E0FFE2E3
    E1FFE2E2E2FFE4E5E4FFECEBECFF575555800000002600000072000000240000
    000000000000000000005B5A5A86E8E8E8FFE0E0E0FFDFDFDFFFE0DFE0FFE1E1
    E1FFE3E2E3FFE6E5E5FFEBEAEAFF4C4B4A93272727CE626262FF020202BA0000
    0000000000000000000050515154E8E9E9FFE7E8E8FFE6E6E6FFE7E7E7FFE6E5
    E5FFE7E6E6FFEBEAEBFFE3E3E3FB2625255C272727F4707070FF494949D80000
    000000000000000000005655563BB9B9B9D5BCBCBCD5BBBBBBD5BCBCBCD5D2D2
    D2E2D3D3D3E2D8D7D7E2D0D0D0DB3434342100000081000000E50C0C0C71C003
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000E0070000E0000000E0000000E0000000E0000000}
  ExplicitWidth = 677
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 555
    Width = 669
    ExplicitTop = 355
    ExplicitWidth = 534
  end
  inherited PagAbas: TCPageControl
    Width = 669
    Height = 524
    OnChange = PagAbasChange
    ExplicitWidth = 669
    ExplicitHeight = 524
    inherited TabAbas: TTabSheet
      Caption = 'Relat'#243'rio Matricial'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 661
      ExplicitHeight = 495
      inherited CGroupBox2: TCGroupBox
        Left = 3
        Top = 272
        Width = 651
        Height = 204
        TabOrder = 3
        ExplicitLeft = 3
        ExplicitTop = 272
        ExplicitWidth = 651
        ExplicitHeight = 204
        inherited DBGrid: TCDBGrid
          Left = 6
          Top = 10
          Width = 637
          Height = 186
          TabStop = False
          OnCellClick = DBGridCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'idRelMatricial'
              Title.Caption = 'C'#243'digo'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descRelMatricial'
              Title.Caption = 'Descri'#231#227'o'
              Width = 370
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lista'
              Title.Caption = 'Lista?'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ordem'
              Title.Caption = 'Ordem'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descModelo'
              Title.Caption = 'Impressora'
              Width = 80
              Visible = True
            end>
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 3
        Width = 651
        Height = 116
        TabOrder = 0
        object CLabel2: TCLabel
          Left = 101
          Top = 16
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel1: TCLabel
          Left = 7
          Top = 16
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel11: TCLabel
          Left = 21
          Top = 38
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = 'SQL'
        end
        object CLabel25: TCLabel
          Left = 493
          Top = 16
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Linha Inicial da Lista'
        end
        object DBEdescRelMatricial: TCDBEdit
          Left = 153
          Top = 13
          Width = 266
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descRelMatricial'
          DataSource = dsPadrao
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidRelMatricial: TCDBEdit
          Left = 46
          Top = 13
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRelMatricial'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidRelMatricialExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBMsqlRelMatricial: TCDBMemo
          Left = 46
          Top = 35
          Width = 597
          Height = 76
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'sqlRelMatricial'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 4
          KeyMemo = kmmNormal
        end
        object DBCKlista: TCDBCheckBox
          Left = 425
          Top = 15
          Width = 49
          Height = 17
          Caption = 'Lista?'
          DataField = 'lista'
          DataSource = dsPadrao
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnExit = DBCKlistaExit
        end
        object DBELinhaIni: TCDBEdit
          Left = 594
          Top = 13
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'LinhaIni'
          DataSource = dsPadrao
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 3
        Top = 203
        Width = 651
        Height = 63
        Caption = 'Propriedades de impress'#227'o do grupo (Importante definir)'
        TabOrder = 2
        object CLabel16: TCLabel
          Left = 29
          Top = 18
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ordem'
        end
        object CLabel17: TCLabel
          Left = 122
          Top = 18
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tra'#231'o'
        end
        object CLabel18: TCLabel
          Left = 298
          Top = 18
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Tra'#231'o'
        end
        object CLabel19: TCLabel
          Left = 499
          Top = 18
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tamanho do Tra'#231'o'
        end
        object CLabel20: TCLabel
          Left = 6
          Top = 40
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Inicio Tra'#231'o'
        end
        object CLabel21: TCLabel
          Left = 112
          Top = 40
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#225'x. Linhas'
        end
        object CLabel22: TCLabel
          Left = 213
          Top = 40
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Decis'#227'o'
        end
        object CLabel23: TCLabel
          Left = 399
          Top = 40
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Colunas'
        end
        object CLabel24: TCLabel
          Left = 511
          Top = 40
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dist'#226'ncia Colunas'
        end
        object DBEordem: TCDBEdit
          Left = 67
          Top = 15
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'ordem'
          DataSource = dsPadrao
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCBimpTraco: TCDBComboBox
          Left = 155
          Top = 15
          Width = 137
          Height = 19
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'impTraco'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            'NENHUM'
            'CAIXA'
            'ENTRE LINHAS'
            'INICIO'
            'FINAL')
          ParentFont = False
          TabOrder = 1
        end
        object DBCBtipoTraco: TCDBComboBox
          Left = 354
          Top = 15
          Width = 139
          Height = 19
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'tipoTraco'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            'SIMPLES'
            'LINHA CONTINUA'
            'LINHA DUPLA')
          ParentFont = False
          TabOrder = 2
        end
        object DBEtamTraco: TCDBEdit
          Left = 594
          Top = 15
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tamTraco'
          DataSource = dsPadrao
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEiniTraco: TCDBEdit
          Left = 67
          Top = 37
          Width = 39
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'iniTraco'
          DataSource = dsPadrao
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEmaxLinhas: TCDBEdit
          Left = 176
          Top = 37
          Width = 31
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'maxLinhas'
          DataSource = dsPadrao
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCBdecisao: TCDBComboBox
          Left = 256
          Top = 37
          Width = 137
          Height = 19
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'decisao'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            'NOVA COLUNA'
            'NOVA PAGINA'
            'NENHUM')
          ParentFont = False
          TabOrder = 6
        end
        object DBEmaxColunas: TCDBEdit
          Left = 474
          Top = 37
          Width = 31
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'maxColunas'
          DataSource = dsPadrao
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEtamColunas: TCDBEdit
          Left = 601
          Top = 37
          Width = 42
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tamColunas'
          DataSource = dsPadrao
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox9: TCGroupBox
        Left = 3
        Top = 125
        Width = 651
        Height = 72
        TabOrder = 1
        object CLabel15: TCLabel
          Left = 244
          Top = 48
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Porta'
        end
        object CLabel12: TCLabel
          Left = 12
          Top = 48
          Width = 94
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modelo  Impressora'
        end
        object CLabel13: TCLabel
          Left = 354
          Top = 48
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Linhas'
        end
        object CLabel14: TCLabel
          Left = 445
          Top = 48
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Colunas'
        end
        object DBRtamFonte: TCDBRadioGroup
          Left = 12
          Top = 7
          Width = 309
          Height = 33
          Caption = 'Fonte Padr'#227'o'
          Columns = 5
          DataField = 'tamFonte'
          DataSource = dsPadrao
          Items.Strings = (
            '10cpp'
            '12cpp'
            '17cpp'
            '20cpp'
            'Nenhum')
          ParentBackground = True
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
        end
        object DBRavanco: TCDBRadioGroup
          Left = 327
          Top = 8
          Width = 161
          Height = 33
          Caption = 'Avan'#231'o'
          Columns = 2
          DataField = 'avanco'
          DataSource = dsPadrao
          Items.Strings = (
            'Sextos'
            'Oitavos')
          ParentBackground = True
          TabOrder = 1
          Values.Strings = (
            '6'
            '8')
        end
        object DBCKdescPorta: TCDBComboBox
          Left = 276
          Top = 45
          Width = 72
          Height = 17
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'descPorta'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            'LPT1'
            'LPT2'
            'LPT3'
            'LPT4'
            'COM1'
            'COM2'
            'COM3'
            'COM4')
          ParentFont = False
          TabOrder = 4
        end
        object DBCBdescModelo: TCDBComboBox
          Left = 112
          Top = 45
          Width = 126
          Height = 17
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'descModelo'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            'EPSON'
            'HP'
            'RIMA'
            'GRAFICO'
            'PERSONALIZADO')
          ParentFont = False
          TabOrder = 3
        end
        object REspaco: TRadioGroup
          Left = 494
          Top = 8
          Width = 149
          Height = 33
          Caption = 'Espa'#231'amento da R'#233'gua'
          Columns = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 1
          Items.Strings = (
            '3'
            '5'
            '10')
          ParentFont = False
          TabOrder = 2
        end
        object DBEqtLinhas: TCDBEdit
          Left = 390
          Top = 45
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtLinhas'
          DataSource = dsPadrao
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtColunas: TCDBEdit
          Left = 489
          Top = 45
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtColunas'
          DataSource = dsPadrao
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn1: TCBitBtn
          Left = 544
          Top = 45
          Width = 99
          Height = 19
          Action = actRegua
          Caption = '&Imprimir R'#233'gua'
          TabOrder = 7
          TabStop = False
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF000B5C90FF0B5C90FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00999999FF999999FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000B5C90FF2C9CC6FF1B90C0FF0B5C90FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00999999FFC7C7C7FFBCBCBCFF999999FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000B5C90FF57BFE2FF40B1DAFF289AC5FF198FBDFF0B5C90FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00999999FFEAEAEAFFDBDBDBFFC5C5C5FFBABABAFF999999FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000B5C
            90FF80D5F0FF4AA4C4FF31809DFF3BAFD8FF2597C4FF168CBCFF0B5C90FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009999
            99FFFFFFFFFFD4D4D4FFB3B3B3FFD9D9D9FFC3C3C3FFB8B8B8FF999999FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000B5C90FF9FE6
            FAFF91DEF4FF5AA4BCFF355D6DFF307993FF36ABD7FF2296C1FF148ABCFF0B5C
            90FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00999999FFFFFF
            FFFFFFFFFFFFD7D7D7FF9B9B9BFFADADADFFD5D5D5FFC0C0C0FFB7B7B7FF9999
            99FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000B5C90FF9FE6
            FAFF1E1E1EFF8CDDF4FF5AAAC5FF396879FF2D7089FF33A9D5FF1E92C0FF1289
            BAFF0B5C90FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00999999FFFFFF
            FFFF656565FFFFFFFFFFDCDCDCFFA3A3A3FFA6A6A6FFD3D3D3FFBDBDBDFFB4B4
            B4FF999999FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00143B
            51FF9FE6FAFF9AE3F8FF89DAF3FF5EB4CFFF2D4751FF2F7995FF2EA6D3FF1C90
            BFFF1088BAFF0B5C90FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF007C7C
            7CFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4FF888888FFAEAEAEFFCFCFCFFFBCBC
            BCFFB3B3B3FF999999FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000B5C90FF9FE6FAFF1E1E1EFF86D9F2FF5AA6C1FF4493B0FF3FB1DAFF2BA4
            D1FF188EBFFF0E87B8FF0B5C90FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00999999FFFFFFFFFF656565FFFFFFFFFFDADADAFFC6C6C6FFDBDBDBFFCDCD
            CDFFBABABAFFB2B2B2FF999999FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00143B51FF9FE6FAFF93E0F6FF81D7F0FF69CAE9FF51BCE1FF3BAF
            D8FF28A1D1FF168CBCFF0D86B7FF0B5C90FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFE7E7E7FFD9D9
            D9FFCCCCCCFFB8B8B8FFB1B1B1FF999999FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000B5C90FF9FE6FAFF1E1E1EFF7DD3EFFF65C6E7FF4DBA
            E0FF36ABD8FF249FCFFF148BBCFF0C84B6FF0B5C90FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00999999FFFFFFFFFF656565FFFFFFFFFFF4F4F4FFE5E5
            E5FFD6D6D6FFC9C9C9FFB7B7B7FFB0B0B0FF999999FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00143B51FF9DE5FAFF8CDCF4FF77D1EEFF5FC5
            E6FF48B6DDFF33A9D5FF219DCEFF1289BAFF0A83B6FF0B5C90FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
            F0FFE1E1E1FFD3D3D3FFC6C6C6FFB4B4B4FFAFAFAFFF999999FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000B5C90FF99E3F8FF1E1E1EFF74CF
            EBFF5BC1E3FF43B4DCFF2EA6D4FF1E9ACEFF1087B8FF0B5C90FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00999999FFFFFFFFFF656565FFFDFD
            FDFFECECECFFDEDEDEFFD0D0D0FFC5C5C5FFB3B3B3FF999999FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00143B51FF97E2F7FF84D8
            F2FF6ECCEAFF56BFE2FF40B1DAFF2BA4D3FF0B5C90FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007C7C7CFFFFFFFFFFFFFF
            FFFFF9F9F9FFEAEAEAFFDBDBDBFFCECECEFF999999FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000B5C90FF95E0
            F6FF1E1E1EFF69CAEAFF51BCE1FF0B5C90FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00999999FFFFFF
            FFFF656565FFF7F7F7FFE7E7E7FF999999FFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00143B
            51FF90DEF4FF7BD4EFFF0B5C90FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007C7C
            7CFFFFFFFFFFFFFFFFFF999999FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000B5C90FF0B5C90FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00999999FF999999FFFF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 2
          Spacing = 5
        end
      end
    end
    object TabCampos: TTabSheet
      Caption = 'Posicionamento dos Campos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CGroupBox3: TCGroupBox
        Left = 3
        Top = 0
        Width = 652
        Height = 41
        TabOrder = 0
        object CLabel4: TCLabel
          Left = 106
          Top = 17
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel5: TCLabel
          Left = 12
          Top = 17
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel26: TCLabel
          Left = 493
          Top = 16
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Linha Inicial da Lista'
        end
        object DBEdescRelMatricial2: TCDBEdit
          Left = 158
          Top = 14
          Width = 261
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'descRelMatricial'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRelMatricial2: TCDBEdit
          Left = 51
          Top = 14
          Width = 49
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'idRelMatricial'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = DBEidRelMatricialExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCKlista2: TCDBCheckBox
          Left = 431
          Top = 15
          Width = 49
          Height = 17
          Caption = 'Lista?'
          Color = 15201011
          DataField = 'lista'
          DataSource = dsPadrao
          ParentColor = False
          ReadOnly = True
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEListaIni2: TCDBEdit
          Left = 594
          Top = 13
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'LinhaIni'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 6
        Top = 178
        Width = 550
        Height = 314
        TabOrder = 2
        object CDBGrid1: TCDBGrid
          Left = 9
          Top = 16
          Width = 528
          Height = 281
          TabStop = False
          DataSource = dsCampos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          ReadOnly = True
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
              FieldName = 'idCampo'
              Title.Caption = 'C'#243'digo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descCampo'
              Title.Caption = 'Campo'
              Width = 232
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descAlinhamento'
              Title.Caption = 'Alinhamento'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'linha'
              Title.Caption = 'Linha'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'coluna'
              Title.Caption = 'Coluna'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'imprime'
              Title.Caption = 'Imprime'
              Width = 42
              Visible = True
            end>
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 562
        Top = 178
        Width = 93
        Height = 311
        TabOrder = 3
        object BtnNovoTab: TCBitBtn
          Left = 9
          Top = 109
          Width = 75
          Height = 25
          Caption = '&Novo'
          TabOrder = 3
          OnClick = BtnSalvarTabClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDADAD00CECE
            CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5B500CECE
            CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00ADC6CE006B847B00DE5A3100A539
            1000C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBDBD00737373007B7B7B005252
            5200C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00ADC6C600849C9C00849C9400AD523900DE6B
            4A00AD391800C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BDBDBD008C8C8C008C8C8C006B6B6B008C8C
            8C0052525200C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00639CA500B5391000D67B5A00EF846300E784
            6300D6633900AD421800C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00848484005A5A5A00949494009C9C9C009C9C
            9C007B7B7B005A5A5A00C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00ADC6CE00737B7B00B58C7300B59C8C00E77B6300E7846300E77B
            5A00D66B4200F7AD9400AD391000C6C6C600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BDBDBD00737373008C8C8C009C9C9C00949494009C9C9C009C9C
            9C0084848400BDBDBD0052525200C6C6C600FF00FF00FF00FF00FF00FF00FF00
            FF00ADC6C600849C9C00849C9400AD523100EF846B00E78C6B00E7846300E784
            6300E77B5A00D6846300FFC6AD00AD391800C6C6C600FF00FF00FF00FF00FF00
            FF00BDBDBD008C8C8C008C8C8C006B6B6B00A5A5A500A5A5A5009C9C9C009C9C
            9C009494940094949400CECECE005A5A5A00C6C6C600FF00FF00FF00FF00FF00
            FF00639CA500B5391000D67B6300EF8C6B00E78C7300E7846300E78C6B00E784
            6B00CE634200F7C6A500FFEFD600FF8463009C8C8C00FF00FF00FF00FF00FF00
            FF00848484005A5A5A0094949400A5A5A500A5A5A5009C9C9C00A5A5A5009C9C
            9C007B7B7B00C6C6C600E7E7E700A5A5A5008C8C8C00FF00FF00CEE7E7006B73
            7300B58C7300B5948400E7846300E78C6B00E7846B00CE7B6B00DE846B00D66B
            4200FFD6AD00FFEFD600FFA58400A56B5A00FF00FF00FF00FF00DEDEDE006B6B
            6B008C8C8C00949494009C9C9C00A5A5A5009C9C9C00949494009C9C9C008484
            8400D6D6D600E7E7E700BDBDBD007B7B7B00FF00FF00FF00FF00D6D6D6007B94
            8C00AD523100EF846B00E78C7300E79C8400EFAD9C00CE948C00BD6B5A0073A5
            C6007B94AD00FF9C7B00A56B5A00FF00FF00FF00FF00FF00FF00D6D6D6008484
            840063636300A5A5A500A5A5A500ADADAD00BDBDBD00A5A5A500848484009C9C
            9C008C8C8C00B5B5B5007B7B7B00FF00FF00FF00FF00FF00FF00E7A59400EF9C
            8400F7BDAD00EFBDAD00EFBDAD00EFBDAD00F7BDB500CE735A0073BDE70008BD
            FF00188CFF004A526B00FF00FF00FF00FF00FF00FF00FF00FF00B5B5B500B5B5
            B500CECECE00C6C6C600C6C6C600C6C6C600CECECE008C8C8C00B5B5B5008C8C
            8C00949494005A5A5A00FF00FF00FF00FF00FF00FF00FF00FF00F7F7F700DE84
            6B00EFC6B500F7CEC600F7CEC600F7D6CE00D6846300FFDEC60018EFFF0000CE
            FF0000B5FF002994FF00637B9400FFFFFF00FF00FF00FF00FF00F7F7F7009C9C
            9C00CECECE00D6D6D600D6D6D600DEDEDE0094949400DEDEDE009C9C9C008C8C
            8C008C8C8C00949494007B7B7B00FFFFFF00FF00FF00FF00FF00FF00FF00C68C
            7B00FFDED600F7D6C600FFEFE700D68C7300F7DECE00FFFFFF00BDBDAD0010FF
            FF0000CEFF0000B5FF00299CFF00637B9400FFFFFF00FF00FF00FF00FF009C9C
            9C00E7E7E700DEDEDE00EFEFEF009C9C9C00DEDEDE00FFFFFF00B5B5B5009C9C
            9C008C8C8C008C8C8C009C9C9C007B7B7B00FFFFFF00FF00FF00FF00FF00FFFF
            FF00EF9C7B00FFFFFF00DE846300F7EFEF00FFFFFF00FFAD9400AD636300BDD6
            D60021FFFF0000CEFF0000B5FF00299CFF005A738C00FFFFFF00FF00FF00FFFF
            FF00ADADAD00FFFFFF009C9C9C00EFEFEF00FFFFFF00C6C6C6007B7B7B00CECE
            CE009C9C9C008C8C8C008C8C8C009C9C9C0073737300FFFFFF00FF00FF00FF00
            FF00C69C9400E7947B00BDA5A500EF947300FFB59C00A56B5A00FF00FF00FF00
            FF00BDD6D60018FFFF0000CEFF0000B5FF0042B5FF00949CA500FF00FF00FF00
            FF00A5A5A500A5A5A500ADADAD00ADADAD00C6C6C6007B7B7B00FF00FF00FF00
            FF00CECECE009C9C9C008C8C8C008C8C8C00A5A5A5009C9C9C00FF00FF00FF00
            FF00FF00FF00F7F7F700FF00FF00D6C6BD00BD948400FF00FF00FF00FF00FF00
            FF00FF00FF00C6DEDE0008FFFF0018B5E7004A7B9400F7F7F700FF00FF00FF00
            FF00FF00FF00F7F7F700FF00FF00C6C6C6009C9C9C00FF00FF00FF00FF00FF00
            FF00FF00FF00CECECE00949494008C8C8C006B6B6B00F7F7F700FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E7FFFF0084BDE700F7F7F700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00F7F7F700B5B5B500F7F7F700FF00FF00}
          NumGlyphs = 2
          Spacing = 5
        end
        object BtnExcluirTab: TCBitBtn
          Left = 9
          Top = 78
          Width = 75
          Height = 25
          Caption = '&Excluir'
          TabOrder = 2
          OnClick = BtnSalvarTabClick
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
        object BtnCancelarTab: TCBitBtn
          Left = 9
          Top = 47
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = BtnSalvarTabClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF0000A5
            C60000A5C60000A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
            84008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A5
            C60084E7E70042C6E70042C6E70042A5E70000A5E7000084C6000084C600FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
            8400C6C6C600C6C6C600A5A5A500A5A5A500A5A5A5008484840084848400FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E70084E7E70042E7E70042C6E70042C6E70042A5
            E70000A5E7000084C60000A5E700FF00FF00FF00FF00FF00FF00FF00FF008484
            8400C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600A5A5A500A5A5
            A500A5A5A50084848400A5A5A500FF00FF00FF00FF00FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E70084E7E70084E7E70042E7E70042E7E70042C6
            E70042C6E70042C6E70042C6E70042A5E70000A5C600FF00FF00FF00FF008484
            8400C6DEC600C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600A5A5A50084848400FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70042E7E70042C6
            E70042C6E70042C6E70042C6E70042C6E70000A5C600FF00FF00FF00FF008484
            8400C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600A5A5A50084848400FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000063
            000042C6C60042C6E70042C6E70042C6E70000A5C600FF00FF00FF00FF008484
            8400C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6C6008463
            6300A5A5A500C6C6C600C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70042E7
            E7000063000042C6E70042C6E70042C6E70000A5C600FF00FF00FF00FF008484
            8400C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6C600C6C6
            C60084636300C6C6C600C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
            E700008400000063000042C6E70042C6E70000A5C600FF00FF00FF00FF008484
            8400C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
            C6008484840084636300C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E70042A584000063000084E7E70084E7E70084E7
            E700008400000063000042E7E70042C6E70000A5C600FF00FF00FF00FF008484
            8400F7FFFF00C6DEC600C6DEC600A5A5A50084848400C6DEC600C6DEC600C6DE
            C6008484840084636300C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
            C600F7FFFF0084E7E70084E7C600006300000063000084E7E70084E7E7000063
            0000008400000063000042E7E70042C6E70000A5C600FF00FF00FF00FF008484
            8400F7FFFF00F7FFFF00C6DEC6008484840084848400C6DEC600C6DEC6008484
            84008484840084636300C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
            C60000A5E70000A5E7000063000042A5420000630000006300000063000000A5
            0000006300000063000084E7E70042E7E70000A5C600FF00FF00FF00FF008484
            8400A5A5A500A5A5A50084636300848484008463630084636300848484008484
            84008463630084848400C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
            C60042E7E70042A5A5000084210042E7840042C6420000A5210000A521000063
            00000063000084E7E70084E7E70042E7E70000A5C600FF00FF00FF00FF008484
            8400C6C6C600A5A5A50084848400C6C6C6008484840084848400848484008484
            840084636300C6DEC600C6C6C600C6C6C60084848400FF00FF00FF00FF0000A5
            C60084E7E7000063000042C6630042E7630042C6420000630000006300000063
            000084E7E70084E7E70084E7E70084E7E70000A5C600FF00FF00FF00FF008484
            8400C6DEC60084636300A5A5A500A5A5A500A5A5A50084636300846363008463
            6300C6DEC600C6DEC600C6DEC600C6C6C60084848400FF00FF00FF00FF0000A5
            C60084E7E70042C6A5000063000000A5210000A521000063000042A5840084E7
            E70084E7E70084E7E70084E7E70084E7E70000A5C600FF00FF00FF00FF008484
            8400F7FFFF00C6C6C60084636300848484008484840084636300A5A5A500F7FF
            FF00F7FFFF00C6DEC600C6DEC600C6C6C60084848400FF00FF00FF00FF0000A5
            C60084E7E70084E7E70084E7E7000084420000842100006300000063000000A5
            C60000A5C60000A5C60000A5C60000A5C60000A5C600FF00FF00FF00FF008484
            8400C6C6C600C6DEC600C6C6C600848484008484840084636300846363008484
            84008484840084848400848484008484840084848400FF00FF00FF00FF00FF00
            FF0000A5C60000A5C60000A5C60000A5C60000A5C600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008484840084848400848484008484840084848400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 2
        end
        object BtnSalvarTab: TCBitBtn
          Left = 9
          Top = 16
          Width = 75
          Height = 25
          Caption = '&Salvar'
          TabOrder = 0
          OnClick = BtnSalvarTabClick
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00C6636300C6636300C6424200A5A5A500C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6A5A5008442420084424200C6636300FF00FF00FF00FF00FF00
            FF00848484008484840084848400A5A5A500C6C6C600C6DEC600C6DEC600C6DE
            C600C6DEC600C6C6C600848484008484840084848400FF00FF00FF00FF00C684
            8400C6636300C6636300C663630084848400C6A5A500C6DEC600FFFFFF00FFFF
            FF00F7FFFF00C6C6C6008421210084424200C6636300C6636300FF00FF00A5A5
            A500A5A5A500A5A5A500A5A5A500A5A5A500C6C6C600F7FFFF00FFFFFF00FFFF
            FF00FFFFFF00C6C6C6008463630084636300A5A5A50084848400FF00FF00C684
            8400C6636300C6636300C66363008484840084424200C6848400C6DEC600FFFF
            FF00FFFFFF00C6C6C6008421210084424200C6636300C6636300FF00FF00A5A5
            A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500F7FFFF00FFFF
            FF00FFFFFF00C6DEC6008463630084848400A5A5A50084848400FF00FF00C684
            8400C6636300C6636300C6636300C68484008442420084424200C6C6C600F7FF
            FF00FFFFFF00F7CEA5008421210084424200C6636300C6636300FF00FF00A5A5
            A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400C6C6C600FFFF
            FF00FFFFFF00C6DEC6008463630084636300A5A5A50084848400FF00FF00C684
            8400C6636300C6636300C6636300C68484008442420084424200A5A5A500C6DE
            C600FFFFFF00C6C6C6008421210084424200C6636300C6636300FF00FF00A5A5
            A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084636300A5A5A500F7FF
            FF00FFFFFF00F7FFFF008463630084636300A5A5A50084848400FF00FF00C684
            8400C6636300C6636300C6636300C6A58400C6A5A500C6848400C6848400C6A5
            A500C6C6C600C6A5A500C6424200C6424200C6636300C6636300FF00FF00A5A5
            A500A5A5A500A5A5A500A5A5A500C6C6C600C6C6C600A5A5A500A5A5A500C6C6
            C600C6DEC600C6C6C6008484840084848400A5A5A50084848400FF00FF00C684
            8400C6636300C6636300C6636300C6636300C6636300C6636300C6636300C663
            6300C6636300C6636300C6636300C6636300C6636300C6636300FF00FF00A5A5
            A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
            A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A50084848400FF00FF00C684
            8400C6636300C6636300C6848400C6A5A500C6A5A500C6A5A500C6A5A500C6A5
            A500C6A5A500C6A5A500C6A5A500C6A5A500C6636300C6636300FF00FF00A5A5
            A5008484840084848400A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600A5A5A50084848400FF00FF00C684
            8400C6424200C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6636300C6636300FF00FF00A5A5
            A50084848400F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
            8400C6634200F7CEA500FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
            FF00F7FFFF00F7FFFF00FFFFFF00C6C6C600C6636300C6636300FF00FF00A5A5
            A50084848400F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
            8400C6634200F7CEA500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DE
            C600C6DEC600C6DEC600F7FFFF00F7CEA500C6636300C6636300FF00FF00A5A5
            A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
            FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A50084848400FF00FF00C684
            8400C6634200F7CEA500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DE
            C600C6DEC600C6DEC600F7FFFF00F7CEA500C6636300C6636300FF00FF00A5A5
            A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
            FF00F7FFFF00F7FFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
            8400C6634200F7CEA500F7FFFF00C6DEC600F7FFFF00F7FFFF00F7FFFF00F7FF
            FF00F7FFFF00C6DEC600F7FFFF00C6C6C600C6636300C6636300FF00FF00A5A5
            A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
            FF00F7FFFF00F7FFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00C684
            8400C6634200F7CEA500F7FFFF00C6DEC600C6DEC600C6DEC600C6DEC600C6DE
            C600C6DEC600C6DEC600F7FFFF00F7CEA500C6636300C6636300FF00FF00A5A5
            A50084848400F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
            FF00F7FFFF00F7FFFF00F7FFFF00C6DEC600A5A5A50084848400FF00FF00C684
            8400C6634200F7CEA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6636300C6636300FF00FF00A5A5
            A50084848400F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00C6DEC600A5A5A50084848400FF00FF00FF00
            FF00C6634200C6C6C600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6DEC600C6A5A500C6424200FF00FF00FF00FF00FF00
            FF0084848400C6C6C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
            C600C6DEC600C6DEC600C6DEC600C6C6C60084848400FF00FF00}
          Margin = 5
          NumGlyphs = 2
        end
      end
      object CGroupBox6: TCGroupBox
        Left = 6
        Top = 47
        Width = 652
        Height = 125
        TabOrder = 1
        object CLabel6: TCLabel
          Left = 34
          Top = 16
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel3: TCLabel
          Left = 337
          Top = 60
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Linha'
        end
        object CLabel7: TCLabel
          Left = 411
          Top = 60
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Coluna'
        end
        object CLabel9: TCLabel
          Left = 21
          Top = 38
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel10: TCLabel
          Left = 8
          Top = 60
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Alinhamento'
        end
        object CLabel8: TCLabel
          Left = 493
          Top = 60
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#225'scara'
        end
        object CLabel27: TCLabel
          Left = 124
          Top = 16
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo'
        end
        object CLabel29: TCLabel
          Left = 214
          Top = 60
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tamanho Tra'#231'o'
        end
        object DBEidCampo: TCDBEdit
          Left = 73
          Top = 13
          Width = 45
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCampo'
          DataSource = dsCampos
          TabOrder = 0
          OnExit = DBEidCampoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBElinha: TCDBEdit
          Left = 368
          Top = 57
          Width = 37
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'linha'
          DataSource = dsCampos
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEcoluna: TCDBEdit
          Left = 450
          Top = 57
          Width = 37
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'coluna'
          DataSource = dsCampos
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCBdescAlinhamento: TCDBComboBox
          Left = 73
          Top = 57
          Width = 135
          Height = 19
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'descAlinhamento'
          DataSource = dsCampos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            'ESQUERDA'
            'DIREITA'
            'CENTRALIZADO')
          ParentFont = False
          TabOrder = 5
        end
        object DBCKimprime: TCDBCheckBox
          Left = 561
          Top = 37
          Width = 79
          Height = 17
          Caption = 'Imprime?'
          DataField = 'imprime'
          DataSource = dsCampos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdescCampo: TCDBEdit
          Left = 73
          Top = 35
          Width = 477
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descCampo'
          DataSource = dsCampos
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBRtamFonte2: TCDBRadioGroup
          Left = 73
          Top = 82
          Width = 290
          Height = 33
          Caption = 'Fonte'
          Columns = 5
          DataField = 'tamFonte'
          DataSource = dsCampos
          Items.Strings = (
            '10cpp'
            '12cpp'
            '17cpp'
            '20cpp'
            'Nenhum')
          ParentBackground = True
          TabOrder = 10
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
        end
        object DBEmascara: TCDBEdit
          Left = 539
          Top = 57
          Width = 104
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'mascara'
          DataSource = dsCampos
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object CGroupBox7: TCGroupBox
          Left = 369
          Top = 82
          Width = 274
          Height = 33
          Caption = 'Estilo'
          TabOrder = 11
          object DBCKnegrito: TCDBCheckBox
            Left = 7
            Top = 12
            Width = 66
            Height = 17
            Caption = 'Negrito'
            DataField = 'negrito'
            DataSource = dsCampos
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCKItalico: TCDBCheckBox
            Left = 66
            Top = 12
            Width = 66
            Height = 17
            Caption = 'It'#225'lico'
            DataField = 'italico'
            DataSource = dsCampos
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCKsublinhado: TCDBCheckBox
            Left = 120
            Top = 12
            Width = 74
            Height = 17
            Caption = 'Sublinhado'
            DataField = 'sublinhado'
            DataSource = dsCampos
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCKexpandido: TCDBCheckBox
            Left = 197
            Top = 12
            Width = 74
            Height = 17
            Caption = 'Expandido'
            DataField = 'expandido'
            DataSource = dsCampos
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object DBCBtipoCampo: TCDBComboBox
          Left = 150
          Top = 13
          Width = 139
          Height = 19
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'tipoCampo'
          DataSource = dsCampos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 11
          Items.Strings = (
            'CAMPO'
            'TRACO HORIZONTAL'
            'TRACO VERTICAL')
          ParentFont = False
          TabOrder = 1
          OnExit = DBCBtipoCampoExit
        end
        object DBEtamTraco2: TCDBEdit
          Left = 294
          Top = 57
          Width = 37
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tamTraco'
          DataSource = dsCampos
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBCKconexao: TCDBCheckBox
          Left = 295
          Top = 15
          Width = 74
          Height = 17
          Caption = 'Conex'#227'o'
          DataField = 'conexao'
          DataSource = dsCampos
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 524
    Width = 669
    ExplicitTop = 524
    ExplicitWidth = 669
    inherited BtnFechar: TCBitBtn
      Left = 575
      ExplicitLeft = 575
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 251
      Top = 34
      Visible = False
      ExplicitLeft = 251
      ExplicitTop = 34
    end
  end
  inherited imgIcones: TImageList
    Left = 680
    Top = 120
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000F1F1F1FFB8B7
      B7FFFFFFFFFFFBFBFBFFFDFDFDFFFCFCFCFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFC1BFC0FFF7F7F7FF00000000000000000000000000000000E8E8E8FFC6C6
      C6FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
      C8FFC6C6C6FFE5E5E5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FFC1C1C1FFB4B4B4FFB0B0
      B0FFFAFAFAFFE9E9E9FFECECECFFF3F3F3FFF1F1F1FFF4F4F4FFF5F5F5FFFFFF
      FFFFB8B7B7FFB7B7B7FFC0C0C0FFE2E2E2FF0000000000000000A6A6A6FFFFFF
      FFFFEBEBEBFFF7F7F7FFE0E0E0FFEEEEEEFFF2F2F2FFE8E8E8FFF5F5F5FFD7D7
      D7FFFFFFFFFFACACACFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000919191FF7E7F7EFF6B6B6BFFB4B4
      B4FFFBFBFBFFF0F0F0FFF3F3F3FFF3F3F3FFF1F1F1FFF1F1F1FFF4F4F4FFFFFF
      FFFFB8B7B7FF626262FF6B6C6BFF8F8F8FFF0000000000000000A1A1A1FFFFFF
      FFFFB3B3B3FFE4E4E4FFFFFFFFFFF2F2F2FFD7D7D7FFCCCCCCFFE6E6E6FFFFFF
      FFFFFFFFFFFFA7A7A7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7C7CFF6C6C6CFF6A6A6AFF9696
      96FFC4C4C4FFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFC5C5C5FFC4C4C4FFC5C5
      C5FF949393FF727271FF797A78FF898989FF0000000000000000A2A2A2FFFFFF
      FFFFC4C4C4FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD6D6D6FFD8D8D8FFBABA
      BAFFFFFFFFFFA5A5A5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000696969FF4F4F4FFF565656FF4A49
      49FF484848FF4A4A4AFF4B4B4BFF4A4A4AFF4A4A4AFF4A4A4AFF4B4B4BFF4646
      46FF494848FF6D6D6DFF797979FF898989FF00000000000000009F9F9FFFFFFF
      FFFFC5C5C5FFE5E5E5FFB6B6B6FFD4D4D4FFD9D9D9FFB6B6B6FFDDDDDDFFFFFF
      FFFFFFFFFFFFA4A4A4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000666666FF515151FF545554FF2B2B
      2BFF212121FF222222FF222222FF212121FF212121FF202020FF202020FF1F1F
      1FFF2A2A2AFF666665FF797878FF878787FF0000000000000000A2A2A2FFFFFF
      FFFFD1D1D1FFD4D4D4FFD0D0D0FFD4D4D4FFD3D3D3FFD1D1D1FFD3D3D3FFCECE
      CEFFFFFFFFFFA7A7A7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000676767FF4F4F4FFF555556FF4E4D
      4EFF444444FF464646FF464646FF464646FF474747FF484848FF494949FF4848
      48FF575756FF696869FF747474FF858686FF0000000000000000A0A0A0FFFFFF
      FFFFB7B7B7FFE9E9E9FFC3C3C3FFDEDEDEFFD2D2D2FFACACACFFEBEBEBFFCFCF
      CFFFFFFFFFFFA5A5A5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6B6AFF515252FF5C5D5DFF5555
      54FF494949FF4C4C4CFF4F4F4FFF515151FF545454FF565656FF575757FF5555
      55FF616161FF6B6B6BFF717171FF888888FF0000000000000000A3A3A3FFFFFF
      FFFFC8C8C8FFD6D6D6FFCACACAFFD2D2D2FFD1D1D1FFD4D4D4FFD2D2D2FFC3C3
      C3FFFFFFFFFFA9A9A9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000878787FF989898FFABAAAAFF6868
      68FF4E4E4EFF5C5C5CFF656565FF686868FF696969FF666666FF5F5F5FFF5050
      50FF717172FFC1C1C1FFBCBCBCFF9D9D9DFF0000000000000000A0A0A0FFFFFF
      FFFFCBCBCBFFF0F0F0FF9B9B9BFFD1D1D1FFDDDDDDFFA8A8A8FFE4E4E4FFF6F6
      F6FFFFFFFFFFA4A4A4FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000919191FF9D9D9DFFACACACFF6666
      66FF3F3F3FFF4F4F4FFF585858FF5C5C5CFF5D5D5DFF595959FF525252FF4141
      41FF696A69FFB3B3B3FFA3A4A3FF989898FF0000000000000000A3A3A3FFFFFF
      FFFFBEBEBEFFD4D4D4FFD3D3D3FFD3D3D3FFCECECEFFC4C4C4FFD6D6D6FFC1C1
      C1FFFFFFFFFFA8A8A8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B1B1FF686868FF6F6F6FFF6261
      61FF808080FF818181FF808080FF818181FF818181FF828282FF848484FF8282
      82FF616161FF727272FF6C6D6DFFB4B5B4FF0000000000000000A1A1A1FFFFFF
      FFFFB8B8B8FFE6E6E6FFAEAEAEFFCACACAFFD9D9D9FFE2E2E2FFD0D0D0FFECEC
      ECFFFFFFFFFFA6A6A6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A8FFF5F4F4FFECECECFFEBEBEBFFEDEDEDFFEEEEEFFFEFEEEFFFF1F2F2FFF8F8
      F8FFA8A6A7FF00000000000000000000000000000000000000009F9F9FFFFFFF
      FFFFEDEDEDFFEAEAEAFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFF
      FFFFFFFFFFFFA3A3A3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A8FFE7E7E7FFDFDFDFFFDEDEDEFFE0E0E0FFE2E3E1FFE2E2E2FFE4E5E4FFECEB
      ECFFAAA9A9FFD9D9D9FF8D8D8DFFDBDBDBFF0000000000000000A1A1A1FFFFFF
      FFFFF0F0F0FFFFFFFFFFE9E9E9FF6F6F6FFF777777FF646464FF8D8D8DFF3333
      33FFFFFFFFFFACACACFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A8FFE8E8E8FFE0E0E0FFDFDFDFFFE0DFE0FFE1E1E1FFE3E2E3FFE6E5E5FFEBEA
      EAFF979796FF505050FF626262FF464646FF0000000000000000A1A1A1FFFBFB
      FBFFADADADFFB8B8B8FFB8B8B8FFA9A9A9FFA9A9A9FFA5A5A5FFB8B8B8FF9393
      93FFFFFFFFFFA8A8A8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5C5
      C5FFE8E9E9FFE7E8E8FFE6E6E6FFE7E7E7FFE6E5E5FFE7E6E6FFEBEAEBFFE3E3
      E3FFB0B0B0FF303030FF707070FF646464FF00000000000000009B9B9BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA3A3A3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7D7
      D7FFC4C4C4FFC7C7C7FFC6C6C6FFC7C7C7FFD7D7D7FFD8D8D8FFDCDBDBFFD6D6
      D6FFE4E4E4FF7E7E7EFF1A1A1AFF939393FF0000000000000000C7C7C7FFAFAF
      AFFFA4A4A4FFA3A3A3FFA3A3A3FFA2A2A2FFA2A2A2FFA2A2A2FFA3A3A3FFA3A3
      A3FFAFAFAFFFC3C3C3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C003C003000000000000C00300000000
      0000C003000000000000C003000000000000C003000000000000C00300000000
      0000C003000000000000C003000000000000C003000000000000C00300000000
      0000C00300000000E007C00300000000E000C00300000000E000C00300000000
      E000C00300000000E000C0030000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 744
    Top = 120
    object actCadTpDesconto: TAction
      Caption = '&Cad. Tipo'
      ImageIndex = 6
    end
    object actRegua: TAction
      Caption = '&Imprimir R'#233'gua'
      ImageIndex = 7
      OnExecute = actReguaExecute
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM RelMatricial'
    Left = 744
    Top = 24
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsTab
    Left = 712
    Top = 24
  end
  inherited dsPadrao: TDataSource
    Left = 776
    Top = 24
  end
  inherited cdsLookUp: TClientDataSet
    Left = 712
    Top = 88
  end
  inherited dspLookUp: TDataSetProvider
    Left = 680
    Top = 88
  end
  inherited ImgBotoes: TImageList
    Left = 712
    Top = 120
    Bitmap = {
      494C010108000900040020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000003000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00CECECE00000000000000
      0000FFFFFF008C9CA500BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500CECECE00000000000000
      0000FFFFFF0094949400BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000C0606000C060
      6000C0606000C0606000C0606000C0606000C0606000C0606000C0606000C060
      6000C0606000C0606000C060600000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      00000B5C90FF0B5C90FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999FF999999FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADC6CE006B847B00DE5A3100A5391000C6C6C600FFFF
      FF00395A7B00527BAD00426B9400BDBDC6000000000000000000000000000000
      00000000000000000000BDBDBD00737373007B7B7B0052525200C6C6C600FFFF
      FF005A5A5A007B7B7B006B6B6B00BDBDBD000000000000000000000000000000
      00008463630084636300C6636300C66363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A5A5A50084848400A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000C0A08000F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C060600000000000C0C0C000C0C0C000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C0000000000000000000000000000B5C
      90FF2C9CC6FF1B90C0FF0B5C90FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      99FFC7C7C7FFBCBCBCFF999999FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      000000000000ADC6C600849C9C00849C9400AD523900DE6B4A00AD3918003152
      73004A7BAD0084A5C600ADC6DE00949CA50000000000F7F7F700000000000000
      000000000000BDBDBD008C8C8C008C8C8C006B6B6B008C8C8C00525252005252
      52007B7B7B00A5A5A500C6C6C6009C9C9C000000000000000000846363008463
      6300C6636300C6636300C6636300C66363008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000C0A08000F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0C0
      8000C0C08000F0CAA600C060600000000000C0C0C000C0C0C000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C00000000000000000000B5C90FF57BF
      E2FF40B1DAFF289AC5FF198FBDFF0B5C90FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999FFEAEA
      EAFFDBDBDBFFC5C5C5FFBABABAFF999999FF0000000000000000000000000000
      000000000000000000000000000000000000BDADAD00A5422900844A4200846B
      6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B5A0039394A004A7B
      AD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A5A005A5A5A007373
      7300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C8C00424242007B7B
      7B009C9C9C00D6D6D6007B7B7B00FFFFFF00000000000000000084636300C684
      8400C6848400C6638400C6636300C663630084424200F7CEA500F7CEA500F7CE
      A500F7CEA500F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A50084848400C6DEC600C6DEC600C6DE
      C600C6DEC600C6DEC600A5A5A500000000000000000000000000C0A08000F0FB
      FF00F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600C0C08000F0CAA600C060600000000000C0C0C000C0C0C000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C000000000000B5C90FF80D5F0FF4AA4
      C4FF31809DFF3BAFD8FF2597C4FF168CBCFF0B5C90FF00000000000000000000
      00000000000000000000000000000000000000000000999999FFFFFFFFFFD4D4
      D4FFB3B3B3FFD9D9D9FFC3C3C3FFB8B8B8FF999999FF00000000000000000000
      000000000000000000000000000000000000B59C9C00D6734A00D6733900DE73
      3900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B7B00C6ADAD007384
      9C00C6D6EF0063738C00FFFFFF0000000000A5A5A50084848400848484008484
      84007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C0084848400B5B5B5008484
      8400D6D6D60073737300FFFFFF0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C66384008442420042C6630042C6630042C6
      630000C66300F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008484840084848400848484008484
      840084848400C6DEC600A5A5A500000000000000000000000000C0A08000FFFF
      FF00F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C060600000000000C0C0C000C0C0C000C0DCC000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C0000B5C90FF9FE6FAFF91DEF4FF5AA4
      BCFF355D6DFF307993FF36ABD7FF2296C1FF148ABCFF0B5C90FF000000000000
      000000000000000000000000000000000000999999FFFFFFFFFFFFFFFFFFD7D7
      D7FF9B9B9BFFADADADFFD5D5D5FFC0C0C0FFB7B7B7FF999999FF000000000000
      000000000000000000000000000000000000AD949400D6846300D6734200CE6B
      3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD9C00AD9C9C00E7DE
      D60073738400AD391800C6C6C600000000009C9C9C0094949400848484007B7B
      7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5B5009C9C9C00DEDE
      DE007B7B7B005A5A5A00C6C6C60000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A50084848400A5A5A500A5A5A500A5A5
      A50084848400C6DEC600A5A5A500000000000000000000000000C0A0A000FFFF
      FF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C060600000000000C0C0C000C0C0C000C0DCC000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C0000B5C90FF9FE6FAFF1E1E1EFF8CDD
      F4FF5AAAC5FF396879FF2D7089FF33A9D5FF1E92C0FF1289BAFF0B5C90FF0000
      000000000000000000000000000000000000999999FFFFFFFFFF656565FFFFFF
      FFFFDCDCDCFFA3A3A3FFA6A6A6FFD3D3D3FFBDBDBDFFB4B4B4FF999999FF0000
      000000000000000000000000000000000000AD8C8C00E7A58400CE7B5A00D69C
      8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CEB500DEAD9C00A584
      7B00E7CEBD00FF8463009C8C8C00000000009C9C9C00ADADAD008C8C8C00A5A5
      A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECECE00B5B5B5008C8C
      8C00CECECE00A5A5A5008C8C8C0000000000000000000000000084636300C684
      8400C6848400C6848400C6848400C68484008442420042C6630042C6630042C6
      630042C66300F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A500848484008484840084848400A5A5
      A50084848400C6DEC600A5A5A500000000000000000000000000C0A0A000FFFF
      FF00FFFFFF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C060600000000000C0C0C000C0C0C000C0DCC000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C00000000000143B51FF9FE6FAFF9AE3
      F8FF89DAF3FF5EB4CFFF2D4751FF2F7995FF2EA6D3FF1C90BFFF1088BAFF0B5C
      90FF00000000000000000000000000000000000000007C7C7CFFFFFFFFFFFFFF
      FFFFFFFFFFFFE4E4E4FF888888FFAEAEAEFFCFCFCFFFBCBCBCFFB3B3B3FF9999
      99FF000000000000000000000000000000008C7B7B00F7BD9C00CE846B00DEC6
      C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6AD00E7A58400B5A5
      9C00C6634200A56B5A00000000000000000084848400C6C6C60094949400CECE
      CE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6C600ADADAD00A5A5
      A5007B7B7B007B7B7B000000000000000000000000000000000084636300C684
      8400C6848400C6A5A500F7FFFF00C684840084424200C6DEC60084E7840042E7
      840042E78400F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400C6DEC600C6C6C600A5A5
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000C0A0A000FFFF
      FF00FFFFFF00F0FBFF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C060600000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C00000000000000000000B5C90FF9FE6
      FAFF1E1E1EFF86D9F2FF5AA6C1FF4493B0FF3FB1DAFF2BA4D1FF188EBFFF0E87
      B8FF0B5C90FF0000000000000000000000000000000000000000999999FFFFFF
      FFFF656565FFFFFFFFFFDADADAFFC6C6C6FFDBDBDBFFCDCDCDFFBABABAFFB2B2
      B2FF999999FF0000000000000000000000009C7B7300F7C6AD00D6947B00E7CE
      BD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB59400E7A57B00C6B5
      B500AD4A1800FFF7F700000000000000000084848400CECECE009C9C9C00CECE
      CE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBDBD00ADADAD00B5B5
      B5005A5A5A00F7F7F7000000000000000000000000000000000084636300C684
      8400C6848400F7CEA500F7FFFF00C684840084424200FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600F7FFFF00C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000C0A0A000FFFF
      FF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C060600000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000000000000000000000000000143B
      51FF9FE6FAFF93E0F6FF81D7F0FF69CAE9FF51BCE1FF3BAFD8FF28A1D1FF168C
      BCFF0D86B7FF0B5C90FF00000000000000000000000000000000000000007C7C
      7CFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFE7E7E7FFD9D9D9FFCCCCCCFFB8B8
      B8FFB1B1B1FF999999FF0000000000000000A56B5A00F7CEB500DE9C8C00DEC6
      C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD9C00DE946B00BDB5
      B500D68C6300D6A59C0000000000000000007B7B7B00D6D6D600ADADAD00CECE
      CE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6C6009C9C9C00B5B5
      B50094949400B5B5B5000000000000000000000000000000000084636300F7CE
      A500C6848400C6848400C6848400C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600A5A5A50084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000C0C0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C060600000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0FBFF00C0C0C000C0C0C0000000000000000000000000000000
      00000B5C90FF9FE6FAFF1E1E1EFF7DD3EFFF65C6E7FF4DBAE0FF36ABD8FF249F
      CFFF148BBCFF0C84B6FF0B5C90FF000000000000000000000000000000000000
      0000999999FFFFFFFFFF656565FFFFFFFFFFF4F4F4FFE5E5E5FFD6D6D6FFC9C9
      C9FFB7B7B7FFB0B0B0FF999999FF00000000AD847B00FFD6C600F7C6B500DEB5
      A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7DE00DEB5A500C6A5
      9C00D6AD9400D6947B00FFFFFF000000000094949400DEDEDE00CECECE00BDBD
      BD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00ADAD
      AD00B5B5B500A5A5A500FFFFFF0000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000F0CAA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00F0CA
      A600F0CAA600C0A0A000C060600000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0DCC000C0C0C000C0C0C0000000000000000000000000000000
      000000000000143B51FF9DE5FAFF8CDCF4FF77D1EEFF5FC5E6FF48B6DDFF33A9
      D5FF219DCEFF1289BAFF0A83B6FF0B5C90FF0000000000000000000000000000
      0000000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFE1E1E1FFD3D3
      D3FFC6C6C6FFB4B4B4FFAFAFAFFF999999FFB58C8400FFDECE00F7CEBD00F7C6
      B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBDB500DED6CE00EFCE
      B500E7CEC600E7C6AD00E7CECE00000000009C9C9C00DEDEDE00D6D6D600CECE
      CE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6C600D6D6D600CECE
      CE00CECECE00C6C6C600D6D6D60000000000000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000F0CAA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CAA600C080
      8000C080600080806000C060600000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0C0C000A4A0A000C0C0C000C0C0C0000000000000000000000000000000
      000000000000000000000B5C90FF99E3F8FF1E1E1EFF74CFEBFF5BC1E3FF43B4
      DCFF2EA6D4FF1E9ACEFF1087B8FF0B5C90FF0000000000000000000000000000
      00000000000000000000999999FFFFFFFFFF656565FFFDFDFDFFECECECFFDEDE
      DEFFD0D0D0FFC5C5C5FFB3B3B3FF999999FFBD948C00FFE7D600F7DECE00F7D6
      C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD9C00D6947B00A57B
      73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7E700DEDEDE00D6D6
      D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5B500A5A5A5008484
      840094949400ADADAD007B7B7B00FFFFFF00000000000000000084636300F7CE
      A500F7CEA500F7CEA500F7CEA500C684840084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000F0CAA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C080
      6000C0A06000C0804000C060400000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00C0C0
      C000C0C0C000C0C0C000A4A0A000C0C0C0000000000000000000000000000000
      0000000000000000000000000000143B51FF97E2F7FF84D8F2FF6ECCEAFF56BF
      E2FF40B1DAFF2BA4D3FF0B5C90FF000000000000000000000000000000000000
      00000000000000000000000000007C7C7CFFFFFFFFFFFFFFFFFFF9F9F9FFEAEA
      EAFFDBDBDBFFCECECEFF999999FF00000000C6948C00FFEFE700FFE7D600F7DE
      CE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD9C00F7B59C005A5A
      520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6C600C6C6C6005252
      52008C8C8C008C8C8C00A5A5A5009C9C9C000000000000000000846363008463
      6300C6848400F7CEA500F7CEA500C684A50084424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7CEA50084636300000000000000000000000000A5A5A500A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C60084848400F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000F0CAA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C080
      6000C0C06000C08060000000000000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0DCC000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000B5C90FF95E0F6FF1E1E1EFF69CA
      EAFF51BCE1FF0B5C90FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000999999FFFFFFFFFF656565FFF7F7
      F7FFE7E7E7FF999999FF0000000000000000B59C9C00FFF7E700FFEFE700FFEF
      DE00FFE7D600A5736B008C635A00AD949400AD8C8400AD847B00BD7B73007B63
      630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700848484006B6B6B009C9C9C00949494008C8C8C00949494006B6B
      6B00949494008C8C8C006B6B6B00F7F7F7000000000000000000000000000000
      000084636300C6848400C6848400C68484008442420084636300846363008463
      6300846363008463630084636300000000000000000000000000000000000000
      0000A5A5A500A5A5A500A5A5A500C6C6C60084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000F0CAA600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00C0C0C000C080
      6000C0806000000000000000000000000000C0C0C000C0C0C000F0FBFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000000000143B51FF90DEF4FF7BD4
      EFFF0B5C90FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007C7C7CFFFFFFFFFFFFFF
      FFFF999999FF000000000000000000000000FFFFFF00BDADAD00C6A5A500CEAD
      A500CE9C9400F7F7F70000000000000000000000000000000000000000000000
      0000E7FFFF0084BDE700F7F7F70000000000FFFFFF00B5B5B500ADADAD00B5B5
      B500ADADAD00F7F7F70000000000000000000000000000000000000000000000
      0000F7F7F700B5B5B500F7F7F700000000000000000000000000000000000000
      0000000000000000000084636300846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C060
      600000000000000000000000000000000000C0C0C000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00A4A0
      A000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B5C90FF0B5C
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999FF9999
      99FF000000000000000000000000000000000000000000000000C6636300C663
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
      2800000080000000300000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF31FF31FE7FFE7FC0010000F3FFF3FF
      FC00FC00F07FF07FC0010000E1FFE1FFB800B800C001C001C0010000C0FFC0FF
      00000000C001C001C0010000807F807F00010001C001C001C0010000003F003F
      00010001C001C001C0010000001F001F00010001C001C001C0010000800F800F
      00030003C001C001C0010000C007C00700030003C001C001C0010000E003E003
      00030003C001C001C0010000F001F00100010001C001C001C0010000F800F800
      00010001C001C001C0010000FC00FC0000000000C001C001C0010000FE01FE01
      00000000C001C001C0030000FF03FF0300000000F001F001C0070000FF87FF87
      03F103F1FC7FFC7FC00F0000FFCFFFCFC001C0018FFF8FFF88038803FF3FFF3F
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
  object sdsTab: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM RelMatricial'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 24
  end
  object sdsCampos: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 680
    Top = 56
  end
  object dspCampos: TDataSetProvider
    DataSet = sdsCampos
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspCamposBeforeUpdateRecord
    Left = 712
    Top = 56
  end
  object cdsCampos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM RelMatricialCampo ORDER BY imprime desc, linha, co' +
      'luna'
    Params = <>
    ProviderName = 'dspCampos'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsCamposAfterInsert
    AfterEdit = cdsPadraoAfterEdit
    AfterScroll = cdsCamposAfterScroll
    OnReconcileError = cdsPadraoReconcileError
    Left = 744
    Top = 56
  end
  object dsCampos: TDataSource
    DataSet = cdsCampos
    OnStateChange = dsCamposStateChange
    Left = 776
    Top = 56
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Produto'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 776
    Top = 88
  end
  object cdsCampos2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 744
    Top = 88
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Silenus Software ltda'
    RegistroUsuario.SerieProduto = 'SINGLE-1206/00715'
    RegistroUsuario.AutorizacaoKey = 'UMGP-7382-OVLR-1038-ADOG'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 776
    Top = 120
  end
end
