inherited FrmCadPrevisaoPag: TFrmCadPrevisaoPag
  Caption = 'Lan'#231'amento de previs'#245'es a pagar'
  ClientHeight = 503
  ClientWidth = 759
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
  ExplicitTop = -136
  ExplicitWidth = 775
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel6: TBevel [0]
    Left = 0
    Top = 32
    Width = 759
    Height = 53
    Align = alTop
    Style = bsRaised
    ExplicitTop = 38
    ExplicitWidth = 720
  end
  inherited Bevel1: TBevel
    Top = 468
    Width = 759
    ExplicitTop = 509
    ExplicitWidth = 629
  end
  inherited Bevel2: TBevel
    Top = 85
    Width = 759
    ExplicitLeft = 8
    ExplicitTop = 22
    ExplicitWidth = 720
  end
  object CLabel60: TCLabel [3]
    Left = 33
    Top = 43
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo'
  end
  object CLabel3: TCLabel [4]
    Left = 145
    Top = 43
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'S'#233'rie'
  end
  object CLabel4: TCLabel [5]
    Left = 438
    Top = 65
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Status'
  end
  object CLabel9: TCLabel [6]
    Left = 11
    Top = 65
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor'
  end
  object CLabel1: TCLabel [7]
    Left = 468
    Top = 43
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#250'mero'
  end
  inherited PagAbas: TCPageControl
    Top = 89
    Width = 759
    Height = 379
    ActivePage = TabRateio
    TabOrder = 8
    OnChange = PagAbasChange
    ExplicitTop = 89
    ExplicitWidth = 759
    ExplicitHeight = 379
    inherited TabAbas: TTabSheet
      Caption = 'Dados da Previs'#227'o'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 751
      ExplicitHeight = 350
      object CGroupBox1: TCGroupBox
        Left = 8
        Top = 4
        Width = 581
        Height = 302
        TabOrder = 0
        object CLabel5: TCLabel
          Left = 28
          Top = 16
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Documento'
        end
        object CLabel6: TCLabel
          Left = 184
          Top = 16
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel7: TCLabel
          Left = 372
          Top = 16
          Width = 98
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor da Previsao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel8: TCLabel
          Left = 53
          Top = 60
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Banco'
        end
        object CLabel10: TCLabel
          Left = 6
          Top = 104
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mov. Financeira'
        end
        object CLabel11: TCLabel
          Left = 34
          Top = 126
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Resultado'
        end
        object CLabel12: TCLabel
          Left = 51
          Top = 148
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio'
        end
        object CLabel13: TCLabel
          Left = 38
          Top = 170
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gerencial'
        end
        object CLabel20: TCLabel
          Left = 19
          Top = 236
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Observa'#231#245'es'
        end
        object CLabel17: TCLabel
          Left = 31
          Top = 214
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Multa (%) '
        end
        object CLabel18: TCLabel
          Left = 160
          Top = 214
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Juros (%) '
        end
        object CLabel19: TCLabel
          Left = 308
          Top = 214
          Width = 191
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto para pagamento pontual (%) '
        end
        object CLabel16: TCLabel
          Left = 410
          Top = 192
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dias entre parcelas'
        end
        object CLabel15: TCLabel
          Left = 142
          Top = 192
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Primeira parcela'
        end
        object CLabel14: TCLabel
          Left = 42
          Top = 192
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcelas'
        end
        object CLabel21: TCLabel
          Left = 53
          Top = 82
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #205'ndice'
        end
        object CLabel22: TCLabel
          Left = 337
          Top = 82
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cota'#231#227'o'
        end
        object CLabel23: TCLabel
          Left = 56
          Top = 38
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object DBEtpDocumento: TCDBEdit
          Left = 88
          Top = 13
          Width = 90
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'tpDocumento'
          DataSource = dsPadrao
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEdtEmissao: TCDBEdit
          Left = 228
          Top = 13
          Width = 78
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEvlPrevisaoPag: TCDBEdit
          Left = 476
          Top = 13
          Width = 94
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlPrevisaoPag'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnEnter = DBEvlPrevisaoPagEnter
          OnExit = DBEvlPrevisaoPagExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidBanco: TCDBEdit
          Left = 88
          Top = 57
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idBanco'
          DataSource = dsPadrao
          TabOrder = 5
          Find = FindBanco
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookBanco: TCLookUp
          Left = 142
          Top = 57
          Width = 233
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idBanco')
          LookUpKey.Strings = (
            'idBanco')
          AlternateSQL.Strings = (
            
              'SELECT descBanco FROM Banco WHERE ehPortador = '#39'S'#39' AND idBanco =' +
              ' ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Banco'
          ReturnField = 'descBanco'
        end
        object DBEidMovFinanceira: TCDBEdit
          Left = 88
          Top = 101
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idMovFinanceira'
          DataSource = dsPadrao
          TabOrder = 10
          Find = FindMovFinanceira
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidResultado: TCDBEdit
          Left = 88
          Top = 123
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
          Top = 145
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRateio'
          DataSource = dsPadrao
          TabOrder = 12
          OnEnter = DBEidRateioEnter
          OnExit = DBEidResultadoExit
          Find = FindRateio
          AcaoCad = frmPrincipal.actCadPlanoRateio
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidGerencial: TCDBEdit
          Left = 88
          Top = 167
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idGerencial'
          DataSource = dsPadrao
          TabOrder = 13
          OnEnter = DBEidGerencialEnter
          OnExit = DBEidResultadoExit
          Find = FindGerenciaP
          AcaoCad = frmPrincipal.actCadGerencial
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBMobsPrevisaoPag: TCDBMemo
          Left = 88
          Top = 233
          Width = 482
          Height = 59
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsPrevisaoPag'
          DataSource = dsPadrao
          ScrollBars = ssVertical
          TabOrder = 21
          OnExit = DBMobsPrevisaoPagExit
          KeyMemo = kmmNormal
        end
        object DBEprMulta: TCDBEdit
          Left = 88
          Top = 211
          Width = 66
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prMulta'
          DataSource = dsPadrao
          TabOrder = 18
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprJuros: TCDBEdit
          Left = 217
          Top = 211
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prJuros'
          DataSource = dsPadrao
          TabOrder = 19
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprDesconto: TCDBEdit
          Left = 505
          Top = 211
          Width = 65
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prDesconto'
          DataSource = dsPadrao
          TabOrder = 20
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdiasVencimento: TCDBEdit
          Left = 508
          Top = 189
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'diasVencimento'
          DataSource = dsPadrao
          TabOrder = 17
          OnEnter = DBEvlPrevisaoPagEnter
          OnExit = DBEvlPrevisaoPagExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtVencimentoIni: TCDBEdit
          Left = 224
          Top = 189
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimentoIni'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 15
          OnEnter = DBEvlPrevisaoPagEnter
          OnExit = DBEvlPrevisaoPagExit
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEqtParcelas: TCDBEdit
          Left = 88
          Top = 189
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtParcelas'
          DataSource = dsPadrao
          TabOrder = 14
          OnEnter = DBEvlPrevisaoPagEnter
          OnExit = DBEqtParcelasExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidIndice: TCDBEdit
          Left = 88
          Top = 79
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 7
          Find = FindIndice
          AcaoCad = frmPrincipal.actIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookIndice: TCLookUp
          Left = 142
          Top = 79
          Width = 189
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 8
          Key.Strings = (
            'idIndice')
          LookUpKey.Strings = (
            'idIndice')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Indice'
          ReturnField = 'descIndice'
        end
        object LookLancamento: TCLookUp
          Left = 383
          Top = 79
          Width = 73
          Height = 19
          Alignment = taRightJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 9
          Key.Strings = (
            'idIndice')
          LookUpKey.Strings = (
            'idIndice')
          AlternateSQL.Strings = (
            
              'SELECT vlLancamento FROM indicelancamento WHERE dtLancamento = (' +
              'SELECT MAX(ind.dtLancamento) FROM indicelancamento ind WHERE ind' +
              '.idIndice = indicelancamento.idIndice) AND idIndice = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          OnSetText = LookLancamentoSetText
          CampoObrigatorio = True
          LookUpTable = 'IndiceLancamento'
          ReturnField = 'vlLancamento'
        end
        object CBitBtn1: TCBitBtn
          Left = 381
          Top = 57
          Width = 75
          Height = 19
          Caption = '&Bancos'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00F1F1F1FFBCBCBCFFD7D7D7FFE5E5
            E5FFE5E5E5FFF5F5F5FFFDFDFDFFFDFDFDFFFEFEFEFFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00F1F1F1FF9A9A9AFF8C8C8CFF969696FFB0B0
            B0FFCBCBCBFFD7D7D7FFD8D8D8FFD9D9D9FFF1F1F1FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D9D9D9FF9C9C9CFF9B9B9BFF979797FF9898
            98FF9E9E9EFF9F9F9FFFBEBEBEFFEFEFEFFFFDFDFDFFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00EEEEEEFFC9C9C9FFCDCDCDFFD7D7D7FFDDDDDDFFE0E0
            E0FFDCDCDCFFC6C6C6FFDEDEDEFFF3F3F3FFFAFAFAFFFF00FF00FF00FF00FF00
            FF00FF00FF00E0E0E0FFB3B3B3FFB7B7B7FFC5C5C5FFC4C4C4FFDCDCDCFFE6E6
            E6FFEDEDEDFFE9E9E9FFECECECFFEAEAEAFFE8E8E8FFECECECFFFF00FF00FF00
            FF00FEFEFEFFC2C4C4FFB8B8B8FFC3C3C3FF8D8D8DFF1B1B1BFF2F2F2FFF4C4C
            4CFF6E6E6EFF898989FFA7A7A7FFC4C4C4FFD9D9D9FFDFDFDFFFFF00FF00FAF2
            F2FFAE8885FFB5B6B6FFBABBBBFFC1C1C1FF868686FF000000FF000000FF0000
            00FF000000FF000000FF000000FF080808FF161616FF7E7E7EFFFF00FF009B69
            69FF51312BFFB6B4B4FFB6B7B7FFBEBEBEFF878787FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF676767FFC3ACABFF340A
            02FF6C281EFFB4AFAEFFB5B6B6FFC0C0C0FF808080FF000000FF000000FF0000
            00FF000000FF000000FF020202FF090909FF090909FF797979FF6F5956FF4310
            06FF871E0BFFC79D94FFB1B7B9FFC4C4C4FF7B7B7BFF000000FF000000FF0000
            00FF000000FF020202FF111111FF242424FF2B2B2BFF929292FF4B332FFF4910
            05FF8D1702FFD58575FFB2B9BAFFC7C7C7FF717171FF000000FF000000FF0000
            00FF010101FF101010FF2C2C2CFF464646FF565656FFADADADFF62403BFF5012
            07FFAF4E3DFFE09988FFAA9E9DFFC8CACAFF545454FF000000FF000000FF0000
            00FF000000FF181818FF3E3E3EFF616161FF777777FFB9B9B9FFB3807CFF521F
            17FFE29889FFFDB7A1FFABA4A1FFC4C7C8FF999B9BFF6F7171FF6A6B6BFF6465
            65FF646464FF727272FF828282FF909090FFA6A6A6FFD4D4D4FFF4DDDDFF5525
            1DFFC68578FFFFBBA6FFB4A099FFC5C3C2FFF0EBEBFFF5F2F1FFF5F5F5FFFBFB
            FBFFFAFAFAFFF6F6F6FFF0F0F0FFEAEAEAFFE8E8E8FFEFEFEFFFFF00FF00E5BD
            BCFF89493EFFFB856EFFEC7C62FFDC7A66FFD38677FF9D4B3EFFCB8073FFFBE9
            E5FFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFFCFCFCFFFF00FF00FF00
            FF00F4DFDCFFF2A093FFFEA691FFF19E8AFFD88574FFD4867AFFFEECE9FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 22
          TabStop = False
        end
        object CBitBtn2: TCBitBtn
          Left = 462
          Top = 79
          Width = 96
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 23
          TabStop = False
        end
        object CBitBtn4: TCBitBtn
          Left = 462
          Top = 123
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadResultado
          Caption = '&Resultado'
          TabOrder = 24
          TabStop = False
        end
        object CBitBtn5: TCBitBtn
          Left = 352
          Top = 145
          Width = 104
          Height = 19
          Action = frmPrincipal.actCadPlanoRateio
          Caption = '&Plano de Rateio'
          TabOrder = 25
          TabStop = False
        end
        object CBitBtn6: TCBitBtn
          Left = 462
          Top = 167
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadGerencial
          Caption = '&Gerencial'
          TabOrder = 26
          TabStop = False
        end
        object DBEidSafra: TCDBEdit
          Left = 88
          Top = 35
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 3
          Find = FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSafra: TCLookUp
          Left = 142
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
          Top = 35
          Width = 96
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 27
          TabStop = False
        end
        object DBCKincMes: TCDBCheckBox
          Left = 310
          Top = 191
          Width = 88
          Height = 17
          Caption = 'Mesmo Dia?'
          DataField = 'incMes'
          DataSource = dsPadrao
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnExit = DBCKincMesExit
        end
        object LookRateio: TCLookUp
          Left = 142
          Top = 145
          Width = 204
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 28
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
        object LookGerencialP: TCLookUp
          Left = 142
          Top = 167
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 29
          Key.Strings = (
            'idGerencial')
          LookUpKey.Strings = (
            'idGerencial')
          AlternateSQL.Strings = (
            
              'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
              '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
              'sa] AND idGerencial = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vGerencial'
          ReturnField = 'descGerencial'
        end
        object CLookUp1: TCLookUp
          Left = 142
          Top = 123
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 30
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
        object LookMovFinanceira: TCLookUp
          Left = 142
          Top = 101
          Width = 314
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 31
          Key.Strings = (
            'idMovFinanceira')
          LookUpKey.Strings = (
            'idMovFinanceira')
          AlternateSQL.Strings = (
            
              'SELECT descMovFinanceira FROM MovFinanceira WHERE idMovOrigem = ' +
              '2 AND idTpMovFinanceira = 1 AND idMovFinanceira = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'MovFinanceira'
          ReturnField = 'descMovFinanceira'
        end
      end
      object BtnGeraTitulo: TCBitBtn
        Left = 418
        Top = 312
        Width = 165
        Height = 25
        Caption = '&Gera Titulo da Previs'#227'o'
        Enabled = False
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
          6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
          A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
          4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
          00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 1
        OnClick = BtnGeraTituloClick
      end
      object BtnExcluirPrevisao: TCBitBtn
        Left = 7
        Top = 312
        Width = 128
        Height = 25
        Caption = '&Excluir Previs'#227'o'
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
        TabOrder = 2
        OnClick = BtnExcluirPrevisaoClick
      end
    end
    object TabParcelas: TTabSheet
      Caption = 'Parcelas'
      ImageIndex = 1
      object CGroupBox6: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 38
        TabOrder = 0
        object CLabel24: TCLabel
          Left = 8
          Top = 14
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcela'
        end
        object CLabel25: TCLabel
          Left = 99
          Top = 14
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor da Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel26: TCLabel
          Left = 284
          Top = 14
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento'
        end
        object CLabel27: TCLabel
          Left = 431
          Top = 14
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
        end
        object DBEidParcela: TCDBEdit
          Left = 49
          Top = 11
          Width = 44
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idParcela'
          DataSource = dsPrevisaoPagParc
          TabOrder = 0
          OnExit = DBEidParcelaExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlParcela: TCDBEdit
          Left = 196
          Top = 11
          Width = 82
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlParcela'
          DataSource = dsPrevisaoPagParc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtVencimento: TCDBEdit
          Left = 345
          Top = 11
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtVencimento'
          DataSource = dsPrevisaoPagParc
          MaxLength = 10
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEstPrevisaoPagParc: TCDBEdit
          Left = 468
          Top = 11
          Width = 109
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stPrevisaoPagParc'
          DataSource = dsPrevisaoPagParc
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
      end
      object CGroupBox7: TCGroupBox
        Left = 3
        Top = 47
        Width = 488
        Height = 259
        TabOrder = 1
        object CDBGrid2: TCDBGrid
          Left = 8
          Top = 14
          Width = 471
          Height = 235
          TabStop = False
          DataSource = dsPrevisaoPagParc
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
              FieldName = 'idParcela'
              Title.Caption = 'Parcela'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vlParcela'
              Title.Caption = 'Valor'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtVencimento'
              Title.Caption = 'Vencimento'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stPrevisaoPagParc'
              Title.Caption = 'Status'
              Width = 120
              Visible = True
            end>
        end
      end
      object CGroupBox8: TCGroupBox
        Left = 497
        Top = 47
        Width = 92
        Height = 259
        TabOrder = 2
        object CLabel28: TCLabel
          Left = 7
          Top = 163
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblTotal: TCLabel
          Left = 7
          Top = 182
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
        object CLabel29: TCLabel
          Left = 7
          Top = 204
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
        object LblRestante: TCLabel
          Left = 7
          Top = 223
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
        object BtnSalvarParc: TCBitBtn
          Left = 8
          Top = 11
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
          OnClick = BtnSalvarParcClick
        end
        object BtnCancelarParc: TCBitBtn
          Left = 8
          Top = 42
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
          OnClick = BtnSalvarParcClick
        end
        object BtnExcluirParc: TCBitBtn
          Left = 8
          Top = 70
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
          OnClick = BtnSalvarParcClick
        end
        object BtnNovoParc: TCBitBtn
          Left = 8
          Top = 101
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
          OnClick = BtnSalvarParcClick
        end
        object CBitBtn8: TCBitBtn
          Left = 7
          Top = 132
          Width = 75
          Height = 25
          Action = actBaixar
          Caption = 'Baixar'
          Glyph.Data = {
            36080000424D3608000000000000360000002800000020000000100000000100
            2000000000000008000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BAD9B5FF80B477FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDFFFB7B7B7FFFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AFD7ABFF209320FF209320FF7CBB
            76FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00DBDBDBFF858585FF858585FFBABA
            BAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009FD49DFF20A423FF009A03FF009A03FF20A6
            22FF5AB457FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D4D4D4FF8E8E8EFF7F7F7FFF7F7F7FFF8F8F
            8FFFABABABFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00ACE0ABFF20B426FF00B109FF00B109FF00B109FF00B1
            09FF20B626FF5BC05BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00DFDFDFFF969696FF8B8B8BFF8B8B8BFF8B8B8BFF8B8B
            8BFF969696FFB1B1B1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF008DDC8DFF20CC2CFF00C50EFF00C50EFF00C80FFF00C80FFF00C5
            0EFF00C50EFF20CC2CFF61CF63FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00D3D3D3FFA2A2A2FF959595FF959595FF979797FF979797FF9595
            95FF959595FFA2A2A2FFBCBCBCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008DE48EFF35DB42FF01DB16FF01DB16FF01DB16FF01DB16FF01DB16FF01DB
            16FF01DB16FF01DB16FF35DB42FF6ADA6EFFFF00FF00FF00FF00FF00FF00FF00
            FF00D7D7D7FFB2B2B2FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
            A1FFA1A1A1FFA1A1A1FFB2B2B2FFC5C5C5FFFF00FF00FF00FF00FF00FF00ABED
            ADFF5BE660FF31E133FF15C91CFF02EE1CFF03F11DFF03F11DFF03F11DFF03F1
            1DFF02EE1CFF0ECB19FF2FDE31FF5BE660FF76E279FFFF00FF00FF00FF00E5E5
            E5FFC5C5C5FFBBBBBBFFA1A1A1FFABABABFFAEAEAEFFAEAEAEFFAEAEAEFFAEAE
            AEFFABABABFF9E9E9EFFB8B8B8FFC5C5C5FFCECECEFFFF00FF00FF00FF00E6FC
            E6FFDFFCDEFFDFFBDDFF80DE7FFF1DF62EFF1DF62EFF22F630FF22F630FF22F6
            30FF17F62AFF76DC77FFD7FBD7FFD7FBD7FFD7FBD7FFFF00FF00FF00FF00FEFE
            FEFFFCFCFCFFFBFBFBFFCFCFCFFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBEBE
            BEFFBABABAFFCACACAFFF9F9F9FFF9F9F9FFF9F9F9FFFF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF009FD8E2FF35F73CFF38F73DFF3EF742FF3EF742FF3EF7
            42FF35F73CFFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E0E0E0FFC8C8C8FFC9C9C9FFCCCCCCFFCCCCCCFFCCCC
            CCFFC8C8C8FFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF009FD8E2FF4FF84EFF56F753FF59F755FF59F755FF56F7
            53FF4EF74DFFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E0E0E0FFD5D5D5FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
            D7FFD3D3D3FFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF009FD8E2FF61F85CFF68F85FFF6BF862FF6BF862FF6BF8
            62FF61F85CFFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E0E0E0FFDBDBDBFFDDDDDDFFDFDFDFFFDFDFDFFFDFDF
            DFFFDBDBDBFFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF009FD8E2FF6BF862FF71F867FF76F86BFF76F86BFF71F8
            67FF6BF862FFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E0E0E0FFDFDFDFFFE1E1E1FFE3E3E3FFE3E3E3FFE1E1
            E1FFDFDFDFFFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF009FD8E2FF6BF862FF71F867FF79F96EFF79F96EFF76F8
            6BFF6BF862FFAEE1EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E0E0E0FFDFDFDFFFE1E1E1FFE5E5E5FFE5E5E5FFE3E3
            E3FFDFDFDFFFE8E8E8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF009FD6E0FF6BF862FF76F86BFF79F96EFF79F96EFF76F8
            6BFF6BF862FF9FD8E2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00DEDEDEFFDFDFDFFFE3E3E3FFE5E5E5FFE5E5E5FFE3E3
            E3FFDFDFDFFFE0E0E0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF006EB0BDFF46CE3CFF48CE3DFF48CE3DFF48CE3DFF48CE
            3DFF46CE3CFF4498A7FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BCBCBCFFB6B6B6FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
            B7FFB6B6B6FFA3A3A3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF009ADEEAFF7EC159FF84C25CFF97D06CFFA5E47DFFA5E4
            7DFFA5E47DFF82DAE9FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E3E3E3FFBFBFBFFFC1C1C1FFD0D0D0FFE3E3E3FFE3E3
            E3FFE3E3E3FFDBDBDBFFFF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 4
        end
      end
    end
    object TabRateio: TTabSheet
      Caption = 'Rateio'
      ImageIndex = 2
      object GrpRateioPrevisao: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 316
        Caption = 'Rateio no total da previs'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object CLabel36: TCLabel
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
        object CLabel39: TCLabel
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
        object CGroupBox9: TCGroupBox
          Left = 9
          Top = 13
          Width = 470
          Height = 110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CLabel41: TCLabel
            Left = 13
            Top = 17
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
          object CLabel42: TCLabel
            Left = 12
            Top = 39
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Resultado'
          end
          object CLabel43: TCLabel
            Left = 16
            Top = 62
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Gerencial'
          end
          object CLabel44: TCLabel
            Left = 23
            Top = 84
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Percentual'
          end
          object CLabel45: TCLabel
            Left = 144
            Top = 84
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor'
          end
          object DBEvlPrevisaoPagR: TCDBEdit
            Left = 80
            Top = 14
            Width = 105
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlPrevisaoPag'
            DataSource = dsPadrao
            MaxLength = 10
            ReadOnly = True
            TabOrder = 0
            DecimalControl = False
            KeyMode = kmNormal
          end
          object DBEidResultadoRT: TCDBEdit
            Left = 80
            Top = 36
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idResultado'
            DataSource = dsPrevisaoRateio
            TabOrder = 3
            OnExit = DBEidResultadoRTExit
            Find = FindResultado
            AcaoCad = frmPrincipal.actCadResultado
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEidGerencialRT: TCDBEdit
            Left = 80
            Top = 59
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idGerencial'
            DataSource = dsPrevisaoRateio
            TabOrder = 4
            Find = FindGerenciaP
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEprRateioRT: TCDBEdit
            Left = 80
            Top = 81
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prRateio'
            DataSource = dsPrevisaoRateio
            TabOrder = 5
            OnEnter = DBEprRateioRTEnter
            OnExit = DBEprRateioRTExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlRateioRT: TCDBEdit
            Left = 174
            Top = 81
            Width = 91
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'vlRateio'
            DataSource = dsPrevisaoRateio
            TabOrder = 6
            OnEnter = DBEprRateioRTEnter
            OnExit = DBEprRateioRTExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object RBRatPrevisao: TCRadioButton
            Left = 200
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Rateio no Total'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RBRatParcela: TCRadioButton
            Left = 344
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Rateio na Parcela'
            TabOrder = 2
            OnClick = RBRatParcelaClick
          end
          object LookResultadoRT: TCLookUp
            Left = 143
            Top = 34
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 7
            Key.Strings = (
              'idResultado')
            LookUpKey.Strings = (
              'idResultado')
            AlternateSQL.Strings = (
              
                'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
                'esa] AND idResultado = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoRateio
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Resultado'
            ReturnField = 'descResultado'
          end
          object LookGerencialRT: TCLookUp
            Left = 143
            Top = 57
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 8
            Key.Strings = (
              'idGerencial')
            LookUpKey.Strings = (
              'idGerencial')
            AlternateSQL.Strings = (
              
                'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
                '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
                'sa] AND idGerencial = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoRateio
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vGerencial'
            ReturnField = 'descGerencial'
          end
        end
        object CGroupBox10: TCGroupBox
          Left = 9
          Top = 129
          Width = 470
          Height = 178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object CDBGrid3: TCDBGrid
            Left = 8
            Top = 14
            Width = 451
            Height = 156
            TabStop = False
            DataSource = dsPrevisaoRateio
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
        end
        object CGroupBox11: TCGroupBox
          Left = 485
          Top = 13
          Width = 92
          Height = 294
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object CLabel46: TCLabel
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
          object LblTotalRatTit: TCLabel
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
          object CLabel48: TCLabel
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
          object LblRestanteRatTit: TCLabel
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
          object BtnSalvarRatTit: TCBitBtn
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
            OnClick = BtnSalvarRatTitClick
          end
          object BtnCancelarRatTit: TCBitBtn
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
            OnClick = BtnSalvarRatTitClick
          end
          object BtnExcluirRatTit: TCBitBtn
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
            OnClick = BtnSalvarRatTitClick
          end
          object BtnNovoRatTit: TCBitBtn
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
            OnClick = BtnSalvarRatTitClick
          end
        end
      end
      object GrpRateioParc: TCGroupBox
        Left = 3
        Top = 3
        Width = 586
        Height = 316
        Caption = 'Rateio nas parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object CLabel38: TCLabel
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
        object CLabel40: TCLabel
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
        object CGroupBox2: TCGroupBox
          Left = 9
          Top = 13
          Width = 470
          Height = 110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CLabel30: TCLabel
            Left = 32
            Top = 17
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CLabel34: TCLabel
            Left = 23
            Top = 84
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Percentual'
          end
          object CLabel35: TCLabel
            Left = 144
            Top = 84
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor'
          end
          object CLabel32: TCLabel
            Left = 16
            Top = 62
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Gerencial'
          end
          object CLabel33: TCLabel
            Left = 12
            Top = 39
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'C. Resultado'
          end
          object DBEidParcelaR: TCDBEdit
            Left = 80
            Top = 14
            Width = 41
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'idParcela'
            DataSource = dsPrevisaoPagParc
            MaxLength = 10
            ReadOnly = True
            TabOrder = 0
            DecimalControl = False
            KeyMode = kmNormal
          end
          object DBEprRateio: TCDBEdit
            Left = 80
            Top = 81
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'prRateio'
            DataSource = dsPrevisaoPagRat
            TabOrder = 4
            OnEnter = DBEprRateioRTEnter
            OnExit = DBEprRateioRTExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlRateio: TCDBEdit
            Left = 174
            Top = 81
            Width = 91
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'vlRateio'
            DataSource = dsPrevisaoPagRat
            TabOrder = 5
            OnEnter = DBEprRateioRTEnter
            OnExit = DBEprRateioRTExit
            DecimalControl = True
            KeyMode = kmNormal
          end
          object RBRatPrevisao2: TCRadioButton
            Left = 239
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Rateio no Total'
            TabOrder = 2
            OnClick = RBRatPrevisao2Click
          end
          object RBRatParcela2: TCRadioButton
            Left = 357
            Top = 16
            Width = 105
            Height = 17
            Caption = 'Rateio na Parcela'
            Checked = True
            TabOrder = 3
            TabStop = True
          end
          object DBEidGerencialR: TCDBEdit
            Left = 80
            Top = 59
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idGerencial'
            DataSource = dsPrevisaoPagRat
            TabOrder = 6
            Find = FindGerenciaP
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEidResultadoR: TCDBEdit
            Left = 80
            Top = 36
            Width = 57
            Height = 19
            BevelKind = bkTile
            BorderStyle = bsNone
            DataField = 'idResultado'
            DataSource = dsPrevisaoPagRat
            TabOrder = 7
            OnExit = DBEidResultadoRExit
            Find = FindResultado
            AcaoCad = frmPrincipal.actCadResultado
            DecimalControl = True
            KeyMode = kmNormal
          end
          object DBEvlParcelaR: TCDBEdit
            Left = 127
            Top = 14
            Width = 98
            Height = 19
            TabStop = False
            BevelKind = bkTile
            BorderStyle = bsNone
            Color = 14149350
            DataField = 'vlParcela'
            DataSource = dsPrevisaoPagParc
            MaxLength = 10
            ReadOnly = True
            TabOrder = 1
            DecimalControl = False
            KeyMode = kmNormal
          end
          object LookResultadoR: TCLookUp
            Left = 143
            Top = 36
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 8
            Key.Strings = (
              'idResultado')
            LookUpKey.Strings = (
              'idResultado')
            AlternateSQL.Strings = (
              
                'SELECT descResultado FROM Resultado WHERE idEmpresa = [DBEidEmpr' +
                'esa] AND idResultado = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoPagRat
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'Resultado'
            ReturnField = 'descResultado'
          end
          object LookGerencialR: TCLookUp
            Left = 143
            Top = 59
            Width = 314
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 9
            Key.Strings = (
              'idGerencial')
            LookUpKey.Strings = (
              'idGerencial')
            AlternateSQL.Strings = (
              
                'SELECT DISTINCT descGerencial FROM vGerencial WHERE StGerencial ' +
                '= '#39'ATIVO'#39' AND tpGerencial = '#39'SAIDAS'#39' AND idEmpresa = [DBEidEmpre' +
                'sa] AND idGerencial = ?')
            ClientDataSet = cdsLookup
            DataSource = dsPrevisaoPagRat
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'vGerencial'
            ReturnField = 'descGerencial'
          end
        end
        object CGroupBox4: TCGroupBox
          Left = 9
          Top = 129
          Width = 470
          Height = 178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object CDBGrid1: TCDBGrid
            Left = 8
            Top = 14
            Width = 451
            Height = 156
            TabStop = False
            DataSource = dsPrevisaoPagRat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
            ParentFont = False
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
        end
        object CGroupBox3: TCGroupBox
          Left = 485
          Top = 13
          Width = 92
          Height = 294
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
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
            OnClick = BtnSalvarParcClick
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
            OnClick = BtnSalvarParcClick
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
            OnClick = BtnSalvarParcClick
          end
        end
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 472
    Width = 759
    TabOrder = 9
    ExplicitTop = 472
    ExplicitWidth = 759
    inherited BtnFechar: TCBitBtn
      Left = 672
      Anchors = [akTop, akRight]
      ExplicitLeft = 672
    end
    object BtnBaixaPrevisao: TCBitBtn
      Left = 413
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Baixar'
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BAD9B5FF80B477FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00DFDFDFFFB7B7B7FFFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00AFD7ABFF209320FF209320FF7CBB
        76FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00DBDBDBFF858585FF858585FFBABA
        BAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF009FD49DFF20A423FF009A03FF009A03FF20A6
        22FF5AB457FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D4D4D4FF8E8E8EFF7F7F7FFF7F7F7FFF8F8F
        8FFFABABABFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ACE0ABFF20B426FF00B109FF00B109FF00B109FF00B1
        09FF20B626FF5BC05BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00DFDFDFFF969696FF8B8B8BFF8B8B8BFF8B8B8BFF8B8B
        8BFF969696FFB1B1B1FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008DDC8DFF20CC2CFF00C50EFF00C50EFF00C80FFF00C80FFF00C5
        0EFF00C50EFF20CC2CFF61CF63FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00D3D3D3FFA2A2A2FF959595FF959595FF979797FF979797FF9595
        95FF959595FFA2A2A2FFBCBCBCFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008DE48EFF35DB42FF01DB16FF01DB16FF01DB16FF01DB16FF01DB16FF01DB
        16FF01DB16FF01DB16FF35DB42FF6ADA6EFFFF00FF00FF00FF00FF00FF00FF00
        FF00D7D7D7FFB2B2B2FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
        A1FFA1A1A1FFA1A1A1FFB2B2B2FFC5C5C5FFFF00FF00FF00FF00FF00FF00ABED
        ADFF5BE660FF31E133FF15C91CFF02EE1CFF03F11DFF03F11DFF03F11DFF03F1
        1DFF02EE1CFF0ECB19FF2FDE31FF5BE660FF76E279FFFF00FF00FF00FF00E5E5
        E5FFC5C5C5FFBBBBBBFFA1A1A1FFABABABFFAEAEAEFFAEAEAEFFAEAEAEFFAEAE
        AEFFABABABFF9E9E9EFFB8B8B8FFC5C5C5FFCECECEFFFF00FF00FF00FF00E6FC
        E6FFDFFCDEFFDFFBDDFF80DE7FFF1DF62EFF1DF62EFF22F630FF22F630FF22F6
        30FF17F62AFF76DC77FFD7FBD7FFD7FBD7FFD7FBD7FFFF00FF00FF00FF00FEFE
        FEFFFCFCFCFFFBFBFBFFCFCFCFFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBEBE
        BEFFBABABAFFCACACAFFF9F9F9FFF9F9F9FFF9F9F9FFFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009FD8E2FF35F73CFF38F73DFF3EF742FF3EF742FF3EF7
        42FF35F73CFFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E0E0E0FFC8C8C8FFC9C9C9FFCCCCCCFFCCCCCCFFCCCC
        CCFFC8C8C8FFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009FD8E2FF4FF84EFF56F753FF59F755FF59F755FF56F7
        53FF4EF74DFFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E0E0E0FFD5D5D5FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
        D7FFD3D3D3FFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009FD8E2FF61F85CFF68F85FFF6BF862FF6BF862FF6BF8
        62FF61F85CFFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E0E0E0FFDBDBDBFFDDDDDDFFDFDFDFFFDFDFDFFFDFDF
        DFFFDBDBDBFFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009FD8E2FF6BF862FF71F867FF76F86BFF76F86BFF71F8
        67FF6BF862FFA4E0EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E0E0E0FFDFDFDFFFE1E1E1FFE3E3E3FFE3E3E3FFE1E1
        E1FFDFDFDFFFE5E5E5FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009FD8E2FF6BF862FF71F867FF79F96EFF79F96EFF76F8
        6BFF6BF862FFAEE1EAFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E0E0E0FFDFDFDFFFE1E1E1FFE5E5E5FFE5E5E5FFE3E3
        E3FFDFDFDFFFE8E8E8FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009FD6E0FF6BF862FF76F86BFF79F96EFF79F96EFF76F8
        6BFF6BF862FF9FD8E2FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00DEDEDEFFDFDFDFFFE3E3E3FFE5E5E5FFE5E5E5FFE3E3
        E3FFDFDFDFFFE0E0E0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006EB0BDFF46CE3CFF48CE3DFF48CE3DFF48CE3DFF48CE
        3DFF46CE3CFF4498A7FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BCBCBCFFB6B6B6FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
        B7FFB6B6B6FFA3A3A3FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009ADEEAFF7EC159FF84C25CFF97D06CFFA5E47DFFA5E4
        7DFFA5E47DFF82DAE9FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E3E3E3FFBFBFBFFFC1C1C1FFD0D0D0FFE3E3E3FFE3E3
        E3FFE3E3E3FFDBDBDBFFFF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 2
      TabOrder = 6
      OnClick = BtnBaixaPrevisaoClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 759
    Height = 32
    ExplicitWidth = 759
    ExplicitHeight = 32
    inherited lblCNPJ: TCLabel
      Left = 237
      Top = 8
      Visible = False
      ExplicitLeft = 237
      ExplicitTop = 8
    end
    inherited lblInscricao: TCLabel
      Left = 423
      Top = 8
      Visible = False
      ExplicitLeft = 423
      ExplicitTop = 8
    end
    inherited lookidCnpjCpf: TCLookUp
      Left = 291
      Top = 5
      Visible = False
      ExplicitLeft = 291
      ExplicitTop = 5
    end
    inherited LookidInscEstadual: TCLookUp
      Left = 501
      Top = 5
      Visible = False
      ExplicitLeft = 501
      ExplicitTop = 5
    end
  end
  object DBEidPrevisaoPag: TCDBEdit [11]
    Left = 72
    Top = 40
    Width = 67
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = 14149350
    DataField = 'idPrevisaoPag'
    DataSource = dsPadrao
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
  object DBEnrPrevisaoPag: TCDBEdit [12]
    Left = 511
    Top = 40
    Width = 82
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = 14149350
    DataField = 'nrPrevisaoPag'
    DataSource = dsPadrao
    ReadOnly = True
    TabOrder = 4
    OnExit = DBEnrPrevisaoPagExit
    OnKeyDown = DBEnrPrevisaoPagKeyDown
    DecimalControl = True
    KeyMode = kmInteger
  end
  object DBEidDocSerie: TCDBEdit [13]
    Left = 175
    Top = 40
    Width = 56
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idDocSerie'
    DataSource = dsPadrao
    TabOrder = 2
    Find = FindSerie
    DecimalControl = True
    KeyMode = kmUSUpper
  end
  object LookDocSerie: TCLookUp [14]
    Left = 237
    Top = 40
    Width = 211
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
      
        'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 6 AND i' +
        'dDocSerie = ?')
    ClientDataSet = cdsLookup
    DataSource = dsPadrao
    ValidaCampoObrigatorio = True
    CampoObrigatorio = True
    LookUpTable = 'DocSerie'
    ReturnField = 'descDocSerie'
  end
  object DBEstPrevisaoPag: TCDBEdit [15]
    Left = 475
    Top = 63
    Width = 118
    Height = 19
    TabStop = False
    BevelKind = bkTile
    BorderStyle = bsNone
    Color = 14149350
    DataField = 'stPrevisaoPag'
    DataSource = dsPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    DecimalControl = True
    KeyMode = kmUSUpper
  end
  object DBEidFornecedor: TCDBEdit [16]
    Left = 72
    Top = 62
    Width = 62
    Height = 19
    BevelKind = bkTile
    BorderStyle = bsNone
    DataField = 'idFornecedor'
    DataSource = dsPadrao
    TabOrder = 5
    OnExit = DBEidFornecedorExit
    Find = FindFornecedor
    DecimalControl = True
    KeyMode = kmNormal
  end
  object LookFornecedor: TCLookUp [17]
    Left = 140
    Top = 62
    Width = 278
    Height = 19
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14149350
    ParentBackground = False
    TabOrder = 6
    Key.Strings = (
      'idFornecedor')
    LookUpKey.Strings = (
      'idFornecedor')
    ClientDataSet = cdsLookup
    DataSource = dsPadrao
    ValidaCampoObrigatorio = True
    CampoObrigatorio = True
    LookUpTable = 'vCadFornecedorContabil'
    ReturnField = 'descCadFornecedor'
  end
  inherited imgIcones: TImageList
    Left = 592
    Top = 72
    Bitmap = {
      494C0101030005000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFFEFEFEFFF6F6F7FFECECEDFFFDFDFDFFFEFEFEFF0000
      000000000000000000000000000000000000000000000000000092635D00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFFEFEFEFFF5F5F7FFA3A3B9FF85859BFFE5E5E9FFFDFDFEFFFEFE
      FEFF00000000000000000000000000000000000000000000000092635D00FCF3
      DE00FFEED500FFEED500FFEED500FFEED500FEEBD100FEEBD100FEEBD100FEEB
      D100F7EDD000A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFEFEFEFFF6F6FAFFA7A7D0FF616190FF7676B2FF9393C9FFE5E5ECFFFDFD
      FEFFFEFEFEFF000000000000000000000000000000000000000092635D00F7EA
      D800FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200F2E2C700A467690000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000C24F000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFF6F6FAFFA2A2DFFF7272D0FF42427FFF6F6FD0FF7F7FE7FF8787CFFFE4E4
      ECFFFDFDFEFFFEFEFEFF0000000000000000000000000000000092635D00F8EF
      DE00FAE9D500FAE7D400FAE7D300F8E6D100F8E6D000F8E6D000F8E6D000F8E6
      D000F0E2C900A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFF6F6
      F9FF9292D8FF6161E8FF4E4EC8FF33337CFF5656C8FF6161E7FF6161DFFF7373
      C3FFE2E2E7FFFDFDFDFFFEFEFEFF00000000000000000000000092635D00EAE2
      D400FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200E1D3BA00A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF5F5F7FF7E7E
      B6FF3E3EBFFF3636C8FF3434ACFF27275CFF363683FF4343B9FF3F3FC7FF3737
      9CFF5C5CA2FFE1E1E9FFFDFDFEFFFEFEFEFF000000000000000098746800AA9F
      9500A69A9200A5999100A5998E00A4978B00A3968900A1958700A1938400A191
      8300A4938100986B650000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF5F5F8FF7676AEFF2525
      8CFF141480FF14146BFF23235BFF505064FF717182FF39395DFF222272FF1C1C
      9BFF2D2DD0FF5757C1FFE0E0E8FFFDFDFDFF8C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFCFF8787C7FF2B2BC2FF1313
      BAFF1010ADFF111185FF333345FFBABABDFFD0D0D0FF8A8A94FF202065FF1616
      BCFF1616CFFF2323C4FF6161B4FFE8E8EBFF8C38160000000000A7756800E0E9
      EA00E1754500E1754500E1754500E1754500E1754500E1754500E1754500E175
      4500D7D8CA00A4676900000000008B3512000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFCFF8A8AD5FF2D2DBEFF1010
      9EFF0A0A77FF090951FF31314EFFB7B7BAFFCDCDCEFF868694FF1C1C59FF0E0E
      99FF1010A3FF232391FF6C6C9FFFF1F1F4FF8C3815008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000BD4C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFF7F7FBFF7878A6FF2525
      85FF1111A2FF0F0FA0FF191959FF434354FF616174FF2B2B50FF161688FF1010
      94FF24249FFF6363B4FFF2F2F6FFFEFEFEFF0000000000000000B17E6B00D7B0
      9C00D1AF9E00D1AF9E00CEAA9700CCA99500CCA79300CBA59100CAA59000CAA3
      8B00D4A78C00A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008424050084240500842405008424
      0500842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF7F7FAFF7D7D
      CEFF2B2BC5FF1212AFFF0C0C64FF12126DFF111155FF13138CFF1414B5FF2929
      C9FF6868D1FFF2F2F9FFFEFEFEFF000000000000000000000000BB846E00FFFF
      FF00FFE3C100FFE2C000FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2BF00FFE2
      BF00FFFCEF00A467690000000000000000000000000000000000000000000000
      0000BD4C0000BD4C0000BD4C0000BD4C000084240500FFC17900E58E4000D36E
      1A00842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFF7F7
      FCFF7E7EDBFF2B2BB4FF0D0D6BFF1010A4FF0E0E96FF0F0F84FF2828C0FF6767
      D7FFF2F2FBFFFEFEFEFF00000000000000000000000000000000C58C7000FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FBF6E900A467690000000000000000000000000000000000000000000000
      0000BD4C00000000000000000000000000008323040084240500842305008323
      0400842405000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFF7F7FCFF7C7CC2FF262684FF1515B4FF1515B8FF22227CFF6868C4FFF2F2
      F9FFFEFEFEFF0000000000000000000000000000000000000000CB917300FFFF
      FF00FEFFFF00FEFFFF00FEFEFE00FEFBFA00FBFAF700FBF8F600FAF7F300F8F4
      F000FCFAF000A467690000000000000000000000000000000000842405008424
      0500842405008424050084240500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFF7F7FAFF7777B9FF3030C2FF2D2DC2FF6868BCFFF2F2F6FFFEFE
      FEFF000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD8200FEBD
      8200FFFCF400A46769000000000000000000000000000000000084240500FFC1
      7900E58E4000D36E1A0084240500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFEFFF7F7FCFF8B8BDCFF7B7BD8FFF2F2F9FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000D4987600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFE
      FA00FFFFFF00A467690000000000000000000000000000000000832304008424
      0500842305008323040084240500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFAFAFDFFF7F7FCFFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000D4987600CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800A467690000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F81FC003FFFF0000F00FC003F7070000
      E007C003F0070000E003C003F7070000C001C003F7FF00008000C003F7070000
      00000000F007000000004002F707000000000000F7FF00000000C003F7070000
      8001C003F0070000C003C003F7070000E007C003C1FF0000F00FC003C1FF0000
      F81FC003C1FF0000FC3FC003FFFF000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 656
    Top = 72
    object actBaixar: TAction
      Caption = 'Baixar'
      ImageIndex = 6
      OnExecute = actBaixarExecute
    end
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM PrevisaoPag'
    Left = 656
    Top = 104
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsPrevisaoPag
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
      494C0101070009000C0020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000BAD9B5FF80B477FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDFDFFFB7B7B7FF00000000000000000000
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
      00000000000000000000AFD7ABFF209320FF209320FF7CBB76FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBDBDBFF858585FF858585FFBABABAFF000000000000
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
      0000000000009FD49DFF20A423FF009A03FF009A03FF20A622FF5AB457FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4D4D4FF8E8E8EFF7F7F7FFF7F7F7FFF8F8F8FFFABABABFF0000
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
      0000ACE0ABFF20B426FF00B109FF00B109FF00B109FF00B109FF20B626FF5BC0
      5BFF000000000000000000000000000000000000000000000000000000000000
      0000DFDFDFFF969696FF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF969696FFB1B1
      B1FF000000000000000000000000000000000000000000000000000000000000
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
      840084848400C6DEC600A5A5A500000000000000000000000000000000008DDC
      8DFF20CC2CFF00C50EFF00C50EFF00C80FFF00C80FFF00C50EFF00C50EFF20CC
      2CFF61CF63FF000000000000000000000000000000000000000000000000D3D3
      D3FFA2A2A2FF959595FF959595FF979797FF979797FF959595FF959595FFA2A2
      A2FFBCBCBCFF0000000000000000000000000000000000000000000000000000
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
      A50084848400C6DEC600A5A5A5000000000000000000000000008DE48EFF35DB
      42FF01DB16FF01DB16FF01DB16FF01DB16FF01DB16FF01DB16FF01DB16FF01DB
      16FF35DB42FF6ADA6EFF00000000000000000000000000000000D7D7D7FFB2B2
      B2FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
      A1FFB2B2B2FFC5C5C5FF00000000000000000000000000000000000000000000
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
      A50084848400C6DEC600A5A5A5000000000000000000ABEDADFF5BE660FF31E1
      33FF15C91CFF02EE1CFF03F11DFF03F11DFF03F11DFF03F11DFF02EE1CFF0ECB
      19FF2FDE31FF5BE660FF76E279FF0000000000000000E5E5E5FFC5C5C5FFBBBB
      BBFFA1A1A1FFABABABFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFABABABFF9E9E
      9EFFB8B8B8FFC5C5C5FFCECECEFF000000000000000000000000000000000000
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
      A500A5A5A500C6DEC600A5A5A5000000000000000000E6FCE6FFDFFCDEFFDFFB
      DDFF80DE7FFF1DF62EFF1DF62EFF22F630FF22F630FF22F630FF17F62AFF76DC
      77FFD7FBD7FFD7FBD7FFD7FBD7FF0000000000000000FEFEFEFFFCFCFCFFFBFB
      FBFFCFCFCFFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBEBEBEFFBABABAFFCACA
      CAFFF9F9F9FFF9F9F9FFF9F9F9FF000000000000000000000000000000000000
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
      00009FD8E2FF35F73CFF38F73DFF3EF742FF3EF742FF3EF742FF35F73CFFA4E0
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FFC8C8C8FFC9C9C9FFCCCCCCFFCCCCCCFFCCCCCCFFC8C8C8FFE5E5
      E5FF000000000000000000000000000000000000000000000000000000000000
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
      00009FD8E2FF4FF84EFF56F753FF59F755FF59F755FF56F753FF4EF74DFFA4E0
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FFD5D5D5FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD3D3D3FFE5E5
      E5FF000000000000000000000000000000000000000000000000000000000000
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
      00009FD8E2FF61F85CFF68F85FFF6BF862FF6BF862FF6BF862FF61F85CFFA4E0
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FFDBDBDBFFDDDDDDFFDFDFDFFFDFDFDFFFDFDFDFFFDBDBDBFFE5E5
      E5FF000000000000000000000000000000000000000000000000000000000000
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
      00009FD8E2FF6BF862FF71F867FF76F86BFF76F86BFF71F867FF6BF862FFA4E0
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FFDFDFDFFFE1E1E1FFE3E3E3FFE3E3E3FFE1E1E1FFDFDFDFFFE5E5
      E5FF000000000000000000000000000000000000000000000000000000000000
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
      00009FD8E2FF6BF862FF71F867FF79F96EFF79F96EFF76F86BFF6BF862FFAEE1
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FFDFDFDFFFE1E1E1FFE5E5E5FFE5E5E5FFE3E3E3FFDFDFDFFFE8E8
      E8FF000000000000000000000000000000000000000000000000000000000000
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
      00009FD6E0FF6BF862FF76F86BFF79F96EFF79F96EFF76F86BFF6BF862FF9FD8
      E2FF000000000000000000000000000000000000000000000000000000000000
      0000DEDEDEFFDFDFDFFFE3E3E3FFE5E5E5FFE5E5E5FFE3E3E3FFDFDFDFFFE0E0
      E0FF000000000000000000000000000000000000000000000000000000000000
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
      00006EB0BDFF46CE3CFF48CE3DFF48CE3DFF48CE3DFF48CE3DFF46CE3CFF4498
      A7FF000000000000000000000000000000000000000000000000000000000000
      0000BCBCBCFFB6B6B6FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB6B6B6FFA3A3
      A3FF000000000000000000000000000000000000000000000000000000000000
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
      00009ADEEAFF7EC159FF84C25CFF97D06CFFA5E47DFFA5E47DFFA5E47DFF82DA
      E9FF000000000000000000000000000000000000000000000000000000000000
      0000E3E3E3FFBFBFBFFFC1C1C1FFD0D0D0FFE3E3E3FFE3E3E3FFE3E3E3FFDBDB
      DBFF000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FF31FF31FE7FFE7FFE7FFE7F00000000
      FC00FC00F07FF07FFC3FFC3F00000000B800B800C001C001F81FF81F00000000
      00000000C001C001F00FF00F0000000000010001C001C001E007E00700000000
      00010001C001C001C003C0030000000000010001C001C0018001800100000000
      00030003C001C001800180010000000000030003C001C001F00FF00F00000000
      00030003C001C001F00FF00F0000000000010001C001C001F00FF00F00000000
      00010001C001C001F00FF00F0000000000000000C001C001F00FF00F00000000
      00000000C001C001F00FF00F0000000000000000F001F001F00FF00F00000000
      03F103F1FC7FFC7FF00FF00F00000000C001C0018FFF8FFF88038803FF3FFF3F
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
  object sdsPrevisaoPag: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM PrevisaoPag'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 104
  end
  object FindSerie: TCFind
    SelectClause.Strings = (
      'SELECT  idDocSerie, descDocSerie FROM DocSerie')
    JoinClause.Strings = (
      'WHERE idTipoDocSerie = 6 AND stDocSerie = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descDocSerie')
    FindField = 'descDocSerie'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idDocSerie'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 656
    Top = 40
  end
  object FindFornecedor: TCFind
    SelectClause.Strings = (
      
        'SELECT  idFornecedor, descCadFornecedor, descAbreviada, idCnpjCp' +
        'f FROM vCadFornecedorContabil')
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
    Left = 688
    Top = 40
  end
  object FindBanco: TCFind
    SelectClause.Strings = (
      'SELECT  idBanco, descBanco FROM Banco')
    JoinClause.Strings = (
      'WHERE StBanco = '#39'ATIVO'#39' AND ehPortador = '#39'S'#39)
    OrderByClause.Strings = (
      'ORDER BY descBanco')
    FindField = 'descCadFornecedor'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idBanco'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 688
    Top = 72
  end
  object FindIndice: TCFind
    SelectClause.Strings = (
      'SELECT  idIndice, descIndice FROM Indice')
    JoinClause.Strings = (
      'WHERE StIndice = '#39'ATIVO'#39)
    OrderByClause.Strings = (
      'ORDER BY descIndice')
    FindField = 'descIndice'
    SQLConnection = dmPadrao.dbConexao
    ValueField = 'idIndice'
    CarregaDados = True
    CollumNames.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TypeFind = fFindNormal
    Left = 592
    Top = 136
  end
  object FindMovFinanceira: TCFind
    SelectClause.Strings = (
      'SELECT  idMovFinanceira, descMovFinanceira FROM MovFinanceira')
    JoinClause.Strings = (
      
        'WHERE StMovFinanceira = '#39'ATIVO'#39' AND idMovOrigem = 2 AND idTpMovF' +
        'inanceira = 1')
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
    Left = 624
    Top = 136
  end
  object FindRateio: TCFind
    SelectClause.Strings = (
      'SELECT DISTINCT Rateio.idRateio, Rateio.descRateio FROM Rateio')
    JoinClause.Strings = (
      'WHERE idEmpresa = [DBEidEmpresa] AND stRateio = '#39'ATIVO'#39)
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
  object sdsPrevisaoPagParc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM PrevisaoPagParc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 168
  end
  object dspPrevisaoPagParc: TDataSetProvider
    DataSet = sdsPrevisaoPagParc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspPrevisaoPagParcBeforeUpdateRecord
    Left = 624
    Top = 168
  end
  object cdsPrevisaoPagParc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PrevisaoPagParc'
    Params = <>
    ProviderName = 'dspPrevisaoPagParc'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPrevisaoPagParcAfterInsert
    AfterEdit = cdsPrevisaoPagParcAfterEdit
    OnReconcileError = cdsPadraoReconcileError
    BeforeApplyUpdates = cdsPrevisaoPagParcBeforeApplyUpdates
    Left = 656
    Top = 168
  end
  object dsPrevisaoPagParc: TDataSource
    DataSet = cdsPrevisaoPagParc
    OnStateChange = dsPrevisaoPagParcStateChange
    Left = 688
    Top = 168
  end
  object sdsPrevisaoPagRat: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM PrevisaoPagRateio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 592
    Top = 200
  end
  object dspPrevisaoPagRat: TDataSetProvider
    DataSet = sdsPrevisaoPagRat
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeUpdateRecord = dspPrevisaoPagParcBeforeUpdateRecord
    Left = 624
    Top = 200
  end
  object cdsPrevisaoPagRat: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PrevisaoPagRateio'
    Params = <>
    ProviderName = 'dspPrevisaoPagRat'
    AfterOpen = cdsPadraoAfterOpen
    AfterInsert = cdsPrevisaoPagRatAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 656
    Top = 200
    object cdsPrevisaoPagRatidPrevisaoPag: TIntegerField
      FieldName = 'idPrevisaoPag'
      Required = True
    end
    object cdsPrevisaoPagRatidParcela: TSmallintField
      FieldName = 'idParcela'
      Required = True
    end
    object cdsPrevisaoPagRatidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPrevisaoPagRatidResultado: TIntegerField
      FieldName = 'idResultado'
      Required = True
    end
    object cdsPrevisaoPagRatidGerencial: TIntegerField
      FieldName = 'idGerencial'
      Required = True
    end
    object cdsPrevisaoPagRatprRateio: TFMTBCDField
      FieldName = 'prRateio'
      Required = True
      Precision = 6
      Size = 3
    end
    object cdsPrevisaoPagRatvlRateio: TFMTBCDField
      FieldName = 'vlRateio'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPrevisaoPagRatdescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 50
      Lookup = True
    end
    object cdsPrevisaoPagRatidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
  end
  object dsPrevisaoPagRat: TDataSource
    DataSet = cdsPrevisaoPagRat
    OnStateChange = dsPrevisaoPagRatStateChange
    Left = 688
    Top = 200
  end
  object cdsPrevisaoRateio: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsPrevisaoPagRatAfterInsert
    OnReconcileError = cdsPadraoReconcileError
    Left = 624
    Top = 232
    object cdsPrevisaoRateioidPrevisaoPag: TIntegerField
      FieldName = 'idPrevisaoPag'
    end
    object cdsPrevisaoRateioidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object cdsPrevisaoRateioidResultado: TIntegerField
      FieldName = 'idResultado'
    end
    object cdsPrevisaoRateioidGerencial: TIntegerField
      FieldName = 'idGerencial'
    end
    object cdsPrevisaoRateioprRateio: TFloatField
      FieldName = 'prRateio'
    end
    object cdsPrevisaoRateiovlRateio: TCurrencyField
      FieldName = 'vlRateio'
    end
    object cdsPrevisaoRateiodescResultado: TStringField
      FieldKind = fkLookup
      FieldName = 'descResultado'
      LookupDataSet = cdsResultado
      LookupKeyFields = 'idResultado'
      LookupResultField = 'descResultado'
      KeyFields = 'idResultado'
      Size = 50
      Lookup = True
    end
    object cdsPrevisaoRateioidCadEmpresa: TIntegerField
      FieldName = 'idCadEmpresa'
    end
  end
  object dsPrevisaoRateio: TDataSource
    DataSet = cdsPrevisaoRateio
    OnStateChange = dsPrevisaoRateioStateChange
    Left = 656
    Top = 232
  end
  object cdsResultado: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Resultado'
    Params = <>
    ProviderName = 'dspLookUp'
    Left = 576
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
    Left = 592
    Top = 232
  end
  object FindGerenciaP: TCFind
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
    Left = 688
    Top = 232
  end
end
