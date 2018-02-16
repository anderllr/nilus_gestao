inherited FrmCadMovCaixa: TFrmCadMovCaixa
  Caption = 'Movimento de Caixa'
  ClientHeight = 473
  ClientWidth = 913
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000065636211030203470000001000000000333333430E0E0E81141414821010
    107E0909096E000000500000002F000000130000000400000000000000000000
    0000908C8E83636C63F30004009E34323454ACACACE2AFB0AFFFC8C8C8FFD1D1
    D1FFB3B3B3FA8C8C8CEF6B6B6BDA3C3C3CBA1B1B1B940909097E0000004C7776
    760AB1AEB1C7BCCABCFF074B06FF456743F3CECACEFFC6C6C6FFDFDFDFFFF4F4
    F4FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFECECECFFA0A0A0FF060606746161
    611EA7A6A8DFC1C4C0FF377331FF81AE7CFFBEB9BEFFAFAFAFFFCACACAFFCDCD
    CDFFE1E1E1FFF0F0F0FFF9F9F9FFFCFCFCFFFFFFFFFFA2A2A2F40101014F6566
    652CBEBCBEEEBEC1BDFF146B12FF83B083FFC2BCC2FFB7B8B8FFD1D1D1FFD0D0
    D0FFC9C9C9FFC9C9C9FFD0D0D0FFCDCDCDFFEBEBEBFF808080EA0000003C7878
    7838C3C0C3F2CACBCAFF147E11FF7BB97AFFC3B9C3FFBDBDBCFFD7D7D6FFD7D7
    D7FFD3D3D3FFD1D1D1FFD0D0D0FFC6C6C6FFE3E3E3FF707070E3000000337272
    7243CECACEF8BCBDBBFF147611FF80B67FFFD8CBDAFFDDD9E1FFDCDAE0FFDDDD
    DEFFD1D1D1FFD4D4D4FFD0D0D0FFC7C7C7FFE1E1E1FF636363DD0000002B7878
    784FCCCACDFDC2C4C2FF1B7619FF84B684FFA4B697FF8AA671FF959E81FFB3B3
    AAFFDFDEDFFFDCDCDCFFD3D3D3FFB0B0B0FFD1D1D1FF5F5F5EDC0000002D9A9A
    9A5AD5D2D5FFBBBDBBFF1D731BFF86B387FF72B263FF298902FF2A5B01FF5264
    2FFFEBEBEBFFCDCCCEFFC0C0C0FF959595FF888888FF3E3D3FE2000000379696
    9666CFCDCFFFC1C3C1FF277624FF81AE81FF84C480FF2EBF1BFF359A11FF4D86
    23FFDDDEDAFFC8C7CAFFC0C2C1FF7C777BFF362F37FF11150DE9000000318181
    8177DFDDDFFFC9C8C8FF2A7129FF6AA56BFFA1B8A0FF66C561FF67BC5AFF5DA9
    46FFCAD4C5FFD8D4D9FFBCB5BFFF629350FF2FB216FF183A0490000000028787
    8788D6D5D6FFD7D4D7FF397138FF529F52FFACBAACFFB4BAB6FFC2C4C2FFC8CB
    CAFFCFCFCEFFD9D5D8FFDCC5DEFF70B95CFF1B7E03BA0507010E000000007D7D
    7D9DDEDEDEFFDEDADEFF577B55FF287A27FF51AA4FFF66C466FF81CA80FF95C9
    94FF9FCF9FFF97C296FE80B881D850BF45C0031A015D00000000000000008181
    81B7E6E6E6FFE1E1E2FFBCC0BBFFA2B0A2FFA7B8A7FFA1B6A0FF7DC17CFF7BD4
    7CFF85D585FF6ABE6AFF179C16CB30DF30B91A4E16A400000016000000009C9C
    9CD9ECECECFFE1E1E1FFEAE8EAFFC0BCC1F3B5B0B5E5B7B0B6E68A9189E77B8F
    79E7849A84EA6A8068DE2946268D2F522C82192D14730000000B000000009393
    93A1B1B1B1E5BEBDBDE48E8F8ECA232323405A58582361605F256B6569256961
    672670696F28554B522100000000000000000000000000000000000000008803
    0000800000000000000000000000000000000000000000000000000000000000
    0000000000000000000000010000000300000001000000010000001F0000}
  ExplicitWidth = 929
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel6: TBevel [0]
    Left = 0
    Top = 36
    Width = 913
    Height = 29
    Align = alTop
    Style = bsRaised
    ExplicitWidth = 724
  end
  inherited Bevel1: TBevel
    Top = 438
    Width = 913
    ExplicitTop = 509
    ExplicitWidth = 629
  end
  inherited Bevel2: TBevel
    Top = 32
    Width = 913
    ExplicitLeft = 8
    ExplicitTop = 27
    ExplicitWidth = 913
  end
  object CLabel60: TCLabel [3]
    Left = 20
    Top = 43
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo'
  end
  object CLabel8: TCLabel [4]
    Left = 132
    Top = 43
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Caixa'
  end
  inherited PagAbas: TCPageControl
    Top = 65
    Width = 913
    Height = 373
    TabOrder = 5
    OnChange = PagAbasChange
    ExplicitTop = 65
    ExplicitWidth = 913
    ExplicitHeight = 373
    inherited TabAbas: TTabSheet
      Caption = 'Dados do movimento'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 905
      ExplicitHeight = 344
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 47
        Width = 586
        Height = 233
        TabOrder = 1
        object CLabel6: TCLabel
          Left = 24
          Top = 16
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lan'#231'amento'
        end
        object CLabel7: TCLabel
          Left = 340
          Top = 16
          Width = 119
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor do Lan'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel10: TCLabel
          Left = 6
          Top = 82
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mov. Financeira'
        end
        object CLabel11: TCLabel
          Left = 34
          Top = 104
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel12: TCLabel
          Left = 51
          Top = 126
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio'
        end
        object CLabel13: TCLabel
          Left = 38
          Top = 148
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object CLabel20: TCLabel
          Left = 36
          Top = 170
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
        end
        object CLabel23: TCLabel
          Left = 56
          Top = 60
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel9: TCLabel
          Left = 8
          Top = 38
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente/Fornec.'
        end
        object LookGerencialP: TCLookUp
          Left = 142
          Top = 145
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 19
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object LookGerencialR: TCLookUp
          Left = 142
          Top = 146
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 18
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'ENTRADAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object DBEdtMovCaixa: TCDBEdit
          Left = 88
          Top = 13
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtMovCaixa'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEvlMovCaixa: TCDBEdit
          Left = 465
          Top = 13
          Width = 94
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlMovCaixa'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnEnter = DBEvlMovCaixaEnter
          OnExit = DBEvlMovCaixaExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidMovFinanceira: TCDBEdit
          Left = 88
          Top = 79
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMovFinanceira'
          DataSource = dsPadrao
          TabOrder = 8
          OnEnter = DBEidMovFinanceiraEnter
          OnExit = DBEidMovFinanceiraExit
          Find = FindMovFinanceira
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookMovFinanceira: TCLookUp
          Left = 142
          Top = 79
          Width = 289
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
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'MovFinanceira'
          ReturnField = 'descMovFinanceira'
        end
        object DBEidResultado: TCDBEdit
          Left = 88
          Top = 101
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsPadrao
          TabOrder = 11
          OnEnter = DBEidResultadoEnter
          OnExit = DBEidResultadoExit
          Find = FindResultado
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRateio: TCDBEdit
          Left = 88
          Top = 123
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRateio'
          DataSource = dsPadrao
          TabOrder = 14
          OnEnter = DBEidRateioEnter
          OnExit = DBEidResultadoExit
          Find = FindRateio
          AcaoCad = frmPrincipal.actCadPlanoRateio
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRateio: TCLookUp
          Left = 142
          Top = 123
          Width = 204
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          Key.Strings = (
            'idEmpresa'
            'idRateio')
          LookUpKey.Strings = (
            'idEmpresa'
            'idRateio')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Rateio'
          ReturnField = 'descRateio'
        end
        object DBEidGerencial: TCDBEdit
          Left = 88
          Top = 145
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsPadrao
          TabOrder = 17
          OnEnter = DBEidGerencialEnter
          OnExit = DBEidResultadoExit
          Find = FindGerencialR
          AcaoCad = frmPrincipal.actCadGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBMdescMovCaixa: TCDBMemo
          Left = 88
          Top = 167
          Width = 471
          Height = 59
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMovCaixa'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 21
          KeyMemo = kmmUSUpper
        end
        object CBitBtn4: TCBitBtn
          Left = 462
          Top = 101
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 13
          TabStop = False
        end
        object CBitBtn5: TCBitBtn
          Left = 352
          Top = 123
          Width = 104
          Height = 19
          Action = frmPrincipal.actCadPlanoRateio
          Caption = '&Plano de Rateio'
          TabOrder = 16
          TabStop = False
        end
        object CBitBtn6: TCBitBtn
          Left = 462
          Top = 145
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadGerencial
          Caption = '&Gerencial'
          TabOrder = 20
          TabStop = False
        end
        object DBEidSafra: TCDBEdit
          Left = 88
          Top = 57
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 5
          Find = FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 142
          Top = 57
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idEmpresa'
            'idSafra')
          LookUpKey.Strings = (
            'idEmpresa'
            'idSafra')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Safra'
          ReturnField = 'descSafra'
        end
        object CBitBtn7: TCBitBtn
          Left = 462
          Top = 57
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 7
          TabStop = False
        end
        object DBEidCadGeral: TCDBEdit
          Left = 88
          Top = 35
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadGeral'
          DataSource = dsPadrao
          TabOrder = 2
          Find = FindCliente
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCliente: TCLookUp
          Left = 156
          Top = 35
          Width = 300
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idCadGeral')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object CBitBtn2: TCBitBtn
          Left = 462
          Top = 35
          Width = 97
          Height = 19
          Action = frmPrincipal.actCadCliente
          Caption = 'Clientes/Fornec.'
          TabOrder = 4
          TabStop = False
        end
        object LookSinal: TCLookUp
          Left = 437
          Top = 79
          Width = 19
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Key.Strings = (
            'idMovFinanceira')
          LookUpKey.Strings = (
            'idMovFinanceira')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'MovFinanceira'
          ReturnField = 'sinal'
        end
        object LookResultado: TCLookUp
          Left = 142
          Top = 101
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idResultado')
          LookUpKey.Strings = (
            'idResultado')
          AlternateSQL.Strings = (
            
              'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
              'esa] AND idResultado = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 38
        TabOrder = 0
        object CLabel5: TCLabel
          Left = 12
          Top = 15
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Entradas'
        end
        object CLabel1: TCLabel
          Left = 227
          Top = 15
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sa'#237'das'
        end
        object CLabel3: TCLabel
          Left = 430
          Top = 15
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo'
        end
        object EDvlEntradas: TCEdit
          Left = 61
          Top = 12
          Width = 89
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
          TabOrder = 0
          Text = ''
          DataType = ftUnknown
          KeyMode = kmFormaTtedNumber
          Decimals = 2
        end
        object EDvlSaidas: TCEdit
          Left = 264
          Top = 12
          Width = 89
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
          TabOrder = 1
          Text = ''
          DataType = ftUnknown
          KeyMode = kmFormaTtedNumber
          Decimals = 2
        end
        object EDvlSaldo: TCEdit
          Left = 462
          Top = 12
          Width = 89
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
      end
      object EDtpMov: TCEdit
        Left = 616
        Top = 220
        Width = 49
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 3
        Text = 'AVU'
        Visible = False
        DataType = ftUnknown
        KeyMode = kmNormal
        Decimals = 0
      end
      object CGroupBox4: TCGroupBox
        Left = 3
        Top = 290
        Width = 586
        Height = 42
        Caption = 'Op'#231#245'es de Impress'#227'o'
        TabOrder = 4
        Visible = False
        object btnImpRecibo: TCBitBtn
          Left = 134
          Top = 9
          Width = 127
          Height = 28
          Caption = 'Imprimir Recibo'
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
          TabOrder = 0
          Visible = False
          OnClick = btnImpReciboClick
        end
      end
      object LookCnpjCpfCliente: TCLookUp
        Left = 616
        Top = 214
        Width = 300
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
        Visible = False
        Key.Strings = (
          'idCadGeral')
        LookUpKey.Strings = (
          'idCliente')
        ClientDataSet = cdsLookup
        DataSource = dsPadrao
        ValidaCampoObrigatorio = True
        CampoObrigatorio = True
        LookUpTable = 'vCadClienteContabil'
        ReturnField = 'idCnpjCpf'
      end
    end
    object TabRateio: TTabSheet
      Caption = 'Rateio'
      ImageIndex = 1
      object CGroupBox2: TCGroupBox
        Left = 8
        Top = 4
        Width = 483
        Height = 280
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object CLabel30: TCLabel
          Left = 14
          Top = 60
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel34: TCLabel
          Left = 185
          Top = 60
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Percentual'
        end
        object CLabel35: TCLabel
          Left = 306
          Top = 60
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel32: TCLabel
          Left = 17
          Top = 38
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'C. Gerencial'
        end
        object CLabel33: TCLabel
          Left = 13
          Top = 15
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'C. Resultado'
        end
        object Bevel3: TBevel
          Left = 10
          Top = 82
          Width = 462
          Height = 190
          Style = bsRaised
        end
        object LookGerencialRP: TCLookUp
          Left = 144
          Top = 35
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsMovCaixaRateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object LookGerencialRR: TCLookUp
          Left = 144
          Top = 35
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE tpGerencial ' +
              '= '#39'ENTRADAS'#39' AND idEmpresa = [DBEidEmpresa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsMovCaixaRateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object DBEprRateio: TCDBEdit
          Left = 243
          Top = 57
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prRateio'
          DataSource = dsMovCaixaRateio
          TabOrder = 6
          OnEnter = DBEprRateioEnter
          OnExit = DBEprRateioExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlRateio: TCDBEdit
          Left = 336
          Top = 57
          Width = 91
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlRateio'
          DataSource = dsMovCaixaRateio
          TabOrder = 7
          OnEnter = DBEprRateioEnter
          OnExit = DBEprRateioExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidGerencialR: TCDBEdit
          Left = 81
          Top = 35
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsMovCaixaRateio
          TabOrder = 2
          Find = FindGerencialR
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidResultadoR: TCDBEdit
          Left = 81
          Top = 12
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idResultado'
          DataSource = dsMovCaixaRateio
          TabOrder = 0
          OnExit = DBEidResultadoRExit
          Find = FindResultado
          AcaoCad = frmPrincipal.actCadResultado
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlParcelaR: TCDBEdit
          Left = 81
          Top = 57
          Width = 98
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'vlMovCaixa'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 5
          DecimalControl = False
          KeyMode = kmNormal
        end
        object CDBGrid1: TCDBGrid
          Left = 15
          Top = 87
          Width = 451
          Height = 180
          TabStop = False
          DataSource = dsMovCaixaRateio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UtilizaOrdenar = False
          Columns = <
            item
              Expanded = False
              FieldName = 'idResultado'
              Title.Caption = 'C.Result.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descResultado'
              Title.Caption = 'Descri'#231#227'o'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'prRateio'
              Title.Caption = '(%)Rateio'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlRateio'
              Title.Caption = 'Valor'
              Width = 85
              Visible = True
            end>
        end
        object LookResultadoR: TCLookUp
          Left = 144
          Top = 12
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idResultado')
          LookUpKey.Strings = (
            'idResultado')
          AlternateSQL.Strings = (
            
              'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
              'esa] AND idResultado = ?')
          ClientDataSet = cdsLookup
          DataSource = dsMovCaixaRateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 497
        Top = 3
        Width = 92
        Height = 280
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object CLabel31: TCLabel
          Left = 7
          Top = 157
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total Rateio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblTotalRat: TCLabel
          Left = 7
          Top = 176
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel37: TCLabel
          Left = 7
          Top = 198
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Restante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblRestanteRat: TCLabel
          Left = 7
          Top = 217
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnSalvarRat: TCBitBtn
          Left = 8
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = BtnSalvarRatClick
        end
        object BtnCancelarRat: TCBitBtn
          Left = 8
          Top = 42
          Width = 75
          Height = 25
          Caption = '&Desfazer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 1
          OnClick = BtnSalvarRatClick
        end
        object BtnExcluirRat: TCBitBtn
          Left = 8
          Top = 70
          Width = 75
          Height = 25
          Caption = '&Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 2
          OnClick = BtnSalvarRatClick
        end
        object BtnNovoRat: TCBitBtn
          Left = 8
          Top = 101
          Width = 75
          Height = 25
          Caption = '&Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          Spacing = 5
          TabOrder = 3
          OnClick = BtnSalvarRatClick
        end
      end
    end
    object TabConsulta: TTabSheet
      Caption = 'Consultas'
      ImageIndex = 2
      object Bevel4: TBevel
        Left = 8
        Top = 29
        Width = 581
        Height = 226
        Style = bsRaised
      end
      object CLabel17: TCLabel
        Left = 13
        Top = 7
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Inicial'
      end
      object CLabel18: TCLabel
        Left = 153
        Top = 7
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Final'
      end
      object CLabel4: TCLabel
        Left = 14
        Top = 266
        Width = 97
        Height = 13
        Alignment = taRightJustify
        Caption = 'Entradas no Per'#237'odo'
      end
      object CLabel14: TCLabel
        Left = 228
        Top = 266
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sa'#237'das no Per'#237'odo'
      end
      object CLabel15: TCLabel
        Left = 436
        Top = 266
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo Final'
      end
      object DBGridCons: TCDBGrid
        Left = 13
        Top = 35
        Width = 569
        Height = 211
        TabStop = False
        DataSource = dsMovCaixaCons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
        ParentFont = False
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridConsDblClick
        UtilizaOrdenar = False
        Columns = <
          item
            Expanded = False
            FieldName = 'descGerencial'
            Title.Caption = 'Centro Gerencial'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descMovCaixa'
            Title.Caption = 'Descri'#231#227'o do Movimento'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtMovCaixa'
            Title.Caption = 'Data'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlMovCaixa'
            Title.Caption = 'Valor'
            Width = 90
            Visible = True
          end>
      end
      object DBEdtMovCaixaIni: TCDBEdit
        Left = 72
        Top = 4
        Width = 75
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtMovCaixaIni'
        DataSource = dsCons
        MaxLength = 10
        TabOrder = 1
        AcaoCad = frmPrincipal.actCadResultado
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtMovCaixaFim: TCDBEdit
        Left = 207
        Top = 4
        Width = 75
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtMovCaixaFim'
        DataSource = dsCons
        MaxLength = 10
        TabOrder = 2
        AcaoCad = frmPrincipal.actCadResultado
        DecimalControl = True
        KeyMode = kmDate
      end
      object CBitBtn8: TCBitBtn
        Tag = 1
        Left = 288
        Top = 0
        Width = 73
        Height = 25
        Action = actPesquisar
        Caption = '&Pesquisar'
        Glyph.Data = {
          36080000424D3608000000000000360000002800000020000000100000000100
          2000000000000008000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDADAD00CECE
          CE00FF00FF00FF00FF00FFFFFF008C9CA500BDBDBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5B500CECE
          CE00FF00FF00FF00FF00FFFFFF0094949400BDBDBD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00ADC6CE006B847B00DE5A3100A539
          1000C6C6C600FFFFFF00395A7B00527BAD00426B9400BDBDC600FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBDBD00737373007B7B7B005252
          5200C6C6C600FFFFFF005A5A5A007B7B7B006B6B6B00BDBDBD00FF00FF00F7F7
          F700FF00FF00FF00FF00FF00FF00ADC6C600849C9C00849C9400AD523900DE6B
          4A00AD391800315273004A7BAD0084A5C600ADC6DE00949CA500FF00FF00F7F7
          F700FF00FF00FF00FF00FF00FF00BDBDBD008C8C8C008C8C8C006B6B6B008C8C
          8C0052525200525252007B7B7B00A5A5A500C6C6C6009C9C9C00BDADAD00A542
          2900844A4200846B6B00ADADAD005A8C9400B5391000D6735A00EF846300CE7B
          5A0039394A004A7BAD007B9CBD00CED6E700637B9400FFFFFF00B5B5B5005A5A
          5A005A5A5A0073737300ADADAD007B7B7B005A5A5A008C8C8C009C9C9C008C8C
          8C00424242007B7B7B009C9C9C00D6D6D6007B7B7B00FFFFFF00B59C9C00D673
          4A00D6733900DE733900D6633100A56B6300AD9C9C00CEADAD00B59494009C7B
          7B00C6ADAD0073849C00C6D6EF0063738C00FFFFFF00FF00FF00A5A5A5008484
          840084848400848484007B7B7B007B7B7B009C9C9C00B5B5B5009C9C9C008484
          8400B5B5B50084848400D6D6D60073737300FFFFFF00FF00FF00AD949400D684
          6300D6734200CE6B3100CEAD9C00DEBDAD00F7C6B500FFDED600F7C6B500DEAD
          9C00AD9C9C00E7DED60073738400AD391800C6C6C600FF00FF009C9C9C009494
          9400848484007B7B7B00B5B5B500C6C6C600CECECE00E7E7E700CECECE00B5B5
          B5009C9C9C00DEDEDE007B7B7B005A5A5A00C6C6C600FF00FF00AD8C8C00E7A5
          8400CE7B5A00D69C8400DEB5AD00F7C6B500F7D6C600F7DECE00F7D6C600F7CE
          B500DEAD9C00A5847B00E7CEBD00FF8463009C8C8C00FF00FF009C9C9C00ADAD
          AD008C8C8C00A5A5A500BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00CECE
          CE00B5B5B5008C8C8C00CECECE00A5A5A5008C8C8C00FF00FF008C7B7B00F7BD
          9C00CE846B00DEC6C600E79C7B00EFC6AD00EFC6AD00EFCEB500F7C6B500EFC6
          AD00E7A58400B5A59C00C6634200A56B5A00FF00FF00FF00FF0084848400C6C6
          C60094949400CECECE00ADADAD00CECECE00CECECE00CECECE00CECECE00C6C6
          C600ADADAD00A5A5A5007B7B7B007B7B7B00FF00FF00FF00FF009C7B7300F7C6
          AD00D6947B00E7CEBD00EFC6AD00F7D6C600F7D6C600EFBDA500EFB59C00EFB5
          9400E7A57B00C6B5B500AD4A1800FFF7F700FF00FF00FF00FF0084848400CECE
          CE009C9C9C00CECECE00C6C6C600D6D6D600D6D6D600C6C6C600BDBDBD00BDBD
          BD00ADADAD00B5B5B5005A5A5A00F7F7F700FF00FF00FF00FF00A56B5A00F7CE
          B500DE9C8C00DEC6C600EFBDAD00F7DEC600F7DECE00F7DECE00EFBDA500EFBD
          9C00DE946B00BDB5B500D68C6300D6A59C00FF00FF00FF00FF007B7B7B00D6D6
          D600ADADAD00CECECE00C6C6C600DEDEDE00DEDEDE00DEDEDE00C6C6C600C6C6
          C6009C9C9C00B5B5B50094949400B5B5B500FF00FF00FF00FF00AD847B00FFD6
          C600F7C6B500DEB5A500DEBDB500FFE7D600F7E7D600F7E7D600F7E7D600FFE7
          DE00DEB5A500C6A59C00D6AD9400D6947B00FFFFFF00FF00FF0094949400DEDE
          DE00CECECE00BDBDBD00C6C6C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7
          E700BDBDBD00ADADAD00B5B5B500A5A5A500FFFFFF00FF00FF00B58C8400FFDE
          CE00F7CEBD00F7C6B500E7CEC600DEBDB500EFCEBD00F7DED600EFCEBD00DEBD
          B500DED6CE00EFCEB500E7CEC600E7C6AD00E7CECE00FF00FF009C9C9C00DEDE
          DE00D6D6D600CECECE00D6D6D600C6C6C600CECECE00E7E7E700CECECE00C6C6
          C600D6D6D600CECECE00CECECE00C6C6C600D6D6D600FF00FF00BD948C00FFE7
          D600F7DECE00F7D6C600F7CEB500EFC6BD00E7CECE00DEC6BD00E7CEC600DEAD
          9C00D6947B00A57B73008494A500BD9CA500AD6B6300FFFFFF009C9C9C00E7E7
          E700DEDEDE00D6D6D600CECECE00CECECE00D6D6D600CECECE00CECECE00B5B5
          B500A5A5A5008484840094949400ADADAD007B7B7B00FFFFFF00C6948C00FFEF
          E700FFE7D600F7DECE00F7D6C600F7D6BD00FFCEB500F7C6AD00F7BDA500F7BD
          9C00F7B59C005A5A520000CEFF0000B5FF0042B5FF00949CA500A5A5A500EFEF
          EF00E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00C6C6C600C6C6
          C600C6C6C600525252008C8C8C008C8C8C00A5A5A5009C9C9C00B59C9C00FFF7
          E700FFEFE700FFEFDE00FFE7D600A5736B008C635A00AD949400AD8C8400AD84
          7B00BD7B73007B63630008FFFF0018B5E7004A7B9400F7F7F700A5A5A500EFEF
          EF00EFEFEF00E7E7E700E7E7E700848484006B6B6B009C9C9C00949494008C8C
          8C00949494006B6B6B00949494008C8C8C006B6B6B00F7F7F700FFFFFF00BDAD
          AD00C6A5A500CEADA500CE9C9400F7F7F700FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00E7FFFF0084BDE700F7F7F700FF00FF00FFFFFF00B5B5
          B500ADADAD00B5B5B500ADADAD00F7F7F700FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00F7F7F700B5B5B500F7F7F700FF00FF00}
        NumGlyphs = 2
        TabOrder = 0
      end
      object EDvlEntradasC: TCEdit
        Left = 117
        Top = 263
        Width = 89
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
      object EDvlSaidasC: TCEdit
        Left = 319
        Top = 263
        Width = 89
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
        TabOrder = 7
        Text = ''
        DataType = ftUnknown
        KeyMode = kmFormaTtedNumber
        Decimals = 2
      end
      object EDvlSaldoC: TCEdit
        Left = 493
        Top = 263
        Width = 89
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
        TabOrder = 8
        Text = ''
        DataType = ftUnknown
        KeyMode = kmFormaTtedNumber
        Decimals = 2
      end
      object DBCKconsolidaemp: TCDBCheckBox
        Left = 373
        Top = 5
        Width = 120
        Height = 17
        Caption = 'Consolida Empresas?'
        DataField = 'consolidaemp'
        DataSource = dsCons
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCKconsolidafilial: TCDBCheckBox
        Left = 497
        Top = 5
        Width = 104
        Height = 17
        Caption = 'Consolida Filiais?'
        DataField = 'consolidafilial'
        DataSource = dsCons
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 442
    Width = 913
    TabOrder = 6
    ExplicitTop = 442
    ExplicitWidth = 913
    inherited BtnFechar: TCBitBtn
      Left = 518
      ExplicitLeft = 518
    end
    inherited BtnPesquisar: TCBitBtn
      Action = nil
      OnClick = BtnPesquisarClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 913
    Height = 32
    ExplicitWidth = 913
    ExplicitHeight = 32
    inherited lblCNPJ: TCLabel
      Left = 261
      Top = 8
      Visible = False
      ExplicitLeft = 261
      ExplicitTop = 8
    end
    inherited lblInscricao: TCLabel
      Left = 447
      Top = 8
      Visible = False
      ExplicitLeft = 447
      ExplicitTop = 8
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 728
      Top = 7
      ExplicitLeft = 728
      ExplicitTop = 7
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 525
      Top = 5
      Visible = False
      ExplicitLeft = 525
      ExplicitTop = 5
    end
  end
  object DBEidMovCaixa: TCDBEdit [8]
    Left = 59
    Top = 40
    Width = 67
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = 14149350
    DataField = 'idMovCaixa'
    DataSource = dsPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    OnExit = DBEidMovCaixaExit
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEidCaixa: TCDBEdit [9]
    Left = 165
    Top = 40
    Width = 48
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idCaixa'
    DataSource = dsPadrao
    TabOrder = 2
    OnExit = DBEidCaixaExit
    Find = FindCaixa
    AcaoCad = frmPrincipal.actCadCaixa
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookCaixa: TCLookUp [10]
    Left = 219
    Top = 40
    Width = 272
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 3
    Key.Strings = (
      'idCaixa')
    LookUpKey.Strings = (
      'idCaixa')
    AlternateSQL.Strings = (
      
        'SELECT descCaixa FROM Caixa WHERE  idEmpresa = [DBEidEmpresa] AN' +
        'D idCaixa = ?')
    ClientDataSet = cdsLookup
    DataSource = dsPadrao
    ValidaCampoObrigatorio = True
    CampoObrigatorio = True
    LookUpTable = 'Caixa'
    ReturnField = 'descCaixa'
  end
  object CBitBtn1: TCBitBtn [11]
    Left = 497
    Top = 40
    Width = 96
    Height = 19
    Action = frmPrincipal.actCadCaixa
    Caption = '&Conta Caixa'
    TabOrder = 4
    TabStop = False
  end
  inherited imgIcones: TImageList
    Left = 592
    Top = 72
    Bitmap = {
      494C010103000400C40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000F4F4F4FFB8B8B8FFEFEF
      EFFF00000000C9C9C9FF858585FF878787FF888888FF949494FFAFAFAFFFD0D0
      D0FFECECECFFFBFBFBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C3C4FF6A726AFF6163
      61FFBCBBBCFFB5B5B5FFAFB0AFFFC8C8C8FFD1D1D1FFB4B4B4FF939393FF8080
      80FF707070FF7A7A7AFF858585FFB3B3B3FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      05008424050000000000000000000000000000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFC2BFC2FFBCCABCFF074B
      06FF4D6E4BFFCECACEFFC6C6C6FFDFDFDFFFF4F4F4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFECECECFFA0A0A0FF8D8D8DFF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000C24F000084240500FFC17900E58E4000D36E
      1A008424050000000000000000000000000000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECECFFB2B1B2FFC1C4C0FF3773
      31FF81AE7CFFBEB9BEFFAFAFAFFFCACACAFFCDCDCDFFE1E1E1FFF0F0F0FFF9F9
      F9FFFCFCFCFFFFFFFFFFA6A6A6FFB0B0B0FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      04008424050000000000000000000000000000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E4FFC2C0C2FFBEC1BDFF146B
      12FF83B083FFC2BCC2FFB7B8B8FFD1D1D1FFD0D0D0FFC9C9C9FFC9C9C9FFD0D0
      D0FFCDCDCDFFEBEBEBFF8A8A8AFFC3C3C3FF0000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FFC6C3C6FFCACBCAFF147E
      11FF7BB97AFFC3B9C3FFBDBDBCFFD7D7D6FFD7D7D7FFD3D3D3FFD1D1D1FFD0D0
      D0FFC6C6C6FFE3E3E3FF7F7F7FFFCCCCCCFF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      05008424050000000000000000000000000000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9D9D9FFCFCBCFFFBCBDBBFF1476
      11FF80B67FFFD8CBDAFFDDD9E1FFDCDAE0FFDDDDDEFFD1D1D1FFD4D4D4FFD0D0
      D0FFC7C7C7FFE1E1E1FF777777FFD4D4D4FF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A008424050000000000000000000000000000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D5D5FFCCCACDFFC2C4C2FF1B76
      19FF84B684FFA4B697FF8AA671FF959E81FFB3B3AAFFDFDEDFFFDCDCDCFFD3D3
      D3FFB0B0B0FFD1D1D1FF747474FFD2D2D2FF0000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBDBFFD5D2D5FFBBBDBBFF1D73
      1BFF86B387FF72B263FF298902FF2A5B01FF52642FFFEBEBEBFFCDCCCEFFC0C0
      C0FF959595FF888888FF535354FFC8C8C8FF0000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D5D5FFCFCDCFFFC1C3C1FF2776
      24FF81AE81FF84C480FF2EBF1BFF359A11FF4D8623FFDDDEDAFFC8C7CAFFC0C2
      C1FF7C777BFF362F37FF252921FFCECECEFF0000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C4FFDFDDDFFFC9C8C8FF2A71
      29FF6AA56BFFA1B8A0FF66C561FF67BC5AFF5DA946FFCAD4C5FFD8D4D9FFBCB5
      BFFF629350FF2FB216FF7C8F71FFFDFDFDFF0000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBFFFD6D5D6FFD7D4D7FF3971
      38FF529F52FFACBAACFFB4BAB6FFC2C4C2FFC8CBCAFFCFCFCEFFD9D5D8FFDCC5
      DEFF70B95CFF58A047FFF1F1F1FF000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAEFFDEDEDEFFDEDADEFF577B
      55FF287A27FF51AA4FFF66C466FF81CA80FF95C994FF9FCF9FFF97C296FF93C2
      94FF7BCE72FFA3ABA2FF00000000000000000000000000000000842405008424
      0500842405008424050084240500000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A4FFE6E6E6FFE1E1E2FFBCC0
      BBFFA2B0A2FFA7B8A7FFA1B6A0FF7DC17CFF7BD47CFF85D585FF6ABE6AFF46B0
      45FF68E768FF6B8D69FFE9E9E9FF00000000000000000000000084240500FFC1
      7900E58E4000D36E1A0084240500000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAAFFECECECFFE1E1E1FFEAE8
      EAFFC2BFC3FFBCB8BCFFBEB7BDFF959B94FF879985FF8EA28EFF7D907BFF8898
      87FF94A693FF97A095FFF4F4F4FF000000000000000000000000832304008424
      0500842305008323040084240500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BABABAFFB8B8B8FFC4C3C3FFA5A6
      A5FFC7C7C7FFE8E8E8FFE8E7E7FFE9E8E9FFE8E7E8FFE8E7E8FFE9E7E8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008803FFFF800000008000F70780000000
      0000F007800000000000F707800100000000F7FF800100000000F70780010000
      0000F007800100000000F707000100000000F7FF000100000000F70700010000
      0000F007000100000001F707000100000003C1FF000100000001C1FF00030000
      0001C1FF80070000001FFFFF800F000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 656
    Top = 72
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM MovCaixa'
    AfterScroll = cdsPadraoAfterScroll
    Left = 656
    Top = 104
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsTituloRec
    Left = 624
    Top = 104
  end
  inherited dsPadrao: TDataSource
    Left = 688
    Top = 104
  end
  inherited ImgBotoes: TImageList
    Left = 624
    Top = 72
    Bitmap = {
      494C010106000800E00020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDADAD00CECECE00000000000000
      0000FFFFFF008C9CA500BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500CECECE00000000000000
      0000FFFFFF0094949400BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000846363008442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      C600C6DEC600C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      840084848400C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      A50084848400C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      A50084848400C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      A500A5A5A500C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FF00F7FFFF00C6DEC600A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FF31FF31FE7FFE7F0000000000000000
      FC00FC00F07FF07F0000000000000000B800B800C001C0010000000000000000
      00000000C001C001000000000000000000010001C001C0010000000000000000
      00010001C001C001000000000000000000010001C001C0010000000000000000
      00030003C001C001000000000000000000030003C001C0010000000000000000
      00030003C001C001000000000000000000010001C001C0010000000000000000
      00010001C001C001000000000000000000000000C001C0010000000000000000
      00000000C001C001000000000000000000000000F001F0010000000000000000
      03F103F1FC7FFC7F0000000000000000C001C0018FFF8FFF88038803FF3FFF3F
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
  inherited cdsLookup: TClientDataSet
    Left = 624
    Top = 40
  end
  inherited dspLookup: TDataSetProvider
    Left = 592
    Top = 40
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 624
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 656
    Top = 8
  end
  object sdsTituloRec: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM MovCaixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 104
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
    Left = 656
    Top = 40
  end
  object FindCaixa: TCFind
    SelectClause.Strings = (
      'SELECT idCaixa, descCaixa FROM Caixa')
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
    Left = 688
    Top = 40
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 3 AND idTpMovF' +
        'inanceira IN (6, 15)')
    OrderByClause.Strings = (
      'ORDER BY descMovFinanceira')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idMovFinanceira'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 608
    Top = 264
  end
  object FindRateio: TCFind
    SelectClause.Strings = (
      'SELECT DISTINCT Rateio.idRateio, Rateio.descRateio FROM Rateio')
    JoinClause.Strings = (
      
        'WHERE Rateio.idEmpresa = [DBEidEmpresa] AND Rateio.stRateio = '#39'A' +
        'TIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY Rateio.descRateio')
    FindField = 'descRateio'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idRateio'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 688
    Top = 136
  end
  object FindSafra: TCFind
    SelectClause.Strings = (
      'SELECT idSafra, descSafra FROM Safra')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa] AND stSafra = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descSafra')
    FindField = 'descRateio'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idSafra'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 688
    Top = 72
  end
  object sdsMovCaixaCons: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vMovCaixaCons WHERE 1=1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 168
  end
  object dspMovCaixaCons: TDataSetProvider
    DataSet = sdsMovCaixaCons
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 168
  end
  object cdsMovCaixaCons: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vMovCaixaCons WHERE 1=1'
    Params = <>
    ProviderName = 'dspMovCaixaCons'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 168
    object cdsMovCaixaConsidMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
      Required = True
    end
    object cdsMovCaixaConsdescGerencial: TStringField
      FieldName = 'descGerencial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsMovCaixaConsidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsMovCaixaConsdescMovCaixa: TStringField
      FieldName = 'descMovCaixa'
      Required = True
      FixedChar = True
      Size = 250
    end
    object cdsMovCaixaConsdtMovCaixa: TSQLTimeStampField
      FieldName = 'dtMovCaixa'
      Required = True
    end
    object cdsMovCaixaConsvlMovCaixa: TFMTBCDField
      FieldName = 'vlMovCaixa'
      Precision = 19
      Size = 4
    end
    object cdsMovCaixaConsidCaixa: TIntegerField
      FieldName = 'idCaixa'
      Required = True
    end
    object cdsMovCaixaConsidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsMovCaixaConsidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsMovCaixaConstpMov: TStringField
      FieldName = 'tpMov'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsMovCaixaConsidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsMovCaixaConsidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsMovCaixaConsfator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsMovCaixaConsidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsMovCaixaConsidRateio: TSmallintField
      FieldName = 'idRateio'
    end
  end
  object dsMovCaixaCons: TDataSource
    DataSet = cdsMovCaixaCons
    Left = 688
    Top = 168
  end
  object sdsMovCaixaRateio: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovCaixaRateio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 200
  end
  object dspMovCaixaRateio: TDataSetProvider
    DataSet = sdsMovCaixaRateio
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovCaixaRateioBeforeUpdateRecord
    Left = 624
    Top = 200
  end
  object cdsMovCaixaRateio: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovCaixaRateio'
    Params = <>
    ProviderName = 'dspMovCaixaRateio'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovCaixaRateioAfterInsert
    AfterEdit = cdsMovCaixaRateioAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 200
    object cdsMovCaixaRateioidMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
      Required = True
    end
    object cdsMovCaixaRateioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsMovCaixaRateioidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsMovCaixaRateioidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsMovCaixaRateioprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsMovCaixaRateiovlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsMovCaixaRateiodescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 50
      Lookup = True
    end
    object cdsMovCaixaRateioidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dsMovCaixaRateio: TDataSource
    DataSet = cdsMovCaixaRateio
    OnStateChange = dsMovCaixaRateioStateChange
    Left = 688
    Top = 200
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 592
    Top = 232
  end
  object cdsCons: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsConsAfterInsert
    Left = 624
    Top = 232
    object cdsConsdtMovCaixaIni: TDateTimeField
      FieldName = 'dtMovCaixaIni'
    end
    object cdsConsdtMovCaixaFim: TDateTimeField
      FieldName = 'dtMovCaixaFim'
    end
    object cdsConsconsolidaemp: TStringField
      FieldName = 'consolidaemp'
      Size = 1
    end
    object cdsConsconsolidafilial: TStringField
      FieldName = 'consolidafilial'
      Size = 1
    end
  end
  object dsCons: TDataSource
    DataSet = cdsCons
    OnDataChange = dsConsDataChange
    Left = 656
    Top = 232
  end
  object FindGerencialP: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      
        'WHERE StGerencial = '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmp' +
        'resa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descGerencial')
    FindField = 'descGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 768
    Top = 248
  end
  object FindGerencialR: TCFind
    SelectClause.Strings = (
      
        'SELECT DISTINCT idGerencial, classificacao, descGerencial FROM v' +
        'Gerencial')
    JoinClause.Strings = (
      
        'WHERE StGerencial = '#39'ATIVO'#39' AND tpGerencial = '#39'ENTRADAS'#39' AND idE' +
        'mpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descGerencial')
    FindField = 'descGerencial'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idGerencial'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Classifica'#231#227'o'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 856
    Top = 248
  end
  object FindResultado: TCFind
    SelectClause.Strings = (
      'SELECT idResultado, descResultado, StResultado FROM Resultado')
    JoinClause.Strings = (
      'WHERE stResultado = '#39'ATIVO'#39' AND idEmpresa = [DBEidEmpresa]')
    OrderByClause.Strings = (
      'ORDER BY descResultado')
    FindField = 'descResultado'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idResultado'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Status')
    TypeFind = fFindNormal
    Left = 656
    Top = 136
  end
  object Report: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39849.345200324100000000
    ReportOptions.LastChange = 40787.661157939820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 344
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
      object ReportTitle1: TfrxReportTitle
        Height = 268.346630000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object ChequevlMovConta: TfrxMemoView
          Left = 529.827150000000000000
          Top = 24.338590000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrmCadMovConta.rptCheque
          DataSetName = 'Cheque'
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
            '# [Cheque."VL_MOVCONTA"] #')
          ParentFont = False
        end
        object lblExtenso: TfrxMemoView
          Left = 112.252010000000000000
          Top = 52.913420000000000000
          Width = 593.386210000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            
              '                          [extenso-monetario] # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ' +
              '# # # # # # # # # # # # # # # # # # # # # #')
          ParentFont = False
        end
        object lblLocal: TfrxMemoView
          Left = 266.433210000000000000
          Top = 129.181200000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'local')
          ParentFont = False
        end
        object lblDia: TfrxMemoView
          Left = 520.882190000000000000
          Top = 129.181200000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'dia')
          ParentFont = False
        end
        object lblMes: TfrxMemoView
          Left = 553.897960000000000000
          Top = 129.181200000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'mes')
          ParentFont = False
        end
        object lblAno: TfrxMemoView
          Left = 686.961040000000000000
          Top = 129.181200000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ano')
          ParentFont = False
        end
        object lblNominal: TfrxMemoView
          Left = 117.590600000000000000
          Top = 105.385900000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'nominal')
          ParentFont = False
        end
        object lblPredatado: TfrxMemoView
          Left = 573.134200000000000000
          Top = 246.874150000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'bom p/ [data]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 50.913420000000000000
          Top = 175.637910000000000000
          Width = 83.149660000000000000
          Height = -162.519790000000000000
          ShowHint = False
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 61.472480000000000000
          Top = 175.858380000000000000
          Width = 83.149660000000000000
          Height = -162.519790000000000000
          ShowHint = False
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
      end
    end
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 760
    Top = 344
  end
  object cdsRecibo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Recibo'
    Params = <>
    ProviderName = 'dspRecibo'
    Left = 736
    Top = 392
  end
  object dspRecibo: TDataSetProvider
    DataSet = sdsRecibo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 704
    Top = 392
  end
  object sdsRecibo: TSQLDataSet
    CommandText = 'SELECT * FROM Recibo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 672
    Top = 392
  end
end
