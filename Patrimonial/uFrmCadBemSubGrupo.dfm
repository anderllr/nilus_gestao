inherited FrmCadBemSubGrupo: TFrmCadBemSubGrupo
  Caption = 'Cadastro de Sub-Gupos de Bens'
  ClientHeight = 381
  ClientWidth = 415
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000100000002010101071C1C1C3F5656558CAEB0B0BA605F5F7E0D0D0D280202
    02140000000B000000060000000400000003050505160707071F000000020000
    000101010105181818297B7A79A3E8E0DEF4E5CDC9FAC1A29BE47C6763B5564C
    4A903632316B1D1C1C4A0D0D0D2F0404041B191818412D2B2B650404040C0000
    00020C0C0C1074747480E8E4E4E8D4A399FFC05A47FFC75D48FFD87F6DFDD68D
    7FF8C78E83EFAC827ADE8C716BC4685855A3645C5BFF675F5FAB0A0A0A1C0000
    0002070707095F5E5E63D5BAB4E7C05640FFC4614EFFC06B5BFFC26350FFC661
    4CFFC96652FFD16F5BFFD06B57FECF7866FB696A6BFFCBBEBEFF111111240000
    00020000000533313049C09289E1C05641FFCB715EFFA76A5FFF874436FFBA55
    40FFC75F49FFC86B59FFC56957FFB74D38FF696A6BFFCBBEBEFF111010290000
    0002010101074A454464CB8E81EFB9533FFFD48575FFC38174FFCBBEBEFF854D
    42FFB25543FFCC634FFFA76254FFA24735FF696A6BFFCBBEBEFF262424460000
    00010404040C6A5F5D87CD8071F8BB5E4BFFCA7B6BFFC46552FFC89085FFCBBE
    BEFF875F57FFA04532FF9F685DFF69423AFF696A6BFFCBBEBEFF222020360000
    00010C0C0C17897571AAC86E5CFDBC6453FFC46F5EFFB8533FFFBA543FFFC990
    85FFCBBEBEFF85706CFF86554CFFB99E9BFD696A6BFFCBBEBEFF141313280000
    00011A19192AA3857FC8BD5844FFBF6C5BFFC47363FFC37160FFBA5B48FFC46F
    5DFFB07E75FFCBBEBEFF91726DFF875A50FA696A6BFFCBBEBEFF171616340505
    050B3A383853BD928AE3C16A58FFC06D5DFFB95A48FFC47464FFC97F70FFC16D
    5CFFBE624FFFB55B48FFCBBEBEFFA59F9FFEB6AEADFFB4ACACFF262424594E4E
    4E5BA09F9FB5C68F83FAC26F5EFFBF6B5AFFBC6352FFBC6452FFC47565FFBF69
    58FFB85B48FFB75542FFB45644FFBEAAA8EBABA4A4C85F5B5B962D2B2B5B6464
    6461C2C1C0C7D1B4AEFEB25A49FFC47666FFB96250FFB95D4AFFC47767FFC273
    63FFBE6A59FFBD6553FFC87869FB8E8381BA413F3F734C484896262525571E1E
    1E208B89898FEBE2E1EEC29E97FDC57766FDC66F5EFEBF6856FFB3503DFFB34C
    37FFB4503CFFA9513FFFC8A29AF99E9B9BB031303046514D4D82302E2E6F0707
    0705292929218988887DCFCCCBC6A0908DA6A58A85AEB8918ACCC58F84E4BF7A
    6CF8B88379FED5BDB8FEE3DEDCE69696968C2121211D2A272733434040680000
    0000000000001E1E1E15444444351A1A1A14191919142E2D2D264F4B4B47A5A0
    9FA4D6D4D3D1B9B4B3BA8A88887E2121211A03030302050505050E0D0D0E0000
    0000000000000101010103030301000000000000000000000000070707046767
    67518C8C8C71454545352C2C2C1D030303020000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000C0000000CE070000}
  ExplicitWidth = 431
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 346
    Width = 415
    ExplicitTop = 391
    ExplicitWidth = 497
  end
  inherited PagAbas: TCPageControl
    Width = 415
    Height = 346
    ExplicitWidth = 592
    ExplicitHeight = 346
    inherited TabAbas: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 584
      ExplicitHeight = 317
      inherited CGroupBox2: TCGroupBox
        Left = 0
        Top = 79
        Width = 403
        Height = 230
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 79
        ExplicitWidth = 403
        ExplicitHeight = 230
        inherited DBGrid: TCDBGrid
          Top = 11
          Width = 383
          Height = 208
          TabStop = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idBemSubGrupo'
              Title.Caption = 'C'#243'digo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descBemSubGrupo'
              Title.Caption = 'Descri'#231#227'o'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stBemSubGrupo'
              Title.Caption = 'Status'
              Width = 100
              Visible = True
            end>
        end
      end
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 3
        Width = 400
        Height = 70
        TabOrder = 0
        object CLabel60: TCLabel
          Left = 34
          Top = 19
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
        end
        object CLabel58: TCLabel
          Left = 21
          Top = 41
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel2: TCLabel
          Left = 226
          Top = 19
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object DBEidBemSubGrupo: TCDBEdit
          Left = 73
          Top = 16
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idBemSubGrupo'
          DataSource = dsPadrao
          TabOrder = 0
          OnExit = DBEidBemSubGrupoExit
          Find = FindBemSubGrupo
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescBemSubGrupo: TCDBEdit
          Left = 73
          Top = 38
          Width = 308
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descBemSubGrupo'
          DataSource = dsPadrao
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEstBemSubGrupo: TCDBEdit
          Left = 263
          Top = 16
          Width = 118
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stBemSubGrupo'
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
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 350
    Width = 415
    ExplicitTop = 350
    ExplicitWidth = 592
    inherited BtnFechar: TCBitBtn
      Left = 332
      ExplicitLeft = 332
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 251
      Visible = False
      ExplicitLeft = 251
    end
  end
  inherited imgIcones: TImageList
    Left = 416
    Top = 32
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FEFEFEFFFDFDFDFFF8F8F8FFC6C6
      C6FFA2A2A1FFC3C5C5FFB0AFAFFFD9D9D9FFEBEBEBFFF4F4F4FFF9F9F9FFFBFB
      FBFFFCFCFCFFE9E9E9FFE0E0E0FFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFFAFAFAFFD9D9D9FFAAA9
      A9FFE8E1DFFFE5CDCAFFC7ABA5FFA29390FF9F9998FFAAA8A8FFBDBDBDFFD2D2
      D2FFE4E4E4FFC4C4C4FFABABABFFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFEFEFEFFFB9B9B9FFEAE6
      E6FFD4A399FFC05A47FFC75D48FFD8806EFFD79082FFCA958AFFB6928BFFA691
      8DFF9E9492FF645C5BFF999393FFE4E4E4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFF6F6F6FFC0C0C0FFD8C0
      BBFFC05640FFC4614EFFC06B5BFFC26350FFC6614CFFC96652FFD16F5BFFD06B
      57FFCF7A68FF696A6BFFCBBEBEFFDDDDDDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFFAFAFAFFC4C4C3FFC79E
      96FFC05641FFCB715EFFA76A5FFF874436FFBA5540FFC75F49FFC86B59FFC569
      57FFB74D38FF696A6BFFCBBEBEFFD8D8D8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFFF8F8F8FFB8B6B5FFCE95
      88FFB9533FFFD48575FFC38174FFCBBEBEFF854D42FFB25543FFCC634FFFA762
      54FFA24735FF696A6BFFCBBEBEFFC3C2C2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF3F3F3FFB0AAA9FFCE83
      74FFBB5E4BFFCA7B6BFFC46552FFC89085FFCBBEBEFF875F57FFA04532FF9F68
      5DFF69423AFF696A6BFFCBBEBEFFD0CFCFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFE9E9E9FFB0A3A0FFC86F
      5DFFBC6453FFC46F5EFFB8533FFFBA543FFFC99085FFCBBEBEFF85706CFF8655
      4CFFB99E9BFF696A6BFFCBBEBEFFDAD9D9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFD9D9D9FFB69F9AFFBD58
      44FFBF6C5BFFC47363FFC37160FFBA5B48FFC46F5DFFB07E75FFCBBEBEFF9172
      6DFF895D53FF696A6BFFCBBEBEFFCFCFCFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4FFBEBEBEFFC49D96FFC16A
      58FFC06D5DFFB95A48FFC47464FFC97F70FFC16D5CFFBE624FFFB55B48FFCBBE
      BEFFA59F9FFFB6AEADFFB4ACACFFB3B2B2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBFFFBBBABAFFC79185FFC26F
      5EFFBF6B5AFFBC6352FFBC6452FFC47565FFBF6958FFB85B48FFB75542FFB456
      44FFC3B0AEFFBDB7B7FFA09E9EFFB4B3B3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C4FFCFCECDFFD1B4AEFFB25A
      49FFC47666FFB96250FFB95D4AFFC47767FFC27363FFBE6A59FFBD6553FFC87A
      6BFFACA4A3FFA9A8A8FF959393FFB4B4B4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E2E2FFBDBCBCFFECE3E3FFC29E
      97FFC57867FFC66F5EFFBF6856FFB3503DFFB34C37FFB4503CFFA9513FFFC9A4
      9CFFBCB9B9FFC6C6C6FFA6A4A4FFA4A4A4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFAFFE3E3E3FFC5C4C4FFD9D7
      D6FFC1B6B4FFC1AFABFFC6A7A1FFCB9A91FFC07D70FFB88379FFD5BDB8FFE5E1
      DFFFC5C5C5FFE5E5E5FFD4D3D3FFB2B1B1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFECECECFFD8D8
      D8FFEDEDEDFFECECECFFDFDFDFFFCDCCCCFFC5C1C1FFDDDBDAFFCBC8C7FFC5C4
      C4FFE8E8E8FFFDFDFDFFFAFAFAFFF1F1F1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFFEFEFEFFFEFE
      FEFF000000FF000000FF000000FFFBFBFBFFCECECEFFCCCCCCFFD8D8D8FFE7E7
      E7FFFDFDFDFF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      C000000000000000CE07000000000000}
  end
  inherited Acao: TActionList
    Left = 480
    Top = 32
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM BemSubGrupo'
    Left = 480
    Top = 96
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsBemSubGrupo
    Left = 448
    Top = 96
  end
  inherited dsPadrao: TDataSource
    Left = 512
    Top = 96
  end
  inherited cdsLookUp: TClientDataSet
    Left = 480
    Top = 64
  end
  inherited dspLookUp: TDataSetProvider
    Left = 448
    Top = 64
  end
  inherited ImgBotoes: TImageList
    Left = 448
    Top = 32
  end
  object sdsBemSubGrupo: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM BemGrupo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 416
    Top = 96
  end
  object cdsTipoDocSerie: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TipoDocSerie'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 512
    Top = 64
  end
  object FindBemSubGrupo: TCFind
    SelectClause.Strings = (
      'SELECT idBemSubGrupo, descBemSubGrupo FROM BemSubGrupo')
    JoinClause.Strings = (
      'WHERE stBemSubGrupo = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descBemSubGrupo')
    FindField = 'descBemSubGrupo'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBemSubGrupo'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 416
    Top = 64
  end
end