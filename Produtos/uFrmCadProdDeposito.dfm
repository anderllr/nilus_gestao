inherited FrmCadProdDeposito: TFrmCadProdDeposito
  Caption = 'Cadastro de Dep'#243'sitos de Produtos'
  ClientHeight = 369
  ClientWidth = 479
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000020000000B0000000B0000000B0000000B0000000B0000000B0000
    000B0000000B0000000B0000000B0000000B0000000B00000002000000000000
    00000400002B2F1606A230180AA0301A0CA0321B0DA0311B0FA02F1B10A02F1C
    0EA02F1B0EA0311B0CA031190AA02F1708A02E1506A20400002B000000000000
    00000600004AC57F41FFCE9059FFD5A06FFFDEAF84FFCDAC8FFFC6A992FFC5A7
    90FFC0A186FFDBA97BFFD19762FFC98548FFC17432FF0700004A000000000000
    000006000045BA7335FFBF7D40FFC2844AFFC88D58FFAF835BFFA57A5AFFA57A
    58FFA17753FFC68850FFBE7C40FFBB7636FFB76D2AFF06000044000000000000
    00000400003ABA7230FFBD793AFFBE7C3FFFC28044FFA16B3BFF955D32FF965C
    30FF925C31FFC17E3FFFBC7738FFBB7431FFB86D2AFF0400003A000000000000
    0000342D2B3AB9712FFFBE7937FFBE7B3BFFC37F3FFF9D622EFF91501EFF9251
    1DFF8E5422FFC17E3DFFBD7837FFBD7734FFB8712FFF3831303A000000000000
    0000E1D9D639B67333FFC2803FFFC17F40FFC58241FF9A5D27FF8D450DFF9047
    0EFF8B4C18FFC48141FFC07E3DFFC17E3DFFBA7534FF9C94903A000000000000
    020C00000870BF7E3EFFCC8C4CFFC88A4DFFC88A4DFFBA7F46FFAF773FFFAE76
    3DFFB1773EFFCE955EFFD4A272FFD9AA79FFC3986AFF000A339A2C2C30070000
    000013295D655069A3FF99785CFFC0864BFFCD9153FFCE9155FFCE9559FFD8A7
    76FFE4BF9AFFE5C4A1FFCFB295FFA5A6B4FF4170C8F04A526626000000000000
    0000000000001B2F565387B7FFFFA9BEE2FFBEB7B5FFE0C7ACFFEED6BDFFECD4
    BBFFD7C4B1FFB2B7C6FFA8C5F8FF5F8EE2F04349592200000000000000000000
    000000000000000000001B2D4F51A7C8FFFFC8DFFFFFBED0F0FFCECED2FFC7CD
    D9FFBED4F9FFCEE4FFFF769BDCEE424757210000000000000000000000000000
    00000000000000000000000000001C2B4B4CB5CEFAFFE4F0FFFFDCEAFFFFDDEA
    FFFFEAF5FFFF7A9AD0E8464B591D000000000000000000000000000000000000
    0000000000000000000000000000000000002F3B553CB8CDF1FBF7FBFFFFFCFF
    FFFF7895C4DE62666E1200000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000333F5333C8DAF9FD88A1
    C9DE686D730E0000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000000004101E1316
    1B0D00000000000000000000000000000000000000000000000000000000FFFF
    0000800100008001000080010000800100008001000080010000800100000000
    000080010000C0030000E0070000F00F0000F81F0000FC3F0000FE7F0000}
  ExplicitWidth = 487
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 365
    Width = 479
    ExplicitTop = 365
    ExplicitWidth = 417
  end
  inherited PagAbas: TCPageControl
    Width = 479
    Height = 334
    ExplicitWidth = 479
    ExplicitHeight = 334
    inherited TabAbas: TTabSheet
      Caption = 'Dep'#243'sitos'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 471
      ExplicitHeight = 305
      inherited CGroupBox2: TCGroupBox
        Top = 122
        Width = 463
        Height = 176
        ExplicitTop = 122
        ExplicitWidth = 463
        ExplicitHeight = 176
        inherited DBGrid: TCDBGrid
          Left = 6
          Top = 15
          Width = 449
          Height = 152
          Columns = <
            item
              Expanded = False
              FieldName = 'idProdDeposito'
              Title.Caption = 'C'#243'digo'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descProdDeposito'
              Title.Caption = 'Descri'#231#227'o'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stProdDeposito'
              Title.Caption = 'Status'
              Width = 90
              Visible = True
            end>
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 4
        Top = 1
        Width = 463
        Height = 115
        TabOrder = 1
        object CLabel4: TCLabel
          Left = 33
          Top = 16
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Codigo'
        end
        object CLabel5: TCLabel
          Left = 326
          Top = 38
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object CLabel6: TCLabel
          Left = 20
          Top = 38
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel1: TCLabel
          Left = 8
          Top = 60
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object DBEidProdDeposito: TCDBEdit
          Left = 72
          Top = 13
          Width = 40
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdDeposito'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidProdDepositoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescProdDeposito: TCDBEdit
          Left = 72
          Top = 35
          Width = 248
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descProdDeposito'
          DataSource = dsPadrao
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEstProdDeposito: TCDBEdit
          Left = 362
          Top = 35
          Width = 93
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stProdDeposito'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBMobsProdDeposito: TCDBMemo
          Left = 72
          Top = 57
          Width = 383
          Height = 48
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsProdDeposito'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 3
          KeyMemo = kmmNormal
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 334
    Width = 479
    ExplicitTop = 357
    ExplicitWidth = 477
    inherited BtnFechar: TCBitBtn
      Left = 396
      ExplicitLeft = 396
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 251
      Top = 40
      Visible = False
      ExplicitLeft = 251
      ExplicitTop = 40
    end
  end
  inherited imgIcones: TImageList
    Left = 264
    Top = 232
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D4FF7A6A60FF7D6E
      65FF7D6F66FF7E6F67FF7D6F68FF7C6F69FF7C7067FF7C6F67FF7D6F66FF7D6E
      65FF7C6D64FF7A6A60FFD4D4D4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B5B5FFC57F41FFCE90
      59FFD5A06FFFDEAF84FFCDAC8FFFC6A992FFC5A790FFC0A186FFDBA97BFFD197
      62FFC98548FFC17432FFB7B5B5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBBABAFFBA7335FFBF7D
      40FFC2844AFFC88D58FFAF835BFFA57A5AFFA57A58FFA17753FFC68850FFBE7C
      40FFBB7636FFB76D2AFFBCBBBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C5FFBA7230FFBD79
      3AFFBE7C3FFFC28044FFA16B3BFF955D32FF965C30FF925C31FFC17E3FFFBC77
      38FFBB7431FFB86D2AFFC5C5C5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0CFCEFFB9712FFFBE79
      37FFBE7B3BFFC37F3FFF9D622EFF91501EFF92511DFF8E5422FFC17E3DFFBD78
      37FFBD7734FFB8712FFFD1D0CFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F6F5FFB67333FFC280
      3FFFC17F40FFC58241FF9A5D27FF8D450DFF90470EFF8B4C18FFC48141FFC07E
      3DFFC17E3DFFBA7534FFE8E6E5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F3FF8F8F92FFBF7E3EFFCC8C
      4CFFC88A4DFFC88A4DFFBA7F46FFAF773FFFAE763DFFB1773EFFCE955EFFD4A2
      72FFD9AA79FFC3986AFF656B83FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1AABEFF5069A3FF9978
      5CFFC0864BFFCD9153FFCE9155FFCE9559FFD8A776FFE4BF9AFFE5C4A1FFCFB2
      95FFA5A6B4FF4C78CBFFE4E5E8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4BBC7FF87B7
      FFFFA9BEE2FFBEB7B5FFE0C7ACFFEED6BDFFECD4BBFFD7C4B1FFB2B7C6FFA8C5
      F8FF6894E3FFE5E6E8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6BC
      C7FFA7C8FFFFC8DFFFFFBED0F0FFCECED2FFC7CDD9FFBED4F9FFCEE4FFFF7FA1
      DEFFE6E7E9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BBBFC9FFB5CEFAFFE4F0FFFFDCEAFFFFDDEAFFFFEAF5FFFF85A3D4FFE9EA
      ECFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CED0D7FFB9CDF1FFF7FBFFFFFCFFFFFF89A2CBFFF3F4F4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D8DCFFC8DAF8FF97ADCFFFF6F6F7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1E1E2FFF2F3F3FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000000000000000000008001000000000000
      C003000000000000E007000000000000F00F000000000000F81F000000000000
      FC3F000000000000FE7F00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 328
    Top = 232
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM ProdDeposito'
    Left = 304
    Top = 192
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsProdDeposito
    Left = 272
    Top = 192
  end
  inherited dsPadrao: TDataSource
    Left = 336
    Top = 192
  end
  inherited cdsLookUp: TClientDataSet
    Left = 304
    Top = 160
  end
  inherited dspLookUp: TDataSetProvider
    Left = 272
    Top = 160
  end
  inherited ImgBotoes: TImageList
    Left = 296
    Top = 232
  end
  object sdsProdDeposito: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 240
    Top = 192
  end
end