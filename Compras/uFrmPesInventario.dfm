inherited FrmPesInventario: TFrmPesInventario
  Caption = 'Pesquisa de Inventario/Contagem'
  ClientHeight = 463
  ClientWidth = 736
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
  ExplicitWidth = 752
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited GrupoGrid: TCGroupBox
    Top = 175
    Width = 736
    Height = 288
    TabOrder = 2
    ExplicitTop = 175
    ExplicitWidth = 736
    ExplicitHeight = 288
    inherited DBGrid: TCDBGrid
      Width = 732
      Height = 271
      Columns = <
        item
          Expanded = False
          FieldName = 'idEmpresa'
          Title.Caption = 'Emp.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idCadEmpresa'
          Title.Caption = 'Fil.'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idInventario'
          Title.Caption = 'Inv.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtInventario'
          Title.Caption = 'Data'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descInventario'
          Title.Caption = 'Descri'#231#227'o'
          Width = 380
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stInventario'
          Title.Caption = 'Status'
          Width = 90
          Visible = True
        end>
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 140
    Width = 736
    Height = 35
    ExplicitTop = 140
    ExplicitWidth = 736
    ExplicitHeight = 35
    inherited BtnExecutar: TCBitBtn
      Tag = 1
      Left = 7
      Top = 5
      ExplicitLeft = 7
      ExplicitTop = 5
    end
    inherited BtnFechar: TCBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited PanTopo: TCPanelGradient
    Width = 736
    Height = 140
    TabOrder = 0
    ExplicitWidth = 736
    ExplicitHeight = 140
    object Bevel2: TBevel [0]
      Left = 1
      Top = 93
      Width = 734
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitTop = 65
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
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 540
        Top = 6
        Width = 116
        Height = 17
        Caption = 'Consolida Empresa?'
        Color = 14212576
        DataField = 'consolidaemp'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object PanFornecedor: TCPanelGradient
      Left = 1
      Top = 33
      Width = 734
      Height = 60
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
        Left = -1
        Top = 61
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fornecedor'
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
      object CLabel1: TCLabel
        Left = 15
        Top = 13
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produto'
        Transparent = True
      end
      object CLabel4: TCLabel
        Left = 539
        Top = 38
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
      object CLabel8: TCLabel
        Left = 405
        Top = 38
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#250'mero de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CLabel2: TCLabel
        Left = 14
        Top = 38
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dep'#243'sito'
      end
      object LookProdMedida: TCLookUp
        Left = 403
        Top = 10
        Width = 45
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idProduto')
        LookUpKey.Strings = (
          'idProduto')
        AlternateSQL.Strings = (
          
            'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
            'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
            'uto = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'Produto'
        ReturnField = 'descAbreviada'
      end
      object LookProduto: TCLookUp
        Left = 118
        Top = 10
        Width = 279
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 1
        Key.Strings = (
          'idProduto')
        LookUpKey.Strings = (
          'idProduto')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'Produto'
        ReturnField = 'descProduto'
      end
      object DBEidProduto: TCDBEdit
        Left = 59
        Top = 10
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idProduto'
        DataSource = dsPadrao
        TabOrder = 0
        OnKeyDown = DBEidProdutoKeyDown
        Find = dmFind.FindProduto
        AcaoCad = frmPrincipal.actCadCidade
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidFim: TCDBEdit
        Left = 561
        Top = 35
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idFim'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEidIni: TCDBEdit
        Left = 463
        Top = 35
        Width = 70
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idIni'
        DataSource = dsPadrao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 460
        Top = 12
        Width = 111
        Height = 17
        Caption = 'Consolida Filiais?'
        Color = 12306636
        DataField = 'consolidafilial'
        DataSource = dsPadrao
        ParentColor = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object LookProdDeposito: TCLookUp
        Left = 118
        Top = 35
        Width = 279
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idProdDeposito')
        LookUpKey.Strings = (
          'idProdDeposito')
        AlternateSQL.Strings = (
          
            'select descProdDeposito from ProdDeposito where  idProdDeposito ' +
            '= ?')
        ClientDataSet = cdsLookUp
        DataSource = dsPadrao
        ValidaCampoObrigatorio = False
        CampoObrigatorio = True
        LookUpTable = 'ProdDeposito'
        ReturnField = 'descDeposito'
      end
      object DBEidProdDeposito: TCDBEdit
        Left = 59
        Top = 35
        Width = 53
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idProdDeposito'
        DataSource = dsPadrao
        TabOrder = 4
        Find = dmFind.FindProdDeposito
        AcaoCad = frmPrincipal.actCadProdDeposito
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object PanRomaneio: TCPanelGradient
      Left = 1
      Top = 97
      Width = 734
      Height = 78
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
      object CLabel5: TCLabel
        Left = 15
        Top = 10
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
        Left = 135
        Top = 10
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
      object DBEdtInicial: TCDBEdit
        Left = 59
        Top = 7
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
        TabOrder = 0
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtFinal: TCDBEdit
        Left = 157
        Top = 7
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
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmDate
      end
      object CGroupBox1: TCGroupBox
        Left = 233
        Top = 2
        Width = 395
        Height = 34
        TabOrder = 2
        object DBCKstFechado: TCDBCheckBox
          Left = 197
          Top = 11
          Width = 73
          Height = 17
          Caption = 'Fechado'
          DataField = 'stFechado'
          DataSource = dsPadrao
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCKstContado: TCDBCheckBox
          Left = 105
          Top = 11
          Width = 72
          Height = 17
          Caption = 'Contado'
          DataField = 'stContado'
          DataSource = dsPadrao
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCKstAtivo: TCDBCheckBox
          Left = 21
          Top = 11
          Width = 48
          Height = 17
          Caption = 'Ativo'
          DataField = 'stAtivo'
          DataSource = dsPadrao
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCKstCancelado: TCDBCheckBox
          Left = 299
          Top = 11
          Width = 73
          Height = 17
          Caption = 'Cancelado'
          DataField = 'stCancelado'
          DataSource = dsPadrao
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  inherited imgIcones: TImageList
    Left = 384
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
    Left = 296
    Top = 272
    inherited actPesquisar: TAction
      Tag = 1
    end
  end
  inherited dspLookUp: TDataSetProvider
    Left = 104
    Top = 248
  end
  inherited cdsLookUp: TClientDataSet
    Left = 168
    Top = 248
  end
  inherited dspPadrao: TDataSetProvider
    Left = 208
    Top = 400
  end
  inherited cdsPadrao: TClientDataSet
    AfterInsert = cdsPadraoAfterInsert
    Left = 280
    Top = 400
    object cdsPadraoconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsPadraoconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object cdsPadraodtInicial: TDateField
      FieldName = 'dtInicial'
    end
    object cdsPadraodtFinal: TDateField
      FieldName = 'dtFinal'
    end
    object cdsPadraostAtivo: TStringField
      FieldName = 'stAtivo'
      Size = 1
    end
    object cdsPadraoidIni: TIntegerField
      FieldName = 'idIni'
    end
    object cdsPadraoidFim: TIntegerField
      FieldName = 'idFim'
    end
    object cdsPadraostContado: TStringField
      FieldName = 'stContado'
      Size = 1
    end
    object cdsPadraostFechado: TStringField
      FieldName = 'stFechado'
      Size = 1
    end
    object cdsPadraostCancelado: TStringField
      FieldName = 'stCancelado'
      Size = 1
    end
    object cdsPadraoidProdDeposito: TIntegerField
      FieldName = 'idProdDeposito'
    end
  end
  inherited dsPadrao: TDataSource
    Left = 352
    Top = 400
  end
  inherited cdsGrid: TClientDataSet
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, idInventario, dtInventario, desc' +
      'Inventario, stInventario FROM Inventario WHERE 1=2'
    Left = 280
    Top = 336
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGrididInventario: TIntegerField
      FieldName = 'idInventario'
      Required = True
    end
    object cdsGriddescInventario: TStringField
      FieldName = 'descInventario'
      Required = True
      Size = 250
    end
    object cdsGridstInventario: TStringField
      FieldName = 'stInventario'
      Required = True
      Size = 15
    end
    object cdsGriddtInventario: TSQLTimeStampField
      FieldName = 'dtInventario'
      Required = True
    end
  end
  inherited dsGrid: TDataSource
    Left = 352
    Top = 336
  end
  inherited dspGrid: TDataSetProvider
    Left = 208
    Top = 336
  end
  inherited sdsPadrao: TSQLDataSet
    Left = 136
    Top = 400
  end
  inherited sdsGrid: TSQLDataSet
    CommandText = 
      'SELECT idEmpresa, idCadEmpresa, idInventario, dtInventario, desc' +
      'Inventario, stInventario FROM Inventario WHERE 1=2'
    Left = 136
    Top = 336
  end
  inherited dsEmpresa: TDataSource
    Left = 568
    Top = 8
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, descAbreviada, idCnpjCp' +
        'f  FROM vCadFornecedorContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadFornecedor')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idFornecedor'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 40
    Top = 312
  end
end
