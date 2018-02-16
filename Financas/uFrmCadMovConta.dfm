inherited FrmCadMovConta: TFrmCadMovConta
  Caption = 'Movimenta'#231#227'o Banc'#225'ria'
  ClientHeight = 502
  ClientWidth = 1071
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    0000010008000000000000010000000000000000000000000000000000000000
    00007F7F7F0099003300CC33330099666600A5736B00FF993300BD847300D68C
    4200F7A54200CE847B00C6947B00E7AD6B00FFCC6600FFFF6600BD948C00CE9C
    8400DEA58400D6A59C00D6ADA500DEB5A500F7B5AD00E7BDB500F7CEAD00FFD6
    A500FFD6AD00E7C6B500FFCEBD00FFD6B500FFDEBD00FFDEC600FFD6CE00FFE7
    C600FFE7CE00FFECCC00EFE7DE00F7E7D600FFEFD600FFEFDE00E7E7E700EFEF
    E700F7EFE700FFF7E700FFFFF700FEFDFD006363630000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000008020940000000000C805917C58740A004C2194005105
    917C781305006D05917C000000003D04917C0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000002802000000000000000000000000000000000000000000000000
    0000CE33917CF26000009C1E9400000005007C23940018EE907CC040917CFFFF
    FFFFBB40917C8ED601004500000090209400800010C07C23940018EE907C7005
    917CFFFFFFFF000000003D04917CC42194005F09817C00000000010000000200
    0000542394001800000000000000AC2194004200000000000000902194000000
    000000000000000000000C000000020000000101907C00FCFD7F4C0000000000
    00000200000054001A0260740A000000000060740A0005000000AFE0807CE821
    94004F1A807C34010000000000C0000000000000000002000000800000000000
    000028239400CF034B00E8583700000000C0000000001C239400020000008000
    000000000000200000001000000010000000433A5C446573656E765C4E696C75
    735C696D6167656E735C4C616E636142616E636F2E69636F00003487367E840A
    05000700000004230000000005004C2094006CFB907C1000000000000000F8CF
    0E00EC2294000000000010000000380000000000000000000000BCE7907C86D5
    902E69636F006CFB907C71FB907C86D5907CBCE7907C0000050094229400C8E7
    907CFFE9907CF60D817C34010000000000000000000000000000E82294006423
    94001600000000000000160E817C16000000542394001000000000000000081C
    0B000000000016000000D42294000D0000007C239400A89A837C200E817CFFFF
    FFFF160E817C66044B0034010000642394001600000038239400000000000000
    002D2D2D2D2D2D2D2D2D2D2D2D00000005141312121212121212120F2D000000
    0724020202171719191918162D00000007232121201E171C1C1718162D000000
    0A230202020202021C171B172D0000000B23242524201E211C1C17172D000000
    10270202020202020202171B2D0000001128262624251E211E20171A2D000000
    112B02020202020202021D1B2D000000112B29292524252524211E1A2D000000
    112C0203030325020202211A2D000000112C020D0D04272A262621162D000000
    112C020E220425241F1F15152D000000112C060606062B290909082D00000000
    112C2C2C2B2C2B2C110C2D00000000001111111111111111112D00000000E001
    0000C0010000C0010000C0010000C0010000C0010000C0010000C0010000C001
    0000C0010000C0010000C0010000C0010000C0030000C0070000C00F0000}
  ExplicitWidth = 1087
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel6: TBevel [0]
    Left = 0
    Top = 36
    Width = 1071
    Height = 29
    Align = alTop
    Style = bsRaised
    ExplicitWidth = 724
  end
  inherited Bevel1: TBevel
    Top = 467
    Width = 1071
    ExplicitTop = 509
    ExplicitWidth = 629
  end
  inherited Bevel2: TBevel
    Top = 32
    Width = 1071
    ExplicitTop = 27
    ExplicitWidth = 781
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
    Top = 42
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta'
  end
  inherited PagAbas: TCPageControl
    Top = 65
    Width = 1071
    Height = 402
    TabOrder = 6
    OnChange = PagAbasChange
    ExplicitTop = 65
    ExplicitWidth = 1071
    ExplicitHeight = 402
    inherited TabAbas: TTabSheet
      Caption = 'Dados do Movimento'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1063
      ExplicitHeight = 373
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 47
        Width = 586
        Height = 218
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
          Left = 430
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
        object CLabel16: TCLabel
          Left = 164
          Top = 16
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Compensa'#231#227'o'
        end
        object DBEdtMovConta: TCDBEdit
          Left = 88
          Top = 13
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtMovConta'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 0
          OnExit = DBEdtMovContaExit
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEvlMovConta: TCDBEdit
          Left = 465
          Top = 13
          Width = 94
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlMovConta'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnEnter = DBEvlMovContaEnter
          OnExit = DBEvlMovContaExit
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
          TabOrder = 9
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
          TabOrder = 12
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
          TabOrder = 15
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
          TabOrder = 16
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
          TabOrder = 18
          OnEnter = DBEidGerencialEnter
          OnExit = DBEidResultadoExit
          Find = FindGerencialR
          AcaoCad = frmPrincipal.actCadGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBMdescMovConta: TCDBMemo
          Left = 88
          Top = 167
          Width = 471
          Height = 43
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descMovConta'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 22
          KeyMemo = kmmUSUpper
        end
        object CBitBtn4: TCBitBtn
          Left = 462
          Top = 101
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 14
          TabStop = False
        end
        object CBitBtn5: TCBitBtn
          Left = 352
          Top = 123
          Width = 104
          Height = 19
          Action = frmPrincipal.actCadPlanoRateio
          Caption = '&Plano de Rateio'
          TabOrder = 17
          TabStop = False
        end
        object CBitBtn6: TCBitBtn
          Left = 462
          Top = 145
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadGerencial
          Caption = '&Gerencial'
          TabOrder = 21
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
          TabOrder = 6
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
          TabOrder = 7
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
          TabOrder = 8
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
          TabOrder = 3
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
          TabOrder = 4
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
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadCliente
          Caption = 'Clientes/Fornec.'
          TabOrder = 5
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
          TabOrder = 11
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
        object DBEdtCompensacao: TCDBEdit
          Left = 237
          Top = 13
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtCompensacao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
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
          TabOrder = 13
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
        object LookGerencialR: TCLookUp
          Left = 142
          Top = 145
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
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
          Left = 142
          Top = 15
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sa'#237'das'
        end
        object CLabel3: TCLabel
          Left = 263
          Top = 15
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo'
        end
        object CLabel22: TCLabel
          Left = 393
          Top = 15
          Width = 101
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valores a Compensar'
        end
        object EDvlEntradas: TCEdit
          Left = 61
          Top = 12
          Width = 75
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
          Left = 179
          Top = 12
          Width = 78
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
          Left = 295
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
        object EDvlaCompensar: TCEdit
          Left = 500
          Top = 12
          Width = 78
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
          TabOrder = 3
          Text = ''
          DataType = ftUnknown
          KeyMode = kmFormaTtedNumber
          Decimals = 2
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 3
        Top = 271
        Width = 586
        Height = 35
        TabOrder = 3
        object CLabel24: TCLabel
          Left = 22
          Top = 14
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cheque Nr.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel19: TCLabel
          Left = 411
          Top = 14
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cancelamento'
        end
        object CLabel21: TCLabel
          Left = 208
          Top = 14
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object DBEidCheque: TCDBEdit
          Left = 88
          Top = 11
          Width = 69
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCheque'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnEnter = DBEidChequeEnter
          OnExit = DBEidChequeExit
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEdtCancelamento: TCDBEdit
          Left = 488
          Top = 11
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtCancelamento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEdtVencimento: TCDBEdit
          Left = 269
          Top = 11
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
      end
      object CGroupBox5: TCGroupBox
        Left = 3
        Top = 312
        Width = 586
        Height = 53
        Caption = 'Op'#231#245'es de Impress'#227'o'
        TabOrder = 4
        object btnImpRecibo: TCBitBtn
          Left = 5
          Top = 17
          Width = 67
          Height = 28
          Caption = 'Recibo'
          Enabled = False
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
        object BtnImpChq: TCBitBtn
          Left = 375
          Top = 17
          Width = 113
          Height = 28
          Caption = 'Imprimir Cheque'
          Enabled = False
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
          TabOrder = 1
          OnClick = BtnImpChqClick
        end
        object CKNominal: TCCheckBox
          Left = 75
          Top = 22
          Width = 65
          Height = 17
          Caption = 'Nominal?'
          TabOrder = 3
        end
        object CKPreDatado: TCCheckBox
          Left = 146
          Top = 22
          Width = 85
          Height = 17
          Caption = 'Pr'#233'-Datado?'
          TabOrder = 4
        end
        object CKVisado: TCCheckBox
          Left = 237
          Top = 22
          Width = 56
          Height = 17
          Caption = 'Visado?'
          TabOrder = 5
        end
        object BtnCopiaCheque: TCBitBtn
          Left = 494
          Top = 17
          Width = 83
          Height = 28
          Caption = 'C'#243'pia'
          Enabled = False
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
          TabOrder = 2
          OnClick = BtnCopiaChequeClick
        end
      end
      object LookCnpjCpfCliente: TCLookUp
        Left = 608
        Top = 238
        Width = 147
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 2
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CGroupBox2: TCGroupBox
        Left = 8
        Top = 3
        Width = 483
        Height = 280
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
          DataSource = dsMovContaRateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object DBEprRateio: TCDBEdit
          Left = 242
          Top = 57
          Width = 57
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prRateio'
          DataSource = dsMovContaRateio
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
          DataSource = dsMovContaRateio
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
          DataSource = dsMovContaRateio
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
          DataSource = dsMovContaRateio
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
          DataField = 'vlMovConta'
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
          DataSource = dsMovContaRateio
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
          DataSource = dsMovContaRateio
          ValidaCampoObrigatorio = False
          CampoObrigatorio = False
          LookUpTable = 'Resultado'
          ReturnField = 'descResultado'
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
          DataSource = dsMovContaRateio
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
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
        TabOrder = 1
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
      object CLabel25: TCLabel
        Left = 10
        Top = 288
        Width = 101
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valores a Compensar'
      end
      object DBGridCons: TCDBGrid
        Left = 14
        Top = 31
        Width = 569
        Height = 211
        TabStop = False
        DataSource = dsMovContaCons
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
            FieldName = 'idEmpresa'
            Title.Caption = 'Emp.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCadEmpresa'
            Title.Caption = 'Fil.'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descGerencial'
            Title.Caption = 'Centro Gerencial'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descMovConta'
            Title.Caption = 'Descri'#231#227'o do Movimento'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtMovConta'
            Title.Caption = 'Data'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlMovConta'
            Title.Caption = 'Valor'
            Width = 90
            Visible = True
          end>
      end
      object DBEdtMovContaIni: TCDBEdit
        Left = 72
        Top = 4
        Width = 75
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtMovContaIni'
        DataSource = dsCons
        MaxLength = 10
        TabOrder = 1
        AcaoCad = frmPrincipal.actCadResultado
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEdtMovContaFim: TCDBEdit
        Left = 207
        Top = 4
        Width = 75
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'dtMovContaFim'
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
        Width = 79
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
        TabOrder = 7
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
        TabOrder = 8
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
        TabOrder = 9
        Text = ''
        DataType = ftUnknown
        KeyMode = kmFormaTtedNumber
        Decimals = 2
      end
      object EDvlACompensarC: TCEdit
        Left = 117
        Top = 285
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
        TabOrder = 10
        Text = ''
        DataType = ftUnknown
        KeyMode = kmFormaTtedNumber
        Decimals = 2
      end
      object EDtpMov: TCEdit
        Left = 616
        Top = 220
        Width = 49
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 6
        Text = 'AVU'
        Visible = False
        DataType = ftUnknown
        KeyMode = kmNormal
        Decimals = 0
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
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 471
    Width = 1071
    TabOrder = 7
    ExplicitTop = 471
    ExplicitWidth = 1071
    inherited BtnFechar: TCBitBtn
      Left = 500
      ExplicitLeft = 500
    end
    inherited BtnPesquisar: TCBitBtn
      Action = nil
      OnClick = BtnPesquisarClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1071
    Height = 32
    ExplicitWidth = 1071
    ExplicitHeight = 32
    inherited lblCNPJ: TCLabel
      Left = 244
      Top = 8
      Visible = False
      ExplicitLeft = 244
      ExplicitTop = 8
    end
    inherited lblInscricao: TCLabel
      Left = 430
      Top = 8
      Visible = False
      ExplicitLeft = 430
      ExplicitTop = 8
    end
    inherited LookdescCadEmpresa: TCLookUp
      Width = 235
      ExplicitWidth = 235
    end
    inherited LookdescAbreviada: TCLookUp
      Left = 404
      Width = 130
      ExplicitLeft = 404
      ExplicitWidth = 130
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 719
      Top = 7
      Width = 105
      Visible = False
      ExplicitLeft = 719
      ExplicitTop = 7
      ExplicitWidth = 105
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 508
      Top = 5
      Visible = False
      ExplicitLeft = 508
      ExplicitTop = 5
    end
  end
  object DBEidMovConta: TCDBEdit [8]
    Left = 59
    Top = 40
    Width = 67
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = 14149350
    DataField = 'idMovConta'
    DataSource = dsPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    OnExit = DBEidMovContaExit
    DecimalControl = True
    KeyMode = kmNormal
  end
  object DBEidConta: TCDBEdit [9]
    Left = 167
    Top = 40
    Width = 48
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idConta'
    DataSource = dsPadrao
    TabOrder = 2
    OnExit = DBEidContaExit
    Find = FindConta
    AcaoCad = frmPrincipal.actCadConta
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookAgencia: TCLookUp [10]
    Left = 221
    Top = 40
    Width = 52
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 3
    Key.Strings = (
      'idEmpresa'
      'idConta')
    LookUpKey.Strings = (
      'idEmpresa'
      'idConta')
    ClientDataSet = cdsLookup
    DataSource = dsPadrao
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
    LookUpTable = 'vConta'
    ReturnField = 'idAgencia'
  end
  object LookContaCorrente: TCLookUp [11]
    Left = 279
    Top = 40
    Width = 81
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 4
    Key.Strings = (
      'idEmpresa'
      'idConta')
    LookUpKey.Strings = (
      'idEmpresa'
      'idConta')
    ClientDataSet = cdsLookup
    DataSource = dsPadrao
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
    LookUpTable = 'vConta'
    ReturnField = 'idContaCorrente'
  end
  object LookdescConta: TCLookUp [12]
    Left = 366
    Top = 40
    Width = 227
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 5
    Key.Strings = (
      'idEmpresa'
      'idConta')
    LookUpKey.Strings = (
      'idEmpresa'
      'idConta')
    ClientDataSet = cdsLookup
    DataSource = dsPadrao
    ValidaCampoObrigatorio = False
    CampoObrigatorio = True
    LookUpTable = 'vConta'
    ReturnField = 'descConta'
  end
  inherited imgIcones: TImageList
    Left = 592
    Top = 72
    Bitmap = {
      494C010103000400400110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2C2C2FF404040FF1E1E
      1EFF252525FF252525FF252525FF252525FF252525FF252525FF252525FF2525
      25FF1E1E1EFF353535FF8A8A8AFFFEFEFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5736B00DEB5
      A500D6ADA500D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A59C00D6A5
      9C00D6A59C00BD948C0063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      05008424050000000000000000000000000000000000C4C4C4FFFCFCFCFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8
      F8FFCBCBCBFF434343FF505050FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD847300F7E7
      D600990033009900330099003300F7CEAD00F7CEAD00FFD6AD00FFD6AD00FFD6
      AD00FFD6A500E7BDB50063636300000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000C24F000084240500FFC17900E58E4000D36E
      1A008424050000000000000000000000000000000000C6C6C6FFFAFAFAFFFCFC
      FCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFC9C9
      C9FF434343FF6F6F6FFF4E4E4EFFD4D4D4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD847300EFE7
      DE00FFE7CE00FFE7CE00FFE7C600FFDEC600F7CEAD00FFD6B500FFD6B500F7CE
      AD00FFD6A500E7BDB50063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      04008424050000000000000000000000000000000000C6C6C6FFF8F8F8FFFAFA
      FAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFC6C6C6FF4444
      44FF767676FF5C5C5CFF979797FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE847B00EFE7
      DE00990033009900330099003300990033009900330099003300FFD6B500F7CE
      AD00FFCEBD00F7CEAD0063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6FFF7F7F7FFF6F6
      F6FFF2F2F1FFEAEAEAFFECECECFFF2F2F2FFF5F5F5FFCACACAFF464646FF7C7C
      7CFF5F5F5FFFD0D0D0FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6947B00EFE7
      DE00F7E7D600FFEFD600F7E7D600FFE7C600FFDEC600FFE7CE00FFD6B500FFD6
      B500F7CEAD00F7CEAD0063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      05008424050000000000000000000000000000000000C6C6C6FFE7E7E7FFABAB
      ABFF979797FF989898FF969696FFAEAEAEFFD5D5D5FF5D5D5DFF838383FF6262
      62FFD2D2D2FFEBEBEBFFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C8400E7E7
      E700990033009900330099003300990033009900330099003300990033009900
      3300F7CEAD00FFCEBD0063636300000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A008424050000000000000000000000000000000000B4B4B4FF989898FFC3C3
      C3FFDDDDDDFFE2E2E2FFDADADAFFBDBDBDFF7D7D7DFF9B9B9BFF707070FFD1D1
      D1FFEBEBEBFFE2E2E2FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400EFEF
      E700FFEFDE00FFEFDE00F7E7D600FFEFD600FFDEC600FFE7CE00FFDEC600FFE7
      C600F7CEAD00E7C6B50063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000F6F6F6FF898989FFCECECEFFE7E7
      E7FFEBEBEBFFECECECFFE9E9E9FFE6E6E6FFCECECEFF898989FFD1D1D1FFE9E9
      E9FFE1E1E1FFD3D3D3FFB1B1B1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FFFF
      F700990033009900330099003300990033009900330099003300990033009900
      3300FFDEBD00FFCEBD0063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8B8B8FF9D9D9DFFE1E1E1FFE9E9
      E9FFECECECFFEEEEEEFFEAEAEAFFE7E7E7FFE1E1E1FFADADADFFA3A3A3FFE2E2
      E2FFD5D5D5FFC6C6C6FFB6B6B6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FFFF
      F700F7EFE700F7EFE700FFEFD600F7E7D600FFEFD600FFEFD600F7E7D600FFE7
      CE00FFDEC600E7C6B50063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      050084240500000000000000000000000000A9A9A9FFAEAEAEFFDEDEDEFFE2E2
      E2FFE7E7E7FFEAEAEAFFE4E4E4FFE0E0E0FFDDDDDDFFC1C1C1FF868686FFD3D3
      D3FFC6C6C6FFAFAFAFFFBBBBBBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FEFD
      FD0099003300CC333300CC333300CC333300FFEFD60099003300990033009900
      3300FFE7CE00E7C6B50063636300000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A0084240500000000000000000000000000ACACACFFB3B3B3FFD9D9D9FFDDDD
      DDFFE4E4E4FFE5E5E5FFDCDCDCFFD8D8D8FFD6D6D6FFBCBCBCFF7B7B7BFFB0B0
      B0FFAFAFAFFF959595FFC1C1C1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FEFD
      FD0099003300FFCC6600FFCC660099666600E7E7E700FFF7E700FFEFDE00FFEF
      DE00FFE7CE00E7BDB50063636300000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      040084240500000000000000000000000000B6B6B6FFB1B1B1FFD6D6D6FFE0E0
      E0FFE7E7E7FFE6E6E6FFDFDFDFFFD5D5D5FFCCCCCCFF8B8B8BFF606060FF7D7D
      7DFF949494FFA2A2A2FFD8D8D8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FEFD
      FD0099003300FFFF6600FFECCC0099666600FFEFD600F7E7D600FFD6CE00FFD6
      CE00F7B5AD00F7B5AD0063636300000000000000000000000000842405008424
      0500842405008424050084240500000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBFFFB1B1B1FFDBDBDBFFE3E3
      E3FFE5E5E5FFE6E6E6FFE3E3E3FFD6D6D6FFC4C4C4FF787878FFC1C1C1FFFBFB
      FBFFDFDFDFFFAEAEAEFFEBEBEBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FEFD
      FD00FF993300FF993300FF993300FF993300FFFFF700F7EFE700F7A54200F7A5
      4200D68C4200636363000000000000000000000000000000000084240500FFC1
      7900E58E4000D36E1A0084240500000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FFA4A4A4FFD9D9D9FFE7E7
      E7FFE8E8E8FFE8E8E8FFE3E3E3FFD6D6D6FFABABABFF848484FFF7F7F7FFDFDF
      DFFFABABABFFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400FEFD
      FD00FEFDFD00FEFDFD00FFFFF700FEFDFD00FFFFF700FEFDFD00DEA58400E7AD
      6B00636363000000000000000000000000000000000000000000832304008424
      0500842305008323040084240500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B5FFA1A1A1FFCCCC
      CCFFDFDFDFFFE2E2E2FFD2D2D2FFADADADFFB2B2B2FFBBBBBBFFDFDFDFFFAFAF
      AFFFE1E1E1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA584006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DADADAFFB7B7B7FF9E9E
      9EFFA3A3A3FF9A9A9AFF939393FFA6A6A6FFB5B5B5FFB9B9B9FFC6C6C6FFE7E7
      E7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E001FFFF80000000C001F70780000000
      C001F00780000000C001F70780010000C001F7FF80010000C001F70780010000
      C001F00780010000C001F70700010000C001F7FF00010000C001F70700010000
      C001F00700010000C001F70700010000C001C1FF00010000C003C1FF00030000
      C007C1FF80070000C00FFFFF800F000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 656
    Top = 72
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM MovConta'
    AfterScroll = cdsPadraoAfterScroll
    Left = 656
    Top = 104
    object cdsPadraoidMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidConta: TIntegerField
      FieldName = 'idConta'
      Required = True
    end
    object cdsPadraoidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsPadraoidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraoidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPadraoidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsPadraoidCheque: TStringField
      FieldName = 'idCheque'
      FixedChar = True
      Size = 10
    end
    object cdsPadraodtMovConta: TSQLTimeStampField
      FieldName = 'dtMovConta'
      Required = True
    end
    object cdsPadraodtCompensacao: TSQLTimeStampField
      FieldName = 'dtCompensacao'
    end
    object cdsPadraodtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsPadraodtCancelamento: TSQLTimeStampField
      FieldName = 'dtCancelamento'
    end
    object cdsPadraodescMovConta: TStringField
      FieldName = 'descMovConta'
      Required = True
      FixedChar = True
      Size = 250
    end
    object cdsPadraovlMovConta: TFMTBCDField
      FieldName = 'vlMovConta'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraofator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoimpresso: TStringField
      FieldName = 'impresso'
      FixedChar = True
      Size = 1
    end
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
      494C010106000800480120001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    CommandText = 'SELECT * FROM MovConta'
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
    Left = 688
    Top = 40
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 4 AND idTpMovF' +
        'inanceira IN (7, 8, 15)')
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
    Left = 624
    Top = 136
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
    Left = 656
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
    Top = 136
  end
  object sdsMovContaCons: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM vMovContaCons WHERE 1=1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 168
  end
  object dspMovContaCons: TDataSetProvider
    DataSet = sdsMovContaCons
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 168
  end
  object cdsMovContaCons: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM vMovContaCons WHERE 1=1'
    Params = <>
    ProviderName = 'dspMovContaCons'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 168
    object cdsMovContaConsidMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsMovContaConsdescGerencial: TStringField
      FieldName = 'descGerencial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsMovContaConsidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
      Required = True
    end
    object cdsMovContaConsdescMovConta: TStringField
      FieldName = 'descMovConta'
      Required = True
      FixedChar = True
      Size = 250
    end
    object cdsMovContaConsdtMovConta: TSQLTimeStampField
      FieldName = 'dtMovConta'
      Required = True
    end
    object cdsMovContaConsvlMovConta: TFMTBCDField
      FieldName = 'vlMovConta'
      Precision = 19
      Size = 4
    end
    object cdsMovContaConsidConta: TIntegerField
      FieldName = 'idConta'
      Required = True
    end
    object cdsMovContaConsidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsMovContaConsidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsMovContaConstpMov: TStringField
      FieldName = 'tpMov'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsMovContaConsidSafra: TIntegerField
      FieldName = 'idSafra'
    end
    object cdsMovContaConsidCheque: TStringField
      FieldName = 'idCheque'
      Size = 10
    end
    object cdsMovContaConsidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsMovContaConsfator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsMovContaConsidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsMovContaConsidRateio: TSmallintField
      FieldName = 'idRateio'
    end
    object cdsMovContaConsdtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsMovContaConsimpresso: TStringField
      FieldName = 'impresso'
      FixedChar = True
      Size = 1
    end
  end
  object dsMovContaCons: TDataSource
    DataSet = cdsMovContaCons
    Left = 688
    Top = 168
  end
  object sdsMovContaRateio: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM MovContaRateio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 200
  end
  object dspMovContaRateio: TDataSetProvider
    DataSet = sdsMovContaRateio
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspMovContaRateioBeforeUpdateRecord
    Left = 624
    Top = 200
  end
  object cdsMovContaRateio: TClientDataSet
    Aggregates = <
      item
        AggregateName = 'vlSomaRateio'
        Expression = 'SUM(vlRateio)*1'
        Visible = False
      end>
    AggregatesActive = True
    CommandText = 'SELECT * FROM MovContaRateio'
    Params = <>
    ProviderName = 'dspMovContaRateio'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsMovContaRateioAfterInsert
    AfterEdit = cdsMovContaRateioAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 200
    object cdsMovContaRateioidMovConta: TIntegerField
      FieldName = 'idMovConta'
      Required = True
    end
    object cdsMovContaRateioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsMovContaRateioidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsMovContaRateioidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsMovContaRateioprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsMovContaRateiovlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsMovContaRateiodescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 50
      Lookup = True
    end
    object cdsMovContaRateioidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dsMovContaRateio: TDataSource
    DataSet = cdsMovContaRateio
    OnStateChange = dsMovContaRateioStateChange
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
    object cdsConsdtMovContaIni: TDateTimeField
      FieldName = 'dtMovContaIni'
    end
    object cdsConsdtMovContaFim: TDateTimeField
      FieldName = 'dtMovContaFim'
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
    Left = 592
    Top = 264
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
    Left = 624
    Top = 264
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
    Top = 264
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
    Left = 664
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
          Top = 80.929190000000000000
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
          Top = 52.692949999999990000
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
          Top = 517.787569999999900000
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
          Top = 139.622140000000000000
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
          Top = 139.622140000000000000
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
          Top = 392.685219999999900000
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
  object rptCheque: TfrxDBDataset
    UserName = 'Cheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idMovConta=idMovConta'
      'idEmpresa=idEmpresa'
      'idConta=idConta'
      'idCadGeral=idCadGeral'
      'idSafra=idSafra'
      'idMovFinanceira=idMovFinanceira'
      'idGerencial=idGerencial'
      'idResultado=idResultado'
      'idRateio=idRateio'
      'idCheque=idCheque'
      'dtMovConta=dtMovConta'
      'dtCompensacao=dtCompensacao'
      'dtVencimento=dtVencimento'
      'dtCancelamento=dtCancelamento'
      'descMovConta=descMovConta'
      'vlMovConta=vlMovConta'
      'fator=fator'
      'idCadEmpresa=idCadEmpresa')
    DataSource = dsPadrao
    BCDToCurrency = False
    Left = 600
    Top = 344
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 744
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
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 1
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 860
    Top = 369
  end
end
