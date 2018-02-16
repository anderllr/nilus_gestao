inherited FrmCadContratoVenda: TFrmCadContratoVenda
  Caption = 'Cadastro do Contrato de Venda de Produto'
  ClientHeight = 554
  ClientWidth = 1089
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000012FD461014FD480F0000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000014ED465026D54EC51DD346C40DE7
    3E5914FE4A0A0000000000000000000000000000000000000000000000000000
    0000000000001BFF4B071DFF530E13FF4C0944D866D18BF7A4FF8EF7A6FF62E0
    7FFC17D642B60FEB404C18FF4C050000000000000000000000000000000015FF
    48011AF44A3A12D53CAA0A9D29CA0DCD378063E580DE9CFFB4FFA8FFBDFF6FC6
    80FF82DF97FF3BDC5FF711D63CA917EF483F19FF4A02000000000000000018FC
    4A1812D93DD11FEB4DFF066318FF003F03FF5ABC6EFD93FFAEFF9BFFB3FF68DB
    80FF5ACF73FF5AB06BFF51E974FF1DD143F113DD418A14FF3D090000000018FA
    45221FE34BE02BFE5AFF0A4E17FF000900FF57A966FF83FFA3FF80FF9DFF71C3
    84FF75E18FFF44DF68FF2AA53FFF3ECC5EFF10DB40E216FA351E0000000018FA
    452126E350DD26F955FF0C4217FF015B12FF48E069FF6CFF8FFF6DFF90FF3AB2
    54FF52B769FF55AA69FF3FEE66FF26F153FF13DC42DC18FA3B1F0000000015FA
    442135E15CDD1CF94CFF0DDB38FF25FF56FF43FF6EFF4EFF76FF54FF7BFF57FF
    80FF39EE62FF27C04AFF28923EFF30C753FF11E143DB18FA3B1F0000000014FA
    422143E067DD33FF60FF19FF4CFF2DFF5AFF2DFF5BFF33FF5FFF3AFF65FF39FF
    65FF34FF61FF28FF59FF0FDA3BFF0DE33CFF15DE44DB18FA3B1F0000000012FA
    402255E075E072FD93FF7DFE9AFF5BFF7FFF27FF56FF1FFF50FF18FF4AFF1CFF
    4DFF1BFF4CFF12FF44FF07FF3DFF00FB32FF19D845DD18FA3B20000000000DFC
    3E1E61D57CD66FCD83E588EA9FFE87FFA5FF8DFFA7FF70FF90FF3DFF67FF11FF
    42FF00FE32FF00FB34FF00F12EFF0CE035FF1ED046DA17FC411A000000000FFF
    410918EF4C3213E443618BD29BFF8CD69BF5A9FEBEFFA2FFB9FFB4FFC5FF94FF
    ACFF30F554FF0BE231FF22D545FF22D249CB1AEC4A560FFF4304000000000000
    00000000000015F9462219E1475C3ED861A6B7DFBFFFB1E6BBFEC2FFD2FFC6FE
    D5FF8EE5A3FF2DD050D41FE54B6C17FD49140000000000000000000000000000
    000000000000000000000000000028E853591FD3458D88D799E2D5ECDCFF67D8
    80DD20E14C7B15FB441C00000000000000000000000000000000000000000000
    0000000000000000000000000000000000000DFF400747CF66AC33DD5A910BF7
    4025000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000011FF47010BFD4212000000000000
    000000000000000000000000000000000000000000000000000000000000FCFF
    0000F83F0000C00F000000030000000100000001000000010000000100000001
    0000000100000001000000010000C0070000F01F0000F87F0000F9FF0000}
  ExplicitTop = -79
  ExplicitWidth = 1105
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 519
    Width = 1089
    ExplicitLeft = 8
    ExplicitTop = 495
    ExplicitWidth = 897
  end
  inherited Bevel2: TBevel
    Width = 1089
    ExplicitTop = 52
    ExplicitWidth = 942
  end
  inherited PagAbas: TCPageControl
    Width = 1089
    Height = 466
    OnChange = PagAbasChange
    ExplicitWidth = 1089
    ExplicitHeight = 466
    inherited TabAbas: TTabSheet
      Caption = 'Dados do Contrato'
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 1081
      ExplicitHeight = 437
      object CGroupBox1: TCGroupBox
        Left = 3
        Top = 0
        Width = 773
        Height = 286
        Caption = 'Dados Gerais'
        TabOrder = 0
        object CLabel7: TCLabel
          Left = 408
          Top = 38
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o'
        end
        object CLabel1: TCLabel
          Left = 641
          Top = 60
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Encerra'
        end
        object CLabel14: TCLabel
          Left = 629
          Top = 38
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
        object lblCliFor: TCLabel
          Left = 49
          Top = 16
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente'
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
          Left = 607
          Top = 260
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
          Top = 126
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto'
        end
        object CLabel3: TCLabel
          Left = 18
          Top = 192
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Unit'#225'rio'
        end
        object CLabel4: TCLabel
          Left = 368
          Top = 192
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde.'
        end
        object CLabel6: TCLabel
          Left = 17
          Top = 214
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Produto'
        end
        object CLabel8: TCLabel
          Left = 37
          Top = 260
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Impostos'
        end
        object CLabel9: TCLabel
          Left = 373
          Top = 260
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete'
        end
        object CLabel10: TCLabel
          Left = 266
          Top = 38
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. Orig.'
          Transparent = True
        end
        object CLabel12: TCLabel
          Left = 40
          Top = 60
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produtor'
        end
        object CLabel13: TCLabel
          Left = 32
          Top = 82
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Represen.'
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
          Left = 460
          Top = 214
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total ICMS '
        end
        object CLabel22: TCLabel
          Left = 474
          Top = 260
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS Frete'
        end
        object CLabel24: TCLabel
          Left = 626
          Top = 214
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contrib. Social'
        end
        object CLabel25: TCLabel
          Left = 173
          Top = 260
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Outros Imp.'
        end
        object CLabel16: TCLabel
          Left = 335
          Top = 170
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cota'#231#227'o'
        end
        object CLabel17: TCLabel
          Left = 53
          Top = 170
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #205'ndice'
        end
        object CLabel18: TCLabel
          Left = 492
          Top = 192
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Arrobas'
        end
        object CLabel19: TCLabel
          Left = 650
          Top = 192
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
          Left = 174
          Top = 192
          Width = 102
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor da Saca/Arroba'
        end
        object CLabel27: TCLabel
          Left = 10
          Top = 148
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local Descarga'
        end
        object CLabel28: TCLabel
          Left = 314
          Top = 214
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'ICMS p/ Saca'
        end
        object CLabel29: TCLabel
          Left = 175
          Top = 214
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = '% ICMS p/ Saca'
        end
        object CLabel30: TCLabel
          Left = 393
          Top = 60
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Per'#237'odo Entrega'
          Transparent = True
        end
        object CLabel31: TCLabel
          Left = 11
          Top = 237
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fundersul p/Sc'
        end
        object CLabel32: TCLabel
          Left = 515
          Top = 237
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Fundems'
        end
        object CLabel33: TCLabel
          Left = 361
          Top = 237
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fundems /p SC'
        end
        object CLabel34: TCLabel
          Left = 175
          Top = 237
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Fundersul'
        end
        object CLabel35: TCLabel
          Left = 549
          Top = 82
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Mercado'
          Transparent = True
        end
        object CLabel36: TCLabel
          Left = 430
          Top = 148
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. Ped.'
          Transparent = True
        end
        object CLabel37: TCLabel
          Left = 430
          Top = 126
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nr. Item'
          Transparent = True
        end
        object DBEdtEmissao: TCDBEdit
          Left = 452
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
        object DBEdtEncerramento: TCDBEdit
          Left = 684
          Top = 57
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'dtEncerramento'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 14
          DecimalControl = True
          KeyMode = kmDate
        end
        object DBEstContratoVenda: TCDBEdit
          Left = 666
          Top = 35
          Width = 98
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'stContratoVenda'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Visible = False
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBEidContratoVenda: TCDBEdit
          Left = 88
          Top = 35
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idContratoVenda'
          DataSource = dsPadrao
          TabOrder = 6
          OnExit = DBEidContratoVendaExit
          OnKeyDown = DBEidContratoVendaKeyDown
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object LookCliente: TCLookUp
          Left = 156
          Top = 13
          Width = 278
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
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object CBitBtn3: TCBitBtn
          Left = 440
          Top = 13
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadCliente
          Caption = 'Clientes/Fornec.'
          TabOrder = 2
          TabStop = False
        end
        object DBEidCliente: TCDBEdit
          Left = 88
          Top = 13
          Width = 62
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idCliente'
          DataSource = dsPadrao
          TabOrder = 0
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadCliente
          DecimalControl = True
          KeyMode = kmNormal
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
          TabOrder = 22
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
          TabOrder = 23
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
          TabOrder = 21
          Find = dmFind.FindSafra
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlContratoVenda: TCDBEdit
          Left = 674
          Top = 257
          Width = 89
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 15987699
          DataField = 'vlContratoVenda'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 54
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProduto: TCLookUp
          Left = 140
          Top = 123
          Width = 235
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 26
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
          Left = 382
          Top = 123
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 27
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
          TabOrder = 25
          Find = dmFind.FindProduto
          AcaoCad = frmPrincipal.actCadProduto
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn1: TCBitBtn
          Left = 650
          Top = 151
          Width = 103
          Height = 19
          Action = frmPrincipal.actCadProduto
          Caption = '&Produtos'
          TabOrder = 28
          TabStop = False
        end
        object DBEvlProduto: TCDBEdit
          Left = 88
          Top = 189
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlProduto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 36
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtProduto: TCDBEdit
          Left = 402
          Top = 189
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'qtProduto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 38
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlTotalProduto: TCDBEdit
          Left = 88
          Top = 211
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotalProduto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 41
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlImposto: TCDBEdit
          Left = 87
          Top = 257
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlImposto'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 50
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlFrete: TCDBEdit
          Left = 405
          Top = 257
          Width = 63
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFrete'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 52
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnVerFinanceiro: TCBitBtn
          Left = 538
          Top = 32
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
          TabOrder = 5
          TabStop = False
          OnClick = BtnVerFinanceiroClick
        end
        object DBEnrOriginal: TCDBEdit
          Left = 312
          Top = 35
          Width = 86
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrOriginal'
          DataSource = dsPadrao
          TabOrder = 7
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidProdutor: TCDBEdit
          Left = 88
          Top = 57
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idProdutor'
          DataSource = dsPadrao
          TabOrder = 11
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEidRepresentante: TCDBEdit
          Left = 88
          Top = 79
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idRepresentante'
          DataSource = dsPadrao
          TabOrder = 15
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
          TabOrder = 17
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookProdutor: TCLookUp
          Left = 140
          Top = 57
          Width = 247
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 12
          Key.Strings = (
            'idProdutor')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
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
          TabOrder = 16
          Key.Strings = (
            'idRepresentante')
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
          Top = 108
          Width = 215
          Height = 76
          Caption = 'C'#225'lculo do Imposto no contrato'
          DataField = 'tpCalculo'
          DataSource = dsPadrao
          Items.Strings = (
            'Somar'
            'Subtrair'
            'Nada')
          ParentBackground = False
          ParentColor = False
          TabOrder = 24
          Values.Strings = (
            '+'
            '-'
            '*')
          OnExit = DBRGtpCobrancaExit
        end
        object DBEvlIcms: TCDBEdit
          Left = 521
          Top = 211
          Width = 99
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcms'
          DataSource = dsPadrao
          TabOrder = 44
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlIcmsFrete: TCDBEdit
          Left = 531
          Top = 257
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcmsFrete'
          DataSource = dsPadrao
          TabOrder = 53
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlContribSocial: TCDBEdit
          Left = 701
          Top = 211
          Width = 63
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlContribSocial'
          DataSource = dsPadrao
          TabOrder = 45
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEvlOutrosImp: TCDBEdit
          Left = 237
          Top = 257
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlOutrosImp'
          DataSource = dsPadrao
          TabOrder = 51
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CBitBtn2: TCBitBtn
          Left = 452
          Top = 167
          Width = 91
          Height = 19
          Action = frmPrincipal.actIndice
          Caption = #205'ndices'
          TabOrder = 35
          TabStop = False
        end
        object LookLancamento: TCLookUp
          Left = 381
          Top = 167
          Width = 65
          Height = 19
          Alignment = taRightJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 34
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
          Top = 167
          Width = 189
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 33
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
          Top = 167
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idIndice'
          DataSource = dsPadrao
          TabOrder = 32
          Find = dmFind.FindIndice
          AcaoCad = frmPrincipal.actIndice
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtArrobas: TCDBEdit
          Left = 536
          Top = 189
          Width = 80
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtArrobas'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 39
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEqtSacas: TCDBEdit
          Left = 684
          Top = 189
          Width = 80
          Height = 19
          TabStop = False
          BevelKind = bkTile
          BorderStyle = bsNone
          Color = 14149350
          DataField = 'qtSacas'
          DataSource = dsPadrao
          MaxLength = 10
          ReadOnly = True
          TabOrder = 40
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object BtnAlteraCod: TCBitBtn
          Left = 174
          Top = 32
          Width = 82
          Height = 24
          Caption = '&Alt. Codigo'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000B6B6B6FF999999FF878787FF878787FF8787
            87FF878787FF878787FF878787FF878787FF878787FF00000000000000000000
            0000000000000000000000000000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF00000000000000000000
            0000000000000000000000000000B6B6B6FFFFFFFFFFFBFBFBFFFBFBFBFFFBFB
            FBFFFBFBFBFFFBFBFBFFFCFCFCFFFFFFFFFF878787FF00000000307FAEFF507B
            9EFF4F7597FF4F7597FF4F7597FFB6B6B6FFFFFFFFFFDBCDBFFFDBCDBFFFDBCD
            BFFFDBCDBFFFDBCDBFFFDBCDBFFFFFFFFFFF878787FF000000003184B3FFBBDC
            ECFFBADCECFFBADCECFFB9DCECFFB6B6B6FFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFF878787FF000000003184B3FFBDDE
            EDFF50A7CFFF4FA6CEFF4CA5CEFFB6B6B6FFFFFFFFFFDBCDBFFFDBCDBFFFDBCD
            BFFFDBCDBFFFDBCDBFFFDBCDBFFFFFFFFFFF878787FF000000003184B3FFBFDF
            EDFF56A9CFFF54A8CFFF52A7CFFFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FF000000003184B3FFC1DF
            EDFF5BABD0FF59ABCFFF57AACFFFB6B6B6FFFFFFFFFFDBCDBFFFDBCDBFFFDBCD
            BFFFDBCDBFFFDBCDBFFFDBCDBFFFFFFFFFFF8A8A8AFF000000003184B3FFC3E0
            EDFF5FADD0FF5DADD0FF5BACD0FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB6B6B6FFC8C8C8FFC8C8C8FFC4C4C4FFAEAEAEFF000000003184B3FFC4E1
            EDFF62AFD0FF61AED0FF5EADD0FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB6B6B6FFFFFFFFFFFAFAFAFFC4C4C4FF7171719F000000003184B3FFC5E1
            EEFF65B0D0FF63B0D0FF61AED0FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB6B6B6FFFAFAFAFFC4C4C4FF7171719F00000000000000003184B3FFC6E2
            EEFF67B1D1FF66B0D1FF5CA7C8FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
            B6FFB6B6B6FFB6B6B6FF7171719F0000000000000000000000003184B3FFC6E2
            EEFF80BED8FF73AAC2FF588CA5FF4C7E98FF43728EFF286386FFBEDEEDFF2C53
            7AFF0000000000000000000000000000000000000000000000003184B3FFC6E2
            EEFFC6E2EEFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF407591FFBFDEEDFF2D5A
            82FF0000000000000000000000000000000000000000000000003184B3FF3184
            B3FF3184B3FFA9A9A9FFDBDBDBFFDBDBDBFFA9A9A9FF10446CFF3184B3FF2F74
            A1FF000000000000000000000000000000000000000000000000000000000000
            000000000000848484FF848484FF848484FF848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 4
          TabStop = False
          Visible = False
          OnClick = BtnAlteraCodClick
        end
        object DBEvlSaca: TCDBEdit
          Left = 282
          Top = 189
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlSaca'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 37
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookSaca: TCLookUp
          Left = 701
          Top = 126
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 20
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
          Left = 744
          Top = 83
          Width = 42
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 19
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
        object DBEidDescarga: TCDBEdit
          Left = 88
          Top = 145
          Width = 46
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'idDescarga'
          DataSource = dsPadrao
          TabOrder = 29
          Find = dmFind.FindFornecedor
          AcaoCad = frmPrincipal.actCadSafra
          DecimalControl = True
          KeyMode = kmNormal
        end
        object LookDescarga: TCLookUp
          Left = 140
          Top = 145
          Width = 282
          Height = 19
          Alignment = taLeftJustify
          BevelInner = bvSpace
          BevelOuter = bvLowered
          Color = 14149350
          ParentBackground = False
          TabOrder = 30
          Key.Strings = (
            'idDescarga')
          LookUpKey.Strings = (
            'idCliente')
          ClientDataSet = cdsLookup
          DataSource = dsPadrao
          ValidaCampoObrigatorio = True
          CampoObrigatorio = True
          LookUpTable = 'vCadClienteContabil'
          ReturnField = 'descCadCliente'
        end
        object DBEvlIcmsSaca: TCDBEdit
          Left = 384
          Top = 211
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlIcmsSaca'
          DataSource = dsPadrao
          TabOrder = 43
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEprIcmsSaca: TCDBEdit
          Left = 259
          Top = 211
          Width = 49
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'prIcmsSaca'
          DataSource = dsPadrao
          TabOrder = 42
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEdescEntrega: TCDBEdit
          Left = 474
          Top = 57
          Width = 161
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'descEntrega'
          DataSource = dsPadrao
          TabOrder = 13
          DecimalControl = True
          KeyMode = kmUSUpper
        end
        object DBCKAFixar: TCDBCheckBox
          Left = 560
          Top = 15
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
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object CBDBStatus: TCDBComboBox
          Left = 665
          Top = 35
          Width = 105
          Height = 19
          Style = csDropDownList
          DataField = 'stContratoVenda'
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
          TabOrder = 9
          OnChange = CBDBStatusChange
        end
        object DBEFundersulSC: TCDBEdit
          Left = 88
          Top = 234
          Width = 80
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFundersulSC'
          DataSource = dsPadrao
          MaxLength = 10
          TabOrder = 46
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBETotalFundems: TCDBEdit
          Left = 591
          Top = 234
          Width = 100
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotalFundems'
          DataSource = dsPadrao
          TabOrder = 49
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEFundemsSC: TCDBEdit
          Left = 439
          Top = 234
          Width = 70
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlFundemsSC'
          DataSource = dsPadrao
          TabOrder = 48
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBETotalFundersul: TCDBEdit
          Left = 255
          Top = 234
          Width = 100
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'vlTotalFundersul'
          DataSource = dsPadrao
          TabOrder = 47
          OnEnter = DBEvlProdutoEnter
          OnExit = DBEvlProdutoExit
          DecimalControl = True
          KeyMode = kmNormal
        end
        object CDBComboBox1: TCDBComboBox
          Left = 619
          Top = 79
          Width = 145
          Height = 19
          Style = csDropDownList
          DataField = 'tpMercado'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'MERCADO INTERNO'
            'EXPORTA'#199#195'O')
          ParentFont = False
          TabOrder = 18
        end
        object DBEnrPedido: TCDBEdit
          Left = 476
          Top = 145
          Width = 67
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrPedido'
          DataSource = dsPadrao
          TabOrder = 31
          DecimalControl = True
          KeyMode = kmNormal
        end
        object DBEnrItemPed: TCDBEdit
          Left = 476
          Top = 123
          Width = 67
          Height = 19
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'nrItemPed'
          DataSource = dsPadrao
          TabOrder = 55
          DecimalControl = True
          KeyMode = kmNormal
        end
      end
      object DBRGtpCobranca: TCDBRadioGroup
        Left = 3
        Top = 289
        Width = 294
        Height = 33
        Caption = 'Cobran'#231'a do Contrato de Venda - Gerar no: '
        Columns = 3
        DataField = 'tpCobranca'
        DataSource = dsPadrao
        Items.Strings = (
          'Romaneio'
          'Contrato'
          'N'#227'o Gerar')
        ParentBackground = False
        ParentColor = False
        TabOrder = 5
        Values.Strings = (
          'R'
          'C'
          'A')
        OnExit = DBRGtpCobrancaExit
      end
      object CGroupBox2: TCGroupBox
        Left = 3
        Top = 323
        Width = 773
        Height = 72
        Caption = 'Observa'#231#245'es'
        TabOrder = 7
        object DBMobsContratoVenda: TCDBMemo
          Left = 9
          Top = 17
          Width = 755
          Height = 49
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'obsContratoVenda'
          DataSource = dsPadrao
          MaxLength = 1000
          ScrollBars = ssVertical
          TabOrder = 0
          KeyMemo = kmmUSUpper
        end
      end
      object DBRGtpFinanceiro: TCDBRadioGroup
        Left = 314
        Top = 289
        Width = 462
        Height = 33
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
        TabOrder = 6
        Values.Strings = (
          'A'
          'T'
          'C'
          'B'
          'V')
      end
      object DBEidTituloRec: TCDBEdit
        Left = 832
        Top = 13
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idTituloRec'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 1
        Visible = False
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidMovCaixa: TCDBEdit
        Left = 832
        Top = 38
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovCaixa'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 2
        Visible = False
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidMovConta: TCDBEdit
        Left = 832
        Top = 63
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idMovConta'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 3
        Visible = False
        DecimalControl = True
        KeyMode = kmDate
      end
      object DBEidAdiantamento: TCDBEdit
        Left = 832
        Top = 88
        Width = 80
        Height = 19
        TabStop = False
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'idAdiantamento'
        DataSource = dsFinanc
        MaxLength = 10
        TabOrder = 4
        Visible = False
        DecimalControl = True
        KeyMode = kmDate
      end
    end
    object TabMovimento: TTabSheet
      Caption = 'Movimenta'#231#227'o (Romaneios)'
      ImageIndex = 1
      object DBGRIDRom: TCDBGrid
        Left = 0
        Top = 0
        Width = 1081
        Height = 437
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
  end
  inherited PanBotoes: TCPanelGradient
    Top = 523
    Width = 1089
    ExplicitTop = 523
    ExplicitWidth = 1089
    inherited BtnSalvar: TCBitBtn
      Left = 5
      Width = 71
      ExplicitLeft = 5
      ExplicitWidth = 71
    end
    inherited BtnFechar: TCBitBtn
      Left = 491
      Width = 76
      TabOrder = 6
      ExplicitLeft = 491
      ExplicitWidth = 76
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
      Left = 410
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
    Width = 1089
    ExplicitWidth = 1089
  end
  inherited imgIcones: TImageList
    Left = 920
    Top = 336
    Bitmap = {
      494C010101000500240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0FEF310F1FEF40F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F9C45057DE76C551DD70C4AAF6BB59F5FEF70A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FFFA07F2FF
      F50EF6FFF80965DF81D18BF7A4FF8EF7A6FF63E080FC59E178B6B7F9C64CFAFF
      FB05000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFE01CAFCD53A61E37DAA3CB1
      55CA85E59A8077E890DE9CFFB4FFA8FFBDFF6FC680FF82DF97FF41DD64F761E3
      7DA9C5FBD13FFDFFFD0200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9FEED183CDF5FD11FEB4DFF0663
      18FF003F03FF5BBC6FFD93FFAEFF9BFFB3FF68DB80FF5ACF73FF5AB06BFF51E9
      74FF29D34DF17FEC988AF6FFF809000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0FEE6223AE660E02BFE5AFF0A4E
      17FF000900FF57A966FF83FFA3FF80FF9DFF71C384FF75E18FFF44DF68FF2AA5
      3FFF3ECC5EFF2BDF55E2E3FEE71E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1FEE62142E667DD26F955FF0C42
      17FF015B12FF48E069FF6CFF8FFF6DFF90FF3AB254FF52B769FF55AA69FF3FEE
      66FF26F153FF33E05BDCE2FEE71F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0FEE6214FE571DD1CF94CFF0DDB
      38FF25FF56FF43FF6EFF4EFF76FF54FF7BFF57FF80FF39EE62FF27C04AFF2892
      3EFF30C753FF32E55DDBE2FEE71F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0FEE6215CE47BDD33FF60FF19FF
      4CFF2DFF5AFF2DFF5BFF33FF5FFF3AFF65FF39FF65FF34FF61FF28FF59FF0FDA
      3BFF0DE33CFF36E25EDBE2FEE71F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFFEE52269E385E072FD93FF7DFE
      9AFF5BFF7FFF27FF56FF1FFF50FF18FF4AFF1CFF4DFF1BFF4CFF12FF44FF07FF
      3DFF00FB32FF37DD5DDDE2FEE620000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2FEE81E7ADB91D67DD28FE588EA
      9FFE87FFA5FF8DFFA7FF70FF90FF3DFF67FF11FF42FF00FE32FF00FB34FF00F1
      2EFF0CE035FF3ED660DAE7FEEB1A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6FFF809D1FBDB32A5F4B7618BD2
      9BFF90D79EF5A9FEBEFFA2FFB9FFB4FFC5FF94FFACFF30F554FF0BE231FF22D5
      45FF4FDB6ECBB1F8C156FBFFFC04000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFFEE622ACF4
      BC5C81E598A6B7DFBFFFB1E6BBFEC2FFD2FFC6FED5FF8EE5A3FF50D76DD4A0F3
      B26CECFEF0140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B3F6C25983E6988D95DBA4E2D5ECDCFF7BDD90DD93F0A87BE5FEEA1C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FFF90782DE97AC8BEBA191DBFDE32500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFFFE01EDFEF112000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FCFF000000000000F83F000000000000
      C00F000000000000000300000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      00010000000000000001000000000000C007000000000000F01F000000000000
      F87F000000000000F9FF00000000000000000000000000000000000000000000
      000000000000}
  end
  inherited Acao: TActionList
    Left = 801
    Top = 360
  end
  inherited cdsPadrao: TClientDataSet
    CommandText = 'SELECT * FROM ContratoVenda'
    Left = 968
    Top = 200
    object cdsPadraoidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsPadraoidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsPadraoidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Size = 30
    end
    object cdsPadraodtEmissao: TSQLTimeStampField
      FieldName = 'dtEmissao'
      Required = True
    end
    object cdsPadraodtEncerramento: TSQLTimeStampField
      FieldName = 'dtEncerramento'
    end
    object cdsPadraoidCliente: TIntegerField
      FieldName = 'idCliente'
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
    object cdsPadraovlContratoVenda: TFMTBCDField
      FieldName = 'vlContratoVenda'
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
    object cdsPadraoobsContratoVenda: TStringField
      FieldName = 'obsContratoVenda'
      Size = 500
    end
    object cdsPadraostContratoVenda: TStringField
      FieldName = 'stContratoVenda'
      Required = True
      Size = 15
    end
    object cdsPadraonrOriginal: TStringField
      FieldName = 'nrOriginal'
    end
    object cdsPadraoidProdutor: TIntegerField
      FieldName = 'idProdutor'
    end
    object cdsPadraoidRepresentante: TIntegerField
      FieldName = 'idRepresentante'
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
    object cdsPadraoqtArrobas: TFMTBCDField
      FieldName = 'qtArrobas'
      Precision = 15
      Size = 3
    end
    object cdsPadraoqtSacas: TFMTBCDField
      FieldName = 'qtSacas'
      Precision = 15
      Size = 3
    end
    object cdsPadraovlProduto: TFMTBCDField
      FieldName = 'vlProduto'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsPadraovlSaca: TFMTBCDField
      FieldName = 'vlSaca'
      Precision = 19
      Size = 4
    end
    object cdsPadraoidDescarga: TIntegerField
      FieldName = 'idDescarga'
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
    object cdsPadraodescEntrega: TStringField
      FieldName = 'descEntrega'
      Size = 25
    end
    object cdsPadraoAFixar: TStringField
      FieldName = 'AFixar'
      FixedChar = True
      Size = 1
    end
    object cdsPadraovlFundersulSC: TFMTBCDField
      FieldName = 'vlFundersulSC'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlTotalFundersul: TFMTBCDField
      FieldName = 'vlTotalFundersul'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlFundemsSC: TFMTBCDField
      FieldName = 'vlFundemsSC'
      Precision = 19
      Size = 4
    end
    object cdsPadraovlTotalFundems: TFMTBCDField
      FieldName = 'vlTotalFundems'
      Precision = 19
      Size = 4
    end
    object cdsPadraotpMercado: TStringField
      FieldName = 'tpMercado'
      Size = 50
    end
    object cdsPadraonrItemPed: TIntegerField
      FieldName = 'nrItemPed'
    end
    object cdsPadraonrPedido: TFMTBCDField
      FieldName = 'nrPedido'
      Precision = 15
      Size = 0
    end
  end
  inherited dspPadrao: TDataSetProvider
    DataSet = sdsContratoVenda
    Left = 888
    Top = 200
  end
  inherited dsPadrao: TDataSource
    Left = 1032
    Top = 200
  end
  inherited ImgBotoes: TImageList
    Left = 968
    Top = 352
    Bitmap = {
      494C0101060008006C0020001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 952
    Top = 464
  end
  inherited dspLookup: TDataSetProvider
    Left = 904
    Top = 392
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
  object sdsContratoVenda: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ContratoVenda'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 809
    Top = 200
  end
  object cdsFinanc: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ContratoVendaFinanc'
    Params = <>
    ProviderName = 'dspFinanc'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 968
    Top = 256
    object cdsFinancidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
      Required = True
    end
    object cdsFinancidCadEmpresa: TSmallintField
      FieldName = 'idCadEmpresa'
      Required = True
    end
    object cdsFinancidContratoVenda: TStringField
      FieldName = 'idContratoVenda'
      Required = True
      Size = 30
    end
    object cdsFinancidAdiantamento: TIntegerField
      FieldName = 'idAdiantamento'
    end
    object cdsFinancidTituloRec: TIntegerField
      FieldName = 'idTituloRec'
    end
    object cdsFinancidMovCaixa: TIntegerField
      FieldName = 'idMovCaixa'
    end
    object cdsFinancidMovConta: TIntegerField
      FieldName = 'idMovConta'
    end
    object cdsFinancidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
    end
  end
  object dsFinanc: TDataSource
    DataSet = cdsFinanc
    Left = 1032
    Top = 256
  end
  object dspFinanc: TDataSetProvider
    DataSet = sdsFinanc
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 888
    Top = 256
  end
  object sdsFinanc: TSQLDataSet
    SchemaName = 'gesys'
    GetMetadata = False
    CommandText = 'SELECT * FROM ContratoVendaFinanc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 809
    Top = 256
  end
  object sdsRomaneio: TSQLDataSet
    SchemaName = 'dbo'
    GetMetadata = False
    CommandText = 'select * from Romaneio'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPadrao.dbConexao
    Left = 809
    Top = 304
  end
  object dspRomaneio: TDataSetProvider
    DataSet = sdsRomaneio
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    BeforeApplyUpdates = dspPadraoBeforeApplyUpdates
    Left = 888
    Top = 304
  end
  object cdsRomaneio: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from Romaneio'
    Params = <>
    ProviderName = 'dspRomaneio'
    AfterOpen = cdsPadraoAfterOpen
    OnReconcileError = cdsPadraoReconcileError
    Left = 968
    Top = 304
  end
  object dsRomaneio: TDataSource
    DataSet = cdsRomaneio
    Left = 1032
    Top = 304
  end
end
