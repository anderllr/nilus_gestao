inherited FrmCadContratoCompra: TFrmCadContratoCompra
  Caption = 'Cadastro do Contrato de Compra de Produto'
  ClientHeight = 546
  ClientWidth = 1116
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000022536A7D1331
    3F68000000030000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000001E4E624B407388FB4170
    84FD1E485CA60000001300000000000000000000000000000000000000000000
    00000000000000000000000000000000000011333B1E367593E777521DFF8048
    06FF566B69FF29607BD7091B2438000000000000000000000000000000000000
    0000000000000000000000000000000000062E6D8DBC6C6243FF965201FF9853
    01FF935001FF675B3EFF2D6887F31432426F0000000400000000000000000000
    0000000000000000000000000000285E7A7F58706DFEA35902FFAC5E02FFAF5F
    02FFAA5D02FF361D00FF0B6E71FF31849FFE204C62AB00000016000000000000
    000000000000000000001E4C62432F6E8EF9623B0AFFB66401FFC76C02FFCC6F
    02FF743F01FF005350FF02C3BDFF03A8A3FF288C9FFF2A627EDC0C1D2A3C0000
    0000000000000A2A3518307197E20D1CA5FF01002FFF4D2A00FFD77602FFC169
    02FF072E2AFF02E6E0FF02D2CCFF01B9B3FF00A39DFF27879DFF275E789A0000
    0000000000042E6B8AB61838ADFF0202CCFF0202E3FF01016FFF2B1803FF251F
    0AFF02D3D3FF02FBF7FF02DCD5FF01BFB9FF0F9EA3FF307596D70F1F2F100000
    0000285D79782658A4FE0101B3FF0202CDFF0202EDFF0202FDFF000044FF0719
    0BFF019797FF02F8F3FF02DDD6FF06B9B7FF30809FF41E465A33000000002656
    6C3B31739BF8040997FF0101AFFF0202C6FF0202E2FF01019BFF2A5A01FF6BDC
    02FF1B3C01FF005451FF02C2BCFF2991ABFE265B756A00000000000000003447
    4E27407994CA24538BFE030897FF0101BAFF0101AEFF0E1F0AFF62DA02FF6AEC
    02FF63DC02FF2B6000FF1E5566FF2D6B8AA80000000200000000000000000000
    00002222220F406C8296336D96FA0B198BFF020521FF449701FF5AC702FF5BCA
    02FF59C502FF4CAB28FF337896DA0E1C2A120000000000000000000000000000
    000000000000000000023A596A5B3F7FA0EA2B624BFF48A002FF4EAE01FF4FB0
    01FF4BA80DFF37818EF61F475D39000000000000000000000000000000000000
    00000000000000000000000000003042482A407792C632726DFE3D880AFF459B
    01FF3B8874FE275D797300000000000000000000000000000000000000000000
    000000000000000000000000000000000000152A2A0C406A808F38778BFA3579
    5CFF2E6C8BB10000000300000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000002395867543975
    94C60B2E3916000000000000000000000000000000000000000000000000FE3F
    0000FC1F0000F80F0000F0030000F0010000E0000000C0000000800000008001
    0000000300000003000080070000C00F0000F01F0000F81F0000FC3F0000}
  ExplicitTop = -71
  ExplicitWidth = 1132
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 511
    Width = 1116
    ExplicitLeft = 8
    ExplicitTop = 495
    ExplicitWidth = 897
  end
  inherited Bevel2: TBevel
    Width = 1116
    ExplicitTop = 52
    ExplicitWidth = 942
  end
  inherited PagAbas: TCPageControl
    Width = 1116
    Height = 458
    OnChange = PagAbasChange
    ExplicitWidth = 1116
    ExplicitHeight = 458
    inherited TabAbas: TTabSheet
      Caption = 'Dados do Contrato'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1108
      ExplicitHeight = 429
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 1
        Width = 710
        Height = 283
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel7: TCLabel
          Left = 298
          Top = 38
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel14: TCLabel
          Left = 563
          Top = 16
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Status'
          Transparent = True
        end
        object CLabel5: TCLabel
          Left = 49
          Top = 38
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object CLabel23: TCLabel
          Left = 56
          Top = 104
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Safra'
        end
        object CLabel2: TCLabel
          Left = 547
          Top = 259
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Cont.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel11: TCLabel
          Left = 44
          Top = 125
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel3: TCLabel
          Left = 28
          Top = 215
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
        end
        object CLabel4: TCLabel
          Left = 332
          Top = 215
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel6: TCLabel
          Left = 28
          Top = 237
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total'
        end
        object CLabel8: TCLabel
          Left = 8
          Top = 259
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Impostos'
        end
        object CLabel9: TCLabel
          Left = 313
          Top = 259
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete'
        end
        object CLabel13: TCLabel
          Left = 17
          Top = 82
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Comissionado'
        end
        object CLabel15: TCLabel
          Left = 393
          Top = 82
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Comiss.'
        end
        object CLabel21: TCLabel
          Left = 458
          Top = 237
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS'
        end
        object CLabel22: TCLabel
          Left = 414
          Top = 259
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS Frete'
        end
        object CLabel24: TCLabel
          Left = 565
          Top = 237
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contrib. Social'
        end
        object CLabel25: TCLabel
          Left = 150
          Top = 259
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outros Imp.'
        end
        object CLabel16: TCLabel
          Left = 335
          Top = 189
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cota'#231#227'o'
        end
        object CLabel17: TCLabel
          Left = 53
          Top = 190
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #205'ndice'
        end
        object CLabel18: TCLabel
          Left = 483
          Top = 215
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Arrobas'
        end
        object CLabel19: TCLabel
          Left = 600
          Top = 215
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sacas'
        end
        object CLabel20: TCLabel
          Left = 5
          Top = 38
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = '* Obrig.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CLabel26: TCLabel
          Left = 128
          Top = 215
          Width = 102
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor da Saca/Arroba'
        end
        object CLabel28: TCLabel
          Left = 290
          Top = 237
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS p/ Saca'
        end
        object CLabel29: TCLabel
          Left = 151
          Top = 237
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS p/ Saca'
        end
        object CLabel1: TCLabel
          Left = 53
          Top = 60
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Conta'
        end
        object CLabel27: TCLabel
          Left = 7
          Top = 168
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local Embarque'
        end
        object CLabel12: TCLabel
          Left = 34
          Top = 146
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Trangenia'
        end
        object CLabel30: TCLabel
          Left = 461
          Top = 38
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Per'#237'odo Entrega'
          Transparent = True
        end
        object lblCliFor: TCLabel
          Left = 6
          Top = 16
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Forn./Vendedor'
        end
        object DBEdtEmissao: TCDBEdit
          Left = 342
          Top = 35
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissao'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 8
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEstContratoCompra: TCDBEdit
          Left = 600
          Top = 13
          Width = 103
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stContratoCompra'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Visible = False
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidContratoCompra: TCDBEdit
          Left = 88
          Top = 35
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContratoCompra'
          DataSource = dsPadrao
          TabOrder = 7
          OnExit = DBEidContratoCompraExit
          OnKeyDown = DBEidContratoCompraKeyDown
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookSafra: TCLookUp
          Left = 140
          Top = 101
          Width = 294
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 21
          Key.Strings = (
            'idSafra')
          LookUpKey.Strings = (
            'idSafra')
          AlternateSQL.Strings = (
            
              'SELECT descSafra FROM Safra WHERE idEmpresa = [DBEidEmpresa] AND' +
              ' idSafra = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Safra'
          ReturnField = 'descSafra'
        end
        object CBitBtn7: TCBitBtn
          Left = 440
          Top = 101
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadSafra
          Caption = '&Safra'
          TabOrder = 22
          TabStop = False
        end
        object DBEidSafra: TCDBEdit
          Left = 88
          Top = 101
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idSafra'
          DataSource = dsPadrao
          TabOrder = 20
          Find = dmFind.FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlContratoCompra: TCDBEdit
          Left = 614
          Top = 256
          Width = 89
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15987699
          DataField = 'vlContratoCompra'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 52
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 140
          Top = 123
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 24
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descProduto'
        end
        object LookProdMedida: TCLookUp
          Left = 392
          Top = 123
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 25
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          AlternateSQL.Strings = (
            
              'SELECT ProdMedida.descAbreviada FROM Produto, ProdMedida WHERE P' +
              'roduto.idProdMedida = ProdMedida.idProdMedida AND Produto.idProd' +
              'uto = ?')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'descAbreviada'
        end
        object DBEidProduto: TCDBEdit
          Left = 88
          Top = 123
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProduto'
          DataSource = dsPadrao
          TabOrder = 23
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn1: TCBitBtn
          Left = 440
          Top = 123
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 26
          TabStop = False
        end
        object DBEvlProduto: TCDBEdit
          Left = 58
          Top = 212
          Width = 64
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlProduto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 38
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProduto: TCDBEdit
          Left = 366
          Top = 212
          Width = 102
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 40
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalProduto: TCDBEdit
          Left = 58
          Top = 234
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotalProduto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 43
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlImposto: TCDBEdit
          Left = 58
          Top = 256
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlImposto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 48
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFrete: TCDBEdit
          Left = 345
          Top = 256
          Width = 63
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFrete'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 50
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnVerFinanceiro: TCBitBtn
          Left = 174
          Top = 33
          Width = 83
          Height = 22
          Caption = '&Financeiro'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            1C98CE1C98CE1C98CEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF848484848484848484848484FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            AAF0F87DF4FB6CEAF730B1DC30B1DC30B1DC1C98CE1C98CE1193CEFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF848484DBDBDBC8C8C8BFBFBF96969696969696
            96968484848484847D7D7DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            84D8ED92FFFF7DFBFF80FBFF81FAFF7DF4FF70EAFC63DEF430B1DC30B1DCFF00
            FFFF00FFFF00FFFF00FFFF00FF848484C6C6C6D3D3D3CACACACBCBCBCCCCCCCA
            CACAC3C3C3BABABA969696969696FF00FFFF00FFFF00FFFF00FFFF00FF1C98CE
            65C5E397FBFE77F6FF78F4FF76F0FF75F0FF77F2FF78F2FF7EF4FF53C6E71C98
            CEFF00FFFF00FFFF00FFFF00FF848484B4B4B4D5D5D5C7C7C7C8C8C8C7C7C7C6
            C6C6C7C7C7C8C8C8CACACAADADAD848484FF00FFFF00FFFF00FFFF00FF1C98CE
            1C98CE86E6F47BFBFF78F4FF77F2FF74EFFF74EFFF70EDFE72EBFF55C9E91C98
            CEFF00FFFF00FFFF00FFFF00FF848484848484CACACAC9C9C9C8C8C8C7C7C7C6
            C6C6C6C6C6C4C4C4C5C5C5AFAFAF848484FF00FFFF00FFFF00FFFF00FF1C98CE
            57D8EF1C98CE92FEFE76F7FF79F3FF74F0FF73EFFF73EDFE73EDFF55C9E968E2
            FB1C98CEFF00FFFF00FFFF00FF848484B2B2B2848484D3D3D3C7C7C7C8C8C8C6
            C6C6C5C5C5C5C5C5C5C5C5AFAFAFBFBFBF848484FF00FFFF00FFFF00FF1C98CE
            7EF8FC1C98CE77CEE97FDDEF7FE0F290EEFA80F6FF6DEEFF6FEDFF51C5E673ED
            FF41C4E3FF00FFFF00FFFF00FF848484C9C9C9848484BFBFBFC5C5C5C6C6C6D0
            D0D0CBCBCBC3C3C3C4C4C4ACACACC5C5C5A2A2A2FF00FFFF00FFFF00FF1C98CE
            8CFFFF67E6F41C98CE1C98CE1C98CE5BC0E27BDDF28EF4FE7EF4FF5ED3F279EF
            FF77EFF81EA1D3FF00FFFF00FF848484D1D1D1BCBCBC848484848484848484AF
            AFAFC4C4C4D1D1D1CACACAB7B7B7C8C8C8C5C5C5888888FF00FFFF00FF1C98CE
            86FFFF81FFFF82FEFF7EFAFF7BF7FE1C98CE1C98CE6ECEE991E0F086D9F391E1
            F4A4F0FA38AFD9FF00FFFF00FF848484CECECECCCCCCCCCCCCCACACAC9C9C984
            8484848484BBBBBBCDCDCDC9C9C9CFCFCFD9D9D99A9A9AFF00FFFF00FF1C98CE
            8AFFFF79FAFF79F6FF7AF4FF80F8FF82FCFF77F4FE1C98CE1C98CE1C98CE1E96
            CB289DCE1C98CCFF00FFFF00FF848484D0D0D0C8C8C8C8C8C8C9C9C9CBCBCBCC
            CCCCC7C7C78484848484848484848585858C8C8C848484FF00FFFF00FF1C98CE
            84F0F891FFFF8AFFFF81FCFF60D5EE1C98CE1C98CE1C98CE1C98CE1C98CE1EA1
            D3FF00FFFF00FFFF00FFFF00FF848484CBCBCBD3D3D3D0D0D0CCCCCCB6B6B684
            8484848484848484848484848484888888FF00FFFF00FFFF00FFFF00FFFF00FF
            1C98CE1C98CE1C98CE1C98CE1C98CE48B6DCFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF848484848484848484848484848484A3
            A3A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Margin = 5
          NumGlyphs = 2
          Spacing = 5
          TabOrder = 6
          TabStop = False
          OnClick = BtnVerFinanceiroClick
        end
        object DBEidComissionado: TCDBEdit
          Left = 88
          Top = 79
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idComissionado'
          DataSource = dsPadrao
          TabOrder = 16
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlComissao: TCDBEdit
          Left = 463
          Top = 79
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlComissao'
          DataSource = dsPadrao
          TabOrder = 18
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookRepresen: TCLookUp
          Left = 140
          Top = 79
          Width = 247
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 17
          Key.Strings = (
            'idComissionado')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBRGtpCalculo: TCDBRadioGroup
          Left = 549
          Top = 127
          Width = 154
          Height = 79
          Caption = 'C'#225'lculo do Imposto'
          DataField = 'tpCalculo'
          DataSource = dsPadrao
          Items.Strings = (
            'Somar'
            'Subtrair'
            'Nada')
          ParentBackground = False
          ParentColor = False
          TabOrder = 27
          Values.Strings = (
            '+'
            '-'
            '*')
          OnExit = DBRGtpCobrancaExit
        end
        object DBEvlIcms: TCDBEdit
          Left = 489
          Top = 234
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcms'
          DataSource = dsPadrao
          TabOrder = 46
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIcmsFrete: TCDBEdit
          Left = 471
          Top = 256
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcmsFrete'
          DataSource = dsPadrao
          TabOrder = 51
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlContribSocial: TCDBEdit
          Left = 640
          Top = 234
          Width = 63
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlContribSocial'
          DataSource = dsPadrao
          TabOrder = 47
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrosImp: TCDBEdit
          Left = 214
          Top = 256
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrosImp'
          DataSource = dsPadrao
          TabOrder = 49
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn2: TCBitBtn
          Left = 452
          Top = 187
          Width = 91
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 37
          TabStop = False
        end
        object LookLancamento: TCLookUp
          Left = 381
          Top = 187
          Width = 65
          Height = 19
          Alignment = taRightJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 36
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
          CampoObrigatorio = True
          LookUpTable = 'IndiceLancamento'
          ReturnField = 'vlLancamento'
        end
        object LookIndice: TCLookUp
          Left = 140
          Top = 187
          Width = 189
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 35
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
        object DBEidIndice: TCDBEdit
          Left = 88
          Top = 187
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 34
          Find = dmFind.FindIndice
          AcaoCad = frmPrincipal.actIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtArrobas: TCDBEdit
          Left = 527
          Top = 212
          Width = 67
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtArrobas'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 41
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtSacas: TCDBEdit
          Left = 634
          Top = 212
          Width = 69
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtSacas'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 42
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlSaca: TCDBEdit
          Left = 236
          Top = 212
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSaca'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 39
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIcmsSaca: TCDBEdit
          Left = 360
          Top = 234
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcmsSaca'
          DataSource = dsPadrao
          TabOrder = 45
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIcmsSaca: TCDBEdit
          Left = 235
          Top = 234
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIcmsSaca'
          DataSource = dsPadrao
          TabOrder = 44
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidConta: TCDBEdit
          Left = 88
          Top = 57
          Width = 48
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idConta'
          DataSource = dsPadrao
          TabOrder = 12
          Find = dmFind.FindContaCad
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookContaCorrente: TCLookUp
          Left = 200
          Top = 57
          Width = 94
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 14
          Key.Strings = (
            'idFornecedor'
            'idConta')
          LookUpKey.Strings = (
            'idCadGeral'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CadGeralConta'
          ReturnField = 'idContaCorrente'
        end
        object LookdescConta: TCLookUp
          Left = 300
          Top = 57
          Width = 258
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 15
          Key.Strings = (
            'idFornecedor'
            'idConta')
          LookUpKey.Strings = (
            'idCadGeral'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CadGeralConta'
          ReturnField = 'descConta'
        end
        object LookAgencia: TCLookUp
          Left = 142
          Top = 57
          Width = 52
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 13
          Key.Strings = (
            'idFornecedor'
            'idConta')
          LookUpKey.Strings = (
            'idCadGeral'
            'idConta')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'CadGeralConta'
          ReturnField = 'idAgencia'
        end
        object LookSaca: TCLookUp
          Left = 592
          Top = 54
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 10
          Visible = False
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'qtSacas'
        end
        object lookArroba: TCLookUp
          Left = 640
          Top = 54
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 11
          Visible = False
          Key.Strings = (
            'idProduto')
          LookUpKey.Strings = (
            'idProduto')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = False
          CampoObrigatorio = True
          LookUpTable = 'Produto'
          ReturnField = 'qtArrobas'
        end
        object LookDescarga: TCLookUp
          Left = 174
          Top = 165
          Width = 212
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 32
          Key.Strings = (
            'idEmbarque'
            'idCadEmbarque')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object DBEidEmbarque: TCDBEdit
          Left = 88
          Top = 165
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idEmbarque'
          DataSource = dsPadrao
          TabOrder = 30
          OnKeyDown = DBEidEmbarqueKeyDown
          OnKeyPress = DBEidEmbarqueKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCadEmbarque: TCDBEdit
          Left = 140
          Top = 165
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadEmbarque'
          DataSource = dsPadrao
          TabOrder = 31
          OnKeyDown = DBEidEmbarqueKeyDown
          OnKeyPress = DBEidEmbarqueKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp1: TCLookUp
          Left = 392
          Top = 165
          Width = 151
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 33
          Key.Strings = (
            'idEmbarque'
            'idCadEmbarque')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descAbreviada'
        end
        object DBEidTrangenia: TCDBEdit
          Left = 88
          Top = 144
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idTrangenia'
          DataSource = dsPadrao
          TabOrder = 28
          Find = dmFind.FindTrangenia
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp4: TCLookUp
          Left = 140
          Top = 144
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 29
          Key.Strings = (
            'idProduto'
            'idTrangenia')
          LookUpKey.Strings = (
            'idProduto'
            'idTrangenia')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'Trangenia'
          ReturnField = 'descTrangenia'
        end
        object DBEdescEntrega: TCDBEdit
          Left = 542
          Top = 35
          Width = 161
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descEntrega'
          DataSource = dsPadrao
          TabOrder = 9
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBCKAFixar: TCDBCheckBox
          Left = 565
          Top = 94
          Width = 117
          Height = 17
          TabStop = False
          Caption = 'Contrato a Fixar?'
          DataField = 'AFixar'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object CBDBStatus: TCDBComboBox
          Left = 600
          Top = 13
          Width = 105
          Height = 19
          Style = csDropDownList
          DataField = 'stContratoCompra'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'ATIVO'
            'CANCELADO'
            'PREVIS'#195'O')
          ParentFont = False
          TabOrder = 4
          OnChange = CBDBStatusChange
        end
        object DBEidFornecedor: TCDBEdit
          Left = 88
          Top = 13
          Width = 61
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornecedor'
          DataSource = dsPadrao
          TabOrder = 0
          OnKeyDown = DBEidFornecedorKeyDown
          OnKeyPress = DBEidFornecedorKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCadFornecedor: TCDBEdit
          Left = 155
          Top = 13
          Width = 28
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadFornecedor'
          DataSource = dsPadrao
          TabOrder = 1
          OnKeyDown = DBEidFornecedorKeyDown
          OnKeyPress = DBEidFornecedorKeyPress
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CLookUp2: TCLookUp
          Left = 189
          Top = 13
          Width = 212
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object CLookUp3: TCLookUp
          Left = 407
          Top = 13
          Width = 151
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idFornecedor'
            'idCadFornecedor')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descAbreviada'
        end
      end
      object DBRGtpCobranca: TCDBRadioGroup
        Left = 3
        Top = 290
        Width = 253
        Height = 40
        Caption = 'Tipo da Cobran'#231'a do Contrato - Gerar no:'
        Columns = 3
        DataField = 'tpCobranca'
        DataSource = dsPadrao
        Items.Strings = (
          'Retirada'
          'Contrato'
          'Avulsa')
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        Values.Strings = (
          'R'
          'C'
          'A')
        OnExit = DBRGtpCobrancaExit
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 331
        Width = 710
        Height = 86
        Caption = 'Observa'#231#245'es'
        TabOrder = 6
        object DBMobsContratoCompra: TCDBMemo
          Left = 9
          Top = 17
          Width = 694
          Height = 59
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsContratoCompra'
          DataSource = dsPadrao
          MaxLength = 5000
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmUSUpper
        end
      end
      object DBRGtpFinanceiro: TCDBRadioGroup
        Left = 262
        Top = 290
        Width = 451
        Height = 40
        Caption = 'Financeiro Gerar:'
        Columns = 5
        DataField = 'tpFinanceiro'
        DataSource = dsPadrao
        Items.Strings = (
          'Adiantamento'
          'T'#237'tulo'
          'Caixa'
          'Banco'
          'Avulsa')
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        Values.Strings = (
          'A'
          'T'
          'C'
          'B'
          'V')
      end
      object DBEidTituloPag: TCDBEdit
        Left = 904
        Top = 278
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloPag'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 1
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidMovCaixa: TCDBEdit
        Left = 904
        Top = 303
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovCaixa'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 4
        Visible = False
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidMovConta: TCDBEdit
        Left = 904
        Top = 328
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovConta'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 5
        Visible = False
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidAdiantamento: TCDBEdit
        Left = 904
        Top = 353
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idAdiantamento'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 7
        Visible = False
        DecimalControl = True
        KeyMode = kmDate
      end
    end
    object TabMovimento: TTabSheet
      Caption = 'Movimenta'#231#227'o (Retiradas)'
      ImageIndex = 1
      object DBGRIDRom: TCDBGrid
        Left = 0
        Top = 0
        Width = 1108
        Height = 429
        TabStop = False
        Align = alClient
        DataSource = dsRomaneio
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
            FieldName = 'idEmpresa'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCadEmpresaFilial'
            Title.Caption = 'Filial'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idCadEmpresa'
            Title.Caption = 'Filial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idRomaneio'
            Title.Caption = 'Romaneio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idArmOperacao'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idRomaneioArm'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'dtRomaneio'
            Title.Caption = 'Data Emiss'#227'o'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idArmazem'
            Title.Caption = 'Armazem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idProdDeposito'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idMotorista'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'placa'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'descMotorista'
            Title.Caption = 'Motorista'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idContratoFrete'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idProduto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idVariedade'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idSafra'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idResultado'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idCliente'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idContratoVenda'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtPesoBruto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtPesoTara'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtPesoProduto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtPesoDesconto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtPesoLiquido'
            Title.Caption = 'Peso Liq.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obsRomaneio'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'stRomaneio'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vlLiquido'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vlContribSocial'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vlOutrosImp'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vlIcmsFrete'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vlIcms'
            Visible = False
          end>
      end
    end
    object TabContraNota: TTabSheet
      Caption = 'Emiss'#227'o de Contra Nota'
      ImageIndex = 2
      object grpNotaSaida: TCGroupBox
        Left = 11
        Top = 3
        Width = 634
        Height = 64
        Caption = 'Dados da Nota'
        TabOrder = 0
        object LblCad: TCLabel
          Left = 13
          Top = 20
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fornec.'
        end
        object CLabel59: TCLabel
          Left = 461
          Top = 20
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Insc. Est.'
        end
        object DBEidFornNf: TCDBEdit
          Left = 56
          Top = 17
          Width = 97
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idFornNf'
          DataSource = dsNota
          TabOrder = 0
          OnKeyDown = DBEidFornNfKeyDown
          OnKeyPress = DBEidFornNfKeyPress
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidCadFornNf: TCDBEdit
          Left = 159
          Top = 17
          Width = 35
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCadFornNf'
          DataSource = dsNota
          TabOrder = 1
          OnKeyDown = DBEidFornNfKeyDown
          OnKeyPress = DBEidFornNfKeyPress
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookClienteFiscal: TCLookUp
          Left = 200
          Top = 17
          Width = 254
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 2
          Key.Strings = (
            'idFornNf'
            'idCadFornNf')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsNota
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCadCliente'
        end
        object lookIeCliente: TCLookUp
          Left = 513
          Top = 17
          Width = 113
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 3
          Key.Strings = (
            'idFornNf'
            'idCadFornNf')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsNota
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idInscEstadual'
        end
        object CLookUp6: TCLookUp
          Left = 56
          Top = 39
          Width = 281
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 4
          Key.Strings = (
            'idFornNf'
            'idCadFornNf')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsNota
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'endereco'
        end
        object CLookUp7: TCLookUp
          Left = 343
          Top = 39
          Width = 173
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 5
          Key.Strings = (
            'idFornNf'
            'idCadFornNf')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsNota
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'descCidade'
        end
        object lookEstadoCli: TCLookUp
          Left = 522
          Top = 39
          Width = 40
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 6
          Key.Strings = (
            'idFornNf'
            'idCadFornNf')
          LookUpKey.Strings = (
            'idCliente'
            'idCadCliente')
          ClientDataSet = cdsLookup
          DataSource = dsNota
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteFiscal'
          ReturnField = 'idEstado'
        end
      end
      object CGroupBox13: TCGroupBox
        Left = 11
        Top = 73
        Width = 634
        Height = 76
        Caption = 'Nota Fiscal do Produtor'
        TabOrder = 1
        object CLabel93: TCLabel
          Left = 17
          Top = 17
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero Nf.'
        end
        object CLabel94: TCLabel
          Left = 181
          Top = 17
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie Nf.'
        end
        object CLabel95: TCLabel
          Left = 306
          Top = 17
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data de Emiss'#227'o'
        end
        object CLabel32: TCLabel
          Left = 490
          Top = 17
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel110: TCLabel
          Left = 17
          Top = 45
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave da NFP-e'
        end
        object DBEidNfProdutor: TCDBEdit
          Left = 78
          Top = 14
          Width = 91
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idNfProdutor'
          DataSource = dsNota
          MaxLength = 10
          TabOrder = 0
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrSerieProdutor: TCDBEdit
          Left = 229
          Top = 14
          Width = 53
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrSerieProdutor'
          DataSource = dsNota
          MaxLength = 10
          TabOrder = 1
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdtEmissaoProdutor: TCDBEdit
          Left = 391
          Top = 14
          Width = 75
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEmissaoProdutor'
          DataSource = dsNota
          MaxLength = 10
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEqtProdutoN: TCDBEdit
          Left = 524
          Top = 14
          Width = 102
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsNota
          MaxLength = 10
          TabOrder = 3
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CDBChaveNFPe: TCDBEdit
          Left = 101
          Top = 39
          Width = 525
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'ChaveNFPe'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object CGroupBox3: TCGroupBox
        Left = 11
        Top = 155
        Width = 497
        Height = 42
        Caption = 'Nota Gerada'
        TabOrder = 2
        object CLabel10: TCLabel
          Left = 26
          Top = 19
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'S'#233'rie'
        end
        object CLabel31: TCLabel
          Left = 364
          Top = 19
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero'
        end
        object DBEidDocSerie: TCDBEdit
          Left = 56
          Top = 16
          Width = 46
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idDocSerie'
          DataSource = dsNota
          ReadOnly = True
          TabOrder = 0
          AcaoCad = frmPrincipal.actCadDocSerie
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookDocSerie: TCLookUp
          Left = 108
          Top = 16
          Width = 246
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 1
          Key.Strings = (
            'idDocSerie')
          LookUpKey.Strings = (
            'idDocSerie')
          AlternateSQL.Strings = (
            
              'SELECT descDocSerie FROM DocSerie WHERE idTipoDocSerie = 3 AND i' +
              'dDocSerie = ?')
          ClientDataSet = cdsLookup
          DataSource = dsNota
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'DocSerie'
          ReturnField = 'descDocSerie'
          object lookSerieFiscal: TCLookUp
            Left = 192
            Top = 0
            Width = 34
            Height = 19
            Alignment = taLeftJustify
            BevelInner = bvSpace
            BevelOuter = bvLowered
            Color = 14149350
            ParentBackground = False
            TabOrder = 0
            Visible = False
            Key.Strings = (
              'idDocSerie')
            LookUpKey.Strings = (
              'idDocSerie')
            AlternateSQL.Strings = (
              
                'SELECT serieFiscal FROM DocSerie WHERE idTipoDocSerie = 3 AND id' +
                'DocSerie = ?')
            ClientDataSet = cdsLookup
            DataSource = dsNota
            ValidaCampoObrigatorio = True
            CampoObrigatorio = True
            LookUpTable = 'DocSerie'
            ReturnField = 'serieFiscal'
          end
        end
        object DBEidNf: TCDBEdit
          Left = 407
          Top = 16
          Width = 82
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'idNf'
          DataSource = dsNota
          MaxLength = 10
          ReadOnly = True
          TabOrder = 2
          DecimalControl = True
          KeyMode = kmInteger
        end
      end
      object CGroupBox12: TCGroupBox
        Left = 546
        Top = 155
        Width = 99
        Height = 94
        TabOrder = 3
        object BtnNovaNota: TCBitBtn
          Left = 7
          Top = 34
          Width = 85
          Height = 25
          Caption = '&Nova Nota'
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
          TabOrder = 1
          OnClick = BtnNovaNotaClick
        end
        object BtnGerarNota: TCBitBtn
          Left = 7
          Top = 3
          Width = 85
          Height = 25
          Caption = '&Gerar Nota'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00013002000141030002510400025104000143
            030001330200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00014503000145030003780800039C0B00039F0C00039F0C00039D
            0C00027E0900014D0400014D0400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00034F09000365090004A30D0003A60C0003A00B00029E0A00039F0C0003A0
            0C0003A50C0003A60C000269060001340200FF00FF00FF00FF00FF00FF00044F
            0900066B11000AAB1F0007A41500049E0D00029D0A0054C45C00AAE3B00010A6
            1B00039E0C0003A00C0003A70C00026A0600024C0400FF00FF00FF00FF00044F
            090010AC30000DAB280009A41C00039E0F003EBC4800EEFAEF00FFFFFF0090DA
            9700049F0D00039E0C00039F0C0003A70C00024C0400FF00FF00035706000D82
            230017B641000EA92D0005A0130041BD4B00F3FBF400FFFFFF00FFFFFF00FFFF
            FF007ED48600049F0D00039E0C0003A50C00037B0800014203000357060017A3
            410018B54A0011AB34004CC15800F4FCF600FCFEFC00F6FCF700FCFEFC00F8FC
            F800FFFFFF0075D17D0005A00F0003A10C0003960A000142030006680D0021B1
            51001EB7510020B54F00EBF8EF00FFFFFF0084D99A00B7E9C500FFFFFF0069CC
            7200DCF4DE00FFFFFF007FD4870003A00C00039F0C00014A0400087412003EBD
            69002ABA5C0021B55300DEF6E70098E1B40022B65500BAEBCE00FFFFFF002CB5
            370035B84100F2FBF30098DD9E0003A00C00039F0C000252050006780E0054C5
            7A0044C674001CB24E0036BD660026B7580022B55400BBEBCC00FFFFFF0041C0
            5B000CA6270021B0390013AA2C0007A51800039D0C000146030006780E004CBD
            690083DDA70022B655001CB24E0022B5540022B55400BCEBCE00FFFFFF0046C2
            67000FAA30000FAA2E000CA6270006A71600038C0A0001460300FF00FF0021A3
            3600AAE7C50068D08E0016AF48001BB14C0022B55400BDEBCF00FFFFFF004CC5
            6F0010A931000EA729000BA4200009AF1C00036B0A00FF00FF00FF00FF0021A3
            360056C57300C5F0D80066CF8C0020B4520019B14C00BFEDD000FFFFFF004CC6
            750013AC3C0012AA34000FB02D000A991F00036B0A00FF00FF00FF00FF00FF00
            FF00139923006ACC8800D0F4E3009AE1B60050C77A0038BD67002CBA5D0030BB
            60002FBC5D0023BC4F0011A3300006620F00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF004BBF67004BBF670098E1B500BDEED400A7E7C40090E0B10078D9
            9F0049C779001B9D3D001B9D3D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF001DA4350038B4540046BC660042B863002BA6
            4900138C2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
          OnClick = BtnGerarNotaClick
        end
        object BtnDesfazer: TCBitBtn
          Left = 7
          Top = 65
          Width = 85
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
          TabOrder = 2
          OnClick = BtnDesfazerClick
        end
      end
      object CGroupBox14: TCGroupBox
        Left = 11
        Top = 258
        Width = 634
        Height = 159
        TabOrder = 5
        object DBProdutos: TCDBGrid
          Left = 9
          Top = 10
          Width = 617
          Height = 140
          TabStop = False
          DataSource = dsNota
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
              FieldName = 'idFornNf'
              Title.Caption = 'Forn.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idCadFornNf'
              Title.Caption = 'Cad'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idDocSerie'
              Title.Caption = 'Serie Nf.'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idNf'
              Title.Caption = 'Nr.Nf'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idNfProdutor'
              Title.Caption = 'Nf. Prod.'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nrSerieProdutor'
              Title.Caption = 'Serie Prod.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtEmissaoProdutor'
              Title.Caption = 'Emiss'#227'o Prod.'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtProduto'
              Width = 85
              Visible = True
            end>
        end
      end
      object CGroupBox4: TCGroupBox
        Left = 11
        Top = 207
        Width = 529
        Height = 42
        Caption = 'Saldos no Contrato'
        TabOrder = 4
        object CLabel33: TCLabel
          Left = 15
          Top = 20
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel34: TCLabel
          Left = 220
          Top = 20
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde. Nf'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CLabel35: TCLabel
          Left = 385
          Top = 20
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEqtProdutoC: TCDBEdit
          Left = 104
          Top = 17
          Width = 102
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtProduto'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtNf: TCDBEdit
          Left = 270
          Top = 17
          Width = 102
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtNf'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtSaldo: TCDBEdit
          Left = 422
          Top = 17
          Width = 102
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtSaldo'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object EDUsuario: TCEdit
        Left = 856
        Top = 376
        Width = 57
        Height = 19
        BorderStyle = bsNone
        BevelKind = bkTile
        TabOrder = 6
        Text = 'EDUsuario'
        Visible = False
        DataType = ftInteger
        KeyMode = kmNormal
        Decimals = 0
      end
    end
  end
  inherited PanBotoes: TCPanelGradient
    Top = 515
    Width = 1116
    ExplicitTop = 515
    ExplicitWidth = 1116
    inherited BtnSalvar: TCBitBtn
      Left = 5
      Width = 71
      ExplicitLeft = 5
      ExplicitWidth = 71
    end
    inherited BtnFechar: TCBitBtn
      Left = 642
      TabOrder = 6
      ExplicitLeft = 642
    end
    inherited BtnCancelar: TCBitBtn
      Left = 82
      ExplicitLeft = 82
    end
    inherited BtnExcluir: TCBitBtn
      Left = 166
      ExplicitLeft = 166
    end
    inherited BtnNovo: TCBitBtn
      Left = 248
      ExplicitLeft = 248
    end
    inherited BtnPesquisar: TCBitBtn
      Left = 329
      ExplicitLeft = 329
    end
    object BtnExcluirCont: TCBitBtn
      Left = 411
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Excluir'
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
      TabOrder = 5
      OnClick = BtnExcluirContClick
    end
  end
  inherited PanEmpresa: TCPanelGradient
    Width = 1116
    ExplicitWidth = 1116
  end
  inherited imgIcones: TImageList
    Left = 896
    Top = 8
    Bitmap = {
      494C010103000500300010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000092AAB57D9EAAB068FCFCFC03000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C34CE2E2E2E7E6E6E6EED9D9D9B60000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED12D0D0D034A4B1B26C8BADB296BCC2C249ECECEC13DFDFDF218E8E8E78F9F9
      F906000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCCAD04B427589FB427184FD6C8794A6ECECEC130000
      0000000000000000000000000000000000000000000000000000F3F3F30CE1E1
      E11EA9A9A97BF7F7F7FEEEEEEEFED6D6D66F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD02C5C4
      C44CBDBBBAC8B5C3C5E6A5E4EBF88AB2B6D796A0A28AABABAB5B4B4B4BEBA3A3
      A369F6F6F609FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3E7E71E48819DE777521DFF804806FF566B69FF4A788FD7C8CC
      CE380000000000000000000000000000000000000000E5E5E51AC9C9C936BCBC
      BC43B2B2B24FD8D8D8EDE7E7E7FEEEEEEE1B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F906B8B7
      B777F1EFEEF6FDF4F1FFFFE5E0FFFDF9F4FEE3E5E5F5A4A4A4DD535150F27675
      75EAAAA9A96BCBCBCB3BE1E1E11FF9F9F9060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9066493AABC6C6243FF965201FF985301FF935001FF675B3EFF366F
      8CF398A5AC6FFBFBFB040000000000000000EFEFEF10C8C8C837B8B8B847B5B5
      B54AA2A2A29ECACACAE4E2E2E2FED2D2D298F3F3F371F7F7F758FEFEFE0C0000
      0000000000000000000000000000000000000000000000000000F0F0F00FB8B6
      B69CF8F5F5FCEEEAEBFFF1F2F3FFEAE7E8FFEEE3E3FFF6F6F6FF9E9D9BFF4549
      45FEA9A6A6EEC4C0C0D9B3B1B1A0E1E1E1210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000093AEBC7F58706DFEA35902FFAC5E02FFAF5F02FFAA5D02FF361D00FF0B6E
      71FF31849FFE698695ABE9E9E91600000000EFEFEF10D6D6D629D5D5D52AACAC
      AC7EDAD6D2FE8F6843FE824712FE9A561FFEAF652CFEC47B46FEE9E6E3AA0000
      0000000000000000000000000000000000000000000000000000DFDFDF23BDBA
      BAC1D3CFCEFEBDBBBAFFE2DEDCFFF2F0EFFFECE9E9FFE2DFDDFFEAEAEAFF696A
      66FF1E201DFFF5F3F3FEC2BFBFB7E7E7E71A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3CF
      D543337190F9623B0AFFB66401FFC76C02FFCC6F02FF743F01FF005350FF02C3
      BDFF03A8A3FF288C9FFF47778FDCC5C9CC3C000000000000000000000000B5B5
      B58EC7B9ADFE783A03FE8A3E01FE9E4703FEAE7448FED48C58FEE8D4C7E0FEFE
      FE0B0000000000000000000000000000000000000000FBFBFB04BCBFC056D2D3
      D4E6D7CFCEFFF1EDEEFFEBE7E5FFF8F2F3FFEFECEAFFEDE7E8FFF6F2F0FFD6D2
      D2FF0F100EFF9C9998F8B7B6B684F7F7F7080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7EAEB184781
      A2E20D1CA5FF01002FFF4D2A00FFD77602FFC16902FF072E2AFF02E6E0FF02D2
      CCFF01B9B3FF00A39DFF27879DFF7C9DAD9A000000000000000000000000EBEB
      EB8DCABAABFE873D01FE9A4401FEB04F06FE996E4FFEBF967AFEADA49EF6C7C7
      C7B4FEFEFE1F000000000000000000000000FEFEFE01E2E3E41E9EB8BBADEFEF
      EFFCC2BCBBFFD7D4D3FFECE8E8FFF3EDEDFFF9F5F6FFFBF7F6FFF1EDEDFFECE7
      E8FFBBBBBAFF535352EEB7B7B75BFCFCFC030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB046995ABB61838
      ADFF0202CCFF0202E3FF01016FFF2B1803FF251F0AFF02D3D3FF02FBF7FF02DC
      D5FF01BFB9FF0F9EA3FF508AA6D7EFF0F110000000000000000000000000EBEB
      EB8DD0BDADFE984301FEAB4901FEBF5101FED9752EFEF1B185FEEAD8CBDEF5F5
      F56BD9D9D997000000000000000000000000F2F2F20DADBDBF67ADE2E7EBECC6
      C1FFAAADAEFFA4A2A1FFBCB9B9FFB9B7B5FFB2AFAEFFC6C3C2FFFFFFFFFFF6F1
      F1FFC2C0C0FF767675F699999972F5F5F50A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099B2BF782658A4FE0101
      B3FF0202CDFF0202EDFF0202FDFF000044FF07190BFF019797FF02F8F3FF02DD
      D6FF06B9B7FF3885A3F4D2DADE3300000000000000000000000000000000EFEF
      EF77E8E0DAFEAF5918FEBE560AFED4712BFEEA9962FEF4B68DFEECE6E2C1FEFE
      FE2DC7C7C7B4000000000000000000000000BCC7C85187CAD2C1CCF9FAFDE0C2
      BEFFBBBDBCFFCBC7C6FFC2BFBDFFBCB9B8FFC6C3C2FFBEBBB7FFAEABAAFFC5C2
      C1FF929191FEBCBCBCFD595958D0D2D2D22F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCD7DC3B36769DF8040997FF0101
      AFFF0202C6FF0202E2FF01019BFF2A5A01FF6BDC02FF1B3C01FF005451FF02C2
      BCFF2991ABFEA4BAC56A0000000000000000000000000000000000000000FEFE
      FE10EDEDEDB0E9E9E9DCE8E8E8CCE9E9E9BBEFEFEFA8F2F2F295FDFDFD34ECEC
      EC80CCCCCCB7BDBDBD7AD3D3D33700000000ABC4C7758DD4DDC9E7EFEEFBC1AE
      ACFFB4B4B5FFC2BFBDFFB9B5B6FFC7C4C2FFBFBBBCFFC2BFC0FFC4C1C0FFABA8
      A9FFBEBAB8F6979797CF80807FFC575756B00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFE2E3276794AACA24538BFE0308
      97FF0101BAFF0101AEFF0E1F0AFF62DA02FF6AEC02FF63DC02FF2B6000FF1E55
      66FF749DB1A8FDFDFD0200000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0BE9E9E97CC2C2C2C2C0C0
      C0A7C1C1C166EDEDEDFDBDBDBD8F00000000EEEFEF11BFC5C659D8DBDBE8D2CE
      CEFFD1CECEFFB3B1B2FFBBBABAFFA5A4A4FFBCBBBBFFB6B5B5FFB9B5B6FFC3C0
      C0FFE0DDDDD9AFAFAF8D929292D84F4E4EF60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F20F8EA8B596376F
      98FA0B198BFF020521FF449701FF5AC702FF5BCA02FF59C502FF4CAB28FF508B
      A5DAEDEEEF120000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE47C0C0C0B6DBDBDB3ABABA
      BA57A6A6A672DEDEDEFBBBBBBB7000000000FCFCFC03C7C7C753E2DFDEECB8B7
      B6FFF2EFEEFFFFFFFFFFFAF6F5FFE2DFDEFFDEDAD9FFCFCBCAFFB2B1AFFFCBCA
      C8FDBEBDBCA8E2E2E222C9C9C943A0A0A07F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD02B8C3
      C95B4E89A7EA2B624BFF48A002FF4EAE01FF4FB001FF4BA80DFF3E8591F6CCD5
      DA39000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE3BB4B4B4C3CCCCCC76CC89
      5AFDAE6831FE8B4F1BFEBAA693FEF8F8F848F6F6F609C2C1C170F4F3F2F1F9F8
      F7FDFBF7F6FFEEEBEAFFE9E5E4FFF3EFEEFFF5F2F0FFFCF9F7FFF6F3F1FFECE9
      E8F5BFBEBE72FAFAFA05FCFCFC03F5F5F50A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCDFE02A6A95AAC632726DFE3D880AFF459B01FF3B8874FE9DB5C2730000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F75CBBBBBBD0AD95
      84FE8D8075FE9E6A3FFEAF8B6BFEF6F6F65CFAFAFA05D5D5D538C4C3C380C9C7
      C7A6D5D3D3C6E5E3E3DFF1F0F0EFF8F7F7F9FBFAFAFDFCFAFAFFEEEDEEFFE2DF
      DFE0D0D0D03FFEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F4F40C93ABB78F3B798DFA35795CFF6D98AEB1FCFCFC030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF9F956F6BB
      92FEDB9B6EFEBA5F1BFEC29674FEF6F6F65A00000000FDFDFD02F8F8F807F0F0
      F010E3E3E321D3D3D33BC8C7C75BC4C3C380C9C8C8A5D6D3D3C5EAE7E7DECBCA
      C9AEE8E8E81A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02BDC7CC546593ABC6E9ECED16000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0EEFE9
      E593E9DAD1AFE3D2C5BFE9E6E3B7FDFDFD160000000000000000000000000000
      00000000000000000000FCFCFC03F2F2F20DE4E4E420D3D2D240C8C7C771CBCA
      CA63F5F5F50A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FE3FF0FFE00F0000FC1FC0FFC0030000
      F80F80FFC0000000F003001FC0000000F001001FC0000000E000E00F80000000
      C000E007000000008000E007000000008001E007000000000003E00100000000
      0003FF01000000008007FF0100000000C00FFF0000000000F01FFF8000030000
      F81FFFC080070000FC3FFFC0FC07000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 840
    Top = 8
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM ContratoCompra'
    Left = 936
    Top = 208
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsPadraoidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Required = True
      Size = 30
    end
    object cdsPadraodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsPadraoidSafra: TIntegerField
      FieldName = 'idSafra'
      Required = True
    end
    object cdsPadraoidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object cdsPadraoqtProduto: TFMTBCDField
      FieldName = 'qtProduto'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsPadraovlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsPadraovlTotalProduto: TFMTBCDField
      FieldName = 'vlTotalProduto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraovlImposto: TFMTBCDField
      FieldName = 'vlImposto'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFrete: TFMTBCDField
      FieldName = 'vlFrete'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraovlContratoCompra: TFMTBCDField
      FieldName = 'vlContratoCompra'
      Required = True
      Precision = 19
      Size = 4
    end
    object cdsPadraotpCobranca: TStringField
      FieldName = 'tpCobranca'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraotpFinanceiro: TStringField
      FieldName = 'tpFinanceiro'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPadraoobsContratoCompra: TStringField
      FieldName = 'obsContratoCompra'
      Size = 5000
    end
    object cdsPadraostContratoCompra: TStringField
      FieldName = 'stContratoCompra'
      Required = True
      Size = 15
    end
    object cdsPadraonrOriginal: TStringField
      FieldName = 'nrOriginal'
      Size = 40
    end
    object cdsPadraoidComissionado: TIntegerField
      FieldName = 'idComissionado'
    end
    object cdsPadraovlComissao: TFMTBCDField
      FieldName = 'vlComissao'
      Precision = 19
      Size = 4
    end
    object cdsPadraotpCalculo: TStringField
      FieldName = 'tpCalculo'
      FixedChar = True
      Size = 1
    end
    object cdsPadraovlContribSocial: TFMTBCDField
      FieldName = 'vlContribSocial'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlOutrosImp: TFMTBCDField
      FieldName = 'vlOutrosImp'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlIcmsFrete: TFMTBCDField
      FieldName = 'vlIcmsFrete'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlIcms: TFMTBCDField
      FieldName = 'vlIcms'
      Precision = 19
      Size = 4
    end
    object cdsPadraoidIndice: TSmallintField
      FieldName = 'idIndice'
      Required = True
    end
    object cdsPadraoqtSacas: TFMTBCDField
      FieldName = 'qtSacas'
      Precision = 15
      Size = 3
    end
    object cdsPadraoqtArrobas: TFMTBCDField
      FieldName = 'qtArrobas'
      Precision = 15
      Size = 3
    end
    object cdsPadraovlIcmsSaca: TFMTBCDField
      FieldName = 'vlIcmsSaca'
      Precision = 19
      Size = 4
    end
    object cdsPadraoprIcmsSaca: TFMTBCDField
      FieldName = 'prIcmsSaca'
      Precision = 4
      Size = 2
    end
    object cdsPadraoidEmbarque: TIntegerField
      FieldName = 'idEmbarque'
    end
    object cdsPadraoidCadEmbarque: TSmallintField
      FieldName = 'idCadEmbarque'
    end
    object cdsPadraoidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsPadraoidTrangenia: TSmallintField
      FieldName = 'idTrangenia'
    end
    object cdsPadraodescEntrega: TStringField
      FieldName = 'descEntrega'
      Size = 25
    end
    object cdsPadraoidConta: TSmallintField
      FieldName = 'idConta'
    end
    object cdsPadraovlSaca: TFMTBCDField
      FieldName = 'vlSaca'
      Precision = 18
      Size = 3
    end
    object cdsPadraovlServico: TFMTBCDField
      FieldName = 'vlServico'
      Precision = 15
      Size = 2
    end
    object cdsPadraoAFixar: TStringField
      FieldName = 'AFixar'
      FixedChar = True
      Size = 1
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsContratoCompra
    Left = 856
    Top = 208
  end
  inherited dsPadrao: TDataSource
    Left = 1000
    Top = 208
  end
  inherited ImgBotoes: TImageList
    Left = 944
    Top = 8
    Bitmap = {
      494C010106000800780020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 360
    Top = 0
  end
  inherited dspLookup: TDataSetProvider
    Left = 416
    Top = 0
  end
  inherited cdsEmpresa: TClientDataSet
    Left = 624
    Top = 8
  end
  inherited dsEmpresa: TDataSource
    Left = 696
    Top = 8
  end
  inherited FindEmpresa: TCFind
    Left = 784
    Top = 8
  end
  object sdsContratoCompra: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ContratoCompra'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 768
    Top = 208
  end
  object cdsFinanc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ContratoCompraFinanc'
    Params = <>
    ProviderName = 'dspFinanc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 936
    Top = 264
    object cdsFinancidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsFinancidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsFinancidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Required = True
      Size = 30
    end
    object cdsFinancidAdiantamento: TIntegerField
      FieldName = 'idAdiantamento'
    end
    object cdsFinancidMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
    end
    object cdsFinancidMovConta: TIntegerField
      FieldName = 'idMovConta'
    end
    object cdsFinancidTituloPag: TIntegerField
      FieldName = 'idTituloPag'
    end
    object cdsFinancidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsFinancidCadFornecedor: TSmallintField
      FieldName = 'idCadFornecedor'
      Required = True
    end
  end
  object dsFinanc: TDataSource
    DataSet = cdsFinanc
    Left = 1000
    Top = 264
  end
  object dspFinanc: TDataSetProvider
    DataSet = sdsFinanc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 856
    Top = 264
  end
  object sdsFinanc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ContratoCompraFinanc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 768
    Top = 264
  end
  object sdsRomaneio: TSQLDataSet
    SchemaName = 'dbo'
    GetMetadata = False
    CommandText = 'select * from Romaneio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 768
    Top = 312
  end
  object dspRomaneio: TDataSetProvider
    DataSet = sdsRomaneio
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 856
    Top = 312
  end
  object cdsRomaneio: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from Romaneio'
    Params = <>
    ProviderName = 'dspRomaneio'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 936
    Top = 312
  end
  object dsRomaneio: TDataSource
    DataSet = cdsRomaneio
    Left = 1000
    Top = 312
  end
  object cdsNota: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 'SELECT * FROM ContratoCompraNota'
    Params = <>
    ProviderName = 'dspNota'
    AfterOpen = cdsPadraoAfterOpen
    OnCalcFields = cdsNotaCalcFields
    OnReconcileError = cdsPadraoReconcileError
    Left = 936
    Top = 360
    object cdsNotaidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsNotaidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsNotaidFornecedor: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'idFornecedor'
      Required = True
    end
    object cdsNotaidCadFornecedor: TSmallintField
      DisplayLabel = 'C'#243'd.Fornecedor'
      FieldName = 'idCadFornecedor'
      Required = True
    end
    object cdsNotaidContratoCompra: TStringField
      FieldName = 'idContratoCompra'
      Required = True
      Size = 30
    end
    object cdsNotaidFornNf: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'idFornNf'
      Required = True
    end
    object cdsNotaidCadFornNf: TSmallintField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'idCadFornNf'
      Required = True
    end
    object cdsNotaidDocSerie: TStringField
      FieldName = 'idDocSerie'
      Size = 5
    end
    object cdsNotaidNf: TIntegerField
      FieldName = 'idNf'
    end
    object cdsNotaidNfProdutor: TIntegerField
      DisplayLabel = 'NF Produtor'
      FieldName = 'idNfProdutor'
      Required = True
    end
    object cdsNotanrSerieProdutor: TFMTBCDField
      FieldName = 'nrSerieProdutor'
      Precision = 3
      Size = 0
    end
    object cdsNotadtEmissaoProdutor: TSQLTimeStampField
      DisplayLabel = 'Emiss'#227'o  Produtor'
      FieldName = 'dtEmissaoProdutor'
      Required = True
    end
    object cdsNotaqtProduto: TFMTBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtProduto'
      Required = True
      Precision = 18
      Size = 3
    end
    object cdsNotaqtSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtSaldo'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object cdsNotaChaveNFPe: TStringField
      FieldName = 'ChaveNFPe'
      Size = 44
    end
    object cdsNotaqtNf: TAggregateField
      FieldName = 'qtNf'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,###0.000'
      Expression = 'SUM(qtProduto)'
    end
  end
  object dsNota: TDataSource
    DataSet = cdsNota
    OnStateChange = dsNotaStateChange
    Left = 1000
    Top = 360
  end
  object dspNota: TDataSetProvider
    DataSet = sdsNota
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 856
    Top = 360
  end
  object sdsNota: TSQLDataSet
    SchemaName = 'dbo'
    GetMetadata = False
    CommandText = 'SELECT * FROM ContratoCompraNota'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 768
    Top = 360
  end
end
