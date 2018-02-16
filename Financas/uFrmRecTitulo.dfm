inherited FrmRecTitulo: TFrmRecTitulo
  Caption = 'Recebimento de t'#237'tulos'
  ClientHeight = 613
  ClientWidth = 1162
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00000000000F0000003400000052000000620000006F0101017B050605800506
    0580010201790000006C0000005D0000004A0000002900000000000000000000
    0000000000380000008F000000B1222622D1616B61EA8F9D90F9A6B4A6FFA6B5
    A6FF919F91F9636E64EA252925D1000000AC000000770000001E000000000000
    00000000000B080A085C5A685AE0AFC4AFFFD2E5D2FFDAEADAFFDAEADAFFDBEA
    DBFFD9EBDAFFD3E6D3FFB3C7B3FF606E60E00A0C0A5200000000000000000000
    0000161F16205D735CD1ADCAACFFBFDABEFFBED7BBFFBCD4B8FFBBD4B8FFBBD4
    B8FFBBD4B8FFBED7BBFFBFDABEFFB0CEB0FF647B64D6202B2025000000000000
    0000436249B980B08DFF97B893FF90A896FF90A4A0FF90A3A6FF92A5AAFF96A4
    ACFF92A2A6FF8EA3A0FF8EA497FF91AE91FF86AE86FF4A674AC0000000002A3F
    2859548560FF65A990FF657F89FF6F7CA2FF7381A9FF7886B1FF7088B2FF5C94
    ADFF698FB6FF717EA9FF6C7BA2FF616D89FF637E66FF5B8557FF2A402A623551
    35AE619560FF55795EFF61729DFF7284AFFF7E94BEFF7A8FBCFF7B8D9DFF6391
    94FF5C8B9BFF7283B2FF7081ABFF5D709FFF486D7CFF519778FF37563BB64060
    3EE15D9D72FF4E7E69FF65749AFF7F97C3FF93B2DAFF7991B7FF5C9CA2FF599F
    A2FF697D89FF7A91BFFF778CB6FF5B6C99FF3F5C64FF57966EFF426545E34365
    43F0619462FF5C8F5EFF506B73FF7B92C0FF97B5DAFF869FC9FF5B758FFF3A7B
    87FF6B85A6FF8CA7D2FF7283B0FF4A5C71FF48826DFF5C9B72FF466742F03F5E
    3DE15C9469FF52A289FF528E6AFF4D6261FF788EB5FF94B3D9FF8DA7D0FF8A9F
    C8FF8CA7D1FF768CB9FF4B677BFF527B53FF619865FF5E9262FF406140E3344E
    33AE588C61FF5A9870FF62955FFF5B8C56FF445D4EFF657A99FF7E9BC2FF819B
    C3FF6E81A9FF54696EFF4C8767FF559E7BFF60905EFF5B8B5BFF355135B6283C
    28594E754DFF5E8A5CFF5A7F5EFF5B835DFF5F905CFF51604FFF766A76FF5257
    5EFF55765CFF639261FF669665FF629569FF629362FF4D764DFF283D29620000
    0000324F31B95F7A61FF848DA4FF8996B0FF7F958FFF828782FFA29692FF8498
    7EFF87AF87FF87AC87FF87AB87FF8CB08CFF709770FF314E31BF000000000000
    0000213521214C644BD3B0BCB7FFC5CEDCFFBBC3D1FFB2BEBFFFAFC3B1FFB8CE
    B8FFB8CDB8FFB9CEB9FFC0D4C0FFB8CCB8FF516951D821352125000000000000
    0000000000002032201C5D6E5CAFC4CDC2FFEAF1E9FFF4FAF2FFF3F9F3FFF2F8
    F2FFF3F9F3FFECF3ECFFC8D2C8FF607160B41F321F2000000000000000000000
    00000000000000000000000000002F412F46677668A096A196D6ADB7ADF0ADB7
    ADF097A297D8697769A23042304A000000000000000000000000000000008003
    0000800100008003000080010000800100000000000000000000000000000000
    00000000000000000000000000008001000080010000C0030000F00F0000}
  ExplicitWidth = 1178
  ExplicitHeight = 652
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 583
    Width = 1162
    Visible = False
    ExplicitLeft = -1
    ExplicitTop = 412
    ExplicitWidth = 675
  end
  object Bevel2: TBevel [1]
    Left = 0
    Top = 0
    Width = 1162
    Height = 4
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
    ExplicitLeft = -1
    ExplicitWidth = 775
  end
  object Bevel6: TBevel [2]
    Left = 0
    Top = 138
    Width = 1162
    Height = 4
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
    ExplicitTop = 69
    ExplicitWidth = 744
  end
  inherited PagAbas: TCPageControl
    Left = 97
    Top = 142
    Width = 1065
    Height = 441
    TabStop = False
    OnChange = PagAbasChange
    ExplicitLeft = 97
    ExplicitTop = 142
    ExplicitWidth = 1065
    ExplicitHeight = 441
    inherited TabAbas: TTabSheet
      Caption = 'Sele'#231#227'o dos Registros'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1057
      ExplicitHeight = 412
      object DBGrid: TCDBGrid
        Left = 0
        Top = 0
        Width = 1057
        Height = 412
        Align = alClient
        DataSource = dsGrid
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGridCellClick
        OnColEnter = DBGridColEnter
        OnDrawColumnCell = DBGridDrawColumnCell
        OnDblClick = DBGridDblClick
        UtilizaOrdenar = False
        Columns = <
          item
            Expanded = False
            FieldName = 'sel'
            Title.Caption = ' ?'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idEmpresa'
            Title.Caption = 'Emp.'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCadEmpresa'
            Title.Caption = 'Fil.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idDocSerie'
            Title.Caption = 'Serie'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nrTitulo'
            Title.Caption = 'Nr.Titulo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idParcela'
            Title.Caption = 'Parc.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descAbreviada'
            Title.Caption = 'Cliente / Fornecedor'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Indice'
            Title.Caption = #205'nd.'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlParcela'
            Title.Caption = 'Valor'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlPago'
            Title.Caption = 'Vlr. Recebido'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtVencimento'
            Title.Caption = 'Vencimento'
            Width = 70
            Visible = True
          end>
      end
    end
    object TabCaixa: TTabSheet
      Caption = 'Caixa'
      ImageIndex = 4
      object CLabel43: TCLabel
        Left = 38
        Top = 80
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o'
      end
      object CLabel35: TCLabel
        Left = 8
        Top = 58
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mov. Financeira'
      end
      object CLabel39: TCLabel
        Left = 25
        Top = 36
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta Caixa'
      end
      object CLabel40: TCLabel
        Left = 55
        Top = 14
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEidMovCaixa: TCDBEdit
        Left = 535
        Top = 143
        Width = 63
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovCaixa'
        DataSource = dsMovCaixa
        TabOrder = 9
        Visible = False
        Find = FindCaixa
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBMdescMovCaixa: TCDBMemo
        Left = 91
        Top = 77
        Width = 428
        Height = 48
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'descMovCaixa'
        DataSource = dsMovCaixa
        ScrollBars = ssVertical
        TabOrder = 8
        OnExit = DBMdescMovCaixaExit
        KeyMemo = kmmUSUpper
      end
      object DBEidMovFinanceira: TCDBEdit
        Left = 90
        Top = 55
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovFinanceira'
        DataSource = dsMovCaixa
        TabOrder = 5
        Find = FindMovFinanceira
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookMovFinanceira: TCLookUp
        Left = 144
        Top = 55
        Width = 247
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 6
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        AlternateSQL.Strings = (
          
            'SELECT descMovFinanceira FROM MovFinanceira WHERE idMovOrigem = ' +
            '3 AND idTpMovFinanceira = 6  AND sinal = '#39'+'#39' AND idMovFinanceira' +
            ' = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovCaixa
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'descMovFinanceira'
      end
      object LookSinal: TCLookUp
        Left = 397
        Top = 54
        Width = 19
        Height = 21
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        AlternateSQL.Strings = (
          
            'SELECT sinal FROM MovFinanceira WHERE idMovOrigem = 3 AND idTpMo' +
            'vFinanceira = 6  AND sinal = '#39'+'#39' AND idMovFinanceira = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovCaixa
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'descMovFinanceira'
      end
      object CBitBtn3: TCBitBtn
        Left = 423
        Top = 55
        Width = 96
        Height = 19
        Caption = '&Movimenta'#231#227'o'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FBFB
          FBFFD6D6D6FFC8C8C8FFCCCCCCFFD2D2D2FFA5A7A9FF64AFB8FF68B9C4FF97A0
          A3FFD0D0D0FFCFCFCFFFC9C9C9FFD3D3D3FFF7F7F7FFFF00FF00FF00FF00F6F6
          F6FFB9B9B9FFBABABAFFA8A8A8FF4F959EFF9AFBFFFFEDFFFFFFF3FFFFFFABFF
          FFFF4DA1ABFFA1A1A1FFBBBBBBFFB4B4B4FFEFEFEFFFFF00FF00FF00FF00FF00
          FF00FDFDFDFF8AAAAEFF70D9E5FFD4FFFFFFEAFFFFFFDCFFFFFFDBFFFFFFE8FF
          FFFFDDFFFFFF75E2EDFF7CA5AAFFF6F6F6FFFF00FF00FF00FF00FF00FF00D2E8
          EBFF42CFE0FF8AFFFFFFCCFFFFFFE9F0E9FFDAF1F2FFE8E9DFFFEEE5D6FFD7F5
          F7FFEAEDE4FFD2FFFFFF9CFFFFFF45D6E6FFC0DFE4FFFF00FF00FF00FF0084E2
          EFFF5AFFFFFF73FAFFFF8AF2FFFFD6D4BFFFFFCEA1FFFED2ABFFFED2AAFFFED1
          A6FFE3D2B3FF96F0FFFF7EF8FFFF64FFFFFF67E0F0FFFF00FF00FF00FF0086DA
          E6FF2BF5FFFF72C3B5FFD99C46FFE7AF5BFFDCBA81FFADD9CEFFACDDD3FFD5C1
          91FFECB360FFE0A24DFF89BBA2FF34F7FFFF68D5E3FFFF00FF00FF00FF0087D9
          E5FF2AECFFFF34D5E7FFD39822FFD39D29FF48DAECFF44F2FFFF47F2FFFF47E3
          FFFFC7AA52FFE5971CFF42CDDCFF20EEFFFF66D3E3FFFF00FF00FF00FF008EDA
          E5FFA3F4FFFFD9D4AEFFFFCB61FFB8C691FF23E3FFFF22DFF5FF30E1F5FF16EC
          FFFF81B688FFFFA500FFCE9217FF24D1E5FF60D4E7FFFF00FF00FF00FF008FD9
          E5FFC4FAFFFFD7EBE6FFFFEDB9FFFDEEC9FFACF1FFFF48E1F5FF09D8F4FF00CF
          FBFFB0AD3BFFFFA700FF47A588FF0AD7F4FF64D2E3FFFF00FF00FF00FF008ED9
          E4FFDDFFFFFFE3F5F2FFFFF2CFFFFFF4CDFFFAEFDDFFE0F5F8FFA4EDFCFF9DC8
          AFFFFFCB34FFFFC932FF97CDBAFFACFAFFFF85D7E3FFFF00FF00FF00FF008AD8
          E3FFFDFFFFFFFFFFFFFFF0F5F3FFFAF7E9FFFFFAE2FFFFF7E4FFFFF9E6FFFFFF
          E8FFFFFCF1FFF6F9FBFFFFFFFFFFFFFFFFFF83D5E2FFFF00FF00FF00FF00E5F5
          F8FF76D1E0FFC9F3FAFFFFFFFFFFFFFFF9FFFCFAF5FFFFFBF5FFFFFCF4FFFAFB
          F8FFFFFEFCFFFFFFFFFFDCFBFFFF76D3E1FFCEEDF2FFFF00FF00FF00FF00FF00
          FF00FF00FF00B8E5ECFF82D6E4FFF8FFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFF
          FFFFFFFFFFFF8BDCE7FF9BDCE6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0095DBE5FF95DEE9FFFFFFFFFFFFFFFFFFA6E4
          EEFF8ED8E3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0089D6E2FF83D4E1FFFBFD
          FDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 7
        TabStop = False
      end
      object CBitBtn1: TCBitBtn
        Left = 423
        Top = 33
        Width = 96
        Height = 19
        Caption = '&Conta Caixa'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F8F8F8FFF4F6
          F6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00EBEBEAFFF8F9F8FFFF00FF00F4F4F4FFF0F0
          EFFFB9B9B8FFEBEBE9FFF0EFEEFFF0F0EEFFEEEEEEFFE2E2E2FFE9E9E9FFF9F8
          F8FFF1F1F0FFE1E0DFFFF6F5F4FFE3E2E1FFFAF9F8FFFF00FF00FBFBFBFFC3BB
          B6FFC4BEBBFFC8C4BEFFCDC7C5FFCBC7C5FFCBC6C1FFCDC5C4FFCCC8C3FFCDC7
          C7FFCDC8C3FFCCC9C5FFCDCAC6FFD3C9C7FFD0CBC8FFFF00FF00FBFBFBFFC9C3
          C0FFB96A1AFF80350BFFAF6115FFE69C39FFE79E3BFFEED370FFFEFDF7FFF2F7
          CAFFCA7B22FFA25511FFAA5C14FFBB701BFFD0CCC7FFFF00FF00FBFBFBFFC8C3
          C0FFD08125FF934012FF9E4C11FFD98B28FFECB950FFF0EC90FFEFF7BBFFECB6
          4FFFAC5915FF9E4C13FFAC5B15FFBC6A17FFD2CDCAFFFF00FF00FCFCFCFFC9C5
          C3FFCD791AFFB05913FFA04911FFAF5714FFE7AB40FFEDDF7AFFE9B94CFFDE92
          25FFB86314FF953F0EFFA95213FFB96616FFD5D0CDFFFF00FF00FDFCFCFFCEC7
          C5FFBF691AFFCD7619FFC46E17FFAE5214FFD98522FFEAAE3EFFDE8F22FFD07A
          17FFC26A17FFA74A13FFBC6617FFAD5315FFD3CFCAFFFF00FF00FDFDFDFFD3CD
          C7FFC76C16FFE0861FFFE29022FFD6801AFFC46717FFE29123FFE39121FFCA70
          16FFBD5D15FFAE4F14FFA84A15FFD8821EFFD4D0CBFFFF00FF00FDFDFDFFD3CC
          C9FFB95916FFE59C27FFE59722FFE1901DFFCA6D15FFCE7318FFD17617FFBA59
          15FFA84311FF9B3812FF912C10FFA54313FFD7D1CCFFFF00FF00FF00FF00D5CE
          CCFFBF5E15FFD77F19FFE8AA38FFE59E2AFFC76919FFC16015FFBC5A16FFA43C
          11FF942B11FF861E10FF791A0EFF9F3A15FFDAD4D0FFFF00FF00FF00FF00D4CE
          CFFFC38F68FFCFA26BFFD6AE73FFD4AC72FFC18E6BFFC4936BFFBA8865FFAE7A
          67FFA66F65FF9A6863FF9D6A61FF9C6B62FFDBD7D2FFFF00FF00FF00FF00E3E1
          DFFFEAE5E5FFEBEAE8FFEEECECFFEDECEBFFEDECEBFFEEECECFFEDECECFFEEED
          EDFFEDEDEDFFEEEDECFFEEEDECFFEDECEAFFE7E5E3FFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 3
        TabStop = False
      end
      object LookCaixa: TCLookUp
        Left = 144
        Top = 33
        Width = 272
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Key.Strings = (
          'idCaixa')
        LookUpKey.Strings = (
          'idCaixa')
        AlternateSQL.Strings = (
          
            'SELECT descCaixa FROM Caixa WHERE idEmpresa = [DBEidEmpresa] AND' +
            ' idCaixa = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovCaixa
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'Caixa'
        ReturnField = 'descCaixa'
      end
      object DBEidCaixa: TCDBEdit
        Left = 90
        Top = 33
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idCaixa'
        DataSource = dsMovCaixa
        TabOrder = 1
        Find = FindCaixa
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBEvlMovCaixa: TCDBEdit
        Left = 90
        Top = 11
        Width = 94
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'vlMovCaixa'
        DataSource = dsMovCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = DBEvlMovCaixaExit
        DecimalControl = True
        KeyMode = kmNormal
      end
    end
    object TabBanco: TTabSheet
      Caption = 'Banco'
      ImageIndex = 6
      object CLabel47: TCLabel
        Left = 36
        Top = 79
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o'
      end
      object CLabel46: TCLabel
        Left = 6
        Top = 60
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mov. Financeira'
      end
      object CLabel48: TCLabel
        Left = 53
        Top = 38
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta'
      end
      object CLabel44: TCLabel
        Left = 325
        Top = 16
        Width = 108
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data de Compensa'#231#227'o'
      end
      object CLabel45: TCLabel
        Left = 53
        Top = 16
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEidMovConta: TCDBEdit
        Left = 535
        Top = 129
        Width = 63
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovConta'
        DataSource = dsMovConta
        TabOrder = 11
        Visible = False
        Find = FindCaixa
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBMdescMovConta: TCDBMemo
        Left = 88
        Top = 79
        Width = 431
        Height = 50
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'descMovConta'
        DataSource = dsMovConta
        ScrollBars = ssVertical
        TabOrder = 10
        OnExit = DBMdescMovCaixaExit
        KeyMemo = kmmUSUpper
      end
      object DBEidMovFinanceiraC: TCDBEdit
        Left = 88
        Top = 57
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovFinanceira'
        DataSource = dsMovConta
        TabOrder = 7
        Find = FindMovFinanceiraC
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookMovFinanceiraBCO: TCLookUp
        Left = 142
        Top = 57
        Width = 250
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 8
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        AlternateSQL.Strings = (
          
            'SELECT descMovFinanceira FROM MovFinanceira WHERE idMovOrigem = ' +
            '4 AND idTpMovFinanceira IN (7, 8) AND sinal = '#39'+'#39' AND idMovFinan' +
            'ceira = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovConta
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'descMovFinanceira'
      end
      object DBEidConta: TCDBEdit
        Left = 88
        Top = 35
        Width = 48
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idConta'
        DataSource = dsMovConta
        TabOrder = 2
        Find = FindConta
        DecimalControl = True
        KeyMode = kmNormal
      end
      object LookAgencia: TCLookUp
        Left = 142
        Top = 35
        Width = 52
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
        Key.Strings = (
          'idConta')
        LookUpKey.Strings = (
          'idConta')
        AlternateSQL.Strings = (
          
            'SELECT idAgencia FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
            'D idConta = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovConta
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'idAgencia'
      end
      object LookContaCorrente: TCLookUp
        Left = 200
        Top = 35
        Width = 81
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 4
        Key.Strings = (
          'idConta')
        LookUpKey.Strings = (
          'idConta')
        AlternateSQL.Strings = (
          
            'SELECT idContaCorrente FROM vConta WHERE idEmpresa = [DBEidEmpre' +
            'sa] AND idConta = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovConta
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'idContaCorrente'
      end
      object LookdescConta: TCLookUp
        Left = 287
        Top = 35
        Width = 232
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 5
        Key.Strings = (
          'idConta')
        LookUpKey.Strings = (
          'idConta')
        AlternateSQL.Strings = (
          
            'SELECT descConta FROM vConta WHERE idEmpresa = [DBEidEmpresa] AN' +
            'D idConta = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovConta
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vConta'
        ReturnField = 'descConta'
      end
      object DBEdtCompensacao: TCDBEdit
        Left = 439
        Top = 13
        Width = 80
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtCompensacao'
        DataSource = dsMovConta
        MaxLength = 10
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEvlMovConta: TCDBEdit
        Left = 88
        Top = 13
        Width = 94
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'vlMovConta'
        DataSource = dsMovConta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = DBEvlMovContaExit
        DecimalControl = True
        KeyMode = kmNormal
      end
      object CLookUp2: TCLookUp
        Left = 398
        Top = 57
        Width = 19
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 9
        Key.Strings = (
          'idMovFinanceira')
        LookUpKey.Strings = (
          'idMovFinanceira')
        AlternateSQL.Strings = (
          
            'SELECT sinal FROM MovFinanceira WHERE idMovOrigem = 4 AND idTpMo' +
            'vFinanceira IN (7, 8) AND sinal = '#39'+'#39' AND idMovFinanceira = ?')
        ClientDataSet = cdsLookUp
        DataSource = dsMovConta
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'MovFinanceira'
        ReturnField = 'descMovFinanceira'
      end
      object CBitBtn2: TCBitBtn
        Left = 423
        Top = 56
        Width = 96
        Height = 19
        Caption = '&Movimenta'#231#227'o'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FBFB
          FBFFD6D6D6FFC8C8C8FFCCCCCCFFD2D2D2FFA5A7A9FF64AFB8FF68B9C4FF97A0
          A3FFD0D0D0FFCFCFCFFFC9C9C9FFD3D3D3FFF7F7F7FFFF00FF00FF00FF00F6F6
          F6FFB9B9B9FFBABABAFFA8A8A8FF4F959EFF9AFBFFFFEDFFFFFFF3FFFFFFABFF
          FFFF4DA1ABFFA1A1A1FFBBBBBBFFB4B4B4FFEFEFEFFFFF00FF00FF00FF00FF00
          FF00FDFDFDFF8AAAAEFF70D9E5FFD4FFFFFFEAFFFFFFDCFFFFFFDBFFFFFFE8FF
          FFFFDDFFFFFF75E2EDFF7CA5AAFFF6F6F6FFFF00FF00FF00FF00FF00FF00D2E8
          EBFF42CFE0FF8AFFFFFFCCFFFFFFE9F0E9FFDAF1F2FFE8E9DFFFEEE5D6FFD7F5
          F7FFEAEDE4FFD2FFFFFF9CFFFFFF45D6E6FFC0DFE4FFFF00FF00FF00FF0084E2
          EFFF5AFFFFFF73FAFFFF8AF2FFFFD6D4BFFFFFCEA1FFFED2ABFFFED2AAFFFED1
          A6FFE3D2B3FF96F0FFFF7EF8FFFF64FFFFFF67E0F0FFFF00FF00FF00FF0086DA
          E6FF2BF5FFFF72C3B5FFD99C46FFE7AF5BFFDCBA81FFADD9CEFFACDDD3FFD5C1
          91FFECB360FFE0A24DFF89BBA2FF34F7FFFF68D5E3FFFF00FF00FF00FF0087D9
          E5FF2AECFFFF34D5E7FFD39822FFD39D29FF48DAECFF44F2FFFF47F2FFFF47E3
          FFFFC7AA52FFE5971CFF42CDDCFF20EEFFFF66D3E3FFFF00FF00FF00FF008EDA
          E5FFA3F4FFFFD9D4AEFFFFCB61FFB8C691FF23E3FFFF22DFF5FF30E1F5FF16EC
          FFFF81B688FFFFA500FFCE9217FF24D1E5FF60D4E7FFFF00FF00FF00FF008FD9
          E5FFC4FAFFFFD7EBE6FFFFEDB9FFFDEEC9FFACF1FFFF48E1F5FF09D8F4FF00CF
          FBFFB0AD3BFFFFA700FF47A588FF0AD7F4FF64D2E3FFFF00FF00FF00FF008ED9
          E4FFDDFFFFFFE3F5F2FFFFF2CFFFFFF4CDFFFAEFDDFFE0F5F8FFA4EDFCFF9DC8
          AFFFFFCB34FFFFC932FF97CDBAFFACFAFFFF85D7E3FFFF00FF00FF00FF008AD8
          E3FFFDFFFFFFFFFFFFFFF0F5F3FFFAF7E9FFFFFAE2FFFFF7E4FFFFF9E6FFFFFF
          E8FFFFFCF1FFF6F9FBFFFFFFFFFFFFFFFFFF83D5E2FFFF00FF00FF00FF00E5F5
          F8FF76D1E0FFC9F3FAFFFFFFFFFFFFFFF9FFFCFAF5FFFFFBF5FFFFFCF4FFFAFB
          F8FFFFFEFCFFFFFFFFFFDCFBFFFF76D3E1FFCEEDF2FFFF00FF00FF00FF00FF00
          FF00FF00FF00B8E5ECFF82D6E4FFF8FFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFF
          FFFFFFFFFFFF8BDCE7FF9BDCE6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0095DBE5FF95DEE9FFFFFFFFFFFFFFFFFFA6E4
          EEFF8ED8E3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0089D6E2FF83D4E1FFFBFD
          FDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 6
        TabStop = False
      end
    end
    object TabCheque: TTabSheet
      Caption = 'Cheques'
      ImageIndex = 3
      object CGroupBox4: TCGroupBox
        Left = 2
        Top = 3
        Width = 557
        Height = 109
        TabOrder = 0
        object CLabel38: TCLabel
          Left = 403
          Top = 37
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
          Transparent = True
        end
        object CLabel49: TCLabel
          Left = 461
          Top = 15
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Comp.'
          Transparent = True
        end
        object CLabel50: TCLabel
          Left = 143
          Top = 15
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Banco'
          Transparent = True
        end
        object CLabel51: TCLabel
          Left = 13
          Top = 37
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ag'#234'ncia'
          Transparent = True
        end
        object CLabel52: TCLabel
          Left = 128
          Top = 37
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta'
          Transparent = True
        end
        object CLabel53: TCLabel
          Left = 265
          Top = 37
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cheque'
          Transparent = True
        end
        object CLabel54: TCLabel
          Left = 22
          Top = 15
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel32: TCLabel
          Left = 143
          Top = 62
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emitente'
          Transparent = True
        end
        object CLabel58: TCLabel
          Left = 13
          Top = 62
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
          Transparent = True
        end
        object CLabel59: TCLabel
          Left = 8
          Top = 87
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta Caixa'
        end
        object DBEComp: TCDBEdit
          Left = 498
          Top = 12
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'Comp'
          DataSource = dsChequeRec
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEidBanco: TCDBEdit
          Left = 178
          Top = 12
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idBanco'
          DataSource = dsChequeRec
          TabOrder = 1
          Find = FindBanco
          DecimalControl = True
          KeyMode = kmInteger
        end
        object LookBanco: TCLookUp
          Left = 230
          Top = 12
          Width = 225
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idBanco')
          LookUpKey.Strings = (
            'idBanco')
          ClientDataSet = cdsLookUp
          DataSource = dsChequeRec
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Banco'
          ReturnField = 'descBanco'
        end
        object DBEnrAgencia: TCDBEdit
          Left = 57
          Top = 34
          Width = 59
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrAgencia'
          DataSource = dsChequeRec
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEnrConta: TCDBEdit
          Left = 163
          Top = 34
          Width = 89
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrConta'
          DataSource = dsChequeRec
          TabOrder = 5
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEnrCheque: TCDBEdit
          Left = 308
          Top = 34
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrCheque'
          DataSource = dsChequeRec
          TabOrder = 6
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEvlCheque: TCDBEdit
          Left = 57
          Top = 12
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlCheque'
          DataSource = dsChequeRec
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = DBEvlMovContaExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEemitente: TCDBEdit
          Left = 191
          Top = 59
          Width = 272
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'emitente'
          DataSource = dsChequeRec
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtVencimento: TCDBEdit
          Left = 464
          Top = 34
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsChequeRec
          MaxLength = 10
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtEmissao: TCDBEdit
          Left = 57
          Top = 59
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsChequeRec
          MaxLength = 10
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmDate
        end
        object CBitBtn4: TCBitBtn
          Left = 406
          Top = 84
          Width = 96
          Height = 19
          Caption = '&Conta Caixa'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F8F8F8FFF4F6
            F6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00EBEBEAFFF8F9F8FFFF00FF00F4F4F4FFF0F0
            EFFFB9B9B8FFEBEBE9FFF0EFEEFFF0F0EEFFEEEEEEFFE2E2E2FFE9E9E9FFF9F8
            F8FFF1F1F0FFE1E0DFFFF6F5F4FFE3E2E1FFFAF9F8FFFF00FF00FBFBFBFFC3BB
            B6FFC4BEBBFFC8C4BEFFCDC7C5FFCBC7C5FFCBC6C1FFCDC5C4FFCCC8C3FFCDC7
            C7FFCDC8C3FFCCC9C5FFCDCAC6FFD3C9C7FFD0CBC8FFFF00FF00FBFBFBFFC9C3
            C0FFB96A1AFF80350BFFAF6115FFE69C39FFE79E3BFFEED370FFFEFDF7FFF2F7
            CAFFCA7B22FFA25511FFAA5C14FFBB701BFFD0CCC7FFFF00FF00FBFBFBFFC8C3
            C0FFD08125FF934012FF9E4C11FFD98B28FFECB950FFF0EC90FFEFF7BBFFECB6
            4FFFAC5915FF9E4C13FFAC5B15FFBC6A17FFD2CDCAFFFF00FF00FCFCFCFFC9C5
            C3FFCD791AFFB05913FFA04911FFAF5714FFE7AB40FFEDDF7AFFE9B94CFFDE92
            25FFB86314FF953F0EFFA95213FFB96616FFD5D0CDFFFF00FF00FDFCFCFFCEC7
            C5FFBF691AFFCD7619FFC46E17FFAE5214FFD98522FFEAAE3EFFDE8F22FFD07A
            17FFC26A17FFA74A13FFBC6617FFAD5315FFD3CFCAFFFF00FF00FDFDFDFFD3CD
            C7FFC76C16FFE0861FFFE29022FFD6801AFFC46717FFE29123FFE39121FFCA70
            16FFBD5D15FFAE4F14FFA84A15FFD8821EFFD4D0CBFFFF00FF00FDFDFDFFD3CC
            C9FFB95916FFE59C27FFE59722FFE1901DFFCA6D15FFCE7318FFD17617FFBA59
            15FFA84311FF9B3812FF912C10FFA54313FFD7D1CCFFFF00FF00FF00FF00D5CE
            CCFFBF5E15FFD77F19FFE8AA38FFE59E2AFFC76919FFC16015FFBC5A16FFA43C
            11FF942B11FF861E10FF791A0EFF9F3A15FFDAD4D0FFFF00FF00FF00FF00D4CE
            CFFFC38F68FFCFA26BFFD6AE73FFD4AC72FFC18E6BFFC4936BFFBA8865FFAE7A
            67FFA66F65FF9A6863FF9D6A61FF9C6B62FFDBD7D2FFFF00FF00FF00FF00E3E1
            DFFFEAE5E5FFEBEAE8FFEEECECFFEDECEBFFEDECEBFFEEECECFFEDECECFFEEED
            EDFFEDEDEDFFEEEDECFFEEEDECFFEDECEAFFE7E5E3FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 11
          TabStop = False
        end
        object CLookUp1: TCLookUp
          Left = 127
          Top = 84
          Width = 272
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idCaixa')
          LookUpKey.Strings = (
            'idCaixa')
          AlternateSQL.Strings = (
            
              'SELECT descCaixa FROM Caixa WHERE idEmpresa = [DBEidEmpresa] AND' +
              ' idCaixa = ?')
          ClientDataSet = cdsLookUp
          DataSource = dsChequeRec
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Caixa'
          ReturnField = 'descCaixa'
        end
        object DBEidCaixa1: TCDBEdit
          Left = 73
          Top = 84
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCaixa'
          DataSource = dsChequeRec
          TabOrder = 10
          Find = FindCaixa
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 565
        Top = 3
        Width = 93
        Height = 292
        TabOrder = 2
        object BtnSalvarChq: TCBitBtn
          Left = 9
          Top = 12
          Width = 75
          Height = 25
          Caption = '&Salvar'
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
          TabOrder = 0
          OnClick = BtnSalvarChqClick
        end
        object BtnCancelarChq: TCBitBtn
          Left = 9
          Top = 43
          Width = 75
          Height = 25
          Caption = '&Desfazer'
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
          TabOrder = 1
          OnClick = BtnSalvarChqClick
        end
        object BtnExcluirChq: TCBitBtn
          Left = 9
          Top = 74
          Width = 75
          Height = 25
          Caption = '&Excluir'
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
          TabOrder = 2
          OnClick = BtnSalvarChqClick
        end
        object BtnNovoChq: TCBitBtn
          Left = 9
          Top = 105
          Width = 75
          Height = 25
          Caption = '&Novo'
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
          TabOrder = 3
          OnClick = BtnSalvarChqClick
        end
      end
      object CGroupBox6: TCGroupBox
        Left = 2
        Top = 118
        Width = 557
        Height = 177
        TabOrder = 1
        object CDBGrid1: TCDBGrid
          Left = 2
          Top = 15
          Width = 553
          Height = 160
          TabStop = False
          Align = alClient
          DataSource = dsChequeRec
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridCellClick
          OnColEnter = DBGridColEnter
          OnDrawColumnCell = DBGridDrawColumnCell
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'vlCheque'
              Title.Caption = 'Valor'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idCliente'
              Title.Caption = 'Cliente'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idBanco'
              Title.Caption = 'Banco'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Comp'
              Title.Caption = 'Comp.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrAgencia'
              Title.Caption = 'Ag'#234'ncia'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrConta'
              Title.Caption = 'Conta'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrCheque'
              Title.Caption = 'Cheque'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'emitente'
              Title.Caption = 'Emitente'
              Width = 170
              Visible = True
            end>
        end
      end
      object DBEidChequeRec: TCDBEdit
        Left = 535
        Top = 132
        Width = 77
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idChequeRec'
        DataSource = dsChequeRec
        TabOrder = 3
        Visible = False
        DecimalControl = True
        KeyMode = kmInteger
      end
      object idChequeRecIni: TCEdit
        Left = 535
        Top = 157
        Width = 66
        Height = 19
        Alignment = taRightJustify
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 4
        Text = ''
        Visible = False
        DataType = ftUnknown
        KeyMode = kmInteger
        Decimals = 0
      end
      object idChequeRecFim: TCEdit
        Left = 535
        Top = 182
        Width = 66
        Height = 19
        Alignment = taRightJustify
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 5
        Text = ''
        Visible = False
        DataType = ftUnknown
        KeyMode = kmInteger
        Decimals = 0
      end
    end
    object TabAdiantamento: TTabSheet
      Caption = 'Adiantamento'
      ImageIndex = 7
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 3
        Width = 530
        Height = 111
        TabOrder = 0
        object CLabel37: TCLabel
          Left = 36
          Top = 38
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel41: TCLabel
          Left = 53
          Top = 16
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel42: TCLabel
          Left = 334
          Top = 16
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data do Lan'#231'amento'
        end
        object DBMdescAdiantamento: TCDBMemo
          Left = 88
          Top = 38
          Width = 431
          Height = 50
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descAdiantamento'
          DataSource = dsAdiantamento
          ScrollBars = ssVertical
          TabOrder = 2
          OnExit = DBMdescMovCaixaExit
          KeyMemo = kmmUSUpper
        end
        object DBEvlAdiantamento: TCDBEdit
          Left = 88
          Top = 13
          Width = 94
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlAdiantamento'
          DataSource = dsAdiantamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = DBEvlAdiantamentoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtAdiantamento: TCDBEdit
          Left = 439
          Top = 13
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'dtAdiantamento'
          DataSource = dsAdiantamento
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 583
    Width = 1162
    Height = 0
    TabOrder = 2
    Visible = False
    ExplicitTop = 583
    ExplicitWidth = 1162
    ExplicitHeight = 0
    inherited BtnSalvar: TCBitBtn
      Left = 184
      Top = 4
      Caption = '&Confirmar'
      ExplicitLeft = 184
      ExplicitTop = 4
    end
    inherited BtnFechar: TCBitBtn
      Left = 553
      Top = 5
      ExplicitLeft = 553
      ExplicitTop = 5
    end
  end
  object PanEmpresa: TCPanelGradient [5]
    Left = 0
    Top = 4
    Width = 1162
    Height = 26
    Align = alTop
    Caption = 'PanEmpresa'
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
    object CLabel1: TCLabel
      Left = 28
      Top = 8
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa'
      Transparent = True
    end
    object DBEidEmpresa: TCDBEdit
      Left = 75
      Top = 5
      Width = 46
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idEmpresa'
      DataSource = dsPadrao
      TabOrder = 1
      OnExit = DBEidEmpresaExit
      OnKeyDown = DBEidEmpresaKeyDown
      DecimalControl = True
      KeyMode = kmInteger
    end
    object LookdescCadEmpresa: TCLookUp
      Left = 164
      Top = 5
      Width = 237
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descCadEmpresa'
    end
    object DBCKconsolida: TCDBCheckBox
      Left = 560
      Top = 6
      Width = 70
      Height = 17
      Caption = 'Consolida?'
      DataField = 'consolida'
      DataSource = dsPadrao
      TabOrder = 5
    end
    object LookdescAbreviada: TCLookUp
      Left = 407
      Top = 5
      Width = 147
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 4
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'descAbreviada'
    end
    object DBEidUsuario: TCDBEdit
      Left = 494
      Top = 1
      Width = 60
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idUsuario'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      DecimalControl = True
      KeyMode = kmInteger
    end
    object lookidCnpjCpf: TCLookUp
      Left = 697
      Top = 6
      Width = 126
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 6
      Visible = False
      Key.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      LookUpKey.Strings = (
        'idEmpresa'
        'idCadEmpresa')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'vCadEmpresaContabil'
      ReturnField = 'idCnpjCpf'
    end
    object DBEidCadEmpresa: TCDBEdit
      Left = 127
      Top = 5
      Width = 31
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCadEmpresa'
      DataSource = dsPadrao
      TabOrder = 2
      OnKeyDown = DBEidEmpresaKeyDown
      DecimalControl = True
      KeyMode = kmInteger
    end
  end
  object PanCliente: TCPanelGradient [6]
    Left = 0
    Top = 30
    Width = 1162
    Height = 31
    Align = alTop
    TabOrder = 3
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
      Left = 21
      Top = 61
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
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
      Width = 1160
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
    object CLabel7: TCLabel
      Left = 36
      Top = 11
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel11: TCLabel
      Left = 402
      Top = 11
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie'
      Transparent = True
    end
    object DBEidCliente: TCDBEdit
      Left = 75
      Top = 8
      Width = 83
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idCliente'
      DataSource = dsPadrao
      TabOrder = 0
      Find = FindCliente
      DecimalControl = True
      KeyMode = kmInteger
    end
    object LookDescCadCliente: TCLookUp
      Left = 164
      Top = 8
      Width = 232
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 1
      Key.Strings = (
        'idCliente')
      LookUpKey.Strings = (
        'idCliente')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = False
      CampoObrigatorio = True
      LookUpTable = 'vCadClienteContabil'
      ReturnField = 'descCadCliente'
    end
    object DBEidDocSerie: TCDBEdit
      Left = 432
      Top = 8
      Width = 51
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'idDocSerie'
      DataSource = dsPadrao
      TabOrder = 2
      AcaoCad = frmPrincipal.actCadDocSerie
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object LookDocSerie: TCLookUp
      Left = 489
      Top = 8
      Width = 208
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Color = 14149350
      ParentBackground = False
      TabOrder = 3
      Key.Strings = (
        'idDocSerie')
      LookUpKey.Strings = (
        'idDocSerie')
      AlternateSQL.Strings = (
        
          'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 1 AND i' +
          'dDocSerie = ?')
      ClientDataSet = cdsLookUp
      DataSource = dsPadrao
      ValidaCampoObrigatorio = True
      CampoObrigatorio = True
      LookUpTable = 'DocSerie'
      ReturnField = 'descDocSerie'
    end
  end
  object PanRomaneio: TCPanelGradient [7]
    Left = 0
    Top = 61
    Width = 1162
    Height = 46
    Align = alTop
    TabOrder = 4
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 15201011
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel8: TCLabel
      Left = 28
      Top = 6
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Titulo de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel5: TCLabel
      Left = 16
      Top = 28
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel6: TCLabel
      Left = 161
      Top = 28
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
    object CLabel3: TCLabel
      Left = 270
      Top = 28
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencto de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel10: TCLabel
      Left = 410
      Top = 28
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
    object CLabel56: TCLabel
      Left = 320
      Top = 6
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel57: TCLabel
      Left = 451
      Top = 6
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
    object Bevel5: TBevel
      Left = 689
      Top = 8
      Width = 90
      Height = 33
      Style = bsRaised
    end
    object CLabel55: TCLabel
      Left = 164
      Top = 5
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 519
      Top = 28
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nr. Contrato'
    end
    object DBEnrTitulo: TCDBEdit
      Left = 75
      Top = 3
      Width = 83
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'nrTitulo'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEdtEmissaoIni: TCDBEdit
      Left = 75
      Top = 25
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtEmissaoFim: TCDBEdit
      Left = 183
      Top = 25
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtEmissaoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoIni: TCDBEdit
      Left = 324
      Top = 25
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
      DecimalControl = True
      KeyMode = kmDate
    end
    object DBEdtVencimentoFim: TCDBEdit
      Left = 432
      Top = 25
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtVencimentoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmDate
    end
    object BtnPesquisar: TCBitBtn
      Tag = 1
      Left = 694
      Top = 12
      Width = 77
      Height = 25
      Action = actPesquisar
      Caption = '&Pesquisar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FEFEFEFF8F98A1FFBBBDBEFFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FEFEFEFF3F5B78FF517DAAFF406892FFBDBFC0FFFF00FF00F4F5
        F5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00445F7DFF4F7BA8FF86A4C1FFADC3D9FF929BA4FFBAADACFFA642
        2BFF844D40FF856F6EFFACACACFFE6E6E6FFFEFEFEFFF9F9F9FFFF00FF00E6E5
        E5FF44546AFF4E7CAAFF7F9EBCFFC8D6E5FF667D95FFFDFDFDFFB09E9CFFD072
        4EFFD7713EFFDA723EFFD06132FFA76D63FFB0A2A3FFCAACA9FFB39FA0FF9D8F
        90FFC0AEADFF72879EFFC7D7E8FF6C819AFFFEFEFEFFFF00FF00AD9694FFD382
        67FFD17444FFCF6835FFCFA99FFFDFBBAFFFF0C6B3FFFADED0FFF1C7B4FFDAAC
        9FFFAD9A9CFFE0D9D6FF727F8FFFFEFEFEFFFF00FF00FF00FF00AB8F8CFFE5A1
        87FFCF7D59FFD59D83FFDCB7AAFFF1C7B0FFF4D7C5FFF4DAC9FFF4D7C7FFF2CB
        B3FFD9A89AFFA1867FFFE7D6D4FFFF00FF00FF00FF00FF00FF00A68985FFF3B8
        9EFFCD8269FFDFC7C2FFE29F7EFFEFC4ABFFEFC6AEFFEFC8B2FFF0C7B0FFEFC2
        A8FFE5A484FFB6A09FFFC27D66FFFF00FF00FF00FF00FF00FF00AD8883FFF3C2
        AAFFD3907AFFE0C8BFFFEEC1AAFFF3D4C2FFF3D6C5FFEDBDA3FFEBB699FFEBB3
        93FFE7A17CFFC5B2B3FFBF673BFFF8F2F2FFFF00FF00FF00FF00AA8580FFF7CD
        B5FFDB9F8AFFDCC7C6FFEBBFAAFFF4D8C7FFF3D8C8FFF4D8C8FFEDBEA2FFEDBB
        9EFFDF916CFFC1B2B2FFD78860FFD7A79BFFFF00FF00FF00FF00B18781FFF8D5
        C1FFF1C7B2FFDDB2A4FFDFBDB1FFF8E0D3FFF6E0D3FFF6E0D3FFF7E2D6FFF9E4
        D8FFDCB3A7FFC9A79CFFE9BBA4FFD5987FFFFDFCFCFFFF00FF00B78B85FFFADD
        CBFFF3CFBDFFF1C7B1FFE4CEC7FFDFBEB4FFEECBBAFFF6DED3FFEDCABAFFDFBD
        B3FFDCD0CEFFEBCAB7FFF2D1C0FFF0CBB8FFE8D1CDFFFF00FF00BA9089FFFCE6
        D6FFF4D8C8FFF3D2C0FFF2C9B4FFE9C7B9FFE3CFCAFFDFC3BBFFE1CBC6FFD9A9
        99FFD6927BFFB47D74FFCEADA7FFD8ABA0FFC08075FFFF00FF00C0918CFFFFEE
        E1FFF8E0D1FFF6DACAFFF4D4C4FFF7D2BFFFF9C9B2FFF6C4ABFFF4BEA3FFF0B8
        9BFFF4B698FF875851FFFF00FF00FF00FF00FF00FF00FF00FF00B09C9BFFFFF0
        E4FFFFEFE1FFFDE9DAFFFFE5D5FFAE7B75FFB8ABABFFAD9795FFA98984FFAD80
        78FFBF7D70FF997673FFFF00FF00FF00FF00FF00FF00FF00FF00FEFEFEFFBFAA
        A9FFC0A6A3FFCBA8A3FFC89D97FFF5F4F4FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 9
    end
    object DBEvlSaldoFim: TCDBEdit
      Left = 473
      Top = 3
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlSaldoFim'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlSaldoIni: TCDBEdit
      Left = 365
      Top = 3
      Width = 80
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlSaldoIni'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEtpDocumento: TCDBEdit
      Left = 224
      Top = 3
      Width = 90
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'tpDocumento'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DecimalControl = True
      KeyMode = kmUSUpper
    end
    object DBEidContratoVenda: TCDBEdit
      Left = 586
      Top = 25
      Width = 95
      Height = 19
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      DataField = 'idContratoVenda'
      DataSource = dsPadrao
      ParentBiDiMode = False
      TabOrder = 8
      FieldKey = True
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  object CPanelGradient1: TCPanelGradient [8]
    Left = 0
    Top = 107
    Width = 1162
    Height = 31
    Align = alTop
    TabOrder = 5
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel12: TCLabel
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
    object CLabel13: TCLabel
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
    object CLabel21: TCLabel
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
    object CLabel22: TCLabel
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
    object CLabel23: TCLabel
      Left = 21
      Top = 61
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente'
      Transparent = True
    end
    object CLabel24: TCLabel
      Left = 6
      Top = 83
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object CLabel25: TCLabel
      Left = 192
      Top = 83
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inscr. Estadual'
      Transparent = True
    end
    object Bevel7: TBevel
      Left = 1
      Top = 1
      Width = 1160
      Height = 4
      Align = alTop
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 2
      ExplicitTop = 30
      ExplicitWidth = 673
    end
    object Bevel8: TBevel
      Left = 0
      Top = 104
      Width = 606
      Height = 4
      Shape = bsFrame
      Style = bsRaised
    end
    object CLabel26: TCLabel
      Left = 8
      Top = 11
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel27: TCLabel
      Left = 141
      Top = 11
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descontos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel28: TCLabel
      Left = 273
      Top = 11
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Acr'#233'scimos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel29: TCLabel
      Left = 418
      Top = 11
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBEvlReal: TCDBEdit
      Left = 40
      Top = 8
      Width = 85
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'vlReal'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlDesconto: TCDBEdit
      Left = 197
      Top = 8
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlDesconto'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEvlDescontoEnter
      OnExit = DBEvlDescontoExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlAcrescimo: TCDBEdit
      Left = 332
      Top = 8
      Width = 70
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlAcrescimo'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = DBEvlDescontoEnter
      OnExit = DBEvlDescontoExit
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEvlPago: TCDBEdit
      Left = 473
      Top = 8
      Width = 85
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'vlPago'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = DBEvlDescontoEnter
      DecimalControl = True
      KeyMode = kmNormal
    end
    object BtnConfirma: TCBitBtn
      Left = 576
      Top = 7
      Width = 75
      Height = 23
      Action = actConfirma
      Caption = '&Confirma'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00015703000157030001570300015703000157
        030001570300015703000157030001570300015703000157030095655F00A569
        6A00A5696A00A5696A00A5696A0001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000157030098686000FBE5
        C000F4D5AD00F0CF9F00EFCA960001570300FFFFFF00FFFFFF00004B0000004B
        0000004B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00015703009D6B6200FCE7
        C900F2D5B500F0D0A900EECB9E0001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0002630500004B0000EFF6F000FFFFFF00FFFFFF0001570300A36F6400FEEE
        D400F4DDC000F2D7B500F0D1AA0001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00187F1E00004B0000FFFFFF00FFFFFF00FFFFFF0001570300A7746600FFF4
        E100F6E1CA00F3DCBF00F2D7B40001570300FFFFFF00FFFFFF00004B0000004B
        000013771A000C8C1800004B0000004B0000FFFFFF0001570300AD786900FFFB
        EE00F7E7D500F4E1CA00F3DCBF0001570300FFFFFF00FFFFFF00004B00000A72
        120026AC440023BA41000C861600004B0000FFFFFF0001570300B47E6B00FFFF
        FB00F8EDE100F7E6D400F6E1C90001570300FFFFFF00FFFFFF00FFFFFF00004B
        00001E9A360039D76700004B0000FFFFFF00FFFFFF0001570300BA836D00FFFF
        FF00FCF4EE00FAEDE100F8E9D50001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00004B0000004B0000FFFFFF00FFFFFF00FFFFFF0001570300BF877000FFFF
        FF00FFFBFA00FEF4ED00FAEEE00001570300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001570300C48C7200FFFF
        FF00FFFFFF00FFFCFA00FCF4ED00015703000157030001570300015703000157
        0300015703000157030001570300015703000157030001570300CA917400FFFF
        FF00FFFFFF00FFFFFF00FFFCFA00FCF4ED00FAEDDE00F8E7D400FCEBD300E3D3
        BB00B7AD9C00A5696A00FF00FF00FF00FF00FF00FF00FF00FF00CE957600FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FEFCFA00FCF6EB00FAEFE000A5696A00A569
        6A00A5696A00A5696A00FF00FF00FF00FF00FF00FF00FF00FF00D3977800FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFC00F4EBE600A5696A00E2A3
        5B00EF993800BB704F00FF00FF00FF00FF00FF00FF00FF00FF00D59A7900FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8FE00A5696A00E5A5
        5F00C2805C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D0906B00D090
        6B00D0906B00D0906B00D0906B00D0906B00D0906B00D0906B00A5696A00BB7F
        6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
    end
  end
  object CPanelGradient2: TCPanelGradient [9]
    Left = 0
    Top = 142
    Width = 97
    Height = 441
    Align = alLeft
    TabOrder = 6
    CaptionNo = 0
    HintNo = 0
    BackgroundGradientColor = 12306636
    BackgroundGradientDirection = gdVertical
    TextColor = clBlack
    GradientColor = clBlack
    RegularButtonColor = clBlack
    SelectedButtonColor = clBlack
    ButtonOptions = []
    object CLabel33: TCLabel
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
    object Bevel10: TBevel
      Left = 92
      Top = 1
      Width = 4
      Height = 439
      Align = alRight
      Shape = bsFrame
      Style = bsRaised
      ExplicitLeft = 643
      ExplicitHeight = 244
    end
    object CLabel30: TCLabel
      Left = 1
      Top = 68
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total a Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel2: TCLabel
      Left = 1
      Top = 102
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Dinheiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel9: TCLabel
      Left = 1
      Top = 134
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Banco/Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CLabel31: TCLabel
      Left = 1
      Top = 303
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Op. Banc'#225'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object CLabel34: TCLabel
      Left = 1
      Top = 208
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel36: TCLabel
      Left = 2
      Top = 245
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Liquida'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel4: TCLabel
      Left = 1
      Top = 170
      Width = 90
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Adiantamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EDTotalRec: TCEdit
      Left = 3
      Top = 81
      Width = 87
      Height = 19
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      BevelKind = bkTile
      Color = 14149350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = ''
      DataType = ftUnknown
      KeyMode = kmFormaTtedNumber
      Decimals = 2
    end
    object EdDinheiro: TCEdit
      Left = 3
      Top = 114
      Width = 87
      Height = 19
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      BevelKind = bkTile
      Color = 14149350
      ReadOnly = True
      TabOrder = 3
      Text = ''
      DataType = ftUnknown
      KeyMode = kmFormaTtedNumber
      Decimals = 2
    end
    object EdCheque: TCEdit
      Left = 3
      Top = 146
      Width = 88
      Height = 19
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      BevelKind = bkTile
      Color = 14149350
      ReadOnly = True
      TabOrder = 4
      Text = ''
      DataType = ftUnknown
      KeyMode = kmFormaTtedNumber
      Decimals = 2
    end
    object EdBanco: TCEdit
      Left = 2
      Top = 315
      Width = 87
      Height = 19
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      BevelKind = bkTile
      Color = 14149350
      ReadOnly = True
      TabOrder = 9
      Text = ''
      Visible = False
      DataType = ftUnknown
      KeyMode = kmFormaTtedNumber
      Decimals = 2
    end
    object EdSaldoFinal: TCEdit
      Left = 3
      Top = 220
      Width = 87
      Height = 19
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      BevelKind = bkTile
      Color = 14149350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Text = ''
      DataType = ftUnknown
      KeyMode = kmFormaTtedNumber
      Decimals = 2
    end
    object DBEdtLiquidacao: TCDBEdit
      Left = 2
      Top = 258
      Width = 87
      Height = 19
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'dtLiquidacao'
      DataSource = dsPadrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
      DecimalControl = True
      KeyMode = kmDate
    end
    object BtnConfirmar: TCBitBtn
      Left = 6
      Top = 283
      Width = 75
      Height = 75
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36200000424D3620000000000000360000002800000040000000200000000100
        2000000000000020000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FDFDFDFFFAFAFAFFF9F9F9FFF9F9
        F9FFFAFAFAFFFCFCFCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FDFDFDFFFBFBFBFFFAFAFAFFFAFA
        FAFFFBFBFBFFFCFCFCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FAFAFAFFE2E2E2FFBBBFBBFF8E9C8EFF718971FF637F63FF617D
        61FF6C856CFF859585FFB0B5B0FFDADADAFFF7F7F7FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FBFBFBFFE8E8E8FFCBCBCBFFADADADFF9B9B9BFF929292FF9191
        91FF989898FFA7A7A7FFC3C3C3FFE1E1E1FFF7F7F7FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F9F9
        F9FFD5D6D5FF839883FF367636FF0A6F0AFF007300FF007700FF007800FF0078
        00FF007600FF007000FF046604FF296A29FF6D866DFFC4C6C4FFF7F7F7FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FAFA
        FAFFDEDEDEFFA8A8A8FF818181FF717171FF707070FF727272FF737373FF7373
        73FF727272FF6F6F6FFF6B6B6BFF777777FF999999FFD1D1D1FFF7F7F7FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDFFF7D97
        7DFF267B26FF007F00FF008300FF008200FF008100FF007F00FF007E00FF007D
        00FF007D00FF007D00FF007C00FF007A00FF007100FF166616FF6E876EFFCECF
        CEFFFDFDFDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E6E6E6FFA6A6
        A6FF7F7F7FFF767676FF787878FF787878FF777777FF767676FF767676FF7575
        75FF757575FF757575FF757575FF747474FF6F6F6FFF707070FF999999FFD9D9
        D9FFFDFDFDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CBCECBFF3E823EFF0088
        00FF008B00FF008900FF008600FF008400FF008200FF008000FF007E00FF007D
        00FF007C00FF007C00FF007C00FF007D00FF007C00FF007900FF007000FF2569
        25FFB0B6B0FFFCFCFCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D7D7D7FF898989FF7B7B
        7BFF7C7C7CFF7B7B7BFF7A7A7AFF797979FF787878FF777777FF767676FF7575
        75FF757575FF757575FF757575FF757575FF757575FF737373FF6F6F6FFF7676
        76FFC4C4C4FFFCFCFCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C9CCC9FF298729FF009100FF008E
        00FF008D00FF008B00FF008800FF008500FF008400FF008000FF007D00FF007D
        00FF007D00FF007C00FF007C00FF007C00FF007C00FF007D00FF007C00FF0077
        00FF136813FFAAB2AAFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D6D6D6FF868686FF7F7F7FFF7E7E
        7EFF7D7D7DFF7C7C7CFF7B7B7BFF797979FF797979FF777777FF757575FF7575
        75FF757575FF757575FF757575FF757575FF757575FF757575FF757575FF7272
        72FF707070FFC0C0C0FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00DDDEDDFF338A33FF009900FF009400FF0091
        00FF008E00FF008D00FF008B00FF008800FF008400FF0A880AFF229022FF0784
        07FF007E00FF007D00FF007C00FF007C00FF007C00FF007C00FF007C00FF007D
        00FF007800FF186718FFC3C6C3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E4E4E4FF8A8A8AFF838383FF818181FF7F7F
        7FFF7E7E7EFF7D7D7DFF7C7C7CFF7B7B7BFF797979FF7F7F7FFF8F8F8FFF7C7C
        7CFF767676FF757575FF757575FF757575FF757575FF757575FF757575FF7575
        75FF737373FF717171FFD1D1D1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FEFEFEFF7A9D7AFF009D00FF009700FF009600FF0093
        00FF009000FF008E00FF008C00FF008900FF008600FF78AD78FFC5C5C5FF4DA1
        4DFF007E00FF007E00FF007D00FF007C00FF007C00FF007C00FF007C00FF007C
        00FF007C00FF007400FF507A50FFF5F5F5FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FEFEFEFFA8A8A8FF858585FF828282FF828282FF8080
        80FF7F7F7FFF7E7E7EFF7D7D7DFF7B7B7BFF7A7A7AFFC9C9C9FFFBFBFBFFADAD
        ADFF767676FF767676FF757575FF757575FF757575FF757575FF757575FF7575
        75FF757575FF717171FF8B8B8BFFF7F7F7FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00CBCFCBFF139513FF009E00FF009800FF009700FF0096
        00FF009300FF009100FF008D00FF008900FF66AD66FFD2CED2FFD4CDD4FFAFC3
        AFFF158C15FF007D00FF007E00FF007D00FF007C00FF007C00FF007C00FF007C
        00FF007C00FF007A00FF046A04FFA8B0A8FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D8D8D8FF868686FF868686FF838383FF828282FF8282
        82FF808080FF7F7F7FFF7D7D7DFF7B7B7BFFC0C0C0FFFFFFFFFFFFFFFFFFEFEF
        EFFF878787FF757575FF767676FF757575FF757575FF757575FF757575FF7575
        75FF757575FF747474FF6D6D6DFFBFBFBFFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FCFCFCFF659B65FF00A800FF009D00FF009B00FF009800FF0097
        00FF009600FF009300FF008D00FF61B161FFE0DCE0FFD9D7D9FFD5D4D5FFDCD7
        DCFF6AAE6AFF007F00FF007F00FF007E00FF007D00FF007C00FF007C00FF007C
        00FF007C00FF007D00FF007900FF3C743CFFF1F1F1FFFF00FF00FF00FF00FF00
        FF00FF00FF00FCFCFCFFA1A1A1FF8B8B8BFF858585FF848484FF838383FF8282
        82FF828282FF808080FF7D7D7DFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC3C3C3FF767676FF767676FF767676FF757575FF757575FF757575FF7575
        75FF757575FF757575FF737373FF828282FFF4F4F4FFFF00FF00FF00FF00FF00
        FF00FF00FF00DBDCDBFF169D16FF00A500FF00A000FF009D00FF009B00FF0098
        00FF009600FF009100FF5CB55CFFEBE8EBFFE8E5E8FFE1E1E1FFDEDEDEFFE2DE
        E2FFC5D3C5FF1F921FFF007F00FF008000FF007E00FF007D00FF007C00FF007C
        00FF007C00FF007D00FF007C00FF036A03FFB8BEB8FFFF00FF00FF00FF00FF00
        FF00FF00FF00E3E3E3FF8C8C8CFF898989FF878787FF858585FF848484FF8383
        83FF828282FF7F7F7FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8F8F8FFF767676FF777777FF767676FF757575FF757575FF7575
        75FF757575FF757575FF757575FF6C6C6CFFCACACAFFFF00FF00FF00FF00FF00
        FF00FF00FF009FB39FFF07AC07FF00A300FF00A100FF00A000FF009D00FF009A
        00FF009400FF55B755FFF2F2F2FFF4F1F4FFF2EFF2FFEFEBEFFFE7E8E7FFE5E5
        E5FFEEE7EEFF7FBB7FFF008100FF008100FF008000FF007E00FF007D00FF007C
        00FF007C00FF007C00FF007D00FF007800FF728F72FFFF00FF00FF00FF00FF00
        FF00FF00FF00BEBEBEFF909090FF888888FF878787FF878787FF858585FF8484
        84FF818181FFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD3D3D3FF777777FF777777FF777777FF767676FF757575FF7575
        75FF757575FF757575FF757575FF737373FF9E9E9EFFFF00FF00FF00FF00FF00
        FF00FF00FF006FA26FFF08B308FF00A400FF00A200FF00A100FF009F00FF0098
        00FF4DB94DFFF2F8F2FFFFFCFFFFFFFCFFFFBDD1BDFF91AB91FFF3EFF3FFEDED
        EDFFF0EDF0FFDBE4DBFF2A992AFF008000FF008200FF008000FF007E00FF007D
        00FF007C00FF007C00FF007D00FF007C00FF407A40FFF5F5F5FFFF00FF00FF00
        FF00FF00FF00A9A9A9FF949494FF898989FF888888FF878787FF868686FF8383
        83FFB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFD5D5D5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF989898FF777777FF787878FF777777FF767676FF7575
        75FF757575FF757575FF757575FF757575FF868686FFF7F7F7FFFF00FF00FF00
        FF00F8F8F8FF54A154FF07B107FF00A500FF00A400FF00A200FF02A202FF69CA
        69FFF7FEF7FFFFFFFFFFFFFFFFFFD2E1D2FF1F951FFF127A12FFD5D4D5FFFAF8
        FAFFF1F1F1FFFBF4FBFF95C995FF018501FF008300FF008200FF008000FF007E
        00FF007D00FF007C00FF007C00FF007D00FF1F741FFFE7E7E7FFFF00FF00FF00
        FF00F9F9F9FFA2A2A2FF929292FF898989FF898989FF888888FF888888FFD0D0
        D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090FF7C7C7CFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE5E5E5FF7A7A7AFF787878FF787878FF777777FF7676
        76FF757575FF757575FF757575FF757575FF797979FFECECECFFFF00FF00FF00
        FF00F5F5F5FF51A051FF09B209FF00A700FF00A600FF00A200FF3DA73DFFC8C6
        C8FFC4C3C4FFC2C2C2FFBAC3BAFF2C9C2CFF009400FF008600FF7EA17EFFFFFB
        FFFFF7F7F7FFF9F6F9FFEAEFEAFF309E30FF008200FF008400FF008100FF0080
        00FF007E00FF007D00FF007C00FF007D00FF106E10FFE1E1E1FFFF00FF00FF00
        FF00F7F7F7FFA1A1A1FF949494FF8A8A8AFF8A8A8AFF888888FFA8A8A8FFFDFD
        FDFFFAFAFAFFF8F8F8FFF5F5F5FF9A9A9AFF818181FF7A7A7AFFC6C6C6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DFF787878FF797979FF777777FF7777
        77FF767676FF757575FF757575FF757575FF727272FFE7E7E7FFFF00FF00FF00
        FF00F5F5F5FF51A051FF09B409FF00A800FF00A700FF00A600FF0E980EFF0F88
        0FFF0A860AFF0A840AFF088808FF009700FF009900FF009500FF288128FFDBD6
        DBFFFFFEFFFFF8F8F8FFFFFCFFFF8DC88DFF008400FF008400FF008400FF0081
        00FF008000FF007E00FF007D00FF007D00FF0C6F0CFFE0E0E0FFFF00FF00FF00
        FF00F7F7F7FFA2A2A2FF959595FF8B8B8BFF8A8A8AFF8A8A8AFF898989FF8282
        82FF7E7E7EFF7D7D7DFF7E7E7EFF828282FF838383FF818181FF8B8B8BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1FF797979FF797979FF797979FF7777
        77FF777777FF767676FF757575FF757575FF717171FFE6E6E6FFFF00FF00FF00
        FF00F6F6F6FF54A254FF0AB50AFF00A900FF00A800FF00A700FF00A700FF00A6
        00FF00A500FF00A300FF00A100FF009E00FF009A00FF009A00FF008600FF5F8E
        5FFFFCF8FCFFFDFEFDFFFEFCFEFFECF4ECFF30A030FF008300FF008500FF0084
        00FF008100FF008000FF007F00FF007E00FF137313FFE4E4E4FFFF00FF00FF00
        FF00F7F7F7FFA4A4A4FF969696FF8B8B8BFF8B8B8BFF8A8A8AFF8A8A8AFF8A8A
        8AFF898989FF888888FF878787FF868686FF848484FF848484FF7A7A7AFFACAC
        ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EFF787878FF797979FF7979
        79FF777777FF777777FF767676FF767676FF767676FFEAEAEAFFFF00FF00FF00
        FF00FCFCFCFF68A968FF11BA11FF00AA00FF00A900FF00A800FF00A700FF00A6
        00FF00A400FF00A200FF00A100FF00A000FF009D00FF009B00FF009A00FF077F
        07FFBFC8BFFFFFFFFFFFFDFDFDFFFFFFFFFFA0D3A0FF018801FF008600FF0086
        00FF008400FF008100FF008000FF008000FF287C28FFEFEFEFFFFF00FF00FF00
        FF00FCFCFCFFAEAEAEFF9C9C9CFF8C8C8CFF8B8B8BFF8B8B8BFF8A8A8AFF8A8A
        8AFF898989FF888888FF878787FF878787FF858585FF848484FF848484FF7979
        79FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FF7B7B7BFF7A7A7AFF7A7A
        7AFF797979FF777777FF777777FF777777FF808080FFF2F2F2FFFF00FF00FF00
        FF00FF00FF008CAE8CFF1FC21FFF00AB00FF00AB00FF00A900FF00A800FF00A7
        00FF00A600FF00A400FF00A200FF00A100FF00A000FF009D00FF009C00FF0091
        00FF519151FFFBF6FBFFFFFFFFFFFFFFFFFFF6FBF6FF3EA83EFF008500FF0088
        00FF008500FF008400FF008100FF008200FF508850FFFDFDFDFFFF00FF00FF00
        FF00FF00FF00BABABAFFA7A7A7FF8C8C8CFF8C8C8CFF8B8B8BFF8B8B8BFF8A8A
        8AFF8A8A8AFF898989FF888888FF878787FF878787FF858585FF858585FF7F7F
        7FFFA7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FF797979FF7B7B
        7BFF797979FF797979FF777777FF787878FF919191FFFDFDFDFFFF00FF00FF00
        FF00FF00FF00BAC4BAFF30C030FF02AE02FF00AB00FF00AB00FF00A900FF00A8
        00FF00A700FF00A600FF00A400FF00A200FF00A100FF00A000FF009D00FF009C
        00FF058305FFBAC5BAFFFFFFFFFFFFFFFFFFFFFFFFFFB2DCB2FF048C04FF0089
        00FF008800FF008500FF008400FF008400FF8BA58BFFFF00FF00FF00FF00FF00
        FF00FF00FF00CFCFCFFFAEAEAEFF8F8F8FFF8C8C8CFF8C8C8CFF8B8B8BFF8B8B
        8BFF8A8A8AFF8A8A8AFF898989FF888888FF878787FF878787FF858585FF8585
        85FF7A7A7AFFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF7E7E7EFF7B7B
        7BFF7B7B7BFF797979FF797979FF797979FFB1B1B1FFFF00FF00FF00FF00FF00
        FF00FF00FF00F0F0F0FF59B559FF11B811FF00AB00FF00AB00FF00AB00FF00AA
        00FF00A800FF00A700FF00A600FF00A400FF00A200FF00A100FF00A000FF009F
        00FF009400FF4B904BFFFAF5FAFFFFFFFFFFFFFFFFFFFCFDFCFF53B253FF0089
        00FF008A00FF008800FF008700FF0D810DFFD7DAD7FFFF00FF00FF00FF00FF00
        FF00FF00FF00F3F3F3FFB5B5B5FF9B9B9BFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C
        8CFF8B8B8BFF8A8A8AFF8A8A8AFF898989FF888888FF878787FF878787FF8686
        86FF818181FFA4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9FF7B7B
        7BFF7C7C7CFF7B7B7BFF7A7A7AFF7B7B7BFFE1E1E1FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009BB49BFF31C631FF01AD01FF00AC00FF00AB00FF00AB
        00FF00AA00FF00A800FF00A700FF00A600FF00A400FF00A200FF00A100FF00A0
        00FF009F00FF048504FFB5C2B5FFFFFFFFFFFFFFFFFFFFFFFFFFE0F4E0FF28A0
        28FF008900FF008A00FF008D00FF5D955DFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00C1C1C1FFB2B2B2FF8D8D8DFF8D8D8DFF8C8C8CFF8C8C
        8CFF8C8C8CFF8B8B8BFF8A8A8AFF8A8A8AFF898989FF888888FF878787FF8787
        87FF868686FF7B7B7BFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A
        9AFF7B7B7BFF7C7C7CFF7D7D7DFF9B9B9BFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E1E2E1FF55C155FF11B711FF00AC00FF00AB00FF00AB
        00FF00AB00FF00AA00FF00A800FF00A700FF00A600FF00A400FF00A200FF00A0
        00FF00A100FF009500FF508F50FFD7D5D7FFD7D8D7FFD5D7D5FFE5E0E5FF6EBB
        6EFF008A00FF008D00FF038D03FFC1CAC1FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E8E8E8FFBDBDBDFF9A9A9AFF8D8D8DFF8C8C8CFF8C8C
        8CFF8C8C8CFF8C8C8CFF8B8B8BFF8A8A8AFF8A8A8AFF898989FF888888FF8787
        87FF878787FF818181FFA6A6A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACA
        CAFF7C7C7CFF7D7D7DFF7E7E7EFFD3D3D3FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A3B8A3FF3ECB3EFF04B004FF00AC00FF00AB
        00FF00AC00FF00AB00FF00A900FF00A800FF00A700FF00A600FF00A400FF00A3
        00FF00A100FF00A100FF019101FF0E840EFF0E840EFF0E820EFF118311FF0F91
        0FFF009100FF019601FF679F67FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6C6C6FFBBBBBBFF909090FF8D8D8DFF8C8C
        8CFF8D8D8DFF8C8C8CFF8B8B8BFF8B8B8BFF8A8A8AFF8A8A8AFF898989FF8888
        88FF878787FF878787FF808080FF7F7F7FFF7F7F7FFF7E7E7EFF808080FF8686
        86FF7F7F7FFF828282FFA3A3A3FFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FCFCFCFF89B689FF37CC37FF02AF02FF00AC
        00FF00AC00FF00AB00FF00AB00FF00A900FF00A800FF00A700FF00A600FF00A4
        00FF00A200FF00A100FF00A100FF009F00FF009C00FF009A00FF009700FF0095
        00FF069D06FF3F9B3FFFEEEEEEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FCFCFCFFC2C2C2FFB8B8B8FF8F8F8FFF8D8D
        8DFF8D8D8DFF8C8C8CFF8C8C8CFF8B8B8BFF8B8B8BFF8A8A8AFF8A8A8AFF8989
        89FF888888FF878787FF878787FF868686FF858585FF848484FF828282FF8181
        81FF888888FF979797FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00F2F2F2FF87BB87FF3CCC3CFF0AB3
        0AFF00AD00FF00AB00FF00AB00FF00AB00FF00A900FF00A800FF00A700FF00A6
        00FF00A400FF00A200FF00A100FF00A000FF009D00FF009A00FF029A02FF0EA5
        0EFF44A344FFE0E3E0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00F5F5F5FFC6C6C6FFBBBBBBFF9595
        95FF8D8D8DFF8C8C8CFF8C8C8CFF8C8C8CFF8B8B8BFF8B8B8BFF8A8A8AFF8A8A
        8AFF898989FF888888FF878787FF878787FF858585FF848484FF858585FF9090
        90FF9E9E9EFFE8E8E8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F8F8F8FF96B696FF54CF
        54FF2AC42AFF07B007FF00AB00FF00AA00FF00AA00FF00A900FF00A800FF00A7
        00FF00A500FF00A400FF00A200FF00A000FF02A002FF0EA90EFF1CAD1CFF65A7
        65FFE9EAE9FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F9F9F9FFC4C4C4FFC7C7
        C7FFAEAEAEFF929292FF8C8C8CFF8C8C8CFF8C8C8CFF8B8B8BFF8B8B8BFF8A8A
        8AFF898989FF898989FF888888FF878787FF888888FF929292FF9B9B9BFFAAAA
        AAFFEEEEEEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C9CF
        C9FF87B887FF4EC84EFF2CC62CFF11B611FF04AE04FF00AC00FF00AA00FF00A9
        00FF00A900FF02A802FF09AA09FF17B417FF26B526FF5CAB5CFFBAC7BAFFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9D9
        D9FFC4C4C4FFC0C0C0FFAFAFAFFF999999FF909090FF8D8D8DFF8C8C8CFF8B8B
        8BFF8B8B8BFF8B8B8BFF909090FF9C9C9CFFA4A4A4FFACACACFFD0D0D0FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CDD2CDFF95B695FF6BBE6BFF4AC24AFF36BE36FF31BB31FF30BA
        30FF30BA30FF38B938FF51B651FF7CAE7CFFBCC8BCFFFCFCFCFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DCDCDCFFC4C4C4FFC1C1C1FFBABABAFFB0B0B0FFACACACFFABAB
        ABFFABABABFFADADADFFB2B2B2FFB7B7B7FFD2D2D2FFFCFCFCFFFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00F7F7F7FFDCDFDCFFC1C8C1FFBBC4BBFFBBC4
        BBFFBEC6BEFFD4D8D4FFF4F4F4FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00F7F7F7FFE6E6E6FFD3D3D3FFD0D0D0FFD0D0
        D0FFD2D2D2FFE0E0E0FFF6F6F6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = BtnConfirmarClick
    end
    object btnImpRecibo: TCBitBtn
      Left = 6
      Top = 284
      Width = 75
      Height = 28
      Caption = 'Recibo'
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BABA
        BBFFA19D99FFA29C99FFA2A2A3FFA2A1A1FFA2A2A1FFA2A1A2FFA2A1A2FFA2A1
        A1FFA2A2A1FFA1A1A1FF9F9FA0FFA8A8A8FFFF00FF00FF00FF00FF00FF00FF00
        FF00F8F8F8FFFAF9F9FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFF8F8F8FFFF00FF00FF00FF00FF00FF00FF00FF00AAA8
        A7FFF0E1D6FFF0E1D6FFECE3DDFFECE3DCFFEDE5DEFFEEE6DFFFEEE6DFFFEEE6
        E0FFEEE6E1FFEDE6E1FFEFE8E3FFE4DFDBFFFF00FF00FF00FF00FF00FF00FF00
        FF00FAF6F3FFFAF6F3FFF9F6F5FFF9F6F4FFF9F7F5FFFAF7F5FFFAF7F5FFFAF7
        F6FFFAF7F6FFF9F7F6FFFAF8F6FFFAF9F9FFFF00FF00FF00FF00FF00FF00AEAE
        AEFFE3DCD7FFE5DBD5FFE3E3E5FFE2E1E2FFE3E2E1FFE3E2E2FFE3E2E2FFE3E2
        E2FFE2E2E1FFE2E1E0FFE3E2E2FFD9D9D9FFFF00FF00FF00FF00FF00FF00FF00
        FF00F7F5F3FFF7F4F2FFF6F6F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF9F9F9FFFF00FF00FF00FF00FF00FF00ACAD
        AEFFE7E1DBFFE7E0DAFFE4E4E3FFE5E1DEFFE6E6E7FFE6E6E6FFE6E7E7FFE6E7
        E7FFE5E6E5FFE5E5E5FFE6E6E6FFDCDDDDFFFF00FF00FF00FF00FF00FF00FF00
        FF00F8F6F4FFF8F6F4FFF7F7F6FFF7F6F5FFF7F7F8FFF7F7F7FFF7F8F8FFF7F8
        F8FFF7F7F7FFF7F7F7FFF7F7F7FFFAFAFAFFFF00FF00FF00FF00FF00FF00BCBC
        BBFFDED5CEFFE5D8CDFFE0D6D0FFE4D6CDFFE5DBD5FFE4DBD4FFE8E8E8FFE8E8
        E8FFE7E7E7FFE6E6E6FFE7E7E7FFDEDEDEFFFF00FF00FF00FF00FF00FF00FF00
        FF00F5F3F1FFF7F3F0FFF6F3F1FFF7F3F0FFF7F4F2FFF7F4F2FFF8F8F8FFF8F8
        F8FFF8F8F8FFF7F7F7FFF8F8F8FFFAFAFAFFFF00FF00FF00FF00FEFEFEFFD8CE
        C5FFD7CAC2FFE8D7CAFFE6DCD6FFE5DCD6FFE4D6CCFFE7DAD0FFE6DDD7FFE8E5
        E2FFE9EAEAFFE8E8E8FFE9E9E9FFE0E0E0FFFF00FF00FF00FF00FF00FF00FF00
        FF00F3EFEDFFF8F3EFFFF7F4F3FFF7F4F3FFF7F3F0FFF8F4F1FFF7F5F3FFF8F7
        F6FFF8F8F8FFF8F8F8FFF8F8F8FFFAFAFAFFFF00FF00FF00FF00FEFCFBFFD4C1
        B4FFE1D3C8FFE6D6CBFFE9E2DDFFE6E0DCFFE3D7CFFFE7DAD0FFE5D8CEFFE9E3
        E0FFEBEDEEFFEAEAEAFFEBEBEBFFE2E2E2FFFF00FF00FF00FF00FF00FF00FF00
        FF00F6F2EFFFF7F3EFFFF8F6F5FFF7F6F4FFF6F3F1FFF8F4F1FFF7F3F0FFF8F6
        F6FFF9F9FAFFF8F8F8FFF9F9F9FFFBFBFBFFFF00FF00FF00FF00FBF5F0FFD6C2
        B4FFE4DBD6FFE4DBD2FFE6DCD4FFE6DBD3FFE9E1DBFFE9E7E5FFE4D9D0FFEAE0
        D9FFEDECECFFECECEDFFEDEDEDFFE4E4E4FFFF00FF00FF00FF00FF00FF00FF00
        FF00F7F4F3FFF7F4F1FFF7F4F2FFF7F4F2FFF8F6F4FFF8F8F7FFF7F3F1FFF8F6
        F3FFF9F9F9FFF9F9F9FFF9F9F9FFFBFBFBFFFF00FF00FF00FF00F5F0ECFFDBC8
        B8FFE6DBD4FFE6D8D1FFE7DDD5FFE7DCD4FFEBE1DAFFEBE6E3FFE5D9D1FFEBE2
        DBFFEFEEEEFFEFEFF0FFEFEFEFFFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00
        FF00F7F4F2FFF7F3F1FFF8F5F2FFF8F4F2FFF9F6F4FFF9F7F6FFF7F3F1FFF9F6
        F4FFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFFF00FF00FF00FF00FCFBFAFFE1D0
        C2FFE3D5CBFFE8D9CEFFEEE8E2FFEBE7E4FFE7DBD3FFE9DCD2FFE8DBD0FFEEEA
        E6FFF2F3F4FFF4F4F4FFF5F5F5FFE9E9E9FFFF00FF00FF00FF00FF00FF00FF00
        FF00F6F2EFFFF8F3F0FFFAF8F6FFF9F8F7FFF8F4F2FFF8F4F1FFF8F4F1FFFAF8
        F7FFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFF00FF00FF00FF00FF00FF00C0B6
        B0FFE4DAD5FFEDDED3FFEDE3DBFFECE3DBFFE8DAD2FFEDE0D8FFEFE9E5FFF0EF
        EDFFDADBDBFFD0D0D0FFE7E7E7FFE8E8E8FFFF00FF00FF00FF00FF00FF00FF00
        FF00F7F4F2FFF9F5F2FFF9F6F4FFF9F6F4FFF8F4F1FFF9F6F3FFFAF8F7FFFAFA
        F9FFF4F4F4FFF1F1F1FFF8F8F8FFFBFBFBFFFF00FF00FF00FF00FF00FF00B3B4
        B5FFECE6E1FFF2E9E3FFEAE1DCFFEBDFD6FFEFE9E6FFEEE7E2FFF7F9F9FFF9FA
        FAFFCFCECEFFCDCDCDFFCCCCCCFFDBDBDBFFFF00FF00FF00FF00FF00FF00FF00
        FF00F9F8F6FFFBF8F6FFF8F6F4FFF9F5F3FFFAF8F7FFFAF8F6FFFCFDFDFFFDFD
        FDFFF1F0F0FFF0F0F0FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00A9A9
        A9FFF3F2F2FFFAF9F8FFF5F5F5FFF6F3F2FFF9FAFBFFF9F9F9FFFCFCFCFFE9E9
        E9FFCCCCCCFFF2F2F2FFFAFAFAFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00
        FF00FBFBFBFFFDFDFCFFFCFCFCFFFCFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFF8F8
        F8FFF2F2F2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BFBF
        BFFFF1F1F0FFFDFBF9FFFAFBFBFFFAFBFBFFF9F9FAFFFBFBFCFFF4F4F4FFDFDF
        DFFFFBFBFBFFFEFEFEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FCFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFEFE
        FEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Margin = 5
      NumGlyphs = 2
      TabOrder = 8
      Visible = False
      OnClick = btnImpReciboClick
    end
    object BtnSelTodos: TCBitBtn
      Tag = 1
      Left = 11
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Todos'
      Enabled = False
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
      TabOrder = 0
      OnClick = BtnSelTodosClick
    end
    object BtnNenhum: TCBitBtn
      Tag = 1
      Left = 10
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Nenhum'
      Enabled = False
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
    object EdAdiantamento: TCEdit
      Left = 3
      Top = 182
      Width = 88
      Height = 19
      TabStop = False
      Alignment = taRightJustify
      BorderStyle = bsNone
      BevelKind = bkTile
      Color = 14149350
      ReadOnly = True
      TabOrder = 5
      Text = ''
      DataType = ftUnknown
      KeyMode = kmFormaTtedNumber
      Decimals = 2
    end
  end
  object CPanel1: TCPanel [10]
    Left = 0
    Top = 587
    Width = 1162
    Height = 26
    Align = alBottom
    TabOrder = 7
    object CLabel60: TCLabel
      Left = 136
      Top = 7
      Width = 114
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo total listado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CLabel61: TCLabel
      Left = 367
      Top = 7
      Width = 140
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Saldo total selecionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEsomaTotal: TCDBEdit
      Left = 251
      Top = 4
      Width = 110
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'somaTotal'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = DBEvlDescontoEnter
      DecimalControl = True
      KeyMode = kmNormal
    end
    object DBEsomaSelecao: TCDBEdit
      Left = 513
      Top = 4
      Width = 107
      Height = 19
      TabStop = False
      BevelKind = bkTile
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = 14149350
      DataField = 'somaSelecao'
      DataSource = dsGrid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnEnter = DBEvlDescontoEnter
      DecimalControl = True
      KeyMode = kmNormal
    end
  end
  inherited imgIcones: TImageList
    Left = 656
    Top = 8
    Bitmap = {
      494C010108000900440110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000157030001570300015703000157030001570300015703000157
      0300015703000157030001570300015703000000000000000000000000006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000095655F00A5696A00A5696A00A569
      6A00A5696A0001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00015703000000000000000000A5736B00DEB5
      A500D6ADA500D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A5
      9C00D6A59C00BD948C00636363000000000000000000F7F7F709C9CACA3BB4B4
      B65BCDCDCE34E6E6E619F3F3F30C000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFF4F6F6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEAFFF8F9F8FF0000000098686000FBE5C000F4D5AD00F0CF
      9F00EFCA960001570300FFFFFF00FFFFFF00004B0000004B0000004B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00015703000000000000000000BD847300F7E7
      D600990033009900330099003300F7CEAD00F7CEAD00FFD6AD00FFD6AD00FFD6
      AD00FFD6A500E7BDB5006363630000000000ECECEC13B2B2B34EA1B6BBF3C4D7
      D7FEB9CDD0FDA4B5B9E8959FA4C4979C9F99A8A9AC6BC8C8C93AE5E5E51AF6F6
      F60A00000000000000000000000000000000F4F4F4FFF0F0EFFFB9B9B8FFEBEB
      E9FFF0EFEEFFF0F0EEFFEEEEEEFFE2E2E2FFE9E9E9FFF9F8F8FFF1F1F0FFE1E0
      DFFFF6F5F4FFE3E2E1FFFAF9F8FF000000009D6B6200FCE7C900F2D5B500F0D0
      A900EECB9E0001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF0002630500004B
      0000EFF6F000FFFFFF00FFFFFF00015703000000000000000000BD847300EFE7
      DE00FFE7CE00FFE7CE00FFE7C600FFDEC600F7CEAD00FFD6B500FFD6B500F7CE
      AD00FFD6A500E7BDB5006363630000000000D2D2D22D959596709FB9BCFEC5D8
      D8FEC3D7D7FEB8CFD0FEB0C9CAFEABC5C7FEA7C1C5FEA7BEC5FDA0B1B8EC97A0
      A7C3B2B4B871000000000000000000000000FBFBFBFFC3BBB6FFC4BEBBFFC8C4
      BEFFCDC7C5FFCBC7C5FFCBC6C1FFCDC5C4FFCCC8C3FFCDC7C7FFCDC8C3FFCCC9
      C5FFCDCAC6FFD3C9C7FFD0CBC8FF00000000A36F6400FEEED400F4DDC000F2D7
      B500F0D1AA0001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00187F1E00004B
      0000FFFFFF00FFFFFF00FFFFFF00015703000000000000000000CE847B00EFE7
      DE00990033009900330099003300990033009900330099003300FFD6B500F7CE
      AD00FFCEBD00F7CEAD00636363000000000000000000D9D9DA289EB7BBFEB5CD
      CEFEB8CFCFFEA6C3C4FEA7C2C4FEA7C1C5FEA7C0C5FEA7C0C5FEA7BFC5FEA7BE
      C5FEA8BEC5FBD9DEE67E0000000000000000FBFBFBFFC9C3C0FFB96A1AFF8035
      0BFFAF6115FFE69C39FFE79E3BFFEED370FFFEFDF7FFF2F7CAFFCA7B22FFA255
      11FFAA5C14FFBB701BFFD0CCC7FF00000000A7746600FFF4E100F6E1CA00F3DC
      BF00F2D7B40001570300FFFFFF00FFFFFF00004B0000004B000013771A000C8C
      1800004B0000004B0000FFFFFF00015703000000000000000000C6947B00EFE7
      DE00F7E7D600FFEFD600F7E7D600FFE7C600FFDEC600FFE7CE00FFD6B500FFD6
      B500F7CEAD00F7CEAD00636363000000000000000000F5F5F610A0BCBDFEA8C1
      C4FEB3CCCCFEA7C3C4FEA7C2C5FEA7C0C5FEA7C0C5FEA7BFC5FEA7BEC5FEA7BE
      C5FEA7BDC5FEBEC9D4BFFDFDFE1300000000FBFBFBFFC8C3C0FFD08125FF9340
      12FF9E4C11FFD98B28FFECB950FFF0EC90FFEFF7BBFFECB64FFFAC5915FF9E4C
      13FFAC5B15FFBC6A17FFD2CDCAFF00000000AD786900FFFBEE00F7E7D500F4E1
      CA00F3DCBF0001570300FFFFFF00FFFFFF00004B00000A72120026AC440023BA
      41000C861600004B0000FFFFFF00015703000000000000000000CE9C8400E7E7
      E700990033009900330099003300990033009900330099003300990033009900
      3300F7CEAD00FFCEBD00636363000000000000000000F6F6F610A4C1C2FEA0B9
      BDFEB5CDCEFEB0C8CAFEAEC6C9FEABC3C7FEA9C0C4FEA9BFC5FEA9BFC6FEA9BE
      C6FEA8BCC5FEBDC8D3C2F2F3F64C00000000FCFCFCFFC9C5C3FFCD791AFFB059
      13FFA04911FFAF5714FFE7AB40FFEDDF7AFFE9B94CFFDE9225FFB86314FF953F
      0EFFA95213FFB96616FFD5D0CDFF00000000B47E6B00FFFFFB00F8EDE100F7E6
      D400F6E1C90001570300FFFFFF00FFFFFF00FFFFFF00004B00001E9A360039D7
      6700004B0000FFFFFF00FFFFFF00015703000000000000000000DEA58400EFEF
      E700FFEFDE00FFEFDE00F7E7D600FFEFD600FFDEC600FFE7CE00FFDEC600FFE7
      C600F7CEAD00E7C6B500636363000000000000000000F7F7F70EA5C2C3FE9EB8
      BBFEB5CBCDFEBACFD1FEB6CBCEFE9FC2C1FE8AC9C1FE8DC6C0FE95C3C1FE9EC1
      C3FEA6BEC5FEC0CAD5C6DCDFE78700000000FDFCFCFFCEC7C5FFBF691AFFCD76
      19FFC46E17FFAE5214FFD98522FFEAAE3EFFDE8F22FFD07A17FFC26A17FFA74A
      13FFBC6617FFAD5315FFD3CFCAFF00000000BA836D00FFFFFF00FCF4EE00FAED
      E100F8E9D50001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00004B0000004B
      0000FFFFFF00FFFFFF00FFFFFF00015703000000000000000000DEA58400FFFF
      F700990033009900330099003300990033009900330099003300990033009900
      3300FFDEBD00FFCEBD00636363000000000000000000F7F7F80DA6C2C4FE9FBC
      BCFEAFC4C9FEC4D5D7FEBCCDCFFE95D0C6FE8ED3C8FE8DD1C7FE8CD0C6FE8ACE
      C5FE89CDC4FE91CBC6F5C4D1D9BDFEFEFE11FDFDFDFFD3CDC7FFC76C16FFE086
      1FFFE29022FFD6801AFFC46717FFE29123FFE39121FFCA7016FFBD5D15FFAE4F
      14FFA84A15FFD8821EFFD4D0CBFF00000000BF877000FFFFFF00FFFBFA00FEF4
      ED00FAEEE00001570300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00015703000000000000000000DEA58400FFFF
      F700F7EFE700F7EFE700FFEFD600F7E7D600FFEFD600FFEFD600F7E7D600FFE7
      CE00FFDEC600E7C6B500636363000000000000000000F7F7F80DA6C2C4FEA4C1
      C1FEA1B9BEFECCDBDDFEC4D1D3FEA0DAD0FE98DACEFE97D9CEFE96D8CDFE95D6
      CCFE93D5CBFE99D4CDFEC0DADCD9F4F4F74AFDFDFDFFD3CCC9FFB95916FFE59C
      27FFE59722FFE1901DFFCA6D15FFCE7318FFD17617FFBA5915FFA84311FF9B38
      12FF912C10FFA54313FFD7D1CCFF00000000C48C7200FFFFFF00FFFFFF00FFFC
      FA00FCF4ED000157030001570300015703000157030001570300015703000157
      0300015703000157030001570300015703000000000000000000DEA58400FEFD
      FD0099003300CC333300CC333300CC333300FFEFD60099003300990033009900
      3300FFE7CE00E7C6B500636363000000000000000000F9F9F90BA7C2C4FCA5C3
      C3FE9CB8B9FEA7BBC0FEB3C2C5FEA8DCD4FE9EDED2FEA1E1D4FEA0E0D4FE9FDE
      D2FEA9DBD3FEC1E2DFF4DFE7EAC0E4E5EC8400000000D5CECCFFBF5E15FFD77F
      19FFE8AA38FFE59E2AFFC76919FFC16015FFBC5A16FFA43C11FF942B11FF861E
      10FF791A0EFF9F3A15FFDAD4D0FF00000000CA917400FFFFFF00FFFFFF00FFFF
      FF00FFFCFA00FCF4ED00FAEDDE00F8E7D400FCEBD300E3D3BB00B7AD9C00A569
      6A00000000000000000000000000000000000000000000000000DEA58400FEFD
      FD0099003300FFCC6600FFCC660099666600E7E7E700FFF7E700FFEFDE00FFEF
      DE00FFE7CE00E7BDB500636363000000000000000000F9F9F90AB1C9CCFAB3CC
      CCFEAEC9C9FEA6C1C1FE6A958CFE55C8ABFE0FB58EFE1EB593FE33B99CFE55C0
      AAFE7EC0B6FEC0C3C8A8D7D8DD93E3E3EC7B00000000D4CECFFFC38F68FFCFA2
      6BFFD6AE73FFD4AC72FFC18E6BFFC4936BFFBA8865FFAE7A67FFA66F65FF9A68
      63FF9D6A61FF9C6B62FFDBD7D2FF00000000CE957600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFCFA00FCF6EB00FAEFE000A5696A00A5696A00A5696A00A569
      6A00000000000000000000000000000000000000000000000000DEA58400FEFD
      FD0099003300FFFF6600FFECCC0099666600FFEFD600F7E7D600FFD6CE00FFD6
      CE00F7B5AD00F7B5AD0063636300000000000000000000000000C5D4D8F5D9E6
      E6FED4E3E3FECEDDDDFE89B3A9FE78E2C8FE01CA97FE38AE90C722CA9FF83DD3
      ADFE57D7B6FDAFC2BD55000000000000000000000000E3E1DFFFEAE5E5FFEBEA
      E8FFEEECECFFEDECEBFFEDECEBFFEEECECFFEDECECFFEEEDEDFFEDEDEDFFEEED
      ECFFEEEDECFFEDECEAFFE7E5E3FF00000000D3977800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFC00F4EBE600A5696A00E2A35B00EF993800BB70
      4F00000000000000000000000000000000000000000000000000DEA58400FEFD
      FD00FF993300FF993300FF993300FF993300FFFFF700F7EFE700F7A54200F7A5
      4200D68C42006363630000000000000000000000000000000000FDFDFD1BF9FA
      FB3CF8F8FA53E6E8E96C8DA39EA789E6CFFE0CCD9DFE92BBB06D7CA69B8B64DE
      C0FE83E5CCFE85DAC4E8F8F9F90F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D59A7900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8FE00A5696A00E5A55F00C2805C000000
      0000000000000000000000000000000000000000000000000000DEA58400FEFD
      FD00FEFDFD00FEFDFD00FFFFF700FEFDFD00FFFFF700FEFDFD00DEA58400E7AD
      6B00636363000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F70A9EB7B06D86BBAD7E00000000EDEDED146FB4
      A2C5AAEDDCFEC1F1E5FEEBF2F02A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0906B00D0906B00D0906B00D090
      6B00D0906B00D0906B00D0906B00D0906B00A5696A00BB7F6A00000000000000
      0000000000000000000000000000000000000000000000000000DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA584006363
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDDF
      DE2491B9AE9BA7C6BD79000000000000000000000000F0F0F0FFCBCBCBFFADAD
      ADFF9D9D9DFF909090FF848484FF818281FF818281FF868686FF939393FFA2A2
      A2FFB5B5B5FFD6D6D6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000C7BCB7FFC9BDB8FFC8BF
      BCFFC5C5C5FFC5C5C6FFC5C4C3FFC5C3C2FFC5C3C2FFC5C3C2FFC5C1BFFFC8BB
      B6FFC8BDB8FFC9BEB9FFC8BCB7FFE6E6E6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFF8F98A1FFBBBDBEFF0000000000000000C7C7C7FF707070FF4E4E
      4EFF494D49FF6E776EFF919F92FFA6B4A6FFA6B5A6FF93A193FF6F7970FF4C4F
      4CFF535353FF888888FFE1E1E1FF000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      000000000000000000000000000000000000FDF9F7FFE26C2FFFED8444FFC77B
      58FFD6CEC6FFD58C5EFFCBC0B8FFCFD1D2FFCCCCCCFFC9CBCDFFC4AC9CFFEC7E
      3FFFCF5B28FFEB8346FFF18042FFB5A39CFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF3F5B78FF517DAAFF406892FFBDBFC0FF00000000F4F4F4FFA5A6A5FF6E7A
      6EFFAFC4AFFFD2E5D2FFDAEADAFFDAEADAFFDBEADBFFD9EBDAFFD3E6D3FFB3C7
      B3FF737F73FFB0B0B0FF00000000000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000FCF9F8FFE1793BFFED8E50FFC680
      5EFFD5C6BBFFDB7C3AFFCDBCAFFFD8D9D9FFD1D1D1FFCED0D1FFC3AF9FFFD880
      44FFC55F2EFFEB8E52FFF18D4FFFB8A8A1FF00000000F4F5F5FF000000000000
      000000000000000000000000000000000000000000000000000000000000445F
      7DFF4F7BA8FF86A4C1FFADC3D9FF929BA4FF00000000E1E2E1FF7A8C79FFADCA
      ACFFBFDABEFFBED7BBFFBCD4B8FFBBD4B8FFBBD4B8FFBBD4B8FFBED7BBFFBFDA
      BEFFB0CEB0FF7C907CFFDEE0DEFF000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B0000000000FCF9F7FFE1793CFFE88B4EFFBE7E
      5FFFDECEC3FFD97938FFD5C4B7FFE4E6E7FFDFDFDFFFDADCDEFFCBB6A7FFD880
      43FFBA582BFFE2894EFFF18D4FFFB8A8A0FFBAADACFFA6422BFF844D40FF856F
      6EFFACACACFFE6E6E6FFFEFEFEFFF9F9F9FF00000000E6E5E5FF44546AFF4E7C
      AAFF7F9EBCFFC8D6E5FF667D95FFFDFDFDFF00000000768D7AFF80B08DFF97B8
      93FF90A896FF90A4A0FF90A3A6FF92A5AAFF96A4ACFF92A2A6FF8EA3A0FF8EA4
      97FF91AE91FF86AE86FF768C76FF000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B0000000000FCF9F8FFE3793BFFD98349FFBF7F
      5FFFEDEBE7FFD2966CFFE5E0DCFFF5FCFFFFEFF5F8FFEBF3F7FFD2C0B3FFD67A
      3FFFBA5829FFD5834AFFEF8C4DFFB8A8A1FFB09E9CFFD0724EFFD7713EFFDA72
      3EFFD06132FFA76D63FFB0A2A3FFCAACA9FFB39FA0FF9D8F90FFC0AEADFF7287
      9EFFC7D7E8FF6C819AFFFEFEFEFF00000000B4BBB3FF548560FF65A990FF657F
      89FF6F7CA2FF7381A9FF7886B1FF7088B2FF5C94ADFF698FB6FF717EA9FF6C7B
      A2FF616D89FF637E66FF5B8557FFADB5ADFF0000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B0000000000FCF9F8FFDA7439FFD8864DFFC561
      2CFFB86C4AFFBA6F50FFBA6C49FFBE6C47FFBE6B47FFBA6B47FFB5552AFFB74C
      1CFFC45F2CFFD8854CFFE48549FFB8A8A1FFAD9694FFD38267FFD17444FFCF68
      35FFCFA99FFFDFBBAFFFF0C6B3FFFADED0FFF1C7B4FFDAAC9FFFAD9A9CFFE0D9
      D6FF727F8FFFFEFEFEFF0000000000000000758875FF619560FF55795EFF6172
      9DFF7284AFFF7E94BEFF7A8FBCFF7B8D9DFF639194FF5C8B9BFF7283B2FF7081
      ABFF5D709FFF486D7CFF519778FF708673FF0000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B0000000000FDF9F8FFD37237FFD1753EFFC7A0
      8EFFCFA593FFCDA592FFCFA592FFCEA492FFCEA492FFCFA592FFCEA695FFCEA8
      97FFC89E8CFFD2753DFFDE8248FFB8A8A1FFAB8F8CFFE5A187FFCF7D59FFD59D
      83FFDCB7AAFFF1C7B0FFF4D7C5FFF4DAC9FFF4D7C7FFF2CBB3FFD9A89AFFA186
      7FFFE7D6D4FF000000000000000000000000567254FF5D9D72FF4E7E69FF6574
      9AFF7F97C3FF93B2DAFF7991B7FF5C9CA2FF599FA2FF697D89FF7A91BFFF778C
      B6FF5B6C99FF3F5C64FF57966EFF567559FF0000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B0000000000FDF9F8FFD07036FFC66B3BFFEEF9
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE9F4FAFFC76936FFDD8247FFB8A8A0FFA68985FFF3B89EFFCD8269FFDFC7
      C2FFE29F7EFFEFC4ABFFEFC6AEFFEFC8B2FFF0C7B0FFEFC2A8FFE5A484FFB6A0
      9FFFC27D66FF0000000000000000000000004E6E4EFF619462FF5C8F5EFF506B
      73FF7B92C0FF97B5DAFF869FC9FF5B758FFF3A7B87FF6B85A6FF8CA7D2FF7283
      B0FF4A5C71FF48826DFF5C9B72FF506F4DFF0000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B0000000000FDF9F8FFD17036FFC56A3AFFF0F7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF3F7FFC76834FFDD8247FFB8A8A0FFAD8883FFF3C2AAFFD3907AFFE0C8
      BFFFEEC1AAFFF3D4C2FFF3D6C5FFEDBDA3FFEBB699FFEBB393FFE7A17CFFC5B2
      B3FFBF673BFFF8F2F2FF0000000000000000557053FF5C9469FF52A289FF528E
      6AFF4D6261FF788EB5FF94B3D9FF8DA7D0FF8A9FC8FF8CA7D1FF768CB9FF4B67
      7BFF527B53FF619865FF5E9262FF547254FF0000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B0000000000FDF9F8FFD47137FFC46A3AFFEFF6
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAF2F6FFC76834FFDE8347FFB8A8A1FFAA8580FFF7CDB5FFDB9F8AFFDCC7
      C6FFEBBFAAFFF4D8C7FFF3D8C8FFF4D8C8FFEDBEA2FFEDBB9EFFDF916CFFC1B2
      B2FFD78860FFD7A79BFF0000000000000000748673FF588C61FF5A9870FF6295
      5FFF5B8C56FF445D4EFF657A99FF7E9BC2FF819BC3FF6E81A9FF54696EFF4C87
      67FF559E7BFF60905EFF5B8B5BFF6E826EFF0000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFDB7439FFC46A3AFFF0F7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF2F6FFC76834FFE5854AFFB8A8A1FFB18781FFF8D5C1FFF1C7B2FFDDB2
      A4FFDFBDB1FFF8E0D3FFF6E0D3FFF6E0D3FFF7E2D6FFF9E4D8FFDCB3A7FFC9A7
      9CFFE9BBA4FFD5987FFFFDFCFCFF00000000B3BAB3FF4E754DFF5E8A5CFF5A7F
      5EFF5B835DFF5F905CFF51604FFF766A76FF52575EFF55765CFF639261FF6696
      65FF629569FF629362FF4D764DFFACB4ACFF0000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFE37A3CFFC76B3AFFEFF6
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAF2F6FFC56734FFEF8C4DFFB8A8A1FFB78B85FFFADDCBFFF3CFBDFFF1C7
      B1FFE4CEC7FFDFBEB4FFEECBBAFFF6DED3FFEDCABAFFDFBDB3FFDCD0CEFFEBCA
      B7FFF2D1C0FFF0CBB8FFE8D1CDFF00000000000000006A7F69FF5F7A61FF848D
      A4FF8996B0FF7F958FFF828782FFA29692FF84987EFF87AF87FF87AC87FF87AB
      87FF8CB08CFF709770FF647A64FF000000000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000FCF9F8FFE77A39FFD26F3DFFEFF7
      FBFFF5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5
      F5FFEBF2F6FFD16D38FFF49050FFB8A8A0FFBA9089FFFCE6D6FFF4D8C8FFF3D2
      C0FFF2C9B4FFE9C7B9FFE3CFCAFFDFC3BBFFE1CBC6FFD9A999FFD6927BFFB47D
      74FFCEADA7FFD8ABA0FFC08075FF0000000000000000E2E4E2FF6A7E6AFFB0BC
      B7FFC5CEDCFFBBC3D1FFB2BEBFFFAFC3B1FFB8CEB8FFB8CDB8FFB9CEB9FFC0D4
      C0FFB8CCB8FF6B7F6BFFDEE1DEFF000000000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B0000000000FEFAF7FF966252FFAF684FFFF3FB
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECF4F9FFC25D2EFFCD6435FFB9A9A1FFC0918CFFFFEEE1FFF8E0D1FFF6DA
      CAFFF4D4C4FFF7D2BFFFF9C9B2FFF6C4ABFFF4BEA3FFF0B89BFFF4B698FF8758
      51FF000000000000000000000000000000000000000000000000E6E8E6FF8F9B
      8FFFC4CDC2FFEAF1E9FFF4FAF2FFF3F9F3FFF2F8F2FFF3F9F3FFECF3ECFFC8D2
      C8FF8E9A8EFFE2E5E2FF00000000000000000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000FDF9F7FF903617FFAD512CFFD1CB
      C8FFD9CEC8FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFD9CDC7FFDACE
      C8FFCCC7C5FFC55A26FFCC5B27FFB4A39AFFB09C9BFFFFF0E4FFFFEFE1FFFDE9
      DAFFFFE5D5FFAE7B75FFB8ABABFFAD9795FFA98984FFAD8078FFBF7D70FF9976
      73FF000000000000000000000000000000000000000000000000000000000000
      0000C5CAC5FF9FA9A0FFA6B0A6FFB1BBB1FFB1BBB1FFA6B0A6FF9FA89FFFC2C8
      C2FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000FBF2EDFFFAF0ECFFFAEF
      EAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEFEAFFFAEF
      EAFFFAEFEAFFFAF0ECFFFBF0ECFFFDFDFDFFFEFEFEFFBFAAA9FFC0A6A3FFCBA8
      A3FFC89D97FFF5F4F4FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF800E001FFFFFFFF0000C00181FF
      3FF90000C001000F00010000C001000700010000C001800300010000C0018001
      00010000C001800100010000C001800100010000C001800000010000C0018000
      00010000C00180008001000FC00180008001000FC001C0038001000FC003C001
      FFFF001FC007FC41FFFF003FC00FFFE38003FE7F8000FFF18001F07F0000FFE0
      8003C0010000BFE08001C001000000808001C001000000010000C00100000003
      0000C001000000070000C001000000070000C001000000030000C00100000003
      0000C001000000010000C001000000018001C001000000018001C0010000000F
      C003F0010000000FF00FFC7F800003FF00000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 888
    Top = 192
    inherited actExecutar: TAction
      Caption = '&Confirmar'
    end
    inherited actPesquisar: TAction
      ImageIndex = 3
      OnExecute = actPesquisarExecute
    end
    object actConfirma: TAction
      Caption = '&Confirma'
      ImageIndex = 5
      OnExecute = actConfirmaExecute
    end
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    OnStateChange = dsGridStateChange
    Left = 968
    Top = 72
  end
  object cdsGrid: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM tmpRecTitulo WHERE 1=2'
    Params = <>
    ProviderName = 'dspGrid'
    AfterOpen = cdsGridAfterOpen
    OnReconcileError = cdsLookUpReconcileError
    Left = 936
    Top = 72
    object cdsGridid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsGrididEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsGrididCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsGrididDocSerie: TStringField
      FieldName = 'idDocSerie'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsGridnrTitulo: TStringField
      FieldName = 'nrTitulo'
      Required = True
      FixedChar = True
    end
    object cdsGrididParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsGrididCadGeral: TIntegerField
      FieldName = 'idCadGeral'
      Required = True
    end
    object cdsGriddescAbreviada: TStringField
      FieldName = 'descAbreviada'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsGridvlParcela: TFMTBCDField
      FieldName = 'vlParcela'
      Required = True
      Precision = 10
      Size = 2
    end
    object cdsGridSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 19
      Size = 4
    end
    object cdsGriddtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsGriddtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsGridstParcela: TStringField
      FieldName = 'stParcela'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsGridstTitulo: TStringField
      FieldName = 'stTitulo'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsGridtpConsulta: TStringField
      FieldName = 'tpConsulta'
      Required = True
      FixedChar = True
      Size = 4
    end
    object cdsGridsel: TStringField
      FieldName = 'sel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGridvlPago: TFMTBCDField
      FieldName = 'vlPago'
      Precision = 19
      Size = 4
    end
    object cdsGridvlDesconto: TFMTBCDField
      FieldName = 'vlDesconto'
      Precision = 19
      Size = 4
    end
    object cdsGridvlAcrescimo: TFMTBCDField
      FieldName = 'vlAcrescimo'
      Precision = 19
      Size = 4
    end
    object cdsGridIndice: TStringField
      FieldName = 'Indice'
      FixedChar = True
      Size = 10
    end
    object cdsGridvlReal: TFMTBCDField
      FieldName = 'vlReal'
      Precision = 19
      Size = 4
    end
    object cdsGrididUsuario: TIntegerField
      FieldName = 'idUsuario'
      Required = True
    end
    object cdsGridfator: TByteField
      FieldName = 'fator'
    end
    object cdsGridsomavlAcrescimo: TAggregateField
      FieldName = 'somavlAcrescimo'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlAcrescimo)'
    end
    object cdsGridsomavlDesconto: TAggregateField
      FieldName = 'somavlDesconto'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlDesconto)'
    end
    object cdsGridsomavlPago: TAggregateField
      FieldName = 'somavlPago'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(vlPago)'
    end
    object cdsGridsomaTotal: TAggregateField
      FieldName = 'somaTotal'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(Saldo)'
    end
    object cdsGridsomaSelecao: TAggregateField
      FieldName = 'somaSelecao'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(Saldo*fator)'
    end
  end
  object dspGrid: TDataSetProvider
    DataSet = sdsGrid
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 904
    Top = 72
  end
  object sdsGrid: TSQLDataSet
    CommandText = 'SELECT * FROM tmpRecTitulo WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 872
    Top = 72
  end
  object cdsPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsGridAfterOpen
    AfterInsert = cdsPadraoAfterInsert
    OnReconcileError = cdsLookUpReconcileError
    Left = 936
    Top = 40
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      OnValidate = cdsPadraoidEmpresaValidate
    end
    object cdsPadraoidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object cdsPadraoidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsPadraodtEmissaoIni: TDateTimeField
      FieldName = 'dtEmissaoIni'
    end
    object cdsPadraodtEmissaoFim: TDateTimeField
      FieldName = 'dtEmissaoFim'
    end
    object cdsPadraodtVencimentoIni: TDateTimeField
      FieldName = 'dtVencimentoIni'
    end
    object cdsPadraodtVencimentoFim: TDateTimeField
      FieldName = 'dtVencimentoFim'
    end
    object cdsPadraoconsolida: TBooleanField
      FieldName = 'consolida'
    end
    object cdsPadraodtLiquidacao: TDateTimeField
      Alignment = taCenter
      FieldName = 'dtLiquidacao'
    end
    object cdsPadraovlSaldoIni: TFMTBCDField
      FieldName = 'vlSaldoIni'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlSaldoFim: TFMTBCDField
      FieldName = 'vlSaldoFim'
      Precision = 19
      Size = 4
    end
    object cdsPadraoidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object cdsPadraonrTitulo: TStringField
      FieldName = 'nrTitulo'
    end
    object cdsPadraodescCadEmpresa: TStringField
      FieldKind = fkCalculated
      FieldName = 'descCadEmpresa'
      Size = 50
      Calculated = True
    end
    object cdsPadraodescAbreviada: TStringField
      FieldKind = fkCalculated
      FieldName = 'descAbreviada'
      Size = 30
      Calculated = True
    end
    object cdsPadraotpDocumento: TStringField
      FieldName = 'tpDocumento'
    end
    object cdsPadraoidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Size = 30
    end
  end
  object dsPadrao: TDataSource
    DataSet = cdsPadrao
    Left = 968
    Top = 40
  end
  object FindCliente: TCFind
    SelectClause.Strings = (
      
        'SELECT  idCliente, descCadCliente, descAbreviada, idCnpjCpf FROM' +
        ' vCadClienteContabil')
    JoinClause.Strings = (
      'WHERE StCadGeral = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descCadCliente')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCliente'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Raz'#227'o Social'
      'Nome Fantasia'
      'CNPJ/CPF')
    TypeFind = fFindNormal
    Left = 752
    Top = 8
  end
  object cdsLookUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLookUp'
    OnReconcileError = cdsLookUpReconcileError
    Left = 720
    Top = 8
  end
  object dspLookUp: TDataSetProvider
    DataSet = dmPadrao.sdsLookup
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 688
    Top = 8
  end
  object cdsConfigFinancCons: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ConfigFinancCons'
    Params = <>
    ProviderName = 'dspConfigFinancCons'
    OnReconcileError = cdsLookUpReconcileError
    Left = 936
    Top = 104
    object cdsConfigFinancConsidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsConfigFinancConsCorTREC: TStringField
      FieldName = 'CorTREC'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorTPAG: TStringField
      FieldName = 'CorTPAG'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorPREC: TStringField
      FieldName = 'CorPREC'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorPPAG: TStringField
      FieldName = 'CorPPAG'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorREC: TStringField
      FieldName = 'CorREC'
      FixedChar = True
      Size = 50
    end
    object cdsConfigFinancConsCorPAG: TStringField
      FieldName = 'CorPAG'
      FixedChar = True
      Size = 50
    end
  end
  object dspConfigFinancCons: TDataSetProvider
    DataSet = sdsConfigFinancCons
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 904
    Top = 104
  end
  object sdsConfigFinancCons: TSQLDataSet
    CommandText = 'SELECT * FROM ConfigFinancCons'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 872
    Top = 104
  end
  object sdsMovCaixa: TSQLDataSet
    CommandText = 'SELECT * FROM MovCaixa WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 128
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = sdsMovCaixa
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1008
    Top = 128
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MovCaixa WHERE 1=2'
    Params = <>
    ProviderName = 'dspMovCaixa'
    AfterOpen = cdsGridAfterOpen
    AfterInsert = cdsMovCaixaAfterInsert
    OnReconcileError = cdsLookUpReconcileError
    Left = 1040
    Top = 128
  end
  object dsMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    OnStateChange = dsGridStateChange
    Left = 1072
    Top = 128
  end
  object FindCaixa: TCFind
    SelectClause.Strings = (
      'SELECT  idCaixa, descCaixa FROM Caixa')
    JoinClause.Strings = (
      'WHERE StCaixa = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descCaixa')
    FindField = 'descCaixa'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idCaixa'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 904
    Top = 296
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 3 AND idTpMovF' +
        'inanceira = 6 AND sinal = '#39'+'#39)
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descMovFinanceira'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 872
    Top = 296
  end
  object sdsTituloRecMov: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 160
  end
  object dspTituloRecMov: TDataSetProvider
    DataSet = sdsTituloRecMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1008
    Top = 160
  end
  object cdsTituloRecMov: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM TituloRecMov WHERE 1=2'
    Params = <>
    ProviderName = 'dspTituloRecMov'
    AfterOpen = cdsGridAfterOpen
    OnReconcileError = cdsLookUpReconcileError
    Left = 1040
    Top = 160
  end
  object sdsConfigMovRec: TSQLDataSet
    CommandText = 'SELECT * FROM ConfigFinancMovRec'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 192
  end
  object dspConfigMovRec: TDataSetProvider
    DataSet = sdsConfigMovRec
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1008
    Top = 192
  end
  object cdsConfigMovRec: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ConfigFinancMovRec'
    Params = <>
    ProviderName = 'dspConfigMovRec'
    OnReconcileError = cdsLookUpReconcileError
    Left = 1040
    Top = 192
  end
  object sdsMovConta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 224
  end
  object dspMovConta: TDataSetProvider
    DataSet = sdsMovConta
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1008
    Top = 224
  end
  object cdsMovConta: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MovConta WHERE 1=2'
    Params = <>
    ProviderName = 'dspMovConta'
    AfterOpen = cdsGridAfterOpen
    AfterInsert = cdsMovContaAfterInsert
    OnReconcileError = cdsLookUpReconcileError
    Left = 1040
    Top = 224
  end
  object dsMovConta: TDataSource
    DataSet = cdsMovConta
    OnStateChange = dsGridStateChange
    Left = 1072
    Top = 224
  end
  object sdsChequeRec: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM ChequeRec WHERE 1=2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 976
    Top = 256
  end
  object dspChequeRec: TDataSetProvider
    DataSet = sdsChequeRec
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1008
    Top = 256
  end
  object cdsChequeRec: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM ChequeRec WHERE 1=2'
    Params = <>
    ProviderName = 'dspChequeRec'
    AfterOpen = cdsGridAfterOpen
    AfterInsert = cdsChequeRecAfterInsert
    OnReconcileError = cdsLookUpReconcileError
    Left = 1040
    Top = 256
    object cdsChequeRecidChequeRec: TIntegerField
      FieldName = 'idChequeRec'
      Required = True
    end
    object cdsChequeRecidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
    object cdsChequeRecidBanco: TIntegerField
      FieldName = 'idBanco'
      Required = True
    end
    object cdsChequeRecComp: TIntegerField
      FieldName = 'Comp'
    end
    object cdsChequeRecnrAgencia: TStringField
      FieldName = 'nrAgencia'
      Required = True
      FixedChar = True
    end
    object cdsChequeRecnrConta: TStringField
      FieldName = 'nrConta'
      FixedChar = True
      Size = 30
    end
    object cdsChequeRecnrCheque: TIntegerField
      FieldName = 'nrCheque'
      Required = True
    end
    object cdsChequeRecemitente: TStringField
      FieldName = 'emitente'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsChequeRecvlCheque: TFMTBCDField
      FieldName = 'vlCheque'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsChequeRecdtLancamento: TSQLTimeStampField
      FieldName = 'dtLancamento'
      Required = True
    end
    object cdsChequeRecdtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
      Required = True
    end
    object cdsChequeRecstChequeRec: TStringField
      FieldName = 'stChequeRec'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsChequeRecdtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
    end
    object cdsChequeRecidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
  end
  object dsChequeRec: TDataSource
    DataSet = cdsChequeRec
    OnStateChange = dsChequeRecStateChange
    Left = 1072
    Top = 256
  end
  object FindConta: TCFind
    SelectClause.Strings = (
      
        'SELECT  idConta, idBanco, idAgencia, idContaCorrente, descConta ' +
        'FROM vConta')
    JoinClause.Strings = (
      'WHERE StConta = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descConta')
    FindField = 'descConta'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idConta'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Banco'
      'Ag'#234'ncia'
      'Conta'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 936
    Top = 296
  end
  object FindMovFinanceiraC: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 4 AND idTpMovF' +
        'inanceira IN (7, 8) AND sinal = '#39'+'#39)
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descMovFinanceira'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 968
    Top = 296
  end
  object FindBanco: TCFind
    SelectClause.Strings = (
      'SELECT  idBanco, descBanco FROM Banco')
    JoinClause.Strings = (
      'WHERE StBanco = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descBanco')
    FindField = 'descCadCliente'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBanco'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 872
    Top = 328
  end
  object Report: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39849.459104513900000000
    ReportOptions.LastChange = 41408.544858182900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 920
    Top = 376
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 525.346630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 1.779530000000001000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome-Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 21.677180000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Empresa]  IE/RG: [IE-RG-Empresa]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 1.779530000000000000
          Top = 41.354360000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Endereco]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 1.779530000000000000
          Top = 61.252010000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Cidade]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 1.779530000000000000
          Top = 80.929190000000010000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Fone]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -0.220470000000000000
          Top = 104.606370000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 488.559370000000000000
          Top = 29.456710000000000000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          Visible = False
        end
        object Shape2: TfrxShapeView
          Left = 488.692913390000000000
          Top = 52.692950000000000000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
        end
        object Memo9: TfrxMemoView
          Left = 495.661720000000000000
          Top = 55.252010000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 495.897960000000000000
          Top = 71.370130000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[valor]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 8.118120000000000000
          Top = 116.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebi(emos) de :')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 8.338590000000000000
          Top = 139.842610000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'A import'#226'ncia de :')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 8.338590000000000000
          Top = 186.637910000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Referente a :')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 0.220470000000000000
          Top = 517.787570000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.TopLine.Style = fsDash
        end
        object Memo14: TfrxMemoView
          Left = 140.842610000000000000
          Top = 116.165430000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 140.842610000000000000
          Top = 139.842610000000000000
          Width = 559.370440000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            
              '[extenso-monetario] # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# #')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 140.842610000000000000
          Top = 187.196970000000000000
          Width = 559.370440000000000000
          Height = 56.692950000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Referencia]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 140.842610000000000000
          Top = 304.685220000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[local-data]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 378.953000000000000000
          Top = 396.905690000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Nome-Assinatura]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 378.953000000000000000
          Top = 416.819110000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Assinatura]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 7.779530000000000000
          Top = 493.630180000000000000
          Width = 363.180356430000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Nilus Solu'#231#245'es para o Agroneg'#243'cio - GO: (64)3634-1426  MS: (67)3' +
              '562-2959')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo40: TfrxMemoView
          Left = 175.960730000000000000
          Top = 253.008040000000000000
          Width = 22.677180000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[vlDescAcres]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 64.252010000000000000
          Top = 253.228510000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 546.338900000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[idRecibo]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 509.236540240000000000
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.559059999999931000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome-Empresa]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 2.000000000000000000
          Top = 21.456710000000040000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Empresa]  IE/RG: [IE-RG-Empresa]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 2.000000000000000000
          Top = 41.133889999999950000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Endereco]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 2.000000000000000000
          Top = 61.031540000000060000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Cidade]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 2.000000000000000000
          Top = 80.708719999999970000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Fone]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 104.385900000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape3: TfrxShapeView
          Left = 488.779840000000000000
          Top = 17.236240000000070000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          Visible = False
        end
        object Shape4: TfrxShapeView
          Left = 488.692913390000000000
          Top = 46.472480000000020000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
        end
        object Memo27: TfrxMemoView
          Left = 496.118430000000000000
          Top = 59.149660000000040000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[valor]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 8.338590000000000000
          Top = 115.944960000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebi(emos) de :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 8.559060000000000000
          Top = 139.622139999999900000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'A import'#226'ncia de :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 8.559060000000000000
          Top = 186.417440000000100000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Referente a :')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 141.063080000000000000
          Top = 115.944960000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Nome]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 141.063080000000000000
          Top = 139.622139999999900000
          Width = 559.370440000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            
              '[extenso-monetario] # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# #')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 141.063080000000000000
          Top = 186.976500000000000000
          Width = 559.370440000000000000
          Height = 56.692950000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Referencia]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 141.063080000000000000
          Top = 322.008039999999000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[local-data]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 379.173470000000000000
          Top = 392.685220000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Nome-Assinatura]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 379.173470000000000000
          Top = 412.598639999999000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [Cnpj-Cpf-Assinatura]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 7.937007870000000000
          Top = 507.071119999998000000
          Width = 372.180356430000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Nilus Solu'#231#245'es para o Agroneg'#243'cio - GO: (64)3634-1426  MS: (67)3' +
              '562-2959')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          Left = 495.118430000000000000
          Top = 49.913419999999970000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 174.960730000000000000
          Top = 257.008040000000100000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[vlDescAcres]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 64.252010000000000000
          Top = 257.228510000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 511.897960000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 548.000310000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[idRecibo]')
          ParentFont = False
        end
      end
    end
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 840
    Top = 376
  end
  object dsAdiantamento: TDataSource
    DataSet = cdsAdiantamento
    OnStateChange = dsChequeRecStateChange
    Left = 1120
    Top = 400
  end
  object cdsAdiantamento: TClientDataSet
    Aggregates = <
      item
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    AfterOpen = cdsGridAfterOpen
    AfterInsert = cdsAdiantamentoAfterInsert
    OnReconcileError = cdsLookUpReconcileError
    Left = 1024
    Top = 400
    object cdsAdiantamentovlAdiantamento: TCurrencyField
      FieldName = 'vlAdiantamento'
    end
    object cdsAdiantamentodtAdiantamento: TDateField
      FieldName = 'dtAdiantamento'
    end
    object cdsAdiantamentodescAdiantamento: TStringField
      FieldName = 'descAdiantamento'
      Size = 250
    end
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
      'Raz'#227'o Social'
      'Nome Fantasia'
      'Cnpj/Cpf')
    TypeFind = fFindNormal
    Left = 480
  end
  object cdsRecibo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Recibo'
    Params = <>
    ProviderName = 'dspRecibo'
    OnReconcileError = cdsLookUpReconcileError
    Left = 1104
    Top = 360
  end
  object dspRecibo: TDataSetProvider
    DataSet = sdsRecibo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 1072
    Top = 360
  end
  object sdsRecibo: TSQLDataSet
    CommandText = 'SELECT * FROM Recibo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 1040
    Top = 360
  end
end
