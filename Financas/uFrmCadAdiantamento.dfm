inherited FrmCadAdiantamento: TFrmCadAdiantamento
  Caption = 'Adiantamento de Cliente/Fornecedor'
  ClientHeight = 466
  ClientWidth = 973
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00001F1F1F09181A1D3B2D2F345B0C0D0F34000000190000000C000000000000
    0000000000000000000000000000000000000000000000000000000000000303
    03130606074E9DB3B8F3C4D7D7FEB9CDD0FD9CAEB3E8768389C4525B60993134
    3A6B1011133A0000001A2727270A000000000000000000000000000000000000
    002D0F0F12709FB9BCFEC5D8D8FEC3D7D7FEB8CFD0FEB0C9CAFEABC5C7FEA7C1
    C5FEA7BEC5FD99ABB3EC77848CC3525860710000000000000000000000000000
    0000131316289EB7BBFEB5CDCEFEB8CFCFFEA6C3C4FEA7C2C4FEA7C1C5FEA7C0
    C5FEA7C0C5FEA7BFC5FEA7BEC5FEA7BDC5FBB4BDCD7E00000000000000000000
    00006C6C7010A0BCBDFEA8C1C4FEB3CCCCFEA7C3C4FEA7C2C5FEA7C0C5FEA7C0
    C5FEA7BFC5FEA7BEC5FEA7BEC5FEA7BDC5FEA9B8C6BFEEEFF313000000000000
    000074747810A4C1C2FEA0B9BDFEB5CDCEFEB0C8CAFEAEC6C9FEABC3C7FEA9C0
    C4FEA9BFC5FEA9BFC6FEA9BEC6FEA8BCC5FEA9B8C6C2D5D9E34C000000000000
    00007474780EA5C2C3FE9EB8BBFEB5CBCDFEBACFD1FEB6CBCEFE9FC2C1FE8AC9
    C1FE8DC6C0FE95C3C1FE9EC1C3FEA6BEC5FEAFBCC9C6BDC4D387000000000000
    00007474780DA6C2C4FE9FBCBCFEAFC4C9FEC4D5D7FEBCCDCFFE95D0C6FE8ED3
    C8FE8DD1C7FE8CD0C6FE8ACEC5FE89CDC4FE8DC9C4F5B0C2CDBDF2F2F6110000
    00007474780DA6C2C4FEA4C1C1FEA1B9BEFECCDBDDFEC4D1D3FEA0DAD0FE98DA
    CEFE97D9CEFE96D8CDFE95D6CCFE93D5CBFE99D4CDFEB6D4D6D9DADCE64A0000
    00007474780BA6C2C4FCA5C3C3FE9CB8B9FEA7BBC0FEB3C2C5FEA8DCD4FE9EDE
    D2FEA1E1D4FEA0E0D4FE9FDED2FEA9DBD3FEBFE1DEF4D5E0E4C0CBCEDC840000
    00007474780AB0C8CBFAB3CCCCFEAEC9C9FEA6C1C1FE6A958CFE55C8ABFE0FB5
    8EFE1EB593FE33B99CFE55C0AAFE7EC0B6FEA0A4ADA8BABCC593C5C6D87B0000
    000000000000C3D3D7F5D9E6E6FED4E3E3FECEDDDDFE89B3A9FE78E2C8FE01CA
    97FE009871C71CC99DF83DD3ADFE56D7B6FD0F493A5500000000000000000000
    000000000000EDEEF31BE9EBF13CEAECF153C6C9CD6C52736CA789E6CFFE0CCD
    9DFE0060486D0F5C488B64DEC0FE83E5CCFE7AD7BFE892A6A00F000000000000
    000000000000000000000000000000000000000000003E3F3F0A1D58476D0C77
    5B7E000000001F202014459F87C5AAEDDCFEC1F1E5FE88B6A92A000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000010201B244B8C7A9B468774790000000000000000FFFF
    000081FF0000000F000000070000800300008001000080010000800100008000
    0000800000008000000080000000C0030000C0010000FC410000FFE30000}
  ExplicitWidth = 989
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 431
    Width = 973
    ExplicitTop = 448
    ExplicitWidth = 537
  end
  inherited Bevel2: TBevel
    Top = 32
    Width = 973
    ExplicitTop = 32
    ExplicitWidth = 537
  end
  inherited PagAbas: TCPageControl
    Top = 36
    Width = 973
    Height = 395
    OnChange = PagAbasChange
    ExplicitTop = 36
    ExplicitWidth = 973
    ExplicitHeight = 395
    inherited TabAbas: TTabSheet
      Caption = 'Lan'#231'amento'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 965
      ExplicitHeight = 366
      object grpContas: TCGroupBox
        Left = 8
        Top = 159
        Width = 570
        Height = 144
        Caption = 'Adiantamento de Cliente'
        TabOrder = 2
        object CLabel8: TCLabel
          Left = 24
          Top = 45
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta Caixa'
        end
        object CLabel1: TCLabel
          Left = 22
          Top = 69
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta Banco'
        end
        object lblCliFor: TCLabel
          Left = 50
          Top = 20
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente'
        end
        object CLabel3: TCLabel
          Left = 16
          Top = 120
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Compensa'#231#227'o'
        end
        object CLabel24: TCLabel
          Left = 174
          Top = 120
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
        object CLabel21: TCLabel
          Left = 320
          Top = 120
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object CLabel10: TCLabel
          Left = 39
          Top = 98
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object DBEidCaixa: TCDBEdit
          Left = 89
          Top = 42
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCaixa'
          DataSource = dsPadrao
          TabOrder = 3
          OnExit = DBEidCaixaExit
          Find = dmFind.FindCaixa
          AcaoCad = frmPrincipal.actCadCaixa
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookCaixa: TCLookUp
          Left = 143
          Top = 42
          Width = 272
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idEmpresa'
            'idCaixa')
          LookUpKey.Strings = (
            'idEmpresa'
            'idCaixa')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Caixa'
          ReturnField = 'descCaixa'
        end
        object CBitBtn1: TCBitBtn
          Left = 421
          Top = 42
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadCaixa
          Caption = '&Conta Caixa'
          TabOrder = 5
          TabStop = False
        end
        object DBEidConta: TCDBEdit
          Left = 89
          Top = 67
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idConta'
          DataSource = dsPadrao
          TabOrder = 6
          OnExit = DBEidCaixaExit
          Find = dmFind.FindConta
          AcaoCad = frmPrincipal.actCadConta
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookAgencia: TCLookUp
          Left = 143
          Top = 67
          Width = 41
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 7
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
        object LookContaCorrente: TCLookUp
          Left = 190
          Top = 67
          Width = 79
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 8
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
        object LookdescConta: TCLookUp
          Left = 277
          Top = 67
          Width = 203
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
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
        object CBitBtn2: TCBitBtn
          Left = 486
          Top = 67
          Width = 74
          Height = 19
          Action = frmPrincipal.actCadConta
          Caption = '&Contas'
          TabOrder = 10
          TabStop = False
        end
        object LookCliente: TCLookUp
          Left = 157
          Top = 17
          Width = 278
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
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
        object DBEidCadGeral: TCDBEdit
          Left = 89
          Top = 17
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadGeral'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn3: TCBitBtn
          Left = 441
          Top = 17
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadCliente
          Caption = 'Clientes/Fornec.'
          TabOrder = 2
          TabStop = False
        end
        object DBEdtCompensacao: TCDBEdit
          Left = 89
          Top = 117
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtCompensacao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEidCheque: TCDBEdit
          Left = 240
          Top = 117
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
          TabOrder = 14
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEdtVencimento: TCDBEdit
          Left = 381
          Top = 117
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 15
          DecimalControl = True
          KeyMode = kmDate
        end
        object CBitBtn4: TCBitBtn
          Left = 463
          Top = 92
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadGerencial
          Caption = '&Gerencial'
          TabOrder = 12
          TabStop = False
        end
        object DBEidGerencial: TCDBEdit
          Left = 89
          Top = 92
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsPadrao
          TabOrder = 11
          Find = dmFind.FindGerencial
          AcaoCad = frmPrincipal.actCadGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookGerencialR: TCLookUp
          Left = 143
          Top = 92
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 16
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
        object LookGerencialP: TCLookUp
          Left = 143
          Top = 92
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 17
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
      end
      object CGroupBox2: TCGroupBox
        Left = 8
        Top = 7
        Width = 570
        Height = 94
        Caption = 'Lan'#231'amento'
        TabOrder = 0
        object CLabel5: TCLabel
          Left = 156
          Top = 16
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data'
        end
        object CLabel6: TCLabel
          Left = 275
          Top = 16
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel7: TCLabel
          Left = 35
          Top = 42
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hist'#243'rico'
        end
        object CLabel9: TCLabel
          Left = 39
          Top = 16
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object CLabel2: TCLabel
          Left = 406
          Top = 17
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object DBEdtAdiantamento: TCDBEdit
          Left = 185
          Top = 14
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtAdiantamento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEvlAdiantamento: TCDBEdit
          Left = 305
          Top = 14
          Width = 92
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlAdiantamento'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidAdiantamento: TCDBEdit
          Left = 82
          Top = 14
          Width = 68
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idAdiantamento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 0
          OnExit = DBEidAdiantamentoExit
          OnKeyDown = DBEidAdiantamentoKeyDown
          DecimalControl = True
          KeyMode = kmInteger
        end
        object DBEstAdiantamento: TCDBEdit
          Left = 443
          Top = 14
          Width = 118
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stAdiantamento'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBMdescAdiantamento: TCDBMemo
          Left = 82
          Top = 39
          Width = 479
          Height = 44
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descAdiantamento'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 4
          KeyMemo = kmmUSUpper
        end
      end
      object DBRGtpAdiantamento: TCDBRadioGroup
        Left = 8
        Top = 107
        Width = 570
        Height = 46
        Caption = 'Tipo de Adiantamento'
        Columns = 2
        DataField = 'tpAdiantamento'
        DataSource = dsPadrao
        Items.Strings = (
          'Adiantamento de Cliente'
          'Adiantamento para Fornecedor')
        TabOrder = 1
        Values.Strings = (
          'C'
          'F')
        OnExit = DBRGtpAdiantamentoExit
      end
      object CGroupBox1: TCGroupBox
        Left = 8
        Top = 309
        Width = 570
        Height = 48
        Caption = 'Op'#231#245'es de Impress'#227'o'
        TabOrder = 4
        object btnImpRecibo: TCBitBtn
          Left = 8
          Top = 17
          Width = 75
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
          TabOrder = 2
          Visible = False
          OnClick = btnImpReciboClick
        end
        object BtnImpChq: TCBitBtn
          Left = 325
          Top = 14
          Width = 123
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
          TabOrder = 0
          OnClick = BtnImpChqClick
        end
        object CKNominal: TCCheckBox
          Left = 89
          Top = 19
          Width = 65
          Height = 17
          Caption = 'Nominal?'
          TabOrder = 3
        end
        object CKCruzado: TCCheckBox
          Left = 160
          Top = 19
          Width = 71
          Height = 17
          Caption = 'Cruzado?'
          TabOrder = 4
        end
        object CKPreDatado: TCCheckBox
          Left = 236
          Top = 19
          Width = 85
          Height = 17
          Caption = 'Pr'#233'-Datado?'
          TabOrder = 5
        end
        object BtnCopiaCheque: TCBitBtn
          Left = 454
          Top = 14
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
          TabOrder = 1
          OnClick = BtnCopiaChequeClick
        end
      end
      object LookCnpjCpfCliente: TCLookUp
        Left = 584
        Top = 225
        Width = 193
        Height = 19
        Alignment = taLeftJustify
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 14149350
        ParentBackground = False
        TabOrder = 3
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
    object TabMovimento: TTabSheet
      Caption = 'Movimenta'#231#227'o'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CLabel4: TCLabel
        Left = 508
        Top = 279
        Width = 132
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo de Adiantamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 3
        Width = 758
        Height = 259
        TabOrder = 0
        object GridParcelas: TCDBGrid
          Left = 8
          Top = 14
          Width = 737
          Height = 235
          TabStop = False
          DataSource = dsMov
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
              FieldName = 'descMovFinanceira'
              Title.Caption = 'Movimenta'#231#227'o'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtAdiantamentoMov'
              Title.Caption = 'Data'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idMovCaixa'
              Title.Caption = 'ID Caixa'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idMovConta'
              Title.Caption = 'ID Conta'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idTituloPagMov'
              Title.Caption = 'ID Pagto.'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idTituloRecMov'
              Title.Caption = 'ID Recto.'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlAdiantamentoMov'
              Title.Caption = 'Valor'
              Width = 70
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'sinal'
              Title.Caption = 'Sin.'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descAdiantamentoMov'
              Title.Caption = 'Hist'#243'rico'
              Width = 300
              Visible = True
            end>
        end
      end
      object DBEvlSaldoAdto: TCDBEdit
        Left = 646
        Top = 276
        Width = 102
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = 14149350
        DataField = 'vlSaldoAdto'
        DataSource = dsMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmNormal
      end
      object DBRGtpFinanc: TCDBRadioGroup
        Left = 3
        Top = 268
        Width = 278
        Height = 35
        Caption = 'Op'#231#227'o para gerar saldo'
        Color = 15201011
        Columns = 3
        DataField = 'tpFinanc'
        DataSource = dsPadrao
        Enabled = False
        Items.Strings = (
          'Caixa'
          'Conta'
          'Titulo')
        ParentColor = False
        TabOrder = 2
        Values.Strings = (
          'CX'
          'CN'
          'TI')
        OnExit = DBRGtpFinancExit
      end
      object BtnGerar: TCBitBtn
        Left = 287
        Top = 275
        Width = 75
        Height = 25
        Caption = '&Gerar'
        Enabled = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009898
          98FF929292FF8C8C8CFF868686FF818181FF7C7C7CFF787878FF757575FF7474
          74FF757575FF787878FF7C7C7CFF818181FF868686FF00000000000000000000
          00004B4B4BFF888888FF808080FF797979FF747474FF727272FF747474FF7979
          79FF808080FF888888FF919191FF4B4B4BFF0000000000000000000000000000
          00004B4B4BFF8D8D8DFF868686FF808080FF7C7C7CFF7B7B7BFF7C7C7CFF8080
          80FF868686FF8D8D8DFF949494FF4B4B4BFF0000000000000000000000000000
          00002C2C2C964B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B
          4BFF4B4B4BFF4B4B4BFF4B4B4BFF2C2C2C960000000000000000000000000000
          000000000000000000000000000034290E51765C1AB69E7A1EF3A07B1FF6785E
          1BB9362B0E540000000000000000000000000000000000000000000000000000
          000000000000000000005A46168EAE904DFF927955FFDED05CFFD2BD59FF9380
          61FF9A8363FF5C47179100000000000000000000000000000000000000000000
          0000000000002C220A48A98326FF937A54FFFEFEFCFF988865FF997F5CFFFFFF
          FCFF9F8A67FFA88448FF34270C54000000000000000000000000000000000000
          000000000000694E1BB1D8B128FFC8B862FFD2D0C3FFFDFCFBFFF7F6F1FFD2C8
          BAFFBFA759FFD9AB1DFF70541DBD000000000000000000000000000000000000
          000000000000886428F0DAB73BFF957751FFCDCBBFFFFDFDFCFFF9F8F4FFD7D3
          C9FF968362FFDBB22EFF936C29FF030201060000000000000000000000000000
          000000000000886533F7897B5CFFFEFEF3FFFCFCFAFFFEFEFBFFFDFDFCFFFFFF
          FDFFFEFDFBFF9E8A66FF8D6A33FF030201060000000000000000000000000000
          0000000000005A3F20ABCCB16DFFAF9E73FF978567FFFEFEFAFFFFFFFEFF907C
          60FF998055FFC4A157FF624522BA000000000000000000000000000000000000
          00000000000021170D42A9895EFFF4DB93FFC4B183FFFFFFFBFFC3BAAEFFC0AD
          86FFF2D179FFA8854FFF291C1051000000000000000000000000000000000000
          00000000000000000000422C1C87A68560FFE7CF9AFF9D876AFFAC9776FFE4C8
          8AFFA17E57FF452E1D8D00000000000000000000000000000000000000000000
          000000000000000000000000000022160F48533725B16E4932EA704A32ED5337
          25B122160F480000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Margin = 5
        TabOrder = 3
        OnClick = BtnGerarClick
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 435
    Width = 973
    ExplicitTop = 435
    ExplicitWidth = 973
    inherited BtnFechar: TCBitBtn
      Left = 894
      Anchors = [akRight, akBottom]
      ExplicitLeft = 894
    end
    inherited BtnExcluir: TCBitBtn
      Left = 251
      TabOrder = 3
      ExplicitLeft = 251
    end
    inherited BtnNovo: TCBitBtn
      Left = 170
      TabOrder = 2
      ExplicitLeft = 170
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 973
    Height = 32
    ExplicitWidth = 973
    ExplicitHeight = 32
    inherited lblCNPJ: TCLabel
      Left = 628
      Top = 32
      Visible = False
      ExplicitLeft = 628
      ExplicitTop = 32
    end
    inherited lblInscricao: TCLabel
      Left = 653
      Top = 3
      Visible = False
      ExplicitLeft = 653
      ExplicitTop = 3
    end
    inherited LookdescCadEmpresa: TCLookUp
      Width = 245
      ExplicitWidth = 245
    end
    inherited LookdescAbreviada: TCLookUp
      Left = 414
      Width = 163
      ExplicitLeft = 414
      ExplicitWidth = 163
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 800
      Top = 24
      Visible = False
      ExplicitLeft = 800
      ExplicitTop = 24
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 682
      Top = 24
      Visible = False
      ExplicitLeft = 682
      ExplicitTop = 24
    end
  end
  inherited imgIcones: TImageList
    Left = 656
    Top = 168
    Bitmap = {
      494C010102000400140110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F709C9CACA3BB4B4
      B65BCDCDCE34E6E6E619F3F3F30C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECECEC13B2B2B34EA1B6BBF3C4D7
      D7FEB9CDD0FDA4B5B9E8959FA4C4979C9F99A8A9AC6BC8C8C93AE5E5E51AF6F6
      F60A000000000000000000000000000000000156030001560300015603000156
      0300000000000000820000008200000082000000820000008200000082000000
      8200000082000000820000008200000082000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2D2D22D959596709FB9BCFEC5D8
      D8FEC3D7D7FEB8CFD0FEB0C9CAFEABC5C7FEA7C1C5FEA7BEC5FDA0B1B8EC97A0
      A7C3B2B4B871000000000000000000000000015603002DC651001DB236000156
      03000000000000008200011EF3000527FB001337FB003052FC005F7DFE00A1B4
      FF00F2F6FF00FFFFFF00FFFFFF00000082000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9D9DA289EB7BBFEB5CD
      CEFEB8CFCFFEA6C3C4FEA7C2C4FEA7C1C5FEA7C0C5FEA7C0C5FEA7BFC5FEA7BE
      C5FEA8BEC5FBD9DEE67E0000000000000000015603003FD96D0030C956000156
      030000000000000082000120FB000528FC001438FC003154FE00607FFF00A5B7
      FF00F6FAFF00FFFFFF00FFFFFF00000082000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F610A0BCBDFEA8C1
      C4FEB3CCCCFEA7C3C4FEA7C2C5FEA7C0C5FEA7C0C5FEA7BFC5FEA7BEC5FEA7BE
      C5FEA7BDC5FEBEC9D4BFFDFDFE13000000000156030001560300015603000156
      0300000000000000820000008200000082000000820000008200000082000000
      8200000082000000820000008200000082000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F610A4C1C2FEA0B9
      BDFEB5CDCEFEB0C8CAFEAEC6C9FEABC3C7FEA9C0C4FEA9BFC5FEA9BFC6FEA9BE
      C6FEA8BCC5FEBDC8D3C2F2F3F64C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F70EA5C2C3FE9EB8
      BBFEB5CBCDFEBACFD1FEB6CBCEFE9FC2C1FE8AC9C1FE8DC6C0FE95C3C1FE9EC1
      C3FEA6BEC5FEC0CAD5C6DCDFE787000000000000000000000000000000000156
      0300015603000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F80DA6C2C4FE9FBC
      BCFEAFC4C9FEC4D5D7FEBCCDCFFE95D0C6FE8ED3C8FE8DD1C7FE8CD0C6FE8ACE
      C5FE89CDC4FE91CBC6F5C4D1D9BDFEFEFE1100000000000000000156030041E0
      740028AC47000156030001560300000000000000000000000000000000000000
      000000000000035A050001560300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F80DA6C2C4FEA4C1
      C1FEA1B9BEFECCDBDDFEC4D1D3FEA0DAD0FE98DACEFE97D9CEFE96D8CDFE95D6
      CCFE93D5CBFE99D4CDFEC0DADCD9F4F4F74A0000000000000000015603002DC4
      500035CE5D00188F2C0001560300000000000000000000000000000000000000
      0000045F0900188E2B0001560300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F90BA7C2C4FCA5C3
      C3FE9CB8B9FEA7BBC0FEB3C2C5FEA8DCD4FE9EDED2FEA1E1D4FEA0E0D4FE9FDE
      D2FEA9DBD3FEC1E2DFF4DFE7EAC0E4E5EC8400000000015603000E8F1C0019AB
      310022B53E00035E070000000000000000000000000000000000000000000563
      0A002DB750000156030000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F90AB1C9CCFAB3CC
      CCFEAEC9C9FEA6C1C1FE6A958CFE55C8ABFE0FB58EFE1EB593FE33B99CFE55C0
      AAFE7EC0B6FEC0C3C8A8D7D8DD93E3E3EC7B0000000001560300015603000365
      070011A3220016A42900046007000258040001570400045F08000E7819002FBC
      5500015603000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5D4D8F5D9E6
      E6FED4E3E3FECEDDDDFE89B3A9FE78E2C8FE01CA97FE38AE90C722CA9FF83DD3
      ADFE57D7B6FDAFC2BD5500000000000000000000000000000000000000000156
      0300026305000A9815000FA01F000D891A00108E1F001CA634002ABD4A000156
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD1BF9FA
      FB3CF8F8FA53E6E8E96C8DA39EA789E6CFFE0CCD9DFE92BBB06D7CA69B8B64DE
      C0FE83E5CCFE85DAC4E8F8F9F90F000000000000000000000000000000000000
      0000015603000156030005840C00088E11000D971A000D971A00015603000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F70A9EB7B06D86BBAD7E00000000EDEDED146FB4
      A2C5AAEDDCFEC1F1E5FEEBF2F02A000000000000000000000000000000000000
      0000000000000000000001560300015603000156030001560300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDDF
      DE2491B9AE9BA7C6BD7900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF0000000081FFFFFF00000000
      000F080000000000000708000000000080030800000000008001080000000000
      8001FFFF000000008001E7FF000000008000C1F9000000008000C1F100000000
      800083E3000000008000800700000000C003E00F00000000C001F01F00000000
      FC41FC3F00000000FFE3FFFF0000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 768
    Top = 168
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM Adiantamento'
    OnCalcFields = cdsPadraoCalcFields
    Left = 792
    Top = 96
    object cdsPadraoidAdiantamento: TIntegerField
      FieldName = 'idAdiantamento'
      Required = True
    end
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraodtAdiantamento: TSQLTimeStampField
      FieldName = 'dtAdiantamento'
      Required = True
    end
    object cdsPadraodescAdiantamento: TStringField
      FieldName = 'descAdiantamento'
      Required = True
      Size = 250
    end
    object cdsPadraovlAdiantamento: TFMTBCDField
      FieldName = 'vlAdiantamento'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraotpAdiantamento: TStringField
      FieldName = 'tpAdiantamento'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraoidCadGeral: TIntegerField
      FieldName = 'idCadGeral'
    end
    object cdsPadraoidCaixa: TIntegerField
      FieldName = 'idCaixa'
    end
    object cdsPadraoidConta: TIntegerField
      FieldName = 'idConta'
    end
    object cdsPadraostAdiantamento: TStringField
      FieldName = 'stAdiantamento'
      Required = True
      Size = 15
    end
    object cdsPadraoidCheque: TStringField
      FieldName = 'idCheque'
      Size = 10
    end
    object cdsPadraodtVencimento: TSQLTimeStampField
      FieldName = 'dtVencimento'
    end
    object cdsPadraodtCompensacao: TSQLTimeStampField
      FieldName = 'dtCompensacao'
    end
    object cdsPadraovlMovConta: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlMovConta'
      Calculated = True
    end
    object cdsPadraoidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPadraotpFinanc: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'tpFinanc'
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsResultado
    BeforeUpdateRecord = dspPadraoBeforeUpdateRecord
    Left = 728
    Top = 96
  end
  inherited dsPadrao: TDataSource
    Left = 848
    Top = 96
  end
  inherited ImgBotoes: TImageList
    Left = 712
    Top = 168
    Bitmap = {
      494C010106000800F40020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 1056
    Top = 152
  end
  inherited dspLookup: TDataSetProvider
    Left = 1008
  end
  inherited sdsLookup: TSQLDataSet
    CommandText = 'SELECT * FROM MovFinanceira'
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 728
    Top = 64
  end
  inherited dsEmpresa: TDataSource
    Left = 760
    Top = 64
  end
  object sdsResultado: TSQLDataSet
    SchemaName = 'gesys'
    CommandText = 'SELECT * FROM Adiantamento'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 656
    Top = 96
  end
  object cdsMov: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM AdiantamentoMov'
    Params = <>
    ProviderName = 'dspMov'
    AfterOpen = cdsPadraoAfterOpen
    OnCalcFields = cdsMovCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 792
    Top = 232
    object cdsMovidAdiantamento: TIntegerField
      FieldName = 'idAdiantamento'
      Required = True
    end
    object cdsMovidAdiantamentoMov: TSmallintField
      FieldName = 'idAdiantamentoMov'
      Required = True
    end
    object cdsMovidMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
    end
    object cdsMovidMovConta: TIntegerField
      FieldName = 'idMovConta'
    end
    object cdsMovidTituloPagMov: TIntegerField
      FieldName = 'idTituloPagMov'
    end
    object cdsMovidTituloRecMov: TIntegerField
      FieldName = 'idTituloRecMov'
    end
    object cdsMovidMovFinanceira: TIntegerField
      FieldName = 'idMovFinanceira'
    end
    object cdsMovvlAdiantamentoMov: TFMTBCDField
      FieldName = 'vlAdiantamentoMov'
      Precision = 19
      Size = 4
    end
    object cdsMovfator: TSmallintField
      FieldName = 'fator'
      Required = True
    end
    object cdsMovdescMovFinanceira: TStringField
      FieldKind = fkLookup
      FieldName = 'descMovFinanceira'
      LookupDataSet = cdsMovFinanceira
      LookupKeyFields = 'idMovFinanceira'
      LookupResultField = 'descMovFinanceira'
      KeyFields = 'idMovFinanceira'
      Size = 50
      Lookup = True
    end
    object cdsMovsinal: TStringField
      FieldKind = fkCalculated
      FieldName = 'sinal'
      Size = 1
      Calculated = True
    end
    object cdsMovdtAdiantamentoMov: TSQLTimeStampField
      FieldName = 'dtAdiantamentoMov'
      Required = True
    end
    object cdsMovdescAdiantamentoMov: TStringField
      FieldName = 'descAdiantamentoMov'
      Size = 250
    end
    object cdsMovvlSaldoAdto: TAggregateField
      FieldName = 'vlSaldoAdto'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlAdiantamentoMov*fator)'
    end
  end
  object dsMov: TDataSource
    DataSet = cdsMov
    Left = 855
    Top = 232
  end
  object dspMov: TDataSetProvider
    DataSet = sdsMov
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 728
    Top = 232
  end
  object sdsMov: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM AdiantamentoMov'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 656
    Top = 232
  end
  object cdsMovFinanceira: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MovFinanceira'
    Params = <>
    ProviderName = 'dspLookup'
    Left = 800
    Top = 296
  end
  object Report: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39849.459104513900000000
    ReportOptions.LastChange = 41200.579643518500000000
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
        Height = 461.102660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 1.779530000000001000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 488.559370000000000000
          Top = 3.456710000000001000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          Visible = False
          ShowHint = False
        end
        object Memo7: TfrxMemoView
          Left = 487.323130000000000000
          Top = 66.488250000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Recibo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 487.559370000000000000
          Top = 82.606370000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          Visible = False
          ShowHint = False
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
        object Shape2: TfrxShapeView
          Left = 488.692913390000000000
          Top = 26.692950000000000000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          ShowHint = False
        end
        object Memo9: TfrxMemoView
          Left = 495.661720000000000000
          Top = 29.252010000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Top = 45.370130000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [valor]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 8.118120000000000000
          Top = 116.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          Top = 421.787570000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.TopLine.Style = fsDash
        end
        object Memo14: TfrxMemoView
          Left = 140.842610000000000000
          Top = 116.165430000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          Top = 280.685220000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 341.905690000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 361.819110000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 397.630180000000000000
          Width = 363.180356430000000000
          Height = 15.118110240000000000
          ShowHint = False
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
          Left = 174.960730000000000000
          Top = 253.008040000000000000
          Width = 22.677180000000000000
          Height = 18.897637800000000000
          ShowHint = False
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
          ShowHint = False
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
      end
      object PageHeader1: TfrxPageHeader
        Height = 422.307350240000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.559059999999988000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 21.456709999999990000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 41.133890000000010000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 61.031540000000010000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 80.708720000000030000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Shape3: TfrxShapeView
          Left = 488.779840000000000000
          Top = 3.236240000000010000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          Visible = False
          ShowHint = False
        end
        object Memo24: TfrxMemoView
          Left = 495.102660000000000000
          Top = 78.795300000000050000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Recibo')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 495.338900000000000000
          Top = 94.913420000000030000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          Visible = False
          ShowHint = False
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
        object Shape4: TfrxShapeView
          Left = 488.692913390000000000
          Top = 32.472479999999960000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          ShowHint = False
        end
        object Memo27: TfrxMemoView
          Left = 496.118430000000000000
          Top = 45.149659999999980000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [valor]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 8.338590000000000000
          Top = 115.944960000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          Top = 186.417440000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          Top = 301.008040000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 332.685220000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 352.598640000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Top = 396.850650000000000000
          Width = 372.180356430000000000
          Height = 15.118110240000000000
          ShowHint = False
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
          Top = 35.913420000000030000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Top = 257.008040000000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          ShowHint = False
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
          ShowHint = False
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
      end
    end
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 744
    Top = 344
  end
  object rptCheque: TfrxDBDataset
    UserName = 'Cheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idAdiantamento=idAdiantamento'
      'idEmpresa=idEmpresa'
      'idCadEmpresa=idCadEmpresa'
      'dtAdiantamento=dtAdiantamento'
      'descAdiantamento=descAdiantamento'
      'vlAdiantamento=vlAdiantamento'
      'tpAdiantamento=tpAdiantamento'
      'idCadGeral=idCadGeral'
      'idCaixa=idCaixa'
      'idConta=idConta'
      'stAdiantamento=stAdiantamento'
      'idCheque=idCheque'
      'dtVencimento=dtVencimento'
      'dtCompensacao=dtCompensacao'
      'vlMovConta=vlMovConta')
    DataSource = dsPadrao
    BCDToCurrency = False
    Left = 600
    Top = 344
  end
  object cdsRecibo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Recibo'
    Params = <>
    ProviderName = 'dspRecibo'
    Left = 888
    Top = 360
  end
  object dspRecibo: TDataSetProvider
    DataSet = sdsRecibo
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 856
    Top = 360
  end
  object sdsRecibo: TSQLDataSet
    CommandText = 'SELECT * FROM Recibo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 824
    Top = 360
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
    Left = 576
    Top = 264
  end
end
