inherited frmCadBanco: TfrmCadBanco
  Caption = 'Cadastro de Bancos e Portadores de T'#237'tulos'
  ClientHeight = 401
  ClientWidth = 538
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000A5A5A527A7A7A7C2CDCD
    CDCBD0D0D08DACACAC4DA1A1A11B9E9E9E03B7B7B705D8D8D805000000000000
    0000000000000000000000000000000000008D8D8D1E7A7A7AC08C8C8CFF9696
    96FFB0B0B0FFCBCBCBFFD4D4D4E8CFCFCFCBD1D1D1D1DBDBDB5F000000000000
    000000000000000000000000000000000000A3A3A3699C9C9CFF9B9B9BFF9797
    97FF989898FF9E9E9EFF9F9F9FFFB5B5B5DEDDDDDD77E4E4E40C000000000000
    0000000000000000000000000000CCCCCC53BDBDBDD0CDCDCDFFD7D7D7FFDDDD
    DDFFE0E0E0FFDCDCDCFFC6C6C6FFD9D9D9D7E8E8E87FE4E4E42C000000000000
    00000000000000000000BDBDBD76B3B3B3FFB7B7B7FFC5C5C5FFC4C4C4FFDCDC
    DCFFE6E6E6FFEDEDEDFFE9E9E9FFECECECFFEAEAEAFFE7E7E7F4E2E2E2A20000
    000000000000CEBAB902B9BBBBDDB8B8B8FFC3C3C3FF8D8D8DFF1B1B1BFF2F2F
    2FFF4C4C4CFF6E6E6EFF898989FFA7A7A7FFC4C4C4FFD9D9D9FFDFDFDFF80000
    0000A303010D7C3D389CB5B6B6FEBABBBBFFC1C1C1FF868686FF000000FF0000
    00FF000000FF000000FF000000FF000000FF080808FF161616FF767676F00000
    00005601009651312BFFB6B4B4FFB6B7B7FFBEBEBEFF878787FF000000FF0000
    00FF000000FF000000FF000000FF000000FF000000FF000000FF5E5E5EF04B06
    0455340A02FF6C281EFFB4AFAEFFB5B6B6FFC0C0C0FF808080FF000000FF0000
    00FF000000FF000000FF000000FF020202FF090909FF090909FF707070EE2908
    04AB431006FF871D0AFDC79D94FEB1B7B9FFC4C4C4FF7B7B7BFF000000FF0000
    00FF000000FF000000FF020202FF111111FF242424FF2B2B2BFF8A8A8AEC280B
    06D5491005FF8D1601FDD58575FEB2B9BAFFC7C7C7FF717171FF000000FF0000
    00FF000000FF010101FF101010FF2C2C2CFF464646FF565656FFA5A5A5E83B11
    0ACC501207FFAF4E3DFEE09988FFAA9E9DFFC8CACAFF545454FF000000FF0000
    00FF000000FF000000FF181818FF3E3E3EFF616161FF777777FFB1B1B1E27212
    0A88521F17FFE29889FFFDB7A1FFABA4A1FFC4C7C8FF999B9BFF6F7171FF6A6B
    6BFF646565FF646464FF727272FF828282FF909090FFA6A6A6FFCCCCCCD3B206
    0222461209EAC68578FFFFBBA6FFB4A099FFC5C3C2FFF0EBEBFFF5F2F1FFF5F5
    F5FFFBFBFBFFFAFAFAFAF6F6F6FAF0F0F0FAEAEAEAFAE8E8E8FBE8E8E8AC0000
    00009F0701437E382BE8FB856EFFEC7C62FFDC7A66FFD38677FF9D4B3EFFC46E
    60DFF6C0B558F1F2F233F0F0F033EFEFEF33EDEDED33EAEAEA35E9E9E91A0000
    000000000000BB2D1526EA5F4996FE9B84E2F19883EFD2705BD8B8342097F961
    491E00000000000000000000000000000000000000000000000000000000FC01
    0000F8010000F8010000F0010000E0000000C000000080000000800000000000
    0000000000000000000000000000000000000000000080000000C07F0000}
  ExplicitWidth = 546
  ExplicitHeight = 435
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 366
    Width = 538
    ExplicitTop = 365
    ExplicitWidth = 538
  end
  inherited PagAbas: TCPageControl
    Width = 538
    Height = 366
    ExplicitWidth = 538
    ExplicitHeight = 366
    inherited TabAbas: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 530
      ExplicitHeight = 337
      inherited CGroupBox2: TCGroupBox
        Left = 3
        Top = 79
        Width = 521
        Height = 226
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 79
        ExplicitWidth = 521
        ExplicitHeight = 226
        inherited DBGrid: TCDBGrid
          Left = 6
          Top = 13
          Width = 507
          Height = 206
          TabStop = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idBanco'
              Title.Caption = 'C'#243'digo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descBanco'
              Title.Caption = 'Descri'#231#227'o'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ehPortador'
              Title.Caption = 'Port.'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stBanco'
              Title.Caption = 'Status'
              Width = 100
              Visible = True
            end>
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 3
        Width = 521
        Height = 70
        TabOrder = 0
        object CLabel60: TCLabel
          Left = 22
          Top = 19
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel58: TCLabel
          Left = 9
          Top = 41
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel2: TCLabel
          Left = 358
          Top = 19
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object DBEidBanco: TCDBEdit
          Left = 61
          Top = 16
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idBanco'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidBancoExit
          Find = FindBanco
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescBanco: TCDBEdit
          Left = 61
          Top = 38
          Width = 378
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descBanco'
          DataSource = dsPadrao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEstBanco: TCDBEdit
          Left = 395
          Top = 16
          Width = 118
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stBanco'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBCHehPortador: TCDBCheckBox
          Left = 445
          Top = 40
          Width = 68
          Height = 17
          Caption = 'Portador?'
          DataField = 'ehPortador'
          DataSource = dsPadrao
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 370
    Width = 538
    ExplicitTop = 370
    ExplicitWidth = 538
    inherited BtnFechar: TCBitBtn
      Left = 445
      ExplicitLeft = 445
    end
  end
  inherited imgIcones: TImageList
    Left = 312
    Top = 32
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F1F1FFBCBCBCFFD7D7D7FFE5E5E5FFE5E5E5FFF5F5
      F5FFFDFDFDFFFDFDFDFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F1FF9A9A9AFF8C8C8CFF969696FFB0B0B0FFCBCBCBFFD7D7
      D7FFD8D8D8FFD9D9D9FFF1F1F1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9D9D9FF9C9C9CFF9B9B9BFF979797FF989898FF9E9E9EFF9F9F
      9FFFBEBEBEFFEFEFEFFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEEFFC9C9C9FFCDCDCDFFD7D7D7FFDDDDDDFFE0E0E0FFDCDCDCFFC6C6
      C6FFDEDEDEFFF3F3F3FFFAFAFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E0FFB3B3B3FFB7B7B7FFC5C5C5FFC4C4C4FFDCDCDCFFE6E6E6FFEDEDEDFFE9E9
      E9FFECECECFFEAEAEAFFE8E8E8FFECECECFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFC2C4
      C4FFB8B8B8FFC3C3C3FF8D8D8DFF1B1B1BFF2F2F2FFF4C4C4CFF6E6E6EFF8989
      89FFA7A7A7FFC4C4C4FFD9D9D9FFDFDFDFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF2F2FFAE8885FFB5B6
      B6FFBABBBBFFC1C1C1FF868686FF000000FF000000FF000000FF000000FF0000
      00FF000000FF080808FF161616FF7E7E7EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B6969FF51312BFFB6B4
      B4FFB6B7B7FFBEBEBEFF878787FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF676767FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3ACABFF340A02FF6C281EFFB4AF
      AEFFB5B6B6FFC0C0C0FF808080FF000000FF000000FF000000FF000000FF0000
      00FF020202FF090909FF090909FF797979FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F5956FF431006FF871E0BFFC79D
      94FFB1B7B9FFC4C4C4FF7B7B7BFF000000FF000000FF000000FF000000FF0202
      02FF111111FF242424FF2B2B2BFF929292FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B332FFF491005FF8D1702FFD585
      75FFB2B9BAFFC7C7C7FF717171FF000000FF000000FF000000FF010101FF1010
      10FF2C2C2CFF464646FF565656FFADADADFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000062403BFF501207FFAF4E3DFFE099
      88FFAA9E9DFFC8CACAFF545454FF000000FF000000FF000000FF000000FF1818
      18FF3E3E3EFF616161FF777777FFB9B9B9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3807CFF521F17FFE29889FFFDB7
      A1FFABA4A1FFC4C7C8FF999B9BFF6F7171FF6A6B6BFF646565FF646464FF7272
      72FF828282FF909090FFA6A6A6FFD4D4D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4DDDDFF55251DFFC68578FFFFBB
      A6FFB4A099FFC5C3C2FFF0EBEBFFF5F2F1FFF5F5F5FFFBFBFBFFFAFAFAFFF6F6
      F6FFF0F0F0FFEAEAEAFFE8E8E8FFEFEFEFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5BDBCFF89493EFFFB85
      6EFFEC7C62FFDC7A66FFD38677FF9D4B3EFFCB8073FFFBE9E5FFFCFCFCFFFCFC
      FCFFFBFBFBFFFBFBFBFFFAFAFAFFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4DFDCFFF2A0
      93FFFEA691FFF19E8AFFD88574FFD4867AFFFEECE9FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC01000000000000F801000000000000
      F801000000000000F001000000000000E000000000000000C000000000000000
      8000000000000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000C07F00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 376
    Top = 32
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM Banco'
    Left = 184
    Top = 240
    object cdsPadraoidBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsPadraodescBanco: TStringField
      FieldName = 'descBanco'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsPadraoehPortador: TStringField
      FieldName = 'ehPortador'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraostBanco: TStringField
      FieldName = 'stBanco'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsGerencial
    Left = 152
    Top = 240
  end
  inherited dsPadrao: TDataSource
    Left = 216
    Top = 240
  end
  inherited cdsLookUp: TClientDataSet
    Left = 184
    Top = 208
  end
  inherited dspLookUp: TDataSetProvider
    Left = 152
    Top = 208
  end
  inherited ImgBotoes: TImageList
    Left = 344
    Top = 32
  end
  object sdsGerencial: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM Banco'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 120
    Top = 240
  end
  object FindBanco: TCFind
    SelectClause.Strings = (
      'SELECT idBanco, descBanco, ehPortador, stBanco FROM Banco')
    OrderByClause.Strings = (
      'ORDER BY descBanco')
    FindField = 'descBanco'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBanco'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Portador'
      'Situa'#231#227'o')
    TypeFind = fFindNormal
    Left = 416
    Top = 8
  end
end
