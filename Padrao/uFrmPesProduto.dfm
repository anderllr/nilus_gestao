inherited FrmPesProduto: TFrmPesProduto
  Caption = 'Pesquisa de Produtos'
  ClientHeight = 515
  ClientWidth = 648
  ExplicitWidth = 664
  ExplicitHeight = 554
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 90
    Width = 648
    Height = 425
    TabOrder = 2
    ExplicitTop = 90
    ExplicitWidth = 648
    ExplicitHeight = 425
    inherited DBGrid: TCDBGrid
      Width = 644
      Height = 234
      TabStop = False
      Align = alTop
      Columns = <
        item
          Expanded = False
          FieldName = 'idProduto'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Descri'#231#227'o'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idFabricante'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descFabricante'
          Title.Caption = 'Fabricante'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codFabricante'
          Title.Caption = 'C'#243'd. Fabr.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descAplicacao'
          Title.Caption = 'Aplica'#231#227'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stProduto'
          Title.Caption = 'Status'
          Width = 90
          Visible = True
        end>
    end
    object PanSimilar: TCPanelGradient
      Left = 2
      Top = 249
      Width = 644
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      CaptionNo = 0
      HintNo = 0
      BackgroundGradientColor = 13099746
      BackgroundGradientDirection = gdVertical
      TextColor = clBlack
      GradientColor = clBlack
      RegularButtonColor = clBlack
      SelectedButtonColor = clBlack
      ButtonOptions = []
      object CLabel2: TCLabel
        Left = 14
        Top = 6
        Width = 75
        Height = 19
        Alignment = taRightJustify
        Caption = 'Similares'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object GridSimilar: TCDBGrid
      Left = 2
      Top = 280
      Width = 644
      Height = 203
      TabStop = False
      DataSource = dsProdutoSimilar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = GridSimilarDblClick
      OnKeyDown = GridSimilarKeyDown
      UtilizaOrdenar = False
      Columns = <
        item
          Expanded = False
          FieldName = 'idProdutoSimilar'
          Title.Caption = 'C'#243'digo'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descProduto'
          Title.Caption = 'Descri'#231#227'o'
          Width = 350
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 57
    Width = 648
    ExplicitTop = 57
    ExplicitWidth = 648
    inherited BtnFechar: TCBitBtn
      Left = 566
      ExplicitLeft = 566
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 648
    Height = 57
    TabOrder = 0
    ExplicitWidth = 648
    ExplicitHeight = 57
    object CLabel42: TCLabel
      Left = 33
      Top = 10
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Transparent = True
    end
    object CLabel32: TCLabel
      Left = 415
      Top = 35
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Fabricante'
      Transparent = True
    end
    object CLabel31: TCLabel
      Left = 28
      Top = 35
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fabricante'
      Transparent = True
    end
    object CLabel1: TCLabel
      Left = 338
      Top = 10
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Aplica'#231#227'o'
      Transparent = True
    end
    object DBEdescProduto: TCDBEdit
      Left = 85
      Top = 7
      Width = 244
      Height = 19
      AutoSelect = False
      AutoSize = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeftNoAlign
      BorderStyle = bsNone
      DataField = 'descProduto'
      DataSource = dsPadrao
      ParentBiDiMode = False
      TabOrder = 0
      OnEnter = DBEdescProdutoEnter
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEcodFabricante: TCDBEdit
      Left = 495
      Top = 32
      Width = 98
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'codFabricante'
      DataSource = dsPadrao
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookFabricante: TCLookUp
      Left = 146
      Top = 32
      Width = 255
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idFabricante')
      LookUpKey.Strings = (
        'idFabricante')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'Fabricante'
      ReturnField = 'descFabricante'
    end
    object DBEidFabricante: TCDBEdit
      Left = 85
      Top = 32
      Width = 55
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idFabricante'
      DataSource = dsPadrao
      TabOrder = 2
      Find = dmFind.FindFabricante
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEdescAplicacao: TCDBEdit
      Left = 389
      Top = 7
      Width = 204
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'descAplicacao'
      DataSource = dsPadrao
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmUSUpper
    end
  end
  inherited imgIcones: TImageList
    Top = 136
    Bitmap = {
      494C010102000400140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited cdsPadrao: TClientDataSet
    ProviderName = ''
    object cdsPadraodescProduto: TStringField
      FieldName = 'descProduto'
      Size = 50
    end
    object cdsPadraoidFabricante: TIntegerField
      FieldName = 'idFabricante'
    end
    object cdsPadraocodFabricante: TStringField
      FieldName = 'codFabricante'
      Size = 30
    end
    object cdsPadraodescAplicacao: TStringField
      FieldName = 'descAplicacao'
      Size = 250
    end
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 'SELECT * FROM vConsProdutos'
    AfterScroll = cdsGridAfterScroll
    object cdsGrididProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsGriddescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGrididFabricante: TIntegerField
      FieldName = 'idFabricante'
    end
    object cdsGriddescFabricante: TStringField
      FieldName = 'descFabricante'
      FixedChar = True
      Size = 50
    end
    object cdsGridcodFabricante: TStringField
      FieldName = 'codFabricante'
      FixedChar = True
      Size = 30
    end
    object cdsGriddescAplicacao: TStringField
      FieldName = 'descAplicacao'
      FixedChar = True
      Size = 250
    end
    object cdsGridstProduto: TStringField
      FieldName = 'stProduto'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM vConsProdutos'
  end
  object dsProdutoSimilar: TDataSource
    DataSet = cdsProdutoSimilar
    Left = 224
    Top = 336
  end
  object cdsProdutoSimilar: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT sim.idProdutoSimilar,  pro.descProduto FROM ProdutoSimila' +
      'r AS sim INNER JOIN Produto AS pro ON sim.idProdutoSimilar = pro' +
      '.idProduto'
    Params = <>
    ProviderName = 'dspProdutoSimilar'
    AfterOpen = cdsPadraoAfterOpen
    Left = 192
    Top = 336
    object cdsProdutoSimilaridProdutoSimilar: TIntegerField
      FieldName = 'idProdutoSimilar'
      Required = True
    end
    object cdsProdutoSimilardescProduto: TStringField
      FieldName = 'descProduto'
      Required = True
      FixedChar = True
      Size = 50
    end
  end
  object dspProdutoSimilar: TDataSetProvider
    DataSet = sdsProdutoSimilar
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 336
  end
  object sdsProdutoSimilar: TSQLDataSet
    CommandText = 
      'SELECT sim.idProdutoSimilar,  pro.descProduto FROM ProdutoSimila' +
      'r AS sim INNER JOIN Produto AS pro ON sim.idProdutoSimilar = pro' +
      '.idProduto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 128
    Top = 336
  end
end
